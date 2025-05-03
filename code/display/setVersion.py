import subprocess

branch = (
    subprocess.check_output(["git", "branch", "--show-current"])
    .strip()
    .decode("utf-8")
)
tag = (
    subprocess.check_output(["git", "tag", "--points-at", "HEAD"])
    .strip()
    .decode("utf-8")
)
commit = (
    subprocess.check_output(["git", "rev-parse", "--short", "HEAD"])
    .strip()
    .decode("utf-8")
)
# print("'-DSOFTWARE_VERSION=\"%s on %s\"'" % (commit, branch))
print("'-DBRANCH=\"%s\"' '-DTAG=\"%s\"' '-DCOMMIT=\"%s\"'" % (branch, tag, commit))