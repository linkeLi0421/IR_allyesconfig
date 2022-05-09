; ModuleID = '/llk/IR_all_yes/drivers/hwtracing/coresight/coresight-tmc-core.c_pt.bc'
source_filename = "../drivers/hwtracing/coresight/coresight-tmc-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.amba_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amba_id = type { i32, i32, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.coresight_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.coresight_dev_list = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.atomic_t = type { i32 }
%struct.amba_cs_uci_id = type { i32, i32, i32, ptr }
%struct.tmc_drvdata = type { ptr, ptr, %struct.miscdevice, %struct.spinlock, i32, i8, %union.anon.101, i32, i32, i32, i32, i32, i32, i32, i32, %struct.idr, %struct.mutex, ptr, ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.101 = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.coresight_device = type { ptr, i32, %union.coresight_dev_subtype, ptr, %struct.csdev_access, %struct.device, ptr, i8, i8, i8, ptr, ptr, ptr, i32, i8, i8, %struct.list_head, %struct.list_head, %struct.spinlock, ptr }
%union.coresight_dev_subtype = type { %struct.anon.98 }
%struct.anon.98 = type { i32, i32 }
%struct.csdev_access = type { i8, %union.anon.99 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.coresight_desc = type { i32, %union.coresight_dev_subtype, ptr, ptr, ptr, ptr, ptr, %struct.csdev_access }
%struct.amba_device = type { %struct.device, %struct.resource, ptr, %struct.device_dma_parameters, i32, i32, %struct.amba_cs_uci_id, [9 x i32], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@tmc_wait_for_tmcready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 42, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"timeout while waiting for TMC to be Ready\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tmc_wait_for_tmcready\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/hwtracing/coresight/coresight-tmc-core.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tmc_wait_for_tmcready._entry_ptr = internal global ptr @tmc_wait_for_tmcready._entry, section ".printk_index", align 4
@tmc_flush_and_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 60, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"timeout while waiting for completion of Manual Flush\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tmc_flush_and_stop\00", [45 x i8] zeroinitializer }, align 32
@tmc_flush_and_stop._entry_ptr = internal global ptr @tmc_flush_and_stop._entry, section ".printk_index", align 4
@__initcall__kmod_coresight_tmc__305_621_tmc_driver_init6 = internal global ptr @tmc_driver_init, section ".initcall6.init", align 4
@tmc_driver = internal global { %struct.amba_driver, [36 x i8] } { %struct.amba_driver { %struct.device_driver { ptr @.str.7, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tmc_probe, ptr @tmc_remove, ptr @tmc_shutdown, ptr @tmc_ids }, [36 x i8] zeroinitializer }, align 32
@__exitcall_tmc_driver_exit = internal global ptr @tmc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author306 = internal constant [59 x i8] c"coresight_tmc.author=Pratik Patel <pratikp@codeaurora.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description307 = internal constant [71 x i8] c"coresight_tmc.description=Arm CoreSight Trace Memory Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file308 = internal constant [61 x i8] c"coresight_tmc.file=drivers/hwtracing/coresight/coresight-tmc\00", section ".modinfo", align 1
@__UNIQUE_ID_license309 = internal constant [29 x i8] c"coresight_tmc.license=GPL v2\00", section ".modinfo", align 1
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"coresight-tmc\00", [18 x i8] zeroinitializer }, align 32
@tmc_ids = internal constant { [5 x %struct.amba_id], [36 x i8] } { [5 x %struct.amba_id] [%struct.amba_id { i32 768353, i32 1048575, ptr null }, %struct.amba_id { i32 768488, i32 1048575, ptr @.compoundliteral }, %struct.amba_id { i32 768489, i32 1048575, ptr null }, %struct.amba_id { i32 768490, i32 1048575, ptr null }, %struct.amba_id zeroinitializer], [36 x i8] zeroinitializer }, align 32
@tmc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&drvdata->spinlock\00", [45 x i8] zeroinitializer }, align 32
@coresight_tmc_groups = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @coresight_tmc_group, ptr @coresight_tmc_mgmt_group, ptr null], [20 x i8] zeroinitializer }, align 32
@tmc_etb_cs_ops = external dso_local constant %struct.coresight_ops, align 4
@etb_devs = internal global { %struct.coresight_dev_list, [20 x i8] } { %struct.coresight_dev_list { i32 0, ptr @.str.35, ptr null }, [20 x i8] zeroinitializer }, align 32
@tmc_etr_cs_ops = external dso_local constant %struct.coresight_ops, align 4
@tmc_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&drvdata->idr_mutex\00", [44 x i8] zeroinitializer }, align 32
@etr_devs = internal global { %struct.coresight_dev_list, [20 x i8] } { %struct.coresight_dev_list { i32 0, ptr @.str.45, ptr null }, [20 x i8] zeroinitializer }, align 32
@tmc_etf_cs_ops = external dso_local constant %struct.coresight_ops, align 4
@etf_devs = internal global { %struct.coresight_dev_list, [20 x i8] } { %struct.coresight_dev_list { i32 0, ptr @.str.46, ptr null }, [20 x i8] zeroinitializer }, align 32
@tmc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: Unsupported TMC config\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tmc_probe\00", [22 x i8] zeroinitializer }, align 32
@tmc_probe._entry_ptr = internal global ptr @tmc_probe._entry, section ".printk_index", align 4
@tmc_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @tmc_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tmc_open, ptr null, ptr @tmc_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"arm,buffer-size\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"arm,max-burst-size\00", [45 x i8] zeroinitializer }, align 32
@coresight_tmc_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @coresight_tmc_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@coresight_tmc_mgmt_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.19, ptr null, ptr null, ptr @coresight_tmc_mgmt_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@coresight_tmc_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_trigger_cntr, ptr @dev_attr_buffer_size, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_trigger_cntr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @trigger_cntr_show, ptr @trigger_cntr_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_buffer_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @buffer_size_show, ptr @buffer_size_store }, [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"trigger_cntr\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%#lx\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"buffer_size\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%#x\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mgmt\00", [27 x i8] zeroinitializer }, align 32
@coresight_tmc_mgmt_attrs = internal global { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @dev_attr_rsz, ptr @dev_attr_sts, ptr @dev_attr_rrp, ptr @dev_attr_rwp, ptr @dev_attr_trg, ptr @dev_attr_ctl, ptr @dev_attr_ffsr, ptr @dev_attr_ffcr, ptr @dev_attr_mode, ptr @dev_attr_pscr, ptr @dev_attr_devid, ptr @dev_attr_dba, ptr @dev_attr_axictl, ptr @dev_attr_authstatus, ptr null], [36 x i8] zeroinitializer }, align 32
@dev_attr_rsz = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rsz_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sts = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sts_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rrp = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rrp_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rwp = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rwp_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_trg = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @trg_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ctl = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ctl_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ffsr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ffsr_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ffcr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ffcr_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mode_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pscr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pscr_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_devid = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @devid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_dba = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dba_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_axictl = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @axictl_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_authstatus = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @authstatus_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rsz\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%llx\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sts\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rrp\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rwp\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"trg\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ctl\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ffsr\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ffcr\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pscr\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"devid\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dba\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"axictl\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"authstatus\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tmc_etb\00", [24 x i8] zeroinitializer }, align 32
@tmc_etr_setup_caps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 414, ptr @.str.38, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Detected dma mask %dbits\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tmc_etr_setup_caps\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tmc_etr_setup_caps._entry_ptr = internal global ptr @tmc_etr_setup_caps._entry, section ".printk_index", align 4
@tmc_etr_setup_caps._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.37, ptr @.str.2, i32 422, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to setup DMA mask: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tmc_etr_setup_caps._entry_ptr.41 = internal global ptr @tmc_etr_setup_caps._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/hwtracing/coresight/coresight-tmc.h\00", [52 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"arm,scatter-gather\00", [45 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tmc_etr\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tmc_etf\00", [24 x i8] zeroinitializer }, align 32
@tmc_read.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.47, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 0, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"coresight_tmc\00", [18 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tmc_read\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: copy_to_user failed\0A\00", [39 x i8] zeroinitializer }, align 32
@tmc_read.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.47, ptr @.str.48, ptr @.str.2, ptr @.str.50, i8 0, i8 48, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%zu bytes copied\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@tmc_open.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.47, ptr @.str.54, ptr @.str.2, ptr @.str.55, i8 0, i8 39, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tmc_open\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: successfully opened\0A\00", [39 x i8] zeroinitializer }, align 32
@tmc_read_prepare.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.47, ptr @.str.56, ptr @.str.2, ptr @.str.57, i8 0, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tmc_read_prepare\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TMC read start\0A\00", [16 x i8] zeroinitializer }, align 32
@tmc_release.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.47, ptr @.str.58, ptr @.str.2, ptr @.str.59, i8 0, i8 52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tmc_release\00", [20 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: released\0A\00", [18 x i8] zeroinitializer }, align 32
@tmc_read_unprepare.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.47, ptr @.str.60, ptr @.str.2, ptr @.str.61, i8 0, i8 35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tmc_read_unprepare\00", [45 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TMC read end\0A\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.amba_cs_uci_id, [16 x i8] } { %struct.amba_cs_uci_id { i32 0, i32 0, i32 0, ptr inttoptr (i32 6 to ptr) }, [16 x i8] zeroinitializer }, align 32
@switch.table.tmc_get_memwidth_mask = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 -16, i32 -16, i32 0, i32 -16, i32 0, i32 0, i32 0, i32 -32], [32 x i8] zeroinitializer }, align 32
@switch.table.tmc_probe = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 2, i32 4, i32 8], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.62 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.65 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 41, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 59, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [11 x i8] c"tmc_driver\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 609, i32 27 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 611, i32 13 }
@___asan_gen_.99 = private unnamed_addr constant [8 x i8] c"tmc_ids\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 596, i32 29 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 479, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [21 x i8] c"coresight_tmc_groups\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 365, i32 38 }
@___asan_gen_.111 = private unnamed_addr constant [9 x i8] c"etb_devs\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 513, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [9 x i8] c"etr_devs\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [9 x i8] c"etf_devs\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 524, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [9 x i8] c"tmc_fops\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 213, i32 37 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 430, i32 44 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 439, i32 44 }
@___asan_gen_.144 = private unnamed_addr constant [20 x i8] c"coresight_tmc_group\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 356, i32 37 }
@___asan_gen_.147 = private unnamed_addr constant [25 x i8] c"coresight_tmc_mgmt_group\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 360, i32 37 }
@___asan_gen_.150 = private unnamed_addr constant [20 x i8] c"coresight_tmc_attrs\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 350, i32 26 }
@___asan_gen_.153 = private unnamed_addr constant [22 x i8] c"dev_attr_trigger_cntr\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [21 x i8] c"dev_attr_buffer_size\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 316, i32 8 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 298, i32 22 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 348, i32 8 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 323, i32 22 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 362, i32 10 }
@___asan_gen_.174 = private unnamed_addr constant [25 x i8] c"coresight_tmc_mgmt_attrs\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 274, i32 26 }
@___asan_gen_.177 = private unnamed_addr constant [13 x i8] c"dev_attr_rsz\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [13 x i8] c"dev_attr_sts\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [13 x i8] c"dev_attr_rrp\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [13 x i8] c"dev_attr_rwp\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [13 x i8] c"dev_attr_trg\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [13 x i8] c"dev_attr_ctl\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [14 x i8] c"dev_attr_ffsr\00", align 1
@___asan_gen_.198 = private unnamed_addr constant [14 x i8] c"dev_attr_ffcr\00", align 1
@___asan_gen_.201 = private unnamed_addr constant [14 x i8] c"dev_attr_mode\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [14 x i8] c"dev_attr_pscr\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [15 x i8] c"dev_attr_devid\00", align 1
@___asan_gen_.210 = private unnamed_addr constant [13 x i8] c"dev_attr_dba\00", align 1
@___asan_gen_.213 = private unnamed_addr constant [16 x i8] c"dev_attr_axictl\00", align 1
@___asan_gen_.216 = private unnamed_addr constant [20 x i8] c"dev_attr_authstatus\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 259, i32 1 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 260, i32 1 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 270, i32 1 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 271, i32 1 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 261, i32 1 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 262, i32 1 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 263, i32 1 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 264, i32 1 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 265, i32 1 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 266, i32 1 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 269, i32 1 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 272, i32 1 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 267, i32 1 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 268, i32 1 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 30, i32 1 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 414, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 422, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant [47 x i8] c"../drivers/hwtracing/coresight/coresight-tmc.h\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 300, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 373, i32 46 }
@___asan_gen_.291 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.295 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 378, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 32, i32 1 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 31, i32 1 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 188, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 194, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 230, i32 6 }
@___asan_gen_.319 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 214, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 174, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 158, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 119, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 209, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.346 = private constant [52 x i8] c"../drivers/hwtracing/coresight/coresight-tmc-core.c\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 141, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.349 = private unnamed_addr constant [35 x i8] c"switch.table.tmc_get_memwidth_mask\00", align 1
@___asan_gen_.350 = private unnamed_addr constant [23 x i8] c"switch.table.tmc_probe\00", align 1
@llvm.compiler.used = appending global [109 x ptr] [ptr @__UNIQUE_ID_author306, ptr @__UNIQUE_ID_description307, ptr @__UNIQUE_ID_file308, ptr @__UNIQUE_ID_license309, ptr @__exitcall_tmc_driver_exit, ptr @__initcall__kmod_coresight_tmc__305_621_tmc_driver_init6, ptr @tmc_driver_exit, ptr @tmc_etr_setup_caps._entry, ptr @tmc_etr_setup_caps._entry.39, ptr @tmc_etr_setup_caps._entry_ptr, ptr @tmc_etr_setup_caps._entry_ptr.41, ptr @tmc_flush_and_stop._entry, ptr @tmc_flush_and_stop._entry_ptr, ptr @tmc_probe._entry, ptr @tmc_probe._entry_ptr, ptr @tmc_wait_for_tmcready._entry, ptr @tmc_wait_for_tmcready._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @tmc_driver, ptr @.str.7, ptr @tmc_ids, ptr @tmc_probe.__key, ptr @.str.8, ptr @coresight_tmc_groups, ptr @etb_devs, ptr @tmc_probe.__key.9, ptr @.str.10, ptr @etr_devs, ptr @etf_devs, ptr @.str.11, ptr @.str.12, ptr @tmc_fops, ptr @.str.13, ptr @.str.14, ptr @coresight_tmc_group, ptr @coresight_tmc_mgmt_group, ptr @coresight_tmc_attrs, ptr @dev_attr_trigger_cntr, ptr @dev_attr_buffer_size, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @coresight_tmc_mgmt_attrs, ptr @dev_attr_rsz, ptr @dev_attr_sts, ptr @dev_attr_rrp, ptr @dev_attr_rwp, ptr @dev_attr_trg, ptr @dev_attr_ctl, ptr @dev_attr_ffsr, ptr @dev_attr_ffcr, ptr @dev_attr_mode, ptr @dev_attr_pscr, ptr @dev_attr_devid, ptr @dev_attr_dba, ptr @dev_attr_axictl, ptr @dev_attr_authstatus, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @xa_init_flags.__key, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.compoundliteral, ptr @switch.table.tmc_get_memwidth_mask, ptr @switch.table.tmc_probe], section "llvm.metadata"
@0 = internal global [97 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmc_wait_for_tmcready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmc_flush_and_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmc_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmc_ids to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coresight_tmc_groups to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etb_devs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmc_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etr_devs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etf_devs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmc_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coresight_tmc_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coresight_tmc_mgmt_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coresight_tmc_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_trigger_cntr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_buffer_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coresight_tmc_mgmt_attrs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rsz to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sts to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rrp to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rwp to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_trg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ctl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ffsr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ffcr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pscr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_devid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dba to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_axictl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_authstatus to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmc_etr_setup_caps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmc_etr_setup_caps._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tmc_get_memwidth_mask to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tmc_probe to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tmc_wait_for_tmcready(ptr nocapture noundef readonly %drvdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %csdev1 = getelementptr inbounds %struct.tmc_drvdata, ptr %drvdata, i32 0, i32 1
  %0 = ptrtoint ptr %csdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csdev1, align 4
  %access = getelementptr inbounds %struct.coresight_device, ptr %1, i32 0, i32 4
  %call = tail call i32 @coresight_timeout(ptr noundef %access, i32 noundef 12, i32 noundef 2, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.coresight_device, ptr %1, i32 0, i32 5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coresight_timeout(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tmc_flush_and_stop(ptr nocapture noundef readonly %drvdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %csdev1 = getelementptr inbounds %struct.tmc_drvdata, ptr %drvdata, i32 0, i32 1
  %0 = ptrtoint ptr %csdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csdev1, align 4
  %access = getelementptr inbounds %struct.coresight_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 772
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !177
  %5 = or i32 %4, 1048576
  %6 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drvdata, align 4
  %add.ptr3 = getelementptr i8, ptr %7, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %5) #9, !srcloc !178
  %8 = or i32 %4, 1074790400
  %9 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %drvdata, align 4
  %add.ptr6 = getelementptr i8, ptr %10, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %8) #9, !srcloc !178
  %call7 = tail call i32 @coresight_timeout(ptr noundef %access, i32 noundef 772, i32 noundef 6, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.coresight_device, ptr %1, i32 0, i32 5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %csdev1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %csdev1, align 4
  %access.i = getelementptr inbounds %struct.coresight_device, ptr %12, i32 0, i32 4
  %call.i = tail call i32 @coresight_timeout(ptr noundef %access.i, i32 noundef 12, i32 noundef 2, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.tmc_wait_for_tmcready.exit_crit_edge, label %do.end.i

if.end.tmc_wait_for_tmcready.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %tmc_wait_for_tmcready.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.coresight_device, ptr %12, i32 0, i32 5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str) #12
  br label %tmc_wait_for_tmcready.exit

tmc_wait_for_tmcready.exit:                       ; preds = %do.end.i, %if.end.tmc_wait_for_tmcready.exit_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tmc_enable_hw(ptr nocapture noundef readonly %drvdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #9, !srcloc !178
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tmc_disable_hw(ptr nocapture noundef readonly %drvdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !178
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @tmc_get_memwidth_mask(ptr nocapture noundef readonly %drvdata) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %memwidth = getelementptr inbounds %struct.tmc_drvdata, ptr %drvdata, i32 0, i32 12
  %0 = ptrtoint ptr %memwidth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %memwidth, align 4
  %switch.tableidx = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 8
  br i1 %2, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.tmc_get_memwidth_mask, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %mask.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  ret i32 %mask.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tmc_driver_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amba_driver_register(ptr noundef nonnull @tmc_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tmc_driver_exit() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @amba_driver_unregister(ptr noundef nonnull @tmc_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_driver_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmc_probe(ptr noundef %adev, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  %burst_size.i = alloca i32, align 4
  %size.i = alloca i32, align 4
  %desc = alloca %struct.coresight_desc, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %desc) #9
  %0 = call ptr @memset(ptr %desc, i32 0, i32 44)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %adev, i32 noundef 296, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %res2 = getelementptr inbounds %struct.amba_device, ptr %adev, i32 0, i32 1
  %driver_data.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call3 = tail call ptr @devm_ioremap_resource(ptr noundef %adev, ptr noundef %res2) #9
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call3 to i32
  br label %out

if.end7:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %call.i, align 4
  %access = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 7
  %4 = ptrtoint ptr %access to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %access, align 4
  %.compoundliteral.sroa.283.0.access.sroa_idx = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %.compoundliteral.sroa.283.0.access.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %.compoundliteral.sroa.283.0.access.sroa_idx, align 4
  %spinlock = getelementptr inbounds %struct.tmc_drvdata, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %spinlock, ptr noundef nonnull @.str.8, ptr noundef nonnull @tmc_probe.__key, i16 noundef signext 3) #9
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 4040
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !177
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %and = lshr i32 %9, 6
  %shr = and i32 %and, 3
  %config_type = getelementptr inbounds %struct.tmc_drvdata, ptr %call.i, i32 0, i32 11
  %10 = ptrtoint ptr %config_type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shr, ptr %config_type, align 4
  %and.i = lshr i32 %9, 8
  %shr.i = and i32 %and.i, 7
  %switch.tableidx = add nsw i32 %shr.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %11 = icmp ult i32 %switch.tableidx, 4
  br i1 %11, label %switch.lookup, label %if.end7.tmc_get_memwidth.exit_crit_edge

if.end7.tmc_get_memwidth.exit_crit_edge:          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %tmc_get_memwidth.exit

switch.lookup:                                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.tmc_probe, i32 0, i32 %switch.tableidx
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %tmc_get_memwidth.exit

tmc_get_memwidth.exit:                            ; preds = %switch.lookup, %if.end7.tmc_get_memwidth.exit_crit_edge
  %memwidth.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end7.tmc_get_memwidth.exit_crit_edge ]
  %memwidth = getelementptr inbounds %struct.tmc_drvdata, ptr %call.i, i32 0, i32 12
  %13 = ptrtoint ptr %memwidth to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %memwidth.0.i, ptr %memwidth, align 4
  %pid = getelementptr inbounds %struct.tmc_drvdata, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr)
  %cmp = icmp eq i32 %shr, 1
  br i1 %cmp, label %if.then14, label %if.else

if.then14:                                        ; preds = %tmc_get_memwidth.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.i) #9
  %15 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %size.i, align 4, !annotation !179
  %fwnode.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 28
  %16 = ptrtoint ptr %fwnode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fwnode.i, align 4
  %call.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef %17, ptr noundef nonnull @.str.13, ptr noundef nonnull %size.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.then14.tmc_etr_get_default_buffer_size.exit_crit_edge, label %if.then.i

if.then14.tmc_etr_get_default_buffer_size.exit_crit_edge: ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %tmc_etr_get_default_buffer_size.exit

if.then.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1048576, ptr %size.i, align 4
  br label %tmc_etr_get_default_buffer_size.exit

tmc_etr_get_default_buffer_size.exit:             ; preds = %if.then.i, %if.then14.tmc_etr_get_default_buffer_size.exit_crit_edge
  %19 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #9
  %size = getelementptr inbounds %struct.tmc_drvdata, ptr %call.i, i32 0, i32 8
  %21 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %size, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %burst_size.i) #9
  %22 = ptrtoint ptr %burst_size.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %burst_size.i, align 4, !annotation !179
  %23 = ptrtoint ptr %fwnode.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fwnode.i, align 4
  %call.i.i129 = call i32 @fwnode_property_read_u32_array(ptr noundef %24, ptr noundef nonnull @.str.14, ptr noundef nonnull %burst_size.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i129)
  %tobool.not.i130 = icmp eq i32 %call.i.i129, 0
  br i1 %tobool.not.i130, label %if.end.i, label %tmc_etr_get_default_buffer_size.exit.tmc_etr_get_max_burst_size.exit_crit_edge

tmc_etr_get_default_buffer_size.exit.tmc_etr_get_max_burst_size.exit_crit_edge: ; preds = %tmc_etr_get_default_buffer_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %tmc_etr_get_max_burst_size.exit

if.end.i:                                         ; preds = %tmc_etr_get_default_buffer_size.exit
  %25 = ptrtoint ptr %burst_size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %burst_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %26)
  %cmp.i131 = icmp ugt i32 %26, 15
  br i1 %cmp.i131, label %if.then1.i, label %if.end.i.if.end2.i_crit_edge

if.end.i.if.end2.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %burst_size.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 15, ptr %burst_size.i, align 4
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.then1.i, %if.end.i.if.end2.i_crit_edge
  %28 = ptrtoint ptr %burst_size.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %burst_size.i, align 4
  br label %tmc_etr_get_max_burst_size.exit

tmc_etr_get_max_burst_size.exit:                  ; preds = %if.end2.i, %tmc_etr_get_default_buffer_size.exit.tmc_etr_get_max_burst_size.exit_crit_edge
  %retval.0.i = phi i32 [ %29, %if.end2.i ], [ 15, %tmc_etr_get_default_buffer_size.exit.tmc_etr_get_max_burst_size.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %burst_size.i) #9
  %max_burst_size = getelementptr inbounds %struct.tmc_drvdata, ptr %call.i, i32 0, i32 9
  %30 = ptrtoint ptr %max_burst_size to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %retval.0.i, ptr %max_burst_size, align 4
  br label %if.end23

if.else:                                          ; preds = %tmc_get_memwidth.exit
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 4
  %add.ptr19 = getelementptr i8, ptr %32, i32 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #9, !srcloc !177
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %mul = shl i32 %34, 2
  %size22 = getelementptr inbounds %struct.tmc_drvdata, ptr %call.i, i32 0, i32 8
  %35 = ptrtoint ptr %size22 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %mul, ptr %size22, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.else, %tmc_etr_get_max_burst_size.exit
  %dev24 = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 4
  %36 = ptrtoint ptr %dev24 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %adev, ptr %dev24, align 4
  %groups = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 5
  %37 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @coresight_tmc_groups, ptr %groups, align 4
  %38 = ptrtoint ptr %config_type to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %config_type, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values)
  switch i32 %39, label %do.end47 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb26
    i32 2, label %sw.bb39
  ]

sw.bb:                                            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %desc, align 4
  %subtype = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 1
  %42 = ptrtoint ptr %subtype to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2, ptr %subtype, align 4
  %ops = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 2
  %43 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @tmc_etb_cs_ops, ptr %ops, align 4
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end23
  %44 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %desc, align 4
  %subtype28 = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 1
  %45 = ptrtoint ptr %subtype28 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 3, ptr %subtype28, align 4
  %ops30 = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 2
  %46 = ptrtoint ptr %ops30 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @tmc_etr_cs_ops, ptr %ops30, align 4
  %data.i = getelementptr inbounds %struct.amba_id, ptr %id, i32 0, i32 2
  %47 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i, align 4
  %tobool.not.i132 = icmp eq ptr %48, null
  br i1 %tobool.not.i132, label %sw.bb26.coresight_get_uci_data.exit_crit_edge, label %if.end.i133

sw.bb26.coresight_get_uci_data.exit_crit_edge:    ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #11
  br label %coresight_get_uci_data.exit

if.end.i133:                                      ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #11
  %data1.i = getelementptr inbounds %struct.amba_cs_uci_id, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data1.i, align 4
  %phi.cast = ptrtoint ptr %50 to i32
  br label %coresight_get_uci_data.exit

coresight_get_uci_data.exit:                      ; preds = %if.end.i133, %sw.bb26.coresight_get_uci_data.exit_crit_edge
  %retval.0.i134 = phi i32 [ %phi.cast, %if.end.i133 ], [ 0, %sw.bb26.coresight_get_uci_data.exit_crit_edge ]
  %51 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %driver_data.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %add.ptr.i.i = getelementptr i8, ptr %54, i32 4024
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !177
  %56 = and i32 %55, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %56)
  %cmp.i.i = icmp eq i32 %56, 50331648
  br i1 %cmp.i.i, label %if.end.i135, label %coresight_get_uci_data.exit.out_crit_edge

coresight_get_uci_data.exit.out_crit_edge:        ; preds = %coresight_get_uci_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i135:                                      ; preds = %coresight_get_uci_data.exit
  %etr_caps.i.i = getelementptr inbounds %struct.tmc_drvdata, ptr %52, i32 0, i32 14
  %57 = ptrtoint ptr %etr_caps.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %etr_caps.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i.i = icmp eq i32 %58, 0
  br i1 %tobool.not.i.i, label %if.end.i135.tmc_etr_init_caps.exit.i_crit_edge, label %do.end.i.i, !prof !180

if.end.i135.tmc_etr_init_caps.exit.i_crit_edge:   ; preds = %if.end.i135
  call void @__sanitizer_cov_trace_pc() #11
  br label %tmc_etr_init_caps.exit.i

do.end.i.i:                                       ; preds = %if.end.i135
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 300, i32 noundef 9, ptr noundef null) #9
  br label %tmc_etr_init_caps.exit.i

tmc_etr_init_caps.exit.i:                         ; preds = %do.end.i.i, %if.end.i135.tmc_etr_init_caps.exit.i_crit_edge
  %59 = ptrtoint ptr %etr_caps.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %retval.0.i134, ptr %etr_caps.i.i, align 4
  %and.i136 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i136)
  %tobool.not.i137 = icmp eq i32 %and.i136, 0
  br i1 %tobool.not.i137, label %land.lhs.true.i, label %tmc_etr_init_caps.exit.i.if.end4.i_crit_edge

tmc_etr_init_caps.exit.i.if.end4.i_crit_edge:     ; preds = %tmc_etr_init_caps.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

land.lhs.true.i:                                  ; preds = %tmc_etr_init_caps.exit.i
  %fwnode.i.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 28
  %60 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fwnode.i.i, align 4
  %call.i.i138 = call zeroext i1 @fwnode_property_present(ptr noundef %61, ptr noundef nonnull @.str.43) #9
  br i1 %call.i.i138, label %if.then3.i, label %land.lhs.true.i.if.end4.i_crit_edge

land.lhs.true.i.if.end4.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.then3.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %etr_caps.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %etr_caps.i.i, align 4
  %or.i.i = or i32 %63, 1
  store i32 %or.i.i, ptr %etr_caps.i.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %land.lhs.true.i.if.end4.i_crit_edge, %tmc_etr_init_caps.exit.i.if.end4.i_crit_edge
  %and5.i = and i32 %9, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %shr.i139 = lshr i32 %9, 17
  %and8.i = and i32 %shr.i139, 127
  %dma_mask.0.i = select i1 %tobool6.not.i, i32 0, i32 %and8.i
  %64 = add nsw i32 %dma_mask.0.i, -32
  %65 = call i32 @llvm.fshl.i32(i32 %64, i32 %64, i32 30) #9
  %66 = zext i32 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %65, label %if.end4.i.cond.false.i_crit_edge [
    i32 0, label %if.end4.i.sw.epilog.i_crit_edge
    i32 2, label %if.end4.i.sw.epilog.i_crit_edge147
    i32 3, label %if.end4.i.sw.epilog.i_crit_edge148
    i32 4, label %if.end4.i.sw.epilog.i_crit_edge149
    i32 5, label %if.end4.i.sw.epilog.i_crit_edge150
  ]

if.end4.i.sw.epilog.i_crit_edge150:               ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.end4.i.sw.epilog.i_crit_edge149:               ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.end4.i.sw.epilog.i_crit_edge148:               ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.end4.i.sw.epilog.i_crit_edge147:               ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.end4.i.sw.epilog.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.end4.i.cond.false.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false.i

sw.epilog.i:                                      ; preds = %if.end4.i.sw.epilog.i_crit_edge, %if.end4.i.sw.epilog.i_crit_edge147, %if.end4.i.sw.epilog.i_crit_edge148, %if.end4.i.sw.epilog.i_crit_edge149, %if.end4.i.sw.epilog.i_crit_edge150
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %adev, ptr noundef nonnull @.str.36, i32 noundef %dma_mask.0.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %dma_mask.0.i)
  %cmp.i140 = icmp eq i32 %dma_mask.0.i, 64
  br i1 %cmp.i140, label %sw.epilog.i.cond.end.i_crit_edge, label %sw.epilog.i.cond.false.i_crit_edge

sw.epilog.i.cond.false.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false.i

sw.epilog.i.cond.end.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.false.i:                                     ; preds = %sw.epilog.i.cond.false.i_crit_edge, %if.end4.i.cond.false.i_crit_edge
  %dma_mask.137.i = phi i32 [ %dma_mask.0.i, %sw.epilog.i.cond.false.i_crit_edge ], [ 40, %if.end4.i.cond.false.i_crit_edge ]
  %sh_prom.i = zext i32 %dma_mask.137.i to i64
  %notmask.i = shl nsw i64 -1, %sh_prom.i
  %sub.i = xor i64 %notmask.i, -1
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %sw.epilog.i.cond.end.i_crit_edge
  %cond.i = phi i64 [ %sub.i, %cond.false.i ], [ -1, %sw.epilog.i.cond.end.i_crit_edge ]
  %call.i33.i = call i32 @dma_set_mask(ptr noundef %adev, i64 noundef %cond.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33.i)
  %cmp.i34.i = icmp eq i32 %call.i33.i, 0
  br i1 %cmp.i34.i, label %if.end35, label %do.end15.i

do.end15.i:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.40, i32 noundef %call.i33.i) #12
  br label %out

if.end35:                                         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i = call i32 @dma_set_coherent_mask(ptr noundef %adev, i64 noundef %cond.i) #9
  %idr = getelementptr inbounds %struct.tmc_drvdata, ptr %call.i, i32 0, i32 15
  call void @__raw_spin_lock_init(ptr noundef %idr, ptr noundef nonnull @.str.44, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #9
  %xa_flags.i.i.i = getelementptr inbounds %struct.tmc_drvdata, ptr %call.i, i32 0, i32 15, i32 0, i32 1
  %67 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 67108868, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.tmc_drvdata, ptr %call.i, i32 0, i32 15, i32 0, i32 2
  %68 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %xa_head.i.i.i, align 4
  %idr_base.i.i = getelementptr inbounds %struct.tmc_drvdata, ptr %call.i, i32 0, i32 15, i32 1
  %69 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %idr_base.i.i, align 4
  %idr_next.i.i = getelementptr inbounds %struct.tmc_drvdata, ptr %call.i, i32 0, i32 15, i32 2
  %70 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %idr_next.i.i, align 4
  %idr_mutex = getelementptr inbounds %struct.tmc_drvdata, ptr %call.i, i32 0, i32 16
  call void @__mutex_init(ptr noundef %idr_mutex, ptr noundef nonnull @.str.10, ptr noundef nonnull @tmc_probe.__key.9) #9
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 3, ptr %desc, align 4
  %subtype41 = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 1
  %72 = ptrtoint ptr %subtype41 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 2, ptr %subtype41, align 4
  %link_subtype = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 1, i32 0, i32 1
  %73 = ptrtoint ptr %link_subtype to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 3, ptr %link_subtype, align 4
  %ops44 = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 2
  %74 = ptrtoint ptr %ops44 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @tmc_etf_cs_ops, ptr %ops44, align 4
  br label %sw.epilog

do.end47:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 6
  %75 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %name, align 4
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %76) #12
  br label %out

sw.epilog:                                        ; preds = %sw.bb39, %if.end35, %sw.bb
  %dev_list.0 = phi ptr [ @etf_devs, %sw.bb39 ], [ @etr_devs, %if.end35 ], [ @etb_devs, %sw.bb ]
  %call50 = call ptr @coresight_alloc_device_name(ptr noundef nonnull %dev_list.0, ptr noundef %adev) #9
  %name51 = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 6
  %77 = ptrtoint ptr %name51 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call50, ptr %name51, align 4
  %tobool53.not = icmp eq ptr %call50, null
  br i1 %tobool53.not, label %sw.epilog.out_crit_edge, label %if.end55

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end55:                                         ; preds = %sw.epilog
  %call56 = call ptr @coresight_get_platform_data(ptr noundef %adev) #9
  %cmp.i142 = icmp ugt ptr %call56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i142, label %if.then58, label %if.end60

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %call56 to i32
  br label %out

if.end60:                                         ; preds = %if.end55
  %platform_data = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 7
  %79 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call56, ptr %platform_data, align 8
  %pdata62 = getelementptr inbounds %struct.coresight_desc, ptr %desc, i32 0, i32 3
  %80 = ptrtoint ptr %pdata62 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call56, ptr %pdata62, align 4
  %call63 = call ptr @coresight_register(ptr noundef nonnull %desc) #9
  %csdev = getelementptr inbounds %struct.tmc_drvdata, ptr %call.i, i32 0, i32 1
  %81 = ptrtoint ptr %csdev to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call63, ptr %csdev, align 4
  %cmp.i143 = icmp ugt ptr %call63, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i143, label %if.then66, label %if.end69

if.then66:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %call63 to i32
  br label %out

if.end69:                                         ; preds = %if.end60
  %83 = ptrtoint ptr %name51 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %name51, align 4
  %miscdev = getelementptr inbounds %struct.tmc_drvdata, ptr %call.i, i32 0, i32 2
  %name71 = getelementptr inbounds %struct.tmc_drvdata, ptr %call.i, i32 0, i32 2, i32 1
  %85 = ptrtoint ptr %name71 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %84, ptr %name71, align 4
  %86 = ptrtoint ptr %miscdev to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 255, ptr %miscdev, align 4
  %fops = getelementptr inbounds %struct.tmc_drvdata, ptr %call.i, i32 0, i32 2, i32 2
  %87 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @tmc_fops, ptr %fops, align 4
  %call75 = call i32 @misc_register(ptr noundef %miscdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.else79, label %if.then77

if.then77:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %csdev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %csdev, align 4
  call void @coresight_unregister(ptr noundef %89) #9
  br label %out

if.else79:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  %call.i144 = call i32 @__pm_runtime_idle(ptr noundef %adev, i32 noundef 5) #9
  br label %out

out:                                              ; preds = %if.else79, %if.then77, %if.then66, %if.then58, %sw.epilog.out_crit_edge, %do.end47, %do.end15.i, %coresight_get_uci_data.exit.out_crit_edge, %if.then5, %entry.out_crit_edge
  %ret.0 = phi i32 [ %2, %if.then5 ], [ -22, %do.end47 ], [ %78, %if.then58 ], [ %82, %if.then66 ], [ %call75, %if.then77 ], [ 0, %if.else79 ], [ -12, %entry.out_crit_edge ], [ -12, %sw.epilog.out_crit_edge ], [ %call.i33.i, %do.end15.i ], [ -13, %coresight_get_uci_data.exit.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %desc) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tmc_remove(ptr nocapture noundef readonly %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %miscdev = getelementptr inbounds %struct.tmc_drvdata, ptr %1, i32 0, i32 2
  tail call void @misc_deregister(ptr noundef %miscdev) #9
  %csdev = getelementptr inbounds %struct.tmc_drvdata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %csdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csdev, align 4
  tail call void @coresight_unregister(ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tmc_shutdown(ptr nocapture noundef readonly %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %spinlock = getelementptr inbounds %struct.tmc_drvdata, ptr %1, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #9
  %mode = getelementptr inbounds %struct.tmc_drvdata, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6 = icmp eq i32 %3, 0
  br i1 %cmp6, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %config_type = getelementptr inbounds %struct.tmc_drvdata, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %config_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %config_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp8 = icmp eq i32 %5, 1
  br i1 %cmp8, label %if.then10, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @tmc_etr_disable_hw(ptr noundef %1) #9
  br label %out

out:                                              ; preds = %if.then10, %if.end.out_crit_edge, %entry.out_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @coresight_alloc_device_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @coresight_get_platform_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @coresight_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @coresight_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trigger_cntr_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %trigger_cntr = getelementptr inbounds %struct.tmc_drvdata, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %trigger_cntr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %trigger_cntr, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %5)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trigger_cntr_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !179
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %trigger_cntr = getelementptr inbounds %struct.tmc_drvdata, ptr %4, i32 0, i32 13
  %7 = ptrtoint ptr %trigger_cntr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %trigger_cntr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @buffer_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %size = getelementptr inbounds %struct.tmc_drvdata, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.18, i32 noundef %5)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @buffer_size_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !179
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %config_type = getelementptr inbounds %struct.tmc_drvdata, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %config_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %config_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.not = icmp eq i32 %6, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %and = and i32 %8, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %size7 = getelementptr inbounds %struct.tmc_drvdata, ptr %4, i32 0, i32 8
  %9 = ptrtoint ptr %size7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %size7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %if.end6 ], [ -1, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsz_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !177
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  %conv.i = zext i32 %7 to i64
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #9
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.21, i64 noundef %conv.i) #9
  ret i32 %call8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sts_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !177
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  %conv.i = zext i32 %7 to i64
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #9
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.21, i64 noundef %conv.i) #9
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rrp_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !177
  %add.ptr3.i = getelementptr i8, ptr %5, i32 56
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #9, !srcloc !177
  %8 = zext i32 %7 to i64
  %9 = zext i32 %6 to i64
  %10 = shl nuw i64 %9, 32
  %11 = or i64 %10, %8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11)
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %14, i32 noundef 4) #9
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.21, i64 noundef %12) #9
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rwp_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !177
  %add.ptr3.i = getelementptr i8, ptr %5, i32 60
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #9, !srcloc !177
  %8 = zext i32 %7 to i64
  %9 = zext i32 %6 to i64
  %10 = shl nuw i64 %9, 32
  %11 = or i64 %10, %8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11)
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %14, i32 noundef 4) #9
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.21, i64 noundef %12) #9
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trg_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 28
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !177
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  %conv.i = zext i32 %7 to i64
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #9
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.21, i64 noundef %conv.i) #9
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctl_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 32
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !177
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  %conv.i = zext i32 %7 to i64
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #9
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.21, i64 noundef %conv.i) #9
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ffsr_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 768
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !177
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  %conv.i = zext i32 %7 to i64
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #9
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.21, i64 noundef %conv.i) #9
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ffcr_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 772
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !177
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  %conv.i = zext i32 %7 to i64
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #9
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.21, i64 noundef %conv.i) #9
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mode_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 40
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !177
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  %conv.i = zext i32 %7 to i64
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #9
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.21, i64 noundef %conv.i) #9
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pscr_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 776
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !177
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  %conv.i = zext i32 %7 to i64
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #9
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.21, i64 noundef %conv.i) #9
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devid_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4040
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !177
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  %conv.i = zext i32 %7 to i64
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #9
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.21, i64 noundef %conv.i) #9
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dba_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 280
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !177
  %add.ptr3.i = getelementptr i8, ptr %5, i32 284
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #9, !srcloc !177
  %8 = zext i32 %7 to i64
  %9 = zext i32 %6 to i64
  %10 = shl nuw i64 %9, 32
  %11 = or i64 %10, %8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11)
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %14, i32 noundef 4) #9
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.21, i64 noundef %12) #9
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axictl_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 272
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !177
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  %conv.i = zext i32 %7 to i64
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #9
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.21, i64 noundef %conv.i) #9
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @authstatus_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4024
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !177
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  %conv.i = zext i32 %7 to i64
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #9
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.21, i64 noundef %conv.i) #9
  ret i32 %call8
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fwnode_property_present(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmc_read(ptr nocapture noundef readonly %file, ptr noundef %data, i32 noundef %len, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  %bufp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bufp) #9
  %0 = ptrtoint ptr %bufp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bufp, align 4, !annotation !179
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 -8
  %3 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %ppos, align 8
  %config_type.i = getelementptr i8, ptr %2, i32 112
  %5 = ptrtoint ptr %config_type.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %config_type.i, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %6, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.bb.i_crit_edge
    i32 2, label %entry.sw.bb.i_crit_edge51
    i32 1, label %sw.bb1.i
  ]

entry.sw.bb.i_crit_edge51:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge51
  %call.i = call i32 @tmc_etb_get_sysfs_trace(ptr noundef %add.ptr, i64 noundef %4, i32 noundef %len, ptr noundef nonnull %bufp) #9
  br label %tmc_get_sysfs_trace.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i = call i32 @tmc_etr_get_sysfs_trace(ptr noundef %add.ptr, i64 noundef %4, i32 noundef %len, ptr noundef nonnull %bufp) #9
  br label %tmc_get_sysfs_trace.exit

tmc_get_sysfs_trace.exit:                         ; preds = %sw.bb1.i, %sw.bb.i
  %retval.0.i41 = phi i32 [ %call2.i, %sw.bb1.i ], [ %call.i, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i41)
  %cmp = icmp slt i32 %retval.0.i41, 1
  br i1 %cmp, label %tmc_get_sysfs_trace.exit.cleanup_crit_edge, label %if.end

tmc_get_sysfs_trace.exit.cleanup_crit_edge:       ; preds = %tmc_get_sysfs_trace.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %tmc_get_sysfs_trace.exit
  %8 = ptrtoint ptr %bufp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bufp, align 4
  call void @__check_object_size(ptr noundef %9, i32 noundef %retval.0.i41, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.53, i32 noundef 174) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.end.do.body_crit_edge, label %if.end.i.i

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end.i.i:                                       ; preds = %if.end
  %10 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 %retval.0.i41, i32 -1226833920) #13, !srcloc !181
  %asmresult.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.do.body_crit_edge

if.end.i.i.do.body_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %9, i32 noundef %retval.0.i41) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %data, ptr noundef %9, i32 noundef %retval.0.i41) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool.not, label %if.end10, label %copy_to_user.exit.do.body_crit_edge

copy_to_user.exit.do.body_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %copy_to_user.exit.do.body_crit_edge, %if.end.i.i.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tmc_read.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tmc_read, %if.then8)) #9
          to label %cleanup [label %if.then8], !srcloc !182

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %csdev = getelementptr i8, ptr %2, i32 -4
  %11 = ptrtoint ptr %csdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %csdev, align 4
  %dev = getelementptr inbounds %struct.coresight_device, ptr %12, i32 0, i32 5
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tmc_read.__UNIQUE_ID_ddebug302, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48) #9
  br label %cleanup

if.end10:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv50 = zext i32 %retval.0.i41 to i64
  %13 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %ppos, align 8
  %add = add i64 %14, %conv50
  store i64 %add, ptr %ppos, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tmc_read.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tmc_read, %if.then23)) #9
          to label %cleanup [label %if.then23], !srcloc !182

if.then23:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %csdev24 = getelementptr i8, ptr %2, i32 -4
  %15 = ptrtoint ptr %csdev24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %csdev24, align 4
  %dev25 = getelementptr inbounds %struct.coresight_device, ptr %16, i32 0, i32 5
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tmc_read.__UNIQUE_ID_ddebug303, ptr noundef %dev25, ptr noundef nonnull @.str.50, i32 noundef %retval.0.i41) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.end10, %if.then8, %do.body, %tmc_get_sysfs_trace.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %tmc_get_sysfs_trace.exit.cleanup_crit_edge ], [ -14, %if.then8 ], [ %retval.0.i41, %if.then23 ], [ -14, %do.body ], [ %retval.0.i41, %if.end10 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bufp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmc_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -8
  %config_type.i = getelementptr i8, ptr %1, i32 112
  %2 = ptrtoint ptr %config_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %config_type.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.bb.i_crit_edge
    i32 2, label %entry.sw.bb.i_crit_edge16
    i32 1, label %sw.bb1.i
  ]

entry.sw.bb.i_crit_edge16:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge16
  %call.i = tail call i32 @tmc_read_prepare_etb(ptr noundef %add.ptr) #9
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i = tail call i32 @tmc_read_prepare_etr(ptr noundef %add.ptr) #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i, %sw.bb.i
  %ret.0.i = phi i32 [ %call2.i, %sw.bb1.i ], [ %call.i, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %sw.epilog.i.cleanup_crit_edge

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.i:                                        ; preds = %sw.epilog.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tmc_read_prepare.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tmc_open, %if.then7.i)) #9
          to label %if.end [label %if.then7.i], !srcloc !182

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %csdev.i = getelementptr i8, ptr %1, i32 -4
  %5 = ptrtoint ptr %csdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %csdev.i, align 4
  %dev.i = getelementptr inbounds %struct.coresight_device, ptr %6, i32 0, i32 5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tmc_read_prepare.__UNIQUE_ID_ddebug299, ptr noundef %dev.i, ptr noundef nonnull @.str.57) #9
  br label %if.end

if.end:                                           ; preds = %if.then7.i, %do.body.i
  %call1 = tail call i32 @nonseekable_open(ptr noundef %inode, ptr noundef %file) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tmc_open.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tmc_open, %if.then7)) #9
          to label %cleanup [label %if.then7], !srcloc !182

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %csdev = getelementptr i8, ptr %1, i32 -4
  %7 = ptrtoint ptr %csdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %csdev, align 4
  %dev = getelementptr inbounds %struct.coresight_device, ptr %8, i32 0, i32 5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tmc_open.__UNIQUE_ID_ddebug301, ptr noundef %dev, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.54) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end, %sw.epilog.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then7 ], [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ], [ %ret.0.i, %sw.epilog.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmc_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -8
  %config_type.i = getelementptr i8, ptr %1, i32 112
  %2 = ptrtoint ptr %config_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %config_type.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.bb.i_crit_edge
    i32 2, label %entry.sw.bb.i_crit_edge14
    i32 1, label %sw.bb1.i
  ]

entry.sw.bb.i_crit_edge14:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge14
  %call.i = tail call i32 @tmc_read_unprepare_etb(ptr noundef %add.ptr) #9
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i = tail call i32 @tmc_read_unprepare_etr(ptr noundef %add.ptr) #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i, %sw.bb.i
  %ret.0.i = phi i32 [ %call2.i, %sw.bb1.i ], [ %call.i, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %sw.epilog.i.cleanup_crit_edge

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.i:                                        ; preds = %sw.epilog.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tmc_read_unprepare.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tmc_release, %if.then7.i)) #9
          to label %do.body [label %if.then7.i], !srcloc !182

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %csdev.i = getelementptr i8, ptr %1, i32 -4
  %5 = ptrtoint ptr %csdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %csdev.i, align 4
  %dev.i = getelementptr inbounds %struct.coresight_device, ptr %6, i32 0, i32 5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tmc_read_unprepare.__UNIQUE_ID_ddebug300, ptr noundef %dev.i, ptr noundef nonnull @.str.61) #9
  br label %do.body

do.body:                                          ; preds = %if.then7.i, %do.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tmc_release.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tmc_release, %if.then6)) #9
          to label %cleanup [label %if.then6], !srcloc !182

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %csdev = getelementptr i8, ptr %1, i32 -4
  %7 = ptrtoint ptr %csdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %csdev, align 4
  %dev = getelementptr inbounds %struct.coresight_device, ptr %8, i32 0, i32 5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tmc_release.__UNIQUE_ID_ddebug304, ptr noundef %dev, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.58) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %do.body, %sw.epilog.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then6 ], [ 0, %do.body ], [ -22, %entry.cleanup_crit_edge ], [ %ret.0.i, %sw.epilog.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tmc_etb_get_sysfs_trace(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tmc_etr_get_sysfs_trace(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tmc_read_prepare_etb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tmc_read_prepare_etr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tmc_read_unprepare_etb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tmc_read_unprepare_etr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tmc_etr_disable_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !18, !20, !22, !23, !25, !27, !29, !30, !32, !33, !35, !36, !37, !38, !40, !42, !44, !46, !48, !50, !51, !53, !55, !56, !58, !60, !62, !64, !66, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !114, !115, !116, !118, !119, !120, !122, !124, !126, !127, !129, !130, !132, !133, !135, !137, !138, !139, !140, !142, !143, !145, !146, !148, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166}
!llvm.module.flags = !{!168, !169, !170, !171, !172, !173, !174, !175}
!llvm.ident = !{!176}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 41, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @tmc_wait_for_tmcready._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @tmc_wait_for_tmcready._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 59, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @tmc_flush_and_stop._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @tmc_flush_and_stop._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @__initcall__kmod_coresight_tmc__305_621_tmc_driver_init6, !14, !"__initcall__kmod_coresight_tmc__305_621_tmc_driver_init6", i1 false, i1 false}
!14 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 621, i32 1}
!15 = !{ptr @__exitcall_tmc_driver_exit, !14, !"__exitcall_tmc_driver_exit", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_author306, !17, !"__UNIQUE_ID_author306", i1 false, i1 false}
!17 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 623, i32 1}
!18 = !{ptr @__UNIQUE_ID_description307, !19, !"__UNIQUE_ID_description307", i1 false, i1 false}
!19 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 624, i32 1}
!20 = !{ptr @__UNIQUE_ID_file308, !21, !"__UNIQUE_ID_file308", i1 false, i1 false}
!21 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 625, i32 1}
!22 = !{ptr @__UNIQUE_ID_license309, !21, !"__UNIQUE_ID_license309", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 611, i32 13}
!25 = !{ptr @tmc_driver, !26, !"tmc_driver", i1 false, i1 false}
!26 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 609, i32 27}
!27 = !{ptr @tmc_probe.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 479, i32 2}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @tmc_probe.__key.9, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 513, i32 3}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 524, i32 3}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @tmc_probe._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @tmc_probe._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 430, i32 44}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 439, i32 44}
!42 = !{ptr @coresight_tmc_groups, !43, !"coresight_tmc_groups", i1 false, i1 false}
!43 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 365, i32 38}
!44 = !{ptr @coresight_tmc_group, !45, !"coresight_tmc_group", i1 false, i1 false}
!45 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 356, i32 37}
!46 = !{ptr @coresight_tmc_attrs, !47, !"coresight_tmc_attrs", i1 false, i1 false}
!47 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 350, i32 26}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 316, i32 8}
!50 = !{ptr @dev_attr_trigger_cntr, !49, !"dev_attr_trigger_cntr", i1 false, i1 false}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 298, i32 22}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 348, i32 8}
!55 = !{ptr @dev_attr_buffer_size, !54, !"dev_attr_buffer_size", i1 false, i1 false}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 323, i32 22}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 362, i32 10}
!60 = !{ptr @coresight_tmc_mgmt_group, !61, !"coresight_tmc_mgmt_group", i1 false, i1 false}
!61 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 360, i32 37}
!62 = !{ptr @coresight_tmc_mgmt_attrs, !63, !"coresight_tmc_mgmt_attrs", i1 false, i1 false}
!63 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 274, i32 26}
!64 = !{ptr @.str.20, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 259, i32 1}
!66 = !{ptr @dev_attr_rsz, !65, !"dev_attr_rsz", i1 false, i1 false}
!67 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 260, i32 1}
!70 = !{ptr @dev_attr_sts, !69, !"dev_attr_sts", i1 false, i1 false}
!71 = !{ptr @.str.23, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 270, i32 1}
!73 = !{ptr @dev_attr_rrp, !72, !"dev_attr_rrp", i1 false, i1 false}
!74 = !{ptr @.str.24, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 271, i32 1}
!76 = !{ptr @dev_attr_rwp, !75, !"dev_attr_rwp", i1 false, i1 false}
!77 = !{ptr @.str.25, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 261, i32 1}
!79 = !{ptr @dev_attr_trg, !78, !"dev_attr_trg", i1 false, i1 false}
!80 = !{ptr @.str.26, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 262, i32 1}
!82 = !{ptr @dev_attr_ctl, !81, !"dev_attr_ctl", i1 false, i1 false}
!83 = !{ptr @.str.27, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 263, i32 1}
!85 = !{ptr @dev_attr_ffsr, !84, !"dev_attr_ffsr", i1 false, i1 false}
!86 = !{ptr @.str.28, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 264, i32 1}
!88 = !{ptr @dev_attr_ffcr, !87, !"dev_attr_ffcr", i1 false, i1 false}
!89 = !{ptr @.str.29, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 265, i32 1}
!91 = !{ptr @dev_attr_mode, !90, !"dev_attr_mode", i1 false, i1 false}
!92 = !{ptr @.str.30, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 266, i32 1}
!94 = !{ptr @dev_attr_pscr, !93, !"dev_attr_pscr", i1 false, i1 false}
!95 = !{ptr @.str.31, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 269, i32 1}
!97 = !{ptr @dev_attr_devid, !96, !"dev_attr_devid", i1 false, i1 false}
!98 = !{ptr @.str.32, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 272, i32 1}
!100 = !{ptr @dev_attr_dba, !99, !"dev_attr_dba", i1 false, i1 false}
!101 = !{ptr @.str.33, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 267, i32 1}
!103 = !{ptr @dev_attr_axictl, !102, !"dev_attr_axictl", i1 false, i1 false}
!104 = !{ptr @.str.34, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 268, i32 1}
!106 = !{ptr @dev_attr_authstatus, !105, !"dev_attr_authstatus", i1 false, i1 false}
!107 = !{ptr @.str.35, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 30, i32 1}
!109 = !{ptr @etb_devs, !108, !"etb_devs", i1 false, i1 false}
!110 = !{ptr @.str.36, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 414, i32 3}
!112 = !{ptr @.str.37, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.38, !111, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @tmc_etr_setup_caps._entry, !111, !"_entry", i1 false, i1 false}
!115 = !{ptr @tmc_etr_setup_caps._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.40, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 422, i32 3}
!118 = !{ptr @tmc_etr_setup_caps._entry.39, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @tmc_etr_setup_caps._entry_ptr.41, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.42, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/hwtracing/coresight/coresight-tmc.h", i32 300, i32 2}
!122 = !{ptr @.str.43, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 373, i32 46}
!124 = !{ptr @xa_init_flags.__key, !125, !"__key", i1 false, i1 false}
!125 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!126 = !{ptr @.str.44, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.45, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 32, i32 1}
!129 = !{ptr @etr_devs, !128, !"etr_devs", i1 false, i1 false}
!130 = !{ptr @.str.46, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 31, i32 1}
!132 = !{ptr @etf_devs, !131, !"etf_devs", i1 false, i1 false}
!133 = !{ptr @tmc_fops, !134, !"tmc_fops", i1 false, i1 false}
!134 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 213, i32 37}
!135 = !{ptr @.str.47, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 188, i32 3}
!137 = !{ptr @.str.48, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.49, !136, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @tmc_read.__UNIQUE_ID_ddebug302, !136, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!140 = !{ptr @.str.50, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 194, i32 2}
!142 = !{ptr @tmc_read.__UNIQUE_ID_ddebug303, !141, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!143 = distinct !{null, !144, !"__already_done", i1 false, i1 false}
!144 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!145 = !{ptr @.str.51, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.52, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!148 = !{ptr @.str.53, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!150 = !{ptr @.str.54, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 158, i32 2}
!152 = !{ptr @.str.55, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @tmc_open.__UNIQUE_ID_ddebug301, !151, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!154 = !{ptr @.str.56, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 119, i32 3}
!156 = !{ptr @.str.57, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @tmc_read_prepare.__UNIQUE_ID_ddebug299, !155, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!158 = !{ptr @.str.58, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 209, i32 2}
!160 = !{ptr @.str.59, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @tmc_release.__UNIQUE_ID_ddebug304, !159, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!162 = !{ptr @.str.60, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 141, i32 3}
!164 = !{ptr @.str.61, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @tmc_read_unprepare.__UNIQUE_ID_ddebug300, !163, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!166 = !{ptr @tmc_ids, !167, !"tmc_ids", i1 false, i1 false}
!167 = !{!"../drivers/hwtracing/coresight/coresight-tmc-core.c", i32 596, i32 29}
!168 = !{i32 1, !"wchar_size", i32 2}
!169 = !{i32 1, !"min_enum_size", i32 4}
!170 = !{i32 8, !"branch-target-enforcement", i32 0}
!171 = !{i32 8, !"sign-return-address", i32 0}
!172 = !{i32 8, !"sign-return-address-all", i32 0}
!173 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!174 = !{i32 7, !"uwtable", i32 1}
!175 = !{i32 7, !"frame-pointer", i32 2}
!176 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!177 = !{i64 4784716}
!178 = !{i64 4784298}
!179 = !{!"auto-init"}
!180 = !{!"branch_weights", i32 2000, i32 1}
!181 = !{i64 2152740517, i64 2152740542}
!182 = !{i64 2148705080, i64 2148705085, i64 2148705098, i64 2148705142, i64 2148705176, i64 2148705197}
