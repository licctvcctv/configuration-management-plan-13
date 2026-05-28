PROJECT_NAME = "剧本杀店铺管理系统"


def main():
    modules = [
        "店员端",
        "管理员端",
        "智能排班子系统",
        "考勤与工资子系统",
        "数据资源与外部接口",
    ]
    print(f"{PROJECT_NAME} configuration repository")
    print("managed modules:", " / ".join(modules))


if __name__ == "__main__":
    main()
