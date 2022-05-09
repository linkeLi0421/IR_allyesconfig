; ModuleID = '/llk/IR_all_yes/drivers/remoteproc/remoteproc_sysfs.c_pt.bc'
source_filename = "../drivers/remoteproc/remoteproc_sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"remoteproc\00", [21 x i8] zeroinitializer }, align 32
@rproc_devgroups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @rproc_devgroup, ptr null], [24 x i8] zeroinitializer }, align 32
@rproc_class = dso_local global { %struct.class, [36 x i8] } { %struct.class { ptr @.str, ptr null, ptr null, ptr @rproc_devgroups, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rproc_init_sysfs.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rproc_init_sysfs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013remoteproc: unable to register class\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rproc_init_sysfs\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/remoteproc/remoteproc_sysfs.c\00", [58 x i8] zeroinitializer }, align 32
@rproc_init_sysfs._entry_ptr = internal global ptr @rproc_init_sysfs._entry, section ".printk_index", align 4
@rproc_devgroup = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @rproc_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@rproc_attrs = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @dev_attr_coredump, ptr @dev_attr_recovery, ptr @dev_attr_firmware, ptr @dev_attr_state, ptr @dev_attr_name, ptr null], [40 x i8] zeroinitializer }, align 32
@dev_attr_coredump = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @coredump_show, ptr @coredump_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_recovery = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @recovery_show, ptr @recovery_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_firmware = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @firmware_show, ptr @firmware_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_state = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @state_show, ptr @state_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"coredump\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@rproc_coredump_str = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8], [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"inline\00", [25 x i8] zeroinitializer }, align 32
@coredump_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 111, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"can't change coredump configuration\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"coredump_store\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@coredump_store._entry_ptr = internal global ptr @coredump_store._entry, section ".printk_index", align 4
@coredump_store._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.10, ptr @.str.3, i32 122, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid coredump configuration\0A\00", [32 x i8] zeroinitializer }, align 32
@coredump_store._entry_ptr.15 = internal global ptr @coredump_store._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"recovery\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"disabled\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enabled\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"recover\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"firmware\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"state\00", [26 x i8] zeroinitializer }, align 32
@rproc_state_string = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"offline\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"suspended\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"running\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"crashed\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"deleted\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"attached\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"detached\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"invalid\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"start\00", [26 x i8] zeroinitializer }, align 32
@state_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 203, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Boot failed: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"state_store\00", [20 x i8] zeroinitializer }, align 32
@state_store._entry_ptr = internal global ptr @state_store._entry, section ".printk_index", align 4
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"stop\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"detach\00", [25 x i8] zeroinitializer }, align 32
@state_store._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.34, ptr @.str.3, i32 216, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unrecognised option: %s\0A\00", [39 x i8] zeroinitializer }, align 32
@state_store._entry_ptr.39 = internal global ptr @state_store._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 5]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 5]
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 252, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [16 x i8] c"rproc_devgroups\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 246, i32 38 }
@___asan_gen_.48 = private unnamed_addr constant [12 x i8] c"rproc_class\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 251, i32 14 }
@___asan_gen_.51 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 259, i32 12 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 262, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [15 x i8] c"rproc_devgroup\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 242, i32 37 }
@___asan_gen_.69 = private unnamed_addr constant [12 x i8] c"rproc_attrs\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 233, i32 26 }
@___asan_gen_.72 = private unnamed_addr constant [18 x i8] c"dev_attr_coredump\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [18 x i8] c"dev_attr_recovery\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [18 x i8] c"dev_attr_firmware\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [15 x i8] c"dev_attr_state\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [14 x i8] c"dev_attr_name\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 128, i32 8 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 85, i32 25 }
@___asan_gen_.93 = private unnamed_addr constant [19 x i8] c"rproc_coredump_str\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 73, i32 27 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 74, i32 30 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 75, i32 29 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 76, i32 29 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 111, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 122, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 66, i32 8 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 18, i32 25 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 18, i32 58 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 18, i32 73 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 57, i32 30 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 160, i32 8 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 143, i32 14 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 221, i32 8 }
@___asan_gen_.150 = private unnamed_addr constant [19 x i8] c"rproc_state_string\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 166, i32 27 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 167, i32 21 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 168, i32 22 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 169, i32 21 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 170, i32 21 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 171, i32 21 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 172, i32 21 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 173, i32 21 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 174, i32 18 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 196, i32 23 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 203, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 204, i32 30 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 210, i32 30 }
@___asan_gen_.195 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 216, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.202 = private constant [41 x i8] c"../drivers/remoteproc/remoteproc_sysfs.c\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 231, i32 8 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @coredump_store._entry, ptr @coredump_store._entry.13, ptr @coredump_store._entry_ptr, ptr @coredump_store._entry_ptr.15, ptr @rproc_exit_sysfs, ptr @rproc_init_sysfs._entry, ptr @rproc_init_sysfs._entry_ptr, ptr @state_store._entry, ptr @state_store._entry.37, ptr @state_store._entry_ptr, ptr @state_store._entry_ptr.39, ptr @.str, ptr @rproc_devgroups, ptr @rproc_class, ptr @rproc_init_sysfs.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @rproc_devgroup, ptr @rproc_attrs, ptr @dev_attr_coredump, ptr @dev_attr_recovery, ptr @dev_attr_firmware, ptr @dev_attr_state, ptr @dev_attr_name, ptr @.str.4, ptr @.str.5, ptr @rproc_coredump_str, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @rproc_state_string, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rproc_devgroups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rproc_class to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rproc_init_sysfs.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rproc_init_sysfs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rproc_devgroup to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rproc_attrs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_coredump to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_recovery to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_firmware to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rproc_coredump_str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coredump_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coredump_store._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rproc_state_string to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @state_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @state_store._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rproc_init_sysfs() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__class_register(ptr noundef nonnull @rproc_class, ptr noundef nonnull @rproc_init_sysfs.__key) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @rproc_exit_sysfs() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @class_unregister(ptr noundef nonnull @rproc_class) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coredump_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dump_conf = getelementptr i8, ptr %dev, i32 936
  %0 = ptrtoint ptr %dump_conf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dump_conf, align 8
  %arrayidx = getelementptr [3 x ptr], ptr @rproc_coredump_str, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.5, ptr noundef %3) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coredump_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr i8, ptr %dev, i32 932
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.6) #7
  br i1 %call, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dump_conf = getelementptr i8, ptr %dev, i32 936
  %2 = ptrtoint ptr %dump_conf to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %dump_conf, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call3 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.7) #7
  br i1 %call3, label %if.then4, label %if.else6

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %dump_conf5 = getelementptr i8, ptr %dev, i32 936
  %3 = ptrtoint ptr %dump_conf5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %dump_conf5, align 8
  br label %cleanup

if.else6:                                         ; preds = %if.else
  %call7 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.8) #7
  br i1 %call7, label %if.then8, label %do.end13

if.then8:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #9
  %dump_conf9 = getelementptr i8, ptr %dev, i32 936
  %4 = ptrtoint ptr %dump_conf9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %dump_conf9, align 8
  br label %cleanup

do.end13:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %if.then8, %if.then4, %if.then2, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ -22, %do.end13 ], [ %count, %if.then4 ], [ %count, %if.then8 ], [ %count, %if.then2 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @recovery_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %recovery_disabled = getelementptr i8, ptr %dev, i32 1200
  %0 = ptrtoint ptr %recovery_disabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %recovery_disabled, align 8, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %cond = select i1 %tobool.not, ptr @.str.19, ptr @.str.18
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.17, ptr noundef nonnull %cond) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @recovery_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.7) #7
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %recovery_disabled = getelementptr i8, ptr %dev, i32 1200
  %0 = ptrtoint ptr %recovery_disabled to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %recovery_disabled, align 8
  %call1 = tail call i32 @rproc_trigger_recovery(ptr noundef %add.ptr) #7
  br label %cleanup

if.else:                                          ; preds = %entry
  %call2 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.6) #7
  br i1 %call2, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %recovery_disabled4 = getelementptr i8, ptr %dev, i32 1200
  %1 = ptrtoint ptr %recovery_disabled4 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %recovery_disabled4, align 8
  br label %cleanup

if.else5:                                         ; preds = %if.else
  %call6 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.20) #7
  br i1 %call6, label %if.then7, label %if.else5.cleanup_crit_edge

if.else5.cleanup_crit_edge:                       ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7:                                         ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 @rproc_trigger_recovery(ptr noundef %add.ptr) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.else5.cleanup_crit_edge, %if.then3, %if.then
  %retval.0 = phi i32 [ -22, %if.else5.cleanup_crit_edge ], [ %count, %if.then3 ], [ %count, %if.then7 ], [ %count, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_trigger_recovery(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @firmware_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %firmware1 = getelementptr i8, ptr %dev, i32 -16
  %0 = ptrtoint ptr %firmware1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %firmware1, align 8
  %state = getelementptr i8, ptr %dev, i32 932
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp = icmp eq i32 %3, 5
  %spec.store.select = select i1 %cmp, ptr @.str.22, ptr %1
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, ptr noundef %spec.store.select)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @firmware_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call = tail call i32 @rproc_set_firmware(ptr noundef %add.ptr, ptr noundef %buf) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %count.call = select i1 %tobool.not, i32 %count, i32 %call
  ret i32 %count.call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_set_firmware(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @state_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr i8, ptr %dev, i32 932
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state1, align 4
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 7)
  %arrayidx = getelementptr [8 x ptr], ptr @rproc_state_string, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, ptr noundef %4)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @state_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.32) #7
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %state = getelementptr i8, ptr %dev, i32 932
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.end [
    i32 2, label %if.then.cleanup_crit_edge
    i32 5, label %if.then.cleanup_crit_edge56
  ]

if.then.cleanup_crit_edge56:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call4 = tail call i32 @rproc_boot(ptr noundef %add.ptr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end.if.end31.thread_crit_edge, label %do.end

if.end.if.end31.thread_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.thread

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %call4) #10
  br label %cleanup

if.else:                                          ; preds = %entry
  %call8 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.35) #7
  br i1 %call8, label %if.then9, label %if.else16

if.then9:                                         ; preds = %if.else
  %state10 = getelementptr i8, ptr %dev, i32 932
  %3 = ptrtoint ptr %state10 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state10, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %4, label %if.then9.cleanup_crit_edge [
    i32 2, label %if.then9.if.end15_crit_edge
    i32 5, label %if.then9.if.end15_crit_edge57
  ]

if.then9.if.end15_crit_edge57:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then9.if.end15_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.then9.if.end15_crit_edge, %if.then9.if.end15_crit_edge57
  tail call void @rproc_shutdown(ptr noundef %add.ptr) #7
  br label %if.end31.thread

if.else16:                                        ; preds = %if.else
  %call17 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.36) #7
  br i1 %call17, label %if.then18, label %do.end27

if.then18:                                        ; preds = %if.else16
  %state19 = getelementptr i8, ptr %dev, i32 932
  %6 = ptrtoint ptr %state19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %7)
  %cmp20.not = icmp eq i32 %7, 5
  br i1 %cmp20.not, label %if.end31, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end27:                                         ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38, ptr noundef %buf) #10
  br label %cleanup

if.end31:                                         ; preds = %if.then18
  %call23 = tail call i32 @rproc_detach(ptr noundef %add.ptr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool32.not = icmp eq i32 %call23, 0
  br i1 %tobool32.not, label %if.end31.if.end31.thread_crit_edge, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31.if.end31.thread_crit_edge:               ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.thread

if.end31.thread:                                  ; preds = %if.end31.if.end31.thread_crit_edge, %if.end15, %if.end.if.end31.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end31.thread, %if.end31.cleanup_crit_edge, %do.end27, %if.then18.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge, %if.then.cleanup_crit_edge56
  %retval.0 = phi i32 [ -16, %if.then.cleanup_crit_edge ], [ -16, %if.then.cleanup_crit_edge56 ], [ -22, %if.then9.cleanup_crit_edge ], [ -22, %if.then18.cleanup_crit_edge ], [ %count, %if.end31.thread ], [ %call23, %if.end31.cleanup_crit_edge ], [ -22, %do.end27 ], [ %call4, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_boot(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @name_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr i8, ptr %dev, i32 -20
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, ptr noundef %1)
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !16, !18, !20, !21, !23, !25, !27, !29, !31, !33, !34, !35, !36, !37, !38, !40, !41, !42, !44, !45, !47, !49, !51, !53, !55, !56, !58, !60, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !84, !85, !86, !88, !90, !92, !93, !94, !96}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/remoteproc/remoteproc_sysfs.c", i32 252, i32 11}
!2 = !{ptr @rproc_class, !3, !"rproc_class", i1 false, i1 false}
!3 = !{!"../drivers/remoteproc/remoteproc_sysfs.c", i32 251, i32 14}
!4 = !{ptr @rproc_init_sysfs.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/remoteproc/remoteproc_sysfs.c", i32 259, i32 12}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/remoteproc/remoteproc_sysfs.c", i32 262, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @rproc_init_sysfs._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @rproc_init_sysfs._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @rproc_devgroups, !13, !"rproc_devgroups", i1 false, i1 false}
!13 = !{!"../drivers/remoteproc/remoteproc_sysfs.c", i32 246, i32 38}
!14 = !{ptr @rproc_devgroup, !15, !"rproc_devgroup", i1 false, i1 false}
!15 = !{!"../drivers/remoteproc/remoteproc_sysfs.c", i32 242, i32 37}
!16 = !{ptr @rproc_attrs, !17, !"rproc_attrs", i1 false, i1 false}
!17 = !{!"../drivers/remoteproc/remoteproc_sysfs.c", i32 233, i32 26}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/remoteproc/remoteproc_sysfs.c", i32 128, i32 8}
!20 = !{ptr @dev_attr_coredump, !19, !"dev_attr_coredump", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/remoteproc/remoteproc_sysfs.c", i32 85, i32 25}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/remoteproc/remoteproc_sysfs.c", i32 74, i32 30}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/remoteproc/remoteproc_sysfs.c", i32 75, i32 29}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/remoteproc/remoteproc_sysfs.c", i32 76, i32 29}
!29 = !{ptr @rproc_coredump_str, !30, !"rproc_coredump_str", i1 false, i1 false}
!30 = !{!"../drivers/remoteproc/remoteproc_sysfs.c", i32 73, i32 27}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/remoteproc/remoteproc_sysfs.c", i32 111, i32 3}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @coredump_store._entry, !32, !"_entry", i1 false, i1 false}
!37 = !{ptr @coredump_store._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/remoteproc/remoteproc_sysfs.c", i32 122, i32 3}
!40 = !{ptr @coredump_store._entry.13, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @coredump_store._entry_ptr.15, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/remoteproc/remoteproc_sysfs.c", i32 66, i32 8}
!44 = !{ptr @dev_attr_recovery, !43, !"dev_attr_recovery", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/remoteproc/remoteproc_sysfs.c", i32 18, i32 25}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/remoteproc/remoteproc_sysfs.c", i32 18, i32 58}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/remoteproc/remoteproc_sysfs.c", i32 18, i32 73}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/remoteproc/remoteproc_sysfs.c", i32 57, i32 30}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/remoteproc/remoteproc_sysfs.c", i32 160, i32 8}
!55 = !{ptr @dev_attr_firmware, !54, !"dev_attr_firmware", i1 false, i1 false}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/remoteproc/remoteproc_sysfs.c", i32 143, i32 14}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/remoteproc/remoteproc_sysfs.c", i32 221, i32 8}
!60 = !{ptr @dev_attr_state, !59, !"dev_attr_state", i1 false, i1 false}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/remoteproc/remoteproc_sysfs.c", i32 167, i32 21}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/remoteproc/remoteproc_sysfs.c", i32 168, i32 22}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/remoteproc/remoteproc_sysfs.c", i32 169, i32 21}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/remoteproc/remoteproc_sysfs.c", i32 170, i32 21}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/remoteproc/remoteproc_sysfs.c", i32 171, i32 21}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/remoteproc/remoteproc_sysfs.c", i32 172, i32 21}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/remoteproc/remoteproc_sysfs.c", i32 173, i32 21}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/remoteproc/remoteproc_sysfs.c", i32 174, i32 18}
!77 = !{ptr @rproc_state_string, !78, !"rproc_state_string", i1 false, i1 false}
!78 = !{!"../drivers/remoteproc/remoteproc_sysfs.c", i32 166, i32 27}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/remoteproc/remoteproc_sysfs.c", i32 196, i32 23}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/remoteproc/remoteproc_sysfs.c", i32 203, i32 4}
!83 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @state_store._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @state_store._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/remoteproc/remoteproc_sysfs.c", i32 204, i32 30}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/remoteproc/remoteproc_sysfs.c", i32 210, i32 30}
!90 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/remoteproc/remoteproc_sysfs.c", i32 216, i32 3}
!92 = !{ptr @state_store._entry.37, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @state_store._entry_ptr.39, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/remoteproc/remoteproc_sysfs.c", i32 231, i32 8}
!96 = !{ptr @dev_attr_name, !95, !"dev_attr_name", i1 false, i1 false}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{i8 0, i8 2}
