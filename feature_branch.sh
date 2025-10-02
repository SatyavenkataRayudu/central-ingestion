feature_branch=$1
echo "Feature branch name is: $feature_branch"
project_name=$2
echo "Project name is: $project_name"   
repo_name=$3
echo "Repo name is: $repo_name"
efs_path=$4
echo "EFS path is: $efs_path"
cd ~
GITHUB_PAT="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"


git clone https://${GITHUB_PAT}@github.com/${project_name}/${repo_name}.git
cd ${repo_name}
git config --global user.email "venkat@gmail.com"
git config --global user.name "Venkat Rayudu"


#git remote set-url origin https://${GITHUB_PAT}@github.com/${project_name}/${repo_name}.git

git checkout -b ${feature_branch}
cp ${efs_path}/* .
git add .
git commit -m "new files added"
git push origin ${feature_branch}

