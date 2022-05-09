; ModuleID = '/llk/IR_all_yes/drivers/hwtracing/coresight/coresight-catu.c_pt.bc'
source_filename = "../drivers/hwtracing/coresight/coresight-catu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amba_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amba_id = type { i32, i32, ptr }
%struct.coresight_dev_list = type { i32, ptr, ptr }
%struct.coresight_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.coresight_ops_helper = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.etr_buf_operations = type { ptr, ptr, ptr, ptr }
%struct.coresight_desc = type { i32, %union.coresight_dev_subtype, ptr, ptr, ptr, ptr, ptr, %struct.csdev_access }
%union.coresight_dev_subtype = type { %struct.anon.104 }
%struct.anon.104 = type { i32, i32 }
%struct.csdev_access = type { i8, %union.anon.105 }
%union.anon.105 = type { %struct.anon.106 }
%struct.anon.106 = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.amba_device = type { %struct.device, %struct.resource, ptr, %struct.device_dma_parameters, i32, i32, %struct.amba_cs_uci_id, [9 x i32], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.amba_cs_uci_id = type { i32, i32, i32, ptr }
%struct.catu_drvdata = type { ptr, ptr, i32 }
%struct.coresight_device = type { ptr, i32, %union.coresight_dev_subtype, ptr, %struct.csdev_access, %struct.device, ptr, i8, i8, i8, ptr, ptr, ptr, i32, i8, i8, %struct.list_head, %struct.list_head, %struct.spinlock, ptr }
%struct.etr_buf = type { %struct.refcount_struct, i32, i8, i32, i32, i32, i64, ptr, ptr }
%struct.catu_etr_buf = type { ptr, i32 }
%struct.tmc_sg_table = type { ptr, ptr, ptr, i32, i32, %struct.tmc_pages, %struct.tmc_pages }
%struct.tmc_pages = type { i32, ptr, ptr }

@catu_driver = internal global { %struct.amba_driver, [36 x i8] } { %struct.amba_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @catu_probe, ptr @catu_remove, ptr null, ptr @catu_ids }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_coresight_catu__302_616_catu_init6 = internal global ptr @catu_init, section ".initcall6.init", align 4
@__exitcall_catu_exit = internal global ptr @catu_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author303 = internal constant [64 x i8] c"coresight_catu.author=Suzuki K Poulose <suzuki.poulose@arm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [80 x i8] c"coresight_catu.description=Arm CoreSight Address Translation Unit (CATU) Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [63 x i8] c"coresight_catu.file=drivers/hwtracing/coresight/coresight-catu\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [30 x i8] c"coresight_catu.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"coresight-catu\00", [17 x i8] zeroinitializer }, align 32
@catu_ids = internal global { [2 x %struct.amba_id], [40 x i8] } { [2 x %struct.amba_id] [%struct.amba_id { i32 768494, i32 1048575, ptr null }, %struct.amba_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@catu_devs = internal global { %struct.coresight_dev_list, [20 x i8] } { %struct.coresight_dev_list { i32 0, ptr @.str.1, ptr null }, [20 x i8] zeroinitializer }, align 32
@catu_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @catu_mgmt_group, ptr null], [24 x i8] zeroinitializer }, align 32
@catu_ops = internal constant { %struct.coresight_ops, [44 x i8] } { %struct.coresight_ops { ptr null, ptr null, ptr null, ptr @catu_helper_ops, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"catu\00", [27 x i8] zeroinitializer }, align 32
@catu_mgmt_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.2, ptr null, ptr null, ptr @catu_mgmt_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mgmt\00", [27 x i8] zeroinitializer }, align 32
@catu_mgmt_attrs = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @dev_attr_devid, ptr @dev_attr_control, ptr @dev_attr_status, ptr @dev_attr_mode, ptr @dev_attr_axictrl, ptr @dev_attr_irqen, ptr @dev_attr_sladdr, ptr @dev_attr_inaddr, ptr null], [60 x i8] zeroinitializer }, align 32
@dev_attr_devid = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @devid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_control = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @control_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_status = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @status_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mode_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_axictrl = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @axictrl_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_irqen = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @irqen_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sladdr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sladdr_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_inaddr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @inaddr_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"devid\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%llx\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"control\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"axictrl\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"irqen\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sladdr\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"inaddr\00", [25 x i8] zeroinitializer }, align 32
@catu_helper_ops = internal constant { %struct.coresight_ops_helper, [24 x i8] } { %struct.coresight_ops_helper { ptr @catu_enable, ptr @catu_disable }, [24 x i8] zeroinitializer }, align 32
@catu_enable_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.14, i32 418, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Timeout while waiting for READY\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"catu_enable_hw\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/hwtracing/coresight/coresight-catu.c\00", [51 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@catu_enable_hw._entry_ptr = internal global ptr @catu_enable_hw._entry, section ".printk_index", align 4
@catu_enable_hw._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.14, i32 422, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CATU is already enabled\0A\00", [39 x i8] zeroinitializer }, align 32
@catu_enable_hw._entry_ptr.19 = internal global ptr @catu_enable_hw._entry.17, section ".printk_index", align 4
@catu_enable_hw.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.13, ptr @.str.14, ptr @.str.21, i8 0, i8 112, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"coresight_catu\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Enabled in %s mode\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Pass through\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Translate\00", [22 x i8] zeroinitializer }, align 32
@catu_disable_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.24, ptr @.str.14, i32 475, ptr @.str.25, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"catu_disable_hw\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@catu_disable_hw._entry_ptr = internal global ptr @catu_disable_hw._entry, section ".printk_index", align 4
@catu_disable_hw.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.24, ptr @.str.14, ptr @.str.26, i8 0, i8 119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Disabled\0A\00", [22 x i8] zeroinitializer }, align 32
@catu_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.14, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016Error registering catu driver\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"catu_init\00", [22 x i8] zeroinitializer }, align 32
@catu_init._entry_ptr = internal global ptr @catu_init._entry, section ".printk_index", align 4
@etr_catu_buf_ops = internal constant { %struct.etr_buf_operations, [16 x i8] } { %struct.etr_buf_operations { ptr @catu_alloc_etr_buf, ptr @catu_sync_etr_buf, ptr @catu_get_data_etr_buf, ptr @catu_free_etr_buf }, [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@catu_init_sg_table.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.29, ptr @.str.14, ptr @.str.30, i8 0, i8 69, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"catu_init_sg_table\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Setup table %p, size %ldKB, %d table pages\0A\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 2, i64 3, i64 4, i64 5, i64 6, i64 8]
@___asan_gen_.31 = private unnamed_addr constant [12 x i8] c"catu_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 588, i32 27 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 590, i32 13 }
@___asan_gen_.37 = private unnamed_addr constant [9 x i8] c"catu_ids\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 581, i32 23 }
@___asan_gen_.40 = private unnamed_addr constant [10 x i8] c"catu_devs\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [12 x i8] c"catu_groups\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 396, i32 38 }
@___asan_gen_.46 = private unnamed_addr constant [9 x i8] c"catu_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 499, i32 35 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 31, i32 1 }
@___asan_gen_.52 = private unnamed_addr constant [16 x i8] c"catu_mgmt_group\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 391, i32 37 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 393, i32 10 }
@___asan_gen_.58 = private unnamed_addr constant [16 x i8] c"catu_mgmt_attrs\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 379, i32 26 }
@___asan_gen_.61 = private unnamed_addr constant [15 x i8] c"dev_attr_devid\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"dev_attr_control\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [16 x i8] c"dev_attr_status\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [14 x i8] c"dev_attr_mode\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"dev_attr_axictrl\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [15 x i8] c"dev_attr_irqen\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [16 x i8] c"dev_attr_sladdr\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [16 x i8] c"dev_attr_inaddr\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 368, i32 1 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 369, i32 1 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 370, i32 1 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 371, i32 1 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 372, i32 1 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 373, i32 1 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 374, i32 1 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 376, i32 1 }
@___asan_gen_.112 = private unnamed_addr constant [16 x i8] c"catu_helper_ops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 494, i32 42 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 418, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 422, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 448, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 475, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 479, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 605, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [17 x i8] c"etr_catu_buf_ops\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 361, i32 40 }
@___asan_gen_.178 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.179 = private constant [48 x i8] c"../drivers/hwtracing/coresight/coresight-catu.c\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 277, i32 2 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_catu_exit, ptr @__initcall__kmod_coresight_catu__302_616_catu_init6, ptr @catu_disable_hw._entry, ptr @catu_disable_hw._entry_ptr, ptr @catu_enable_hw._entry, ptr @catu_enable_hw._entry.17, ptr @catu_enable_hw._entry_ptr, ptr @catu_enable_hw._entry_ptr.19, ptr @catu_exit, ptr @catu_init._entry, ptr @catu_init._entry_ptr, ptr @catu_driver, ptr @.str, ptr @catu_ids, ptr @catu_devs, ptr @catu_groups, ptr @catu_ops, ptr @.str.1, ptr @catu_mgmt_group, ptr @.str.2, ptr @catu_mgmt_attrs, ptr @dev_attr_devid, ptr @dev_attr_control, ptr @dev_attr_status, ptr @dev_attr_mode, ptr @dev_attr_axictrl, ptr @dev_attr_irqen, ptr @dev_attr_sladdr, ptr @dev_attr_inaddr, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @catu_helper_ops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @etr_catu_buf_ops, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @catu_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @catu_ids to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @catu_devs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @catu_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @catu_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @catu_mgmt_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @catu_mgmt_attrs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_devid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_control to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_status to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_axictrl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_irqen to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sladdr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_inaddr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @catu_helper_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @catu_enable_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @catu_enable_hw._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @catu_disable_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @catu_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etr_catu_buf_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @catu_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @tmc_etr_remove_catu_ops() #7
  tail call void @amba_driver_unregister(ptr noundef nonnull @catu_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tmc_etr_remove_catu_ops() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @catu_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amba_driver_register(ptr noundef nonnull @catu_driver) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @tmc_etr_set_catu_ops(ptr noundef nonnull @etr_catu_buf_ops) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @catu_probe(ptr noundef %adev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %catu_desc = alloca %struct.coresight_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %catu_desc) #7
  %0 = getelementptr inbounds i8, ptr %catu_desc, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 36)
  %call = tail call ptr @coresight_alloc_device_name(ptr noundef nonnull @catu_devs, ptr noundef %adev) #7
  %name = getelementptr inbounds %struct.coresight_desc, ptr %catu_desc, i32 0, i32 6
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %name, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %adev, i32 noundef 12, i32 noundef 3520) #7
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %driver_data.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i, align 4
  %res = getelementptr inbounds %struct.amba_device, ptr %adev, i32 0, i32 1
  %call7 = tail call ptr @devm_ioremap_resource(ptr noundef %adev, ptr noundef %res) #7
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %add.ptr = getelementptr i8, ptr %call7, i32 4040
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !103
  %6 = lshr i32 %5, 24
  %and = and i32 %6, 63
  %7 = add nsw i32 %and, -32
  %8 = tail call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 30)
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %sw.default [
    i32 0, label %if.end11.cond.end_crit_edge
    i32 2, label %if.end11.cond.end_crit_edge70
    i32 3, label %if.end11.cond.end_crit_edge71
    i32 4, label %if.end11.cond.end_crit_edge72
    i32 5, label %if.end11.cond.end_crit_edge73
    i32 6, label %if.end11.cond.end_crit_edge74
    i32 8, label %if.end11.cond.end_crit_edge75
  ]

if.end11.cond.end_crit_edge75:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

if.end11.cond.end_crit_edge74:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

if.end11.cond.end_crit_edge73:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

if.end11.cond.end_crit_edge72:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

if.end11.cond.end_crit_edge71:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

if.end11.cond.end_crit_edge70:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

if.end11.cond.end_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

sw.default:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.end:                                         ; preds = %sw.default, %if.end11.cond.end_crit_edge, %if.end11.cond.end_crit_edge70, %if.end11.cond.end_crit_edge71, %if.end11.cond.end_crit_edge72, %if.end11.cond.end_crit_edge73, %if.end11.cond.end_crit_edge74, %if.end11.cond.end_crit_edge75
  %dma_mask.0 = phi i32 [ 40, %sw.default ], [ %and, %if.end11.cond.end_crit_edge ], [ %and, %if.end11.cond.end_crit_edge70 ], [ %and, %if.end11.cond.end_crit_edge71 ], [ %and, %if.end11.cond.end_crit_edge72 ], [ %and, %if.end11.cond.end_crit_edge73 ], [ %and, %if.end11.cond.end_crit_edge74 ], [ %and, %if.end11.cond.end_crit_edge75 ]
  %sh_prom = zext i32 %dma_mask.0 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  %call.i65 = tail call i32 @dma_set_mask(ptr noundef %adev, i64 noundef %sub) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %cmp.i66 = icmp eq i32 %call.i65, 0
  br i1 %cmp.i66, label %if.end16, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %cond.end
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %adev, i64 noundef %sub) #7
  %call17 = tail call ptr @coresight_get_platform_data(ptr noundef %adev) #7
  %cmp.i67 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i67, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %call17 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %platform_data = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 7
  %11 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call17, ptr %platform_data, align 8
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7, ptr %call.i, align 4
  %access = getelementptr inbounds %struct.coresight_desc, ptr %catu_desc, i32 0, i32 7
  %13 = ptrtoint ptr %access to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %access, align 4
  %.compoundliteral.sroa.240.0.access.sroa_idx = getelementptr inbounds %struct.coresight_desc, ptr %catu_desc, i32 0, i32 7, i32 1
  %14 = ptrtoint ptr %.compoundliteral.sroa.240.0.access.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7, ptr %.compoundliteral.sroa.240.0.access.sroa_idx, align 4
  %pdata23 = getelementptr inbounds %struct.coresight_desc, ptr %catu_desc, i32 0, i32 3
  %15 = ptrtoint ptr %pdata23 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call17, ptr %pdata23, align 4
  %dev24 = getelementptr inbounds %struct.coresight_desc, ptr %catu_desc, i32 0, i32 4
  %16 = ptrtoint ptr %dev24 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %adev, ptr %dev24, align 4
  %groups = getelementptr inbounds %struct.coresight_desc, ptr %catu_desc, i32 0, i32 5
  %17 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @catu_groups, ptr %groups, align 4
  %18 = ptrtoint ptr %catu_desc to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 5, ptr %catu_desc, align 4
  %subtype = getelementptr inbounds %struct.coresight_desc, ptr %catu_desc, i32 0, i32 1
  %19 = ptrtoint ptr %subtype to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %subtype, align 4
  %ops = getelementptr inbounds %struct.coresight_desc, ptr %catu_desc, i32 0, i32 2
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @catu_ops, ptr %ops, align 4
  %call25 = call ptr @coresight_register(ptr noundef nonnull %catu_desc) #7
  %csdev = getelementptr inbounds %struct.catu_drvdata, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %csdev to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call25, ptr %csdev, align 4
  %cmp.i68 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i68, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %call25 to i32
  br label %cleanup

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %call.i69 = call i32 @__pm_runtime_idle(ptr noundef %adev, i32 noundef 5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then28, %if.then19, %cond.end.cleanup_crit_edge, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %4, %if.then9 ], [ %10, %if.then19 ], [ %22, %if.then28 ], [ 0, %if.else ], [ -12, %if.end.cleanup_crit_edge ], [ %call.i65, %cond.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %catu_desc) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @catu_remove(ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %csdev = getelementptr inbounds %struct.catu_drvdata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %csdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csdev, align 4
  tail call void @coresight_unregister(ptr noundef %3) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @coresight_alloc_device_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @coresight_get_platform_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @coresight_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devid_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4040
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !103
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  %conv.i = zext i32 %7 to i64
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #7
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.4, i64 noundef %conv.i) #7
  ret i32 %call8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @control_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !103
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  %conv.i = zext i32 %7 to i64
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #7
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.4, i64 noundef %conv.i) #7
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @status_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 256
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !103
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  %conv.i = zext i32 %7 to i64
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #7
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.4, i64 noundef %conv.i) #7
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mode_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !103
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  %conv.i = zext i32 %7 to i64
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #7
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.4, i64 noundef %conv.i) #7
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axictrl_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !103
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  %conv.i = zext i32 %7 to i64
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #7
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.4, i64 noundef %conv.i) #7
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irqen_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !103
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  %conv.i = zext i32 %7 to i64
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #7
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.4, i64 noundef %conv.i) #7
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sladdr_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 32
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !103
  %add.ptr3.i = getelementptr i8, ptr %5, i32 36
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #7, !srcloc !103
  %8 = zext i32 %7 to i64
  %9 = zext i32 %6 to i64
  %10 = shl nuw i64 %9, 32
  %11 = or i64 %10, %8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11)
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %14, i32 noundef 4) #7
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.4, i64 noundef %12) #7
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inaddr_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 40
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !103
  %add.ptr3.i = getelementptr i8, ptr %5, i32 44
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #7, !srcloc !103
  %8 = zext i32 %7 to i64
  %9 = zext i32 %6 to i64
  %10 = shl nuw i64 %9, 32
  %11 = or i64 %10, %8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11)
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %14, i32 noundef 4) #7
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.4, i64 noundef %12) #7
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @catu_enable(ptr nocapture noundef readonly %csdev, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1439608005) #7, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  tail call void @arm_heavy_mb() #7
  %call1 = tail call fastcc i32 @catu_enable_hw(ptr noundef %3, ptr noundef %data)
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  tail call void @arm_heavy_mb() #7
  %add.ptr.i5 = getelementptr i8, ptr %7, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 0) #7, !srcloc !104
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @catu_disable(ptr nocapture noundef readonly %csdev, ptr nocapture noundef readnone %__unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1439608005) #7, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  tail call void @arm_heavy_mb() #7
  %csdev.i = getelementptr inbounds %struct.catu_drvdata, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %csdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %csdev.i, align 4
  %dev1.i = getelementptr inbounds %struct.coresight_device, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #7, !srcloc !104
  tail call void @coresight_disclaim_device_unlocked(ptr noundef %7) #7
  %10 = ptrtoint ptr %csdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %csdev.i, align 4
  %access.i.i = getelementptr inbounds %struct.coresight_device, ptr %11, i32 0, i32 4
  %call.i.i = tail call i32 @coresight_timeout(ptr noundef %access.i.i, i32 noundef 256, i32 noundef 8, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %entry.do.body4.i_crit_edge, label %do.end.i

entry.do.body4.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body4.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i, ptr noundef nonnull @.str.12) #10
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.end.i, %entry.do.body4.i_crit_edge
  %rc.0.i = phi i32 [ -11, %do.end.i ], [ 0, %entry.do.body4.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @catu_disable_hw.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@catu_disable, %if.then9.i)) #7
          to label %catu_disable_hw.exit [label %if.then9.i], !srcloc !107

if.then9.i:                                       ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @catu_disable_hw.__UNIQUE_ID_ddebug301, ptr noundef %dev1.i, ptr noundef nonnull @.str.26) #7
  br label %catu_disable_hw.exit

catu_disable_hw.exit:                             ; preds = %if.then9.i, %do.body4.i
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  tail call void @arm_heavy_mb() #7
  %add.ptr.i5 = getelementptr i8, ptr %13, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 0) #7, !srcloc !104
  ret i32 %rc.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @catu_enable_hw(ptr nocapture noundef readonly %drvdata, ptr noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %csdev = getelementptr inbounds %struct.catu_drvdata, ptr %drvdata, i32 0, i32 1
  %0 = ptrtoint ptr %csdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csdev, align 4
  %dev1 = getelementptr inbounds %struct.coresight_device, ptr %1, i32 0, i32 5
  %access.i = getelementptr inbounds %struct.coresight_device, ptr %1, i32 0, i32 4
  %call.i = tail call i32 @coresight_timeout(ptr noundef %access.i, i32 noundef 256, i32 noundef 8, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.12) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !103
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end10, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.18) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @coresight_claim_device_unlocked(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %or = or i32 %5, 1
  %tobool15.not = icmp eq ptr %data, null
  br i1 %tobool15.not, label %if.end14.if.else_crit_edge, label %land.lhs.true

if.end14.if.else_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %if.end14
  %mode16 = getelementptr inbounds %struct.etr_buf, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %mode16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  br i1 %cmp, label %if.then17, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %private = getelementptr inbounds %struct.etr_buf, ptr %data, i32 0, i32 8
  %8 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private, align 4
  %10 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %drvdata, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1912602624) #7, !srcloc !104
  %sladdr = getelementptr inbounds %struct.catu_etr_buf, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %sladdr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sladdr, align 4
  %14 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %drvdata, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  %add.ptr.i.i54 = getelementptr i8, ptr %15, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i54, i32 %16) #7, !srcloc !104
  %add.ptr3.i.i = getelementptr i8, ptr %15, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 0) #7, !srcloc !104
  %17 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %drvdata, align 4
  %add.ptr.i.i55 = getelementptr i8, ptr %18, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i55, i32 4096) #7, !srcloc !104
  %add.ptr3.i.i56 = getelementptr i8, ptr %18, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i56, i32 0) #7, !srcloc !104
  br label %if.end18

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end14.if.else_crit_edge
  %19 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %drvdata, align 4
  %add.ptr.i.i57 = getelementptr i8, ptr %20, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i57, i32 0) #7, !srcloc !104
  %add.ptr3.i.i58 = getelementptr i8, ptr %20, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i58, i32 0) #7, !srcloc !104
  %21 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %drvdata, align 4
  %add.ptr.i.i59 = getelementptr i8, ptr %22, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i59, i32 0) #7, !srcloc !104
  %add.ptr3.i.i60 = getelementptr i8, ptr %22, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i60, i32 0) #7, !srcloc !104
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then17
  %cmp25 = phi ptr [ @.str.22, %if.else ], [ @.str.23, %if.then17 ]
  %mode.0 = phi i32 [ 0, %if.else ], [ 16777216, %if.then17 ]
  %23 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %drvdata, align 4
  %add.ptr.i.i61 = getelementptr i8, ptr %24, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i61, i32 0) #7, !srcloc !104
  %25 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %drvdata, align 4
  %add.ptr.i.i62 = getelementptr i8, ptr %26, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i62, i32 %mode.0) #7, !srcloc !104
  %27 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %drvdata, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %29) #7, !srcloc !104
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @catu_enable_hw.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@catu_enable_hw, %if.then24)) #7
          to label %cleanup [label %if.then24], !srcloc !107

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @catu_enable_hw.__UNIQUE_ID_ddebug300, ptr noundef %dev1, ptr noundef nonnull @.str.21, ptr noundef nonnull %cmp25) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end18, %if.end10.cleanup_crit_edge, %do.end9
  %retval.0 = phi i32 [ -16, %do.end9 ], [ %call11, %if.end10.cleanup_crit_edge ], [ 0, %if.then24 ], [ 0, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coresight_claim_device_unlocked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coresight_timeout(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @coresight_disclaim_device_unlocked(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @coresight_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tmc_etr_set_catu_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @catu_alloc_etr_buf(ptr noundef %tmc_drvdata, ptr nocapture noundef %etr_buf, i32 noundef %node, ptr noundef %pages) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @tmc_etr_get_catu_device(ptr noundef %tmc_drvdata) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 8) #11
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.coresight_device, ptr %call, i32 0, i32 5
  %size = getelementptr inbounds %struct.etr_buf, ptr %etr_buf, i32 0, i32 3
  %1 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %size, align 4
  %call5 = tail call fastcc ptr @catu_init_sg_table(ptr noundef %dev, i32 noundef %node, i32 noundef %2, ptr noundef %pages)
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %3 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %mode = getelementptr inbounds %struct.etr_buf, ptr %etr_buf, i32 0, i32 1
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %mode, align 4
  %private = getelementptr inbounds %struct.etr_buf, ptr %etr_buf, i32 0, i32 8
  %5 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %private, align 4
  %hwaddr = getelementptr inbounds %struct.etr_buf, ptr %etr_buf, i32 0, i32 4
  %6 = ptrtoint ptr %hwaddr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1048576, ptr %hwaddr, align 8
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call5, ptr %call7.i.i, align 8
  %table_daddr = getelementptr inbounds %struct.tmc_sg_table, ptr %call5, i32 0, i32 3
  %8 = ptrtoint ptr %table_daddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %table_daddr, align 4
  %sladdr = getelementptr inbounds %struct.catu_etr_buf, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %sladdr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %sladdr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then7 ], [ 0, %if.end9 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @catu_sync_etr_buf(ptr nocapture noundef %etr_buf, i64 noundef %rrp, i64 noundef %rwp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.etr_buf, ptr %etr_buf, i32 0, i32 8
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %hwaddr = getelementptr inbounds %struct.etr_buf, ptr %etr_buf, i32 0, i32 4
  %4 = ptrtoint ptr %hwaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwaddr, align 8
  %conv = zext i32 %5 to i64
  %sub = sub i64 %rrp, %conv
  %full = getelementptr inbounds %struct.etr_buf, ptr %etr_buf, i32 0, i32 2
  %6 = ptrtoint ptr %full to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %full, align 8, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %sub4 = sub i64 %rwp, %conv
  %sub5 = sub i64 %sub4, %sub
  %len = getelementptr inbounds %struct.etr_buf, ptr %etr_buf, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %sub5, ptr %len, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub4, i64 %sub)
  %cmp = icmp ult i64 %sub4, %sub
  br i1 %cmp, label %if.then7, label %if.then.if.end13_crit_edge

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %size = getelementptr inbounds %struct.etr_buf, ptr %etr_buf, i32 0, i32 3
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 4
  %conv8 = sext i32 %10 to i64
  %add = add i64 %sub5, %conv8
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %add, ptr %len, align 8
  br label %if.end13

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %size10 = getelementptr inbounds %struct.etr_buf, ptr %etr_buf, i32 0, i32 3
  %12 = ptrtoint ptr %size10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size10, align 4
  %conv11 = sext i32 %13 to i64
  %len12 = getelementptr inbounds %struct.etr_buf, ptr %etr_buf, i32 0, i32 6
  %14 = ptrtoint ptr %len12 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv11, ptr %len12, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then7, %if.then.if.end13_crit_edge
  %conv14 = trunc i64 %sub to i32
  %offset = getelementptr inbounds %struct.etr_buf, ptr %etr_buf, i32 0, i32 5
  %15 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv14, ptr %offset, align 4
  %len15 = getelementptr inbounds %struct.etr_buf, ptr %etr_buf, i32 0, i32 6
  %16 = ptrtoint ptr %len15 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %len15, align 8
  tail call void @tmc_sg_table_sync_data_range(ptr noundef %3, i64 noundef %sub, i64 noundef %17) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @catu_get_data_etr_buf(ptr nocapture noundef readonly %etr_buf, i64 noundef %offset, i32 noundef %len, ptr noundef %bufpp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.etr_buf, ptr %etr_buf, i32 0, i32 8
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @tmc_sg_table_get_data(ptr noundef %3, i64 noundef %offset, i32 noundef %len, ptr noundef %bufpp) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @catu_free_etr_buf(ptr noundef readonly %etr_buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %etr_buf, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %mode = getelementptr inbounds %struct.etr_buf, ptr %etr_buf, i32 0, i32 1
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %lor.lhs.false1, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %private = getelementptr inbounds %struct.etr_buf, ptr %etr_buf, i32 0, i32 8
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false1.cleanup_crit_edge, label %if.end

lor.lhs.false1.cleanup_crit_edge:                 ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @tmc_free_sg_table(ptr noundef %5) #7
  tail call void @kfree(ptr noundef nonnull %3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false1.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tmc_etr_get_catu_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @catu_init_sg_table(ptr noundef %catu_dev, i32 noundef %node, i32 noundef %size, ptr noundef %pages) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %size, 1048575
  %div = sdiv i32 %sub, 1048576
  %shr = ashr i32 %size, 12
  %call = tail call ptr @tmc_alloc_sg_table(ptr noundef %catu_dev, i32 noundef %node, i32 noundef %div, i32 noundef %shr, ptr noundef %pages) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %data_pages.i.i = getelementptr inbounds %struct.tmc_sg_table, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %data_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_pages.i.i, align 4
  %shl.i.i = shl i32 %1, 12
  %daddrs.i.i = getelementptr inbounds %struct.tmc_sg_table, ptr %call, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %daddrs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %daddrs.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %pages.i.i = getelementptr inbounds %struct.tmc_sg_table, ptr %call, i32 0, i32 5, i32 2
  %6 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pages.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call4.i.i = tail call ptr @page_address(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i.i)
  %cmp67.not.i = icmp eq i32 %shl.i.i, 0
  br i1 %cmp67.not.i, label %if.end.catu_populate_table.exit_crit_edge, label %while.body.lr.ph.i

if.end.catu_populate_table.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %catu_populate_table.exit

while.body.lr.ph.i:                               ; preds = %if.end
  %daddrs.i = getelementptr inbounds %struct.tmc_sg_table, ptr %call, i32 0, i32 6, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end17.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %next_table.073.i = phi ptr [ inttoptr (i32 -1 to ptr), %while.body.lr.ph.i ], [ %next_table.1.i, %if.end17.i.while.body.i_crit_edge ]
  %table_ptr.072.i = phi ptr [ %call4.i.i, %while.body.lr.ph.i ], [ %table_ptr.1.i, %if.end17.i.while.body.i_crit_edge ]
  %prev_taddr.071.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %prev_taddr.1.i, %if.end17.i.while.body.i_crit_edge ]
  %offset.070.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %offset.1.lcssa.i, %if.end17.i.while.body.i_crit_edge ]
  %sys_pidx.069.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %sys_pidx.1.lcssa.i, %if.end17.i.while.body.i_crit_edge ]
  %cur_taddr.068.i = phi i32 [ %5, %while.body.lr.ph.i ], [ %cur_taddr.1.i, %if.end17.i.while.body.i_crit_edge ]
  %add.i = add i32 %offset.070.i, 1048576
  %10 = tail call i32 @llvm.umin.i32(i32 %add.i, i32 %shl.i.i) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.070.i, i32 %10)
  %cmp461.i = icmp ult i32 %offset.070.i, %10
  br i1 %cmp461.i, label %while.body.i.for.body.i_crit_edge, label %while.body.i.for.end.i_crit_edge

while.body.i.for.end.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

while.body.i.for.body.i_crit_edge:                ; preds = %while.body.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %while.body.i.for.body.i_crit_edge
  %offset.164.i = phi i32 [ %add11.i, %for.body.i.for.body.i_crit_edge ], [ %offset.070.i, %while.body.i.for.body.i_crit_edge ]
  %sys_pidx.163.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ %sys_pidx.069.i, %while.body.i.for.body.i_crit_edge ]
  %i.062.i = phi i32 [ %inc10.i, %for.body.i.for.body.i_crit_edge ], [ 0, %while.body.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %daddrs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %daddrs.i, align 4
  %arrayidx.i = getelementptr i32, ptr %12, i32 %sys_pidx.163.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  %15 = and i32 %14, -4096
  %16 = or i32 %15, 1
  %narrow.i.i = select i1 %tobool.not.i.i, i32 0, i32 %16
  %cond.i.i = zext i32 %narrow.i.i to i64
  %arrayidx7.i = getelementptr i64, ptr %table_ptr.072.i, i32 %i.062.i
  %17 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %cond.i.i, ptr %arrayidx7.i, align 8
  %inc.i = add i32 %sys_pidx.163.i, 1
  %inc10.i = add nuw nsw i32 %i.062.i, 1
  %add11.i = add nuw i32 %offset.164.i, 4096
  %cmp4.i = icmp ult i32 %add11.i, %10
  br i1 %cmp4.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %while.body.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %while.body.i.for.end.i_crit_edge ], [ %inc10.i, %for.body.i.for.end.i_crit_edge ]
  %sys_pidx.1.lcssa.i = phi i32 [ %sys_pidx.069.i, %while.body.i.for.end.i_crit_edge ], [ %inc.i, %for.body.i.for.end.i_crit_edge ]
  %offset.1.lcssa.i = phi i32 [ %offset.070.i, %while.body.i.for.end.i_crit_edge ], [ %add11.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.1.lcssa.i, i32 %shl.i.i)
  %cmp12.i = icmp eq i32 %offset.1.lcssa.i, %shl.i.i
  br i1 %cmp12.i, label %if.then13.i, label %if.else.i

if.then13.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx14.i = getelementptr i64, ptr %table_ptr.072.i, i32 %i.0.lcssa.i
  %.neg.i = mul i32 %i.0.lcssa.i, -8
  %mul15.i = add i32 %.neg.i, 2048
  %18 = call ptr @memset(ptr %arrayidx14.i, i32 0, i32 %mul15.i)
  br label %if.end17.i

if.else.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %data_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data_pages.i.i, align 4
  %shl.i.i50.i = shl i32 %20, 12
  %rem.i.i = urem i32 %offset.1.lcssa.i, %shl.i.i50.i
  %shr.i.i = lshr i32 %rem.i.i, 20
  %21 = ptrtoint ptr %daddrs.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %daddrs.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %22, i32 %shr.i.i
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i, align 4
  %25 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pages.i.i, align 4
  %arrayidx3.i.i = getelementptr ptr, ptr %26, i32 %shr.i.i
  %27 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx3.i.i, align 4
  %call4.i53.i = tail call ptr @page_address(ptr noundef %28) #7
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else.i, %if.then13.i
  %next_taddr.0.i = phi i32 [ 0, %if.then13.i ], [ %24, %if.else.i ]
  %next_table.1.i = phi ptr [ %next_table.073.i, %if.then13.i ], [ %call4.i53.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prev_taddr.071.i)
  %tobool.not.i54.i = icmp eq i32 %prev_taddr.071.i, 0
  %29 = and i32 %prev_taddr.071.i, -4096
  %30 = or i32 %29, 1
  %narrow.i55.i = select i1 %tobool.not.i54.i, i32 0, i32 %30
  %cond.i56.i = zext i32 %narrow.i55.i to i64
  %arrayidx19.i = getelementptr i64, ptr %table_ptr.072.i, i32 510
  %31 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %cond.i56.i, ptr %arrayidx19.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %next_taddr.0.i)
  %tobool.not.i57.i = icmp eq i32 %next_taddr.0.i, 0
  %32 = and i32 %next_taddr.0.i, -4096
  %33 = or i32 %32, 1
  %narrow.i58.i = select i1 %tobool.not.i57.i, i32 0, i32 %33
  %cond.i59.i = zext i32 %narrow.i58.i to i64
  %arrayidx21.i = getelementptr i64, ptr %table_ptr.072.i, i32 511
  %34 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %cond.i59.i, ptr %arrayidx21.i, align 8
  %cur_taddr.1.i = select i1 %tobool.not.i57.i, i32 %cur_taddr.068.i, i32 %next_taddr.0.i
  %prev_taddr.1.i = select i1 %tobool.not.i57.i, i32 %prev_taddr.071.i, i32 %cur_taddr.068.i
  %table_ptr.1.i = select i1 %tobool.not.i57.i, ptr %table_ptr.072.i, ptr %next_table.1.i
  %cmp.i19 = icmp ult i32 %offset.1.lcssa.i, %shl.i.i
  br i1 %cmp.i19, label %if.end17.i.while.body.i_crit_edge, label %if.end17.i.catu_populate_table.exit_crit_edge

if.end17.i.catu_populate_table.exit_crit_edge:    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %catu_populate_table.exit

if.end17.i.while.body.i_crit_edge:                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

catu_populate_table.exit:                         ; preds = %if.end17.i.catu_populate_table.exit_crit_edge, %if.end.catu_populate_table.exit_crit_edge
  tail call void @tmc_sg_table_sync_table(ptr noundef %call) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @catu_init_sg_table.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@catu_init_sg_table, %if.then6)) #7
          to label %cleanup [label %if.then6], !srcloc !107

if.then6:                                         ; preds = %catu_populate_table.exit
  call void @__sanitizer_cov_trace_pc() #9
  %shr7 = lshr i32 %size, 10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @catu_init_sg_table.__UNIQUE_ID_ddebug299, ptr noundef %catu_dev, ptr noundef nonnull @.str.30, ptr noundef %call, i32 noundef %shr7, i32 noundef %div) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %catu_populate_table.exit, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tmc_alloc_sg_table(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tmc_sg_table_sync_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tmc_sg_table_sync_data_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tmc_sg_table_get_data(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tmc_free_sg_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !20, !22, !24, !26, !28, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !55, !57, !58, !59, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !83, !85, !86, !87, !88, !90, !92, !93}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @__initcall__kmod_coresight_catu__302_616_catu_init6, !1, !"__initcall__kmod_coresight_catu__302_616_catu_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwtracing/coresight/coresight-catu.c", i32 616, i32 1}
!2 = !{ptr @__exitcall_catu_exit, !3, !"__exitcall_catu_exit", i1 false, i1 false}
!3 = !{!"../drivers/hwtracing/coresight/coresight-catu.c", i32 617, i32 1}
!4 = !{ptr @__UNIQUE_ID_author303, !5, !"__UNIQUE_ID_author303", i1 false, i1 false}
!5 = !{!"../drivers/hwtracing/coresight/coresight-catu.c", i32 619, i32 1}
!6 = !{ptr @__UNIQUE_ID_description304, !7, !"__UNIQUE_ID_description304", i1 false, i1 false}
!7 = !{!"../drivers/hwtracing/coresight/coresight-catu.c", i32 620, i32 1}
!8 = !{ptr @__UNIQUE_ID_file305, !9, !"__UNIQUE_ID_file305", i1 false, i1 false}
!9 = !{!"../drivers/hwtracing/coresight/coresight-catu.c", i32 621, i32 1}
!10 = !{ptr @__UNIQUE_ID_license306, !9, !"__UNIQUE_ID_license306", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/hwtracing/coresight/coresight-catu.c", i32 590, i32 13}
!13 = !{ptr @catu_driver, !14, !"catu_driver", i1 false, i1 false}
!14 = !{!"../drivers/hwtracing/coresight/coresight-catu.c", i32 588, i32 27}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/hwtracing/coresight/coresight-catu.c", i32 31, i32 1}
!17 = !{ptr @catu_devs, !16, !"catu_devs", i1 false, i1 false}
!18 = !{ptr @catu_groups, !19, !"catu_groups", i1 false, i1 false}
!19 = !{!"../drivers/hwtracing/coresight/coresight-catu.c", i32 396, i32 38}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/hwtracing/coresight/coresight-catu.c", i32 393, i32 10}
!22 = !{ptr @catu_mgmt_group, !23, !"catu_mgmt_group", i1 false, i1 false}
!23 = !{!"../drivers/hwtracing/coresight/coresight-catu.c", i32 391, i32 37}
!24 = !{ptr @catu_mgmt_attrs, !25, !"catu_mgmt_attrs", i1 false, i1 false}
!25 = !{!"../drivers/hwtracing/coresight/coresight-catu.c", i32 379, i32 26}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/hwtracing/coresight/coresight-catu.c", i32 368, i32 1}
!28 = !{ptr @dev_attr_devid, !27, !"dev_attr_devid", i1 false, i1 false}
!29 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/hwtracing/coresight/coresight-catu.c", i32 369, i32 1}
!32 = !{ptr @dev_attr_control, !31, !"dev_attr_control", i1 false, i1 false}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hwtracing/coresight/coresight-catu.c", i32 370, i32 1}
!35 = !{ptr @dev_attr_status, !34, !"dev_attr_status", i1 false, i1 false}
!36 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hwtracing/coresight/coresight-catu.c", i32 371, i32 1}
!38 = !{ptr @dev_attr_mode, !37, !"dev_attr_mode", i1 false, i1 false}
!39 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hwtracing/coresight/coresight-catu.c", i32 372, i32 1}
!41 = !{ptr @dev_attr_axictrl, !40, !"dev_attr_axictrl", i1 false, i1 false}
!42 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/hwtracing/coresight/coresight-catu.c", i32 373, i32 1}
!44 = !{ptr @dev_attr_irqen, !43, !"dev_attr_irqen", i1 false, i1 false}
!45 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hwtracing/coresight/coresight-catu.c", i32 374, i32 1}
!47 = !{ptr @dev_attr_sladdr, !46, !"dev_attr_sladdr", i1 false, i1 false}
!48 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hwtracing/coresight/coresight-catu.c", i32 376, i32 1}
!50 = !{ptr @dev_attr_inaddr, !49, !"dev_attr_inaddr", i1 false, i1 false}
!51 = !{ptr @catu_ops, !52, !"catu_ops", i1 false, i1 false}
!52 = !{!"../drivers/hwtracing/coresight/coresight-catu.c", i32 499, i32 35}
!53 = !{ptr @catu_helper_ops, !54, !"catu_helper_ops", i1 false, i1 false}
!54 = !{!"../drivers/hwtracing/coresight/coresight-catu.c", i32 494, i32 42}
!55 = !{ptr @.str.12, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hwtracing/coresight/coresight-catu.c", i32 418, i32 3}
!57 = !{ptr @.str.13, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @catu_enable_hw._entry, !56, !"_entry", i1 false, i1 false}
!62 = !{ptr @catu_enable_hw._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.18, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/hwtracing/coresight/coresight-catu.c", i32 422, i32 3}
!65 = !{ptr @catu_enable_hw._entry.17, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @catu_enable_hw._entry_ptr.19, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.20, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/hwtracing/coresight/coresight-catu.c", i32 448, i32 2}
!69 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @catu_enable_hw.__UNIQUE_ID_ddebug300, !68, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!71 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/hwtracing/coresight/coresight-catu.c", i32 475, i32 3}
!75 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @catu_disable_hw._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @catu_disable_hw._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.26, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/hwtracing/coresight/coresight-catu.c", i32 479, i32 2}
!80 = !{ptr @catu_disable_hw.__UNIQUE_ID_ddebug301, !79, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!81 = !{ptr @catu_ids, !82, !"catu_ids", i1 false, i1 false}
!82 = !{!"../drivers/hwtracing/coresight/coresight-catu.c", i32 581, i32 23}
!83 = !{ptr @.str.27, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/hwtracing/coresight/coresight-catu.c", i32 605, i32 3}
!85 = !{ptr @.str.28, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @catu_init._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @catu_init._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @etr_catu_buf_ops, !89, !"etr_catu_buf_ops", i1 false, i1 false}
!89 = !{!"../drivers/hwtracing/coresight/coresight-catu.c", i32 361, i32 40}
!90 = !{ptr @.str.29, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/hwtracing/coresight/coresight-catu.c", i32 277, i32 2}
!92 = !{ptr @.str.30, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @catu_init_sg_table.__UNIQUE_ID_ddebug299, !91, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{i64 5856115}
!104 = !{i64 5855697}
!105 = !{i64 2155463630}
!106 = !{i64 2155462934}
!107 = !{i64 2148743841, i64 2148743846, i64 2148743859, i64 2148743903, i64 2148743937, i64 2148743958}
!108 = !{i8 0, i8 2}
