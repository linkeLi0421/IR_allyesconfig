; ModuleID = '/llk/IR_all_yes/drivers/staging/greybus/loopback.c_pt.bc'
source_filename = "../drivers/staging/greybus/loopback.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.gb_loopback_device = type { ptr, i32, i32, %struct.spinlock, %struct.wait_queue_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.greybus_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.greybus_bundle_id = type { i16, i32, i32, i8, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.atomic_t = type { i32 }
%struct.gb_bundle = type { %struct.device, ptr, i8, i8, i8, i8, i32, ptr, %struct.list_head, ptr, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.greybus_descriptor_cport = type { i16, i8, i8 }
%struct.gb_loopback = type { ptr, ptr, %struct.kfifo, %struct.mutex, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, i64, %struct.gb_loopback_stats, %struct.gb_loopback_stats, %struct.gb_loopback_stats, %struct.gb_loopback_stats, %struct.gb_loopback_stats, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.kfifo = type { %union.anon.71, [0 x i8] }
%union.anon.71 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.gb_loopback_stats = type { i32, i32, i64, i32 }
%struct.gb_connection = type { ptr, ptr, ptr, %struct.kref, i16, i16, %struct.list_head, %struct.list_head, ptr, i32, %struct.mutex, %struct.spinlock, i32, %struct.list_head, [16 x i8], ptr, %struct.atomic_t, ptr, i8 }
%struct.gb_operation = type { ptr, ptr, ptr, i32, i8, i16, i32, %struct.work_struct, ptr, %struct.completion, %struct.timer_list, %struct.kref, %struct.atomic_t, i32, %struct.list_head, ptr }
%struct.gb_message = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gb_loopback_transfer_response = type { i32, i32, i32, [0 x i8] }
%struct.gb_loopback_transfer_request = type { i32, i32, i32, [0 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.68 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.70 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.gb_loopback_async_operation = type { ptr, ptr, i64, ptr }

@__param_str_kfifo_depth = internal constant [24 x i8] c"gb_loopback.kfifo_depth\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@kfifo_depth = internal global { i32, [28 x i8] } { i32 8192, [28 x i8] zeroinitializer }, align 32
@__param_kfifo_depth = internal constant %struct.kernel_param { ptr @__param_str_kfifo_depth, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @kfifo_depth } }, section "__param", align 4
@__UNIQUE_ID_kfifo_depthtype229 = internal constant [38 x i8] c"gb_loopback.parmtype=kfifo_depth:uint\00", section ".modinfo", align 1
@__initcall__kmod_gb_loopback__233_1167_loopback_init6 = internal global ptr @loopback_init, section ".initcall6.init", align 4
@gb_dev = internal global { %struct.gb_loopback_device, [52 x i8] } zeroinitializer, align 32
@gb_loopback_driver = internal global { %struct.greybus_driver, [36 x i8] } { %struct.greybus_driver { ptr @.str.3, ptr @gb_loopback_probe, ptr @gb_loopback_disconnect, ptr @gb_loopback_id_table, %struct.device_driver zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@loopback_class = internal global { %struct.class, [36 x i8] } { %struct.class { ptr @.str.1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@loopback_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.79, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@__exitcall_loopback_exit = internal global ptr @loopback_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file234 = internal constant [53 x i8] c"gb_loopback.file=drivers/staging/greybus/gb-loopback\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [27 x i8] c"gb_loopback.license=GPL v2\00", section ".modinfo", align 1
@loopback_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&gb_dev.lock\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gb_loopback\00", [20 x i8] zeroinitializer }, align 32
@loopback_init.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"loopback\00", [23 x i8] zeroinitializer }, align 32
@gb_loopback_id_table = internal constant { [2 x %struct.greybus_bundle_id], [56 x i8] } { [2 x %struct.greybus_bundle_id] [%struct.greybus_bundle_id { i16 4, i32 0, i32 0, i8 17, i32 0 }, %struct.greybus_bundle_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@gb_loopback_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"&gb->wq\00", [24 x i8] zeroinitializer }, align 32
@gb_loopback_probe.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&gb->wq_completion\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"raw_latency_%s\00", [17 x i8] zeroinitializer }, align 32
@gb_loopback_dbgfs_latency_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @gb_loopback_dbgfs_latency_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@loopback_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @loopback_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gb_loopback%d\00", [18 x i8] zeroinitializer }, align 32
@gb_loopback_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&gb->mutex\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gb_loopback_request_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.13, i32 670, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"transfer request too small (%zu < %zu)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"gb_loopback_request_handler\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/staging/greybus/loopback.c\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gb_loopback_request_handler._entry_ptr = internal global ptr @gb_loopback_request_handler._entry, section ".printk_index", align 4
@gb_loopback_request_handler._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.13, i32 677, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"transfer request too large (%zu > %zu)\0A\00", [56 x i8] zeroinitializer }, align 32
@gb_loopback_request_handler._entry_ptr.18 = internal global ptr @gb_loopback_request_handler._entry.16, section ".printk_index", align 4
@gb_loopback_request_handler._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.13, i32 683, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error allocating response\0A\00", [37 x i8] zeroinitializer }, align 32
@gb_loopback_request_handler._entry_ptr.21 = internal global ptr @gb_loopback_request_handler._entry.19, section ".printk_index", align 4
@gb_loopback_request_handler._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.12, ptr @.str.13, i32 693, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unsupported request: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@gb_loopback_request_handler._entry_ptr.24 = internal global ptr @gb_loopback_request_handler._entry.22, section ".printk_index", align 4
@__const.gb_loopback_reset_stats.reset = private unnamed_addr constant { i32, i32, i64, i32, [4 x i8] } { i32 -1, i32 0, i64 0, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@loopback_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @loopback_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@loopback_attrs = internal global { [29 x ptr], [44 x i8] } { [29 x ptr] [ptr @dev_attr_latency_min, ptr @dev_attr_latency_max, ptr @dev_attr_latency_avg, ptr @dev_attr_requests_per_second_min, ptr @dev_attr_requests_per_second_max, ptr @dev_attr_requests_per_second_avg, ptr @dev_attr_throughput_min, ptr @dev_attr_throughput_max, ptr @dev_attr_throughput_avg, ptr @dev_attr_apbridge_unipro_latency_min, ptr @dev_attr_apbridge_unipro_latency_max, ptr @dev_attr_apbridge_unipro_latency_avg, ptr @dev_attr_gbphy_firmware_latency_min, ptr @dev_attr_gbphy_firmware_latency_max, ptr @dev_attr_gbphy_firmware_latency_avg, ptr @dev_attr_type, ptr @dev_attr_size, ptr @dev_attr_us_wait, ptr @dev_attr_iteration_count, ptr @dev_attr_iteration_max, ptr @dev_attr_async, ptr @dev_attr_error, ptr @dev_attr_requests_completed, ptr @dev_attr_requests_timedout, ptr @dev_attr_timeout, ptr @dev_attr_outstanding_operations_max, ptr @dev_attr_timeout_min, ptr @dev_attr_timeout_max, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_latency_min = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @latency_min_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_latency_max = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @latency_max_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_latency_avg = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @latency_avg_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_requests_per_second_min = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @requests_per_second_min_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_requests_per_second_max = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @requests_per_second_max_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_requests_per_second_avg = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @requests_per_second_avg_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_throughput_min = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @throughput_min_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_throughput_max = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @throughput_max_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_throughput_avg = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @throughput_avg_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_apbridge_unipro_latency_min = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @apbridge_unipro_latency_min_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_apbridge_unipro_latency_max = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @apbridge_unipro_latency_max_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_apbridge_unipro_latency_avg = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @apbridge_unipro_latency_avg_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_gbphy_firmware_latency_min = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @gbphy_firmware_latency_min_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_gbphy_firmware_latency_max = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @gbphy_firmware_latency_max_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_gbphy_firmware_latency_avg = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @gbphy_firmware_latency_avg_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @type_show, ptr @type_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @size_show, ptr @size_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_us_wait = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @us_wait_show, ptr @us_wait_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_iteration_count = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iteration_count_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_iteration_max = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iteration_max_show, ptr @iteration_max_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_async = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @async_show, ptr @async_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_error = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @error_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_requests_completed = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @requests_completed_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_requests_timedout = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @requests_timedout_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_timeout = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @timeout_show, ptr @timeout_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_outstanding_operations_max = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @outstanding_operations_max_show, ptr @outstanding_operations_max_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_timeout_min = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @timeout_min_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_timeout_max = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @timeout_max_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"latency_min\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"latency_max\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"latency_avg\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%llu.%06u\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"requests_per_second_min\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"requests_per_second_max\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"requests_per_second_avg\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"throughput_min\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"throughput_max\00", [17 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"throughput_avg\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"apbridge_unipro_latency_min\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"apbridge_unipro_latency_max\00", [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"apbridge_unipro_latency_avg\00", [36 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"gbphy_firmware_latency_min\00", [37 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"gbphy_firmware_latency_max\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"gbphy_firmware_latency_avg\00", [37 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@gb_loopback_check_attr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.13, i32 248, ptr @.str.49, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cannot log bytes %u kfifo_depth %u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gb_loopback_check_attr\00", [41 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@gb_loopback_check_attr._entry_ptr = internal global ptr @gb_loopback_check_attr._entry, section ".printk_index", align 4
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"size\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"us_wait\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"iteration_count\00", [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"iteration_max\00", [18 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"async\00", [26 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"error\00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"requests_completed\00", [45 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"requests_timedout\00", [46 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"timeout\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"outstanding_operations_max\00", [37 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"timeout_min\00", [20 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"timeout_max\00", [20 x i8] zeroinitializer }, align 32
@gb_loopback_fn.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.62, ptr @.str.13, ptr @.str.63, i8 0, i8 -36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gb_loopback_fn\00", [17 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"load test complete\0A\00", [44 x i8] zeroinitializer }, align 32
@gb_loopback_fn.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.62, ptr @.str.13, ptr @.str.64, i8 0, i8 -35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"continuing on with new test set\0A\00", [63 x i8] zeroinitializer }, align 32
@gb_pm_runtime_get_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.67, i32 54, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pm_runtime_get_sync failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gb_pm_runtime_get_sync\00", [41 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/linux/greybus/bundle.h\00", [33 x i8] zeroinitializer }, align 32
@gb_pm_runtime_get_sync._entry_ptr = internal global ptr @gb_pm_runtime_get_sync._entry, section ".printk_index", align 4
@gb_loopback_async_operation_callback.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.68, ptr @.str.13, ptr @.str.69, i8 0, i8 113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"gb_loopback_async_operation_callback\00", [59 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"complete operation %d\0A\00", [41 x i8] zeroinitializer }, align 32
@gb_loopback_async_transfer_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.13, i32 610, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Loopback Data doesn't match operation id %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"gb_loopback_async_transfer_complete\00", [60 x i8] zeroinitializer }, align 32
@gb_loopback_async_transfer_complete._entry_ptr = internal global ptr @gb_loopback_async_transfer_complete._entry, section ".printk_index", align 4
@gb_loopback_operation_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.13, i32 390, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"synchronous operation failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"gb_loopback_operation_sync\00", [37 x i8] zeroinitializer }, align 32
@gb_loopback_operation_sync._entry_ptr = internal global ptr @gb_loopback_operation_sync._entry, section ".printk_index", align 4
@gb_loopback_operation_sync._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.13, i32 400, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"response size %zu expected %d\0A\00", [33 x i8] zeroinitializer }, align 32
@gb_loopback_operation_sync._entry_ptr.76 = internal global ptr @gb_loopback_operation_sync._entry.74, section ".printk_index", align 4
@gb_loopback_sync_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.13, i32 555, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Loopback Data doesn't match\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"gb_loopback_sync_transfer\00", [38 x i8] zeroinitializer }, align 32
@gb_loopback_sync_transfer._entry_ptr = internal global ptr @gb_loopback_sync_transfer._entry, section ".printk_index", align 4
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"loopback_ida.xa_lock\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.81 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@___asan_gen_.83 = private unnamed_addr constant [12 x i8] c"kfifo_depth\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 113, i32 21 }
@___asan_gen_.86 = private unnamed_addr constant [7 x i8] c"gb_dev\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 50, i32 34 }
@___asan_gen_.89 = private unnamed_addr constant [19 x i8] c"gb_loopback_driver\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1137, i32 30 }
@___asan_gen_.92 = private unnamed_addr constant [15 x i8] c"loopback_class\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 101, i32 21 }
@___asan_gen_.95 = private unnamed_addr constant [13 x i8] c"loopback_ida\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1148, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1149, i32 35 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1151, i32 11 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1138, i32 11 }
@___asan_gen_.113 = private unnamed_addr constant [21 x i8] c"gb_loopback_id_table\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1131, i32 39 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1006, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1007, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1027, i32 31 }
@___asan_gen_.131 = private unnamed_addr constant [31 x i8] c"gb_loopback_dbgfs_latency_fops\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 970, i32 1 }
@___asan_gen_.134 = private unnamed_addr constant [16 x i8] c"loopback_groups\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1045, i32 6 }
@___asan_gen_.140 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1059, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 668, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 676, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 683, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 693, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 955, i32 17 }
@___asan_gen_.185 = private unnamed_addr constant [15 x i8] c"loopback_group\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 347, i32 1 }
@___asan_gen_.188 = private unnamed_addr constant [15 x i8] c"loopback_attrs\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 316, i32 26 }
@___asan_gen_.191 = private unnamed_addr constant [21 x i8] c"dev_attr_latency_min\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [21 x i8] c"dev_attr_latency_max\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [21 x i8] c"dev_attr_latency_avg\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [33 x i8] c"dev_attr_requests_per_second_min\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [33 x i8] c"dev_attr_requests_per_second_max\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [33 x i8] c"dev_attr_requests_per_second_avg\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [24 x i8] c"dev_attr_throughput_min\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [24 x i8] c"dev_attr_throughput_max\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [24 x i8] c"dev_attr_throughput_avg\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [37 x i8] c"dev_attr_apbridge_unipro_latency_min\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [37 x i8] c"dev_attr_apbridge_unipro_latency_max\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [37 x i8] c"dev_attr_apbridge_unipro_latency_avg\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [36 x i8] c"dev_attr_gbphy_firmware_latency_min\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [36 x i8] c"dev_attr_gbphy_firmware_latency_max\00", align 1
@___asan_gen_.233 = private unnamed_addr constant [36 x i8] c"dev_attr_gbphy_firmware_latency_avg\00", align 1
@___asan_gen_.236 = private unnamed_addr constant [14 x i8] c"dev_attr_type\00", align 1
@___asan_gen_.239 = private unnamed_addr constant [14 x i8] c"dev_attr_size\00", align 1
@___asan_gen_.242 = private unnamed_addr constant [17 x i8] c"dev_attr_us_wait\00", align 1
@___asan_gen_.245 = private unnamed_addr constant [25 x i8] c"dev_attr_iteration_count\00", align 1
@___asan_gen_.248 = private unnamed_addr constant [23 x i8] c"dev_attr_iteration_max\00", align 1
@___asan_gen_.251 = private unnamed_addr constant [15 x i8] c"dev_attr_async\00", align 1
@___asan_gen_.254 = private unnamed_addr constant [15 x i8] c"dev_attr_error\00", align 1
@___asan_gen_.257 = private unnamed_addr constant [28 x i8] c"dev_attr_requests_completed\00", align 1
@___asan_gen_.260 = private unnamed_addr constant [27 x i8] c"dev_attr_requests_timedout\00", align 1
@___asan_gen_.263 = private unnamed_addr constant [17 x i8] c"dev_attr_timeout\00", align 1
@___asan_gen_.266 = private unnamed_addr constant [36 x i8] c"dev_attr_outstanding_operations_max\00", align 1
@___asan_gen_.269 = private unnamed_addr constant [21 x i8] c"dev_attr_timeout_min\00", align 1
@___asan_gen_.272 = private unnamed_addr constant [21 x i8] c"dev_attr_timeout_max\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 271, i32 1 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 273, i32 1 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 275, i32 1 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 277, i32 1 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 279, i32 1 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 300, i32 1 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 246, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 302, i32 1 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 304, i32 1 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 308, i32 1 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 306, i32 1 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 310, i32 1 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 282, i32 1 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 284, i32 1 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 286, i32 1 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 312, i32 1 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 314, i32 1 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 288, i32 1 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 290, i32 1 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 883, i32 5 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 885, i32 5 }
@___asan_gen_.405 = private unnamed_addr constant [34 x i8] c"../include/linux/greybus/bundle.h\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 53, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 453, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 608, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 389, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 397, i32 4 }
@___asan_gen_.437 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 554, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.447 = private constant [38 x i8] c"../drivers/staging/greybus/loopback.c\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 105, i32 8 }
@llvm.compiler.used = appending global [139 x ptr] [ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_kfifo_depthtype229, ptr @__UNIQUE_ID_license235, ptr @__exitcall_loopback_exit, ptr @__initcall__kmod_gb_loopback__233_1167_loopback_init6, ptr @__param_kfifo_depth, ptr @gb_loopback_async_transfer_complete._entry, ptr @gb_loopback_async_transfer_complete._entry_ptr, ptr @gb_loopback_check_attr._entry, ptr @gb_loopback_check_attr._entry_ptr, ptr @gb_loopback_operation_sync._entry, ptr @gb_loopback_operation_sync._entry.74, ptr @gb_loopback_operation_sync._entry_ptr, ptr @gb_loopback_operation_sync._entry_ptr.76, ptr @gb_loopback_request_handler._entry, ptr @gb_loopback_request_handler._entry.16, ptr @gb_loopback_request_handler._entry.19, ptr @gb_loopback_request_handler._entry.22, ptr @gb_loopback_request_handler._entry_ptr, ptr @gb_loopback_request_handler._entry_ptr.18, ptr @gb_loopback_request_handler._entry_ptr.21, ptr @gb_loopback_request_handler._entry_ptr.24, ptr @gb_loopback_sync_transfer._entry, ptr @gb_loopback_sync_transfer._entry_ptr, ptr @gb_pm_runtime_get_sync._entry, ptr @gb_pm_runtime_get_sync._entry_ptr, ptr @loopback_exit, ptr @kfifo_depth, ptr @gb_dev, ptr @gb_loopback_driver, ptr @loopback_class, ptr @loopback_ida, ptr @loopback_init.__key, ptr @.str, ptr @.str.1, ptr @loopback_init.__key.2, ptr @.str.3, ptr @gb_loopback_id_table, ptr @gb_loopback_probe.__key, ptr @.str.4, ptr @gb_loopback_probe.__key.5, ptr @.str.6, ptr @.str.7, ptr @gb_loopback_dbgfs_latency_fops, ptr @loopback_groups, ptr @.str.8, ptr @gb_loopback_probe.__key.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @loopback_group, ptr @loopback_attrs, ptr @dev_attr_latency_min, ptr @dev_attr_latency_max, ptr @dev_attr_latency_avg, ptr @dev_attr_requests_per_second_min, ptr @dev_attr_requests_per_second_max, ptr @dev_attr_requests_per_second_avg, ptr @dev_attr_throughput_min, ptr @dev_attr_throughput_max, ptr @dev_attr_throughput_avg, ptr @dev_attr_apbridge_unipro_latency_min, ptr @dev_attr_apbridge_unipro_latency_max, ptr @dev_attr_apbridge_unipro_latency_avg, ptr @dev_attr_gbphy_firmware_latency_min, ptr @dev_attr_gbphy_firmware_latency_max, ptr @dev_attr_gbphy_firmware_latency_avg, ptr @dev_attr_type, ptr @dev_attr_size, ptr @dev_attr_us_wait, ptr @dev_attr_iteration_count, ptr @dev_attr_iteration_max, ptr @dev_attr_async, ptr @dev_attr_error, ptr @dev_attr_requests_completed, ptr @dev_attr_requests_timedout, ptr @dev_attr_timeout, ptr @dev_attr_outstanding_operations_max, ptr @dev_attr_timeout_min, ptr @dev_attr_timeout_max, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.79], section "llvm.metadata"
@0 = internal global [122 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kfifo_depth to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_dev to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_loopback_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loopback_class to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loopback_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loopback_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loopback_init.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_loopback_id_table to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_loopback_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_loopback_probe.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_loopback_dbgfs_latency_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loopback_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_loopback_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_loopback_request_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_loopback_request_handler._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_loopback_request_handler._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_loopback_request_handler._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loopback_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loopback_attrs to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_latency_min to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_latency_max to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_latency_avg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_requests_per_second_min to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_requests_per_second_max to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_requests_per_second_avg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_throughput_min to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_throughput_max to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_throughput_avg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_apbridge_unipro_latency_min to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_apbridge_unipro_latency_max to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_apbridge_unipro_latency_avg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_gbphy_firmware_latency_min to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_gbphy_firmware_latency_max to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_gbphy_firmware_latency_avg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_us_wait to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_iteration_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_iteration_max to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_async to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_error to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_requests_completed to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_requests_timedout to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_timeout to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_outstanding_operations_max to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_timeout_min to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_timeout_max to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_loopback_check_attr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_pm_runtime_get_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_loopback_async_transfer_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_loopback_operation_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_loopback_operation_sync._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_loopback_sync_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loopback_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__raw_spin_lock_init(ptr noundef getelementptr inbounds (%struct.gb_loopback_device, ptr @gb_dev, i32 0, i32 3), ptr noundef nonnull @.str, ptr noundef nonnull @loopback_init.__key, i16 noundef signext 3) #12
  %call2 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.1, ptr noundef null) #12
  store ptr %call2, ptr @gb_dev, align 4
  %call3 = tail call i32 @__class_register(ptr noundef nonnull @loopback_class, ptr noundef nonnull @loopback_init.__key.2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.err_crit_edge

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @greybus_register_driver(ptr noundef nonnull @gb_loopback_driver, ptr noundef null, ptr noundef nonnull @.str.1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %err_unregister

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

err_unregister:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @class_unregister(ptr noundef nonnull @loopback_class) #12
  br label %err

err:                                              ; preds = %err_unregister, %entry.err_crit_edge
  %retval1.0 = phi i32 [ %call3, %entry.err_crit_edge ], [ %call4, %err_unregister ]
  %0 = load ptr, ptr @gb_dev, align 4
  tail call void @debugfs_remove(ptr noundef %0) #12
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %err ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @loopback_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = load ptr, ptr @gb_dev, align 4
  tail call void @debugfs_remove(ptr noundef %0) #12
  tail call void @greybus_deregister_driver(ptr noundef nonnull @gb_loopback_driver) #12
  tail call void @class_unregister(ptr noundef nonnull @loopback_class) #12
  tail call void @ida_destroy(ptr noundef nonnull @loopback_ida) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @greybus_deregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @greybus_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_loopback_probe(ptr noundef %bundle, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  %name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #12
  %num_cports = getelementptr inbounds %struct.gb_bundle, ptr %bundle, i32 0, i32 6
  %0 = call ptr @memset(ptr %name, i32 255, i32 32)
  %1 = ptrtoint ptr %num_cports to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_cports, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.not = icmp eq i32 %2, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %cport_desc2 = getelementptr inbounds %struct.gb_bundle, ptr %bundle, i32 0, i32 7
  %3 = ptrtoint ptr %cport_desc2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cport_desc2, align 4
  %protocol_id = getelementptr inbounds %struct.greybus_descriptor_cport, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %protocol_id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %protocol_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %6)
  %cmp3.not = icmp eq i8 %6, 17
  br i1 %cmp3.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 456) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end6.cleanup_crit_edge, label %if.end8

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end6
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %4, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %call10 = tail call ptr @gb_connection_create(ptr noundef %bundle, i16 noundef zeroext %10, ptr noundef nonnull @gb_loopback_request_handler) #12
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %call10 to i32
  br label %out_kzalloc

if.end14:                                         ; preds = %if.end8
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call10, ptr %call7.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %bundle, i32 0, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %wq = getelementptr inbounds %struct.gb_loopback, ptr %call7.i.i, i32 0, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %wq, ptr noundef nonnull @.str.4, ptr noundef nonnull @gb_loopback_probe.__key) #12
  %wq_completion = getelementptr inbounds %struct.gb_loopback, ptr %call7.i.i, i32 0, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %wq_completion, ptr noundef nonnull @.str.6, ptr noundef nonnull @gb_loopback_probe.__key.5) #12
  %outstanding_operations = getelementptr inbounds %struct.gb_loopback, ptr %call7.i.i, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %outstanding_operations, i32 noundef 4) #12
  %14 = ptrtoint ptr %outstanding_operations to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 0, ptr %outstanding_operations, align 8
  %latency.i = getelementptr inbounds %struct.gb_loopback, ptr %call7.i.i, i32 0, i32 10
  %15 = call ptr @memcpy(ptr %latency.i, ptr @__const.gb_loopback_reset_stats.reset, i32 24)
  %throughput.i = getelementptr inbounds %struct.gb_loopback, ptr %call7.i.i, i32 0, i32 11
  %16 = call ptr @memcpy(ptr %throughput.i, ptr @__const.gb_loopback_reset_stats.reset, i32 24)
  %requests_per_second.i = getelementptr inbounds %struct.gb_loopback, ptr %call7.i.i, i32 0, i32 12
  %17 = call ptr @memcpy(ptr %requests_per_second.i, ptr @__const.gb_loopback_reset_stats.reset, i32 24)
  %apbridge_unipro_latency.i = getelementptr inbounds %struct.gb_loopback, ptr %call7.i.i, i32 0, i32 13
  %18 = call ptr @memcpy(ptr %apbridge_unipro_latency.i, ptr @__const.gb_loopback_reset_stats.reset, i32 24)
  %gbphy_firmware_latency.i = getelementptr inbounds %struct.gb_loopback, ptr %call7.i.i, i32 0, i32 14
  %19 = call ptr @memcpy(ptr %gbphy_firmware_latency.i, ptr @__const.gb_loopback_reset_stats.reset, i32 24)
  %apbridge_latency_ts.i = getelementptr inbounds %struct.gb_loopback, ptr %call7.i.i, i32 0, i32 31
  %20 = ptrtoint ptr %apbridge_latency_ts.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %apbridge_latency_ts.i, align 8
  %gbphy_latency_ts.i = getelementptr inbounds %struct.gb_loopback, ptr %call7.i.i, i32 0, i32 32
  %21 = ptrtoint ptr %gbphy_latency_ts.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %gbphy_latency_ts.i, align 4
  %ts.i = getelementptr inbounds %struct.gb_loopback, ptr %call7.i.i, i32 0, i32 9
  %22 = ptrtoint ptr %ts.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %ts.i, align 8
  %call19 = tail call i32 @jiffies_to_usecs(i32 noundef 1) #12
  %timeout_min = getelementptr inbounds %struct.gb_loopback, ptr %call7.i.i, i32 0, i32 27
  %23 = ptrtoint ptr %timeout_min to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call19, ptr %timeout_min, align 8
  %call20 = tail call i32 @jiffies_to_usecs(i32 noundef 10000) #12
  %timeout_max = getelementptr inbounds %struct.gb_loopback, ptr %call7.i.i, i32 0, i32 28
  %24 = ptrtoint ptr %timeout_max to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call20, ptr %timeout_max, align 4
  %25 = load i32, ptr getelementptr inbounds (%struct.gb_loopback_device, ptr @gb_dev, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool21.not = icmp eq i32 %25, 0
  br i1 %tobool21.not, label %if.then22, label %if.end14.if.end28_crit_edge

if.end14.if.end28_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then22:                                        ; preds = %if.end14
  %call23 = tail call i32 @gb_operation_get_payload_size_max(ptr noundef %call10) #12
  store i32 %call23, ptr getelementptr inbounds (%struct.gb_loopback_device, ptr @gb_dev, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %call23)
  %cmp24 = icmp ult i32 %call23, 13
  br i1 %cmp24, label %if.then22.out_connection_destroy_crit_edge, label %if.end27

if.then22.out_connection_destroy_crit_edge:       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_connection_destroy

if.end27:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  %sub = add i32 %call23, -12
  store i32 %sub, ptr getelementptr inbounds (%struct.gb_loopback_device, ptr @gb_dev, i32 0, i32 2), align 4
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end14.if.end28_crit_edge
  %bundle29 = getelementptr inbounds %struct.gb_connection, ptr %call10, i32 0, i32 2
  %26 = ptrtoint ptr %bundle29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bundle29, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end28.dev_name.exit_crit_edge

if.end28.dev_name.exit_crit_edge:                 ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %27, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end28.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %31, %if.end.i ], [ %29, %if.end28.dev_name.exit_crit_edge ]
  %call32 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 32, ptr noundef nonnull @.str.7, ptr noundef %retval.0.i)
  %32 = load ptr, ptr @gb_dev, align 4
  %call34 = call ptr @debugfs_create_file(ptr noundef nonnull %name, i16 noundef zeroext -32476, ptr noundef %32, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @gb_loopback_dbgfs_latency_fops) #12
  %file = getelementptr inbounds %struct.gb_loopback, ptr %call7.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call34, ptr %file, align 4
  %call35 = call i32 @ida_alloc_range(ptr noundef nonnull @loopback_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #12
  %id36 = getelementptr inbounds %struct.gb_loopback, ptr %call7.i.i, i32 0, i32 17
  %34 = ptrtoint ptr %id36 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call35, ptr %id36, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp38 = icmp slt i32 %call35, 0
  br i1 %cmp38, label %dev_name.exit.out_debugfs_remove_crit_edge, label %if.end42

dev_name.exit.out_debugfs_remove_crit_edge:       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_debugfs_remove

if.end42:                                         ; preds = %dev_name.exit
  %call43 = call i32 @gb_connection_enable(ptr noundef %call10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end42.out_ida_remove_crit_edge

if.end42.out_ida_remove_crit_edge:                ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_ida_remove

if.end46:                                         ; preds = %if.end42
  %35 = ptrtoint ptr %bundle29 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bundle29, align 4
  %37 = ptrtoint ptr %id36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %id36, align 8
  %call50 = call ptr (ptr, ptr, i32, ptr, ptr, ptr, ...) @device_create_with_groups(ptr noundef nonnull @loopback_class, ptr noundef %36, i32 noundef 0, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @loopback_groups, ptr noundef nonnull @.str.8, i32 noundef %38) #12
  %cmp.i145 = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i145, label %if.then52, label %if.end54

if.then52:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %call50 to i32
  br label %out_connection_disable

if.end54:                                         ; preds = %if.end46
  %dev55 = getelementptr inbounds %struct.gb_loopback, ptr %call7.i.i, i32 0, i32 5
  %40 = ptrtoint ptr %dev55 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call50, ptr %dev55, align 4
  %kfifo_lat = getelementptr inbounds %struct.gb_loopback, ptr %call7.i.i, i32 0, i32 2
  %41 = load i32, ptr @kfifo_depth, align 4
  %mul = shl i32 %41, 2
  %call56 = call i32 @__kfifo_alloc(ptr noundef %kfifo_lat, i32 noundef %mul, i32 noundef 1, i32 noundef 3264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool58.not = icmp eq i32 %call56, 0
  br i1 %tobool58.not, label %do.body61, label %if.end54.out_conn_crit_edge

if.end54.out_conn_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_conn

do.body61:                                        ; preds = %if.end54
  %mutex = getelementptr inbounds %struct.gb_loopback, ptr %call7.i.i, i32 0, i32 3
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.10, ptr noundef nonnull @gb_loopback_probe.__key.9) #12
  %call64 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @gb_loopback_fn, ptr noundef nonnull %call7.i.i, i32 noundef -1, ptr noundef nonnull @.str.1) #12
  %cmp.i146 = icmp ugt ptr %call64, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i146, label %if.then72, label %do.body77

if.then72:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #14
  %task149 = getelementptr inbounds %struct.gb_loopback, ptr %call7.i.i, i32 0, i32 4
  %42 = ptrtoint ptr %task149 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call64, ptr %task149, align 8
  %43 = ptrtoint ptr %call64 to i32
  call void @__kfifo_free(ptr noundef %kfifo_lat) #12
  br label %out_conn

do.body77:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #14
  %call67 = call i32 @wake_up_process(ptr noundef %call64) #12
  %task = getelementptr inbounds %struct.gb_loopback, ptr %call7.i.i, i32 0, i32 4
  %44 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call64, ptr %task, align 8
  %call82 = call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds (%struct.gb_loopback_device, ptr @gb_dev, i32 0, i32 3)) #12
  %45 = load i32, ptr getelementptr inbounds (%struct.gb_loopback_device, ptr @gb_dev, i32 0, i32 1), align 4
  %inc = add i32 %45, 1
  store i32 %inc, ptr getelementptr inbounds (%struct.gb_loopback_device, ptr @gb_dev, i32 0, i32 1), align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds (%struct.gb_loopback_device, ptr @gb_dev, i32 0, i32 3), i32 noundef %call82) #12
  call void @gb_connection_latency_tag_enable(ptr noundef %call10) #12
  %call.i.i148 = call i64 @ktime_get_mono_fast_ns() #12
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %bundle, i32 0, i32 12, i32 22
  %46 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store volatile i64 %call.i.i148, ptr %last_busy.i.i, align 8
  %call.i1.i = call i32 @__pm_runtime_suspend(ptr noundef %bundle, i32 noundef 13) #12
  br label %cleanup

out_conn:                                         ; preds = %if.then72, %if.end54.out_conn_crit_edge
  %retval1.0 = phi i32 [ %43, %if.then72 ], [ -12, %if.end54.out_conn_crit_edge ]
  call void @device_unregister(ptr noundef %call50) #12
  br label %out_connection_disable

out_connection_disable:                           ; preds = %out_conn, %if.then52
  %retval1.1 = phi i32 [ %39, %if.then52 ], [ %retval1.0, %out_conn ]
  call void @gb_connection_disable(ptr noundef %call10) #12
  br label %out_ida_remove

out_ida_remove:                                   ; preds = %out_connection_disable, %if.end42.out_ida_remove_crit_edge
  %retval1.2 = phi i32 [ %call43, %if.end42.out_ida_remove_crit_edge ], [ %retval1.1, %out_connection_disable ]
  %47 = ptrtoint ptr %id36 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %id36, align 8
  call void @ida_free(ptr noundef nonnull @loopback_ida, i32 noundef %48) #12
  br label %out_debugfs_remove

out_debugfs_remove:                               ; preds = %out_ida_remove, %dev_name.exit.out_debugfs_remove_crit_edge
  %retval1.3 = phi i32 [ %retval1.2, %out_ida_remove ], [ %call35, %dev_name.exit.out_debugfs_remove_crit_edge ]
  %49 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %file, align 4
  call void @debugfs_remove(ptr noundef %50) #12
  br label %out_connection_destroy

out_connection_destroy:                           ; preds = %out_debugfs_remove, %if.then22.out_connection_destroy_crit_edge
  %retval1.4 = phi i32 [ %retval1.3, %out_debugfs_remove ], [ -22, %if.then22.out_connection_destroy_crit_edge ]
  call void @gb_connection_destroy(ptr noundef %call10) #12
  br label %out_kzalloc

out_kzalloc:                                      ; preds = %out_connection_destroy, %if.then12
  %retval1.5 = phi i32 [ %11, %if.then12 ], [ %retval1.4, %out_connection_destroy ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out_kzalloc, %do.body77, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.5, %out_kzalloc ], [ 0, %do.body77 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_loopback_disconnect(ptr noundef %bundle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %bundle, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %bundle, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end.i:                                         ; preds = %entry
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bundle, ptr noundef nonnull @.str.65, i32 noundef %call.i.i) #16
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %bundle, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #12, !srcloc !206
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end.i.if.then_crit_edge, label %do.end11.i.i.i.i.i

do.end.i.if.then_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

do.end11.i.i.i.i.i:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !207
  br label %if.then

if.then:                                          ; preds = %do.end11.i.i.i.i.i, %do.end.i.if.then_crit_edge
  %call.i.i.i.i27 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #12
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 1, ptr elementtype(i32) %usage_count.i.i) #12, !srcloc !208
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  tail call void @gb_connection_disable(ptr noundef %5) #12
  %task = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %tobool.not.i = icmp eq ptr %7, null
  %cmp.i28 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i28
  br i1 %spec.select.i, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call i32 @kthread_stop(ptr noundef nonnull %7) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %kfifo_lat = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 2
  tail call void @__kfifo_free(ptr noundef %kfifo_lat) #12
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  tail call void @gb_connection_latency_tag_disable(ptr noundef %9) #12
  %file = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %file, align 4
  tail call void @debugfs_remove(ptr noundef %11) #12
  tail call fastcc void @gb_loopback_async_wait_all(ptr noundef %1)
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds (%struct.gb_loopback_device, ptr @gb_dev, i32 0, i32 3)) #12
  %12 = load i32, ptr getelementptr inbounds (%struct.gb_loopback_device, ptr @gb_dev, i32 0, i32 1), align 4
  %dec = add i32 %12, -1
  store i32 %dec, ptr getelementptr inbounds (%struct.gb_loopback_device, ptr @gb_dev, i32 0, i32 1), align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds (%struct.gb_loopback_device, ptr @gb_dev, i32 0, i32 3), i32 noundef %call10) #12
  %dev = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void @device_unregister(ptr noundef %14) #12
  %id = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 17
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id, align 8
  tail call void @ida_free(ptr noundef nonnull @loopback_ida, i32 noundef %16) #12
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  tail call void @gb_connection_destroy(ptr noundef %18) #12
  tail call void @kfree(ptr noundef %1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gb_connection_create(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_loopback_request_handler(ptr noundef %operation) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %operation to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %operation, align 4
  %bundle = getelementptr inbounds %struct.gb_connection, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bundle, align 4
  %type = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 4
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %do.end31 [
    i8 2, label %entry.cleanup_crit_edge
    i8 4, label %entry.cleanup_crit_edge57
    i8 3, label %sw.bb3
  ]

entry.cleanup_crit_edge57:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %request4 = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 1
  %7 = ptrtoint ptr %request4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %request4, align 4
  %payload_size = getelementptr inbounds %struct.gb_message, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %payload_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %payload_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %10)
  %cmp = icmp ult i32 %10, 12
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.11, i32 noundef %10, i32 noundef 12) #16
  br label %cleanup

if.end:                                           ; preds = %sw.bb3
  %payload = getelementptr inbounds %struct.gb_message, ptr %8, i32 0, i32 2
  %11 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %payload, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %12, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = load i32, ptr getelementptr inbounds (%struct.gb_loopback_device, ptr @gb_dev, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %16)
  %cmp10 = icmp ugt i32 %15, %16
  br i1 %cmp10, label %do.end15, label %if.end16

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.17, i32 noundef %15, i32 noundef %16) #16
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %add = add i32 %15, 12
  %call = tail call zeroext i1 @gb_operation_response_alloc(ptr noundef %operation, i32 noundef %add, i32 noundef 3264) #12
  br i1 %call, label %if.end21, label %do.end20

do.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.20) #16
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %response22 = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 2
  %17 = ptrtoint ptr %response22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %response22, align 4
  %payload23 = getelementptr inbounds %struct.gb_message, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %payload23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %payload23, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %14, ptr %20, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.end21.cleanup_crit_edge, label %if.then25

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %data = getelementptr inbounds %struct.gb_loopback_transfer_response, ptr %20, i32 0, i32 3
  %data26 = getelementptr inbounds %struct.gb_loopback_transfer_request, ptr %12, i32 0, i32 3
  %22 = call ptr @memcpy(ptr %data, ptr %data26, i32 %15)
  br label %cleanup

do.end31:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.23, i32 noundef %conv) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %if.then25, %if.end21.cleanup_crit_edge, %do.end20, %do.end15, %do.end, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge57
  %retval.0 = phi i32 [ -22, %do.end31 ], [ -22, %do.end ], [ -22, %do.end15 ], [ -12, %do.end20 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge57 ], [ 0, %if.then25 ], [ 0, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_operation_get_payload_size_max(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_connection_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create_with_groups(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_loopback_fn(ptr noundef %data) #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %bundle1 = getelementptr inbounds %struct.gb_connection, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bundle1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bundle1, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %type2 = getelementptr inbounds %struct.gb_loopback, ptr %data, i32 0, i32 15
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 22
  %wq = getelementptr inbounds %struct.gb_loopback, ptr %data, i32 0, i32 6
  %async.i = getelementptr inbounds %struct.gb_loopback, ptr %data, i32 0, i32 16
  %outstanding_operations_max.i = getelementptr inbounds %struct.gb_loopback, ptr %data, i32 0, i32 29
  %outstanding_operations.i = getelementptr inbounds %struct.gb_loopback, ptr %data, i32 0, i32 8
  %wq_completion.i = getelementptr inbounds %struct.gb_loopback, ptr %data, i32 0, i32 7
  %mutex = getelementptr inbounds %struct.gb_loopback, ptr %data, i32 0, i32 3
  %send_count = getelementptr inbounds %struct.gb_loopback, ptr %data, i32 0, i32 33
  %iteration_max = getelementptr inbounds %struct.gb_loopback, ptr %data, i32 0, i32 19
  %size77 = getelementptr inbounds %struct.gb_loopback, ptr %data, i32 0, i32 18
  %us_wait78 = getelementptr inbounds %struct.gb_loopback, ptr %data, i32 0, i32 21
  %ts = getelementptr inbounds %struct.gb_loopback, ptr %data, i32 0, i32 9
  %error104 = getelementptr inbounds %struct.gb_loopback, ptr %data, i32 0, i32 22
  %iteration_count105 = getelementptr inbounds %struct.gb_loopback, ptr %data, i32 0, i32 20
  %apbridge_latency_ts.i = getelementptr inbounds %struct.gb_loopback, ptr %data, i32 0, i32 31
  %gbphy_latency_ts.i = getelementptr inbounds %struct.gb_loopback, ptr %data, i32 0, i32 32
  %dev = getelementptr inbounds %struct.gb_loopback, ptr %data, i32 0, i32 5
  br label %while.cond.outer

do.end.i:                                         ; preds = %entry
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.65, i32 noundef %call.i.i) #16
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #12, !srcloc !206
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end.i.cleanup147_crit_edge, label %do.end11.i.i.i.i.i

do.end.i.cleanup147_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup147

do.end11.i.i.i.i.i:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !207
  br label %cleanup147

while.cond:                                       ; preds = %while.cond.outer, %if.end74
  %5 = ptrtoint ptr %type2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %if.then4, label %while.cond.if.end31_crit_edge

while.cond.if.end31_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then4:                                         ; preds = %while.cond
  %call.i.i219 = call i64 @ktime_get_mono_fast_ns() #12
  %7 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store volatile i64 %call.i.i219, ptr %last_busy.i.i, align 8
  %call.i1.i = call i32 @__pm_runtime_suspend(ptr noundef %3, i32 noundef 13) #12
  call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 853) #12
  %8 = ptrtoint ptr %type2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not = icmp eq i32 %9, 0
  br i1 %tobool10.not, label %lor.lhs.false, label %if.then4.if.end25_crit_edge

if.then4.if.end25_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

lor.lhs.false:                                    ; preds = %if.then4
  %call11 = call zeroext i1 @kthread_should_stop() #12
  br i1 %call11, label %lor.lhs.false.if.end25_crit_edge, label %if.then12

lor.lhs.false.if.end25_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then12:                                        ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %10 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %call14362 = call i32 @prepare_to_wait_event(ptr noundef %wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %11 = ptrtoint ptr %type2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool16.not363 = icmp eq i32 %12, 0
  br i1 %tobool16.not363, label %if.then12.lor.lhs.false17_crit_edge, label %if.then12.for.end_crit_edge

if.then12.for.end_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.then12.lor.lhs.false17_crit_edge:              ; preds = %if.then12
  br label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %cleanup.lor.lhs.false17_crit_edge, %if.then12.lor.lhs.false17_crit_edge
  %call14364 = phi i32 [ %call14, %cleanup.lor.lhs.false17_crit_edge ], [ %call14362, %if.then12.lor.lhs.false17_crit_edge ]
  %call18 = call zeroext i1 @kthread_should_stop() #12
  br i1 %call18, label %lor.lhs.false17.for.end_crit_edge, label %if.end20

lor.lhs.false17.for.end_crit_edge:                ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end20:                                         ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14364)
  %tobool21.not = icmp eq i32 %call14364, 0
  br i1 %tobool21.not, label %cleanup, label %if.end20.__out_crit_edge

if.end20.__out_crit_edge:                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %__out

cleanup:                                          ; preds = %if.end20
  call void @schedule() #12
  %call14 = call i32 @prepare_to_wait_event(ptr noundef %wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %13 = ptrtoint ptr %type2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type2, align 8
  %tobool16.not = icmp eq i32 %14, 0
  br i1 %tobool16.not, label %cleanup.lor.lhs.false17_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cleanup.lor.lhs.false17_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false17

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.lhs.false17.for.end_crit_edge, %if.then12.for.end_crit_edge
  call void @finish_wait(ptr noundef %wq, ptr noundef nonnull %__wq_entry) #12
  br label %__out

__out:                                            ; preds = %for.end, %if.end20.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %if.end25

if.end25:                                         ; preds = %__out, %lor.lhs.false.if.end25_crit_edge, %if.then4.if.end25_crit_edge
  %call.i.i220 = call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i220)
  %cmp.i221 = icmp slt i32 %call.i.i220, 0
  br i1 %cmp.i221, label %do.end.i226, label %if.end25.if.end31_crit_edge

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

do.end.i226:                                      ; preds = %if.end25
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.65, i32 noundef %call.i.i220) #16
  %usage_count.i.i222 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i.i223 = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i222, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !205
  call void @llvm.prefetch.p0(ptr %usage_count.i.i222, i32 1, i32 3, i32 1) #12
  %15 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i222, ptr %usage_count.i.i222, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i222) #12, !srcloc !206
  %asmresult.i.i.i.i.i224 = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i224)
  %cmp.not.i.i.i.i.i225 = icmp eq i32 %asmresult.i.i.i.i.i224, 0
  br i1 %cmp.not.i.i.i.i.i225, label %do.end.i226.cleanup147_crit_edge, label %do.end11.i.i.i.i.i227

do.end.i226.cleanup147_crit_edge:                 ; preds = %do.end.i226
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup147

do.end11.i.i.i.i.i227:                            ; preds = %do.end.i226
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !207
  br label %cleanup147

if.end31:                                         ; preds = %if.end25.if.end31_crit_edge, %while.cond.if.end31_crit_edge
  %call32 = call zeroext i1 @kthread_should_stop() #12
  br i1 %call32, label %if.end31.while.end_crit_edge, label %if.end34

if.end31.while.end_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end34:                                         ; preds = %if.end31
  %16 = ptrtoint ptr %async.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %async.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %if.end34.gb_loopback_async_wait_to_send.exit_crit_edge, label %land.lhs.true.i

if.end34.gb_loopback_async_wait_to_send.exit_crit_edge: ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %gb_loopback_async_wait_to_send.exit

land.lhs.true.i:                                  ; preds = %if.end34
  %18 = ptrtoint ptr %outstanding_operations_max.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %outstanding_operations_max.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool1.not.i = icmp eq i32 %19, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.gb_loopback_async_wait_to_send.exit_crit_edge, label %if.end.i

land.lhs.true.i.gb_loopback_async_wait_to_send.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gb_loopback_async_wait_to_send.exit

if.end.i:                                         ; preds = %land.lhs.true.i
  call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 831) #12
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %outstanding_operations.i, i32 noundef 4) #12
  %20 = ptrtoint ptr %outstanding_operations.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %outstanding_operations.i, align 4
  %22 = ptrtoint ptr %outstanding_operations_max.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %outstanding_operations_max.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp.i230 = icmp ult i32 %21, %23
  br i1 %cmp.i230, label %if.end.i.gb_loopback_async_wait_to_send.exit_crit_edge, label %lor.lhs.false.i

if.end.i.gb_loopback_async_wait_to_send.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gb_loopback_async_wait_to_send.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  %call6.i = call zeroext i1 @kthread_should_stop() #12
  br i1 %call6.i, label %lor.lhs.false.i.gb_loopback_async_wait_to_send.exit_crit_edge, label %if.then7.i

lor.lhs.false.i.gb_loopback_async_wait_to_send.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gb_loopback_async_wait_to_send.exit

if.then7.i:                                       ; preds = %lor.lhs.false.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #12
  %24 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #12
  %call939.i = call i32 @prepare_to_wait_event(ptr noundef %wq_completion.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #12
  %call.i.i3240.i = call zeroext i1 @__kasan_check_read(ptr noundef %outstanding_operations.i, i32 noundef 4) #12
  %25 = ptrtoint ptr %outstanding_operations.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %outstanding_operations.i, align 4
  %27 = ptrtoint ptr %outstanding_operations_max.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %outstanding_operations_max.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp1341.i = icmp ult i32 %26, %28
  br i1 %cmp1341.i, label %if.then7.i.for.end.i_crit_edge, label %if.then7.i.lor.lhs.false14.i_crit_edge

if.then7.i.lor.lhs.false14.i_crit_edge:           ; preds = %if.then7.i
  br label %lor.lhs.false14.i

if.then7.i.for.end.i_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

lor.lhs.false14.i:                                ; preds = %cleanup.i.lor.lhs.false14.i_crit_edge, %if.then7.i.lor.lhs.false14.i_crit_edge
  %call942.i = phi i32 [ %call9.i, %cleanup.i.lor.lhs.false14.i_crit_edge ], [ %call939.i, %if.then7.i.lor.lhs.false14.i_crit_edge ]
  %call15.i = call zeroext i1 @kthread_should_stop() #12
  br i1 %call15.i, label %lor.lhs.false14.i.for.end.i_crit_edge, label %if.end17.i

lor.lhs.false14.i.for.end.i_crit_edge:            ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end17.i:                                       ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call942.i)
  %tobool18.not.i = icmp eq i32 %call942.i, 0
  br i1 %tobool18.not.i, label %cleanup.i, label %if.end17.i.__out.i_crit_edge

if.end17.i.__out.i_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__out.i

cleanup.i:                                        ; preds = %if.end17.i
  call void @schedule() #12
  %call9.i = call i32 @prepare_to_wait_event(ptr noundef %wq_completion.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #12
  %call.i.i32.i = call zeroext i1 @__kasan_check_read(ptr noundef %outstanding_operations.i, i32 noundef 4) #12
  %29 = ptrtoint ptr %outstanding_operations.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %outstanding_operations.i, align 4
  %31 = ptrtoint ptr %outstanding_operations_max.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %outstanding_operations_max.i, align 8
  %cmp13.i = icmp ult i32 %30, %32
  br i1 %cmp13.i, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.lor.lhs.false14.i_crit_edge

cleanup.i.lor.lhs.false14.i_crit_edge:            ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false14.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %lor.lhs.false14.i.for.end.i_crit_edge, %if.then7.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef %wq_completion.i, ptr noundef nonnull %__wq_entry.i) #12
  br label %__out.i

__out.i:                                          ; preds = %for.end.i, %if.end17.i.__out.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #12
  br label %gb_loopback_async_wait_to_send.exit

gb_loopback_async_wait_to_send.exit:              ; preds = %__out.i, %lor.lhs.false.i.gb_loopback_async_wait_to_send.exit_crit_edge, %if.end.i.gb_loopback_async_wait_to_send.exit_crit_edge, %land.lhs.true.i.gb_loopback_async_wait_to_send.exit_crit_edge, %if.end34.gb_loopback_async_wait_to_send.exit_crit_edge
  %call35 = call zeroext i1 @kthread_should_stop() #12
  br i1 %call35, label %gb_loopback_async_wait_to_send.exit.while.end_crit_edge, label %if.end37

gb_loopback_async_wait_to_send.exit.while.end_crit_edge: ; preds = %gb_loopback_async_wait_to_send.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end37:                                         ; preds = %gb_loopback_async_wait_to_send.exit
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %33 = ptrtoint ptr %send_count to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %send_count, align 8
  %35 = ptrtoint ptr %iteration_max to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %iteration_max, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp = icmp eq i32 %34, %36
  br i1 %cmp, label %if.then38, label %if.end76

if.then38:                                        ; preds = %if.end37
  call void @mutex_unlock(ptr noundef %mutex) #12
  call fastcc void @gb_loopback_async_wait_all(ptr noundef %data)
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %37 = ptrtoint ptr %iteration_count105 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %iteration_count105, align 4
  %39 = ptrtoint ptr %iteration_max to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %iteration_max, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp42 = icmp eq i32 %38, %40
  br i1 %cmp42, label %if.then43, label %do.body57

if.then43:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %type2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %type2, align 8
  %42 = ptrtoint ptr %send_count to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %send_count, align 8
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  call void @sysfs_notify(ptr noundef %44, ptr noundef null, ptr noundef nonnull @.str.52) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gb_loopback_fn.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gb_loopback_fn, %if.then52)) #12
          to label %if.end74 [label %if.then52], !srcloc !209

if.then52:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gb_loopback_fn.__UNIQUE_ID_ddebug231, ptr noundef %3, ptr noundef nonnull @.str.63) #12
  br label %if.end74

do.body57:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gb_loopback_fn.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gb_loopback_fn, %if.then69)) #12
          to label %if.end74 [label %if.then69], !srcloc !209

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gb_loopback_fn.__UNIQUE_ID_ddebug232, ptr noundef %3, ptr noundef nonnull @.str.64) #12
  br label %if.end74

if.end74:                                         ; preds = %if.then69, %do.body57, %if.then52, %if.then43
  call void @mutex_unlock(ptr noundef %mutex) #12
  br label %while.cond

if.end76:                                         ; preds = %if.end37
  %45 = ptrtoint ptr %size77 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %size77, align 4
  %47 = ptrtoint ptr %us_wait78 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %us_wait78, align 8
  %49 = ptrtoint ptr %type2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %type2, align 8
  %51 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %ts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %52)
  %cmp81 = icmp eq i64 %52, 0
  br i1 %cmp81, label %if.then82, label %if.end76.if.end85_crit_edge

if.end76.if.end85_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

if.then82:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  %call83 = call i64 @ktime_get() #12
  %53 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %call83, ptr %ts, align 8
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %if.end76.if.end85_crit_edge
  %54 = ptrtoint ptr %async.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %async.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool86.not = icmp eq i32 %55, 0
  br i1 %tobool86.not, label %if.else108, label %if.then87

if.then87:                                        ; preds = %if.end85
  %56 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %50, label %if.then87.if.end101_crit_edge [
    i32 2, label %if.then89
    i32 3, label %if.then93
    i32 4, label %if.then97
  ]

if.then87.if.end101_crit_edge:                    ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

if.then89:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = call fastcc i32 @gb_loopback_async_operation(ptr noundef %data, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #12
  br label %if.end101

if.then93:                                        ; preds = %if.then87
  %add.i = add i32 %46, 12
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #17
  %tobool.not.i231 = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i231, label %if.then93.if.then103_crit_edge, label %if.end.i232

if.then93.if.then103_crit_edge:                   ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then103

if.end.i232:                                      ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #14
  %data.i = getelementptr inbounds %struct.gb_loopback_transfer_request, ptr %call9.i.i, i32 0, i32 3
  %57 = call ptr @memset(ptr %data.i, i32 90, i32 %46)
  %58 = call i32 @llvm.bswap.i32(i32 %46) #12
  %59 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %call9.i.i, align 128
  %call5.i = call fastcc i32 @gb_loopback_async_operation(ptr noundef %data, i32 noundef 3, ptr noundef nonnull %call9.i.i, i32 noundef %add.i, i32 noundef %add.i, ptr noundef nonnull @gb_loopback_async_transfer_complete) #12
  call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %if.end101

if.then97:                                        ; preds = %if.then87
  %add.i235 = add i32 %46, 12
  %call9.i.i261 = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i235, i32 noundef 3264) #17
  %tobool.not.i264 = icmp eq ptr %call9.i.i261, null
  br i1 %tobool.not.i264, label %if.then97.if.then103_crit_edge, label %if.end.i266

if.then97.if.then103_crit_edge:                   ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then103

if.end.i266:                                      ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #14
  %60 = call i32 @llvm.bswap.i32(i32 %46) #12
  %61 = ptrtoint ptr %call9.i.i261 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %call9.i.i261, align 128
  %call4.i = call fastcc i32 @gb_loopback_async_operation(ptr noundef %data, i32 noundef 4, ptr noundef nonnull %call9.i.i261, i32 noundef %add.i235, i32 noundef 0, ptr noundef null) #12
  call void @kfree(ptr noundef nonnull %call9.i.i261) #12
  br label %if.end101

if.end101:                                        ; preds = %if.end.i266, %if.end.i232, %if.then89, %if.then87.if.end101_crit_edge
  %error.1 = phi i32 [ %call.i, %if.then89 ], [ %error.0.ph, %if.then87.if.end101_crit_edge ], [ %call5.i, %if.end.i232 ], [ %call4.i, %if.end.i266 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1)
  %tobool102.not = icmp eq i32 %error.1, 0
  br i1 %tobool102.not, label %if.end101.if.end135_crit_edge, label %if.end101.if.then103_crit_edge

if.end101.if.then103_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then103

if.end101.if.end135_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end135

if.then103:                                       ; preds = %if.end101.if.then103_crit_edge, %if.then97.if.then103_crit_edge, %if.then93.if.then103_crit_edge
  %error.1353 = phi i32 [ %error.1, %if.end101.if.then103_crit_edge ], [ -12, %if.then93.if.then103_crit_edge ], [ -12, %if.then97.if.then103_crit_edge ]
  %62 = ptrtoint ptr %error104 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %error104, align 4
  %inc = add i32 %63, 1
  store i32 %inc, ptr %error104, align 4
  %64 = ptrtoint ptr %iteration_count105 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %iteration_count105, align 4
  %inc106 = add i32 %65, 1
  store i32 %inc106, ptr %iteration_count105, align 4
  br label %if.end135

if.else108:                                       ; preds = %if.end85
  %66 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %50, label %if.else108.if.end122_crit_edge [
    i32 2, label %if.then110
    i32 3, label %if.then114
    i32 4, label %if.then118
  ]

if.else108.if.end122_crit_edge:                   ; preds = %if.else108
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end122

if.then110:                                       ; preds = %if.else108
  call void @__sanitizer_cov_trace_pc() #14
  %call.i269 = call fastcc i32 @gb_loopback_operation_sync(ptr noundef %data, i32 noundef 2, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0) #12
  br label %if.end122

if.then114:                                       ; preds = %if.else108
  %67 = ptrtoint ptr %apbridge_latency_ts.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %apbridge_latency_ts.i, align 8
  %68 = ptrtoint ptr %gbphy_latency_ts.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %gbphy_latency_ts.i, align 4
  %add.i270 = add i32 %46, 12
  %call9.i.i296 = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i270, i32 noundef 3264) #17
  %tobool.not86.i = icmp eq ptr %call9.i.i296, null
  br i1 %tobool.not86.i, label %if.then114.if.then124_crit_edge, label %if.end8.i75.i

if.then114.if.then124_crit_edge:                  ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then124

if.end8.i75.i:                                    ; preds = %if.then114
  %call9.i74.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i270, i32 noundef 3264) #17
  %tobool4.not.i = icmp eq ptr %call9.i74.i, null
  br i1 %tobool4.not.i, label %if.end8.i75.i.cleanup.sink.split.i_crit_edge, label %if.end6.i

if.end8.i75.i.cleanup.sink.split.i_crit_edge:     ; preds = %if.end8.i75.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.end6.i:                                        ; preds = %if.end8.i75.i
  %data.i297 = getelementptr inbounds %struct.gb_loopback_transfer_request, ptr %call9.i.i296, i32 0, i32 3
  %69 = call ptr @memset(ptr %data.i297, i32 90, i32 %46)
  %70 = call i32 @llvm.bswap.i32(i32 %46) #12
  %71 = ptrtoint ptr %call9.i.i296 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %call9.i.i296, align 128
  %call10.i = call fastcc i32 @gb_loopback_operation_sync(ptr noundef %data, i32 noundef 3, ptr noundef nonnull %call9.i.i296, i32 noundef %add.i270, ptr noundef nonnull %call9.i74.i, i32 noundef %add.i270) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end6.i.gb_error.i_crit_edge

if.end6.i.gb_error.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gb_error.i

if.end13.i:                                       ; preds = %if.end6.i
  %data16.i = getelementptr inbounds %struct.gb_loopback_transfer_response, ptr %call9.i74.i, i32 0, i32 3
  %bcmp.i = call i32 @bcmp(ptr %data.i297, ptr %data16.i, i32 %46) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool19.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool19.not.i, label %if.end13.i.if.end21.i_crit_edge, label %do.end.i298

if.end13.i.if.end21.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i

do.end.i298:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data, align 8
  %bundle.i = getelementptr inbounds %struct.gb_connection, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %bundle.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bundle.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.77) #16
  br label %if.end21.i

if.end21.i:                                       ; preds = %do.end.i298, %if.end13.i.if.end21.i_crit_edge
  %retval1.0.i = phi i32 [ -121, %do.end.i298 ], [ 0, %if.end13.i.if.end21.i_crit_edge ]
  %reserved0.i = getelementptr inbounds %struct.gb_loopback_transfer_response, ptr %call9.i74.i, i32 0, i32 1
  %76 = ptrtoint ptr %reserved0.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %reserved0.i, align 4
  %78 = call i32 @llvm.bswap.i32(i32 %77) #12
  %79 = ptrtoint ptr %apbridge_latency_ts.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %apbridge_latency_ts.i, align 8
  %reserved1.i = getelementptr inbounds %struct.gb_loopback_transfer_response, ptr %call9.i74.i, i32 0, i32 2
  %80 = ptrtoint ptr %reserved1.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %reserved1.i, align 8
  %82 = call i32 @llvm.bswap.i32(i32 %81) #12
  %83 = ptrtoint ptr %gbphy_latency_ts.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %gbphy_latency_ts.i, align 4
  br label %gb_error.i

gb_error.i:                                       ; preds = %if.end21.i, %if.end6.i.gb_error.i_crit_edge
  %retval1.1.i = phi i32 [ %call10.i, %if.end6.i.gb_error.i_crit_edge ], [ %retval1.0.i, %if.end21.i ]
  call void @kfree(ptr noundef nonnull %call9.i.i296) #12
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %gb_error.i, %if.end8.i75.i.cleanup.sink.split.i_crit_edge
  %retval.1.i7699.sink.i = phi ptr [ %call9.i74.i, %gb_error.i ], [ %call9.i.i296, %if.end8.i75.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ %retval1.1.i, %gb_error.i ], [ -12, %if.end8.i75.i.cleanup.sink.split.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %retval.1.i7699.sink.i) #12
  br label %if.end122

if.then118:                                       ; preds = %if.else108
  %add.i301 = add i32 %46, 12
  %call9.i.i327 = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i301, i32 noundef 3264) #17
  %tobool.not.i330 = icmp eq ptr %call9.i.i327, null
  br i1 %tobool.not.i330, label %if.then118.if.then124_crit_edge, label %if.end.i334

if.then118.if.then124_crit_edge:                  ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then124

if.end.i334:                                      ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #14
  %84 = call i32 @llvm.bswap.i32(i32 %46) #12
  %85 = ptrtoint ptr %call9.i.i327 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %call9.i.i327, align 128
  %call4.i333 = call fastcc i32 @gb_loopback_operation_sync(ptr noundef %data, i32 noundef 4, ptr noundef nonnull %call9.i.i327, i32 noundef %add.i301, ptr noundef null, i32 noundef 0) #12
  call void @kfree(ptr noundef nonnull %call9.i.i327) #12
  br label %if.end122

if.end122:                                        ; preds = %if.end.i334, %cleanup.sink.split.i, %if.then110, %if.else108.if.end122_crit_edge
  %error.2 = phi i32 [ %call.i269, %if.then110 ], [ %error.0.ph, %if.else108.if.end122_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ], [ %call4.i333, %if.end.i334 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.2)
  %tobool123.not = icmp eq i32 %error.2, 0
  br i1 %tobool123.not, label %if.end122.if.end127_crit_edge, label %if.end122.if.then124_crit_edge

if.end122.if.then124_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then124

if.end122.if.end127_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end127

if.then124:                                       ; preds = %if.end122.if.then124_crit_edge, %if.then118.if.then124_crit_edge, %if.then114.if.then124_crit_edge
  %error.2357 = phi i32 [ %error.2, %if.end122.if.then124_crit_edge ], [ -12, %if.then114.if.then124_crit_edge ], [ -12, %if.then118.if.then124_crit_edge ]
  %86 = ptrtoint ptr %error104 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %error104, align 4
  %inc126 = add i32 %87, 1
  store i32 %inc126, ptr %error104, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.then124, %if.end122.if.end127_crit_edge
  %tobool123358 = phi i1 [ true, %if.then124 ], [ false, %if.end122.if.end127_crit_edge ]
  %error.2356 = phi i32 [ %error.2357, %if.then124 ], [ 0, %if.end122.if.end127_crit_edge ]
  %88 = ptrtoint ptr %iteration_count105 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %iteration_count105, align 4
  %inc129 = add i32 %89, 1
  store i32 %inc129, ptr %iteration_count105, align 4
  call fastcc void @gb_loopback_calculate_stats(ptr noundef %data, i1 noundef zeroext %tobool123358)
  br label %if.end135

if.end135:                                        ; preds = %if.end127, %if.then103, %if.end101.if.end135_crit_edge
  %error.3 = phi i32 [ %error.1353, %if.then103 ], [ 0, %if.end101.if.end135_crit_edge ], [ %error.2356, %if.end127 ]
  %90 = ptrtoint ptr %send_count to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %send_count, align 8
  %inc137 = add i32 %91, 1
  store i32 %inc137, ptr %send_count, align 8
  call void @mutex_unlock(ptr noundef %mutex) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool139.not = icmp eq i32 %48, 0
  br i1 %tobool139.not, label %if.end135.while.cond.outer.backedge_crit_edge, label %if.then140

if.end135.while.cond.outer.backedge_crit_edge:    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.outer.backedge

if.then140:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %48)
  %cmp141 = icmp slt i32 %48, 20000
  br i1 %cmp141, label %if.then142, label %if.else143

if.then142:                                       ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #14
  %add = add nsw i32 %48, 100
  call void @usleep_range_state(i32 noundef %48, i32 noundef %add, i32 noundef 2) #12
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %if.else143, %if.then142, %if.end135.while.cond.outer.backedge_crit_edge
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.cond.outer.backedge, %while.cond.preheader
  %error.0.ph = phi i32 [ 0, %while.cond.preheader ], [ %error.3, %while.cond.outer.backedge ]
  br label %while.cond

if.else143:                                       ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #14
  %div360 = udiv i32 %48, 1000
  call void @msleep(i32 noundef %div360) #12
  br label %while.cond.outer.backedge

while.end:                                        ; preds = %gb_loopback_async_wait_to_send.exit.while.end_crit_edge, %if.end31.while.end_crit_edge
  %call.i.i337 = call i64 @ktime_get_mono_fast_ns() #12
  %92 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %92)
  store volatile i64 %call.i.i337, ptr %last_busy.i.i, align 8
  %call.i1.i339 = call i32 @__pm_runtime_suspend(ptr noundef %3, i32 noundef 13) #12
  br label %cleanup147

cleanup147:                                       ; preds = %while.end, %do.end11.i.i.i.i.i227, %do.end.i226.cleanup147_crit_edge, %do.end11.i.i.i.i.i, %do.end.i.cleanup147_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ %call.i.i, %do.end.i.cleanup147_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i ], [ %call.i.i220, %do.end.i226.cleanup147_crit_edge ], [ %call.i.i220, %do.end11.i.i.i.i.i227 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_latency_tag_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfifo_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gb_operation_response_alloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_loopback_dbgfs_latency_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @gb_loopback_dbgfs_latency_show, ptr noundef %1) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_loopback_dbgfs_latency_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  %latency.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %kfifo_lat = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 2
  %mutex = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %latency.i) #12
  %2 = ptrtoint ptr %latency.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %latency.i, align 4, !annotation !210
  %3 = ptrtoint ptr %kfifo_lat to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %kfifo_lat, align 4
  %out.i = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %out.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.i = icmp eq i32 %4, %6
  br i1 %cmp.i, label %entry.gb_loopback_dbgfs_latency_show_common.exit_crit_edge, label %if.end.i

entry.gb_loopback_dbgfs_latency_show_common.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %gb_loopback_dbgfs_latency_show_common.exit

if.end.i:                                         ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %call.i = call i32 @__kfifo_out(ptr noundef %kfifo_lat, ptr noundef nonnull %latency.i, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.i = icmp sgt i32 %call.i, 0
  br i1 %cmp4.i, label %if.then5.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %latency.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %latency.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.25, i32 noundef %8) #12
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end.i.if.end6.i_crit_edge
  %retval1.0.i = phi i32 [ 0, %if.then5.i ], [ %call.i, %if.end.i.if.end6.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #12
  br label %gb_loopback_dbgfs_latency_show_common.exit

gb_loopback_dbgfs_latency_show_common.exit:       ; preds = %if.end6.i, %entry.gb_loopback_dbgfs_latency_show_common.exit_crit_edge
  %retval1.1.i = phi i32 [ %retval1.0.i, %if.end6.i ], [ -11, %entry.gb_loopback_dbgfs_latency_show_common.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %latency.i) #12
  ret i32 %retval1.1.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @latency_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %requests_completed = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %requests_completed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %requests_completed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = call ptr @memcpy(ptr %buf, ptr @.str.27, i32 3)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %latency = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %latency to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %latency, align 8
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %6)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call2, %if.end ], [ 2, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @latency_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %requests_completed = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %requests_completed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %requests_completed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = call ptr @memcpy(ptr %buf, ptr @.str.27, i32 3)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %max = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 10, i32 1
  %5 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %6)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call2, %if.end ], [ 2, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @latency_avg_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %count1 = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 10, i32 3
  %2 = ptrtoint ptr %count1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 %3
  %sum = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 10, i32 2
  %4 = ptrtoint ptr %sum to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sum, align 8
  %div = udiv i32 %spec.select, 2000000
  %conv = zext i32 %div to i64
  %add = add i64 %5, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add)
  %cmp177 = icmp ult i64 %add, 4294967296
  br i1 %cmp177, label %if.then181, label %if.else187, !prof !211

if.then181:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv182 = trunc i64 %add to i32
  %conv182.frozen = freeze i32 %conv182
  %spec.select.frozen = freeze i32 %spec.select
  %div185 = udiv i32 %conv182.frozen, %spec.select.frozen
  %6 = mul i32 %div185, %spec.select.frozen
  %rem183.decomposed = sub i32 %conv182.frozen, %6
  %conv186 = zext i32 %div185 to i64
  br label %if.else394

if.else187:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %7 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %spec.select, i64 %add) #19, !srcloc !212
  %asmresult.i583 = extractvalue { i64, i64 } %7, 0
  %asmresult1.i = extractvalue { i64, i64 } %7, 1
  %shr.i = lshr i64 %asmresult.i583, 32
  %conv.i = trunc i64 %shr.i to i32
  br label %if.else394

if.else394:                                       ; preds = %if.else187, %if.then181
  %avg.0 = phi i64 [ %conv186, %if.then181 ], [ %asmresult1.i, %if.else187 ]
  %__rem.0 = phi i32 [ %rem183.decomposed, %if.then181 ], [ %conv.i, %if.else187 ]
  %conv193 = zext i32 %__rem.0 to i64
  %mul194 = mul nuw nsw i64 %conv193, 1000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul194)
  %cmp396 = icmp ult i64 %mul194, 4294967296
  br i1 %cmp396, label %if.then404, label %if.else410, !prof !211

if.then404:                                       ; preds = %if.else394
  call void @__sanitizer_cov_trace_pc() #14
  %conv405 = trunc i64 %mul194 to i32
  %div408 = udiv i32 %conv405, %spec.select
  br label %if.end414

if.else410:                                       ; preds = %if.else394
  call void @__sanitizer_cov_trace_pc() #14
  %8 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %spec.select, i64 %mul194) #19, !srcloc !212
  %asmresult1.i606 = extractvalue { i64, i64 } %8, 1
  %extract.t662 = trunc i64 %asmresult1.i606 to i32
  br label %if.end414

if.end414:                                        ; preds = %if.else410, %if.then404
  %rem.0.off0 = phi i32 [ %div408, %if.then404 ], [ %extract.t662, %if.else410 ]
  %call417 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.31, i64 noundef %avg.0, i32 noundef %rem.0.off0)
  ret i32 %call417
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @requests_per_second_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %requests_completed = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %requests_completed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %requests_completed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = call ptr @memcpy(ptr %buf, ptr @.str.27, i32 3)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %requests_per_second = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %requests_per_second to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %requests_per_second, align 8
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %6)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call2, %if.end ], [ 2, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @requests_per_second_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %requests_completed = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %requests_completed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %requests_completed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = call ptr @memcpy(ptr %buf, ptr @.str.27, i32 3)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %max = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 12, i32 1
  %5 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %6)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call2, %if.end ], [ 2, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @requests_per_second_avg_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %count1 = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 12, i32 3
  %2 = ptrtoint ptr %count1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 %3
  %sum = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 12, i32 2
  %4 = ptrtoint ptr %sum to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sum, align 8
  %div = udiv i32 %spec.select, 2000000
  %conv = zext i32 %div to i64
  %add = add i64 %5, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add)
  %cmp177 = icmp ult i64 %add, 4294967296
  br i1 %cmp177, label %if.then181, label %if.else187, !prof !211

if.then181:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv182 = trunc i64 %add to i32
  %conv182.frozen = freeze i32 %conv182
  %spec.select.frozen = freeze i32 %spec.select
  %div185 = udiv i32 %conv182.frozen, %spec.select.frozen
  %6 = mul i32 %div185, %spec.select.frozen
  %rem183.decomposed = sub i32 %conv182.frozen, %6
  %conv186 = zext i32 %div185 to i64
  br label %if.else394

if.else187:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %7 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %spec.select, i64 %add) #19, !srcloc !212
  %asmresult.i583 = extractvalue { i64, i64 } %7, 0
  %asmresult1.i = extractvalue { i64, i64 } %7, 1
  %shr.i = lshr i64 %asmresult.i583, 32
  %conv.i = trunc i64 %shr.i to i32
  br label %if.else394

if.else394:                                       ; preds = %if.else187, %if.then181
  %avg.0 = phi i64 [ %conv186, %if.then181 ], [ %asmresult1.i, %if.else187 ]
  %__rem.0 = phi i32 [ %rem183.decomposed, %if.then181 ], [ %conv.i, %if.else187 ]
  %conv193 = zext i32 %__rem.0 to i64
  %mul194 = mul nuw nsw i64 %conv193, 1000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul194)
  %cmp396 = icmp ult i64 %mul194, 4294967296
  br i1 %cmp396, label %if.then404, label %if.else410, !prof !211

if.then404:                                       ; preds = %if.else394
  call void @__sanitizer_cov_trace_pc() #14
  %conv405 = trunc i64 %mul194 to i32
  %div408 = udiv i32 %conv405, %spec.select
  br label %if.end414

if.else410:                                       ; preds = %if.else394
  call void @__sanitizer_cov_trace_pc() #14
  %8 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %spec.select, i64 %mul194) #19, !srcloc !212
  %asmresult1.i606 = extractvalue { i64, i64 } %8, 1
  %extract.t662 = trunc i64 %asmresult1.i606 to i32
  br label %if.end414

if.end414:                                        ; preds = %if.else410, %if.then404
  %rem.0.off0 = phi i32 [ %div408, %if.then404 ], [ %extract.t662, %if.else410 ]
  %call417 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.31, i64 noundef %avg.0, i32 noundef %rem.0.off0)
  ret i32 %call417
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @throughput_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %requests_completed = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %requests_completed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %requests_completed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = call ptr @memcpy(ptr %buf, ptr @.str.27, i32 3)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %throughput = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %throughput to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %throughput, align 8
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %6)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call2, %if.end ], [ 2, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @throughput_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %requests_completed = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %requests_completed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %requests_completed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = call ptr @memcpy(ptr %buf, ptr @.str.27, i32 3)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %max = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 11, i32 1
  %5 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %6)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call2, %if.end ], [ 2, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @throughput_avg_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %count1 = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 11, i32 3
  %2 = ptrtoint ptr %count1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 %3
  %sum = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 11, i32 2
  %4 = ptrtoint ptr %sum to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sum, align 8
  %div = udiv i32 %spec.select, 2000000
  %conv = zext i32 %div to i64
  %add = add i64 %5, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add)
  %cmp177 = icmp ult i64 %add, 4294967296
  br i1 %cmp177, label %if.then181, label %if.else187, !prof !211

if.then181:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv182 = trunc i64 %add to i32
  %conv182.frozen = freeze i32 %conv182
  %spec.select.frozen = freeze i32 %spec.select
  %div185 = udiv i32 %conv182.frozen, %spec.select.frozen
  %6 = mul i32 %div185, %spec.select.frozen
  %rem183.decomposed = sub i32 %conv182.frozen, %6
  %conv186 = zext i32 %div185 to i64
  br label %if.else394

if.else187:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %7 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %spec.select, i64 %add) #19, !srcloc !212
  %asmresult.i583 = extractvalue { i64, i64 } %7, 0
  %asmresult1.i = extractvalue { i64, i64 } %7, 1
  %shr.i = lshr i64 %asmresult.i583, 32
  %conv.i = trunc i64 %shr.i to i32
  br label %if.else394

if.else394:                                       ; preds = %if.else187, %if.then181
  %avg.0 = phi i64 [ %conv186, %if.then181 ], [ %asmresult1.i, %if.else187 ]
  %__rem.0 = phi i32 [ %rem183.decomposed, %if.then181 ], [ %conv.i, %if.else187 ]
  %conv193 = zext i32 %__rem.0 to i64
  %mul194 = mul nuw nsw i64 %conv193, 1000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul194)
  %cmp396 = icmp ult i64 %mul194, 4294967296
  br i1 %cmp396, label %if.then404, label %if.else410, !prof !211

if.then404:                                       ; preds = %if.else394
  call void @__sanitizer_cov_trace_pc() #14
  %conv405 = trunc i64 %mul194 to i32
  %div408 = udiv i32 %conv405, %spec.select
  br label %if.end414

if.else410:                                       ; preds = %if.else394
  call void @__sanitizer_cov_trace_pc() #14
  %8 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %spec.select, i64 %mul194) #19, !srcloc !212
  %asmresult1.i606 = extractvalue { i64, i64 } %8, 1
  %extract.t662 = trunc i64 %asmresult1.i606 to i32
  br label %if.end414

if.end414:                                        ; preds = %if.else410, %if.then404
  %rem.0.off0 = phi i32 [ %div408, %if.then404 ], [ %extract.t662, %if.else410 ]
  %call417 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.31, i64 noundef %avg.0, i32 noundef %rem.0.off0)
  ret i32 %call417
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apbridge_unipro_latency_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %requests_completed = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %requests_completed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %requests_completed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = call ptr @memcpy(ptr %buf, ptr @.str.27, i32 3)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %apbridge_unipro_latency = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %apbridge_unipro_latency to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %apbridge_unipro_latency, align 8
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %6)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call2, %if.end ], [ 2, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apbridge_unipro_latency_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %requests_completed = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %requests_completed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %requests_completed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = call ptr @memcpy(ptr %buf, ptr @.str.27, i32 3)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %max = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 13, i32 1
  %5 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %6)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call2, %if.end ], [ 2, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apbridge_unipro_latency_avg_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %count1 = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 13, i32 3
  %2 = ptrtoint ptr %count1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 %3
  %sum = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 13, i32 2
  %4 = ptrtoint ptr %sum to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sum, align 8
  %div = udiv i32 %spec.select, 2000000
  %conv = zext i32 %div to i64
  %add = add i64 %5, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add)
  %cmp177 = icmp ult i64 %add, 4294967296
  br i1 %cmp177, label %if.then181, label %if.else187, !prof !211

if.then181:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv182 = trunc i64 %add to i32
  %conv182.frozen = freeze i32 %conv182
  %spec.select.frozen = freeze i32 %spec.select
  %div185 = udiv i32 %conv182.frozen, %spec.select.frozen
  %6 = mul i32 %div185, %spec.select.frozen
  %rem183.decomposed = sub i32 %conv182.frozen, %6
  %conv186 = zext i32 %div185 to i64
  br label %if.else394

if.else187:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %7 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %spec.select, i64 %add) #19, !srcloc !212
  %asmresult.i583 = extractvalue { i64, i64 } %7, 0
  %asmresult1.i = extractvalue { i64, i64 } %7, 1
  %shr.i = lshr i64 %asmresult.i583, 32
  %conv.i = trunc i64 %shr.i to i32
  br label %if.else394

if.else394:                                       ; preds = %if.else187, %if.then181
  %avg.0 = phi i64 [ %conv186, %if.then181 ], [ %asmresult1.i, %if.else187 ]
  %__rem.0 = phi i32 [ %rem183.decomposed, %if.then181 ], [ %conv.i, %if.else187 ]
  %conv193 = zext i32 %__rem.0 to i64
  %mul194 = mul nuw nsw i64 %conv193, 1000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul194)
  %cmp396 = icmp ult i64 %mul194, 4294967296
  br i1 %cmp396, label %if.then404, label %if.else410, !prof !211

if.then404:                                       ; preds = %if.else394
  call void @__sanitizer_cov_trace_pc() #14
  %conv405 = trunc i64 %mul194 to i32
  %div408 = udiv i32 %conv405, %spec.select
  br label %if.end414

if.else410:                                       ; preds = %if.else394
  call void @__sanitizer_cov_trace_pc() #14
  %8 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %spec.select, i64 %mul194) #19, !srcloc !212
  %asmresult1.i606 = extractvalue { i64, i64 } %8, 1
  %extract.t662 = trunc i64 %asmresult1.i606 to i32
  br label %if.end414

if.end414:                                        ; preds = %if.else410, %if.then404
  %rem.0.off0 = phi i32 [ %div408, %if.then404 ], [ %extract.t662, %if.else410 ]
  %call417 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.31, i64 noundef %avg.0, i32 noundef %rem.0.off0)
  ret i32 %call417
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbphy_firmware_latency_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %requests_completed = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %requests_completed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %requests_completed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = call ptr @memcpy(ptr %buf, ptr @.str.27, i32 3)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %gbphy_firmware_latency = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %gbphy_firmware_latency to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gbphy_firmware_latency, align 8
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %6)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call2, %if.end ], [ 2, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbphy_firmware_latency_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %requests_completed = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %requests_completed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %requests_completed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = call ptr @memcpy(ptr %buf, ptr @.str.27, i32 3)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %max = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 14, i32 1
  %5 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %6)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call2, %if.end ], [ 2, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbphy_firmware_latency_avg_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %count1 = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %count1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 %3
  %sum = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 14, i32 2
  %4 = ptrtoint ptr %sum to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sum, align 8
  %div = udiv i32 %spec.select, 2000000
  %conv = zext i32 %div to i64
  %add = add i64 %5, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add)
  %cmp177 = icmp ult i64 %add, 4294967296
  br i1 %cmp177, label %if.then181, label %if.else187, !prof !211

if.then181:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv182 = trunc i64 %add to i32
  %conv182.frozen = freeze i32 %conv182
  %spec.select.frozen = freeze i32 %spec.select
  %div185 = udiv i32 %conv182.frozen, %spec.select.frozen
  %6 = mul i32 %div185, %spec.select.frozen
  %rem183.decomposed = sub i32 %conv182.frozen, %6
  %conv186 = zext i32 %div185 to i64
  br label %if.else394

if.else187:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %7 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %spec.select, i64 %add) #19, !srcloc !212
  %asmresult.i583 = extractvalue { i64, i64 } %7, 0
  %asmresult1.i = extractvalue { i64, i64 } %7, 1
  %shr.i = lshr i64 %asmresult.i583, 32
  %conv.i = trunc i64 %shr.i to i32
  br label %if.else394

if.else394:                                       ; preds = %if.else187, %if.then181
  %avg.0 = phi i64 [ %conv186, %if.then181 ], [ %asmresult1.i, %if.else187 ]
  %__rem.0 = phi i32 [ %rem183.decomposed, %if.then181 ], [ %conv.i, %if.else187 ]
  %conv193 = zext i32 %__rem.0 to i64
  %mul194 = mul nuw nsw i64 %conv193, 1000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul194)
  %cmp396 = icmp ult i64 %mul194, 4294967296
  br i1 %cmp396, label %if.then404, label %if.else410, !prof !211

if.then404:                                       ; preds = %if.else394
  call void @__sanitizer_cov_trace_pc() #14
  %conv405 = trunc i64 %mul194 to i32
  %div408 = udiv i32 %conv405, %spec.select
  br label %if.end414

if.else410:                                       ; preds = %if.else394
  call void @__sanitizer_cov_trace_pc() #14
  %8 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %spec.select, i64 %mul194) #19, !srcloc !212
  %asmresult1.i606 = extractvalue { i64, i64 } %8, 1
  %extract.t662 = trunc i64 %asmresult1.i606 to i32
  br label %if.end414

if.end414:                                        ; preds = %if.else410, %if.then404
  %rem.0.off0 = phi i32 [ %div408, %if.then404 ], [ %extract.t662, %if.else410 ]
  %call417 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.31, i64 noundef %avg.0, i32 noundef %rem.0.off0)
  ret i32 %call417
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @type_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %type = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.45, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @type_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mutex = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %type = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 15
  %call1 = tail call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.46, ptr noundef %type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 1
  br i1 %cmp.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @gb_loopback_check_attr(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %len.addr.0 = phi i32 [ %len, %if.else ], [ -22, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret i32 %len.addr.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gb_loopback_check_attr(ptr noundef %gb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %us_wait = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 21
  %0 = ptrtoint ptr %us_wait to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %us_wait, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %1)
  %cmp = icmp sgt i32 %1, 1000000
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %us_wait to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1000000, ptr %us_wait, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %size = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 18
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size, align 4
  %5 = load i32, ptr getelementptr inbounds (%struct.gb_loopback_device, ptr @gb_dev, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %5)
  %cmp2 = icmp ugt i32 %4, %5
  br i1 %cmp2, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %size, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %requests_timedout = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 24
  %7 = ptrtoint ptr %requests_timedout to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %requests_timedout, align 4
  %requests_completed = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 23
  %8 = ptrtoint ptr %requests_completed to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %requests_completed, align 8
  %iteration_count = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 20
  %9 = ptrtoint ptr %iteration_count to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %iteration_count, align 4
  %send_count = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 33
  %10 = ptrtoint ptr %send_count to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %send_count, align 8
  %error = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 22
  %11 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %error, align 4
  %12 = load i32, ptr @kfifo_depth, align 4
  %iteration_max = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 19
  %13 = ptrtoint ptr %iteration_max to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iteration_max, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp6 = icmp ult i32 %12, %14
  br i1 %cmp6, label %do.end, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 5
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.47, i32 noundef %14, i32 noundef %12) #16
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.end5.if.end9_crit_edge
  %kfifo_lat = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 2
  %17 = ptrtoint ptr %kfifo_lat to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %kfifo_lat, align 4
  %out = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 2, i32 0, i32 0, i32 1
  %19 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %out, align 4
  %type = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 15
  %20 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type, align 8
  %.off = add i32 %21, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.else.i, label %sw.default

if.else.i:                                        ; preds = %if.end9
  %timeout = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 25
  %22 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %timeout, align 8
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %23) #12
  %jiffy_timeout = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 26
  %24 = ptrtoint ptr %jiffy_timeout to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call3.i, ptr %jiffy_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not = icmp eq i32 %call3.i, 0
  br i1 %tobool.not, label %if.else.i.if.end18.sink.split_crit_edge, label %if.else

if.else.i.if.end18.sink.split_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.sink.split

if.else:                                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %call3.i)
  %cmp14 = icmp ugt i32 %call3.i, 10000
  br i1 %cmp14, label %if.else.if.end18.sink.split_crit_edge, label %if.else.if.end18_crit_edge

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.else.if.end18.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.sink.split

if.end18.sink.split:                              ; preds = %if.else.if.end18.sink.split_crit_edge, %if.else.i.if.end18.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.else.i.if.end18.sink.split_crit_edge ], [ 10000, %if.else.if.end18.sink.split_crit_edge ]
  %25 = ptrtoint ptr %jiffy_timeout to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink, ptr %jiffy_timeout, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.else.if.end18_crit_edge
  %latency.i = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 10
  %26 = call ptr @memcpy(ptr %latency.i, ptr @__const.gb_loopback_reset_stats.reset, i32 24)
  %throughput.i = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 11
  %27 = call ptr @memcpy(ptr %throughput.i, ptr @__const.gb_loopback_reset_stats.reset, i32 24)
  %requests_per_second.i = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 12
  %28 = call ptr @memcpy(ptr %requests_per_second.i, ptr @__const.gb_loopback_reset_stats.reset, i32 24)
  %apbridge_unipro_latency.i = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 13
  %29 = call ptr @memcpy(ptr %apbridge_unipro_latency.i, ptr @__const.gb_loopback_reset_stats.reset, i32 24)
  %gbphy_firmware_latency.i = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 14
  %30 = call ptr @memcpy(ptr %gbphy_firmware_latency.i, ptr @__const.gb_loopback_reset_stats.reset, i32 24)
  %apbridge_latency_ts.i = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 31
  %31 = ptrtoint ptr %apbridge_latency_ts.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %apbridge_latency_ts.i, align 8
  %gbphy_latency_ts.i = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 32
  %32 = ptrtoint ptr %gbphy_latency_ts.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %gbphy_latency_ts.i, align 4
  %ts.i = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 9
  %33 = ptrtoint ptr %ts.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 0, ptr %ts.i, align 8
  %wq = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %sw.epilog

sw.default:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %type, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end18
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %size = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @size_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mutex = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %size = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 18
  %call1 = tail call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.25, ptr noundef %size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 1
  br i1 %cmp.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @gb_loopback_check_attr(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %len.addr.0 = phi i32 [ %len, %if.else ], [ -22, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret i32 %len.addr.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @us_wait_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %us_wait = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %us_wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %us_wait, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.45, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @us_wait_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mutex = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %us_wait = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 21
  %call1 = tail call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.46, ptr noundef %us_wait)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 1
  br i1 %cmp.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @gb_loopback_check_attr(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %len.addr.0 = phi i32 [ %len, %if.else ], [ -22, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret i32 %len.addr.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iteration_count_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %iteration_count = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %iteration_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iteration_count, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iteration_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %iteration_max = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %iteration_max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iteration_max, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iteration_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mutex = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %iteration_max = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 19
  %call1 = tail call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.25, ptr noundef %iteration_max)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 1
  br i1 %cmp.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @gb_loopback_check_attr(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %len.addr.0 = phi i32 [ %len, %if.else ], [ -22, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret i32 %len.addr.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @async_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %async = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %async, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @async_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mutex = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %async = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 16
  %call1 = tail call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.25, ptr noundef %async)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 1
  br i1 %cmp.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @gb_loopback_check_attr(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %len.addr.0 = phi i32 [ %len, %if.else ], [ -22, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret i32 %len.addr.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @error_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %error = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @requests_completed_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %requests_completed = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %requests_completed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %requests_completed, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @requests_timedout_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %requests_timedout = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %requests_timedout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %requests_timedout, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timeout_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %timeout = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timeout, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timeout_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mutex = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %timeout = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 25
  %call1 = tail call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.25, ptr noundef %timeout)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 1
  br i1 %cmp.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @gb_loopback_check_attr(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %len.addr.0 = phi i32 [ %len, %if.else ], [ -22, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret i32 %len.addr.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @outstanding_operations_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %outstanding_operations_max = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %outstanding_operations_max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %outstanding_operations_max, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @outstanding_operations_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mutex = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %outstanding_operations_max = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 29
  %call1 = tail call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.25, ptr noundef %outstanding_operations_max)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 1
  br i1 %cmp.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @gb_loopback_check_attr(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %len.addr.0 = phi i32 [ %len, %if.else ], [ -22, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret i32 %len.addr.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timeout_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %timeout_min = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %timeout_min to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timeout_min, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timeout_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %timeout_max = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %timeout_max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timeout_max, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gb_loopback_async_wait_all(ptr noundef %gb) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 420) #12
  %outstanding_operations = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %outstanding_operations, i32 noundef 4) #12
  %0 = ptrtoint ptr %outstanding_operations to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %outstanding_operations, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.end11_crit_edge, label %if.end

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %2 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %wq_completion = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 7
  %call418 = call i32 @prepare_to_wait_event(ptr noundef %wq_completion, ptr noundef nonnull %__wq_entry, i32 noundef 2) #12
  %call.i.i1519 = call zeroext i1 @__kasan_check_read(ptr noundef %outstanding_operations, i32 noundef 4) #12
  %3 = ptrtoint ptr %outstanding_operations to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %outstanding_operations, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool7.not20 = icmp eq i32 %4, 0
  br i1 %tobool7.not20, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #12
  %call4 = call i32 @prepare_to_wait_event(ptr noundef %wq_completion, ptr noundef nonnull %__wq_entry, i32 noundef 2) #12
  %call.i.i15 = call zeroext i1 @__kasan_check_read(ptr noundef %outstanding_operations, i32 noundef 4) #12
  %5 = ptrtoint ptr %outstanding_operations to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %outstanding_operations, align 4
  %tobool7.not = icmp eq i32 %6, 0
  br i1 %tobool7.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %wq_completion, ptr noundef nonnull %__wq_entry) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %do.end11

do.end11:                                         ; preds = %for.end, %entry.do.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gb_loopback_calculate_stats(ptr noundef %gb, i1 noundef zeroext %error) unnamed_addr #0 align 64 {
entry:
  %lat.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %error, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %requests_completed = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 23
  %0 = ptrtoint ptr %requests_completed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %requests_completed, align 8
  %inc = add i32 %1, 1
  store i32 %inc, ptr %requests_completed, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lat.i) #12
  %elapsed_nsecs.i = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 30
  %2 = ptrtoint ptr %elapsed_nsecs.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %elapsed_nsecs.i, align 8
  %4 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %3, i32 0) #19, !srcloc !213
  %asmresult.i.i.i = extractvalue { i64, i32 } %4, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %4, 1
  %5 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %3, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #19, !srcloc !214
  %asmresult10.i.i.i = extractvalue { i64, i32 } %5, 0
  %extract261.i.i = lshr i64 %asmresult10.i.i.i, 9
  %extract.t262.i.i = trunc i64 %extract261.i.i to i32
  %6 = ptrtoint ptr %lat.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %extract.t262.i.i, ptr %lat.i, align 4
  %latency.i = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 10
  %7 = ptrtoint ptr %latency.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %latency.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %extract.t262.i.i)
  %cmp.i.i = icmp ugt i32 %8, %extract.t262.i.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.if.end.i.i_crit_edge

if.then.if.end.i.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %latency.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %extract.t262.i.i, ptr %latency.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.if.end.i.i_crit_edge
  %max.i.i = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %extract.t262.i.i)
  %cmp2.i.i = icmp ult i32 %11, %extract.t262.i.i
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.end.i.i.gb_loopback_update_stats.exit.i_crit_edge

if.end.i.i.gb_loopback_update_stats.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gb_loopback_update_stats.exit.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %max.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %extract.t262.i.i, ptr %max.i.i, align 4
  br label %gb_loopback_update_stats.exit.i

gb_loopback_update_stats.exit.i:                  ; preds = %if.then3.i.i, %if.end.i.i.gb_loopback_update_stats.exit.i_crit_edge
  %conv.i.i = and i64 %extract261.i.i, 4294967295
  %sum.i.i = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 10, i32 2
  %13 = ptrtoint ptr %sum.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %sum.i.i, align 8
  %add.i.i = add i64 %14, %conv.i.i
  store i64 %add.i.i, ptr %sum.i.i, align 8
  %count.i.i = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 10, i32 3
  %15 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count.i.i, align 8
  %inc.i.i = add i32 %16, 1
  store i32 %inc.i.i, ptr %count.i.i, align 8
  %kfifo_lat.i = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 2
  %call1.i = call i32 @__kfifo_in(ptr noundef %kfifo_lat.i, ptr noundef nonnull %lat.i, i32 noundef 4) #12
  %apbridge_unipro_latency.i = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 13
  %apbridge_latency_ts.i = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 31
  %17 = ptrtoint ptr %apbridge_latency_ts.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %apbridge_latency_ts.i, align 8
  %19 = ptrtoint ptr %apbridge_unipro_latency.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %apbridge_unipro_latency.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %18)
  %cmp.i8.i = icmp ugt i32 %20, %18
  br i1 %cmp.i8.i, label %if.then.i9.i, label %gb_loopback_update_stats.exit.i.if.end.i12.i_crit_edge

gb_loopback_update_stats.exit.i.if.end.i12.i_crit_edge: ; preds = %gb_loopback_update_stats.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i12.i

if.then.i9.i:                                     ; preds = %gb_loopback_update_stats.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %apbridge_unipro_latency.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %18, ptr %apbridge_unipro_latency.i, align 8
  br label %if.end.i12.i

if.end.i12.i:                                     ; preds = %if.then.i9.i, %gb_loopback_update_stats.exit.i.if.end.i12.i_crit_edge
  %max.i10.i = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 13, i32 1
  %22 = ptrtoint ptr %max.i10.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max.i10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %18)
  %cmp2.i11.i = icmp ult i32 %23, %18
  br i1 %cmp2.i11.i, label %if.then3.i13.i, label %if.end.i12.i.gb_loopback_update_stats.exit19.i_crit_edge

if.end.i12.i.gb_loopback_update_stats.exit19.i_crit_edge: ; preds = %if.end.i12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gb_loopback_update_stats.exit19.i

if.then3.i13.i:                                   ; preds = %if.end.i12.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %max.i10.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %18, ptr %max.i10.i, align 4
  br label %gb_loopback_update_stats.exit19.i

gb_loopback_update_stats.exit19.i:                ; preds = %if.then3.i13.i, %if.end.i12.i.gb_loopback_update_stats.exit19.i_crit_edge
  %conv.i14.i = zext i32 %18 to i64
  %sum.i15.i = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 13, i32 2
  %25 = ptrtoint ptr %sum.i15.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %sum.i15.i, align 8
  %add.i16.i = add i64 %26, %conv.i14.i
  store i64 %add.i16.i, ptr %sum.i15.i, align 8
  %count.i17.i = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 13, i32 3
  %27 = ptrtoint ptr %count.i17.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %count.i17.i, align 8
  %inc.i18.i = add i32 %28, 1
  store i32 %inc.i18.i, ptr %count.i17.i, align 8
  %gbphy_firmware_latency.i = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 14
  %gbphy_latency_ts.i = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 32
  %29 = ptrtoint ptr %gbphy_latency_ts.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %gbphy_latency_ts.i, align 4
  %31 = ptrtoint ptr %gbphy_firmware_latency.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %gbphy_firmware_latency.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %30)
  %cmp.i20.i = icmp ugt i32 %32, %30
  br i1 %cmp.i20.i, label %if.then.i21.i, label %gb_loopback_update_stats.exit19.i.if.end.i24.i_crit_edge

gb_loopback_update_stats.exit19.i.if.end.i24.i_crit_edge: ; preds = %gb_loopback_update_stats.exit19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i24.i

if.then.i21.i:                                    ; preds = %gb_loopback_update_stats.exit19.i
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %gbphy_firmware_latency.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %30, ptr %gbphy_firmware_latency.i, align 8
  br label %if.end.i24.i

if.end.i24.i:                                     ; preds = %if.then.i21.i, %gb_loopback_update_stats.exit19.i.if.end.i24.i_crit_edge
  %max.i22.i = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 14, i32 1
  %34 = ptrtoint ptr %max.i22.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max.i22.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %30)
  %cmp2.i23.i = icmp ult i32 %35, %30
  br i1 %cmp2.i23.i, label %if.then3.i25.i, label %if.end.i24.i.gb_loopback_calculate_latency_stats.exit_crit_edge

if.end.i24.i.gb_loopback_calculate_latency_stats.exit_crit_edge: ; preds = %if.end.i24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gb_loopback_calculate_latency_stats.exit

if.then3.i25.i:                                   ; preds = %if.end.i24.i
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %max.i22.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %30, ptr %max.i22.i, align 4
  br label %gb_loopback_calculate_latency_stats.exit

gb_loopback_calculate_latency_stats.exit:         ; preds = %if.then3.i25.i, %if.end.i24.i.gb_loopback_calculate_latency_stats.exit_crit_edge
  %conv.i26.i = zext i32 %30 to i64
  %sum.i27.i = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 14, i32 2
  %37 = ptrtoint ptr %sum.i27.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %sum.i27.i, align 8
  %add.i28.i = add i64 %38, %conv.i26.i
  store i64 %add.i28.i, ptr %sum.i27.i, align 8
  %count.i29.i = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 14, i32 3
  %39 = ptrtoint ptr %count.i29.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count.i29.i, align 8
  %inc.i30.i = add i32 %40, 1
  store i32 %inc.i30.i, ptr %count.i29.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lat.i) #12
  br label %if.end

if.end:                                           ; preds = %gb_loopback_calculate_latency_stats.exit, %entry.if.end_crit_edge
  %call = call i64 @ktime_get() #12
  %ts = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 9
  %41 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %ts, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call, i64 %42)
  %cmp.i.i26 = icmp ugt i64 %call, %42
  br i1 %cmp.i.i26, label %if.then.i.i27, label %if.else.i.i

if.then.i.i27:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = sub i64 %call, %42
  br label %gb_loopback_calc_latency.exit

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %sub1.i.i = sub i64 86400000000000, %call
  %add.i.i28 = add i64 %sub1.i.i, %42
  br label %gb_loopback_calc_latency.exit

gb_loopback_calc_latency.exit:                    ; preds = %if.else.i.i, %if.then.i.i27
  %retval.0.i.i = phi i64 [ %sub.i.i, %if.then.i.i27 ], [ %add.i.i28, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 999999999, i64 %retval.0.i.i)
  %cmp = icmp ugt i64 %retval.0.i.i, 999999999
  br i1 %cmp, label %gb_loopback_calc_latency.exit.if.then3_crit_edge, label %lor.lhs.false

gb_loopback_calc_latency.exit.if.then3_crit_edge: ; preds = %gb_loopback_calc_latency.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3

lor.lhs.false:                                    ; preds = %gb_loopback_calc_latency.exit
  %iteration_count = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 20
  %43 = ptrtoint ptr %iteration_count to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %iteration_count, align 4
  %iteration_max = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 19
  %45 = ptrtoint ptr %iteration_max to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %iteration_max, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp2 = icmp eq i32 %44, %46
  br i1 %cmp2, label %lor.lhs.false.if.then3_crit_edge, label %lor.lhs.false.if.end12_crit_edge

lor.lhs.false.if.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

lor.lhs.false.if.then3_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3

if.then3:                                         ; preds = %lor.lhs.false.if.then3_crit_edge, %gb_loopback_calc_latency.exit.if.then3_crit_edge
  %47 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %retval.0.i.i, i32 0) #19, !srcloc !213
  %asmresult.i.i = extractvalue { i64, i32 } %47, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %47, 1
  %48 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %retval.0.i.i, i64 %asmresult.i.i, i32 %asmresult4.i.i) #19, !srcloc !214
  %asmresult10.i.i = extractvalue { i64, i32 } %48, 0
  %extract261.i = lshr i64 %asmresult10.i.i, 9
  %extract.t262.i = trunc i64 %extract261.i to i32
  %type.i = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 15
  %49 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %type.i, align 8
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %50, label %if.then3.gb_loopback_throughput_update.exit_crit_edge [
    i32 2, label %if.then3.sw.epilog.i_crit_edge
    i32 4, label %sw.bb.i
    i32 3, label %sw.bb2.i
  ]

if.then3.sw.epilog.i_crit_edge:                   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

if.then3.gb_loopback_throughput_update.exit_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %gb_loopback_throughput_update.exit

sw.bb.i:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %size.i = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 18
  %52 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %size.i, align 4
  %add.i = add i32 %53, 12
  %conv.i = zext i32 %add.i to i64
  %add1.i = add nuw nsw i64 %conv.i, 16
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %size3.i = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 18
  %54 = ptrtoint ptr %size3.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %size3.i, align 4
  %mul.i = shl i32 %55, 1
  %add4.i = add i32 %mul.i, 24
  %conv5.i = zext i32 %add4.i to i64
  %add6.i = add nuw nsw i64 %conv5.i, 16
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %sw.bb.i, %if.then3.sw.epilog.i_crit_edge
  %aggregate_size.0.i = phi i64 [ %add6.i, %sw.bb2.i ], [ %add1.i, %sw.bb.i ], [ 16, %if.then3.sw.epilog.i_crit_edge ]
  %requests_completed.i = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 23
  %56 = ptrtoint ptr %requests_completed.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %requests_completed.i, align 8
  %conv7.i = zext i32 %57 to i64
  %mul8.i = mul nuw nsw i64 %aggregate_size.0.i, 1000000
  %mul9.i = mul i64 %mul8.i, %conv7.i
  %throughput.i = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 11
  %sum.i.i29 = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 11, i32 2
  %58 = ptrtoint ptr %sum.i.i29 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %sum.i.i29, align 8
  %add.i.i30 = add i64 %mul9.i, %59
  store i64 %add.i.i30, ptr %sum.i.i29, align 8
  %count1.i.i = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 11, i32 3
  %60 = ptrtoint ptr %count1.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %count1.i.i, align 8
  %add2.i.i = add i32 %61, %extract.t262.i
  store i32 %add2.i.i, ptr %count1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul9.i)
  %cmp167.i.i = icmp ult i64 %mul9.i, 4294967296
  br i1 %cmp167.i.i, label %if.then171.i.i, label %if.else177.i.i, !prof !211

if.then171.i.i:                                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv172.i.i = trunc i64 %mul9.i to i32
  %div175.i.i = udiv i32 %conv172.i.i, %extract.t262.i
  %conv176.i.i = zext i32 %div175.i.i to i64
  br label %if.end181.i.i

if.else177.i.i:                                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  %62 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %extract.t262.i, i64 %mul9.i) #19, !srcloc !212
  %asmresult1.i.i.i = extractvalue { i64, i64 } %62, 1
  br label %if.end181.i.i

if.end181.i.i:                                    ; preds = %if.else177.i.i, %if.then171.i.i
  %val.addr.0.i.i = phi i64 [ %conv176.i.i, %if.then171.i.i ], [ %asmresult1.i.i.i, %if.else177.i.i ]
  %63 = ptrtoint ptr %throughput.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %throughput.i, align 8
  %conv183.i.i = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %val.addr.0.i.i, i64 %conv183.i.i)
  %cmp184.i.i = icmp ult i64 %val.addr.0.i.i, %conv183.i.i
  br i1 %cmp184.i.i, label %if.then186.i.i, label %if.end181.i.i.if.end189.i.i_crit_edge

if.end181.i.i.if.end189.i.i_crit_edge:            ; preds = %if.end181.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end189.i.i

if.then186.i.i:                                   ; preds = %if.end181.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv187.i.i = trunc i64 %val.addr.0.i.i to i32
  %65 = ptrtoint ptr %throughput.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv187.i.i, ptr %throughput.i, align 8
  br label %if.end189.i.i

if.end189.i.i:                                    ; preds = %if.then186.i.i, %if.end181.i.i.if.end189.i.i_crit_edge
  %max.i.i35 = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 11, i32 1
  %66 = ptrtoint ptr %max.i.i35 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %max.i.i35, align 4
  %conv190.i.i = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %val.addr.0.i.i, i64 %conv190.i.i)
  %cmp191.i.i = icmp ugt i64 %val.addr.0.i.i, %conv190.i.i
  br i1 %cmp191.i.i, label %if.then193.i.i, label %if.end189.i.i.gb_loopback_throughput_update.exit_crit_edge

if.end189.i.i.gb_loopback_throughput_update.exit_crit_edge: ; preds = %if.end189.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gb_loopback_throughput_update.exit

if.then193.i.i:                                   ; preds = %if.end189.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv194.i.i = trunc i64 %val.addr.0.i.i to i32
  %68 = ptrtoint ptr %max.i.i35 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv194.i.i, ptr %max.i.i35, align 4
  br label %gb_loopback_throughput_update.exit

gb_loopback_throughput_update.exit:               ; preds = %if.then193.i.i, %if.end189.i.i.gb_loopback_throughput_update.exit_crit_edge, %if.then3.gb_loopback_throughput_update.exit_crit_edge
  %requests_completed.i36 = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 23
  %69 = ptrtoint ptr %requests_completed.i36 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %requests_completed.i36, align 8
  %mul.i37 = mul i32 %70, 1000000
  %conv.i38 = zext i32 %mul.i37 to i64
  %requests_per_second.i = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 12
  %sum.i.i39 = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 12, i32 2
  %71 = ptrtoint ptr %sum.i.i39 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %sum.i.i39, align 8
  %add.i.i40 = add i64 %72, %conv.i38
  store i64 %add.i.i40, ptr %sum.i.i39, align 8
  %count1.i.i41 = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 12, i32 3
  %73 = ptrtoint ptr %count1.i.i41 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %count1.i.i41, align 8
  %add2.i.i42 = add i32 %74, %extract.t262.i
  store i32 %add2.i.i42, ptr %count1.i.i41, align 8
  %div175.i.i145 = udiv i32 %mul.i37, %extract.t262.i
  %75 = ptrtoint ptr %requests_per_second.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %requests_per_second.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div175.i.i145, i32 %76)
  %cmp184.i.i150 = icmp ult i32 %div175.i.i145, %76
  br i1 %cmp184.i.i150, label %if.then186.i.i153, label %gb_loopback_throughput_update.exit.if.end189.i.i157_crit_edge

gb_loopback_throughput_update.exit.if.end189.i.i157_crit_edge: ; preds = %gb_loopback_throughput_update.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end189.i.i157

if.then186.i.i153:                                ; preds = %gb_loopback_throughput_update.exit
  call void @__sanitizer_cov_trace_pc() #14
  %77 = ptrtoint ptr %requests_per_second.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %div175.i.i145, ptr %requests_per_second.i, align 8
  br label %if.end189.i.i157

if.end189.i.i157:                                 ; preds = %if.then186.i.i153, %gb_loopback_throughput_update.exit.if.end189.i.i157_crit_edge
  %max.i.i154 = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 12, i32 1
  %78 = ptrtoint ptr %max.i.i154 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %max.i.i154, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div175.i.i145, i32 %79)
  %cmp191.i.i156 = icmp ugt i32 %div175.i.i145, %79
  br i1 %cmp191.i.i156, label %if.then193.i.i159, label %if.end189.i.i157.gb_loopback_requests_update.exit_crit_edge

if.end189.i.i157.gb_loopback_requests_update.exit_crit_edge: ; preds = %if.end189.i.i157
  call void @__sanitizer_cov_trace_pc() #14
  br label %gb_loopback_requests_update.exit

if.then193.i.i159:                                ; preds = %if.end189.i.i157
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %max.i.i154 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %div175.i.i145, ptr %max.i.i154, align 4
  br label %gb_loopback_requests_update.exit

gb_loopback_requests_update.exit:                 ; preds = %if.then193.i.i159, %if.end189.i.i157.gb_loopback_requests_update.exit_crit_edge
  %iteration_count5 = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 20
  %81 = ptrtoint ptr %iteration_count5 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %iteration_count5, align 4
  %iteration_max6 = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 19
  %83 = ptrtoint ptr %iteration_max6 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %iteration_max6, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %84)
  %cmp7.not = icmp eq i32 %82, %84
  br i1 %cmp7.not, label %gb_loopback_requests_update.exit.if.end12_crit_edge, label %if.then8

gb_loopback_requests_update.exit.if.end12_crit_edge: ; preds = %gb_loopback_requests_update.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then8:                                         ; preds = %gb_loopback_requests_update.exit
  call void @__sanitizer_cov_trace_pc() #14
  %85 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %call, ptr %ts, align 8
  %86 = ptrtoint ptr %requests_completed.i36 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %requests_completed.i36, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %gb_loopback_requests_update.exit.if.end12_crit_edge, %lor.lhs.false.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gb_loopback_async_operation(ptr noundef %gb, i32 noundef %type, ptr nocapture noundef readonly %request, i32 noundef %request_size, i32 noundef %response_size, ptr noundef %completion) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 24) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %gb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %gb, align 8
  %conv = trunc i32 %type to i8
  %call.i = tail call ptr @gb_operation_create_flags(ptr noundef %2, i8 noundef zeroext %conv, i32 noundef %request_size, i32 noundef %response_size, i32 noundef 0, i32 noundef 3264) #12
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end4

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %request_size)
  %tobool5.not = icmp eq i32 %request_size, 0
  br i1 %tobool5.not, label %if.end4.if.end8_crit_edge, label %if.then6

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %request7 = getelementptr inbounds %struct.gb_operation, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %request7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %request7, align 4
  %payload = getelementptr inbounds %struct.gb_message, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %payload, align 4
  %7 = call ptr @memcpy(ptr %6, ptr %request, i32 %request_size)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4.if.end8_crit_edge
  %private.i = getelementptr inbounds %struct.gb_operation, ptr %call.i, i32 0, i32 15
  %8 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %private.i, align 4
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %gb, ptr %call7.i.i, align 8
  %operation10 = getelementptr inbounds %struct.gb_loopback_async_operation, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %operation10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %operation10, align 4
  %completion11 = getelementptr inbounds %struct.gb_loopback_async_operation, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %completion11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %completion, ptr %completion11, align 8
  %call12 = tail call i64 @ktime_get() #12
  %ts = getelementptr inbounds %struct.gb_loopback_async_operation, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %call12, ptr %ts, align 8
  %outstanding_operations = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %outstanding_operations, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %outstanding_operations, i32 1, i32 3, i32 1) #12
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %outstanding_operations, ptr %outstanding_operations, i32 1, ptr elementtype(i32) %outstanding_operations) #12, !srcloc !208
  %jiffy_timeout = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 26
  %14 = ptrtoint ptr %jiffy_timeout to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %jiffy_timeout, align 4
  %call13 = tail call i32 @jiffies_to_msecs(i32 noundef %15) #12
  %call14 = tail call i32 @gb_operation_request_send(ptr noundef nonnull %call.i, ptr noundef nonnull @gb_loopback_async_operation_callback, i32 noundef %call13, i32 noundef 3264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end8.cleanup_crit_edge, label %if.then16

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then16:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i40 = tail call zeroext i1 @__kasan_check_write(ptr noundef %outstanding_operations, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %outstanding_operations, i32 1, i32 3, i32 1) #12
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %outstanding_operations, ptr %outstanding_operations, i32 1, ptr elementtype(i32) %outstanding_operations) #12, !srcloc !215
  tail call void @gb_operation_put(ptr noundef nonnull %call.i) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then16, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call14, %if.then16 ], [ -12, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_operation_request_send(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_loopback_async_operation_callback(ptr noundef %operation) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #12
  %call1 = tail call i32 @gb_operation_result(ptr noundef %operation) #12
  %private.i = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 15
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %mutex = getelementptr inbounds %struct.gb_loopback, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %completion = getelementptr inbounds %struct.gb_loopback_async_operation, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %completion to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %completion, align 8
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %land.lhs.true.if.then8_crit_edge, label %if.end

land.lhs.true.if.then8_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

if.end:                                           ; preds = %land.lhs.true
  %call6 = tail call i32 %5(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end.if.then8_crit_edge, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

if.then8:                                         ; preds = %if.end.if.then8_crit_edge, %land.lhs.true.if.then8_crit_edge
  %ts = getelementptr inbounds %struct.gb_loopback_async_operation, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ts, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call, i64 %7)
  %cmp.i.i = icmp ugt i64 %call, %7
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = sub i64 %call, %7
  br label %gb_loopback_calc_latency.exit

if.else.i.i:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %sub1.i.i = sub i64 86400000000000, %call
  %add.i.i = add i64 %sub1.i.i, %7
  br label %gb_loopback_calc_latency.exit

gb_loopback_calc_latency.exit:                    ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i64 [ %sub.i.i, %if.then.i.i ], [ %add.i.i, %if.else.i.i ]
  %elapsed_nsecs = getelementptr inbounds %struct.gb_loopback, ptr %3, i32 0, i32 30
  %8 = ptrtoint ptr %elapsed_nsecs to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %retval.0.i.i, ptr %elapsed_nsecs, align 8
  br label %if.end13

if.else:                                          ; preds = %if.end.if.else_crit_edge, %entry.if.else_crit_edge
  %result.046 = phi i32 [ %call6, %if.end.if.else_crit_edge ], [ %call1, %entry.if.else_crit_edge ]
  %error = getelementptr inbounds %struct.gb_loopback, ptr %3, i32 0, i32 22
  %9 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %error, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %result.046)
  %cmp = icmp eq i32 %result.046, -110
  br i1 %cmp, label %if.then10, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %requests_timedout = getelementptr inbounds %struct.gb_loopback, ptr %3, i32 0, i32 24
  %11 = ptrtoint ptr %requests_timedout to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %requests_timedout, align 4
  %inc11 = add i32 %12, 1
  store i32 %inc11, ptr %requests_timedout, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.else.if.end13_crit_edge, %gb_loopback_calc_latency.exit
  %tobool747 = phi i1 [ true, %if.else.if.end13_crit_edge ], [ true, %if.then10 ], [ false, %gb_loopback_calc_latency.exit ]
  %iteration_count = getelementptr inbounds %struct.gb_loopback, ptr %3, i32 0, i32 20
  %13 = ptrtoint ptr %iteration_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iteration_count, align 4
  %inc14 = add i32 %14, 1
  store i32 %inc14, ptr %iteration_count, align 4
  tail call fastcc void @gb_loopback_calculate_stats(ptr noundef %3, i1 noundef zeroext %tobool747)
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gb_loopback_async_operation_callback.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gb_loopback_async_operation_callback, %if.then21)) #12
          to label %do.end [label %if.then21], !srcloc !209

if.then21:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 8
  %bundle = getelementptr inbounds %struct.gb_connection, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bundle, align 4
  %id = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 5
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %id, align 2
  %conv = zext i16 %20 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gb_loopback_async_operation_callback.__UNIQUE_ID_ddebug230, ptr noundef %18, ptr noundef nonnull @.str.69, i32 noundef %conv) #12
  br label %do.end

do.end:                                           ; preds = %if.then21, %if.end13
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %outstanding_operations = getelementptr inbounds %struct.gb_loopback, ptr %22, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %outstanding_operations, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %outstanding_operations, i32 1, i32 3, i32 1) #12
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %outstanding_operations, ptr %outstanding_operations, i32 1, ptr elementtype(i32) %outstanding_operations) #12, !srcloc !215
  %wq_completion = getelementptr inbounds %struct.gb_loopback, ptr %3, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %wq_completion, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  tail call void @gb_operation_put(ptr noundef %operation) #12
  tail call void @kfree(ptr noundef %1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_operation_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gb_operation_create_flags(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_operation_result(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_loopback_async_transfer_complete(ptr nocapture noundef readonly %op_async) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %op_async to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op_async, align 8
  %operation3 = getelementptr inbounds %struct.gb_loopback_async_operation, ptr %op_async, i32 0, i32 1
  %2 = ptrtoint ptr %operation3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %operation3, align 4
  %request4 = getelementptr inbounds %struct.gb_operation, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %request4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %request4, align 4
  %payload = getelementptr inbounds %struct.gb_message, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %payload, align 4
  %response5 = getelementptr inbounds %struct.gb_operation, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %response5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %response5, align 4
  %payload6 = getelementptr inbounds %struct.gb_message, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %payload6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %payload6, align 4
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %7, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %data = getelementptr inbounds %struct.gb_loopback_transfer_request, ptr %7, i32 0, i32 3
  %data8 = getelementptr inbounds %struct.gb_loopback_transfer_response, ptr %11, i32 0, i32 3
  %bcmp = tail call i32 @bcmp(ptr %data, ptr %data8, i32 %14) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %bundle = getelementptr inbounds %struct.gb_connection, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bundle, align 4
  %id = getelementptr inbounds %struct.gb_operation, ptr %3, i32 0, i32 5
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %id, align 2
  %conv = zext i16 %20 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.70, i32 noundef %conv) #16
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %reserved0 = getelementptr inbounds %struct.gb_loopback_transfer_response, ptr %11, i32 0, i32 1
  %21 = ptrtoint ptr %reserved0 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %reserved0, align 1
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %apbridge_latency_ts = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 31
  %24 = ptrtoint ptr %apbridge_latency_ts to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %apbridge_latency_ts, align 8
  %reserved1 = getelementptr inbounds %struct.gb_loopback_transfer_response, ptr %11, i32 0, i32 2
  %25 = ptrtoint ptr %reserved1 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %reserved1, align 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %gbphy_latency_ts = getelementptr inbounds %struct.gb_loopback, ptr %1, i32 0, i32 32
  %28 = ptrtoint ptr %gbphy_latency_ts to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %gbphy_latency_ts, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %retval1.0 = phi i32 [ -121, %do.end ], [ 0, %if.else ]
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gb_loopback_operation_sync(ptr nocapture noundef %gb, i32 noundef %type, ptr nocapture noundef readonly %request, i32 noundef %request_size, ptr nocapture noundef writeonly %response, i32 noundef %response_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #12
  %0 = ptrtoint ptr %gb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gb, align 8
  %conv = trunc i32 %type to i8
  %call.i = tail call ptr @gb_operation_create_flags(ptr noundef %1, i8 noundef zeroext %conv, i32 noundef %request_size, i32 noundef %response_size, i32 noundef 0, i32 noundef 3264) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %request_size)
  %tobool2.not = icmp eq i32 %request_size, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %request4 = getelementptr inbounds %struct.gb_operation, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %request4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %request4, align 4
  %payload = getelementptr inbounds %struct.gb_message, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %payload, align 4
  %6 = call ptr @memcpy(ptr %5, ptr %request, i32 %request_size)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %call.i47 = tail call i32 @gb_operation_request_send_sync_timeout(ptr noundef nonnull %call.i, i32 noundef 1000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %tobool7.not = icmp eq i32 %call.i47, 0
  br i1 %tobool7.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %gb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gb, align 8
  %bundle = getelementptr inbounds %struct.gb_connection, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bundle, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.72, i32 noundef %call.i47) #16
  br label %out_put_operation

if.else:                                          ; preds = %if.end5
  %response10 = getelementptr inbounds %struct.gb_operation, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %response10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %response10, align 4
  %payload_size = getelementptr inbounds %struct.gb_message, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %payload_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %payload_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %response_size)
  %cmp = icmp eq i32 %14, %response_size
  br i1 %cmp, label %if.then12, label %do.end18

if.then12:                                        ; preds = %if.else
  %payload14 = getelementptr inbounds %struct.gb_message, ptr %12, i32 0, i32 2
  %15 = ptrtoint ptr %payload14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %payload14, align 4
  %17 = call ptr @memcpy(ptr %response, ptr %16, i32 %response_size)
  %call26 = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call26, i64 %call)
  %cmp.i.i = icmp ugt i64 %call26, %call
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = sub i64 %call26, %call
  br label %gb_loopback_calc_latency.exit

if.else.i.i:                                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  %sub1.i.i = add i64 %call, 86400000000000
  %add.i.i = sub i64 %sub1.i.i, %call26
  br label %gb_loopback_calc_latency.exit

gb_loopback_calc_latency.exit:                    ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i64 [ %sub.i.i, %if.then.i.i ], [ %add.i.i, %if.else.i.i ]
  %elapsed_nsecs = getelementptr inbounds %struct.gb_loopback, ptr %gb, i32 0, i32 30
  %18 = ptrtoint ptr %elapsed_nsecs to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %retval.0.i.i, ptr %elapsed_nsecs, align 8
  br label %out_put_operation

do.end18:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %gb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %gb, align 8
  %bundle20 = getelementptr inbounds %struct.gb_connection, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %bundle20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bundle20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.75, i32 noundef %14, i32 noundef %response_size) #16
  br label %out_put_operation

out_put_operation:                                ; preds = %do.end18, %gb_loopback_calc_latency.exit, %do.end
  %ret.0 = phi i32 [ %call.i47, %do.end ], [ 0, %gb_loopback_calc_latency.exit ], [ -22, %do.end18 ]
  tail call void @gb_operation_put(ptr noundef nonnull %call.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out_put_operation, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_put_operation ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_operation_request_send_sync_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_latency_tag_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 122)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 122)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nounwind readnone }
attributes #20 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !15, !17, !18, !20, !22, !24, !26, !28, !29, !31, !32, !34, !36, !38, !39, !41, !42, !43, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !63, !65, !66, !68, !70, !71, !72, !73, !74, !75, !76, !77, !78, !80, !81, !82, !83, !84, !85, !87, !88, !89, !90, !91, !92, !94, !95, !96, !97, !98, !99, !101, !102, !103, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !116, !117, !119, !120, !122, !123, !125, !126, !128, !129, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !146, !147, !149, !150, !152, !153, !155, !156, !157, !159, !160, !162, !163, !164, !165, !166, !168, !169, !170, !172, !173, !174, !175, !177, !178, !179, !180, !182, !183, !184, !186, !187, !188, !189, !191, !193, !195}
!llvm.module.flags = !{!196, !197, !198, !199, !200, !201, !202, !203}
!llvm.ident = !{!204}

!0 = !{ptr @__param_kfifo_depth, !1, !"__param_kfifo_depth", i1 false, i1 false}
!1 = !{!"../drivers/staging/greybus/loopback.c", i32 114, i32 1}
!2 = !{ptr @__UNIQUE_ID_kfifo_depthtype229, !1, !"__UNIQUE_ID_kfifo_depthtype229", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_gb_loopback__233_1167_loopback_init6, !4, !"__initcall__kmod_gb_loopback__233_1167_loopback_init6", i1 false, i1 false}
!4 = !{!"../drivers/staging/greybus/loopback.c", i32 1167, i32 1}
!5 = !{ptr @__exitcall_loopback_exit, !6, !"__exitcall_loopback_exit", i1 false, i1 false}
!6 = !{!"../drivers/staging/greybus/loopback.c", i32 1176, i32 1}
!7 = !{ptr @__UNIQUE_ID_file234, !8, !"__UNIQUE_ID_file234", i1 false, i1 false}
!8 = !{!"../drivers/staging/greybus/loopback.c", i32 1178, i32 1}
!9 = !{ptr @__UNIQUE_ID_license235, !8, !"__UNIQUE_ID_license235", i1 false, i1 false}
!10 = !{ptr @gb_dev, !11, !"gb_dev", i1 false, i1 false}
!11 = !{!"../drivers/staging/greybus/loopback.c", i32 50, i32 34}
!12 = !{ptr @__param_str_kfifo_depth, !1, !"__param_str_kfifo_depth", i1 false, i1 false}
!13 = !{ptr @kfifo_depth, !14, !"kfifo_depth", i1 false, i1 false}
!14 = !{!"../drivers/staging/greybus/loopback.c", i32 113, i32 21}
!15 = !{ptr @loopback_init.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/staging/greybus/loopback.c", i32 1148, i32 2}
!17 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/greybus/loopback.c", i32 1149, i32 35}
!20 = !{ptr @loopback_init.__key.2, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/staging/greybus/loopback.c", i32 1151, i32 11}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/staging/greybus/loopback.c", i32 1138, i32 11}
!24 = !{ptr @gb_loopback_driver, !25, !"gb_loopback_driver", i1 false, i1 false}
!25 = !{!"../drivers/staging/greybus/loopback.c", i32 1137, i32 30}
!26 = !{ptr @gb_loopback_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/staging/greybus/loopback.c", i32 1006, i32 2}
!28 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @gb_loopback_probe.__key.5, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/staging/greybus/loopback.c", i32 1007, i32 2}
!31 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/greybus/loopback.c", i32 1027, i32 31}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/greybus/loopback.c", i32 1045, i32 6}
!36 = !{ptr @gb_loopback_probe.__key.9, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/staging/greybus/loopback.c", i32 1059, i32 2}
!38 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/greybus/loopback.c", i32 668, i32 4}
!41 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @gb_loopback_request_handler._entry, !40, !"_entry", i1 false, i1 false}
!46 = !{ptr @gb_loopback_request_handler._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/greybus/loopback.c", i32 676, i32 4}
!49 = !{ptr @gb_loopback_request_handler._entry.16, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @gb_loopback_request_handler._entry_ptr.18, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/staging/greybus/loopback.c", i32 683, i32 4}
!53 = !{ptr @gb_loopback_request_handler._entry.19, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @gb_loopback_request_handler._entry_ptr.21, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/staging/greybus/loopback.c", i32 693, i32 3}
!57 = !{ptr @gb_loopback_request_handler._entry.22, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @gb_loopback_request_handler._entry_ptr.24, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @gb_loopback_dbgfs_latency_fops, !60, !"gb_loopback_dbgfs_latency_fops", i1 false, i1 false}
!60 = !{!"../drivers/staging/greybus/loopback.c", i32 970, i32 1}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/staging/greybus/loopback.c", i32 955, i32 17}
!63 = !{ptr @loopback_groups, !64, !"loopback_groups", i1 false, i1 false}
!64 = !{!"../drivers/staging/greybus/loopback.c", i32 347, i32 1}
!65 = !{ptr @loopback_group, !64, !"loopback_group", i1 false, i1 false}
!66 = !{ptr @loopback_attrs, !67, !"loopback_attrs", i1 false, i1 false}
!67 = !{!"../drivers/staging/greybus/loopback.c", i32 316, i32 26}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/staging/greybus/loopback.c", i32 271, i32 1}
!70 = !{ptr @dev_attr_latency_min, !69, !"dev_attr_latency_min", i1 false, i1 false}
!71 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @dev_attr_latency_max, !69, !"dev_attr_latency_max", i1 false, i1 false}
!75 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @dev_attr_latency_avg, !69, !"dev_attr_latency_avg", i1 false, i1 false}
!77 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/staging/greybus/loopback.c", i32 273, i32 1}
!80 = !{ptr @dev_attr_requests_per_second_min, !79, !"dev_attr_requests_per_second_min", i1 false, i1 false}
!81 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @dev_attr_requests_per_second_max, !79, !"dev_attr_requests_per_second_max", i1 false, i1 false}
!83 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @dev_attr_requests_per_second_avg, !79, !"dev_attr_requests_per_second_avg", i1 false, i1 false}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/staging/greybus/loopback.c", i32 275, i32 1}
!87 = !{ptr @dev_attr_throughput_min, !86, !"dev_attr_throughput_min", i1 false, i1 false}
!88 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @dev_attr_throughput_max, !86, !"dev_attr_throughput_max", i1 false, i1 false}
!90 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @dev_attr_throughput_avg, !86, !"dev_attr_throughput_avg", i1 false, i1 false}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/staging/greybus/loopback.c", i32 277, i32 1}
!94 = !{ptr @dev_attr_apbridge_unipro_latency_min, !93, !"dev_attr_apbridge_unipro_latency_min", i1 false, i1 false}
!95 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @dev_attr_apbridge_unipro_latency_max, !93, !"dev_attr_apbridge_unipro_latency_max", i1 false, i1 false}
!97 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @dev_attr_apbridge_unipro_latency_avg, !93, !"dev_attr_apbridge_unipro_latency_avg", i1 false, i1 false}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/staging/greybus/loopback.c", i32 279, i32 1}
!101 = !{ptr @dev_attr_gbphy_firmware_latency_min, !100, !"dev_attr_gbphy_firmware_latency_min", i1 false, i1 false}
!102 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @dev_attr_gbphy_firmware_latency_max, !100, !"dev_attr_gbphy_firmware_latency_max", i1 false, i1 false}
!104 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @dev_attr_gbphy_firmware_latency_avg, !100, !"dev_attr_gbphy_firmware_latency_avg", i1 false, i1 false}
!106 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/staging/greybus/loopback.c", i32 300, i32 1}
!108 = !{ptr @dev_attr_type, !107, !"dev_attr_type", i1 false, i1 false}
!109 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.47, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/staging/greybus/loopback.c", i32 246, i32 3}
!113 = !{ptr @.str.48, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @gb_loopback_check_attr._entry, !112, !"_entry", i1 false, i1 false}
!116 = !{ptr @gb_loopback_check_attr._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.50, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/staging/greybus/loopback.c", i32 302, i32 1}
!119 = !{ptr @dev_attr_size, !118, !"dev_attr_size", i1 false, i1 false}
!120 = !{ptr @.str.51, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/staging/greybus/loopback.c", i32 304, i32 1}
!122 = !{ptr @dev_attr_us_wait, !121, !"dev_attr_us_wait", i1 false, i1 false}
!123 = !{ptr @.str.52, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/staging/greybus/loopback.c", i32 308, i32 1}
!125 = !{ptr @dev_attr_iteration_count, !124, !"dev_attr_iteration_count", i1 false, i1 false}
!126 = !{ptr @.str.53, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/staging/greybus/loopback.c", i32 306, i32 1}
!128 = !{ptr @dev_attr_iteration_max, !127, !"dev_attr_iteration_max", i1 false, i1 false}
!129 = !{ptr @.str.54, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/staging/greybus/loopback.c", i32 310, i32 1}
!131 = !{ptr @dev_attr_async, !130, !"dev_attr_async", i1 false, i1 false}
!132 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/staging/greybus/loopback.c", i32 282, i32 1}
!134 = !{ptr @dev_attr_error, !133, !"dev_attr_error", i1 false, i1 false}
!135 = !{ptr @.str.56, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/staging/greybus/loopback.c", i32 284, i32 1}
!137 = !{ptr @dev_attr_requests_completed, !136, !"dev_attr_requests_completed", i1 false, i1 false}
!138 = !{ptr @.str.57, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/staging/greybus/loopback.c", i32 286, i32 1}
!140 = !{ptr @dev_attr_requests_timedout, !139, !"dev_attr_requests_timedout", i1 false, i1 false}
!141 = !{ptr @.str.58, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/staging/greybus/loopback.c", i32 312, i32 1}
!143 = !{ptr @dev_attr_timeout, !142, !"dev_attr_timeout", i1 false, i1 false}
!144 = !{ptr @.str.59, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/staging/greybus/loopback.c", i32 314, i32 1}
!146 = !{ptr @dev_attr_outstanding_operations_max, !145, !"dev_attr_outstanding_operations_max", i1 false, i1 false}
!147 = !{ptr @.str.60, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/staging/greybus/loopback.c", i32 288, i32 1}
!149 = !{ptr @dev_attr_timeout_min, !148, !"dev_attr_timeout_min", i1 false, i1 false}
!150 = !{ptr @.str.61, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/staging/greybus/loopback.c", i32 290, i32 1}
!152 = !{ptr @dev_attr_timeout_max, !151, !"dev_attr_timeout_max", i1 false, i1 false}
!153 = !{ptr @.str.62, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/staging/greybus/loopback.c", i32 883, i32 5}
!155 = !{ptr @.str.63, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @gb_loopback_fn.__UNIQUE_ID_ddebug231, !154, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!157 = !{ptr @.str.64, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/staging/greybus/loopback.c", i32 885, i32 5}
!159 = !{ptr @gb_loopback_fn.__UNIQUE_ID_ddebug232, !158, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!160 = !{ptr @.str.65, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../include/linux/greybus/bundle.h", i32 53, i32 3}
!162 = !{ptr @.str.66, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.67, !161, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @gb_pm_runtime_get_sync._entry, !161, !"_entry", i1 false, i1 false}
!165 = !{ptr @gb_pm_runtime_get_sync._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.68, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/staging/greybus/loopback.c", i32 453, i32 2}
!168 = !{ptr @.str.69, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @gb_loopback_async_operation_callback.__UNIQUE_ID_ddebug230, !167, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!170 = !{ptr @.str.70, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/staging/greybus/loopback.c", i32 608, i32 3}
!172 = !{ptr @.str.71, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @gb_loopback_async_transfer_complete._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @gb_loopback_async_transfer_complete._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.72, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/staging/greybus/loopback.c", i32 389, i32 3}
!177 = !{ptr @.str.73, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @gb_loopback_operation_sync._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @gb_loopback_operation_sync._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.75, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/staging/greybus/loopback.c", i32 397, i32 4}
!182 = !{ptr @gb_loopback_operation_sync._entry.74, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @gb_loopback_operation_sync._entry_ptr.76, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.77, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/staging/greybus/loopback.c", i32 554, i32 3}
!186 = !{ptr @.str.78, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @gb_loopback_sync_transfer._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @gb_loopback_sync_transfer._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @gb_loopback_id_table, !190, !"gb_loopback_id_table", i1 false, i1 false}
!190 = !{!"../drivers/staging/greybus/loopback.c", i32 1131, i32 39}
!191 = !{ptr @loopback_class, !192, !"loopback_class", i1 false, i1 false}
!192 = !{!"../drivers/staging/greybus/loopback.c", i32 101, i32 21}
!193 = !{ptr @.str.79, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/staging/greybus/loopback.c", i32 105, i32 8}
!195 = !{ptr @loopback_ida, !194, !"loopback_ida", i1 false, i1 false}
!196 = !{i32 1, !"wchar_size", i32 2}
!197 = !{i32 1, !"min_enum_size", i32 4}
!198 = !{i32 8, !"branch-target-enforcement", i32 0}
!199 = !{i32 8, !"sign-return-address", i32 0}
!200 = !{i32 8, !"sign-return-address-all", i32 0}
!201 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!202 = !{i32 7, !"uwtable", i32 1}
!203 = !{i32 7, !"frame-pointer", i32 2}
!204 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!205 = !{i64 2148237917}
!206 = !{i64 722740, i64 722765, i64 722787, i64 722803, i64 722815, i64 722835, i64 722859, i64 722875, i64 722887}
!207 = !{i64 2148238105}
!208 = !{i64 2148238498, i64 2148238524, i64 2148238553, i64 2148238587, i64 2148238618, i64 2148238641}
!209 = !{i64 2148720313, i64 2148720318, i64 2148720331, i64 2148720375, i64 2148720409, i64 2148720430}
!210 = !{!"auto-init"}
!211 = !{!"branch_weights", i32 2000, i32 1}
!212 = !{i64 2148629032, i64 2148629312, i64 2148629646, i64 2148629980}
!213 = !{i64 1143488, i64 1143515, i64 1143537, i64 1143565}
!214 = !{i64 1143896, i64 1143923, i64 1143956, i64 1143977, i64 1144004, i64 1144030}
!215 = !{i64 2148240963, i64 2148240989, i64 2148241018, i64 2148241052, i64 2148241083, i64 2148241106}
