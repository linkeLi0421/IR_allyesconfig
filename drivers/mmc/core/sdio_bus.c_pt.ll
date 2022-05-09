; ModuleID = '/llk/IR_all_yes/drivers/mmc/core/sdio_bus.c_pt.bc'
source_filename = "../drivers/mmc/core/sdio_bus.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+sdio_register_driver\22, \22a\22\09"
module asm "\09.weak\09__crc_sdio_register_driver\09\09\09\09"
module asm "\09.long\09__crc_sdio_register_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdio_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22sdio_register_driver\22\09\09\09\09\09"
module asm "__kstrtabns_sdio_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sdio_unregister_driver\22, \22a\22\09"
module asm "\09.weak\09__crc_sdio_unregister_driver\09\09\09\09"
module asm "\09.long\09__crc_sdio_unregister_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdio_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22sdio_unregister_driver\22\09\09\09\09\09"
module asm "__kstrtabns_sdio_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sdio_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdio_func = type { ptr, %struct.device, ptr, i32, i8, i16, i16, i32, i32, i32, i32, ptr, i8, i8, i32, ptr, ptr }
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
%struct.mmc_card = type { ptr, %struct.device, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, [4 x i32], [4 x i32], [2 x i32], [16 x i32], %struct.mmc_cid, %struct.mmc_csd, %struct.mmc_ext_csd, %struct.sd_scr, %struct.sd_ssr, %struct.sd_switch_caps, %struct.sd_ext_reg, %struct.sd_ext_reg, i32, %struct.atomic_t, %struct.sdio_cccr, %struct.sdio_cis, [7 x ptr], ptr, i8, i8, i32, ptr, ptr, i32, i32, i32, ptr, [7 x %struct.mmc_part], i32, ptr }
%struct.mmc_cid = type { i32, [8 x i8], i8, i32, i16, i16, i8, i8, i8 }
%struct.mmc_csd = type { i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.mmc_ext_csd = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i8, i8, i32, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i32 }
%struct.sd_scr = type { i8, i8, i8, i8, i8, i8 }
%struct.sd_ssr = type { i32, i32, i32 }
%struct.sd_switch_caps = type { i32, i32, i32, i32, i32 }
%struct.sd_ext_reg = type { i8, i8, i16, i8, i8, i8 }
%struct.sdio_cccr = type { i32, i32, i8 }
%struct.sdio_cis = type { i16, i16, i16, i32 }
%struct.mmc_part = type { i64, i32, [20 x i8], i8, i32 }
%struct.sdio_device_id = type { i8, i16, i16, i32 }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }

@sdio_bus_type = internal global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str.1, ptr null, ptr null, ptr null, ptr @sdio_dev_groups, ptr null, ptr @sdio_bus_match, ptr @sdio_bus_uevent, ptr @sdio_bus_probe, ptr null, ptr @sdio_bus_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdio_bus_pm_ops, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_sdio_register_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdio_register_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_sdio_register_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdio_register_driver to i32), ptr @__kstrtab_sdio_register_driver, ptr @__kstrtabns_sdio_register_driver }, section "___ksymtab_gpl+sdio_register_driver", align 4
@__kstrtab_sdio_unregister_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdio_unregister_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_sdio_unregister_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdio_unregister_driver to i32), ptr @__kstrtab_sdio_unregister_driver, ptr @__kstrtabns_sdio_unregister_driver }, section "___ksymtab_gpl+sdio_unregister_driver", align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s:%d\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sdio\00", [27 x i8] zeroinitializer }, align 32
@sdio_dev_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @sdio_dev_group, ptr null], [24 x i8] zeroinitializer }, align 32
@sdio_bus_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_generic_suspend, ptr @pm_generic_resume, ptr @pm_generic_suspend, ptr @pm_generic_resume, ptr @pm_generic_suspend, ptr @pm_generic_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm_generic_runtime_suspend, ptr @pm_generic_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@sdio_dev_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @sdio_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@sdio_dev_attrs = internal global { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @dev_attr_class, ptr @dev_attr_vendor, ptr @dev_attr_device, ptr @dev_attr_revision, ptr @dev_attr_info1, ptr @dev_attr_info2, ptr @dev_attr_info3, ptr @dev_attr_info4, ptr @dev_attr_modalias, ptr null], [56 x i8] zeroinitializer }, align 32
@dev_attr_class = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @class_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_vendor = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vendor_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_device = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @device_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_revision = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @revision_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_info1 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @info1_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_info2 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @info2_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_info3 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @info3_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_info4 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @info4_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_modalias = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @modalias_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"class\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%02x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vendor\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%04x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"device\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"revision\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%u.%u\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"info1\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"info2\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"info3\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"info4\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"modalias\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sdio:c%02Xv%04Xd%04X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SDIO_CLASS=%02X\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SDIO_ID=%04X:%04X\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SDIO_REVISION=%u.%u\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SDIO_INFO%u=%s\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MODALIAS=sdio:c%02Xv%04Xd%04X\00", [34 x i8] zeroinitializer }, align 32
@sdio_bus_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.23, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014WARNING: driver %s did not remove its interrupt handler!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sdio_bus_remove\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/mmc/core/sdio_bus.c\00", [36 x i8] zeroinitializer }, align 32
@sdio_bus_remove._entry_ptr = internal global ptr @sdio_bus_remove._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@___asan_gen_.25 = private unnamed_addr constant [14 x i8] c"sdio_bus_type\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 246, i32 24 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 358, i32 27 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 247, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [16 x i8] c"sdio_dev_groups\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [16 x i8] c"sdio_bus_pm_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 237, i32 32 }
@___asan_gen_.40 = private unnamed_addr constant [15 x i8] c"sdio_dev_group\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 78, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant [15 x i8] c"sdio_dev_attrs\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 66, i32 26 }
@___asan_gen_.46 = private unnamed_addr constant [15 x i8] c"dev_attr_class\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [16 x i8] c"dev_attr_vendor\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [16 x i8] c"dev_attr_device\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [18 x i8] c"dev_attr_revision\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [15 x i8] c"dev_attr_info1\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [15 x i8] c"dev_attr_info2\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [15 x i8] c"dev_attr_info3\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [15 x i8] c"dev_attr_info4\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [18 x i8] c"dev_attr_modalias\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 42, i32 1 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 43, i32 1 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 44, i32 1 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 45, i32 1 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 61, i32 1 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 62, i32 1 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 63, i32 1 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 64, i32 1 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 46, i32 1 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 128, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 132, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 136, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 140, i32 27 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 145, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.140 = private constant [31 x i8] c"../drivers/mmc/core/sdio_bus.c\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 219, i32 3 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__ksymtab_sdio_register_driver, ptr @__ksymtab_sdio_unregister_driver, ptr @sdio_bus_remove._entry, ptr @sdio_bus_remove._entry_ptr, ptr @sdio_bus_type, ptr @.str, ptr @.str.1, ptr @sdio_dev_groups, ptr @sdio_bus_pm_ops, ptr @sdio_dev_group, ptr @sdio_dev_attrs, ptr @dev_attr_class, ptr @dev_attr_vendor, ptr @dev_attr_device, ptr @dev_attr_revision, ptr @dev_attr_info1, ptr @dev_attr_info2, ptr @dev_attr_info3, ptr @dev_attr_info4, ptr @dev_attr_modalias, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_bus_type to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_dev_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_bus_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_dev_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_dev_attrs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_class to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vendor to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_device to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_revision to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_info1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_info2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_info3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_info4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_modalias to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_bus_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sdio_register_bus() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bus_register(ptr noundef nonnull @sdio_bus_type) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sdio_unregister_bus() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @bus_unregister(ptr noundef nonnull @sdio_bus_type) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sdio_register_driver(ptr noundef %drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv, align 4
  %drv1 = getelementptr inbounds %struct.sdio_driver, ptr %drv, i32 0, i32 4
  %2 = ptrtoint ptr %drv1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %drv1, align 4
  %bus = getelementptr inbounds %struct.sdio_driver, ptr %drv, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @sdio_bus_type, ptr %bus, align 4
  %call = tail call i32 @driver_register(ptr noundef %drv1) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sdio_unregister_driver(ptr noundef %drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv1 = getelementptr inbounds %struct.sdio_driver, ptr %drv, i32 0, i32 4
  %bus = getelementptr inbounds %struct.sdio_driver, ptr %drv, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @sdio_bus_type, ptr %bus, align 4
  tail call void @driver_unregister(ptr noundef %drv1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sdio_alloc_func(ptr noundef %card) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 992) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 4) #11
  %tmpbuf = getelementptr inbounds %struct.sdio_func, ptr %call7.i.i, i32 0, i32 11
  %2 = ptrtoint ptr %tmpbuf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i, ptr %tmpbuf, align 8
  %tobool4.not = icmp eq ptr %call7.i, null
  br i1 %tobool4.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %card, ptr %call7.i.i, align 8
  %dev = getelementptr inbounds %struct.sdio_func, ptr %call7.i.i, i32 0, i32 1
  tail call void @device_initialize(ptr noundef %dev) #8
  %dev9 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 1
  %parent = getelementptr inbounds %struct.sdio_func, ptr %call7.i.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev9, ptr %parent, align 8
  %bus = getelementptr inbounds %struct.sdio_func, ptr %call7.i.i, i32 0, i32 1, i32 5
  %5 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @sdio_bus_type, ptr %bus, align 8
  %release = getelementptr inbounds %struct.sdio_func, ptr %call7.i.i, i32 0, i32 1, i32 35
  %6 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @sdio_release_func, ptr %release, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end7 ], [ inttoptr (i32 -12 to ptr), %if.then5 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdio_release_func(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  tail call void @sdio_free_func_cis(ptr noundef %add.ptr) #8
  %info = getelementptr i8, ptr %dev, i32 972
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  tail call void @kfree(ptr noundef %1) #8
  %tmpbuf = getelementptr i8, ptr %dev, i32 960
  %2 = ptrtoint ptr %tmpbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tmpbuf, align 8
  tail call void @kfree(ptr noundef %3) #8
  tail call void @kfree(ptr noundef %add.ptr) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sdio_add_func(ptr noundef %func) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1
  %0 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %func, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev1 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %num = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 3
  %6 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef %retval.0.i, i32 noundef %7) #8
  %8 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %func, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %12 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num, align 4
  %call.i = tail call ptr @mmc_of_find_child_device(ptr noundef %11, i32 noundef %13) #8
  %of_node.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 27
  %14 = ptrtoint ptr %of_node.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %of_node.i, align 8
  %is_prepared.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 12, i32 1
  %15 = ptrtoint ptr %is_prepared.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i = load i16, ptr %is_prepared.i, align 4
  %16 = and i16 %bf.load.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %bf.cast.not.i = icmp eq i16 %16, 0
  br i1 %bf.cast.not.i, label %if.then.i, label %dev_name.exit.device_enable_async_suspend.exit_crit_edge

dev_name.exit.device_enable_async_suspend.exit_crit_edge: ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %device_enable_async_suspend.exit

if.then.i:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set.i = or i16 %bf.load.i, 16384
  %17 = ptrtoint ptr %is_prepared.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %bf.set.i, ptr %is_prepared.i, align 4
  br label %device_enable_async_suspend.exit

device_enable_async_suspend.exit:                 ; preds = %if.then.i, %dev_name.exit.device_enable_async_suspend.exit_crit_edge
  %call5 = tail call i32 @device_add(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %if.then, label %device_enable_async_suspend.exit.if.end_crit_edge

device_enable_async_suspend.exit.if.end_crit_edge: ; preds = %device_enable_async_suspend.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %device_enable_async_suspend.exit
  call void @__sanitizer_cov_trace_pc() #10
  %state = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 10
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state, align 4
  %or = or i32 %19, 1
  store i32 %or, ptr %state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %device_enable_async_suspend.exit.if.end_crit_edge
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sdio_remove_func(ptr noundef %func) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 10
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1
  tail call void @device_del(ptr noundef %dev) #8
  %of_node = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  tail call void @of_node_put(ptr noundef %3) #8
  tail call void @put_device(ptr noundef %dev) #8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @sdio_bus_match(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %drv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %id_table.i = getelementptr i8, ptr %drv, i32 -12
  %0 = ptrtoint ptr %id_table.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %id_table.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.sdio_match_device.exit_crit_edge, label %while.cond.preheader.i

entry.sdio_match_device.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sdio_match_device.exit

while.cond.preheader.i:                           ; preds = %entry
  %class4.i.i = getelementptr i8, ptr %dev, i32 936
  %vendor14.i.i = getelementptr i8, ptr %dev, i32 938
  %device26.i.i = getelementptr i8, ptr %dev, i32 940
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end.i, %while.cond.preheader.i
  %ids.0.i = phi ptr [ %incdec.ptr.i, %if.end.i ], [ %1, %while.cond.preheader.i ]
  %2 = ptrtoint ptr %ids.0.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ids.0.i, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %while.cond.i.land.lhs.true.i.i_crit_edge [
    i8 0, label %lor.lhs.false.i
    i8 -1, label %while.cond.i.if.end.i.i_crit_edge
  ]

while.cond.i.if.end.i.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

while.cond.i.land.lhs.true.i.i_crit_edge:         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i.i

lor.lhs.false.i:                                  ; preds = %while.cond.i
  %vendor.i = getelementptr inbounds %struct.sdio_device_id, ptr %ids.0.i, i32 0, i32 1
  %5 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vendor.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool3.not.i = icmp eq i16 %6, 0
  br i1 %tobool3.not.i, label %lor.rhs.i, label %lor.lhs.false.i.land.lhs.true.i.i_crit_edge

lor.lhs.false.i.land.lhs.true.i.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i.i

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %device.i = getelementptr inbounds %struct.sdio_device_id, ptr %ids.0.i, i32 0, i32 2
  %7 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %device.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool5.not.i = icmp eq i16 %8, 0
  br i1 %tobool5.not.i, label %lor.rhs.i.sdio_match_device.exit_crit_edge, label %lor.rhs.i.land.lhs.true.i.i_crit_edge

lor.rhs.i.land.lhs.true.i.i_crit_edge:            ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i.i

lor.rhs.i.sdio_match_device.exit_crit_edge:       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sdio_match_device.exit

land.lhs.true.i.i:                                ; preds = %lor.rhs.i.land.lhs.true.i.i_crit_edge, %lor.lhs.false.i.land.lhs.true.i.i_crit_edge, %while.cond.i.land.lhs.true.i.i_crit_edge
  %9 = ptrtoint ptr %class4.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %class4.i.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %10)
  %cmp6.not.i.i = icmp eq i8 %3, %10
  br i1 %cmp6.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.if.end.i_crit_edge

land.lhs.true.i.i.if.end.i_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %while.cond.i.if.end.i.i_crit_edge
  %vendor.i.i = getelementptr inbounds %struct.sdio_device_id, ptr %ids.0.i, i32 0, i32 1
  %11 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vendor.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %12)
  %cmp9.not.i.i = icmp eq i16 %12, -1
  br i1 %cmp9.not.i.i, label %if.end.i.i.if.end19.i.i_crit_edge, label %land.lhs.true11.i.i

if.end.i.i.if.end19.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i.i

land.lhs.true11.i.i:                              ; preds = %if.end.i.i
  %13 = ptrtoint ptr %vendor14.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vendor14.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %14)
  %cmp16.not.i.i = icmp eq i16 %12, %14
  br i1 %cmp16.not.i.i, label %land.lhs.true11.i.i.if.end19.i.i_crit_edge, label %land.lhs.true11.i.i.if.end.i_crit_edge

land.lhs.true11.i.i.if.end.i_crit_edge:           ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true11.i.i.if.end19.i.i_crit_edge:       ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %land.lhs.true11.i.i.if.end19.i.i_crit_edge, %if.end.i.i.if.end19.i.i_crit_edge
  %device.i.i = getelementptr inbounds %struct.sdio_device_id, ptr %ids.0.i, i32 0, i32 2
  %15 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %device.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %16)
  %cmp21.not.i.i = icmp eq i16 %16, -1
  br i1 %cmp21.not.i.i, label %sdio_match_one.exit.i, label %land.lhs.true23.i.i

land.lhs.true23.i.i:                              ; preds = %if.end19.i.i
  %17 = ptrtoint ptr %device26.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %device26.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %18)
  %cmp28.not.i.i = icmp ne i16 %16, %18
  %tobool6.not.i = icmp eq ptr %ids.0.i, null
  %or.cond.i = or i1 %tobool6.not.i, %cmp28.not.i.i
  br i1 %or.cond.i, label %land.lhs.true23.i.i.if.end.i_crit_edge, label %land.lhs.true23.i.i.sdio_match_device.exit_crit_edge

land.lhs.true23.i.i.sdio_match_device.exit_crit_edge: ; preds = %land.lhs.true23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sdio_match_device.exit

land.lhs.true23.i.i.if.end.i_crit_edge:           ; preds = %land.lhs.true23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

sdio_match_one.exit.i:                            ; preds = %if.end19.i.i
  %tobool6.not.old.i = icmp eq ptr %ids.0.i, null
  br i1 %tobool6.not.old.i, label %sdio_match_one.exit.i.if.end.i_crit_edge, label %sdio_match_one.exit.i.sdio_match_device.exit_crit_edge

sdio_match_one.exit.i.sdio_match_device.exit_crit_edge: ; preds = %sdio_match_one.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sdio_match_device.exit

sdio_match_one.exit.i.if.end.i_crit_edge:         ; preds = %sdio_match_one.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %sdio_match_one.exit.i.if.end.i_crit_edge, %land.lhs.true23.i.i.if.end.i_crit_edge, %land.lhs.true11.i.i.if.end.i_crit_edge, %land.lhs.true.i.i.if.end.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.sdio_device_id, ptr %ids.0.i, i32 1
  br label %while.cond.i

sdio_match_device.exit:                           ; preds = %sdio_match_one.exit.i.sdio_match_device.exit_crit_edge, %land.lhs.true23.i.i.sdio_match_device.exit_crit_edge, %lor.rhs.i.sdio_match_device.exit_crit_edge, %entry.sdio_match_device.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.sdio_match_device.exit_crit_edge ], [ %ids.0.i, %sdio_match_one.exit.i.sdio_match_device.exit_crit_edge ], [ null, %lor.rhs.i.sdio_match_device.exit_crit_edge ], [ %ids.0.i, %land.lhs.true23.i.i.sdio_match_device.exit_crit_edge ]
  %tobool.not = icmp ne ptr %retval.0.i, null
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdio_bus_uevent(ptr nocapture noundef readonly %dev, ptr noundef %env) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %class = getelementptr i8, ptr %dev, i32 936
  %0 = ptrtoint ptr %class to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %class, align 8
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.16, i32 noundef %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %vendor = getelementptr i8, ptr %dev, i32 938
  %2 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vendor, align 2
  %conv1 = zext i16 %3 to i32
  %device = getelementptr i8, ptr %dev, i32 940
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device, align 4
  %conv2 = zext i16 %5 to i32
  %call3 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.17, i32 noundef %conv1, i32 noundef %conv2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %major_rev = getelementptr i8, ptr %dev, i32 964
  %6 = ptrtoint ptr %major_rev to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %major_rev, align 4
  %conv7 = zext i8 %7 to i32
  %minor_rev = getelementptr i8, ptr %dev, i32 965
  %8 = ptrtoint ptr %minor_rev to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %minor_rev, align 1
  %conv8 = zext i8 %9 to i32
  %call9 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.18, i32 noundef %conv7, i32 noundef %conv8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %for.cond.preheader, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end6
  %num_info = getelementptr i8, ptr %dev, i32 968
  %info = getelementptr i8, ptr %dev, i32 972
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %i.0 = phi i32 [ %add, %for.body.for.cond_crit_edge ], [ 0, %for.cond.preheader ]
  %10 = ptrtoint ptr %num_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_info, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %11)
  %cmp = icmp ult i32 %i.0, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %add = add nuw i32 %i.0, 1
  %12 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %info, align 4
  %arrayidx = getelementptr ptr, ptr %13, i32 %i.0
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %call14 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.19, i32 noundef %add, ptr noundef %15) #8
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %for.body.for.cond_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %class to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %class, align 8
  %conv19 = zext i8 %17 to i32
  %18 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vendor, align 2
  %conv21 = zext i16 %19 to i32
  %20 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %device, align 4
  %conv23 = zext i16 %21 to i32
  %call24 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.20, i32 noundef %conv19, i32 noundef %conv21, i32 noundef %conv23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  %. = select i1 %tobool25.not, i32 0, i32 -12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ %., %for.end ], [ -12, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdio_bus_probe(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -8
  %id_table.i = getelementptr i8, ptr %1, i32 -12
  %2 = ptrtoint ptr %id_table.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %id_table.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %while.cond.preheader.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.preheader.i:                           ; preds = %entry
  %class4.i.i = getelementptr i8, ptr %dev, i32 936
  %vendor14.i.i = getelementptr i8, ptr %dev, i32 938
  %device26.i.i = getelementptr i8, ptr %dev, i32 940
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end.i, %while.cond.preheader.i
  %ids.0.i = phi ptr [ %incdec.ptr.i, %if.end.i ], [ %3, %while.cond.preheader.i ]
  %4 = ptrtoint ptr %ids.0.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ids.0.i, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %5, label %while.cond.i.land.lhs.true.i.i_crit_edge [
    i8 0, label %lor.lhs.false.i
    i8 -1, label %while.cond.i.if.end.i.i_crit_edge
  ]

while.cond.i.if.end.i.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

while.cond.i.land.lhs.true.i.i_crit_edge:         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i.i

lor.lhs.false.i:                                  ; preds = %while.cond.i
  %vendor.i = getelementptr inbounds %struct.sdio_device_id, ptr %ids.0.i, i32 0, i32 1
  %7 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vendor.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool3.not.i = icmp eq i16 %8, 0
  br i1 %tobool3.not.i, label %lor.rhs.i, label %lor.lhs.false.i.land.lhs.true.i.i_crit_edge

lor.lhs.false.i.land.lhs.true.i.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i.i

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %device.i = getelementptr inbounds %struct.sdio_device_id, ptr %ids.0.i, i32 0, i32 2
  %9 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %device.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool5.not.i = icmp eq i16 %10, 0
  br i1 %tobool5.not.i, label %lor.rhs.i.cleanup_crit_edge, label %lor.rhs.i.land.lhs.true.i.i_crit_edge

lor.rhs.i.land.lhs.true.i.i_crit_edge:            ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i.i

lor.rhs.i.cleanup_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.i.i:                                ; preds = %lor.rhs.i.land.lhs.true.i.i_crit_edge, %lor.lhs.false.i.land.lhs.true.i.i_crit_edge, %while.cond.i.land.lhs.true.i.i_crit_edge
  %11 = ptrtoint ptr %class4.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %class4.i.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %12)
  %cmp6.not.i.i = icmp eq i8 %5, %12
  br i1 %cmp6.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.if.end.i_crit_edge

land.lhs.true.i.i.if.end.i_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %while.cond.i.if.end.i.i_crit_edge
  %vendor.i.i = getelementptr inbounds %struct.sdio_device_id, ptr %ids.0.i, i32 0, i32 1
  %13 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vendor.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %14)
  %cmp9.not.i.i = icmp eq i16 %14, -1
  br i1 %cmp9.not.i.i, label %if.end.i.i.if.end19.i.i_crit_edge, label %land.lhs.true11.i.i

if.end.i.i.if.end19.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i.i

land.lhs.true11.i.i:                              ; preds = %if.end.i.i
  %15 = ptrtoint ptr %vendor14.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vendor14.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %16)
  %cmp16.not.i.i = icmp eq i16 %14, %16
  br i1 %cmp16.not.i.i, label %land.lhs.true11.i.i.if.end19.i.i_crit_edge, label %land.lhs.true11.i.i.if.end.i_crit_edge

land.lhs.true11.i.i.if.end.i_crit_edge:           ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true11.i.i.if.end19.i.i_crit_edge:       ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %land.lhs.true11.i.i.if.end19.i.i_crit_edge, %if.end.i.i.if.end19.i.i_crit_edge
  %device.i.i = getelementptr inbounds %struct.sdio_device_id, ptr %ids.0.i, i32 0, i32 2
  %17 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %device.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %18)
  %cmp21.not.i.i = icmp eq i16 %18, -1
  br i1 %cmp21.not.i.i, label %sdio_match_one.exit.i, label %land.lhs.true23.i.i

land.lhs.true23.i.i:                              ; preds = %if.end19.i.i
  %19 = ptrtoint ptr %device26.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %device26.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %20)
  %cmp28.not.i.i = icmp ne i16 %18, %20
  %tobool6.not.i = icmp eq ptr %ids.0.i, null
  %or.cond.i = or i1 %tobool6.not.i, %cmp28.not.i.i
  br i1 %or.cond.i, label %land.lhs.true23.i.i.if.end.i_crit_edge, label %land.lhs.true23.i.i.if.end_crit_edge

land.lhs.true23.i.i.if.end_crit_edge:             ; preds = %land.lhs.true23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true23.i.i.if.end.i_crit_edge:           ; preds = %land.lhs.true23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

sdio_match_one.exit.i:                            ; preds = %if.end19.i.i
  %tobool6.not.old.i = icmp eq ptr %ids.0.i, null
  br i1 %tobool6.not.old.i, label %sdio_match_one.exit.i.if.end.i_crit_edge, label %sdio_match_one.exit.i.if.end_crit_edge

sdio_match_one.exit.i.if.end_crit_edge:           ; preds = %sdio_match_one.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

sdio_match_one.exit.i.if.end.i_crit_edge:         ; preds = %sdio_match_one.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %sdio_match_one.exit.i.if.end.i_crit_edge, %land.lhs.true23.i.i.if.end.i_crit_edge, %land.lhs.true11.i.i.if.end.i_crit_edge, %land.lhs.true.i.i.if.end.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.sdio_device_id, ptr %ids.0.i, i32 1
  br label %while.cond.i

if.end:                                           ; preds = %sdio_match_one.exit.i.if.end_crit_edge, %land.lhs.true23.i.i.if.end_crit_edge
  %call4 = tail call i32 @dev_pm_domain_attach(ptr noundef %dev, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %21 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr3, align 8
  %sdio_funcs_probed = getelementptr inbounds %struct.mmc_card, ptr %22, i32 0, i32 28
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sdio_funcs_probed, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %sdio_funcs_probed, i32 1, i32 3, i32 1) #8
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sdio_funcs_probed, ptr %sdio_funcs_probed, i32 1, ptr elementtype(i32) %sdio_funcs_probed) #8, !srcloc !74
  %24 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr3, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %27, i32 0, i32 16
  %28 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %caps, align 32
  %and = and i32 %29, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end7.if.end14_crit_edge, label %if.then10

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then10:                                        ; preds = %if.end7
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then10.disable_runtimepm_crit_edge, label %if.then10.if.end14_crit_edge

if.then10.if.end14_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then10.disable_runtimepm_crit_edge:            ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_runtimepm

if.end14:                                         ; preds = %if.then10.if.end14_crit_edge, %if.end7.if.end14_crit_edge
  tail call void @sdio_claim_host(ptr noundef %add.ptr3) #8
  %30 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr3, align 8
  %tobool16.not = icmp eq ptr %31, null
  br i1 %tobool16.not, label %if.end14.if.end22_crit_edge, label %land.lhs.true

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end14
  %state = getelementptr inbounds %struct.mmc_card, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %state, align 4
  %and18 = and i32 %33, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %land.lhs.true.if.end22_crit_edge, label %if.end22.thread

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end22.thread:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @sdio_release_host(ptr noundef %add.ptr3) #8
  br label %disable_runtimepm

if.end22:                                         ; preds = %land.lhs.true.if.end22_crit_edge, %if.end14.if.end22_crit_edge
  %call21 = tail call i32 @sdio_set_block_size(ptr noundef %add.ptr3, i32 noundef 0) #8
  tail call void @sdio_release_host(ptr noundef %add.ptr3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool23.not = icmp eq i32 %call21, 0
  br i1 %tobool23.not, label %if.end25, label %if.end22.disable_runtimepm_crit_edge

if.end22.disable_runtimepm_crit_edge:             ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_runtimepm

if.end25:                                         ; preds = %if.end22
  %probe = getelementptr i8, ptr %1, i32 -8
  %34 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %probe, align 4
  %call26 = tail call i32 %35(ptr noundef %add.ptr3, ptr noundef nonnull %ids.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end25.cleanup_crit_edge, label %if.end25.disable_runtimepm_crit_edge

if.end25.disable_runtimepm_crit_edge:             ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_runtimepm

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

disable_runtimepm:                                ; preds = %if.end25.disable_runtimepm_crit_edge, %if.end22.disable_runtimepm_crit_edge, %if.end22.thread, %if.then10.disable_runtimepm_crit_edge
  %ret.1 = phi i32 [ %call.i, %if.then10.disable_runtimepm_crit_edge ], [ %call21, %if.end22.disable_runtimepm_crit_edge ], [ %call26, %if.end25.disable_runtimepm_crit_edge ], [ -123, %if.end22.thread ]
  %36 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr3, align 8
  %sdio_funcs_probed31 = getelementptr inbounds %struct.mmc_card, ptr %37, i32 0, i32 28
  %call.i.i64 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sdio_funcs_probed31, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %sdio_funcs_probed31, i32 1, i32 3, i32 1) #8
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sdio_funcs_probed31, ptr %sdio_funcs_probed31, i32 1, ptr elementtype(i32) %sdio_funcs_probed31) #8, !srcloc !75
  %39 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr3, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 8
  %caps34 = getelementptr inbounds %struct.mmc_host, ptr %42, i32 0, i32 16
  %43 = ptrtoint ptr %caps34 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %caps34, align 32
  %and35 = and i32 %44, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %disable_runtimepm.if.end38_crit_edge, label %if.then37

disable_runtimepm.if.end38_crit_edge:             ; preds = %disable_runtimepm
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then37:                                        ; preds = %disable_runtimepm
  %usage_count.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %45 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !77
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then37.if.end38_crit_edge, label %do.end11.i.i.i.i

if.then37.if.end38_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

do.end11.i.i.i.i:                                 ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !78
  br label %if.end38

if.end38:                                         ; preds = %do.end11.i.i.i.i, %if.then37.if.end38_crit_edge, %disable_runtimepm.if.end38_crit_edge
  tail call void @dev_pm_domain_detach(ptr noundef %dev, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end25.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.rhs.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.end38 ], [ %call4, %if.end.cleanup_crit_edge ], [ 0, %if.end25.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %lor.rhs.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdio_bus_remove(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -8
  %2 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr3, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %caps, align 32
  %and = and i32 %7, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %remove = getelementptr i8, ptr %1, i32 -4
  %8 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %remove, align 4
  tail call void %9(ptr noundef %add.ptr3) #8
  %10 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr3, align 8
  %sdio_funcs_probed = getelementptr inbounds %struct.mmc_card, ptr %11, i32 0, i32 28
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sdio_funcs_probed, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %sdio_funcs_probed, i32 1, i32 3, i32 1) #8
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sdio_funcs_probed, ptr %sdio_funcs_probed, i32 1, ptr elementtype(i32) %sdio_funcs_probed) #8, !srcloc !75
  %irq_handler = getelementptr i8, ptr %dev, i32 928
  %13 = ptrtoint ptr %irq_handler to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %irq_handler, align 8
  %tobool5.not = icmp eq ptr %14, null
  br i1 %tobool5.not, label %if.end.if.end10_crit_edge, label %do.end

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %16) #12
  tail call void @sdio_claim_host(ptr noundef %add.ptr3) #8
  %call9 = tail call i32 @sdio_release_irq(ptr noundef %add.ptr3) #8
  tail call void @sdio_release_host(ptr noundef %add.ptr3) #8
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.end.if.end10_crit_edge
  %17 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr3, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %caps13 = getelementptr inbounds %struct.mmc_host, ptr %20, i32 0, i32 16
  %21 = ptrtoint ptr %caps13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %caps13, align 32
  %and14 = and i32 %22, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end10.if.end17_crit_edge, label %if.then16

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then16:                                        ; preds = %if.end10
  %usage_count.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !77
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then16.if.end17_crit_edge, label %do.end11.i.i.i.i

if.then16.if.end17_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

do.end11.i.i.i.i:                                 ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !78
  br label %if.end17

if.end17:                                         ; preds = %do.end11.i.i.i.i, %if.then16.if.end17_crit_edge, %if.end10.if.end17_crit_edge
  %24 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr3, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %caps20 = getelementptr inbounds %struct.mmc_host, ptr %27, i32 0, i32 16
  %28 = ptrtoint ptr %caps20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %caps20, align 32
  %and21 = and i32 %29, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end17.if.end25_crit_edge, label %if.then23

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %call.i40 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #8
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end17.if.end25_crit_edge
  tail call void @dev_pm_domain_detach(ptr noundef %dev, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @class_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %class = getelementptr i8, ptr %dev, i32 936
  %0 = ptrtoint ptr %class to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %class, align 8
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vendor_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vendor = getelementptr i8, ptr %dev, i32 938
  %0 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vendor, align 2
  %conv = zext i16 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr i8, ptr %dev, i32 940
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %device, align 4
  %conv = zext i16 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @revision_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %major_rev = getelementptr i8, ptr %dev, i32 964
  %0 = ptrtoint ptr %major_rev to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %major_rev, align 4
  %conv = zext i8 %1 to i32
  %minor_rev = getelementptr i8, ptr %dev, i32 965
  %2 = ptrtoint ptr %minor_rev to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %minor_rev, align 1
  %conv1 = zext i8 %3 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %conv, i32 noundef %conv1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @info1_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_info = getelementptr i8, ptr %dev, i32 968
  %0 = ptrtoint ptr %num_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %info = getelementptr i8, ptr %dev, i32 972
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.10, ptr noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end3 ], [ -61, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @info2_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_info = getelementptr i8, ptr %dev, i32 968
  %0 = ptrtoint ptr %num_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %info = getelementptr i8, ptr %dev, i32 972
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.10, ptr noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end3 ], [ -61, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @info3_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_info = getelementptr i8, ptr %dev, i32 968
  %0 = ptrtoint ptr %num_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ult i32 %1, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %info = getelementptr i8, ptr %dev, i32 972
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.10, ptr noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end3 ], [ -61, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @info4_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_info = getelementptr i8, ptr %dev, i32 968
  %0 = ptrtoint ptr %num_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp ult i32 %1, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %info = getelementptr i8, ptr %dev, i32 972
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.10, ptr noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end3 ], [ -61, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @modalias_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %class = getelementptr i8, ptr %dev, i32 936
  %0 = ptrtoint ptr %class to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %class, align 8
  %conv = zext i8 %1 to i32
  %vendor = getelementptr i8, ptr %dev, i32 938
  %2 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vendor, align 2
  %conv1 = zext i16 %3 to i32
  %device = getelementptr i8, ptr %dev, i32 940
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device, align 4
  %conv2 = zext i16 %5 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_domain_attach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_claim_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_set_block_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_release_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_domain_detach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_release_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_runtime_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_runtime_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_free_func_cis(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_of_find_child_device(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !18, !19, !21, !22, !23, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !47, !49, !51, !53, !55, !57, !59, !60, !61, !62, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__ksymtab_sdio_register_driver, !1, !"__ksymtab_sdio_register_driver", i1 false, i1 false}
!1 = !{!"../drivers/mmc/core/sdio_bus.c", i32 276, i32 1}
!2 = !{ptr @__ksymtab_sdio_unregister_driver, !3, !"__ksymtab_sdio_unregister_driver", i1 false, i1 false}
!3 = !{!"../drivers/mmc/core/sdio_bus.c", i32 287, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/mmc/core/sdio_bus.c", i32 358, i32 27}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mmc/core/sdio_bus.c", i32 247, i32 11}
!8 = !{ptr @sdio_bus_type, !9, !"sdio_bus_type", i1 false, i1 false}
!9 = !{!"../drivers/mmc/core/sdio_bus.c", i32 246, i32 24}
!10 = !{ptr @sdio_dev_groups, !11, !"sdio_dev_groups", i1 false, i1 false}
!11 = !{!"../drivers/mmc/core/sdio_bus.c", i32 78, i32 1}
!12 = !{ptr @sdio_dev_group, !11, !"sdio_dev_group", i1 false, i1 false}
!13 = !{ptr @sdio_dev_attrs, !14, !"sdio_dev_attrs", i1 false, i1 false}
!14 = !{!"../drivers/mmc/core/sdio_bus.c", i32 66, i32 26}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/mmc/core/sdio_bus.c", i32 42, i32 1}
!17 = !{ptr @dev_attr_class, !16, !"dev_attr_class", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mmc/core/sdio_bus.c", i32 43, i32 1}
!21 = !{ptr @dev_attr_vendor, !20, !"dev_attr_vendor", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/mmc/core/sdio_bus.c", i32 44, i32 1}
!25 = !{ptr @dev_attr_device, !24, !"dev_attr_device", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mmc/core/sdio_bus.c", i32 45, i32 1}
!28 = !{ptr @dev_attr_revision, !27, !"dev_attr_revision", i1 false, i1 false}
!29 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mmc/core/sdio_bus.c", i32 61, i32 1}
!32 = !{ptr @dev_attr_info1, !31, !"dev_attr_info1", i1 false, i1 false}
!33 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mmc/core/sdio_bus.c", i32 62, i32 1}
!36 = !{ptr @dev_attr_info2, !35, !"dev_attr_info2", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mmc/core/sdio_bus.c", i32 63, i32 1}
!39 = !{ptr @dev_attr_info3, !38, !"dev_attr_info3", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mmc/core/sdio_bus.c", i32 64, i32 1}
!42 = !{ptr @dev_attr_info4, !41, !"dev_attr_info4", i1 false, i1 false}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mmc/core/sdio_bus.c", i32 46, i32 1}
!45 = !{ptr @dev_attr_modalias, !44, !"dev_attr_modalias", i1 false, i1 false}
!46 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mmc/core/sdio_bus.c", i32 128, i32 4}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mmc/core/sdio_bus.c", i32 132, i32 4}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mmc/core/sdio_bus.c", i32 136, i32 4}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mmc/core/sdio_bus.c", i32 140, i32 27}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mmc/core/sdio_bus.c", i32 145, i32 4}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mmc/core/sdio_bus.c", i32 219, i32 3}
!59 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @sdio_bus_remove._entry, !58, !"_entry", i1 false, i1 false}
!62 = !{ptr @sdio_bus_remove._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @sdio_bus_pm_ops, !64, !"sdio_bus_pm_ops", i1 false, i1 false}
!64 = !{!"../drivers/mmc/core/sdio_bus.c", i32 237, i32 32}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i64 2148471335, i64 2148471361, i64 2148471390, i64 2148471424, i64 2148471455, i64 2148471478}
!75 = !{i64 2148473800, i64 2148473826, i64 2148473855, i64 2148473889, i64 2148473920, i64 2148473943}
!76 = !{i64 2148470754}
!77 = !{i64 957354, i64 957379, i64 957401, i64 957417, i64 957429, i64 957449, i64 957473, i64 957489, i64 957501}
!78 = !{i64 2148470942}
