; ModuleID = '/llk/IR_all_yes/drivers/staging/greybus/audio_manager_module.c_pt.bc'
source_filename = "../drivers/staging/greybus/audio_manager_module.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.gb_audio_manager_module_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.gb_audio_manager_module = type { %struct.kobject, %struct.list_head, i32, %struct.gb_audio_manager_module_descriptor }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.gb_audio_manager_module_descriptor = type { [64 x i8], i32, i32, i32, i32, i32 }

@gb_audio_module_type = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @gb_audio_module_release, ptr @gb_audio_module_sysfs_ops, ptr null, ptr @gb_audio_module_default_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@gb_audio_manager_module_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013failed initializing kobject for audio module #%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"gb_audio_manager_module_create\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/staging/greybus/audio_manager_module.c\00", [49 x i8] zeroinitializer }, align 32
@gb_audio_manager_module_create._entry_ptr = internal global ptr @gb_audio_manager_module_create._entry, section ".printk_index", align 4
@gb_audio_manager_module_create._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016Created audio module #%d\0A\00", [36 x i8] zeroinitializer }, align 32
@gb_audio_manager_module_create._entry_ptr.6 = internal global ptr @gb_audio_manager_module_create._entry.4, section ".printk_index", align 4
@gb_audio_manager_module_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\016audio module #%d name=%s vid=%d pid=%d intf_id=%d i/p devices=0x%X o/p devices=0x%X\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"gb_audio_manager_module_dump\00", [35 x i8] zeroinitializer }, align 32
@gb_audio_manager_module_dump._entry_ptr = internal global ptr @gb_audio_manager_module_dump._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gb_audio_module_sysfs_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @gb_audio_module_attr_show, ptr @gb_audio_module_attr_store }, [24 x i8] zeroinitializer }, align 32
@gb_audio_module_default_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @gb_audio_module_default_group, ptr null], [24 x i8] zeroinitializer }, align 32
@gb_audio_module_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016Destroying audio module #%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gb_audio_module_release\00", [40 x i8] zeroinitializer }, align 32
@gb_audio_module_release._entry_ptr = internal global ptr @gb_audio_module_release._entry, section ".printk_index", align 4
@gb_audio_module_default_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @gb_audio_module_default_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@gb_audio_module_default_attrs = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @gb_audio_module_name_attribute, ptr @gb_audio_module_vid_attribute, ptr @gb_audio_module_pid_attribute, ptr @gb_audio_module_intf_id_attribute, ptr @gb_audio_module_ip_devices_attribute, ptr @gb_audio_module_op_devices_attribute, ptr null], [36 x i8] zeroinitializer }, align 32
@gb_audio_module_name_attribute = internal global { %struct.gb_audio_manager_module_attribute, [36 x i8] } { %struct.gb_audio_manager_module_attribute { %struct.attribute { ptr @.str.11, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @gb_audio_module_name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@gb_audio_module_vid_attribute = internal global { %struct.gb_audio_manager_module_attribute, [36 x i8] } { %struct.gb_audio_manager_module_attribute { %struct.attribute { ptr @.str.13, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @gb_audio_module_vid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@gb_audio_module_pid_attribute = internal global { %struct.gb_audio_manager_module_attribute, [36 x i8] } { %struct.gb_audio_manager_module_attribute { %struct.attribute { ptr @.str.14, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @gb_audio_module_pid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@gb_audio_module_intf_id_attribute = internal global { %struct.gb_audio_manager_module_attribute, [36 x i8] } { %struct.gb_audio_manager_module_attribute { %struct.attribute { ptr @.str.15, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @gb_audio_module_intf_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@gb_audio_module_ip_devices_attribute = internal global { %struct.gb_audio_manager_module_attribute, [36 x i8] } { %struct.gb_audio_manager_module_attribute { %struct.attribute { ptr @.str.16, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @gb_audio_module_ip_devices_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@gb_audio_module_op_devices_attribute = internal global { %struct.gb_audio_manager_module_attribute, [36 x i8] } { %struct.gb_audio_manager_module_attribute { %struct.attribute { ptr @.str.18, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @gb_audio_module_op_devices_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vid\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pid\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"intf_id\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ip_devices\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0x%X\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"op_devices\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NAME=%s\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VID=%d\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PID=%d\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"INTF_ID=%d\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"I/P DEVICES=0x%X\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"O/P DEVICES=0x%X\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.25 = private unnamed_addr constant [21 x i8] c"gb_audio_module_type\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 147, i32 25 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 214, i32 68 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 217, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 228, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 234, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [26 x i8] c"gb_audio_module_sysfs_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 59, i32 31 }
@___asan_gen_.61 = private unnamed_addr constant [31 x i8] c"gb_audio_module_default_groups\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 68, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [30 x i8] c"gb_audio_module_default_group\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 145, i32 1 }
@___asan_gen_.76 = private unnamed_addr constant [30 x i8] c"gb_audio_module_default_attrs\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 136, i32 26 }
@___asan_gen_.79 = private unnamed_addr constant [31 x i8] c"gb_audio_module_name_attribute\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 80, i32 49 }
@___asan_gen_.82 = private unnamed_addr constant [30 x i8] c"gb_audio_module_vid_attribute\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 90, i32 49 }
@___asan_gen_.85 = private unnamed_addr constant [30 x i8] c"gb_audio_module_pid_attribute\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 100, i32 49 }
@___asan_gen_.88 = private unnamed_addr constant [34 x i8] c"gb_audio_module_intf_id_attribute\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 111, i32 6 }
@___asan_gen_.91 = private unnamed_addr constant [37 x i8] c"gb_audio_module_ip_devices_attribute\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 122, i32 6 }
@___asan_gen_.94 = private unnamed_addr constant [37 x i8] c"gb_audio_module_op_devices_attribute\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 133, i32 6 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 81, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 91, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 101, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 112, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 123, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 118, i32 22 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 134, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 172, i32 29 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 173, i32 27 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 174, i32 27 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 175, i32 31 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 176, i32 34 }
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.134 = private constant [50 x i8] c"../drivers/staging/greybus/audio_manager_module.c\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 178, i32 34 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @gb_audio_manager_module_create._entry, ptr @gb_audio_manager_module_create._entry.4, ptr @gb_audio_manager_module_create._entry_ptr, ptr @gb_audio_manager_module_create._entry_ptr.6, ptr @gb_audio_manager_module_dump._entry, ptr @gb_audio_manager_module_dump._entry_ptr, ptr @gb_audio_module_release._entry, ptr @gb_audio_module_release._entry_ptr, ptr @gb_audio_module_type, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @gb_audio_module_sysfs_ops, ptr @gb_audio_module_default_groups, ptr @.str.9, ptr @.str.10, ptr @gb_audio_module_default_group, ptr @gb_audio_module_default_attrs, ptr @gb_audio_module_name_attribute, ptr @gb_audio_module_vid_attribute, ptr @gb_audio_module_pid_attribute, ptr @gb_audio_module_intf_id_attribute, ptr @gb_audio_module_ip_devices_attribute, ptr @gb_audio_module_op_devices_attribute, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_audio_module_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_audio_manager_module_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_audio_manager_module_create._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_audio_manager_module_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_audio_module_sysfs_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_audio_module_default_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_audio_module_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_audio_module_default_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_audio_module_default_attrs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_audio_module_name_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_audio_module_vid_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_audio_module_pid_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_audio_module_intf_id_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_audio_module_ip_devices_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_audio_module_op_devices_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_audio_manager_module_create(ptr nocapture noundef writeonly %module, ptr noundef %manager_kset, i32 noundef %id, ptr nocapture noundef readonly %desc) local_unnamed_addr #0 align 64 {
entry:
  %name_string.i = alloca [128 x i8], align 1
  %vid_string.i = alloca [64 x i8], align 1
  %pid_string.i = alloca [64 x i8], align 1
  %intf_id_string.i = alloca [64 x i8], align 1
  %ip_devices_string.i = alloca [64 x i8], align 1
  %op_devices_string.i = alloca [64 x i8], align 1
  %envp.i = alloca [7 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 232) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %list = getelementptr inbounds %struct.gb_audio_manager_module, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.gb_audio_manager_module, ptr %call7.i.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %prev.i, align 4
  %id1 = getelementptr inbounds %struct.gb_audio_manager_module, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %id1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %id, ptr %id1, align 8
  %desc2 = getelementptr inbounds %struct.gb_audio_manager_module, ptr %call7.i.i, i32 0, i32 3
  %4 = call ptr @memcpy(ptr %desc2, ptr %desc, i32 84)
  %kset = getelementptr inbounds %struct.kobject, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %kset to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %manager_kset, ptr %kset, align 8
  %call4 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @gb_audio_module_type, ptr noundef null, ptr noundef nonnull @.str, i32 noundef %id) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %id) #13
  tail call void @kobject_put(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %name_string.i) #9
  %6 = call ptr @memset(ptr %name_string.i, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %vid_string.i) #9
  %7 = call ptr @memset(ptr %vid_string.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pid_string.i) #9
  %8 = call ptr @memset(ptr %pid_string.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %intf_id_string.i) #9
  %9 = call ptr @memset(ptr %intf_id_string.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ip_devices_string.i) #9
  %10 = call ptr @memset(ptr %ip_devices_string.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %op_devices_string.i) #9
  %11 = call ptr @memset(ptr %op_devices_string.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %envp.i) #9
  %12 = getelementptr inbounds [7 x ptr], ptr %envp.i, i32 0, i32 1
  %13 = getelementptr inbounds [7 x ptr], ptr %envp.i, i32 0, i32 2
  %14 = getelementptr inbounds [7 x ptr], ptr %envp.i, i32 0, i32 3
  %15 = getelementptr inbounds [7 x ptr], ptr %envp.i, i32 0, i32 4
  %16 = getelementptr inbounds [7 x ptr], ptr %envp.i, i32 0, i32 5
  %17 = getelementptr inbounds [7 x ptr], ptr %envp.i, i32 0, i32 6
  %18 = ptrtoint ptr %envp.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %name_string.i, ptr %envp.i, align 4
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %vid_string.i, ptr %12, align 4
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %pid_string.i, ptr %13, align 4
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %intf_id_string.i, ptr %14, align 4
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %ip_devices_string.i, ptr %15, align 4
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %op_devices_string.i, ptr %16, align 4
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %17, align 4
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name_string.i, i32 noundef 128, ptr noundef nonnull @.str.19, ptr noundef %desc2) #9
  %vid.i = getelementptr inbounds %struct.gb_audio_manager_module, ptr %call7.i.i, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %vid.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vid.i, align 4
  %call15.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %vid_string.i, i32 noundef 64, ptr noundef nonnull @.str.20, i32 noundef %26) #9
  %pid.i = getelementptr inbounds %struct.gb_audio_manager_module, ptr %call7.i.i, i32 0, i32 3, i32 2
  %27 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pid.i, align 8
  %call18.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %pid_string.i, i32 noundef 64, ptr noundef nonnull @.str.21, i32 noundef %28) #9
  %intf_id.i = getelementptr inbounds %struct.gb_audio_manager_module, ptr %call7.i.i, i32 0, i32 3, i32 3
  %29 = ptrtoint ptr %intf_id.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %intf_id.i, align 4
  %call21.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %intf_id_string.i, i32 noundef 64, ptr noundef nonnull @.str.22, i32 noundef %30) #9
  %ip_devices.i = getelementptr inbounds %struct.gb_audio_manager_module, ptr %call7.i.i, i32 0, i32 3, i32 4
  %31 = ptrtoint ptr %ip_devices.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ip_devices.i, align 8
  %call24.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_devices_string.i, i32 noundef 64, ptr noundef nonnull @.str.23, i32 noundef %32) #9
  %op_devices.i = getelementptr inbounds %struct.gb_audio_manager_module, ptr %call7.i.i, i32 0, i32 3, i32 5
  %33 = ptrtoint ptr %op_devices.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %op_devices.i, align 4
  %call27.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %op_devices_string.i, i32 noundef 64, ptr noundef nonnull @.str.24, i32 noundef %34) #9
  %call29.i = call i32 @kobject_uevent_env(ptr noundef nonnull %call7.i.i, i32 noundef 0, ptr noundef nonnull %envp.i) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %envp.i) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %op_devices_string.i) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ip_devices_string.i) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %intf_id_string.i) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pid_string.i) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %vid_string.i) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %name_string.i) #9
  %35 = ptrtoint ptr %module to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i, ptr %module, align 4
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %id) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end ], [ 0, %if.end9 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gb_audio_manager_module_dump(ptr noundef %module) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.gb_audio_manager_module, ptr %module, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %desc = getelementptr inbounds %struct.gb_audio_manager_module, ptr %module, i32 0, i32 3
  %vid = getelementptr inbounds %struct.gb_audio_manager_module, ptr %module, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %vid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vid, align 4
  %pid = getelementptr inbounds %struct.gb_audio_manager_module, ptr %module, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 4
  %intf_id = getelementptr inbounds %struct.gb_audio_manager_module, ptr %module, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %intf_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %intf_id, align 4
  %ip_devices = getelementptr inbounds %struct.gb_audio_manager_module, ptr %module, i32 0, i32 3, i32 4
  %8 = ptrtoint ptr %ip_devices to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ip_devices, align 4
  %op_devices = getelementptr inbounds %struct.gb_audio_manager_module, ptr %module, i32 0, i32 3, i32 5
  %10 = ptrtoint ptr %op_devices to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %op_devices, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %1, ptr noundef %desc, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11) #13
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_audio_module_release(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.gb_audio_manager_module, ptr %kobj, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %1) #13
  tail call void @kfree(ptr noundef %kobj) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_audio_module_attr_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %show = getelementptr inbounds %struct.gb_audio_manager_module_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 %1(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_audio_module_attr_store(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %store = getelementptr inbounds %struct.gb_audio_manager_module_attribute, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %store, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 %1(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i32 noundef %len) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gb_audio_module_name_show(ptr nocapture noundef readonly %module, ptr nocapture noundef readnone %attr, ptr noundef %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.gb_audio_manager_module, ptr %module, i32 0, i32 3
  %stpcpy = tail call ptr @stpcpy(ptr %buf, ptr %desc) #14
  %0 = ptrtoint ptr %stpcpy to i32
  %1 = ptrtoint ptr %buf to i32
  %2 = sub i32 %0, %1
  ret i32 %2
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_audio_module_vid_show(ptr nocapture noundef readonly %module, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vid = getelementptr inbounds %struct.gb_audio_manager_module, ptr %module, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %vid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vid, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_audio_module_pid_show(ptr nocapture noundef readonly %module, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pid = getelementptr inbounds %struct.gb_audio_manager_module, ptr %module, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pid, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_audio_module_intf_id_show(ptr nocapture noundef readonly %module, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %intf_id = getelementptr inbounds %struct.gb_audio_manager_module, ptr %module, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %intf_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %intf_id, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_audio_module_ip_devices_show(ptr nocapture noundef readonly %module, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ip_devices = getelementptr inbounds %struct.gb_audio_manager_module, ptr %module, i32 0, i32 3, i32 4
  %0 = ptrtoint ptr %ip_devices to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ip_devices, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_audio_module_op_devices_show(ptr nocapture noundef readonly %module, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %op_devices = getelementptr inbounds %struct.gb_audio_manager_module, ptr %module, i32 0, i32 3, i32 5
  %0 = ptrtoint ptr %op_devices to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %op_devices, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare ptr @stpcpy(ptr noalias writeonly, ptr noalias nocapture readonly) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !21, !22, !23, !24, !26, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/greybus/audio_manager_module.c", i32 214, i32 68}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/greybus/audio_manager_module.c", i32 217, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @gb_audio_manager_module_create._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @gb_audio_manager_module_create._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/greybus/audio_manager_module.c", i32 228, i32 2}
!10 = !{ptr @gb_audio_manager_module_create._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @gb_audio_manager_module_create._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/greybus/audio_manager_module.c", i32 234, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @gb_audio_manager_module_dump._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @gb_audio_manager_module_dump._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @gb_audio_module_type, !18, !"gb_audio_module_type", i1 false, i1 false}
!18 = !{!"../drivers/staging/greybus/audio_manager_module.c", i32 147, i32 25}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/greybus/audio_manager_module.c", i32 68, i32 2}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @gb_audio_module_release._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @gb_audio_module_release._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @gb_audio_module_sysfs_ops, !25, !"gb_audio_module_sysfs_ops", i1 false, i1 false}
!25 = !{!"../drivers/staging/greybus/audio_manager_module.c", i32 59, i32 31}
!26 = !{ptr @gb_audio_module_default_groups, !27, !"gb_audio_module_default_groups", i1 false, i1 false}
!27 = !{!"../drivers/staging/greybus/audio_manager_module.c", i32 145, i32 1}
!28 = !{ptr @gb_audio_module_default_group, !27, !"gb_audio_module_default_group", i1 false, i1 false}
!29 = !{ptr @gb_audio_module_default_attrs, !30, !"gb_audio_module_default_attrs", i1 false, i1 false}
!30 = !{!"../drivers/staging/greybus/audio_manager_module.c", i32 136, i32 26}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/staging/greybus/audio_manager_module.c", i32 81, i32 2}
!33 = !{ptr @gb_audio_module_name_attribute, !34, !"gb_audio_module_name_attribute", i1 false, i1 false}
!34 = !{!"../drivers/staging/greybus/audio_manager_module.c", i32 80, i32 49}
!35 = distinct !{null, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/greybus/audio_manager_module.c", i32 77, i32 22}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/staging/greybus/audio_manager_module.c", i32 91, i32 2}
!39 = !{ptr @gb_audio_module_vid_attribute, !40, !"gb_audio_module_vid_attribute", i1 false, i1 false}
!40 = !{!"../drivers/staging/greybus/audio_manager_module.c", i32 90, i32 49}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/staging/greybus/audio_manager_module.c", i32 101, i32 2}
!43 = !{ptr @gb_audio_module_pid_attribute, !44, !"gb_audio_module_pid_attribute", i1 false, i1 false}
!44 = !{!"../drivers/staging/greybus/audio_manager_module.c", i32 100, i32 49}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/greybus/audio_manager_module.c", i32 112, i32 2}
!47 = !{ptr @gb_audio_module_intf_id_attribute, !48, !"gb_audio_module_intf_id_attribute", i1 false, i1 false}
!48 = !{!"../drivers/staging/greybus/audio_manager_module.c", i32 111, i32 6}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/staging/greybus/audio_manager_module.c", i32 123, i32 2}
!51 = !{ptr @gb_audio_module_ip_devices_attribute, !52, !"gb_audio_module_ip_devices_attribute", i1 false, i1 false}
!52 = !{!"../drivers/staging/greybus/audio_manager_module.c", i32 122, i32 6}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/staging/greybus/audio_manager_module.c", i32 118, i32 22}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/staging/greybus/audio_manager_module.c", i32 134, i32 2}
!57 = !{ptr @gb_audio_module_op_devices_attribute, !58, !"gb_audio_module_op_devices_attribute", i1 false, i1 false}
!58 = !{!"../drivers/staging/greybus/audio_manager_module.c", i32 133, i32 6}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/staging/greybus/audio_manager_module.c", i32 172, i32 29}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/staging/greybus/audio_manager_module.c", i32 173, i32 27}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/staging/greybus/audio_manager_module.c", i32 174, i32 27}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/staging/greybus/audio_manager_module.c", i32 175, i32 31}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/staging/greybus/audio_manager_module.c", i32 176, i32 34}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/staging/greybus/audio_manager_module.c", i32 178, i32 34}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
