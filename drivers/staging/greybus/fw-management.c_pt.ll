; ModuleID = '/llk/IR_all_yes/drivers/staging/greybus/fw-management.c_pt.bc'
source_filename = "../drivers/staging/greybus/fw-management.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gb_operation = type { ptr, ptr, ptr, i32, i8, i16, i32, %struct.work_struct, ptr, %struct.completion, %struct.timer_list, %struct.kref, %struct.atomic_t, i32, %struct.list_head, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.gb_connection = type { ptr, ptr, ptr, %struct.kref, i16, i16, %struct.list_head, %struct.list_head, ptr, i32, %struct.mutex, %struct.spinlock, i32, %struct.list_head, [16 x i8], ptr, %struct.atomic_t, ptr, i8 }
%struct.fw_mgmt = type { ptr, ptr, %struct.kref, %struct.list_head, %struct.ida, %struct.mutex, %struct.completion, %struct.cdev, ptr, i32, i32, i8, i8, i8, i8, i8, i16, i16, i8, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.gb_message = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gb_fw_mgmt_loaded_fw_request = type { i8, i8, i16, i16 }
%struct.gb_fw_mgmt_backend_fw_updated_request = type { i8, i8 }
%struct.gb_fw_mgmt_backend_fw_update_request = type { i8, [10 x i8] }
%struct.gb_fw_mgmt_load_and_validate_fw_request = type { i8, i8, [10 x i8] }
%struct.gb_fw_mgmt_backend_fw_version_request = type { [10 x i8] }
%struct.gb_fw_mgmt_backend_fw_version_response = type <{ i16, i16, i8 }>
%struct.gb_fw_mgmt_interface_fw_version_response = type { [10 x i8], i16, i16 }
%struct.fw_mgmt_ioc_get_intf_version = type { [10 x i8], i16, i16 }
%struct.fw_mgmt_ioc_get_backend_version = type <{ [10 x i8], i16, i16, i8 }>
%struct.fw_mgmt_ioc_intf_load_and_validate = type { [10 x i8], i8, i8, i16, i16 }
%struct.fw_mgmt_ioc_backend_fw_update = type { [10 x i8], i8 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.68 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.70 = type { ptr }

@gb_fw_mgmt_request_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 582, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unsupported request: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"gb_fw_mgmt_request_handler\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/staging/greybus/fw-management.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gb_fw_mgmt_request_handler._entry_ptr = internal global ptr @gb_fw_mgmt_request_handler._entry, section ".printk_index", align 4
@gb_fw_mgmt_connection_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&fw_mgmt->mutex\00", [16 x i8] zeroinitializer }, align 32
@list_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.35, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @list_mutex, i64 52), ptr getelementptr (i8, ptr @list_mutex, i64 52) }, ptr @list_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.36, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@fw_mgmt_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @fw_mgmt_list, ptr @fw_mgmt_list }, [24 x i8] zeroinitializer }, align 32
@fw_mgmt_minors_map = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.37, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@fw_mgmt_dev_num = internal global { i32, [28 x i8] } zeroinitializer, align 32
@fw_mgmt_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fw_mgmt_ioctl_unlocked, ptr null, ptr null, i32 0, ptr @fw_mgmt_open, ptr null, ptr @fw_mgmt_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@fw_mgmt_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gb-fw-mgmt-%d\00", [18 x i8] zeroinitializer }, align 32
@fw_mgmt_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gb_fw_mgmt\00", [21 x i8] zeroinitializer }, align 32
@fw_mgmt_interface_fw_loaded_operation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 201, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"unexpected firmware loaded request received\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"fw_mgmt_interface_fw_loaded_operation\00", [58 x i8] zeroinitializer }, align 32
@fw_mgmt_interface_fw_loaded_operation._entry_ptr = internal global ptr @fw_mgmt_interface_fw_loaded_operation._entry, section ".printk_index", align 4
@fw_mgmt_interface_fw_loaded_operation._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 207, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"illegal size of firmware loaded request (%zu != %zu)\0A\00", [42 x i8] zeroinitializer }, align 32
@fw_mgmt_interface_fw_loaded_operation._entry_ptr.12 = internal global ptr @fw_mgmt_interface_fw_loaded_operation._entry.10, section ".printk_index", align 4
@fw_mgmt_interface_fw_loaded_operation._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.2, i32 216, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"invalid request id for firmware loaded request (%02u != %02u)\0A\00", [33 x i8] zeroinitializer }, align 32
@fw_mgmt_interface_fw_loaded_operation._entry_ptr.15 = internal global ptr @fw_mgmt_interface_fw_loaded_operation._entry.13, section ".printk_index", align 4
@fw_mgmt_interface_fw_loaded_operation._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.2, i32 229, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"failed to load interface firmware, status:%02x\0A\00", [48 x i8] zeroinitializer }, align 32
@fw_mgmt_interface_fw_loaded_operation._entry_ptr.18 = internal global ptr @fw_mgmt_interface_fw_loaded_operation._entry.16, section ".printk_index", align 4
@fw_mgmt_interface_fw_loaded_operation._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.9, ptr @.str.2, i32 233, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"failed to validate interface firmware, status:%02x\0A\00", [44 x i8] zeroinitializer }, align 32
@fw_mgmt_interface_fw_loaded_operation._entry_ptr.21 = internal global ptr @fw_mgmt_interface_fw_loaded_operation._entry.19, section ".printk_index", align 4
@fw_mgmt_backend_fw_updated_operation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 350, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"unexpected backend firmware updated request received\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"fw_mgmt_backend_fw_updated_operation\00", [59 x i8] zeroinitializer }, align 32
@fw_mgmt_backend_fw_updated_operation._entry_ptr = internal global ptr @fw_mgmt_backend_fw_updated_operation._entry, section ".printk_index", align 4
@fw_mgmt_backend_fw_updated_operation._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 356, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"illegal size of backend firmware updated request (%zu != %zu)\0A\00", [33 x i8] zeroinitializer }, align 32
@fw_mgmt_backend_fw_updated_operation._entry_ptr.26 = internal global ptr @fw_mgmt_backend_fw_updated_operation._entry.24, section ".printk_index", align 4
@fw_mgmt_backend_fw_updated_operation._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.2, i32 365, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"invalid request id for backend firmware updated request (%02u != %02u)\0A\00", [56 x i8] zeroinitializer }, align 32
@fw_mgmt_backend_fw_updated_operation._entry_ptr.29 = internal global ptr @fw_mgmt_backend_fw_updated_operation._entry.27, section ".printk_index", align 4
@fw_mgmt_backend_fw_updated_operation._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str.2, i32 377, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to load backend firmware: %02x\0A\00", [57 x i8] zeroinitializer }, align 32
@fw_mgmt_backend_fw_updated_operation._entry_ptr.32 = internal global ptr @fw_mgmt_backend_fw_updated_operation._entry.30, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"list_mutex.wait_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"list_mutex\00", [21 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fw_mgmt_minors_map.xa_lock\00", [37 x i8] zeroinitializer }, align 32
@gb_pm_runtime_get_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.40, i32 54, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pm_runtime_get_sync failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gb_pm_runtime_get_sync\00", [41 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/linux/greybus/bundle.h\00", [33 x i8] zeroinitializer }, align 32
@gb_pm_runtime_get_sync._entry_ptr = internal global ptr @gb_pm_runtime_get_sync._entry, section ".printk_index", align 4
@fw_mgmt_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 458, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"timed out waiting for firmware load and validation to finish\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fw_mgmt_ioctl\00", [18 x i8] zeroinitializer }, align 32
@fw_mgmt_ioctl._entry_ptr = internal global ptr @fw_mgmt_ioctl._entry, section ".printk_index", align 4
@fw_mgmt_ioctl._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.2, i32 482, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"timed out waiting for backend firmware update to finish\0A\00", [39 x i8] zeroinitializer }, align 32
@fw_mgmt_ioctl._entry_ptr.45 = internal global ptr @fw_mgmt_ioctl._entry.43, section ".printk_index", align 4
@fw_mgmt_ioctl._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.2, i32 497, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"timeout can't be zero\0A\00", [41 x i8] zeroinitializer }, align 32
@fw_mgmt_ioctl._entry_ptr.48 = internal global ptr @fw_mgmt_ioctl._entry.46, section ".printk_index", align 4
@fw_mgmt_ioctl._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.42, ptr @.str.2, i32 507, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Firmware not loaded for mode-switch\0A\00", [59 x i8] zeroinitializer }, align 32
@fw_mgmt_ioctl._entry_ptr.51 = internal global ptr @fw_mgmt_ioctl._entry.49, section ".printk_index", align 4
@fw_mgmt_ioctl._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.42, ptr @.str.2, i32 521, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Mode-switch failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@fw_mgmt_ioctl._entry_ptr.54 = internal global ptr @fw_mgmt_ioctl._entry.52, section ".printk_index", align 4
@fw_mgmt_interface_fw_version_operation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 116, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to get interface firmware version (%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"fw_mgmt_interface_fw_version_operation\00", [57 x i8] zeroinitializer }, align 32
@fw_mgmt_interface_fw_version_operation._entry_ptr = internal global ptr @fw_mgmt_interface_fw_version_operation._entry, section ".printk_index", align 4
@fw_mgmt_interface_fw_version_operation._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.2, i32 132, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"fw-version: firmware-tag is not NULL terminated\0A\00", [47 x i8] zeroinitializer }, align 32
@fw_mgmt_interface_fw_version_operation._entry_ptr.59 = internal global ptr @fw_mgmt_interface_fw_version_operation._entry.57, section ".printk_index", align 4
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@fw_mgmt_backend_fw_version_operation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 258, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"backend-version: firmware-tag is not NULL terminated\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"fw_mgmt_backend_fw_version_operation\00", [59 x i8] zeroinitializer }, align 32
@fw_mgmt_backend_fw_version_operation._entry_ptr = internal global ptr @fw_mgmt_backend_fw_version_operation._entry, section ".printk_index", align 4
@fw_mgmt_backend_fw_version_operation._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.2, i32 267, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"failed to get version of %s backend firmware (%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@fw_mgmt_backend_fw_version_operation._entry_ptr.67 = internal global ptr @fw_mgmt_backend_fw_version_operation._entry.65, section ".printk_index", align 4
@fw_mgmt_backend_fw_version_operation._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.64, ptr @.str.2, i32 288, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Firmware with tag %s is not supported by Interface\0A\00", [44 x i8] zeroinitializer }, align 32
@fw_mgmt_backend_fw_version_operation._entry_ptr.70 = internal global ptr @fw_mgmt_backend_fw_version_operation._entry.68, section ".printk_index", align 4
@fw_mgmt_backend_fw_version_operation._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.64, ptr @.str.2, i32 292, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid status received: %u\0A\00", [35 x i8] zeroinitializer }, align 32
@fw_mgmt_backend_fw_version_operation._entry_ptr.73 = internal global ptr @fw_mgmt_backend_fw_version_operation._entry.71, section ".printk_index", align 4
@fw_mgmt_load_and_validate_operation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 148, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid load-method (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"fw_mgmt_load_and_validate_operation\00", [60 x i8] zeroinitializer }, align 32
@fw_mgmt_load_and_validate_operation._entry_ptr = internal global ptr @fw_mgmt_load_and_validate_operation._entry, section ".printk_index", align 4
@fw_mgmt_load_and_validate_operation._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.2, i32 160, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"load-and-validate: firmware-tag is not NULL terminated\0A\00", [40 x i8] zeroinitializer }, align 32
@fw_mgmt_load_and_validate_operation._entry_ptr.78 = internal global ptr @fw_mgmt_load_and_validate_operation._entry.76, section ".printk_index", align 4
@fw_mgmt_load_and_validate_operation._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.75, ptr @.str.2, i32 168, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to allocate request id (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@fw_mgmt_load_and_validate_operation._entry_ptr.81 = internal global ptr @fw_mgmt_load_and_validate_operation._entry.79, section ".printk_index", align 4
@fw_mgmt_load_and_validate_operation._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.75, ptr @.str.2, i32 185, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"load and validate firmware request failed (%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@fw_mgmt_load_and_validate_operation._entry_ptr.84 = internal global ptr @fw_mgmt_load_and_validate_operation._entry.82, section ".printk_index", align 4
@fw_mgmt_backend_fw_update_operation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 311, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"backend-update: firmware-tag is not NULL terminated\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"fw_mgmt_backend_fw_update_operation\00", [60 x i8] zeroinitializer }, align 32
@fw_mgmt_backend_fw_update_operation._entry_ptr = internal global ptr @fw_mgmt_backend_fw_update_operation._entry, section ".printk_index", align 4
@fw_mgmt_backend_fw_update_operation._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.86, ptr @.str.2, i32 319, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@fw_mgmt_backend_fw_update_operation._entry_ptr.88 = internal global ptr @fw_mgmt_backend_fw_update_operation._entry.87, section ".printk_index", align 4
@fw_mgmt_backend_fw_update_operation._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.86, ptr @.str.2, i32 335, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"backend %s firmware update request failed (%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@fw_mgmt_backend_fw_update_operation._entry_ptr.91 = internal global ptr @fw_mgmt_backend_fw_update_operation._entry.89, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 6]
@__sancov_gen_cov_switch_values.94 = internal global [8 x i64] [i64 6, i64 32, i64 17925, i64 1074021892, i64 2148419072, i64 3221964291, i64 3222226433, i64 3222291970]
@__sancov_gen_cov_switch_values.95 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 581, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 606, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [11 x i8] c"list_mutex\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [13 x i8] c"fw_mgmt_list\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 61, i32 8 }
@___asan_gen_.126 = private unnamed_addr constant [19 x i8] c"fw_mgmt_minors_map\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [16 x i8] c"fw_mgmt_dev_num\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 59, i32 14 }
@___asan_gen_.132 = private unnamed_addr constant [13 x i8] c"fw_mgmt_fops\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 564, i32 37 }
@___asan_gen_.135 = private unnamed_addr constant [14 x i8] c"fw_mgmt_class\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 58, i32 22 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 634, i32 12 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 699, i32 18 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 200, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 206, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 215, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 227, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 231, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 350, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 355, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 364, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 375, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 87, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 378, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 62, i32 8 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 60, i32 8 }
@___asan_gen_.238 = private unnamed_addr constant [34 x i8] c"../include/linux/greybus/bundle.h\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 53, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 458, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 482, i32 4 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 497, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 506, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 520, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 115, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 131, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 174, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 258, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 266, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 286, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 291, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 147, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 160, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 167, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 183, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 311, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 318, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.360 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.361 = private constant [43 x i8] c"../drivers/staging/greybus/fw-management.c\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 333, i32 3 }
@llvm.compiler.used = appending global [118 x ptr] [ptr @fw_mgmt_backend_fw_update_operation._entry, ptr @fw_mgmt_backend_fw_update_operation._entry.87, ptr @fw_mgmt_backend_fw_update_operation._entry.89, ptr @fw_mgmt_backend_fw_update_operation._entry_ptr, ptr @fw_mgmt_backend_fw_update_operation._entry_ptr.88, ptr @fw_mgmt_backend_fw_update_operation._entry_ptr.91, ptr @fw_mgmt_backend_fw_updated_operation._entry, ptr @fw_mgmt_backend_fw_updated_operation._entry.24, ptr @fw_mgmt_backend_fw_updated_operation._entry.27, ptr @fw_mgmt_backend_fw_updated_operation._entry.30, ptr @fw_mgmt_backend_fw_updated_operation._entry_ptr, ptr @fw_mgmt_backend_fw_updated_operation._entry_ptr.26, ptr @fw_mgmt_backend_fw_updated_operation._entry_ptr.29, ptr @fw_mgmt_backend_fw_updated_operation._entry_ptr.32, ptr @fw_mgmt_backend_fw_version_operation._entry, ptr @fw_mgmt_backend_fw_version_operation._entry.65, ptr @fw_mgmt_backend_fw_version_operation._entry.68, ptr @fw_mgmt_backend_fw_version_operation._entry.71, ptr @fw_mgmt_backend_fw_version_operation._entry_ptr, ptr @fw_mgmt_backend_fw_version_operation._entry_ptr.67, ptr @fw_mgmt_backend_fw_version_operation._entry_ptr.70, ptr @fw_mgmt_backend_fw_version_operation._entry_ptr.73, ptr @fw_mgmt_interface_fw_loaded_operation._entry, ptr @fw_mgmt_interface_fw_loaded_operation._entry.10, ptr @fw_mgmt_interface_fw_loaded_operation._entry.13, ptr @fw_mgmt_interface_fw_loaded_operation._entry.16, ptr @fw_mgmt_interface_fw_loaded_operation._entry.19, ptr @fw_mgmt_interface_fw_loaded_operation._entry_ptr, ptr @fw_mgmt_interface_fw_loaded_operation._entry_ptr.12, ptr @fw_mgmt_interface_fw_loaded_operation._entry_ptr.15, ptr @fw_mgmt_interface_fw_loaded_operation._entry_ptr.18, ptr @fw_mgmt_interface_fw_loaded_operation._entry_ptr.21, ptr @fw_mgmt_interface_fw_version_operation._entry, ptr @fw_mgmt_interface_fw_version_operation._entry.57, ptr @fw_mgmt_interface_fw_version_operation._entry_ptr, ptr @fw_mgmt_interface_fw_version_operation._entry_ptr.59, ptr @fw_mgmt_ioctl._entry, ptr @fw_mgmt_ioctl._entry.43, ptr @fw_mgmt_ioctl._entry.46, ptr @fw_mgmt_ioctl._entry.49, ptr @fw_mgmt_ioctl._entry.52, ptr @fw_mgmt_ioctl._entry_ptr, ptr @fw_mgmt_ioctl._entry_ptr.45, ptr @fw_mgmt_ioctl._entry_ptr.48, ptr @fw_mgmt_ioctl._entry_ptr.51, ptr @fw_mgmt_ioctl._entry_ptr.54, ptr @fw_mgmt_load_and_validate_operation._entry, ptr @fw_mgmt_load_and_validate_operation._entry.76, ptr @fw_mgmt_load_and_validate_operation._entry.79, ptr @fw_mgmt_load_and_validate_operation._entry.82, ptr @fw_mgmt_load_and_validate_operation._entry_ptr, ptr @fw_mgmt_load_and_validate_operation._entry_ptr.78, ptr @fw_mgmt_load_and_validate_operation._entry_ptr.81, ptr @fw_mgmt_load_and_validate_operation._entry_ptr.84, ptr @gb_fw_mgmt_request_handler._entry, ptr @gb_fw_mgmt_request_handler._entry_ptr, ptr @gb_pm_runtime_get_sync._entry, ptr @gb_pm_runtime_get_sync._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @gb_fw_mgmt_connection_init.__key, ptr @.str.5, ptr @list_mutex, ptr @fw_mgmt_list, ptr @fw_mgmt_minors_map, ptr @fw_mgmt_dev_num, ptr @fw_mgmt_fops, ptr @fw_mgmt_class, ptr @.str.6, ptr @fw_mgmt_init.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @init_completion.__key, ptr @.str.33, ptr @xa_init_flags.__key, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @.str.90], section "llvm.metadata"
@0 = internal global [89 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_fw_mgmt_request_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_fw_mgmt_connection_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @list_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_mgmt_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_mgmt_minors_map to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_mgmt_dev_num to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_mgmt_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_mgmt_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_mgmt_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_mgmt_interface_fw_loaded_operation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_mgmt_interface_fw_loaded_operation._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_mgmt_interface_fw_loaded_operation._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_mgmt_interface_fw_loaded_operation._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_mgmt_interface_fw_loaded_operation._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_mgmt_backend_fw_updated_operation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_mgmt_backend_fw_updated_operation._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_mgmt_backend_fw_updated_operation._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_mgmt_backend_fw_updated_operation._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_pm_runtime_get_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_mgmt_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_mgmt_ioctl._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_mgmt_ioctl._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_mgmt_ioctl._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_mgmt_ioctl._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_mgmt_interface_fw_version_operation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_mgmt_interface_fw_version_operation._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_mgmt_backend_fw_version_operation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_mgmt_backend_fw_version_operation._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_mgmt_backend_fw_version_operation._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_mgmt_backend_fw_version_operation._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_mgmt_load_and_validate_operation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_mgmt_load_and_validate_operation._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_mgmt_load_and_validate_operation._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_mgmt_load_and_validate_operation._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_mgmt_backend_fw_update_operation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_mgmt_backend_fw_update_operation._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_mgmt_backend_fw_update_operation._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_fw_mgmt_request_handler(ptr nocapture noundef readonly %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type1 = getelementptr inbounds %struct.gb_operation, ptr %op, i32 0, i32 4
  %0 = ptrtoint ptr %type1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type1, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %do.end [
    i8 3, label %sw.bb
    i8 6, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %op, align 4
  %private.i.i = getelementptr inbounds %struct.gb_connection, ptr %4, i32 0, i32 17
  %5 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private.i.i, align 4
  %intf_fw_request_id.i = getelementptr inbounds %struct.fw_mgmt, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %intf_fw_request_id.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %intf_fw_request_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.8) #12
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %request2.i = getelementptr inbounds %struct.gb_operation, ptr %op, i32 0, i32 1
  %11 = ptrtoint ptr %request2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %request2.i, align 4
  %payload_size.i = getelementptr inbounds %struct.gb_message, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %payload_size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %payload_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %14)
  %cmp.not.i = icmp eq i32 %14, 6
  br i1 %cmp.not.i, label %if.end10.i, label %do.end6.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.11, i32 noundef %14, i32 noundef 6) #12
  br label %cleanup

if.end10.i:                                       ; preds = %if.end.i
  %payload.i = getelementptr inbounds %struct.gb_message, ptr %12, i32 0, i32 2
  %17 = ptrtoint ptr %payload.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %payload.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  %conv13.i = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %8)
  %cmp14.not.i = icmp eq i8 %20, %8
  br i1 %cmp14.not.i, label %if.end25.i, label %do.end19.i

do.end19.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i8 %20 to i32
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.14, i32 noundef %conv13.i, i32 noundef %conv.i) #12
  br label %cleanup

if.end25.i:                                       ; preds = %if.end10.i
  %id_map.i = getelementptr inbounds %struct.fw_mgmt, ptr %6, i32 0, i32 4
  tail call void @ida_free(ptr noundef %id_map.i, i32 noundef %conv13.i) #9
  %23 = ptrtoint ptr %intf_fw_request_id.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %intf_fw_request_id.i, align 1
  %status.i = getelementptr inbounds %struct.gb_fw_mgmt_loaded_fw_request, ptr %18, i32 0, i32 1
  %24 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %status.i, align 1
  %intf_fw_status.i = getelementptr inbounds %struct.fw_mgmt, ptr %6, i32 0, i32 15
  %26 = ptrtoint ptr %intf_fw_status.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %intf_fw_status.i, align 4
  %major.i = getelementptr inbounds %struct.gb_fw_mgmt_loaded_fw_request, ptr %18, i32 0, i32 2
  %27 = ptrtoint ptr %major.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %major.i, align 1
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #9
  %intf_fw_major.i = getelementptr inbounds %struct.fw_mgmt, ptr %6, i32 0, i32 16
  %30 = ptrtoint ptr %intf_fw_major.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %intf_fw_major.i, align 2
  %minor.i = getelementptr inbounds %struct.gb_fw_mgmt_loaded_fw_request, ptr %18, i32 0, i32 3
  %31 = ptrtoint ptr %minor.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %minor.i, align 1
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #9
  %intf_fw_minor.i = getelementptr inbounds %struct.fw_mgmt, ptr %6, i32 0, i32 17
  %34 = ptrtoint ptr %intf_fw_minor.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %intf_fw_minor.i, align 4
  %35 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.92)
  switch i8 %25, label %if.else51.i [
    i8 0, label %do.end36.i
    i8 3, label %do.end47.i
  ]

do.end36.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.17, i32 noundef 0) #12
  br label %if.end53.i

do.end47.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.20, i32 noundef 3) #12
  br label %if.end53.i

if.else51.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  %intf_fw_loaded.i = getelementptr inbounds %struct.fw_mgmt, ptr %6, i32 0, i32 13
  %40 = ptrtoint ptr %intf_fw_loaded.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %intf_fw_loaded.i, align 2
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.else51.i, %do.end47.i, %do.end36.i
  %completion.i = getelementptr inbounds %struct.fw_mgmt, ptr %6, i32 0, i32 6
  tail call void @complete(ptr noundef %completion.i) #9
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %41 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %op, align 4
  %private.i.i9 = getelementptr inbounds %struct.gb_connection, ptr %42, i32 0, i32 17
  %43 = ptrtoint ptr %private.i.i9 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %private.i.i9, align 4
  %backend_fw_request_id.i = getelementptr inbounds %struct.fw_mgmt, ptr %44, i32 0, i32 18
  %45 = ptrtoint ptr %backend_fw_request_id.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %backend_fw_request_id.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i10 = icmp eq i8 %46, 0
  br i1 %tobool.not.i10, label %do.end.i11, label %if.end.i15

do.end.i11:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %44, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.22) #12
  br label %cleanup

if.end.i15:                                       ; preds = %sw.bb2
  %request2.i12 = getelementptr inbounds %struct.gb_operation, ptr %op, i32 0, i32 1
  %49 = ptrtoint ptr %request2.i12 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %request2.i12, align 4
  %payload_size.i13 = getelementptr inbounds %struct.gb_message, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %payload_size.i13 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %payload_size.i13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %cmp.not.i14 = icmp eq i32 %52, 2
  br i1 %cmp.not.i14, label %if.end10.i20, label %do.end6.i16

do.end6.i16:                                      ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %44, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.25, i32 noundef %52, i32 noundef 2) #12
  br label %cleanup

if.end10.i20:                                     ; preds = %if.end.i15
  %payload.i17 = getelementptr inbounds %struct.gb_message, ptr %50, i32 0, i32 2
  %55 = ptrtoint ptr %payload.i17 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %payload.i17, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %56, align 1
  %conv13.i18 = zext i8 %46 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %58, i8 %46)
  %cmp14.not.i19 = icmp eq i8 %58, %46
  br i1 %cmp14.not.i19, label %if.end25.i25, label %do.end19.i22

do.end19.i22:                                     ; preds = %if.end10.i20
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i21 = zext i8 %58 to i32
  %59 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %44, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.28, i32 noundef %conv13.i18, i32 noundef %conv.i21) #12
  br label %cleanup

if.end25.i25:                                     ; preds = %if.end10.i20
  %id_map.i23 = getelementptr inbounds %struct.fw_mgmt, ptr %44, i32 0, i32 4
  tail call void @ida_free(ptr noundef %id_map.i23, i32 noundef %conv13.i18) #9
  %61 = ptrtoint ptr %backend_fw_request_id.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %backend_fw_request_id.i, align 2
  %status.i24 = getelementptr inbounds %struct.gb_fw_mgmt_backend_fw_updated_request, ptr %56, i32 0, i32 1
  %62 = ptrtoint ptr %status.i24 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %status.i24, align 1
  %backend_fw_status.i = getelementptr inbounds %struct.fw_mgmt, ptr %44, i32 0, i32 19
  %64 = ptrtoint ptr %backend_fw_status.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %backend_fw_status.i, align 1
  %65 = zext i8 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.93)
  switch i8 %63, label %do.end40.i [
    i8 1, label %if.end25.i25.if.end44.i_crit_edge
    i8 6, label %if.end25.i25.if.end44.i_crit_edge28
  ]

if.end25.i25.if.end44.i_crit_edge28:              ; preds = %if.end25.i25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44.i

if.end25.i25.if.end44.i_crit_edge:                ; preds = %if.end25.i25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44.i

do.end40.i:                                       ; preds = %if.end25.i25
  call void @__sanitizer_cov_trace_pc() #11
  %conv30.i = zext i8 %63 to i32
  %66 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %44, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.31, i32 noundef %conv30.i) #12
  br label %if.end44.i

if.end44.i:                                       ; preds = %do.end40.i, %if.end25.i25.if.end44.i_crit_edge, %if.end25.i25.if.end44.i_crit_edge28
  %completion.i26 = getelementptr inbounds %struct.fw_mgmt, ptr %44, i32 0, i32 6
  tail call void @complete(ptr noundef %completion.i26) #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %1 to i32
  %68 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %op, align 4
  %bundle = getelementptr inbounds %struct.gb_connection, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bundle, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str, i32 noundef %conv) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end44.i, %do.end19.i22, %do.end6.i16, %do.end.i11, %if.end53.i, %do.end19.i, %do.end6.i, %do.end.i
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end6.i ], [ -19, %do.end19.i ], [ 0, %if.end53.i ], [ -19, %do.end.i ], [ -22, %do.end6.i16 ], [ -19, %do.end19.i22 ], [ 0, %if.end44.i ], [ -19, %do.end.i11 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_fw_mgmt_connection_init(ptr noundef %connection) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %connection, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 404) #13
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %bundle = getelementptr inbounds %struct.gb_connection, ptr %connection, i32 0, i32 2
  %1 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bundle, align 4
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %call7.i.i, align 8
  %timeout_jiffies = getelementptr inbounds %struct.fw_mgmt, ptr %call7.i.i, i32 0, i32 10
  %4 = ptrtoint ptr %timeout_jiffies to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 100, ptr %timeout_jiffies, align 4
  %connection5 = getelementptr inbounds %struct.fw_mgmt, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %connection5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %connection, ptr %connection5, align 4
  %private.i = getelementptr inbounds %struct.gb_connection, ptr %connection, i32 0, i32 17
  %6 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %private.i, align 4
  %completion = getelementptr inbounds %struct.fw_mgmt, ptr %call7.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.fw_mgmt, ptr %call7.i.i, i32 0, i32 6, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @init_completion.__key) #9
  %id_map = getelementptr inbounds %struct.fw_mgmt, ptr %call7.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %id_map, ptr noundef nonnull @.str.34, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #9
  %xa_flags.i.i = getelementptr inbounds %struct.fw_mgmt, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 1
  %8 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 67108869, ptr %xa_flags.i.i, align 8
  %xa_head.i.i = getelementptr inbounds %struct.fw_mgmt, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 2
  %9 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %xa_head.i.i, align 4
  %mutex = getelementptr inbounds %struct.fw_mgmt, ptr %call7.i.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.5, ptr noundef nonnull @gb_fw_mgmt_connection_init.__key) #9
  %kref = getelementptr inbounds %struct.fw_mgmt, ptr %call7.i.i, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #9
  %10 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %kref, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @list_mutex, i32 noundef 0) #9
  %node = getelementptr inbounds %struct.fw_mgmt, ptr %call7.i.i, i32 0, i32 3
  %11 = load ptr, ptr @fw_mgmt_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef nonnull @fw_mgmt_list, ptr noundef %11) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end3.list_add.exit_crit_edge

if.end3.list_add.exit_crit_edge:                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %node, ptr %prev1.i.i, align 4
  %13 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.fw_mgmt, ptr %call7.i.i, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @fw_mgmt_list, ptr %prev3.i.i, align 8
  store volatile ptr %node, ptr @fw_mgmt_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end3.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @list_mutex) #9
  %call6 = tail call i32 @gb_connection_enable(ptr noundef nonnull %connection) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %list_add.exit.err_list_del_crit_edge

list_add.exit.err_list_del_crit_edge:             ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_list_del

if.end9:                                          ; preds = %list_add.exit
  %call10 = tail call i32 @ida_alloc_range(ptr noundef nonnull @fw_mgmt_minors_map, i32 noundef 0, i32 noundef 254, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.end9.err_connection_disable_crit_edge, label %if.end12

if.end9.err_connection_disable_crit_edge:         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_connection_disable

if.end12:                                         ; preds = %if.end9
  %15 = load i32, ptr @fw_mgmt_dev_num, align 4
  %shr = and i32 %15, -1048576
  %or = or i32 %shr, %call10
  %dev_num = getelementptr inbounds %struct.fw_mgmt, ptr %call7.i.i, i32 0, i32 9
  %16 = ptrtoint ptr %dev_num to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or, ptr %dev_num, align 8
  %cdev = getelementptr inbounds %struct.fw_mgmt, ptr %call7.i.i, i32 0, i32 7
  tail call void @cdev_init(ptr noundef %cdev, ptr noundef nonnull @fw_mgmt_fops) #9
  %17 = ptrtoint ptr %dev_num to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dev_num, align 8
  %call15 = tail call i32 @cdev_add(ptr noundef %cdev, i32 noundef %18, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end12.err_remove_ida_crit_edge

if.end12.err_remove_ida_crit_edge:                ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_remove_ida

if.end18:                                         ; preds = %if.end12
  %19 = load ptr, ptr @fw_mgmt_class, align 4
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call7.i.i, align 8
  %22 = ptrtoint ptr %dev_num to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dev_num, align 8
  %call21 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %19, ptr noundef %21, i32 noundef %23, ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef %call10) #9
  %class_device = getelementptr inbounds %struct.fw_mgmt, ptr %call7.i.i, i32 0, i32 8
  %24 = ptrtoint ptr %class_device to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call21, ptr %class_device, align 4
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then24, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %call21 to i32
  tail call void @cdev_del(ptr noundef %cdev) #9
  br label %err_remove_ida

err_remove_ida:                                   ; preds = %if.then24, %if.end12.err_remove_ida_crit_edge
  %ret.0 = phi i32 [ %call15, %if.end12.err_remove_ida_crit_edge ], [ %25, %if.then24 ]
  tail call void @ida_free(ptr noundef nonnull @fw_mgmt_minors_map, i32 noundef %call10) #9
  br label %err_connection_disable

err_connection_disable:                           ; preds = %err_remove_ida, %if.end9.err_connection_disable_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_remove_ida ], [ %call10, %if.end9.err_connection_disable_crit_edge ]
  tail call void @gb_connection_disable(ptr noundef nonnull %connection) #9
  br label %err_list_del

err_list_del:                                     ; preds = %err_connection_disable, %list_add.exit.err_list_del_crit_edge
  %ret.2 = phi i32 [ %call6, %list_add.exit.err_list_del_crit_edge ], [ %ret.1, %err_connection_disable ]
  tail call void @mutex_lock_nested(ptr noundef nonnull @list_mutex, i32 noundef 0) #9
  %call.i.i64 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #9
  br i1 %call.i.i64, label %if.end.i.i65, label %err_list_del.list_del.exit_crit_edge

err_list_del.list_del.exit_crit_edge:             ; preds = %err_list_del
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i65:                                     ; preds = %err_list_del
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.fw_mgmt, ptr %call7.i.i, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i, align 8
  %28 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i65, %err_list_del.list_del.exit_crit_edge
  %32 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.fw_mgmt, ptr %call7.i.i, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @list_mutex) #9
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !174
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #9
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #9, !srcloc !175
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !176

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #9
  br label %cleanup

if.then.i.i:                                      ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !177
  tail call void @ida_destroy(ptr noundef %id_map) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ], [ %ret.2, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %ret.2, %if.then10.i.i.i.i.i ], [ %ret.2, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_connection_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gb_fw_mgmt_connection_exit(ptr noundef readonly %connection) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %connection, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %private.i = getelementptr inbounds %struct.gb_connection, ptr %connection, i32 0, i32 17
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %2 = load ptr, ptr @fw_mgmt_class, align 4
  %dev_num = getelementptr inbounds %struct.fw_mgmt, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %dev_num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dev_num, align 4
  tail call void @device_destroy(ptr noundef %2, i32 noundef %4) #9
  %cdev = getelementptr inbounds %struct.fw_mgmt, ptr %1, i32 0, i32 7
  tail call void @cdev_del(ptr noundef %cdev) #9
  %5 = ptrtoint ptr %dev_num to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dev_num, align 4
  %and = and i32 %6, 1048575
  tail call void @ida_free(ptr noundef nonnull @fw_mgmt_minors_map, i32 noundef %and) #9
  %mutex = getelementptr inbounds %struct.fw_mgmt, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %disabled = getelementptr inbounds %struct.fw_mgmt, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %disabled, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  %connection3 = getelementptr inbounds %struct.fw_mgmt, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %connection3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %connection3, align 4
  tail call void @gb_connection_disable(ptr noundef %9) #9
  tail call void @mutex_lock_nested(ptr noundef nonnull @list_mutex, i32 noundef 0) #9
  %node = getelementptr inbounds %struct.fw_mgmt, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.fw_mgmt, ptr %1, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %16 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.fw_mgmt, ptr %1, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @list_mutex) #9
  %kref.i = getelementptr inbounds %struct.fw_mgmt, ptr %1, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !174
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #9
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #9, !srcloc !175
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !176

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #9
  br label %cleanup

if.then.i.i:                                      ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !177
  %id_map.i.i.i = getelementptr %struct.fw_mgmt, ptr %1, i32 0, i32 4
  tail call void @ida_destroy(ptr noundef %id_map.i.i.i) #9
  tail call void @kfree(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fw_mgmt_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @fw_mgmt_init.__key) #9
  store ptr %call, ptr @fw_mgmt_class, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @fw_mgmt_dev_num, i32 noundef 0, i32 noundef 255, ptr noundef nonnull @.str.7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %err_remove_class

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_remove_class:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %1 = load ptr, ptr @fw_mgmt_class, align 4
  tail call void @class_destroy(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %err_remove_class, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %err_remove_class ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fw_mgmt_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @fw_mgmt_dev_num, align 4
  tail call void @unregister_chrdev_region(i32 noundef %0, i32 noundef 255) #9
  %1 = load ptr, ptr @fw_mgmt_class, align 4
  tail call void @class_destroy(ptr noundef %1) #9
  tail call void @ida_destroy(ptr noundef nonnull @fw_mgmt_minors_map) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fw_mgmt_ioctl_unlocked(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %request.i259.i = alloca %struct.gb_fw_mgmt_backend_fw_update_request, align 1
  %request.i252.i = alloca %struct.gb_fw_mgmt_load_and_validate_fw_request, align 1
  %request.i.i = alloca %struct.gb_fw_mgmt_backend_fw_version_request, align 1
  %response.i244.i = alloca %struct.gb_fw_mgmt_backend_fw_version_response, align 2
  %response.i.i = alloca %struct.gb_fw_mgmt_interface_fw_version_response, align 1
  %intf_fw_info.i = alloca %struct.fw_mgmt_ioc_get_intf_version, align 1
  %backend_fw_info.i = alloca %struct.fw_mgmt_ioc_get_backend_version, align 1
  %intf_load.i = alloca %struct.fw_mgmt_ioc_intf_load_and_validate, align 1
  %backend_update.i = alloca %struct.fw_mgmt_ioc_backend_fw_update, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %connection = getelementptr inbounds %struct.fw_mgmt, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connection, align 4
  %bundle1 = getelementptr inbounds %struct.gb_connection, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bundle1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bundle1, align 4
  %mutex = getelementptr inbounds %struct.fw_mgmt, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %disabled = getelementptr inbounds %struct.fw_mgmt, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %disabled, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then:                                          ; preds = %entry
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then3

do.end.i:                                         ; preds = %if.then
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.38, i32 noundef %call.i.i) #12
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !179
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !180
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end.i.if.end6_crit_edge, label %do.end11.i.i.i.i.i

do.end.i.if.end6_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

do.end11.i.i.i.i.i:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !181
  br label %if.end6

if.then3:                                         ; preds = %if.then
  %9 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %intf_fw_info.i) #9
  %10 = getelementptr inbounds [10 x i8], ptr %intf_fw_info.i, i32 0, i32 9
  %11 = getelementptr inbounds %struct.fw_mgmt_ioc_get_intf_version, ptr %intf_fw_info.i, i32 0, i32 1
  %12 = getelementptr inbounds %struct.fw_mgmt_ioc_get_intf_version, ptr %intf_fw_info.i, i32 0, i32 2
  %13 = call ptr @memset(ptr %intf_fw_info.i, i32 255, i32 14)
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %backend_fw_info.i) #9
  %14 = getelementptr inbounds %struct.fw_mgmt_ioc_get_backend_version, ptr %backend_fw_info.i, i32 0, i32 1
  %15 = getelementptr inbounds %struct.fw_mgmt_ioc_get_backend_version, ptr %backend_fw_info.i, i32 0, i32 2
  %16 = getelementptr inbounds %struct.fw_mgmt_ioc_get_backend_version, ptr %backend_fw_info.i, i32 0, i32 3
  %17 = call ptr @memset(ptr %backend_fw_info.i, i32 255, i32 15)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %intf_load.i) #9
  %18 = getelementptr inbounds %struct.fw_mgmt_ioc_intf_load_and_validate, ptr %intf_load.i, i32 0, i32 1
  %19 = getelementptr inbounds %struct.fw_mgmt_ioc_intf_load_and_validate, ptr %intf_load.i, i32 0, i32 2
  %20 = getelementptr inbounds %struct.fw_mgmt_ioc_intf_load_and_validate, ptr %intf_load.i, i32 0, i32 3
  %21 = getelementptr inbounds %struct.fw_mgmt_ioc_intf_load_and_validate, ptr %intf_load.i, i32 0, i32 4
  %22 = call ptr @memset(ptr %intf_load.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %backend_update.i) #9
  %23 = getelementptr inbounds %struct.fw_mgmt_ioc_backend_fw_update, ptr %backend_update.i, i32 0, i32 1
  %mode_switch_started.i = getelementptr inbounds %struct.fw_mgmt, ptr %1, i32 0, i32 12
  %24 = call ptr @memset(ptr %backend_update.i, i32 255, i32 11)
  %25 = ptrtoint ptr %mode_switch_started.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %mode_switch_started.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then3.fw_mgmt_ioctl.exit_crit_edge

if.then3.fw_mgmt_ioctl.exit_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %fw_mgmt_ioctl.exit

if.end.i:                                         ; preds = %if.then3
  %27 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %cmd, label %if.end.i.fw_mgmt_ioctl.exit_crit_edge [
    i32 -2146548224, label %sw.bb.i
    i32 -1072740863, label %if.end59.i.i149.i
    i32 -1072675326, label %if.end59.i.i172.i
    i32 -1073003005, label %if.end59.i.i208.i
    i32 1074021892, label %sw.bb64.i
    i32 17925, label %sw.bb80.i
  ]

if.end.i.fw_mgmt_ioctl.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fw_mgmt_ioctl.exit

sw.bb.i:                                          ; preds = %if.end.i
  %28 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %connection, align 4
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %response.i.i) #9
  %30 = call ptr @memset(ptr %response.i.i, i32 255, i32 14)
  %call.i.i242.i = call i32 @gb_operation_sync_timeout(ptr noundef %29, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef nonnull %response.i.i, i32 noundef 14, i32 noundef 1000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i242.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i242.i, 0
  br i1 %tobool.not.i.i, label %if.end.i243.i, label %fw_mgmt_interface_fw_version_operation.exit.i

if.end.i243.i:                                    ; preds = %sw.bb.i
  %31 = getelementptr inbounds %struct.gb_fw_mgmt_interface_fw_version_response, ptr %response.i.i, i32 0, i32 2
  %32 = getelementptr inbounds %struct.gb_fw_mgmt_interface_fw_version_response, ptr %response.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %32, align 1
  %35 = call i16 @llvm.bswap.i16(i16 %34) #9
  %36 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 %35, ptr %11, align 1
  %37 = ptrtoint ptr %31 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %31, align 1
  %39 = call i16 @llvm.bswap.i16(i16 %38) #9
  %40 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 %39, ptr %12, align 1
  %call6.i.i = call ptr @strncpy(ptr noundef nonnull %intf_fw_info.i, ptr noundef nonnull %response.i.i, i32 noundef 10) #9
  %41 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp.not.i.i = icmp eq i8 %42, 0
  br i1 %cmp.not.i.i, label %if.end.i243.i.if.end3.i_crit_edge, label %do.end12.i.i

if.end.i243.i.if.end3.i_crit_edge:                ; preds = %if.end.i243.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i

do.end12.i.i:                                     ; preds = %if.end.i243.i
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.58) #12
  %45 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %10, align 1
  br label %if.end3.i

fw_mgmt_interface_fw_version_operation.exit.i:    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.55, i32 noundef %call.i.i242.i) #12
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %response.i.i) #9
  br label %fw_mgmt_ioctl.exit

if.end3.i:                                        ; preds = %do.end12.i.i, %if.end.i243.i.if.end3.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %response.i.i) #9
  call void @__might_fault(ptr noundef nonnull @.str.62, i32 noundef 174) #9
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i, label %if.end3.i.fw_mgmt_ioctl.exit_crit_edge, label %if.end.i.i.i

if.end3.i.fw_mgmt_ioctl.exit_crit_edge:           ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fw_mgmt_ioctl.exit

if.end.i.i.i:                                     ; preds = %if.end3.i
  %48 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 14, i32 -1226833920) #14, !srcloc !182
  %asmresult.i.i.i = extractvalue { i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.fw_mgmt_ioctl.exit_crit_edge

if.end.i.i.i.fw_mgmt_ioctl.exit_crit_edge:        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fw_mgmt_ioctl.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i14 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %intf_fw_info.i, i32 noundef 14) #9
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %9, ptr noundef nonnull %intf_fw_info.i, i32 noundef 14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool5.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select.i = select i1 %tobool5.not.i, i32 0, i32 -14
  br label %fw_mgmt_ioctl.exit

if.end59.i.i149.i:                                ; preds = %if.end.i
  tail call void @__might_fault(ptr noundef nonnull @.str.62, i32 noundef 156) #9
  %call.i.i150.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i150.i, label %if.end59.i.i149.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end59.i.i149.i.if.then11.i.i.i_crit_edge:      ; preds = %if.end59.i.i149.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end59.i.i149.i
  %49 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 15, i32 -1226833920) #14
  %asmresult.i.i151.i = extractvalue { i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i151.i)
  %cmp.i6.i152.i = icmp eq i32 %asmresult.i.i151.i, 0
  br i1 %cmp.i6.i152.i, label %if.end.i.i154.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !176

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

if.end.i.i154.i:                                  ; preds = %land.lhs.true.i.i.i
  %call.i.i.i153.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %backend_fw_info.i, i32 noundef 15) #9
  %50 = call i32 @llvm.read_register.i32(metadata !164) #9
  %and.i.i.i.i.i.i.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 4
  %52 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #8, !srcloc !183
  %and.i.i.i.i.i = and i32 %52, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #9, !srcloc !184
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !185
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %backend_fw_info.i, ptr noundef %9, i32 noundef 15) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %52) #9, !srcloc !184
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !185
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end12.i, label %if.end.i.i154.i.if.then11.i.i.i_crit_edge, !prof !176

if.end.i.i154.i.if.then11.i.i.i_crit_edge:        ; preds = %if.end.i.i154.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i154.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end59.i.i149.i.if.then11.i.i.i_crit_edge
  %res.0.i.i273.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i154.i.if.then11.i.i.i_crit_edge ], [ 15, %if.end59.i.i149.i.if.then11.i.i.i_crit_edge ], [ 15, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 15, %res.0.i.i273.i
  %add.ptr.i.i.i = getelementptr i8, ptr %backend_fw_info.i, i32 %sub.i.i.i
  %53 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i273.i)
  br label %fw_mgmt_ioctl.exit

if.end12.i:                                       ; preds = %if.end.i.i154.i
  %54 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %connection, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %request.i.i) #9
  %56 = getelementptr inbounds [10 x i8], ptr %request.i.i, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %response.i244.i) #9
  %57 = getelementptr inbounds %struct.gb_fw_mgmt_backend_fw_version_response, ptr %response.i244.i, i32 0, i32 1
  %58 = getelementptr inbounds %struct.gb_fw_mgmt_backend_fw_version_response, ptr %response.i244.i, i32 0, i32 2
  %59 = call ptr @memset(ptr %response.i244.i, i32 255, i32 5)
  %call.i.i15 = call ptr @strncpy(ptr noundef nonnull %request.i.i, ptr noundef nonnull %backend_fw_info.i, i32 noundef 10) #9
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %56, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %cmp.not.i246.i = icmp eq i8 %61, 0
  br i1 %cmp.not.i246.i, label %if.end.i250.i, label %do.end.i247.i

do.end.i247.i:                                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.63) #12
  br label %fw_mgmt_backend_fw_version_operation.exit.i

if.end.i250.i:                                    ; preds = %if.end12.i
  %call.i.i248.i = call i32 @gb_operation_sync_timeout(ptr noundef %55, i32 noundef 4, ptr noundef nonnull %request.i.i, i32 noundef 10, ptr noundef nonnull %response.i244.i, i32 noundef 5, i32 noundef 1000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i248.i)
  %tobool.not.i249.i = icmp eq i32 %call.i.i248.i, 0
  br i1 %tobool.not.i249.i, label %if.end14.i.i, label %do.end10.i.i

do.end10.i.i:                                     ; preds = %if.end.i250.i
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.66, ptr noundef nonnull %backend_fw_info.i, i32 noundef %call.i.i248.i) #12
  br label %fw_mgmt_backend_fw_version_operation.exit.i

if.end14.i.i:                                     ; preds = %if.end.i250.i
  %66 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %58, align 2
  %68 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %16, align 1
  %69 = ptrtoint ptr %14 to i32
  call void @__asan_storeN_noabort(i32 %69, i32 2)
  store i16 0, ptr %14, align 1
  %70 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 2)
  store i16 0, ptr %15, align 1
  %71 = zext i8 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.95)
  switch i8 %67, label %do.end32.i.i [
    i8 1, label %sw.bb.i.i
    i8 2, label %if.end14.i.i.if.end59.i.i159.i_crit_edge
    i8 4, label %if.end14.i.i.if.end59.i.i159.i_crit_edge21
    i8 3, label %do.end26.i.i
  ]

if.end14.i.i.if.end59.i.i159.i_crit_edge21:       ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i.i159.i

if.end14.i.i.if.end59.i.i159.i_crit_edge:         ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i.i159.i

sw.bb.i.i:                                        ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %response.i244.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %response.i244.i, align 2
  %74 = call i16 @llvm.bswap.i16(i16 %73) #9
  %75 = ptrtoint ptr %14 to i32
  call void @__asan_storeN_noabort(i32 %75, i32 2)
  store i16 %74, ptr %14, align 1
  %76 = ptrtoint ptr %57 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %57, align 2
  %78 = call i16 @llvm.bswap.i16(i16 %77) #9
  %79 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %79, i32 2)
  store i16 %78, ptr %15, align 1
  br label %if.end59.i.i159.i

do.end26.i.i:                                     ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.69, ptr noundef nonnull %backend_fw_info.i) #12
  br label %if.end59.i.i159.i

do.end32.i.i:                                     ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv17.i.i = zext i8 %67 to i32
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.72, i32 noundef %conv17.i.i) #12
  br label %if.end59.i.i159.i

fw_mgmt_backend_fw_version_operation.exit.i:      ; preds = %do.end10.i.i, %do.end.i247.i
  %retval.0.i251.i = phi i32 [ -22, %do.end.i247.i ], [ %call.i.i248.i, %do.end10.i.i ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %response.i244.i) #9
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %request.i.i) #9
  br label %fw_mgmt_ioctl.exit

if.end59.i.i159.i:                                ; preds = %do.end32.i.i, %do.end26.i.i, %sw.bb.i.i, %if.end14.i.i.if.end59.i.i159.i_crit_edge, %if.end14.i.i.if.end59.i.i159.i_crit_edge21
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %response.i244.i) #9
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %request.i.i) #9
  call void @__might_fault(ptr noundef nonnull @.str.62, i32 noundef 174) #9
  %call.i.i160.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i160.i, label %if.end59.i.i159.i.fw_mgmt_ioctl.exit_crit_edge, label %copy_to_user.exit168.i

if.end59.i.i159.i.fw_mgmt_ioctl.exit_crit_edge:   ; preds = %if.end59.i.i159.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fw_mgmt_ioctl.exit

copy_to_user.exit168.i:                           ; preds = %if.end59.i.i159.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i164.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %backend_fw_info.i, i32 noundef 15) #9
  %call.i12.i.i165.i = call i32 @arm_copy_to_user(ptr noundef %9, ptr noundef nonnull %backend_fw_info.i, i32 noundef 15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i165.i)
  %tobool18.not.i = icmp eq i32 %call.i12.i.i165.i, 0
  %spec.select298.i = select i1 %tobool18.not.i, i32 0, i32 -14
  br label %fw_mgmt_ioctl.exit

if.end59.i.i172.i:                                ; preds = %if.end.i
  tail call void @__might_fault(ptr noundef nonnull @.str.62, i32 noundef 156) #9
  %call.i.i173.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i173.i, label %if.end59.i.i172.i.if.then11.i.i189.i_crit_edge, label %land.lhs.true.i.i176.i

if.end59.i.i172.i.if.then11.i.i189.i_crit_edge:   ; preds = %if.end59.i.i172.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i189.i

land.lhs.true.i.i176.i:                           ; preds = %if.end59.i.i172.i
  %84 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 16, i32 -1226833920) #14
  %asmresult.i.i174.i = extractvalue { i32, i32 } %84, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i174.i)
  %cmp.i6.i175.i = icmp eq i32 %asmresult.i.i174.i, 0
  br i1 %cmp.i6.i175.i, label %if.end.i.i186.i, label %land.lhs.true.i.i176.i.if.then11.i.i189.i_crit_edge, !prof !176

land.lhs.true.i.i176.i.if.then11.i.i189.i_crit_edge: ; preds = %land.lhs.true.i.i176.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i189.i

if.end.i.i186.i:                                  ; preds = %land.lhs.true.i.i176.i
  %call.i.i.i177.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %intf_load.i, i32 noundef 16) #9
  %85 = call i32 @llvm.read_register.i32(metadata !164) #9
  %and.i.i.i.i.i.i178.i = and i32 %85, -16384
  %86 = inttoptr i32 %and.i.i.i.i.i.i178.i to ptr
  %cpu_domain.i.i.i.i.i179.i = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 4
  %87 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i179.i) #8, !srcloc !183
  %and.i.i.i.i180.i = and i32 %87, -13
  %or.i.i.i.i181.i = or i32 %and.i.i.i.i180.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i181.i) #9, !srcloc !184
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !185
  %call1.i.i.i182.i = call i32 @arm_copy_from_user(ptr noundef nonnull %intf_load.i, ptr noundef %9, i32 noundef 16) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %87) #9, !srcloc !184
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !185
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i182.i)
  %tobool4.not.i.i185.i = icmp eq i32 %call1.i.i.i182.i, 0
  br i1 %tobool4.not.i.i185.i, label %if.end25.i, label %if.end.i.i186.i.if.then11.i.i189.i_crit_edge, !prof !176

if.end.i.i186.i.if.then11.i.i189.i_crit_edge:     ; preds = %if.end.i.i186.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i189.i

if.then11.i.i189.i:                               ; preds = %if.end.i.i186.i.if.then11.i.i189.i_crit_edge, %land.lhs.true.i.i176.i.if.then11.i.i189.i_crit_edge, %if.end59.i.i172.i.if.then11.i.i189.i_crit_edge
  %res.0.i.i184282.i = phi i32 [ %call1.i.i.i182.i, %if.end.i.i186.i.if.then11.i.i189.i_crit_edge ], [ 16, %if.end59.i.i172.i.if.then11.i.i189.i_crit_edge ], [ 16, %land.lhs.true.i.i176.i.if.then11.i.i189.i_crit_edge ]
  %sub.i.i187.i = sub i32 16, %res.0.i.i184282.i
  %add.ptr.i.i188.i = getelementptr i8, ptr %intf_load.i, i32 %sub.i.i187.i
  %88 = call ptr @memset(ptr %add.ptr.i.i188.i, i32 0, i32 %res.0.i.i184282.i)
  br label %fw_mgmt_ioctl.exit

if.end25.i:                                       ; preds = %if.end.i.i186.i
  %89 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %request.i252.i) #9
  %load_method.off.i.i = add i8 %90, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %load_method.off.i.i)
  %switch.i.i = icmp ult i8 %load_method.off.i.i, 2
  %91 = ptrtoint ptr %request.i252.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 -1, ptr %request.i252.i, align 1
  br i1 %switch.i.i, label %if.end.i255.i, label %do.end.i253.i

do.end.i253.i:                                    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i = zext i8 %90 to i32
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.74, i32 noundef %conv.i.i) #12
  br label %fw_mgmt_load_and_validate_operation.exit.thread.i

if.end.i255.i:                                    ; preds = %if.end25.i
  %94 = getelementptr inbounds %struct.gb_fw_mgmt_load_and_validate_fw_request, ptr %request.i252.i, i32 0, i32 2, i32 9
  %95 = getelementptr inbounds %struct.gb_fw_mgmt_load_and_validate_fw_request, ptr %request.i252.i, i32 0, i32 2
  %96 = getelementptr inbounds %struct.gb_fw_mgmt_load_and_validate_fw_request, ptr %request.i252.i, i32 0, i32 1
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %90, ptr %96, align 1
  %call.i254.i = call ptr @strncpy(ptr noundef %95, ptr noundef nonnull %intf_load.i, i32 noundef 10) #9
  %98 = ptrtoint ptr %94 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %94, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %cmp9.not.i.i = icmp eq i8 %99, 0
  br i1 %cmp9.not.i.i, label %if.end16.i.i, label %do.end14.i.i

do.end14.i.i:                                     ; preds = %if.end.i255.i
  call void @__sanitizer_cov_trace_pc() #11
  %100 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.77) #12
  br label %fw_mgmt_load_and_validate_operation.exit.thread.i

if.end16.i.i:                                     ; preds = %if.end.i255.i
  %id_map.i.i = getelementptr inbounds %struct.fw_mgmt, ptr %1, i32 0, i32 4
  %call17.i.i = call i32 @ida_alloc_range(ptr noundef %id_map.i.i, i32 noundef 1, i32 noundef 255, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %cmp18.i.i = icmp slt i32 %call17.i.i, 0
  br i1 %cmp18.i.i, label %do.end23.i.i, label %if.end25.i.i

do.end23.i.i:                                     ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %102 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.80, i32 noundef %call17.i.i) #12
  br label %fw_mgmt_load_and_validate_operation.exit.thread.i

if.end25.i.i:                                     ; preds = %if.end16.i.i
  %conv26.i.i = trunc i32 %call17.i.i to i8
  %intf_fw_request_id.i.i = getelementptr inbounds %struct.fw_mgmt, ptr %1, i32 0, i32 14
  %104 = ptrtoint ptr %intf_fw_request_id.i.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv26.i.i, ptr %intf_fw_request_id.i.i, align 1
  %intf_fw_loaded.i.i = getelementptr inbounds %struct.fw_mgmt, ptr %1, i32 0, i32 13
  %105 = ptrtoint ptr %intf_fw_loaded.i.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %intf_fw_loaded.i.i, align 2
  %106 = ptrtoint ptr %request.i252.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv26.i.i, ptr %request.i252.i, align 1
  %107 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %connection, align 4
  %call.i.i256.i = call i32 @gb_operation_sync_timeout(ptr noundef %108, i32 noundef 2, ptr noundef nonnull %request.i252.i, i32 noundef 12, ptr noundef null, i32 noundef 0, i32 noundef 1000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i256.i)
  %tobool.not.i257.i = icmp eq i32 %call.i.i256.i, 0
  br i1 %tobool.not.i257.i, label %if.end29.i, label %if.then29.i.i

if.then29.i.i:                                    ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %109 = ptrtoint ptr %intf_fw_request_id.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %intf_fw_request_id.i.i, align 1
  %conv32.i.i = zext i8 %110 to i32
  call void @ida_free(ptr noundef %id_map.i.i, i32 noundef %conv32.i.i) #9
  %111 = ptrtoint ptr %intf_fw_request_id.i.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %intf_fw_request_id.i.i, align 1
  %112 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.83, i32 noundef %call.i.i256.i) #12
  br label %fw_mgmt_load_and_validate_operation.exit.thread.i

fw_mgmt_load_and_validate_operation.exit.thread.i: ; preds = %if.then29.i.i, %do.end23.i.i, %do.end14.i.i, %do.end.i253.i
  %retval.0.i258.ph.i = phi i32 [ %call.i.i256.i, %if.then29.i.i ], [ %call17.i.i, %do.end23.i.i ], [ -22, %do.end14.i.i ], [ -22, %do.end.i253.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %request.i252.i) #9
  br label %fw_mgmt_ioctl.exit

if.end29.i:                                       ; preds = %if.end25.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %request.i252.i) #9
  %completion.i = getelementptr inbounds %struct.fw_mgmt, ptr %1, i32 0, i32 6
  %timeout_jiffies.i = getelementptr inbounds %struct.fw_mgmt, ptr %1, i32 0, i32 10
  %114 = ptrtoint ptr %timeout_jiffies.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %timeout_jiffies.i, align 4
  %call30.i = call i32 @wait_for_completion_timeout(ptr noundef %completion.i, i32 noundef %115) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %do.end.i16, label %if.end59.i.i195.i

do.end.i16:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  %116 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.41) #12
  br label %fw_mgmt_ioctl.exit

if.end59.i.i195.i:                                ; preds = %if.end29.i
  %intf_fw_status.i = getelementptr inbounds %struct.fw_mgmt, ptr %1, i32 0, i32 15
  %118 = ptrtoint ptr %intf_fw_status.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %intf_fw_status.i, align 4
  %120 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %19, align 1
  %intf_fw_major.i = getelementptr inbounds %struct.fw_mgmt, ptr %1, i32 0, i32 16
  %121 = ptrtoint ptr %intf_fw_major.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %intf_fw_major.i, align 2
  %123 = ptrtoint ptr %20 to i32
  call void @__asan_storeN_noabort(i32 %123, i32 2)
  store i16 %122, ptr %20, align 1
  %intf_fw_minor.i = getelementptr inbounds %struct.fw_mgmt, ptr %1, i32 0, i32 17
  %124 = ptrtoint ptr %intf_fw_minor.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %intf_fw_minor.i, align 4
  %126 = ptrtoint ptr %21 to i32
  call void @__asan_storeN_noabort(i32 %126, i32 2)
  store i16 %125, ptr %21, align 1
  call void @__might_fault(ptr noundef nonnull @.str.62, i32 noundef 174) #9
  %call.i.i196.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i196.i, label %if.end59.i.i195.i.fw_mgmt_ioctl.exit_crit_edge, label %copy_to_user.exit204.i

if.end59.i.i195.i.fw_mgmt_ioctl.exit_crit_edge:   ; preds = %if.end59.i.i195.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fw_mgmt_ioctl.exit

copy_to_user.exit204.i:                           ; preds = %if.end59.i.i195.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i200.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %intf_load.i, i32 noundef 16) #9
  %call.i12.i.i201.i = call i32 @arm_copy_to_user(ptr noundef %9, ptr noundef nonnull %intf_load.i, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i201.i)
  %tobool35.not.i = icmp eq i32 %call.i12.i.i201.i, 0
  %spec.select299.i = select i1 %tobool35.not.i, i32 0, i32 -14
  br label %fw_mgmt_ioctl.exit

if.end59.i.i208.i:                                ; preds = %if.end.i
  tail call void @__might_fault(ptr noundef nonnull @.str.62, i32 noundef 156) #9
  %call.i.i209.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i209.i, label %if.end59.i.i208.i.if.then11.i.i225.i_crit_edge, label %land.lhs.true.i.i212.i

if.end59.i.i208.i.if.then11.i.i225.i_crit_edge:   ; preds = %if.end59.i.i208.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i225.i

land.lhs.true.i.i212.i:                           ; preds = %if.end59.i.i208.i
  %127 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 11, i32 -1226833920) #14
  %asmresult.i.i210.i = extractvalue { i32, i32 } %127, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i210.i)
  %cmp.i6.i211.i = icmp eq i32 %asmresult.i.i210.i, 0
  br i1 %cmp.i6.i211.i, label %if.end.i.i222.i, label %land.lhs.true.i.i212.i.if.then11.i.i225.i_crit_edge, !prof !176

land.lhs.true.i.i212.i.if.then11.i.i225.i_crit_edge: ; preds = %land.lhs.true.i.i212.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i225.i

if.end.i.i222.i:                                  ; preds = %land.lhs.true.i.i212.i
  %call.i.i.i213.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %backend_update.i, i32 noundef 11) #9
  %128 = call i32 @llvm.read_register.i32(metadata !164) #9
  %and.i.i.i.i.i.i214.i = and i32 %128, -16384
  %129 = inttoptr i32 %and.i.i.i.i.i.i214.i to ptr
  %cpu_domain.i.i.i.i.i215.i = getelementptr inbounds %struct.thread_info, ptr %129, i32 0, i32 4
  %130 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i215.i) #8, !srcloc !183
  %and.i.i.i.i216.i = and i32 %130, -13
  %or.i.i.i.i217.i = or i32 %and.i.i.i.i216.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i217.i) #9, !srcloc !184
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !185
  %call1.i.i.i218.i = call i32 @arm_copy_from_user(ptr noundef nonnull %backend_update.i, ptr noundef %9, i32 noundef 11) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %130) #9, !srcloc !184
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !185
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i218.i)
  %tobool4.not.i.i221.i = icmp eq i32 %call1.i.i.i218.i, 0
  br i1 %tobool4.not.i.i221.i, label %if.end42.i, label %if.end.i.i222.i.if.then11.i.i225.i_crit_edge, !prof !176

if.end.i.i222.i.if.then11.i.i225.i_crit_edge:     ; preds = %if.end.i.i222.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i225.i

if.then11.i.i225.i:                               ; preds = %if.end.i.i222.i.if.then11.i.i225.i_crit_edge, %land.lhs.true.i.i212.i.if.then11.i.i225.i_crit_edge, %if.end59.i.i208.i.if.then11.i.i225.i_crit_edge
  %res.0.i.i220291.i = phi i32 [ %call1.i.i.i218.i, %if.end.i.i222.i.if.then11.i.i225.i_crit_edge ], [ 11, %if.end59.i.i208.i.if.then11.i.i225.i_crit_edge ], [ 11, %land.lhs.true.i.i212.i.if.then11.i.i225.i_crit_edge ]
  %sub.i.i223.i = sub i32 11, %res.0.i.i220291.i
  %add.ptr.i.i224.i = getelementptr i8, ptr %backend_update.i, i32 %sub.i.i223.i
  %131 = call ptr @memset(ptr %add.ptr.i.i224.i, i32 0, i32 %res.0.i.i220291.i)
  br label %fw_mgmt_ioctl.exit

if.end42.i:                                       ; preds = %if.end.i.i222.i
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %request.i259.i) #9
  %132 = getelementptr inbounds %struct.gb_fw_mgmt_backend_fw_update_request, ptr %request.i259.i, i32 0, i32 1
  %133 = getelementptr inbounds %struct.gb_fw_mgmt_backend_fw_update_request, ptr %request.i259.i, i32 0, i32 1, i32 9
  %134 = ptrtoint ptr %request.i259.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 -1, ptr %request.i259.i, align 1
  %call.i260.i = call ptr @strncpy(ptr noundef %132, ptr noundef nonnull %backend_update.i, i32 noundef 10) #9
  %135 = ptrtoint ptr %133 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %133, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %cmp.not.i261.i = icmp eq i8 %136, 0
  br i1 %cmp.not.i261.i, label %if.end.i264.i, label %do.end.i262.i

do.end.i262.i:                                    ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  %137 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %138, ptr noundef nonnull @.str.85) #12
  br label %fw_mgmt_backend_fw_update_operation.exit.thread.i

if.end.i264.i:                                    ; preds = %if.end42.i
  %id_map.i263.i = getelementptr inbounds %struct.fw_mgmt, ptr %1, i32 0, i32 4
  %call3.i.i = call i32 @ida_alloc_range(ptr noundef %id_map.i263.i, i32 noundef 1, i32 noundef 255, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp4.i.i, label %do.end9.i.i, label %if.end11.i.i

do.end9.i.i:                                      ; preds = %if.end.i264.i
  call void @__sanitizer_cov_trace_pc() #11
  %139 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %140, ptr noundef nonnull @.str.80, i32 noundef %call3.i.i) #12
  br label %fw_mgmt_backend_fw_update_operation.exit.thread.i

if.end11.i.i:                                     ; preds = %if.end.i264.i
  %conv12.i.i = trunc i32 %call3.i.i to i8
  %backend_fw_request_id.i.i = getelementptr inbounds %struct.fw_mgmt, ptr %1, i32 0, i32 18
  %141 = ptrtoint ptr %backend_fw_request_id.i.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %conv12.i.i, ptr %backend_fw_request_id.i.i, align 2
  %142 = ptrtoint ptr %request.i259.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %conv12.i.i, ptr %request.i259.i, align 1
  %143 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %connection, align 4
  %call.i.i266.i = call i32 @gb_operation_sync_timeout(ptr noundef %144, i32 noundef 5, ptr noundef nonnull %request.i259.i, i32 noundef 11, ptr noundef null, i32 noundef 0, i32 noundef 1000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i266.i)
  %tobool.not.i267.i = icmp eq i32 %call.i.i266.i, 0
  br i1 %tobool.not.i267.i, label %if.end48.i, label %if.then15.i.i

if.then15.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %145 = ptrtoint ptr %backend_fw_request_id.i.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %backend_fw_request_id.i.i, align 2
  %conv18.i.i = zext i8 %146 to i32
  call void @ida_free(ptr noundef %id_map.i263.i, i32 noundef %conv18.i.i) #9
  %147 = ptrtoint ptr %backend_fw_request_id.i.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 0, ptr %backend_fw_request_id.i.i, align 2
  %148 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %149, ptr noundef nonnull @.str.90, ptr noundef nonnull %backend_update.i, i32 noundef %call.i.i266.i) #12
  br label %fw_mgmt_backend_fw_update_operation.exit.thread.i

fw_mgmt_backend_fw_update_operation.exit.thread.i: ; preds = %if.then15.i.i, %do.end9.i.i, %do.end.i262.i
  %retval.0.i268.ph.i = phi i32 [ %call.i.i266.i, %if.then15.i.i ], [ %call3.i.i, %do.end9.i.i ], [ -22, %do.end.i262.i ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %request.i259.i) #9
  br label %fw_mgmt_ioctl.exit

if.end48.i:                                       ; preds = %if.end11.i.i
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %request.i259.i) #9
  %completion49.i = getelementptr inbounds %struct.fw_mgmt, ptr %1, i32 0, i32 6
  %timeout_jiffies50.i = getelementptr inbounds %struct.fw_mgmt, ptr %1, i32 0, i32 10
  %150 = ptrtoint ptr %timeout_jiffies50.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %timeout_jiffies50.i, align 4
  %call51.i = call i32 @wait_for_completion_timeout(ptr noundef %completion49.i, i32 noundef %151) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %do.end56.i, label %if.end59.i.i231.i

do.end56.i:                                       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  %152 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %153, ptr noundef nonnull @.str.44) #12
  br label %fw_mgmt_ioctl.exit

if.end59.i.i231.i:                                ; preds = %if.end48.i
  %backend_fw_status.i = getelementptr inbounds %struct.fw_mgmt, ptr %1, i32 0, i32 19
  %154 = ptrtoint ptr %backend_fw_status.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %backend_fw_status.i, align 1
  %156 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %155, ptr %23, align 1
  call void @__might_fault(ptr noundef nonnull @.str.62, i32 noundef 174) #9
  %call.i.i232.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i232.i, label %if.end59.i.i231.i.fw_mgmt_ioctl.exit_crit_edge, label %copy_to_user.exit240.i

if.end59.i.i231.i.fw_mgmt_ioctl.exit_crit_edge:   ; preds = %if.end59.i.i231.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fw_mgmt_ioctl.exit

copy_to_user.exit240.i:                           ; preds = %if.end59.i.i231.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i236.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %backend_update.i, i32 noundef 11) #9
  %call.i12.i.i237.i = call i32 @arm_copy_to_user(ptr noundef %9, ptr noundef nonnull %backend_update.i, i32 noundef 11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i237.i)
  %tobool61.not.i = icmp eq i32 %call.i12.i.i237.i, 0
  %spec.select300.i = select i1 %tobool61.not.i, i32 0, i32 -14
  br label %fw_mgmt_ioctl.exit

sw.bb64.i:                                        ; preds = %if.end.i
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 493) #9
  %157 = tail call i32 @llvm.read_register.i32(metadata !164) #9
  %and.i.i.i.i = and i32 %157, -16384
  %158 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %158, i32 0, i32 4
  %159 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #8, !srcloc !183
  %and.i.i = and i32 %159, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #9, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !185
  %160 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %9, i32 -1226833921) #9, !srcloc !186
  %asmresult.i = extractvalue { i32, i32 } %160, 0
  %asmresult66.i = extractvalue { i32, i32 } %160, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %159) #9, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !185
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool68.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool68.not.i, label %if.end70.i, label %sw.bb64.i.fw_mgmt_ioctl.exit_crit_edge

sw.bb64.i.fw_mgmt_ioctl.exit_crit_edge:           ; preds = %sw.bb64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fw_mgmt_ioctl.exit

if.end70.i:                                       ; preds = %sw.bb64.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult66.i)
  %tobool71.not.i = icmp eq i32 %asmresult66.i, 0
  br i1 %tobool71.not.i, label %do.end75.i, label %if.else.i.i

do.end75.i:                                       ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #11
  %161 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %162, ptr noundef nonnull @.str.47) #12
  br label %fw_mgmt_ioctl.exit

if.else.i.i:                                      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %asmresult66.i) #9
  %timeout_jiffies79.i = getelementptr inbounds %struct.fw_mgmt, ptr %1, i32 0, i32 10
  %163 = ptrtoint ptr %timeout_jiffies79.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %call2.i.i, ptr %timeout_jiffies79.i, align 4
  br label %fw_mgmt_ioctl.exit

sw.bb80.i:                                        ; preds = %if.end.i
  %intf_fw_loaded.i = getelementptr inbounds %struct.fw_mgmt, ptr %1, i32 0, i32 13
  %164 = ptrtoint ptr %intf_fw_loaded.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %intf_fw_loaded.i, align 2, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %tobool81.not.i = icmp eq i8 %165, 0
  br i1 %tobool81.not.i, label %do.end85.i, label %if.end87.i

do.end85.i:                                       ; preds = %sw.bb80.i
  call void @__sanitizer_cov_trace_pc() #11
  %166 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %167, ptr noundef nonnull @.str.50) #12
  br label %fw_mgmt_ioctl.exit

if.end87.i:                                       ; preds = %sw.bb80.i
  %168 = ptrtoint ptr %mode_switch_started.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 1, ptr %mode_switch_started.i, align 1
  %169 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %connection, align 4
  %intf.i = getelementptr inbounds %struct.gb_connection, ptr %170, i32 0, i32 1
  %171 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %intf.i, align 4
  %call89.i = tail call i32 @gb_interface_request_mode_switch(ptr noundef %172) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89.i)
  %tobool90.not.i = icmp eq i32 %call89.i, 0
  br i1 %tobool90.not.i, label %if.end87.i.fw_mgmt_ioctl.exit_crit_edge, label %do.end94.i

if.end87.i.fw_mgmt_ioctl.exit_crit_edge:          ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fw_mgmt_ioctl.exit

do.end94.i:                                       ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #11
  %173 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %174, ptr noundef nonnull @.str.53, i32 noundef %call89.i) #12
  %175 = ptrtoint ptr %mode_switch_started.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 0, ptr %mode_switch_started.i, align 1
  br label %fw_mgmt_ioctl.exit

fw_mgmt_ioctl.exit:                               ; preds = %do.end94.i, %if.end87.i.fw_mgmt_ioctl.exit_crit_edge, %do.end85.i, %if.else.i.i, %do.end75.i, %sw.bb64.i.fw_mgmt_ioctl.exit_crit_edge, %copy_to_user.exit240.i, %if.end59.i.i231.i.fw_mgmt_ioctl.exit_crit_edge, %do.end56.i, %fw_mgmt_backend_fw_update_operation.exit.thread.i, %if.then11.i.i225.i, %copy_to_user.exit204.i, %if.end59.i.i195.i.fw_mgmt_ioctl.exit_crit_edge, %do.end.i16, %fw_mgmt_load_and_validate_operation.exit.thread.i, %if.then11.i.i189.i, %copy_to_user.exit168.i, %if.end59.i.i159.i.fw_mgmt_ioctl.exit_crit_edge, %fw_mgmt_backend_fw_version_operation.exit.i, %if.then11.i.i.i, %copy_to_user.exit.i, %if.end.i.i.i.fw_mgmt_ioctl.exit_crit_edge, %if.end3.i.fw_mgmt_ioctl.exit_crit_edge, %fw_mgmt_interface_fw_version_operation.exit.i, %if.end.i.fw_mgmt_ioctl.exit_crit_edge, %if.then3.fw_mgmt_ioctl.exit_crit_edge
  %retval.0.i17 = phi i32 [ %call89.i, %do.end94.i ], [ -1, %do.end85.i ], [ 0, %if.else.i.i ], [ -22, %do.end75.i ], [ -110, %do.end56.i ], [ -110, %do.end.i16 ], [ -16, %if.then3.fw_mgmt_ioctl.exit_crit_edge ], [ %call.i.i242.i, %fw_mgmt_interface_fw_version_operation.exit.i ], [ %retval.0.i251.i, %fw_mgmt_backend_fw_version_operation.exit.i ], [ -14, %sw.bb64.i.fw_mgmt_ioctl.exit_crit_edge ], [ 0, %if.end87.i.fw_mgmt_ioctl.exit_crit_edge ], [ -25, %if.end.i.fw_mgmt_ioctl.exit_crit_edge ], [ %retval.0.i258.ph.i, %fw_mgmt_load_and_validate_operation.exit.thread.i ], [ %retval.0.i268.ph.i, %fw_mgmt_backend_fw_update_operation.exit.thread.i ], [ -14, %if.end3.i.fw_mgmt_ioctl.exit_crit_edge ], [ -14, %if.end.i.i.i.fw_mgmt_ioctl.exit_crit_edge ], [ -14, %if.then11.i.i.i ], [ -14, %if.end59.i.i159.i.fw_mgmt_ioctl.exit_crit_edge ], [ -14, %if.then11.i.i189.i ], [ -14, %if.end59.i.i195.i.fw_mgmt_ioctl.exit_crit_edge ], [ -14, %if.then11.i.i225.i ], [ -14, %if.end59.i.i231.i.fw_mgmt_ioctl.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ], [ %spec.select298.i, %copy_to_user.exit168.i ], [ %spec.select299.i, %copy_to_user.exit204.i ], [ %spec.select300.i, %copy_to_user.exit240.i ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %backend_update.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %intf_load.i) #9
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %backend_fw_info.i) #9
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %intf_fw_info.i) #9
  %call.i.i18 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 22
  %176 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %176)
  store volatile i64 %call.i.i18, ptr %last_busy.i.i, align 8
  %call.i1.i = call i32 @__pm_runtime_suspend(ptr noundef %5, i32 noundef 13) #9
  br label %if.end6

if.end6:                                          ; preds = %fw_mgmt_ioctl.exit, %do.end11.i.i.i.i.i, %do.end.i.if.end6_crit_edge, %entry.if.end6_crit_edge
  %ret.0 = phi i32 [ -19, %entry.if.end6_crit_edge ], [ %retval.0.i17, %fw_mgmt_ioctl.exit ], [ %call.i.i, %do.end.i.if.end6_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i ]
  call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fw_mgmt_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @list_mutex, i32 noundef 0) #9
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ @fw_mgmt_list, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %3 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @fw_mgmt_list
  br i1 %cmp.not.i, label %get_fw_mgmt.exit.thread, label %for.body.i

get_fw_mgmt.exit.thread:                          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef nonnull @list_mutex) #9
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %cdev1.i = getelementptr i8, ptr %.pn.i, i32 208
  %cmp2.i = icmp eq ptr %cdev1.i, %2
  br i1 %cmp2.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %fw_mgmt.0.le.i = getelementptr i8, ptr %.pn.i, i32 -12
  %kref.i = getelementptr i8, ptr %.pn.i, i32 -4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #9, !srcloc !187
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !188

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.get_fw_mgmt.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !176

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.get_fw_mgmt.exit_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_fw_mgmt.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #9
  br label %get_fw_mgmt.exit

get_fw_mgmt.exit:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.get_fw_mgmt.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @list_mutex) #9
  %tobool.not = icmp eq ptr %fw_mgmt.0.le.i, null
  br i1 %tobool.not, label %get_fw_mgmt.exit.cleanup_crit_edge, label %if.then

get_fw_mgmt.exit.cleanup_crit_edge:               ; preds = %get_fw_mgmt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %get_fw_mgmt.exit
  call void @__sanitizer_cov_trace_pc() #11
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %fw_mgmt.0.le.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %get_fw_mgmt.exit.cleanup_crit_edge, %get_fw_mgmt.exit.thread
  %retval.0 = phi i32 [ 0, %if.then ], [ -19, %get_fw_mgmt.exit.cleanup_crit_edge ], [ -19, %get_fw_mgmt.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fw_mgmt_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %kref.i = getelementptr inbounds %struct.fw_mgmt, ptr %1, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !174
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #9, !srcloc !175
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.put_fw_mgmt.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !176

if.end5.i.i.i.i.i.put_fw_mgmt.exit_crit_edge:     ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_fw_mgmt.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #9
  br label %put_fw_mgmt.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !177
  %id_map.i.i.i = getelementptr %struct.fw_mgmt, ptr %1, i32 0, i32 4
  tail call void @ida_destroy(ptr noundef %id_map.i.i.i) #9
  tail call void @kfree(ptr noundef %1) #9
  br label %put_fw_mgmt.exit

put_fw_mgmt.exit:                                 ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.put_fw_mgmt.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_interface_request_mode_switch(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_operation_sync_timeout(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !15, !16, !18, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !63, !64, !66, !67, !68, !70, !72, !73, !75, !77, !78, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !116, !118, !120, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !157, !159, !160, !162, !163}
!llvm.named.register.sp = !{!164}
!llvm.module.flags = !{!165, !166, !167, !168, !169, !170, !171, !172}
!llvm.ident = !{!173}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/greybus/fw-management.c", i32 581, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @gb_fw_mgmt_request_handler._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @gb_fw_mgmt_request_handler._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @gb_fw_mgmt_connection_init.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/staging/greybus/fw-management.c", i32 606, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/staging/greybus/fw-management.c", i32 634, i32 12}
!13 = !{ptr @fw_mgmt_init.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/staging/greybus/fw-management.c", i32 699, i32 18}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @fw_mgmt_class, !17, !"fw_mgmt_class", i1 false, i1 false}
!17 = !{!"../drivers/staging/greybus/fw-management.c", i32 58, i32 22}
!18 = !{ptr @fw_mgmt_dev_num, !19, !"fw_mgmt_dev_num", i1 false, i1 false}
!19 = !{!"../drivers/staging/greybus/fw-management.c", i32 59, i32 14}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/greybus/fw-management.c", i32 200, i32 3}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @fw_mgmt_interface_fw_loaded_operation._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @fw_mgmt_interface_fw_loaded_operation._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/staging/greybus/fw-management.c", i32 206, i32 3}
!27 = !{ptr @fw_mgmt_interface_fw_loaded_operation._entry.10, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @fw_mgmt_interface_fw_loaded_operation._entry_ptr.12, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/greybus/fw-management.c", i32 215, i32 3}
!31 = !{ptr @fw_mgmt_interface_fw_loaded_operation._entry.13, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @fw_mgmt_interface_fw_loaded_operation._entry_ptr.15, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/greybus/fw-management.c", i32 227, i32 3}
!35 = !{ptr @fw_mgmt_interface_fw_loaded_operation._entry.16, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @fw_mgmt_interface_fw_loaded_operation._entry_ptr.18, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/staging/greybus/fw-management.c", i32 231, i32 3}
!39 = !{ptr @fw_mgmt_interface_fw_loaded_operation._entry.19, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @fw_mgmt_interface_fw_loaded_operation._entry_ptr.21, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/staging/greybus/fw-management.c", i32 350, i32 3}
!43 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @fw_mgmt_backend_fw_updated_operation._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @fw_mgmt_backend_fw_updated_operation._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/staging/greybus/fw-management.c", i32 355, i32 3}
!48 = !{ptr @fw_mgmt_backend_fw_updated_operation._entry.24, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @fw_mgmt_backend_fw_updated_operation._entry_ptr.26, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/greybus/fw-management.c", i32 364, i32 3}
!52 = !{ptr @fw_mgmt_backend_fw_updated_operation._entry.27, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @fw_mgmt_backend_fw_updated_operation._entry_ptr.29, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/greybus/fw-management.c", i32 375, i32 3}
!56 = !{ptr @fw_mgmt_backend_fw_updated_operation._entry.30, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @fw_mgmt_backend_fw_updated_operation._entry_ptr.32, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @init_completion.__key, !59, !"__key", i1 false, i1 false}
!59 = !{!"../include/linux/completion.h", i32 87, i32 2}
!60 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @xa_init_flags.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!63 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/staging/greybus/fw-management.c", i32 62, i32 8}
!66 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @list_mutex, !65, !"list_mutex", i1 false, i1 false}
!68 = !{ptr @fw_mgmt_list, !69, !"fw_mgmt_list", i1 false, i1 false}
!69 = !{!"../drivers/staging/greybus/fw-management.c", i32 61, i32 8}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/staging/greybus/fw-management.c", i32 60, i32 8}
!72 = !{ptr @fw_mgmt_minors_map, !71, !"fw_mgmt_minors_map", i1 false, i1 false}
!73 = !{ptr @fw_mgmt_fops, !74, !"fw_mgmt_fops", i1 false, i1 false}
!74 = !{!"../drivers/staging/greybus/fw-management.c", i32 564, i32 37}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../include/linux/greybus/bundle.h", i32 53, i32 3}
!77 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @gb_pm_runtime_get_sync._entry, !76, !"_entry", i1 false, i1 false}
!80 = !{ptr @gb_pm_runtime_get_sync._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/staging/greybus/fw-management.c", i32 458, i32 4}
!83 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @fw_mgmt_ioctl._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @fw_mgmt_ioctl._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/staging/greybus/fw-management.c", i32 482, i32 4}
!88 = !{ptr @fw_mgmt_ioctl._entry.43, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @fw_mgmt_ioctl._entry_ptr.45, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/staging/greybus/fw-management.c", i32 497, i32 4}
!92 = !{ptr @fw_mgmt_ioctl._entry.46, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @fw_mgmt_ioctl._entry_ptr.48, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/staging/greybus/fw-management.c", i32 506, i32 4}
!96 = !{ptr @fw_mgmt_ioctl._entry.49, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @fw_mgmt_ioctl._entry_ptr.51, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.53, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/staging/greybus/fw-management.c", i32 520, i32 4}
!100 = !{ptr @fw_mgmt_ioctl._entry.52, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @fw_mgmt_ioctl._entry_ptr.54, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.55, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/staging/greybus/fw-management.c", i32 115, i32 3}
!104 = !{ptr @.str.56, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @fw_mgmt_interface_fw_version_operation._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @fw_mgmt_interface_fw_version_operation._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.58, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/staging/greybus/fw-management.c", i32 131, i32 3}
!109 = !{ptr @fw_mgmt_interface_fw_version_operation._entry.57, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @fw_mgmt_interface_fw_version_operation._entry_ptr.59, !108, !"_entry_ptr", i1 false, i1 false}
!111 = distinct !{null, !112, !"__already_done", i1 false, i1 false}
!112 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!113 = distinct !{null, !112, !"<string literal>", i1 false, i1 false}
!114 = distinct !{null, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!116 = !{ptr @.str.62, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!118 = !{ptr @.str.63, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/staging/greybus/fw-management.c", i32 258, i32 3}
!120 = !{ptr @.str.64, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @fw_mgmt_backend_fw_version_operation._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @fw_mgmt_backend_fw_version_operation._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.66, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/staging/greybus/fw-management.c", i32 266, i32 3}
!125 = !{ptr @fw_mgmt_backend_fw_version_operation._entry.65, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @fw_mgmt_backend_fw_version_operation._entry_ptr.67, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.69, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/staging/greybus/fw-management.c", i32 286, i32 3}
!129 = !{ptr @fw_mgmt_backend_fw_version_operation._entry.68, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @fw_mgmt_backend_fw_version_operation._entry_ptr.70, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.72, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/staging/greybus/fw-management.c", i32 291, i32 3}
!133 = !{ptr @fw_mgmt_backend_fw_version_operation._entry.71, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @fw_mgmt_backend_fw_version_operation._entry_ptr.73, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.74, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/staging/greybus/fw-management.c", i32 147, i32 3}
!137 = !{ptr @.str.75, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @fw_mgmt_load_and_validate_operation._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @fw_mgmt_load_and_validate_operation._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.77, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/staging/greybus/fw-management.c", i32 160, i32 3}
!142 = !{ptr @fw_mgmt_load_and_validate_operation._entry.76, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @fw_mgmt_load_and_validate_operation._entry_ptr.78, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.80, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/staging/greybus/fw-management.c", i32 167, i32 3}
!146 = !{ptr @fw_mgmt_load_and_validate_operation._entry.79, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @fw_mgmt_load_and_validate_operation._entry_ptr.81, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.83, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/staging/greybus/fw-management.c", i32 183, i32 3}
!150 = !{ptr @fw_mgmt_load_and_validate_operation._entry.82, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @fw_mgmt_load_and_validate_operation._entry_ptr.84, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.85, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/staging/greybus/fw-management.c", i32 311, i32 3}
!154 = !{ptr @.str.86, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @fw_mgmt_backend_fw_update_operation._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @fw_mgmt_backend_fw_update_operation._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @fw_mgmt_backend_fw_update_operation._entry.87, !158, !"_entry", i1 false, i1 false}
!158 = !{!"../drivers/staging/greybus/fw-management.c", i32 318, i32 3}
!159 = !{ptr @fw_mgmt_backend_fw_update_operation._entry_ptr.88, !158, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.90, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/staging/greybus/fw-management.c", i32 333, i32 3}
!162 = !{ptr @fw_mgmt_backend_fw_update_operation._entry.89, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @fw_mgmt_backend_fw_update_operation._entry_ptr.91, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{!"sp"}
!165 = !{i32 1, !"wchar_size", i32 2}
!166 = !{i32 1, !"min_enum_size", i32 4}
!167 = !{i32 8, !"branch-target-enforcement", i32 0}
!168 = !{i32 8, !"sign-return-address", i32 0}
!169 = !{i32 8, !"sign-return-address-all", i32 0}
!170 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!171 = !{i32 7, !"uwtable", i32 1}
!172 = !{i32 7, !"frame-pointer", i32 2}
!173 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!174 = !{i64 2148608818}
!175 = !{i64 2148523258, i64 2148523290, i64 2148523319, i64 2148523353, i64 2148523384, i64 2148523407}
!176 = !{!"branch_weights", i32 2000, i32 1}
!177 = !{i64 2149931121}
!178 = !{i8 0, i8 2}
!179 = !{i64 2148518682}
!180 = !{i64 1005282, i64 1005307, i64 1005329, i64 1005345, i64 1005357, i64 1005377, i64 1005401, i64 1005417, i64 1005429}
!181 = !{i64 2148518870}
!182 = !{i64 2152665116, i64 2152665141}
!183 = !{i64 5159990}
!184 = !{i64 5160187}
!185 = !{i64 2152645420}
!186 = !{i64 2154091797, i64 2154092077, i64 2154092411, i64 2154092745}
!187 = !{i64 2148520793, i64 2148520825, i64 2148520854, i64 2148520888, i64 2148520919, i64 2148520942}
!188 = !{!"branch_weights", i32 1, i32 2000}
