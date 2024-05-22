import subprocess

branch = (
    subprocess.check_output(["git", "branch", "--show-current"])
    .strip()
    .decode("utf-8")
)
commit = (
    subprocess.check_output(["git", "rev-parse", "--short", "HEAD"])
    .strip()
    .decode("utf-8")
)
# print("'-DSOFTWARE_VERSION=\"%s on %s\"'" % (commit, branch))
print("'-DBRANCH=\"%s\"' '-DCOMMIT=\"%s\"'" % (branch, commit))