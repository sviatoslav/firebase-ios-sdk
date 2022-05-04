# frozen_string_literal: true

# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'octokit'
require 'optparse'

@options = {
  repo_root: "./",
  pr_title: "Autogenerated PR",
  pr_body: "",
  base_branch: "generated-branch-for-pr-"+Time.new.strftime("%Y%m%d%H%M%S"),
  commit_comment: "Auto generated commit."
}
begin
  OptionParser.new do |opts|
    opts.banner = "Usage: create_pull_request.rb [options]"
    opts.on('-r', '--repo-root REPO_ROOT', 'Root path of the repo dir.') { |v| @options[:repo_root] = v }
    opts.on('-t', '--repo-token REPO_TOKEN', 'Token with write access') { |v| @options[:repo_token] = v }
    opts.on('-n', '--target-path PATH', 'Path of targeted file or dir') { |v| @options[:target_path] = v }
    opts.on('--pr-title PR_TITLE', 'Title of a PR') { |v| @options[:pr_title] = v }
    opts.on('--pr-body PR_BODY', 'Body of a PR') { |v| @options[:pr_body] = v }
    opts.on('--base-branch BASE_BRANCH', 'A new branch will be generated if not specified or the branch does not exist.') { |v| @options[:base_branch] = v }
    opts.on('--commit-comment COMMIT_COMMENT', 'Commit comment') { |v| @options[:commit_comment] = v }
  end.parse!

  raise OptionParser::MissingArgument if @options[:repo_token].nil? || @options[:target_path].nil?
rescue OptionParser::MissingArgument
  puts "target path, `--target-path`, should be specified. " if @options[:target_path].nil?
  puts "A token ,`--repo-token`, should be provided for creating a pull request." if @options[:repo_token].nil?
  raise
end

REPO_ROOT=@options[:repo_root]
ACCESS_TOKEN=@options[:repo_token]
TARGET_PATH=@options[:target_path]
PR_TITLE=@options[:pr_title]
PR_BODY=@options[:pr_body]
BASE_BRANCH=@options[:base_branch]
COMMIT_COMMENT=@options[:commit_comment]

def generate_pr_for_target_changes(repo_root:, target_path:)
  if `cd #{REPO_ROOT}\ngit diff #{TARGET_PATH}`==""
    puts "The file, #{TARGET_PATH}, has no changes."
    return
  end
  system("cd #{REPO_ROOT}\ngit checkout -b #{BASE_BRANCH}\ngit add #{TARGET_PATH}\ngit commit -m \"#{COMMIT_COMMENT}\"")
  client = Octokit::Client.new(access_token: ACCESS_TOKEN)
  client.create_pull_request("firebase/firebase-ios-sdk", "master", BASE_BRANCH, PR_TITLE, PR_BODY)
end


def main()
  generate_pr_for_target_changes(repo_root: REPO_ROOT, target_path: TARGET_PATH)
end

main()
