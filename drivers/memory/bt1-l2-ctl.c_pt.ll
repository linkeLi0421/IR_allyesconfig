; ModuleID = '/llk/IR_all_yes/drivers/memory/bt1-l2-ctl.c_pt.bc'
source_filename = "../drivers/memory/bt1-l2-ctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.l2_ctl_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.l2_ctl = type { ptr, ptr }

@__initcall__kmod_bt1_l2_ctl__204_320_l2_ctl_driver_init6 = internal global ptr @l2_ctl_driver_init, section ".initcall6.init", align 4
@l2_ctl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @l2_ctl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @l2_ctl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_l2_ctl_driver_exit = internal global ptr @l2_ctl_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author205 = internal constant [66 x i8] c"bt1_l2_ctl.author=Serge Semin <Sergey.Semin@baikalelectronics.ru>\00", section ".modinfo", align 1
@__UNIQUE_ID_description206 = internal constant [49 x i8] c"bt1_l2_ctl.description=Baikal-T1 L2-cache driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file207 = internal constant [42 x i8] c"bt1_l2_ctl.file=drivers/memory/bt1-l2-ctl\00", section ".modinfo", align 1
@__UNIQUE_ID_license208 = internal constant [26 x i8] c"bt1_l2_ctl.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bt1-l2-ctl\00", [21 x i8] zeroinitializer }, align 32
@l2_ctl_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"baikal,bt1-l2-ctl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@l2_ctl_create_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 160, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Can't add L2 CTL data clear action\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"l2_ctl_create_data\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/memory/bt1-l2-ctl.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@l2_ctl_create_data._entry_ptr = internal global ptr @l2_ctl_create_data._entry, section ".printk_index", align 4
@l2_ctl_find_sys_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 174, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Couldn't get L2 CTL register map\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"l2_ctl_find_sys_regs\00", [43 x i8] zeroinitializer }, align 32
@l2_ctl_find_sys_regs._entry_ptr = internal global ptr @l2_ctl_find_sys_regs._entry, section ".printk_index", align 4
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"baikal,l2-ws-latency\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"baikal,l2-tag-latency\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"baikal,l2-data-latency\00", [41 x i8] zeroinitializer }, align 32
@l2_ctl_of_parse_property._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 190, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid value of '%s'\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"l2_ctl_of_parse_property\00", [39 x i8] zeroinitializer }, align 32
@l2_ctl_of_parse_property._entry_ptr = internal global ptr @l2_ctl_of_parse_property._entry, section ".printk_index", align 4
@l2_ctl_sysfs_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @l2_ctl_sysfs_group, ptr null], [24 x i8] zeroinitializer }, align 32
@l2_ctl_init_sysfs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 272, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to create L2 CTL sysfs nodes\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"l2_ctl_init_sysfs\00", [46 x i8] zeroinitializer }, align 32
@l2_ctl_init_sysfs._entry_ptr = internal global ptr @l2_ctl_init_sysfs._entry, section ".printk_index", align 4
@l2_ctl_init_sysfs._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.3, i32 278, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Can't add L2 CTL sysfs remove action\0A\00", [58 x i8] zeroinitializer }, align 32
@l2_ctl_init_sysfs._entry_ptr.17 = internal global ptr @l2_ctl_init_sysfs._entry.15, section ".printk_index", align 4
@l2_ctl_sysfs_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @l2_ctl_sysfs_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@l2_ctl_sysfs_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @l2_ctl_attr_l2_ws_latency, ptr @l2_ctl_attr_l2_tag_latency, ptr @l2_ctl_attr_l2_data_latency, ptr null], [16 x i8] zeroinitializer }, align 32
@l2_ctl_attr_l2_ws_latency = internal global { %struct.l2_ctl_device_attribute, [32 x i8] } { %struct.l2_ctl_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @l2_ctl_latency_show, ptr @l2_ctl_latency_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@l2_ctl_attr_l2_tag_latency = internal global { %struct.l2_ctl_device_attribute, [32 x i8] } { %struct.l2_ctl_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @l2_ctl_latency_show, ptr @l2_ctl_latency_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@l2_ctl_attr_l2_data_latency = internal global { %struct.l2_ctl_device_attribute, [32 x i8] } { %struct.l2_ctl_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @l2_ctl_latency_show, ptr @l2_ctl_latency_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"l2_ws_latency\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"l2_tag_latency\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"l2_data_latency\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.23 = private unnamed_addr constant [14 x i8] c"l2_ctl_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 313, i32 31 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 316, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant [16 x i8] c"l2_ctl_of_match\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 307, i32 34 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 160, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 174, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 200, i32 50 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 204, i32 51 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 209, i32 6 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 190, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant [20 x i8] c"l2_ctl_sysfs_groups\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 272, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 278, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [19 x i8] c"l2_ctl_sysfs_group\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 257, i32 1 }
@___asan_gen_.98 = private unnamed_addr constant [19 x i8] c"l2_ctl_sysfs_attrs\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 251, i32 26 }
@___asan_gen_.101 = private unnamed_addr constant [26 x i8] c"l2_ctl_attr_l2_ws_latency\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [27 x i8] c"l2_ctl_attr_l2_tag_latency\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [28 x i8] c"l2_ctl_attr_l2_data_latency\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 247, i32 8 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 225, i32 35 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 248, i32 8 }
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private constant [31 x i8] c"../drivers/memory/bt1-l2-ctl.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 249, i32 8 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_author205, ptr @__UNIQUE_ID_description206, ptr @__UNIQUE_ID_file207, ptr @__UNIQUE_ID_license208, ptr @__exitcall_l2_ctl_driver_exit, ptr @__initcall__kmod_bt1_l2_ctl__204_320_l2_ctl_driver_init6, ptr @l2_ctl_create_data._entry, ptr @l2_ctl_create_data._entry_ptr, ptr @l2_ctl_driver_exit, ptr @l2_ctl_find_sys_regs._entry, ptr @l2_ctl_find_sys_regs._entry_ptr, ptr @l2_ctl_init_sysfs._entry, ptr @l2_ctl_init_sysfs._entry.15, ptr @l2_ctl_init_sysfs._entry_ptr, ptr @l2_ctl_init_sysfs._entry_ptr.17, ptr @l2_ctl_of_parse_property._entry, ptr @l2_ctl_of_parse_property._entry_ptr, ptr @l2_ctl_driver, ptr @.str, ptr @l2_ctl_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @l2_ctl_sysfs_groups, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @l2_ctl_sysfs_group, ptr @l2_ctl_sysfs_attrs, ptr @l2_ctl_attr_l2_ws_latency, ptr @l2_ctl_attr_l2_tag_latency, ptr @l2_ctl_attr_l2_data_latency, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2_ctl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2_ctl_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2_ctl_create_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2_ctl_find_sys_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2_ctl_of_parse_property._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2_ctl_sysfs_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2_ctl_init_sysfs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2_ctl_init_sysfs._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2_ctl_sysfs_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2_ctl_sysfs_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2_ctl_attr_l2_ws_latency to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2_ctl_attr_l2_tag_latency to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2_ctl_attr_l2_data_latency to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @l2_ctl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @l2_ctl_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @l2_ctl_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @l2_ctl_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2_ctl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %data.i21.i = alloca i32, align 4
  %data.i11.i = alloca i32, align 4
  %data.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1.i, i32 noundef 8, i32 noundef 3520) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end.i:                                         ; preds = %entry
  %call3.i = tail call i32 @devm_add_action(ptr noundef %dev1.i, ptr noundef nonnull @l2_ctl_clear_data, ptr noundef nonnull %call.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end7.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.1) #10
  %0 = inttoptr i32 %call3.i to ptr
  br label %l2_ctl_create_data.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1.i, ptr %call.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i.i, ptr %driver_data.i.i.i, align 4
  br label %l2_ctl_create_data.exit

l2_ctl_create_data.exit:                          ; preds = %if.end7.i, %do.end.i
  %retval.0.i = phi ptr [ %0, %do.end.i ], [ %call.i.i, %if.end7.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %l2_ctl_create_data.exit.if.then_crit_edge, label %if.end

l2_ctl_create_data.exit.if.then_crit_edge:        ; preds = %l2_ctl_create_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %l2_ctl_create_data.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i37 = phi ptr [ %retval.0.i, %l2_ctl_create_data.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %3 = ptrtoint ptr %retval.0.i37 to i32
  br label %cleanup

if.end:                                           ; preds = %l2_ctl_create_data.exit
  %4 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %retval.0.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node.i, align 8
  %parent.i = getelementptr inbounds %struct.device_node, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i, align 4
  %call.i = tail call ptr @syscon_node_to_regmap(ptr noundef %9) #7
  %sys_regs.i = getelementptr inbounds %struct.l2_ctl, ptr %retval.0.i, i32 0, i32 1
  %10 = ptrtoint ptr %sys_regs.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %sys_regs.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %l2_ctl_find_sys_regs.exit, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

l2_ctl_find_sys_regs.exit:                        ; preds = %if.end
  %11 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %retval.0.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.6) #10
  %13 = ptrtoint ptr %sys_regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sys_regs.i, align 4
  %15 = ptrtoint ptr %14 to i32
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %l2_ctl_find_sys_regs.exit.if.end5_crit_edge, label %l2_ctl_find_sys_regs.exit.cleanup_crit_edge

l2_ctl_find_sys_regs.exit.cleanup_crit_edge:      ; preds = %l2_ctl_find_sys_regs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

l2_ctl_find_sys_regs.exit.if.end5_crit_edge:      ; preds = %l2_ctl_find_sys_regs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.end5:                                          ; preds = %l2_ctl_find_sys_regs.exit.if.end5_crit_edge, %if.end.if.end5_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i.i) #7
  %16 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %data.i.i, align 4, !annotation !74
  %17 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %retval.0.i, align 4
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 27
  %19 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node.i.i, align 8
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %20, ptr noundef nonnull @.str.8, ptr noundef nonnull %data.i.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i)
  %tobool.not.i.i = icmp sgt i32 %call.i.i.i.i, -1
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end5.if.end.i26_crit_edge

if.end5.if.end.i26_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i26

if.then.i.i:                                      ; preds = %if.end5
  %21 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data.i.i, align 4
  %call1.i.i = call fastcc i32 @l2_ctl_set_latency(ptr noundef %retval.0.i, i32 noundef 0, i32 noundef %22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.then.i.i.if.end.i26_crit_edge, label %l2_ctl_of_parse_property.exit.i

if.then.i.i.if.end.i26_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i26

l2_ctl_of_parse_property.exit.i:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %retval.0.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i) #7
  br label %cleanup

if.end.i26:                                       ; preds = %if.then.i.i.if.end.i26_crit_edge, %if.end5.if.end.i26_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i11.i) #7
  %25 = ptrtoint ptr %data.i11.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %data.i11.i, align 4, !annotation !74
  %26 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %retval.0.i, align 4
  %of_node.i12.i = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 27
  %28 = ptrtoint ptr %of_node.i12.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %of_node.i12.i, align 8
  %call.i.i.i13.i = call i32 @of_property_read_variable_u32_array(ptr noundef %29, ptr noundef nonnull @.str.9, ptr noundef nonnull %data.i11.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i13.i)
  %tobool.not.i14.i = icmp sgt i32 %call.i.i.i13.i, -1
  br i1 %tobool.not.i14.i, label %if.then.i17.i, label %if.end.i26.if.end4.i_crit_edge

if.end.i26.if.end4.i_crit_edge:                   ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.then.i17.i:                                    ; preds = %if.end.i26
  %30 = ptrtoint ptr %data.i11.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %data.i11.i, align 4
  %call1.i15.i = call fastcc i32 @l2_ctl_set_latency(ptr noundef %retval.0.i, i32 noundef 1, i32 noundef %31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i15.i)
  %tobool2.not.i16.i = icmp eq i32 %call1.i15.i, 0
  br i1 %tobool2.not.i16.i, label %if.then.i17.i.if.end4.i_crit_edge, label %l2_ctl_of_parse_property.exit20.i

if.then.i17.i.if.end4.i_crit_edge:                ; preds = %if.then.i17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

l2_ctl_of_parse_property.exit20.i:                ; preds = %if.then.i17.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %retval.0.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i11.i) #7
  br label %cleanup

if.end4.i:                                        ; preds = %if.then.i17.i.if.end4.i_crit_edge, %if.end.i26.if.end4.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i11.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i21.i) #7
  %34 = ptrtoint ptr %data.i21.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %data.i21.i, align 4, !annotation !74
  %35 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %retval.0.i, align 4
  %of_node.i22.i = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 27
  %37 = ptrtoint ptr %of_node.i22.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %of_node.i22.i, align 8
  %call.i.i.i23.i = call i32 @of_property_read_variable_u32_array(ptr noundef %38, ptr noundef nonnull @.str.10, ptr noundef nonnull %data.i21.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i23.i)
  %tobool.not.i24.i = icmp sgt i32 %call.i.i.i23.i, -1
  br i1 %tobool.not.i24.i, label %if.then.i27.i, label %if.end4.i.if.end9_crit_edge

if.end4.i.if.end9_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then.i27.i:                                    ; preds = %if.end4.i
  %39 = ptrtoint ptr %data.i21.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %data.i21.i, align 4
  %call1.i25.i = call fastcc i32 @l2_ctl_set_latency(ptr noundef %retval.0.i, i32 noundef 2, i32 noundef %40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i25.i)
  %tobool2.not.i26.i = icmp eq i32 %call1.i25.i, 0
  br i1 %tobool2.not.i26.i, label %if.then.i27.i.if.end9_crit_edge, label %l2_ctl_of_parse.exit

if.then.i27.i.if.end9_crit_edge:                  ; preds = %if.then.i27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

l2_ctl_of_parse.exit:                             ; preds = %if.then.i27.i
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %retval.0.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i21.i) #7
  br label %cleanup

if.end9:                                          ; preds = %if.then.i27.i.if.end9_crit_edge, %if.end4.i.if.end9_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i21.i) #7
  %43 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %retval.0.i, align 4
  %call.i28 = call i32 @device_add_groups(ptr noundef %44, ptr noundef nonnull @l2_ctl_sysfs_groups) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool.not.i29 = icmp eq i32 %call.i28, 0
  %45 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %retval.0.i, align 4
  br i1 %tobool.not.i29, label %if.end.i33, label %do.end.i30

do.end.i30:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.13) #10
  br label %cleanup

if.end.i33:                                       ; preds = %if.end9
  %call.i.i31 = call i32 @devm_add_action(ptr noundef %46, ptr noundef nonnull @l2_ctl_remove_sysfs, ptr noundef %retval.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i31)
  %tobool.not.i.i32 = icmp eq i32 %call.i.i31, 0
  br i1 %tobool.not.i.i32, label %if.end.i33.cleanup_crit_edge, label %do.end8.i

if.end.i33.cleanup_crit_edge:                     ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end8.i:                                        ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %retval.0.i, align 4
  call void @device_remove_groups(ptr noundef %48, ptr noundef nonnull @l2_ctl_sysfs_groups) #7
  %49 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %retval.0.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.16) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end8.i, %if.end.i33.cleanup_crit_edge, %do.end.i30, %l2_ctl_of_parse.exit, %l2_ctl_of_parse_property.exit20.i, %l2_ctl_of_parse_property.exit.i, %l2_ctl_find_sys_regs.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %15, %l2_ctl_find_sys_regs.exit.cleanup_crit_edge ], [ %call1.i25.i, %l2_ctl_of_parse.exit ], [ %call1.i15.i, %l2_ctl_of_parse_property.exit20.i ], [ %call1.i.i, %l2_ctl_of_parse_property.exit.i ], [ %call.i28, %do.end.i30 ], [ %call.i.i31, %do.end8.i ], [ 0, %if.end.i33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @l2_ctl_clear_data(ptr nocapture noundef readonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %driver_data.i.i = getelementptr i8, ptr %1, i32 164
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @l2_ctl_set_latency(ptr nocapture noundef readonly %l2, i32 noundef %id, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #7
  %0 = tail call i32 @llvm.umin.i32(i32 %val, i32 3)
  %1 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %id, label %entry.cleanup_crit_edge [
    i32 0, label %do.end20
    i32 1, label %do.end44
    i32 2, label %do.end69
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end20:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl nuw nsw i32 %0, 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %shl, ptr %data, align 4
  br label %sw.epilog

do.end44:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %shl46 = shl nuw nsw i32 %0, 2
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shl46, ptr %data, align 4
  br label %sw.epilog

do.end69:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %0, ptr %data, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end69, %do.end44, %do.end20
  %mask.0 = phi i32 [ 8195, %do.end69 ], [ 8204, %do.end44 ], [ 8240, %do.end20 ]
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data, align 4
  %or = or i32 %6, 8192
  store i32 %or, ptr %data, align 4
  %sys_regs = getelementptr inbounds %struct.l2_ctl, ptr %l2, i32 0, i32 1
  %7 = ptrtoint ptr %sys_regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sys_regs, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 40, i32 noundef %mask.0, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool74.not = icmp eq i32 %call.i, 0
  br i1 %tobool74.not, label %if.end76, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end76:                                         ; preds = %sw.epilog
  %call77 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call77, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 137) #7
  %9 = ptrtoint ptr %sys_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sys_regs, align 4
  %call92160 = call i32 @regmap_read(ptr noundef %10, i32 noundef 40, ptr noundef nonnull %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92160)
  %tobool93.not161 = icmp eq i32 %call92160, 0
  br i1 %tobool93.not161, label %if.end76.lor.lhs.false_crit_edge, label %if.end76.cleanup_crit_edge

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end76.lor.lhs.false_crit_edge:                 ; preds = %if.end76
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then107.lor.lhs.false_crit_edge, %if.end76.lor.lhs.false_crit_edge
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %tobool95.not = icmp sgt i32 %12, -1
  br i1 %tobool95.not, label %land.lhs.true, label %lor.lhs.false.lor.rhs_crit_edge

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call99 = call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call99, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call99, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then107

if.then107:                                       ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #7
  %13 = ptrtoint ptr %sys_regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sys_regs, align 4
  %call92 = call i32 @regmap_read(ptr noundef %14, i32 noundef 40, ptr noundef nonnull %data) #7
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.then107.lor.lhs.false_crit_edge, label %if.then107.cleanup_crit_edge

if.then107.cleanup_crit_edge:                     ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then107.lor.lhs.false_crit_edge:               ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %15 = ptrtoint ptr %sys_regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sys_regs, align 4
  %call104 = call i32 @regmap_read(ptr noundef %16, i32 noundef 40, ptr noundef nonnull %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool110.not = icmp eq i32 %call104, 0
  br i1 %tobool110.not, label %for.end.lor.rhs_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool112 = icmp slt i32 %18, 0
  %phi.sel = select i1 %tobool112, i32 0, i32 -110
  br label %cleanup

cleanup:                                          ; preds = %lor.rhs, %for.end.cleanup_crit_edge, %if.then107.cleanup_crit_edge, %if.end76.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i, %sw.epilog.cleanup_crit_edge ], [ %call104, %for.end.cleanup_crit_edge ], [ %phi.sel, %lor.rhs ], [ %call92160, %if.end76.cleanup_crit_edge ], [ %call92, %if.then107.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_groups(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_ctl_remove_sysfs(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void @device_remove_groups(ptr noundef %1, ptr noundef nonnull @l2_ctl_sysfs_groups) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2_ctl_latency_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #2 align 64 {
entry:
  %data.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %id = getelementptr inbounds %struct.l2_ctl_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #7
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %data.i, align 4
  %sys_regs.i = getelementptr inbounds %struct.l2_ctl, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %sys_regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sys_regs.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 40, ptr noundef nonnull %data.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.l2_ctl_get_latency.exit.thread_crit_edge

entry.l2_ctl_get_latency.exit.thread_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %l2_ctl_get_latency.exit.thread

if.end.i:                                         ; preds = %entry
  %7 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %3, label %if.end.i.l2_ctl_get_latency.exit.thread_crit_edge [
    i32 0, label %do.end12.i
    i32 1, label %do.end28.i
    i32 2, label %do.end47.i
  ]

if.end.i.l2_ctl_get_latency.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %l2_ctl_get_latency.exit.thread

do.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data.i, align 4
  %and.i = lshr i32 %9, 4
  br label %if.end

do.end28.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data.i, align 4
  %and30.i = lshr i32 %11, 2
  br label %if.end

do.end47.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data.i, align 4
  br label %if.end

l2_ctl_get_latency.exit.thread:                   ; preds = %if.end.i.l2_ctl_get_latency.exit.thread_crit_edge, %entry.l2_ctl_get_latency.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end.i.l2_ctl_get_latency.exit.thread_crit_edge ], [ %call.i, %entry.l2_ctl_get_latency.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #7
  br label %cleanup

if.end:                                           ; preds = %do.end47.i, %do.end28.i, %do.end12.i
  %and.sink.i = phi i32 [ %and.i, %do.end12.i ], [ %and30.i, %do.end28.i ], [ %13, %do.end47.i ]
  %shr.i = and i32 %and.sink.i, 3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #7
  %call2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.19, i32 noundef %shr.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %l2_ctl_get_latency.exit.thread
  %retval.0 = phi i32 [ %call2, %if.end ], [ %retval.0.i.ph, %l2_ctl_get_latency.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2_ctl_latency_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #7
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %data, align 4, !annotation !74
  %call1 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %id = getelementptr inbounds %struct.l2_ctl_device_attribute, ptr %attr, i32 0, i32 1
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data, align 4
  %call2 = call fastcc i32 @l2_ctl_set_latency(ptr noundef %1, i32 noundef %4, i32 noundef %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  %count.call2 = select i1 %tobool.not, i32 %count, i32 %call2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %count.call2, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_groups(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !31, !33, !35, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !52, !54, !55, !57, !59, !60, !62, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__initcall__kmod_bt1_l2_ctl__204_320_l2_ctl_driver_init6, !1, !"__initcall__kmod_bt1_l2_ctl__204_320_l2_ctl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/memory/bt1-l2-ctl.c", i32 320, i32 1}
!2 = !{ptr @__exitcall_l2_ctl_driver_exit, !1, !"__exitcall_l2_ctl_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author205, !4, !"__UNIQUE_ID_author205", i1 false, i1 false}
!4 = !{!"../drivers/memory/bt1-l2-ctl.c", i32 322, i32 1}
!5 = !{ptr @__UNIQUE_ID_description206, !6, !"__UNIQUE_ID_description206", i1 false, i1 false}
!6 = !{!"../drivers/memory/bt1-l2-ctl.c", i32 323, i32 1}
!7 = !{ptr @__UNIQUE_ID_file207, !8, !"__UNIQUE_ID_file207", i1 false, i1 false}
!8 = !{!"../drivers/memory/bt1-l2-ctl.c", i32 324, i32 1}
!9 = !{ptr @__UNIQUE_ID_license208, !8, !"__UNIQUE_ID_license208", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/memory/bt1-l2-ctl.c", i32 316, i32 11}
!12 = !{ptr @l2_ctl_driver, !13, !"l2_ctl_driver", i1 false, i1 false}
!13 = !{!"../drivers/memory/bt1-l2-ctl.c", i32 313, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/memory/bt1-l2-ctl.c", i32 160, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @l2_ctl_create_data._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @l2_ctl_create_data._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/memory/bt1-l2-ctl.c", i32 174, i32 3}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @l2_ctl_find_sys_regs._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @l2_ctl_find_sys_regs._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/memory/bt1-l2-ctl.c", i32 200, i32 50}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/memory/bt1-l2-ctl.c", i32 204, i32 51}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/memory/bt1-l2-ctl.c", i32 209, i32 6}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/memory/bt1-l2-ctl.c", i32 190, i32 4}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @l2_ctl_of_parse_property._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @l2_ctl_of_parse_property._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/memory/bt1-l2-ctl.c", i32 272, i32 3}
!40 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @l2_ctl_init_sysfs._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @l2_ctl_init_sysfs._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/memory/bt1-l2-ctl.c", i32 278, i32 3}
!45 = !{ptr @l2_ctl_init_sysfs._entry.15, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @l2_ctl_init_sysfs._entry_ptr.17, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @l2_ctl_sysfs_groups, !48, !"l2_ctl_sysfs_groups", i1 false, i1 false}
!48 = !{!"../drivers/memory/bt1-l2-ctl.c", i32 257, i32 1}
!49 = !{ptr @l2_ctl_sysfs_group, !48, !"l2_ctl_sysfs_group", i1 false, i1 false}
!50 = !{ptr @l2_ctl_sysfs_attrs, !51, !"l2_ctl_sysfs_attrs", i1 false, i1 false}
!51 = !{!"../drivers/memory/bt1-l2-ctl.c", i32 251, i32 26}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/memory/bt1-l2-ctl.c", i32 247, i32 8}
!54 = !{ptr @l2_ctl_attr_l2_ws_latency, !53, !"l2_ctl_attr_l2_ws_latency", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/memory/bt1-l2-ctl.c", i32 225, i32 35}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/memory/bt1-l2-ctl.c", i32 248, i32 8}
!59 = !{ptr @l2_ctl_attr_l2_tag_latency, !58, !"l2_ctl_attr_l2_tag_latency", i1 false, i1 false}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/memory/bt1-l2-ctl.c", i32 249, i32 8}
!62 = !{ptr @l2_ctl_attr_l2_data_latency, !61, !"l2_ctl_attr_l2_data_latency", i1 false, i1 false}
!63 = !{ptr @l2_ctl_of_match, !64, !"l2_ctl_of_match", i1 false, i1 false}
!64 = !{!"../drivers/memory/bt1-l2-ctl.c", i32 307, i32 34}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"auto-init"}
