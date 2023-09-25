cd "$(dirname "$0")"
exec java -jar @user_jvm_args.txt paper.jar nogui
