; ModuleID = '/llk/IR_all_yes/drivers/hsi/clients/hsi_char.c_pt.bc'
source_filename = "../drivers/hsi/clients/hsi_char.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.hsi_client_driver = type { %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.hsi_controller = type { %struct.device, ptr, i32, i32, ptr }
%struct.hsi_port = type { %struct.device, %struct.hsi_config, %struct.hsi_config, i32, i8, i32, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, %struct.blocking_notifier_head }
%struct.hsi_config = type { i32, ptr, i32, i32, i32, %union.anon.71 }
%union.anon.71 = type { i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hsc_client_data = type { %struct.cdev, %struct.mutex, i32, i32, ptr, [16 x %struct.hsc_channel] }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.hsc_channel = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.hsi_client = type { %struct.device, %struct.hsi_config, %struct.hsi_config, ptr, i8, %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hsi_msg = type { %struct.list_head, ptr, %struct.sg_table, ptr, ptr, ptr, i32, i32, i32, i8 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.hsc_rx_config = type { i32, i32, i32 }
%struct.hsc_tx_config = type { i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.68 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.70 = type { ptr }

@__param_str_max_data_size = internal constant [23 x i8] c"hsi_char.max_data_size\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@max_data_size = internal global { i32, [28 x i8] } { i32 4096, [28 x i8] zeroinitializer }, align 32
@__param_max_data_size = internal constant %struct.kernel_param { ptr @__param_str_max_data_size, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @max_data_size } }, section "__param", align 4
@__UNIQUE_ID_max_data_sizetype228 = internal constant [37 x i8] c"hsi_char.parmtype=max_data_size:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_max_data_size229 = internal constant [71 x i8] c"hsi_char.parm=max_data_size:max read/write data size [4,8..65536] (^2)\00", section ".modinfo", align 1
@__initcall__kmod_hsi_char__231_776_hsc_init6 = internal global ptr @hsc_init, section ".initcall6.init", align 4
@hsc_driver = internal global { %struct.hsi_client_driver, [52 x i8] } { %struct.hsi_client_driver { %struct.device_driver { ptr @.str.11, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr @hsc_probe, ptr null, ptr @hsc_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [52 x i8] zeroinitializer }, align 32
@hsc_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016HSI char device removed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hsc_exit\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/hsi/clients/hsi_char.c\00", [33 x i8] zeroinitializer }, align 32
@hsc_exit._entry_ptr = internal global ptr @hsc_exit._entry, section ".printk_index", align 4
@__exitcall_hsc_exit = internal global ptr @hsc_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author232 = internal constant [58 x i8] c"hsi_char.author=Andras Domokos <andras.domokos@nokia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias233 = internal constant [28 x i8] c"hsi_char.alias=hsi:hsi_char\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [42 x i8] c"hsi_char.description=HSI character device\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [43 x i8] c"hsi_char.file=drivers/hsi/clients/hsi_char\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [24 x i8] c"hsi_char.license=GPL v2\00", section ".modinfo", align 1
@hsc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013Invalid max read/write data size\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hsc_init\00", [23 x i8] zeroinitializer }, align 32
@hsc_init._entry_ptr = internal global ptr @hsc_init._entry, section ".printk_index", align 4
@hsc_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 768, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Error while registering HSI/SSI driver %d\0A\00", [51 x i8] zeroinitializer }, align 32
@hsc_init._entry_ptr.7 = internal global ptr @hsc_init._entry.5, section ".printk_index", align 4
@hsc_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 772, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016HSI/SSI char device loaded\0A\00", [34 x i8] zeroinitializer }, align 32
@hsc_init._entry_ptr.10 = internal global ptr @hsc_init._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hsi_char\00", [23 x i8] zeroinitializer }, align 32
@__const.hsc_probe.devname = private unnamed_addr constant [9 x i8] c"hsi_char\00", align 1
@hsc_major = internal global { i32, [28 x i8] } zeroinitializer, align 32
@hsc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 702, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Device %s allocation failed %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hsc_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hsc_probe._entry_ptr = internal global ptr @hsc_probe._entry, section ".printk_index", align 4
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"minor\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"major\00", [26 x i8] zeroinitializer }, align 32
@hsc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&cl_data->lock\00", [17 x i8] zeroinitializer }, align 32
@hsc_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @hsc_read, ptr @hsc_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hsc_ioctl, ptr null, ptr null, i32 0, ptr @hsc_open, ptr null, ptr @hsc_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@hsc_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.13, ptr @.str.2, i32 720, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Could not add char device %d\0A\00", [34 x i8] zeroinitializer }, align 32
@hsc_probe._entry_ptr.21 = internal global ptr @hsc_probe._entry.19, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@hsc_open.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 -108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hsc_open\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"open, minor = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@hsc_channel_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&channel->rx_wait\00", [46 x i8] zeroinitializer }, align 32
@hsc_channel_init.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&channel->tx_wait\00", [46 x i8] zeroinitializer }, align 32
@hsc_channel_init.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&channel->lock\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 27408, i64 27409, i64 27410, i64 1074555667, i64 1074555668, i64 1074817813, i64 1074817814]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.33 = private unnamed_addr constant [14 x i8] c"max_data_size\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 112, i32 21 }
@___asan_gen_.36 = private unnamed_addr constant [11 x i8] c"hsc_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 747, i32 33 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 781, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 762, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 768, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 772, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 749, i32 11 }
@___asan_gen_.75 = private unnamed_addr constant [10 x i8] c"hsc_major\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 110, i32 21 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 701, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 705, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [9 x i8] c"hsc_fops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 656, i32 37 }
@___asan_gen_.108 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 720, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 230, i32 6 }
@___asan_gen_.118 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 214, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 174, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 595, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 667, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 668, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.145 = private constant [34 x i8] c"../drivers/hsi/clients/hsi_char.c\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 669, i32 2 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_alias233, ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__UNIQUE_ID_max_data_size229, ptr @__UNIQUE_ID_max_data_sizetype228, ptr @__exitcall_hsc_exit, ptr @__initcall__kmod_hsi_char__231_776_hsc_init6, ptr @__param_max_data_size, ptr @hsc_exit, ptr @hsc_exit._entry, ptr @hsc_exit._entry_ptr, ptr @hsc_init._entry, ptr @hsc_init._entry.5, ptr @hsc_init._entry.8, ptr @hsc_init._entry_ptr, ptr @hsc_init._entry_ptr.10, ptr @hsc_init._entry_ptr.7, ptr @hsc_probe._entry, ptr @hsc_probe._entry.19, ptr @hsc_probe._entry_ptr, ptr @hsc_probe._entry_ptr.21, ptr @max_data_size, ptr @hsc_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @hsc_major, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @hsc_probe.__key, ptr @.str.18, ptr @hsc_fops, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @hsc_channel_init.__key, ptr @.str.27, ptr @hsc_channel_init.__key.28, ptr @.str.29, ptr @hsc_channel_init.__key.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_data_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsc_driver to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsc_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsc_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsc_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsc_major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsc_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsc_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsc_channel_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsc_channel_init.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsc_channel_init.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hsc_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @max_data_size, align 4
  %1 = add i32 %0, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65533, i32 %1)
  %2 = icmp ult i32 %1, 65533
  %3 = tail call i32 @llvm.ctpop.i32(i32 %0), !range !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %tobool.not = icmp ult i32 %3, 2
  %or.cond19 = and i1 %2, %tobool.not
  br i1 %or.cond19, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @hsi_register_client_driver(ptr noundef nonnull @hsc_driver) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end14, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %call3) #12
  br label %cleanup

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %do.end8, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call3, %do.end8 ], [ 0, %do.end14 ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hsc_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @driver_unregister(ptr noundef nonnull @hsc_driver) #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hsi_register_client_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hsc_probe(ptr noundef %dev) #4 align 64 {
entry:
  %devname = alloca [9 x i8], align 1
  %hsc_dev = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %devname) #9
  %0 = call ptr @memcpy(ptr %devname, ptr @__const.hsc_probe.devname, i32 9)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hsc_dev) #9
  %1 = ptrtoint ptr %hsc_dev to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %hsc_dev, align 4, !annotation !95
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 3272) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %3 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent.i, align 8
  %parent1.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent1.i, align 8
  %id.i = getelementptr inbounds %struct.hsi_controller, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id.i, align 4
  %and = shl i32 %8, 6
  %shl = and i32 %and, 192
  %num.i = getelementptr inbounds %struct.hsi_port, ptr %4, i32 0, i32 3
  %9 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num.i, align 8
  %and3 = shl i32 %10, 4
  %shl4 = and i32 %and3, 48
  %or = or i32 %shl4, %shl
  %11 = load i32, ptr @hsc_major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not = icmp eq i32 %11, 0
  br i1 %tobool5.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %call7 = call i32 @alloc_chrdev_region(ptr noundef nonnull %hsc_dev, i32 noundef %or, i32 noundef 16, ptr noundef nonnull %devname) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp eq i32 %call7, 0
  br i1 %cmp, label %if.end14.thread, label %if.then6.if.end14_crit_edge

if.then6.if.end14_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end14.thread:                                  ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %hsc_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hsc_dev, align 4
  %shr = lshr i32 %13, 20
  store i32 %shr, ptr @hsc_major, align 4
  br label %do.body19

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %shl10 = shl i32 %11, 20
  %or11 = or i32 %or, %shl10
  %14 = ptrtoint ptr %hsc_dev to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or11, ptr %hsc_dev, align 4
  %call13 = call i32 @register_chrdev_region(i32 noundef %or11, i32 noundef 16, ptr noundef nonnull %devname) #9
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then6.if.end14_crit_edge
  %ret.0 = phi i32 [ %call13, %if.else ], [ %call7, %if.then6.if.end14_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp15 = icmp slt i32 %ret.0, 0
  br i1 %cmp15, label %do.end, label %if.end14.do.body19_crit_edge

if.end14.do.body19_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body19

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %15 = load i32, ptr @hsc_major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool17.not = icmp eq i32 %15, 0
  %cond = select i1 %tobool17.not, ptr @.str.17, ptr @.str.16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef nonnull %cond, i32 noundef %ret.0) #12
  br label %out1

do.body19:                                        ; preds = %if.end14.do.body19_crit_edge, %if.end14.thread
  %lock = getelementptr inbounds %struct.hsc_client_data, ptr %call7.i.i, i32 0, i32 1
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.18, ptr noundef nonnull @hsc_probe.__key) #9
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  call void @cdev_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @hsc_fops) #9
  %owner = getelementptr inbounds %struct.cdev, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %owner, align 8
  %cl23 = getelementptr inbounds %struct.hsc_client_data, ptr %call7.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %cl23 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev, ptr %cl23, align 4
  %channels = getelementptr inbounds %struct.hsc_client_data, ptr %call7.i.i, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.body19
  %i.074 = phi i32 [ 0, %do.body19 ], [ %inc, %for.body.for.body_crit_edge ]
  %channel.073 = phi ptr [ %channels, %do.body19 ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %rx_wait.i = getelementptr inbounds %struct.hsc_channel, ptr %channel.073, i32 0, i32 8
  call void @__init_waitqueue_head(ptr noundef %rx_wait.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @hsc_channel_init.__key) #9
  %tx_wait.i = getelementptr inbounds %struct.hsc_channel, ptr %channel.073, i32 0, i32 9
  call void @__init_waitqueue_head(ptr noundef %tx_wait.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @hsc_channel_init.__key.28) #9
  %lock.i = getelementptr inbounds %struct.hsc_channel, ptr %channel.073, i32 0, i32 5
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @hsc_channel_init.__key.30, i16 noundef signext 3) #9
  %free_msgs_list.i = getelementptr inbounds %struct.hsc_channel, ptr %channel.073, i32 0, i32 2
  %19 = ptrtoint ptr %free_msgs_list.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %free_msgs_list.i, ptr %free_msgs_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.hsc_channel, ptr %channel.073, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %free_msgs_list.i, ptr %prev.i.i, align 4
  %rx_msgs_queue.i = getelementptr inbounds %struct.hsc_channel, ptr %channel.073, i32 0, i32 3
  %21 = ptrtoint ptr %rx_msgs_queue.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %rx_msgs_queue.i, ptr %rx_msgs_queue.i, align 4
  %prev.i10.i = getelementptr inbounds %struct.hsc_channel, ptr %channel.073, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %prev.i10.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %rx_msgs_queue.i, ptr %prev.i10.i, align 4
  %tx_msgs_queue.i = getelementptr inbounds %struct.hsc_channel, ptr %channel.073, i32 0, i32 4
  %23 = ptrtoint ptr %tx_msgs_queue.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %tx_msgs_queue.i, ptr %tx_msgs_queue.i, align 4
  %prev.i11.i = getelementptr inbounds %struct.hsc_channel, ptr %channel.073, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %prev.i11.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %tx_msgs_queue.i, ptr %prev.i11.i, align 4
  %25 = ptrtoint ptr %channel.073 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %i.074, ptr %channel.073, align 4
  %cl26 = getelementptr inbounds %struct.hsc_channel, ptr %channel.073, i32 0, i32 6
  %26 = ptrtoint ptr %cl26 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dev, ptr %cl26, align 4
  %cl_data27 = getelementptr inbounds %struct.hsc_channel, ptr %channel.073, i32 0, i32 7
  %27 = ptrtoint ptr %cl_data27 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i, ptr %cl_data27, align 4
  %inc = add nuw nsw i32 %i.074, 1
  %incdec.ptr = getelementptr %struct.hsc_channel, ptr %channel.073, i32 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  %28 = ptrtoint ptr %hsc_dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hsc_dev, align 4
  %call29 = call i32 @cdev_add(ptr noundef nonnull %call7.i.i, i32 noundef %29, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %for.end.cleanup_crit_edge, label %do.end34

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end34:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %call29) #12
  %30 = ptrtoint ptr %hsc_dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hsc_dev, align 4
  call void @unregister_chrdev_region(i32 noundef %31, i32 noundef 16) #9
  br label %out1

out1:                                             ; preds = %do.end34, %do.end
  %ret.1 = phi i32 [ %ret.0, %do.end ], [ %call29, %do.end34 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out1, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out1 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hsc_dev) #9
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %devname) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hsc_remove(ptr nocapture noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.cdev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev1, align 4
  tail call void @cdev_del(ptr noundef %1) #9
  tail call void @unregister_chrdev_region(i32 noundef %3, i32 noundef 16) #9
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_chrdev_region(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hsc_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %len, ptr nocapture noundef readnone %ppos) #4 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp eq i32 %len, 0
  br i1 %cmp, label %entry.cleanup65_crit_edge, label %if.end

entry.cleanup65_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup65

if.end:                                           ; preds = %entry
  %and = and i32 %len, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.end3, label %if.end.cleanup65_crit_edge

if.end.cleanup65_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup65

if.end3:                                          ; preds = %if.end
  %2 = load i32, ptr @max_data_size, align 4
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 %len)
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %cl = getelementptr inbounds %struct.hsc_channel, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cl, align 4
  %num_hw_channels = getelementptr inbounds %struct.hsi_client, ptr %7, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %num_hw_channels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_hw_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %9)
  %cmp7.not = icmp ult i32 %5, %9
  br i1 %cmp7.not, label %if.end9, label %if.end3.cleanup65_crit_edge

if.end3.cleanup65_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup65

if.end9:                                          ; preds = %if.end3
  %flags = getelementptr inbounds %struct.hsc_channel, ptr %1, i32 0, i32 1
  %call = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end11, label %if.end9.cleanup65_crit_edge

if.end9.cleanup65_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup65

if.end11:                                         ; preds = %if.end9
  %free_msgs_list = getelementptr inbounds %struct.hsc_channel, ptr %1, i32 0, i32 2
  %lock.i = getelementptr inbounds %struct.hsc_channel, ptr %1, i32 0, i32 5
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %10 = ptrtoint ptr %free_msgs_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %free_msgs_list, align 4
  %cmp.i.not.i = icmp eq ptr %11, %free_msgs_list
  br i1 %cmp.i.not.i, label %hsc_get_first_msg.exit.thread, label %if.end.i

hsc_get_first_msg.exit.thread:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  br label %out

if.end.i:                                         ; preds = %if.end11
  %call.i.i.i104 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %11) #9
  br i1 %call.i.i.i104, label %if.end.i.i.i, label %if.end.i.hsc_get_first_msg.exit_crit_edge

if.end.i.hsc_get_first_msg.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hsc_get_first_msg.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %hsc_get_first_msg.exit

hsc_get_first_msg.exit:                           ; preds = %if.end.i.i.i, %if.end.i.hsc_get_first_msg.exit_crit_edge
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  %tobool13.not = icmp eq ptr %11, null
  br i1 %tobool13.not, label %hsc_get_first_msg.exit.out_crit_edge, label %if.end15

hsc_get_first_msg.exit.out_crit_edge:             ; preds = %hsc_get_first_msg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end15:                                         ; preds = %hsc_get_first_msg.exit
  %sgt.i = getelementptr inbounds %struct.hsi_msg, ptr %11, i32 0, i32 2
  %20 = ptrtoint ptr %sgt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sgt.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %3, ptr %length.i, align 4
  %complete = getelementptr inbounds %struct.hsi_msg, ptr %11, i32 0, i32 4
  %23 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @hsc_rx_completed, ptr %complete, align 4
  %destructor = getelementptr inbounds %struct.hsi_msg, ptr %11, i32 0, i32 5
  %24 = ptrtoint ptr %destructor to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @hsc_rx_msg_destructor, ptr %destructor, align 4
  %25 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cl, align 4
  %ttype.i = getelementptr inbounds %struct.hsi_msg, ptr %11, i32 0, i32 9
  %27 = ptrtoint ptr %ttype.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i = load i8, ptr %ttype.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %ttype.i, align 4
  %call.i = tail call i32 @hsi_async(ptr noundef %26, ptr noundef nonnull %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp18 = icmp slt i32 %call.i, 0
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @hsc_add_tail(ptr noundef %1, ptr noundef nonnull %11, ptr noundef %free_msgs_list)
  br label %out

if.end21:                                         ; preds = %if.end15
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 444) #9
  %rx_msgs_queue = getelementptr inbounds %struct.hsc_channel, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %rx_msgs_queue to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %rx_msgs_queue, align 4
  %cmp.i.not = icmp eq ptr %29, %rx_msgs_queue
  br i1 %cmp.i.not, label %if.then27, label %if.end21.if.end46_crit_edge

if.end21.if.end46_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then27:                                        ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %30 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %rx_wait = getelementptr inbounds %struct.hsc_channel, ptr %1, i32 0, i32 8
  %call29132 = call i32 @prepare_to_wait_event(ptr noundef %rx_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %31 = ptrtoint ptr %rx_msgs_queue to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %rx_msgs_queue, align 4
  %cmp.i105.not133 = icmp eq ptr %32, %rx_msgs_queue
  br i1 %cmp.i105.not133, label %if.then27.if.end34_crit_edge, label %if.then27.if.end39.thread125_crit_edge

if.then27.if.end39.thread125_crit_edge:           ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.thread125

if.then27.if.end34_crit_edge:                     ; preds = %if.then27
  br label %if.end34

if.end34:                                         ; preds = %cleanup.if.end34_crit_edge, %if.then27.if.end34_crit_edge
  %call29134 = phi i32 [ %call29, %cleanup.if.end34_crit_edge ], [ %call29132, %if.then27.if.end34_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29134)
  %tobool35.not = icmp eq i32 %call29134, 0
  br i1 %tobool35.not, label %cleanup, label %if.end39

cleanup:                                          ; preds = %if.end34
  call void @schedule() #9
  %call29 = call i32 @prepare_to_wait_event(ptr noundef %rx_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %33 = ptrtoint ptr %rx_msgs_queue to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %rx_msgs_queue, align 4
  %cmp.i105.not = icmp eq ptr %34, %rx_msgs_queue
  br i1 %cmp.i105.not, label %cleanup.if.end34_crit_edge, label %cleanup.if.end39.thread125_crit_edge

cleanup.if.end39.thread125_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.thread125

cleanup.if.end34_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.end39.thread125:                               ; preds = %cleanup.if.end39.thread125_crit_edge, %if.then27.if.end39.thread125_crit_edge
  call void @finish_wait(ptr noundef %rx_wait, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end46

if.end39:                                         ; preds = %if.end34
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29134)
  %cmp41 = icmp slt i32 %call29134, 0
  br i1 %cmp41, label %if.then42, label %if.end39.if.end46_crit_edge

if.end39.if.end46_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then42:                                        ; preds = %if.end39
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #9
  %35 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cl, align 4
  %pclaimed.i.i = getelementptr inbounds %struct.hsi_client, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %pclaimed.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load.i.i = load i8, ptr %pclaimed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i, label %if.then42.cleanup65_crit_edge, label %if.end.i107

if.then42.cleanup65_crit_edge:                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup65

if.end.i107:                                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  %parent.i = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 1
  %38 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %parent.i, align 8
  %flush.i = getelementptr inbounds %struct.hsi_port, ptr %39, i32 0, i32 9
  %40 = ptrtoint ptr %flush.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %flush.i, align 8
  %call1.i = call i32 %41(ptr noundef %36) #9
  br label %cleanup65

if.end46:                                         ; preds = %if.end39.if.end46_crit_edge, %if.end39.thread125, %if.end21.if.end46_crit_edge
  %__ret.0124 = phi i32 [ %call29134, %if.end39.if.end46_crit_edge ], [ 0, %if.end39.thread125 ], [ 0, %if.end21.if.end46_crit_edge ]
  %call48 = call fastcc ptr @hsc_get_first_msg(ptr noundef %1, ptr noundef %rx_msgs_queue)
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %if.end46.out_crit_edge, label %if.then50

if.end46.out_crit_edge:                           ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then50:                                        ; preds = %if.end46
  %status = getelementptr inbounds %struct.hsi_msg, ptr %call48, i32 0, i32 6
  %42 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %43)
  %cmp51.not = icmp eq i32 %43, 4
  br i1 %cmp51.not, label %if.then50.if.end61_crit_edge, label %if.then52

if.then50.if.end61_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then52:                                        ; preds = %if.then50
  %sgt = getelementptr inbounds %struct.hsi_msg, ptr %call48, i32 0, i32 2
  %44 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sgt, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %and.i.i.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_virt.exit, label %do.body2.i.i, !prof !96

do.body2.i.i:                                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !97
  unreachable

sg_virt.exit:                                     ; preds = %if.then52
  %and.i.i = and i32 %47, -4
  %48 = inttoptr i32 %and.i.i to ptr
  %call1.i108 = call ptr @page_address(ptr noundef %48) #9
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %45, i32 0, i32 1
  %49 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i108, i32 %50
  %51 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sgt, align 4
  %length.i110 = getelementptr inbounds %struct.scatterlist, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %length.i110 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %length.i110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp9.i.i = icmp slt i32 %54, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %sg_virt.exit
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.if.end61_crit_edge, label %if.then27.i.i, !prof !96

land.rhs16.i.i.if.end61_crit_edge:                ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %if.end61

if.then.i.i.i:                                    ; preds = %sg_virt.exit
  call void @__check_object_size(ptr noundef %add.ptr.i, i32 noundef %54, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.24, i32 noundef 174) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %55 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %54, i32 -1226833920) #14, !srcloc !98
  %asmresult.i.i = extractvalue { i32, i32 } %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i, i32 noundef %54) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %add.ptr.i, i32 noundef %54) #9
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %54, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %54, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool56.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool56.not, label %if.else, label %copy_to_user.exit.if.end61_crit_edge

copy_to_user.exit.if.end61_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.else:                                          ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sgt, align 4
  %length.i112 = getelementptr inbounds %struct.scatterlist, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %length.i112 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %length.i112, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.else, %copy_to_user.exit.if.end61_crit_edge, %if.then27.i.i, %land.rhs16.i.i.if.end61_crit_edge, %if.then50.if.end61_crit_edge
  %ret.0 = phi i32 [ %59, %if.else ], [ -14, %copy_to_user.exit.if.end61_crit_edge ], [ -5, %if.then50.if.end61_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.if.end61_crit_edge ]
  call fastcc void @hsc_add_tail(ptr noundef %1, ptr noundef nonnull %call48, ptr noundef %free_msgs_list)
  br label %out

out:                                              ; preds = %if.end61, %if.end46.out_crit_edge, %if.then19, %hsc_get_first_msg.exit.out_crit_edge, %hsc_get_first_msg.exit.thread
  %ret.1 = phi i32 [ %call.i, %if.then19 ], [ %ret.0, %if.end61 ], [ %__ret.0124, %if.end46.out_crit_edge ], [ -28, %hsc_get_first_msg.exit.out_crit_edge ], [ -28, %hsc_get_first_msg.exit.thread ]
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #9
  br label %cleanup65

cleanup65:                                        ; preds = %out, %if.end.i107, %if.then42.cleanup65_crit_edge, %if.end9.cleanup65_crit_edge, %if.end3.cleanup65_crit_edge, %if.end.cleanup65_crit_edge, %entry.cleanup65_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out ], [ 0, %entry.cleanup65_crit_edge ], [ -22, %if.end.cleanup65_crit_edge ], [ -44, %if.end3.cleanup65_crit_edge ], [ -16, %if.end9.cleanup65_crit_edge ], [ -4, %if.then42.cleanup65_crit_edge ], [ -4, %if.end.i107 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hsc_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %len, ptr nocapture noundef readnone %ppos) #4 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp ne i32 %len, 0
  %and = and i32 %len, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp1 = icmp eq i32 %and, 0
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.end, label %entry.cleanup61_crit_edge

entry.cleanup61_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup61

if.end:                                           ; preds = %entry
  %2 = load i32, ptr @max_data_size, align 4
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 %len)
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %cl = getelementptr inbounds %struct.hsc_channel, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cl, align 4
  %num_hw_channels = getelementptr inbounds %struct.hsi_client, ptr %7, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %num_hw_channels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_hw_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %9)
  %cmp5.not = icmp ult i32 %5, %9
  br i1 %cmp5.not, label %if.end7, label %if.end.cleanup61_crit_edge

if.end.cleanup61_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup61

if.end7:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.hsc_channel, ptr %1, i32 0, i32 1
  %call = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end9, label %if.end7.cleanup61_crit_edge

if.end7.cleanup61_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup61

if.end9:                                          ; preds = %if.end7
  %free_msgs_list = getelementptr inbounds %struct.hsc_channel, ptr %1, i32 0, i32 2
  %lock.i = getelementptr inbounds %struct.hsc_channel, ptr %1, i32 0, i32 5
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %10 = ptrtoint ptr %free_msgs_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %free_msgs_list, align 4
  %cmp.i.not.i = icmp eq ptr %11, %free_msgs_list
  br i1 %cmp.i.not.i, label %hsc_get_first_msg.exit.thread, label %if.end.i

hsc_get_first_msg.exit.thread:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  br label %if.then12

if.end.i:                                         ; preds = %if.end9
  %call.i.i.i97 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %11) #9
  br i1 %call.i.i.i97, label %if.end.i.i.i, label %if.end.i.hsc_get_first_msg.exit_crit_edge

if.end.i.hsc_get_first_msg.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hsc_get_first_msg.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %hsc_get_first_msg.exit

hsc_get_first_msg.exit:                           ; preds = %if.end.i.i.i, %if.end.i.hsc_get_first_msg.exit_crit_edge
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  %tobool11.not = icmp eq ptr %11, null
  br i1 %tobool11.not, label %hsc_get_first_msg.exit.if.then12_crit_edge, label %if.end14

hsc_get_first_msg.exit.if.then12_crit_edge:       ; preds = %hsc_get_first_msg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

if.then12:                                        ; preds = %hsc_get_first_msg.exit.if.then12_crit_edge, %hsc_get_first_msg.exit.thread
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #9
  br label %cleanup61

if.end14:                                         ; preds = %hsc_get_first_msg.exit
  %sgt = getelementptr inbounds %struct.hsi_msg, ptr %11, i32 0, i32 2
  %20 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sgt, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %and.i.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_virt.exit, label %do.body2.i.i, !prof !96

do.body2.i.i:                                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !97
  unreachable

sg_virt.exit:                                     ; preds = %if.end14
  %and.i.i = and i32 %23, -4
  %24 = inttoptr i32 %and.i.i to ptr
  %call1.i = tail call ptr @page_address(ptr noundef %24) #9
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %21, i32 0, i32 1
  %25 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp9.i.i = icmp slt i32 %3, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %sg_virt.exit
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.out_crit_edge, label %if.then27.i.i, !prof !96

land.rhs16.i.i.out_crit_edge:                     ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %out

if.then.i.i.i:                                    ; preds = %sg_virt.exit
  tail call void @__check_object_size(ptr noundef %add.ptr.i, i32 noundef %3, i1 noundef zeroext false) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.24, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %27 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %3, i32 -1226833920) #14, !srcloc !99
  %asmresult.i.i = extractvalue { i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !96

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef %3) #9
  %28 = tail call i32 @llvm.read_register.i32(metadata !84) #9
  %and.i.i.i.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 4
  %30 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !100
  %and.i.i.i.i = and i32 %30, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr.i, ptr noundef %buf, i32 noundef %3) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end19, label %if.then11.i.i, !prof !96

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i, i32 %sub.i.i
  %31 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %out

if.end19:                                         ; preds = %if.end.i.i
  %32 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sgt, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %3, ptr %length.i, align 4
  %complete = getelementptr inbounds %struct.hsi_msg, ptr %11, i32 0, i32 4
  %35 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @hsc_tx_completed, ptr %complete, align 4
  %destructor = getelementptr inbounds %struct.hsi_msg, ptr %11, i32 0, i32 5
  %36 = ptrtoint ptr %destructor to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @hsc_tx_msg_destructor, ptr %destructor, align 4
  %37 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cl, align 4
  %ttype.i = getelementptr inbounds %struct.hsi_msg, ptr %11, i32 0, i32 9
  %39 = ptrtoint ptr %ttype.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load.i = load i8, ptr %ttype.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %ttype.i, align 4
  %call.i = tail call i32 @hsi_async(ptr noundef %38, ptr noundef nonnull %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp22 = icmp slt i32 %call.i, 0
  br i1 %cmp22, label %if.end19.out_crit_edge, label %if.end24

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end24:                                         ; preds = %if.end19
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 503) #9
  %tx_msgs_queue = getelementptr inbounds %struct.hsc_channel, ptr %1, i32 0, i32 4
  %40 = ptrtoint ptr %tx_msgs_queue to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %tx_msgs_queue, align 4
  %cmp.i.not = icmp eq ptr %41, %tx_msgs_queue
  br i1 %cmp.i.not, label %if.then30, label %if.end24.if.end49_crit_edge

if.end24.if.end49_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then30:                                        ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %42 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %tx_wait = getelementptr inbounds %struct.hsc_channel, ptr %1, i32 0, i32 9
  %call32123 = call i32 @prepare_to_wait_event(ptr noundef %tx_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %43 = ptrtoint ptr %tx_msgs_queue to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %tx_msgs_queue, align 4
  %cmp.i98.not124 = icmp eq ptr %44, %tx_msgs_queue
  br i1 %cmp.i98.not124, label %if.then30.if.end37_crit_edge, label %if.then30.if.end42.thread118_crit_edge

if.then30.if.end42.thread118_crit_edge:           ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.thread118

if.then30.if.end37_crit_edge:                     ; preds = %if.then30
  br label %if.end37

if.end37:                                         ; preds = %cleanup.if.end37_crit_edge, %if.then30.if.end37_crit_edge
  %call32125 = phi i32 [ %call32, %cleanup.if.end37_crit_edge ], [ %call32123, %if.then30.if.end37_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32125)
  %tobool38.not = icmp eq i32 %call32125, 0
  br i1 %tobool38.not, label %cleanup, label %if.end42

cleanup:                                          ; preds = %if.end37
  call void @schedule() #9
  %call32 = call i32 @prepare_to_wait_event(ptr noundef %tx_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %45 = ptrtoint ptr %tx_msgs_queue to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %tx_msgs_queue, align 4
  %cmp.i98.not = icmp eq ptr %46, %tx_msgs_queue
  br i1 %cmp.i98.not, label %cleanup.if.end37_crit_edge, label %cleanup.if.end42.thread118_crit_edge

cleanup.if.end42.thread118_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.thread118

cleanup.if.end37_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.end42.thread118:                               ; preds = %cleanup.if.end42.thread118_crit_edge, %if.then30.if.end42.thread118_crit_edge
  call void @finish_wait(ptr noundef %tx_wait, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end49

if.end42:                                         ; preds = %if.end37
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32125)
  %cmp44 = icmp slt i32 %call32125, 0
  br i1 %cmp44, label %if.then45, label %if.end42.if.end49_crit_edge

if.end42.if.end49_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then45:                                        ; preds = %if.end42
  call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #9
  %47 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cl, align 4
  %pclaimed.i.i = getelementptr inbounds %struct.hsi_client, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %pclaimed.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load.i.i = load i8, ptr %pclaimed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i, label %if.then45.cleanup61_crit_edge, label %if.end.i101

if.then45.cleanup61_crit_edge:                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup61

if.end.i101:                                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  %parent.i = getelementptr inbounds %struct.device, ptr %48, i32 0, i32 1
  %50 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %parent.i, align 8
  %flush.i = getelementptr inbounds %struct.hsi_port, ptr %51, i32 0, i32 9
  %52 = ptrtoint ptr %flush.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %flush.i, align 8
  %call1.i100 = call i32 %53(ptr noundef %48) #9
  br label %cleanup61

if.end49:                                         ; preds = %if.end42.if.end49_crit_edge, %if.end42.thread118, %if.end24.if.end49_crit_edge
  %__ret.0117 = phi i32 [ %call32125, %if.end42.if.end49_crit_edge ], [ 0, %if.end42.thread118 ], [ 0, %if.end24.if.end49_crit_edge ]
  %call51 = call fastcc ptr @hsc_get_first_msg(ptr noundef %1, ptr noundef %tx_msgs_queue)
  %tobool52.not = icmp eq ptr %call51, null
  br i1 %tobool52.not, label %if.end49.out_crit_edge, label %if.then53

if.end49.out_crit_edge:                           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then53:                                        ; preds = %if.end49
  %status = getelementptr inbounds %struct.hsi_msg, ptr %call51, i32 0, i32 6
  %54 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %55)
  %cmp54 = icmp eq i32 %55, 4
  br i1 %cmp54, label %if.then53.if.end57_crit_edge, label %if.else

if.then53.if.end57_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.else:                                          ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  %sgt.i102 = getelementptr inbounds %struct.hsi_msg, ptr %call51, i32 0, i32 2
  %56 = ptrtoint ptr %sgt.i102 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sgt.i102, align 4
  %length.i103 = getelementptr inbounds %struct.scatterlist, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %length.i103 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %length.i103, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.else, %if.then53.if.end57_crit_edge
  %ret.0 = phi i32 [ %59, %if.else ], [ -5, %if.then53.if.end57_crit_edge ]
  call fastcc void @hsc_add_tail(ptr noundef %1, ptr noundef nonnull %call51, ptr noundef %free_msgs_list)
  br label %out

out:                                              ; preds = %if.end57, %if.end49.out_crit_edge, %if.end19.out_crit_edge, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.out_crit_edge
  %ret.1 = phi i32 [ %call.i, %if.end19.out_crit_edge ], [ %ret.0, %if.end57 ], [ %__ret.0117, %if.end49.out_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.out_crit_edge ]
  call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #9
  br label %cleanup61

cleanup61:                                        ; preds = %out, %if.end.i101, %if.then45.cleanup61_crit_edge, %if.then12, %if.end7.cleanup61_crit_edge, %if.end.cleanup61_crit_edge, %entry.cleanup61_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out ], [ -28, %if.then12 ], [ -22, %entry.cleanup61_crit_edge ], [ -44, %if.end.cleanup61_crit_edge ], [ -16, %if.end7.cleanup61_crit_edge ], [ -4, %if.then45.cleanup61_crit_edge ], [ -4, %if.end.i101 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hsc_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #4 align 64 {
entry:
  %state = alloca i32, align 4
  %rxc = alloca %struct.hsc_rx_config, align 4
  %txc = alloca %struct.hsc_tx_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state) #9
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %state, align 4, !annotation !95
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rxc) #9
  %3 = ptrtoint ptr %rxc to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %rxc, align 4, !annotation !95
  %4 = getelementptr inbounds %struct.hsc_rx_config, ptr %rxc, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !95
  %6 = getelementptr inbounds %struct.hsc_rx_config, ptr %rxc, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !95
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %txc) #9
  %8 = getelementptr inbounds %struct.hsc_tx_config, ptr %txc, i32 0, i32 1
  %9 = getelementptr inbounds %struct.hsc_tx_config, ptr %txc, i32 0, i32 2
  %10 = getelementptr inbounds %struct.hsc_tx_config, ptr %txc, i32 0, i32 3
  %11 = call ptr @memset(ptr %txc, i32 255, i32 16)
  %12 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 27408, label %sw.bb
    i32 27409, label %sw.bb1
    i32 27410, label %sw.bb22
    i32 1074555667, label %sw.bb25
    i32 1074555668, label %sw.bb32
    i32 1074817813, label %sw.bb38
    i32 1074817814, label %sw.bb45
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %cl = getelementptr inbounds %struct.hsc_channel, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cl, align 4
  %pclaimed.i.i = getelementptr inbounds %struct.hsi_client, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %pclaimed.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i.i = load i8, ptr %pclaimed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %parent.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 1
  %16 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent.i, align 8
  %flush.i = getelementptr inbounds %struct.hsi_port, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %flush.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %flush.i, align 8
  %call1.i = tail call i32 %19(ptr noundef %14) #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %20 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.24, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %sw.bb1.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb1.if.then11.i.i_crit_edge:                   ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb1
  %21 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %20, i32 4, i32 -1226833920) #14, !srcloc !99
  %asmresult.i.i = extractvalue { i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !96

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %state, i32 noundef 4) #9
  %22 = call i32 @llvm.read_register.i32(metadata !84) #9
  %and.i.i.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 4
  %24 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !100
  %and.i.i.i.i = and i32 %24, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !101
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %state, ptr noundef %20, i32 noundef 4) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #9, !srcloc !101
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !96

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %sw.bb1.if.then11.i.i_crit_edge
  %res.0.i.i192 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 4, %sw.bb1.if.then11.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 4, %res.0.i.i192
  %add.ptr.i.i = getelementptr i8, ptr %state, i32 %sub.i.i
  %25 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i192)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %27, label %if.end.sw.epilog_crit_edge [
    i32 0, label %if.then3
    i32 1, label %if.then11
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then3:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.hsc_channel, ptr %1, i32 0, i32 1
  %call4 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.then3
  %cl8 = getelementptr inbounds %struct.hsc_channel, ptr %1, i32 0, i32 6
  %29 = ptrtoint ptr %cl8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cl8, align 4
  %pclaimed.i.i137 = getelementptr inbounds %struct.hsi_client, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %pclaimed.i.i137 to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load.i.i138 = load i8, ptr %pclaimed.i.i137, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i138)
  %tobool.not.i139 = icmp sgt i8 %bf.load.i.i138, -1
  br i1 %tobool.not.i139, label %if.end7.sw.epilog_crit_edge, label %if.end.i142

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.i142:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %parent.i140 = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 1
  %32 = ptrtoint ptr %parent.i140 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %parent.i140, align 8
  %start_tx.i = getelementptr inbounds %struct.hsi_port, ptr %33, i32 0, i32 10
  %34 = ptrtoint ptr %start_tx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %start_tx.i, align 4
  %call1.i141 = call i32 %35(ptr noundef %30) #9
  br label %sw.epilog

if.then11:                                        ; preds = %if.end
  %flags12 = getelementptr inbounds %struct.hsc_channel, ptr %1, i32 0, i32 1
  %call13 = call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %flags12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then11.cleanup_crit_edge, label %if.end16

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.then11
  %cl17 = getelementptr inbounds %struct.hsc_channel, ptr %1, i32 0, i32 6
  %36 = ptrtoint ptr %cl17 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cl17, align 4
  %pclaimed.i.i143 = getelementptr inbounds %struct.hsi_client, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %pclaimed.i.i143 to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load.i.i144 = load i8, ptr %pclaimed.i.i143, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i144)
  %tobool.not.i145 = icmp sgt i8 %bf.load.i.i144, -1
  br i1 %tobool.not.i145, label %if.end16.sw.epilog_crit_edge, label %if.end.i148

if.end16.sw.epilog_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.i148:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %parent.i146 = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 1
  %39 = ptrtoint ptr %parent.i146 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %parent.i146, align 8
  %stop_tx.i = getelementptr inbounds %struct.hsi_port, ptr %40, i32 0, i32 11
  %41 = ptrtoint ptr %stop_tx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %stop_tx.i, align 8
  %call1.i147 = call i32 %42(ptr noundef %37) #9
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  %cl23 = getelementptr inbounds %struct.hsc_channel, ptr %1, i32 0, i32 6
  %43 = ptrtoint ptr %cl23 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cl23, align 4
  %call.i = tail call ptr @hsi_alloc_msg(i32 noundef 0, i32 noundef 2592) #9
  %tobool.not.i150 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i150, label %sw.bb22.cleanup_crit_edge, label %if.end.i152

sw.bb22.cleanup_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i152:                                      ; preds = %sw.bb22
  %break_frame.i = getelementptr inbounds %struct.hsi_msg, ptr %call.i, i32 0, i32 9
  %45 = ptrtoint ptr %break_frame.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load.i = load i8, ptr %break_frame.i, align 4
  %complete.i = getelementptr inbounds %struct.hsi_msg, ptr %call.i, i32 0, i32 4
  %46 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @hsi_free_msg, ptr %complete.i, align 4
  %destructor.i = getelementptr inbounds %struct.hsi_msg, ptr %call.i, i32 0, i32 5
  %47 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @hsi_free_msg, ptr %destructor.i, align 4
  %bf.set.i.i = or i8 %bf.load.i, -64
  store i8 %bf.set.i.i, ptr %break_frame.i, align 4
  %call.i.i151 = tail call i32 @hsi_async(ptr noundef %44, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i151)
  %cmp.i = icmp slt i32 %call.i.i151, 0
  br i1 %cmp.i, label %if.then2.i, label %if.end.i152.cleanup_crit_edge

if.end.i152.cleanup_crit_edge:                    ; preds = %if.end.i152
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2.i:                                       ; preds = %if.end.i152
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @hsi_free_msg(ptr noundef nonnull %call.i) #9
  br label %cleanup

sw.bb25:                                          ; preds = %entry
  %48 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.24, i32 noundef 156) #9
  %call.i.i72 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i72, label %sw.bb25.if.then11.i.i88_crit_edge, label %land.lhs.true.i.i75

sw.bb25.if.then11.i.i88_crit_edge:                ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i88

land.lhs.true.i.i75:                              ; preds = %sw.bb25
  %49 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %48, i32 12, i32 -1226833920) #14, !srcloc !99
  %asmresult.i.i73 = extractvalue { i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i73)
  %cmp.i6.i74 = icmp eq i32 %asmresult.i.i73, 0
  br i1 %cmp.i6.i74, label %if.end.i.i85, label %land.lhs.true.i.i75.if.then11.i.i88_crit_edge, !prof !96

land.lhs.true.i.i75.if.then11.i.i88_crit_edge:    ; preds = %land.lhs.true.i.i75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i88

if.end.i.i85:                                     ; preds = %land.lhs.true.i.i75
  %call.i.i.i76 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %rxc, i32 noundef 12) #9
  %50 = call i32 @llvm.read_register.i32(metadata !84) #9
  %and.i.i.i.i.i.i77 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i.i.i77 to ptr
  %cpu_domain.i.i.i.i.i78 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 4
  %52 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i78) #7, !srcloc !100
  %and.i.i.i.i79 = and i32 %52, -13
  %or.i.i.i.i80 = or i32 %and.i.i.i.i79, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i80) #9, !srcloc !101
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  %call1.i.i.i81 = call i32 @arm_copy_from_user(ptr noundef nonnull %rxc, ptr noundef %48, i32 noundef 12) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %52) #9, !srcloc !101
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i81)
  %tobool4.not.i.i84 = icmp eq i32 %call1.i.i.i81, 0
  br i1 %tobool4.not.i.i84, label %if.end29, label %if.end.i.i85.if.then11.i.i88_crit_edge, !prof !96

if.end.i.i85.if.then11.i.i88_crit_edge:           ; preds = %if.end.i.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i88

if.then11.i.i88:                                  ; preds = %if.end.i.i85.if.then11.i.i88_crit_edge, %land.lhs.true.i.i75.if.then11.i.i88_crit_edge, %sw.bb25.if.then11.i.i88_crit_edge
  %res.0.i.i83197 = phi i32 [ %call1.i.i.i81, %if.end.i.i85.if.then11.i.i88_crit_edge ], [ 12, %sw.bb25.if.then11.i.i88_crit_edge ], [ 12, %land.lhs.true.i.i75.if.then11.i.i88_crit_edge ]
  %sub.i.i86 = sub i32 12, %res.0.i.i83197
  %add.ptr.i.i87 = getelementptr i8, ptr %rxc, i32 %sub.i.i86
  %53 = call ptr @memset(ptr %add.ptr.i.i87, i32 0, i32 %res.0.i.i83197)
  br label %cleanup

if.end29:                                         ; preds = %if.end.i.i85
  %cl30 = getelementptr inbounds %struct.hsc_channel, ptr %1, i32 0, i32 6
  %54 = ptrtoint ptr %cl30 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cl30, align 4
  %56 = ptrtoint ptr %rxc to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rxc, align 4
  %.off.i = add i32 %57, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.end.i155, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i155:                                      ; preds = %if.end29
  %58 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %6, align 4
  %60 = add i32 %59, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %60)
  %61 = icmp ult i32 %60, 16
  %62 = call i32 @llvm.ctpop.i32(i32 %59) #9, !range !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %62)
  %tobool.not.i154 = icmp ult i32 %62, 2
  %or.cond62.i = and i1 %61, %tobool.not.i154
  br i1 %or.cond62.i, label %if.end11.i, label %if.end.i155.cleanup_crit_edge

if.end.i155.cleanup_crit_edge:                    ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11.i:                                       ; preds = %if.end.i155
  %63 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %64)
  %switch63.i = icmp ult i32 %64, 2
  br i1 %switch63.i, label %if.end17.i, label %if.end11.i.cleanup_crit_edge

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17.i:                                       ; preds = %if.end11.i
  %rx_cfg.i = getelementptr inbounds %struct.hsi_client, ptr %55, i32 0, i32 2
  %65 = ptrtoint ptr %rx_cfg.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %tmp.sroa.0.0.copyload.i = load i32, ptr %rx_cfg.i, align 8
  %tmp.sroa.5.0.rx_cfg.sroa_idx.i = getelementptr inbounds %struct.hsi_client, ptr %55, i32 0, i32 2, i32 1
  %66 = ptrtoint ptr %tmp.sroa.5.0.rx_cfg.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %tmp.sroa.5.0.copyload.i = load ptr, ptr %tmp.sroa.5.0.rx_cfg.sroa_idx.i, align 4
  %tmp.sroa.6.0.rx_cfg.sroa_idx.i = getelementptr inbounds %struct.hsi_client, ptr %55, i32 0, i32 2, i32 2
  %67 = ptrtoint ptr %tmp.sroa.6.0.rx_cfg.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %tmp.sroa.6.0.copyload.i = load i32, ptr %tmp.sroa.6.0.rx_cfg.sroa_idx.i, align 8
  %tmp.sroa.7.0.rx_cfg.sroa_idx.i = getelementptr inbounds %struct.hsi_client, ptr %55, i32 0, i32 2, i32 3
  %68 = ptrtoint ptr %tmp.sroa.7.0.rx_cfg.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %tmp.sroa.7.0.copyload.i = load i32, ptr %tmp.sroa.7.0.rx_cfg.sroa_idx.i, align 4
  %tmp.sroa.8.0.rx_cfg.sroa_idx.i = getelementptr inbounds %struct.hsi_client, ptr %55, i32 0, i32 2, i32 4
  %69 = ptrtoint ptr %tmp.sroa.8.0.rx_cfg.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %tmp.sroa.8.0.copyload.i = load i32, ptr %tmp.sroa.8.0.rx_cfg.sroa_idx.i, align 8
  %tmp.sroa.9.0.rx_cfg.sroa_idx.i = getelementptr inbounds %struct.hsi_client, ptr %55, i32 0, i32 2, i32 5
  %70 = ptrtoint ptr %tmp.sroa.9.0.rx_cfg.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %tmp.sroa.9.0.copyload.i = load i32, ptr %tmp.sroa.9.0.rx_cfg.sroa_idx.i, align 4
  store i32 %57, ptr %rx_cfg.i, align 8
  store i32 %59, ptr %tmp.sroa.7.0.rx_cfg.sroa_idx.i, align 4
  store i32 %64, ptr %tmp.sroa.9.0.rx_cfg.sroa_idx.i, align 4
  %pclaimed.i.i.i = getelementptr inbounds %struct.hsi_client, ptr %55, i32 0, i32 4
  %71 = ptrtoint ptr %pclaimed.i.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %bf.load.i.i.i = load i8, ptr %pclaimed.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i, label %if.end17.i.if.then26.i_crit_edge, label %hsi_setup.exit.i

if.end17.i.if.then26.i_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26.i

hsi_setup.exit.i:                                 ; preds = %if.end17.i
  %parent.i.i = getelementptr inbounds %struct.device, ptr %55, i32 0, i32 1
  %72 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %parent.i.i, align 8
  %setup.i.i = getelementptr inbounds %struct.hsi_port, ptr %73, i32 0, i32 8
  %74 = ptrtoint ptr %setup.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %setup.i.i, align 4
  %call1.i.i = call i32 %75(ptr noundef %55) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp25.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp25.i, label %hsi_setup.exit.i.if.then26.i_crit_edge, label %if.end28.i

hsi_setup.exit.i.if.then26.i_crit_edge:           ; preds = %hsi_setup.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26.i

if.then26.i:                                      ; preds = %hsi_setup.exit.i.if.then26.i_crit_edge, %if.end17.i.if.then26.i_crit_edge
  %retval.0.i69.i = phi i32 [ %call1.i.i, %hsi_setup.exit.i.if.then26.i_crit_edge ], [ -13, %if.end17.i.if.then26.i_crit_edge ]
  %76 = ptrtoint ptr %rx_cfg.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %tmp.sroa.0.0.copyload.i, ptr %rx_cfg.i, align 8
  %77 = ptrtoint ptr %tmp.sroa.5.0.rx_cfg.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %tmp.sroa.5.0.copyload.i, ptr %tmp.sroa.5.0.rx_cfg.sroa_idx.i, align 4
  %78 = ptrtoint ptr %tmp.sroa.6.0.rx_cfg.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %tmp.sroa.6.0.copyload.i, ptr %tmp.sroa.6.0.rx_cfg.sroa_idx.i, align 8
  %79 = ptrtoint ptr %tmp.sroa.7.0.rx_cfg.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %tmp.sroa.7.0.copyload.i, ptr %tmp.sroa.7.0.rx_cfg.sroa_idx.i, align 4
  %80 = ptrtoint ptr %tmp.sroa.8.0.rx_cfg.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %tmp.sroa.8.0.copyload.i, ptr %tmp.sroa.8.0.rx_cfg.sroa_idx.i, align 8
  %81 = ptrtoint ptr %tmp.sroa.9.0.rx_cfg.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %tmp.sroa.9.0.copyload.i, ptr %tmp.sroa.9.0.rx_cfg.sroa_idx.i, align 4
  br label %cleanup

if.end28.i:                                       ; preds = %hsi_setup.exit.i
  %82 = ptrtoint ptr %rxc to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %rxc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %83)
  %cmp30.i = icmp eq i32 %83, 2
  br i1 %cmp30.i, label %if.then31.i, label %if.end28.i.cleanup_crit_edge

if.end28.i.cleanup_crit_edge:                     ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then31.i:                                      ; preds = %if.end28.i
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %55, i32 0, i32 8
  %84 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.hsc_client_data, ptr %85, i32 0, i32 2
  %call1.i64.i = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i64.i)
  %tobool.not.i65.i = icmp eq i32 %call1.i64.i, 0
  br i1 %tobool.not.i65.i, label %if.end.i66.i, label %if.then31.i.cleanup_crit_edge

if.then31.i.cleanup_crit_edge:                    ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i66.i:                                     ; preds = %if.then31.i
  %call2.i.i = call ptr @hsi_alloc_msg(i32 noundef 0, i32 noundef 3264) #9
  %tobool3.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool3.not.i.i, label %if.end.i66.i.cleanup.sink.split.i.i_crit_edge, label %if.end6.i.i

if.end.i66.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %if.end.i66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i.i

if.end6.i.i:                                      ; preds = %if.end.i66.i
  %break_frame.i.i = getelementptr inbounds %struct.hsi_msg, ptr %call2.i.i, i32 0, i32 9
  %86 = ptrtoint ptr %break_frame.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %bf.load.i.i156 = load i8, ptr %break_frame.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.hsi_msg, ptr %call2.i.i, i32 0, i32 4
  %87 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @hsc_break_received, ptr %complete.i.i, align 4
  %destructor.i.i = getelementptr inbounds %struct.hsi_msg, ptr %call2.i.i, i32 0, i32 5
  %88 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @hsc_break_req_destructor, ptr %destructor.i.i, align 4
  %bf.set.i.i157 = and i8 %bf.load.i.i156, 63
  %bf.clear.i.i.i = or i8 %bf.set.i.i157, 64
  store i8 %bf.clear.i.i.i, ptr %break_frame.i.i, align 4
  %call.i.i.i158 = call i32 @hsi_async(ptr noundef %55, ptr noundef nonnull %call2.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i158)
  %cmp.i.i159 = icmp slt i32 %call.i.i.i158, 0
  br i1 %cmp.i.i159, label %if.then8.i.i, label %if.end6.i.i.cleanup_crit_edge

if.end6.i.i.cleanup_crit_edge:                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %cl.i.i.i = getelementptr inbounds %struct.hsi_msg, ptr %call2.i.i, i32 0, i32 1
  %89 = ptrtoint ptr %cl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cl.i.i.i, align 4
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.device, ptr %90, i32 0, i32 8
  %91 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  call void @hsi_free_msg(ptr noundef nonnull %call2.i.i) #9
  %flags.i.i.i = getelementptr inbounds %struct.hsc_client_data, ptr %92, i32 0, i32 2
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.then8.i.i, %if.end.i66.i.cleanup.sink.split.i.i_crit_edge
  %flags.i.sink.i.i = phi ptr [ %flags.i.i.i, %if.then8.i.i ], [ %flags.i.i, %if.end.i66.i.cleanup.sink.split.i.i_crit_edge ]
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i.sink.i.i) #9
  br label %cleanup

sw.bb32:                                          ; preds = %entry
  %cl33 = getelementptr inbounds %struct.hsc_channel, ptr %1, i32 0, i32 6
  %93 = ptrtoint ptr %cl33 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %cl33, align 4
  %rx_cfg.i161 = getelementptr inbounds %struct.hsi_client, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %rx_cfg.i161 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %rx_cfg.i161, align 8
  %97 = ptrtoint ptr %rxc to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %rxc, align 4
  %num_hw_channels.i = getelementptr inbounds %struct.hsi_client, ptr %94, i32 0, i32 2, i32 3
  %98 = ptrtoint ptr %num_hw_channels.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %num_hw_channels.i, align 4
  %100 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %6, align 4
  %101 = getelementptr inbounds %struct.hsi_client, ptr %94, i32 0, i32 2, i32 5
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %101, align 4
  %104 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %4, align 4
  %105 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.24, i32 noundef 174) #9
  %call.i.i95 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i95, label %sw.bb32.cleanup_crit_edge, label %if.end.i.i98

sw.bb32.cleanup_crit_edge:                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i98:                                     ; preds = %sw.bb32
  %106 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %105, i32 12, i32 -1226833920) #14, !srcloc !98
  %asmresult.i.i96 = extractvalue { i32, i32 } %106, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i96)
  %cmp.i6.i97 = icmp eq i32 %asmresult.i.i96, 0
  br i1 %cmp.i6.i97, label %copy_to_user.exit, label %if.end.i.i98.cleanup_crit_edge

if.end.i.i98.cleanup_crit_edge:                   ; preds = %if.end.i.i98
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i98
  %call.i.i.i99 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %rxc, i32 noundef 12) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %105, ptr noundef nonnull %rxc, i32 noundef 12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool35.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool35.not, label %copy_to_user.exit.sw.epilog_crit_edge, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

copy_to_user.exit.sw.epilog_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb38:                                          ; preds = %entry
  %107 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.24, i32 noundef 156) #9
  %call.i.i105 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i105, label %sw.bb38.if.then11.i.i121_crit_edge, label %land.lhs.true.i.i108

sw.bb38.if.then11.i.i121_crit_edge:               ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i121

land.lhs.true.i.i108:                             ; preds = %sw.bb38
  %108 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %107, i32 16, i32 -1226833920) #14, !srcloc !99
  %asmresult.i.i106 = extractvalue { i32, i32 } %108, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i106)
  %cmp.i6.i107 = icmp eq i32 %asmresult.i.i106, 0
  br i1 %cmp.i6.i107, label %if.end.i.i118, label %land.lhs.true.i.i108.if.then11.i.i121_crit_edge, !prof !96

land.lhs.true.i.i108.if.then11.i.i121_crit_edge:  ; preds = %land.lhs.true.i.i108
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i121

if.end.i.i118:                                    ; preds = %land.lhs.true.i.i108
  %call.i.i.i109 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %txc, i32 noundef 16) #9
  %109 = call i32 @llvm.read_register.i32(metadata !84) #9
  %and.i.i.i.i.i.i110 = and i32 %109, -16384
  %110 = inttoptr i32 %and.i.i.i.i.i.i110 to ptr
  %cpu_domain.i.i.i.i.i111 = getelementptr inbounds %struct.thread_info, ptr %110, i32 0, i32 4
  %111 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i111) #7, !srcloc !100
  %and.i.i.i.i112 = and i32 %111, -13
  %or.i.i.i.i113 = or i32 %and.i.i.i.i112, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i113) #9, !srcloc !101
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  %call1.i.i.i114 = call i32 @arm_copy_from_user(ptr noundef nonnull %txc, ptr noundef %107, i32 noundef 16) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %111) #9, !srcloc !101
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i114)
  %tobool4.not.i.i117 = icmp eq i32 %call1.i.i.i114, 0
  br i1 %tobool4.not.i.i117, label %if.end42, label %if.end.i.i118.if.then11.i.i121_crit_edge, !prof !96

if.end.i.i118.if.then11.i.i121_crit_edge:         ; preds = %if.end.i.i118
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i121

if.then11.i.i121:                                 ; preds = %if.end.i.i118.if.then11.i.i121_crit_edge, %land.lhs.true.i.i108.if.then11.i.i121_crit_edge, %sw.bb38.if.then11.i.i121_crit_edge
  %res.0.i.i116204 = phi i32 [ %call1.i.i.i114, %if.end.i.i118.if.then11.i.i121_crit_edge ], [ 16, %sw.bb38.if.then11.i.i121_crit_edge ], [ 16, %land.lhs.true.i.i108.if.then11.i.i121_crit_edge ]
  %sub.i.i119 = sub i32 16, %res.0.i.i116204
  %add.ptr.i.i120 = getelementptr i8, ptr %txc, i32 %sub.i.i119
  %112 = call ptr @memset(ptr %add.ptr.i.i120, i32 0, i32 %res.0.i.i116204)
  br label %cleanup

if.end42:                                         ; preds = %if.end.i.i118
  %cl43 = getelementptr inbounds %struct.hsc_channel, ptr %1, i32 0, i32 6
  %113 = ptrtoint ptr %cl43 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %cl43, align 4
  %115 = ptrtoint ptr %txc to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %txc, align 4
  %.off.i164 = add i32 %116, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i164)
  %switch.i165 = icmp ult i32 %.off.i164, 2
  br i1 %switch.i165, label %if.end.i168, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i168:                                      ; preds = %if.end42
  %117 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %8, align 4
  %119 = add i32 %118, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %119)
  %120 = icmp ult i32 %119, 16
  %121 = call i32 @llvm.ctpop.i32(i32 %118) #9, !range !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %121)
  %tobool.not.i167 = icmp ult i32 %121, 2
  %or.cond59.i = and i1 %120, %tobool.not.i167
  br i1 %or.cond59.i, label %if.end11.i169, label %if.end.i168.cleanup_crit_edge

if.end.i168.cleanup_crit_edge:                    ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11.i169:                                    ; preds = %if.end.i168
  %122 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %123)
  %switch60.i = icmp ult i32 %123, 2
  br i1 %switch60.i, label %if.end17.i179, label %if.end11.i169.cleanup_crit_edge

if.end11.i169.cleanup_crit_edge:                  ; preds = %if.end11.i169
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17.i179:                                    ; preds = %if.end11.i169
  %tx_cfg.i = getelementptr inbounds %struct.hsi_client, ptr %114, i32 0, i32 1
  %124 = ptrtoint ptr %tx_cfg.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %tmp.sroa.0.0.copyload.i170 = load i32, ptr %tx_cfg.i, align 8
  %tmp.sroa.5.0.tx_cfg.sroa_idx.i = getelementptr inbounds %struct.hsi_client, ptr %114, i32 0, i32 1, i32 1
  %125 = ptrtoint ptr %tmp.sroa.5.0.tx_cfg.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %tmp.sroa.5.0.copyload.i171 = load ptr, ptr %tmp.sroa.5.0.tx_cfg.sroa_idx.i, align 4
  %tmp.sroa.6.0.tx_cfg.sroa_idx.i = getelementptr inbounds %struct.hsi_client, ptr %114, i32 0, i32 1, i32 2
  %126 = ptrtoint ptr %tmp.sroa.6.0.tx_cfg.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %tmp.sroa.6.0.copyload.i172 = load i32, ptr %tmp.sroa.6.0.tx_cfg.sroa_idx.i, align 8
  %tmp.sroa.7.0.tx_cfg.sroa_idx.i = getelementptr inbounds %struct.hsi_client, ptr %114, i32 0, i32 1, i32 3
  %127 = ptrtoint ptr %tmp.sroa.7.0.tx_cfg.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %tmp.sroa.7.0.copyload.i173 = load i32, ptr %tmp.sroa.7.0.tx_cfg.sroa_idx.i, align 4
  %tmp.sroa.8.0.tx_cfg.sroa_idx.i = getelementptr inbounds %struct.hsi_client, ptr %114, i32 0, i32 1, i32 4
  %128 = ptrtoint ptr %tmp.sroa.8.0.tx_cfg.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %tmp.sroa.8.0.copyload.i174 = load i32, ptr %tmp.sroa.8.0.tx_cfg.sroa_idx.i, align 8
  %tmp.sroa.9.0.tx_cfg.sroa_idx.i = getelementptr inbounds %struct.hsi_client, ptr %114, i32 0, i32 1, i32 5
  %129 = ptrtoint ptr %tmp.sroa.9.0.tx_cfg.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %tmp.sroa.9.0.copyload.i175 = load i32, ptr %tmp.sroa.9.0.tx_cfg.sroa_idx.i, align 4
  store i32 %116, ptr %tx_cfg.i, align 8
  store i32 %118, ptr %tmp.sroa.7.0.tx_cfg.sroa_idx.i, align 4
  %130 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %9, align 4
  store i32 %131, ptr %tmp.sroa.8.0.tx_cfg.sroa_idx.i, align 8
  store i32 %123, ptr %tmp.sroa.9.0.tx_cfg.sroa_idx.i, align 4
  %pclaimed.i.i.i176 = getelementptr inbounds %struct.hsi_client, ptr %114, i32 0, i32 4
  %132 = ptrtoint ptr %pclaimed.i.i.i176 to i32
  call void @__asan_load1_noabort(i32 %132)
  %bf.load.i.i.i177 = load i8, ptr %pclaimed.i.i.i176, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i177)
  %tobool.not.i.i178 = icmp sgt i8 %bf.load.i.i.i177, -1
  br i1 %tobool.not.i.i178, label %if.end17.i179.if.then28.i_crit_edge, label %hsi_setup.exit.i183

if.end17.i179.if.then28.i_crit_edge:              ; preds = %if.end17.i179
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28.i

hsi_setup.exit.i183:                              ; preds = %if.end17.i179
  %parent.i.i180 = getelementptr inbounds %struct.device, ptr %114, i32 0, i32 1
  %133 = ptrtoint ptr %parent.i.i180 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %parent.i.i180, align 8
  %setup.i.i181 = getelementptr inbounds %struct.hsi_port, ptr %134, i32 0, i32 8
  %135 = ptrtoint ptr %setup.i.i181 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %setup.i.i181, align 4
  %call1.i.i182 = call i32 %136(ptr noundef %114) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i182)
  %cmp27.i = icmp slt i32 %call1.i.i182, 0
  br i1 %cmp27.i, label %hsi_setup.exit.i183.if.then28.i_crit_edge, label %hsi_setup.exit.i183.cleanup_crit_edge

hsi_setup.exit.i183.cleanup_crit_edge:            ; preds = %hsi_setup.exit.i183
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

hsi_setup.exit.i183.if.then28.i_crit_edge:        ; preds = %hsi_setup.exit.i183
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28.i

if.then28.i:                                      ; preds = %hsi_setup.exit.i183.if.then28.i_crit_edge, %if.end17.i179.if.then28.i_crit_edge
  %retval.0.i63.i = phi i32 [ %call1.i.i182, %hsi_setup.exit.i183.if.then28.i_crit_edge ], [ -13, %if.end17.i179.if.then28.i_crit_edge ]
  %137 = ptrtoint ptr %tx_cfg.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %tmp.sroa.0.0.copyload.i170, ptr %tx_cfg.i, align 8
  %138 = ptrtoint ptr %tmp.sroa.5.0.tx_cfg.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %tmp.sroa.5.0.copyload.i171, ptr %tmp.sroa.5.0.tx_cfg.sroa_idx.i, align 4
  %139 = ptrtoint ptr %tmp.sroa.6.0.tx_cfg.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %tmp.sroa.6.0.copyload.i172, ptr %tmp.sroa.6.0.tx_cfg.sroa_idx.i, align 8
  %140 = ptrtoint ptr %tmp.sroa.7.0.tx_cfg.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %tmp.sroa.7.0.copyload.i173, ptr %tmp.sroa.7.0.tx_cfg.sroa_idx.i, align 4
  %141 = ptrtoint ptr %tmp.sroa.8.0.tx_cfg.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %tmp.sroa.8.0.copyload.i174, ptr %tmp.sroa.8.0.tx_cfg.sroa_idx.i, align 8
  %142 = ptrtoint ptr %tmp.sroa.9.0.tx_cfg.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %tmp.sroa.9.0.copyload.i175, ptr %tmp.sroa.9.0.tx_cfg.sroa_idx.i, align 4
  br label %cleanup

sw.bb45:                                          ; preds = %entry
  %cl46 = getelementptr inbounds %struct.hsc_channel, ptr %1, i32 0, i32 6
  %143 = ptrtoint ptr %cl46 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %cl46, align 4
  %tx_cfg.i185 = getelementptr inbounds %struct.hsi_client, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %tx_cfg.i185 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %tx_cfg.i185, align 8
  %147 = ptrtoint ptr %txc to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %txc, align 4
  %num_hw_channels.i186 = getelementptr inbounds %struct.hsi_client, ptr %144, i32 0, i32 1, i32 3
  %148 = ptrtoint ptr %num_hw_channels.i186 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %num_hw_channels.i186, align 4
  %150 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %8, align 4
  %speed.i188 = getelementptr inbounds %struct.hsi_client, ptr %144, i32 0, i32 1, i32 4
  %151 = ptrtoint ptr %speed.i188 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %speed.i188, align 8
  %153 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %9, align 4
  %154 = getelementptr inbounds %struct.hsi_client, ptr %144, i32 0, i32 1, i32 5
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %154, align 4
  %157 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %10, align 4
  %158 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.24, i32 noundef 174) #9
  %call.i.i128 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i128, label %sw.bb45.cleanup_crit_edge, label %if.end.i.i131

sw.bb45.cleanup_crit_edge:                        ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i131:                                    ; preds = %sw.bb45
  %159 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %158, i32 16, i32 -1226833920) #14, !srcloc !98
  %asmresult.i.i129 = extractvalue { i32, i32 } %159, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i129)
  %cmp.i6.i130 = icmp eq i32 %asmresult.i.i129, 0
  br i1 %cmp.i6.i130, label %copy_to_user.exit136, label %if.end.i.i131.cleanup_crit_edge

if.end.i.i131.cleanup_crit_edge:                  ; preds = %if.end.i.i131
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

copy_to_user.exit136:                             ; preds = %if.end.i.i131
  %call.i.i.i132 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %txc, i32 noundef 16) #9
  %call.i12.i.i133 = call i32 @arm_copy_to_user(ptr noundef %158, ptr noundef nonnull %txc, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i133)
  %tobool48.not = icmp eq i32 %call.i12.i.i133, 0
  br i1 %tobool48.not, label %copy_to_user.exit136.sw.epilog_crit_edge, label %copy_to_user.exit136.cleanup_crit_edge

copy_to_user.exit136.cleanup_crit_edge:           ; preds = %copy_to_user.exit136
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

copy_to_user.exit136.sw.epilog_crit_edge:         ; preds = %copy_to_user.exit136
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %copy_to_user.exit136.sw.epilog_crit_edge, %copy_to_user.exit.sw.epilog_crit_edge, %if.end.i148, %if.end16.sw.epilog_crit_edge, %if.end.i142, %if.end7.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge, %if.end.i, %sw.bb.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %copy_to_user.exit136.sw.epilog_crit_edge ], [ 0, %copy_to_user.exit.sw.epilog_crit_edge ], [ -22, %if.end.sw.epilog_crit_edge ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ 0, %if.end.i ], [ %call1.i141, %if.end.i142 ], [ -13, %if.end7.sw.epilog_crit_edge ], [ %call1.i147, %if.end.i148 ], [ -13, %if.end16.sw.epilog_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %copy_to_user.exit136.cleanup_crit_edge, %if.end.i.i131.cleanup_crit_edge, %sw.bb45.cleanup_crit_edge, %if.then28.i, %hsi_setup.exit.i183.cleanup_crit_edge, %if.end11.i169.cleanup_crit_edge, %if.end.i168.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.then11.i.i121, %copy_to_user.exit.cleanup_crit_edge, %if.end.i.i98.cleanup_crit_edge, %sw.bb32.cleanup_crit_edge, %cleanup.sink.split.i.i, %if.end6.i.i.cleanup_crit_edge, %if.then31.i.cleanup_crit_edge, %if.end28.i.cleanup_crit_edge, %if.then26.i, %if.end11.i.cleanup_crit_edge, %if.end.i155.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.then11.i.i88, %if.then2.i, %if.end.i152.cleanup_crit_edge, %sw.bb22.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ -22, %if.then3.cleanup_crit_edge ], [ -22, %if.then11.cleanup_crit_edge ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %copy_to_user.exit136.cleanup_crit_edge ], [ -515, %entry.cleanup_crit_edge ], [ -12, %sw.bb22.cleanup_crit_edge ], [ %call.i.i151, %if.then2.i ], [ %call.i.i151, %if.end.i152.cleanup_crit_edge ], [ %retval.0.i69.i, %if.then26.i ], [ -22, %if.end29.cleanup_crit_edge ], [ -22, %if.end.i155.cleanup_crit_edge ], [ -22, %if.end11.i.cleanup_crit_edge ], [ %call1.i.i, %if.end28.i.cleanup_crit_edge ], [ %call1.i.i, %if.then31.i.cleanup_crit_edge ], [ %call1.i.i, %if.end6.i.i.cleanup_crit_edge ], [ %call1.i.i, %cleanup.sink.split.i.i ], [ %retval.0.i63.i, %if.then28.i ], [ -22, %if.end42.cleanup_crit_edge ], [ -22, %if.end.i168.cleanup_crit_edge ], [ -22, %if.end11.i169.cleanup_crit_edge ], [ %call1.i.i182, %hsi_setup.exit.i183.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then11.i.i88 ], [ -14, %sw.bb32.cleanup_crit_edge ], [ -14, %if.end.i.i98.cleanup_crit_edge ], [ -14, %if.then11.i.i121 ], [ -14, %sw.bb45.cleanup_crit_edge ], [ -14, %if.end.i.i131.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %txc) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rxc) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hsc_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hsc_open.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hsc_open, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !103

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hsc_open.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.26, i32 noundef %and.i) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %lock = getelementptr inbounds %struct.hsc_client_data, ptr %4, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %channels = getelementptr inbounds %struct.hsc_client_data, ptr %4, i32 0, i32 5
  %i_rdev.i43 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %5 = ptrtoint ptr %i_rdev.i43 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_rdev.i43, align 8
  %and = and i32 %6, 15
  %add.ptr6 = getelementptr %struct.hsc_channel, ptr %channels, i32 %and
  %flags = getelementptr %struct.hsc_channel, ptr %channels, i32 %and, i32 1
  %call7 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %usecnt = getelementptr inbounds %struct.hsc_client_data, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %usecnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %usecnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then11, label %if.end10.if.end18_crit_edge

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then11:                                        ; preds = %if.end10
  %cl = getelementptr inbounds %struct.hsc_client_data, ptr %4, i32 0, i32 4
  %9 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cl, align 4
  %call12 = tail call i32 @hsi_claim_port(ptr noundef %10, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then11.cleanup_crit_edge, label %if.end15

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.then11
  %11 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cl, align 4
  %pclaimed.i.i = getelementptr inbounds %struct.hsi_client, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %pclaimed.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i.i = load i8, ptr %pclaimed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i, label %if.end15.if.end18_crit_edge, label %if.end.i

if.end15.if.end18_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.end.i:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %parent.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 1
  %14 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent.i, align 8
  %setup.i = getelementptr inbounds %struct.hsi_port, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %setup.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %setup.i, align 4
  %call1.i = tail call i32 %17(ptr noundef %12) #9
  br label %if.end18

if.end18:                                         ; preds = %if.end.i, %if.end15.if.end18_crit_edge, %if.end10.if.end18_crit_edge
  %18 = ptrtoint ptr %usecnt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %usecnt, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %usecnt, align 4
  %free_msgs_list.i = getelementptr %struct.hsc_channel, ptr %channels, i32 %and, i32 2
  %prev.i.i = getelementptr %struct.hsc_channel, ptr %channels, i32 %and, i32 2, i32 1
  %20 = load i32, ptr @max_data_size, align 4
  %call.i.i = tail call ptr @hsi_alloc_msg(i32 noundef 1, i32 noundef 3264) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end18.out.i_crit_edge, label %if.end8.i.i.i

if.end18.out.i_crit_edge:                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end8.i.i.i:                                    ; preds = %if.end18
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %20, i32 noundef 3264) #15
  %tobool2.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool2.not.i.i, label %if.end8.i.i.i.if.then3.i.i_crit_edge, label %if.end.i46

if.end8.i.i.i.if.then3.i.i_crit_edge:             ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end8.i.i.i.3.if.then3.i.i_crit_edge, %if.end8.i.i.i.2.if.then3.i.i_crit_edge, %if.end8.i.i.i.1.if.then3.i.i_crit_edge, %if.end8.i.i.i.if.then3.i.i_crit_edge
  %call.i.i.lcssa62 = phi ptr [ %call.i.i, %if.end8.i.i.i.if.then3.i.i_crit_edge ], [ %call.i.i.1, %if.end8.i.i.i.1.if.then3.i.i_crit_edge ], [ %call.i.i.2, %if.end8.i.i.i.2.if.then3.i.i_crit_edge ], [ %call.i.i.3, %if.end8.i.i.i.3.if.then3.i.i_crit_edge ]
  tail call void @hsi_free_msg(ptr noundef nonnull %call.i.i.lcssa62) #9
  br label %out.i

if.end.i46:                                       ; preds = %if.end8.i.i.i
  %sgt.i.i = getelementptr inbounds %struct.hsi_msg, ptr %call.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %sgt.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sgt.i.i, align 4
  tail call void @sg_init_one(ptr noundef %22, ptr noundef nonnull %call9.i.i.i, i32 noundef %20) #9
  tail call void @kmemleak_ignore(ptr noundef nonnull %call9.i.i.i) #9
  %23 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr6, align 4
  %channel1.i = getelementptr inbounds %struct.hsi_msg, ptr %call.i.i, i32 0, i32 8
  %25 = ptrtoint ptr %channel1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %channel1.i, align 4
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i, ptr noundef %27, ptr noundef %free_msgs_list.i) #9
  br i1 %call.i.i.i, label %if.end.i.i9.i, label %if.end.i46.list_add_tail.exit.i_crit_edge

if.end.i46.list_add_tail.exit.i_crit_edge:        ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i9.i:                                    ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i.i, ptr %prev.i.i, align 4
  %29 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %free_msgs_list.i, ptr %call.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %call.i.i, ptr %27, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i9.i, %if.end.i46.list_add_tail.exit.i_crit_edge
  %32 = load i32, ptr @max_data_size, align 4
  %call.i.i.1 = tail call ptr @hsi_alloc_msg(i32 noundef 1, i32 noundef 3264) #9
  %tobool.not.i.i.1 = icmp eq ptr %call.i.i.1, null
  br i1 %tobool.not.i.i.1, label %list_add_tail.exit.i.out.i_crit_edge, label %if.end8.i.i.i.1

list_add_tail.exit.i.out.i_crit_edge:             ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end8.i.i.i.1:                                  ; preds = %list_add_tail.exit.i
  %call9.i.i.i.1 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %32, i32 noundef 3264) #15
  %tobool2.not.i.i.1 = icmp eq ptr %call9.i.i.i.1, null
  br i1 %tobool2.not.i.i.1, label %if.end8.i.i.i.1.if.then3.i.i_crit_edge, label %if.end.i46.1

if.end8.i.i.i.1.if.then3.i.i_crit_edge:           ; preds = %if.end8.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i.i

if.end.i46.1:                                     ; preds = %if.end8.i.i.i.1
  %sgt.i.i.1 = getelementptr inbounds %struct.hsi_msg, ptr %call.i.i.1, i32 0, i32 2
  %33 = ptrtoint ptr %sgt.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sgt.i.i.1, align 4
  tail call void @sg_init_one(ptr noundef %34, ptr noundef nonnull %call9.i.i.i.1, i32 noundef %32) #9
  tail call void @kmemleak_ignore(ptr noundef nonnull %call9.i.i.i.1) #9
  %35 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr6, align 4
  %channel1.i.1 = getelementptr inbounds %struct.hsi_msg, ptr %call.i.i.1, i32 0, i32 8
  %37 = ptrtoint ptr %channel1.i.1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %channel1.i.1, align 4
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i.1 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i.1, ptr noundef %39, ptr noundef %free_msgs_list.i) #9
  br i1 %call.i.i.i.1, label %if.end.i.i9.i.1, label %if.end.i46.1.list_add_tail.exit.i.1_crit_edge

if.end.i46.1.list_add_tail.exit.i.1_crit_edge:    ; preds = %if.end.i46.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i.1

if.end.i.i9.i.1:                                  ; preds = %if.end.i46.1
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i.i.1, ptr %prev.i.i, align 4
  %41 = ptrtoint ptr %call.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %free_msgs_list.i, ptr %call.i.i.1, align 4
  %prev3.i.i.i.1 = getelementptr inbounds %struct.list_head, ptr %call.i.i.1, i32 0, i32 1
  %42 = ptrtoint ptr %prev3.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev3.i.i.i.1, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %call.i.i.1, ptr %39, align 4
  br label %list_add_tail.exit.i.1

list_add_tail.exit.i.1:                           ; preds = %if.end.i.i9.i.1, %if.end.i46.1.list_add_tail.exit.i.1_crit_edge
  %44 = load i32, ptr @max_data_size, align 4
  %call.i.i.2 = tail call ptr @hsi_alloc_msg(i32 noundef 1, i32 noundef 3264) #9
  %tobool.not.i.i.2 = icmp eq ptr %call.i.i.2, null
  br i1 %tobool.not.i.i.2, label %list_add_tail.exit.i.1.out.i_crit_edge, label %if.end8.i.i.i.2

list_add_tail.exit.i.1.out.i_crit_edge:           ; preds = %list_add_tail.exit.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end8.i.i.i.2:                                  ; preds = %list_add_tail.exit.i.1
  %call9.i.i.i.2 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %44, i32 noundef 3264) #15
  %tobool2.not.i.i.2 = icmp eq ptr %call9.i.i.i.2, null
  br i1 %tobool2.not.i.i.2, label %if.end8.i.i.i.2.if.then3.i.i_crit_edge, label %if.end.i46.2

if.end8.i.i.i.2.if.then3.i.i_crit_edge:           ; preds = %if.end8.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i.i

if.end.i46.2:                                     ; preds = %if.end8.i.i.i.2
  %sgt.i.i.2 = getelementptr inbounds %struct.hsi_msg, ptr %call.i.i.2, i32 0, i32 2
  %45 = ptrtoint ptr %sgt.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sgt.i.i.2, align 4
  tail call void @sg_init_one(ptr noundef %46, ptr noundef nonnull %call9.i.i.i.2, i32 noundef %44) #9
  tail call void @kmemleak_ignore(ptr noundef nonnull %call9.i.i.i.2) #9
  %47 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr6, align 4
  %channel1.i.2 = getelementptr inbounds %struct.hsi_msg, ptr %call.i.i.2, i32 0, i32 8
  %49 = ptrtoint ptr %channel1.i.2 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %channel1.i.2, align 4
  %50 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i.2 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i.2, ptr noundef %51, ptr noundef %free_msgs_list.i) #9
  br i1 %call.i.i.i.2, label %if.end.i.i9.i.2, label %if.end.i46.2.list_add_tail.exit.i.2_crit_edge

if.end.i46.2.list_add_tail.exit.i.2_crit_edge:    ; preds = %if.end.i46.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i.2

if.end.i.i9.i.2:                                  ; preds = %if.end.i46.2
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i.i.2, ptr %prev.i.i, align 4
  %53 = ptrtoint ptr %call.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %free_msgs_list.i, ptr %call.i.i.2, align 4
  %prev3.i.i.i.2 = getelementptr inbounds %struct.list_head, ptr %call.i.i.2, i32 0, i32 1
  %54 = ptrtoint ptr %prev3.i.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev3.i.i.i.2, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %call.i.i.2, ptr %51, align 4
  br label %list_add_tail.exit.i.2

list_add_tail.exit.i.2:                           ; preds = %if.end.i.i9.i.2, %if.end.i46.2.list_add_tail.exit.i.2_crit_edge
  %56 = load i32, ptr @max_data_size, align 4
  %call.i.i.3 = tail call ptr @hsi_alloc_msg(i32 noundef 1, i32 noundef 3264) #9
  %tobool.not.i.i.3 = icmp eq ptr %call.i.i.3, null
  br i1 %tobool.not.i.i.3, label %list_add_tail.exit.i.2.out.i_crit_edge, label %if.end8.i.i.i.3

list_add_tail.exit.i.2.out.i_crit_edge:           ; preds = %list_add_tail.exit.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end8.i.i.i.3:                                  ; preds = %list_add_tail.exit.i.2
  %call9.i.i.i.3 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %56, i32 noundef 3264) #15
  %tobool2.not.i.i.3 = icmp eq ptr %call9.i.i.i.3, null
  br i1 %tobool2.not.i.i.3, label %if.end8.i.i.i.3.if.then3.i.i_crit_edge, label %if.end.i46.3

if.end8.i.i.i.3.if.then3.i.i_crit_edge:           ; preds = %if.end8.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i.i

if.end.i46.3:                                     ; preds = %if.end8.i.i.i.3
  %sgt.i.i.3 = getelementptr inbounds %struct.hsi_msg, ptr %call.i.i.3, i32 0, i32 2
  %57 = ptrtoint ptr %sgt.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sgt.i.i.3, align 4
  tail call void @sg_init_one(ptr noundef %58, ptr noundef nonnull %call9.i.i.i.3, i32 noundef %56) #9
  tail call void @kmemleak_ignore(ptr noundef nonnull %call9.i.i.i.3) #9
  %59 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %add.ptr6, align 4
  %channel1.i.3 = getelementptr inbounds %struct.hsi_msg, ptr %call.i.i.3, i32 0, i32 8
  %61 = ptrtoint ptr %channel1.i.3 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %channel1.i.3, align 4
  %62 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i.3 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i.3, ptr noundef %63, ptr noundef %free_msgs_list.i) #9
  br i1 %call.i.i.i.3, label %if.end.i.i9.i.3, label %if.end.i46.3.list_add_tail.exit.i.3_crit_edge

if.end.i46.3.list_add_tail.exit.i.3_crit_edge:    ; preds = %if.end.i46.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i.3

if.end.i.i9.i.3:                                  ; preds = %if.end.i46.3
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i.i.3, ptr %prev.i.i, align 4
  %65 = ptrtoint ptr %call.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %free_msgs_list.i, ptr %call.i.i.3, align 4
  %prev3.i.i.i.3 = getelementptr inbounds %struct.list_head, ptr %call.i.i.3, i32 0, i32 1
  %66 = ptrtoint ptr %prev3.i.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev3.i.i.i.3, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %call.i.i.3, ptr %63, align 4
  br label %list_add_tail.exit.i.3

list_add_tail.exit.i.3:                           ; preds = %if.end.i.i9.i.3, %if.end.i46.3.list_add_tail.exit.i.3_crit_edge
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %68 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %add.ptr6, ptr %private_data, align 4
  br label %cleanup

out.i:                                            ; preds = %list_add_tail.exit.i.2.out.i_crit_edge, %list_add_tail.exit.i.1.out.i_crit_edge, %list_add_tail.exit.i.out.i_crit_edge, %if.then3.i.i, %if.end18.out.i_crit_edge
  %69 = ptrtoint ptr %free_msgs_list.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %free_msgs_list.i, align 4
  %cmp.not18.i.i = icmp eq ptr %70, %free_msgs_list.i
  br i1 %cmp.not18.i.i, label %out.i.if.then22_crit_edge, label %out.i.for.body.i.i_crit_edge

out.i.for.body.i.i_crit_edge:                     ; preds = %out.i
  br label %for.body.i.i

out.i.if.then22_crit_edge:                        ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

for.body.i.i:                                     ; preds = %hsc_msg_free.exit.i.i.for.body.i.i_crit_edge, %out.i.for.body.i.i_crit_edge
  %msg.019.i.i = phi ptr [ %tmp.0.i.i, %hsc_msg_free.exit.i.i.for.body.i.i_crit_edge ], [ %70, %out.i.for.body.i.i_crit_edge ]
  %71 = ptrtoint ptr %msg.019.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %tmp.0.i.i = load ptr, ptr %msg.019.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %msg.019.i.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i10.i, label %for.body.i.i.list_del.exit.i.i_crit_edge

for.body.i.i.list_del.exit.i.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i.i

if.end.i.i.i10.i:                                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.019.i.i, i32 0, i32 1
  %72 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %prev.i.i.i.i, align 4
  %74 = ptrtoint ptr %msg.019.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %msg.019.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %73, ptr %prev1.i.i.i.i.i, align 4
  %77 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %75, ptr %73, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i10.i, %for.body.i.i.list_del.exit.i.i_crit_edge
  %78 = ptrtoint ptr %msg.019.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr inttoptr (i32 256 to ptr), ptr %msg.019.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.019.i.i, i32 0, i32 1
  %79 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %sgt.i.i.i = getelementptr inbounds %struct.hsi_msg, ptr %msg.019.i.i, i32 0, i32 2
  %80 = ptrtoint ptr %sgt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sgt.i.i.i, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 4
  %and.i.i.i.i.i.i = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.i.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i.i, label %hsc_msg_free.exit.i.i, label %do.body2.i.i.i.i.i, !prof !96

do.body2.i.i.i.i.i:                               ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !97
  unreachable

hsc_msg_free.exit.i.i:                            ; preds = %list_del.exit.i.i
  %and.i.i.i.i.i = and i32 %83, -4
  %84 = inttoptr i32 %and.i.i.i.i.i to ptr
  %call1.i.i.i11.i = tail call ptr @page_address(ptr noundef %84) #9
  %offset.i.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %81, i32 0, i32 1
  %85 = ptrtoint ptr %offset.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %offset.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call1.i.i.i11.i, i32 %86
  tail call void @kfree(ptr noundef %add.ptr.i.i.i.i) #9
  tail call void @hsi_free_msg(ptr noundef %msg.019.i.i) #9
  %cmp.not.i.i = icmp eq ptr %tmp.0.i.i, %free_msgs_list.i
  br i1 %cmp.not.i.i, label %hsc_msg_free.exit.i.i.if.then22_crit_edge, label %hsc_msg_free.exit.i.i.for.body.i.i_crit_edge

hsc_msg_free.exit.i.i.for.body.i.i_crit_edge:     ; preds = %hsc_msg_free.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

hsc_msg_free.exit.i.i.if.then22_crit_edge:        ; preds = %hsc_msg_free.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

if.then22:                                        ; preds = %hsc_msg_free.exit.i.i.if.then22_crit_edge, %out.i.if.then22_crit_edge
  %87 = ptrtoint ptr %usecnt to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %usecnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp.i = icmp eq i32 %88, 0
  br i1 %cmp.i, label %do.body2.i, label %do.end5.i, !prof !104

do.body2.i:                                       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/hsi/clients/hsi_char.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 581, 0\0A.popsection", ""() #9, !srcloc !105
  unreachable

do.end5.i:                                        ; preds = %if.then22
  %dec.i = add i32 %88, -1
  %89 = ptrtoint ptr %usecnt to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %dec.i, ptr %usecnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp7.i = icmp eq i32 %dec.i, 0
  br i1 %cmp7.i, label %if.then8.i, label %do.end5.i.cleanup_crit_edge

do.end5.i.cleanup_crit_edge:                      ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8.i:                                       ; preds = %do.end5.i
  %cl.i = getelementptr inbounds %struct.hsc_client_data, ptr %4, i32 0, i32 4
  %90 = ptrtoint ptr %cl.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cl.i, align 4
  %pclaimed.i.i.i = getelementptr inbounds %struct.hsi_client, ptr %91, i32 0, i32 4
  %92 = ptrtoint ptr %pclaimed.i.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %bf.load.i.i.i = load i8, ptr %pclaimed.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i48 = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i48, label %if.then8.i.hsi_flush.exit.i_crit_edge, label %if.end.i.i49

if.then8.i.hsi_flush.exit.i_crit_edge:            ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hsi_flush.exit.i

if.end.i.i49:                                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  %parent.i.i = getelementptr inbounds %struct.device, ptr %91, i32 0, i32 1
  %93 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %parent.i.i, align 8
  %flush.i.i = getelementptr inbounds %struct.hsi_port, ptr %94, i32 0, i32 9
  %95 = ptrtoint ptr %flush.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %flush.i.i, align 8
  %call1.i.i = tail call i32 %96(ptr noundef %91) #9
  br label %hsi_flush.exit.i

hsi_flush.exit.i:                                 ; preds = %if.end.i.i49, %if.then8.i.hsi_flush.exit.i_crit_edge
  %97 = ptrtoint ptr %cl.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cl.i, align 4
  tail call void @hsi_release_port(ptr noundef %98) #9
  br label %cleanup

cleanup:                                          ; preds = %hsi_flush.exit.i, %do.end5.i.cleanup_crit_edge, %list_add_tail.exit.i.3, %if.then11.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit.i.3 ], [ %call12, %if.then11.cleanup_crit_edge ], [ -16, %do.end.cleanup_crit_edge ], [ -12, %do.end5.i.cleanup_crit_edge ], [ -12, %hsi_flush.exit.i ]
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hsc_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef %file) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %cl_data1 = getelementptr inbounds %struct.hsc_channel, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %cl_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cl_data1, align 4
  %lock = getelementptr inbounds %struct.hsc_client_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %private_data, align 4
  %flags = getelementptr inbounds %struct.hsc_channel, ptr %1, i32 0, i32 1
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %cl = getelementptr inbounds %struct.hsc_channel, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cl, align 4
  %pclaimed.i.i = getelementptr inbounds %struct.hsi_client, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %pclaimed.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i.i = load i8, ptr %pclaimed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %parent.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i, align 8
  %stop_tx.i = getelementptr inbounds %struct.hsi_port, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %stop_tx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stop_tx.i, align 8
  %call1.i = tail call i32 %11(ptr noundef %6) #9
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %usecnt.i = getelementptr inbounds %struct.hsc_client_data, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %usecnt.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %usecnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i = icmp eq i32 %13, 0
  br i1 %cmp.i, label %do.body2.i, label %do.end5.i, !prof !104

do.body2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/hsi/clients/hsi_char.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 581, 0\0A.popsection", ""() #9, !srcloc !105
  unreachable

do.end5.i:                                        ; preds = %if.end
  %dec.i = add i32 %13, -1
  %14 = ptrtoint ptr %usecnt.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %dec.i, ptr %usecnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp7.i = icmp eq i32 %dec.i, 0
  br i1 %cmp7.i, label %if.then8.i, label %do.end5.i.__hsc_port_release.exit_crit_edge

do.end5.i.__hsc_port_release.exit_crit_edge:      ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hsc_port_release.exit

if.then8.i:                                       ; preds = %do.end5.i
  %cl.i = getelementptr inbounds %struct.hsc_client_data, ptr %3, i32 0, i32 4
  %15 = ptrtoint ptr %cl.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cl.i, align 4
  %pclaimed.i.i.i = getelementptr inbounds %struct.hsi_client, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %pclaimed.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i.i.i = load i8, ptr %pclaimed.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i, label %if.then8.i.hsi_flush.exit.i_crit_edge, label %if.end.i.i

if.then8.i.hsi_flush.exit.i_crit_edge:            ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hsi_flush.exit.i

if.end.i.i:                                       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  %parent.i.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 1
  %18 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent.i.i, align 8
  %flush.i.i = getelementptr inbounds %struct.hsi_port, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %flush.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %flush.i.i, align 8
  %call1.i.i = tail call i32 %21(ptr noundef %16) #9
  br label %hsi_flush.exit.i

hsi_flush.exit.i:                                 ; preds = %if.end.i.i, %if.then8.i.hsi_flush.exit.i_crit_edge
  %22 = ptrtoint ptr %cl.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cl.i, align 4
  tail call void @hsi_release_port(ptr noundef %23) #9
  br label %__hsc_port_release.exit

__hsc_port_release.exit:                          ; preds = %hsi_flush.exit.i, %do.end5.i.__hsc_port_release.exit_crit_edge
  %rx_msgs_queue = getelementptr inbounds %struct.hsc_channel, ptr %1, i32 0, i32 3
  tail call fastcc void @hsc_reset_list(ptr noundef %1, ptr noundef %rx_msgs_queue)
  %tx_msgs_queue = getelementptr inbounds %struct.hsc_channel, ptr %1, i32 0, i32 4
  tail call fastcc void @hsc_reset_list(ptr noundef %1, ptr noundef %tx_msgs_queue)
  %free_msgs_list = getelementptr inbounds %struct.hsc_channel, ptr %1, i32 0, i32 2
  tail call fastcc void @hsc_reset_list(ptr noundef %1, ptr noundef %free_msgs_list)
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #9
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #9
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #9
  %rx_wait = getelementptr inbounds %struct.hsc_channel, ptr %1, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %rx_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  %tx_wait = getelementptr inbounds %struct.hsc_channel, ptr %1, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %tx_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @hsc_get_first_msg(ptr noundef %channel, ptr noundef %queue) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.hsc_channel, ptr %channel, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %1, %queue
  br i1 %cmp.i.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %out

out:                                              ; preds = %list_del.exit, %entry.out_crit_edge
  %msg.0 = phi ptr [ null, %entry.out_crit_edge ], [ %1, %list_del.exit ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  ret ptr %msg.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hsc_rx_completed(ptr noundef %msg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cl = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 1
  %0 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %channels = getelementptr inbounds %struct.hsc_client_data, ptr %3, i32 0, i32 5
  %channel1 = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 8
  %4 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel1, align 4
  %flags = getelementptr %struct.hsc_channel, ptr %channels, i32 %5, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %rx_msgs_queue = getelementptr %struct.hsc_channel, ptr %channels, i32 %5, i32 3
  %lock.i = getelementptr %struct.hsc_channel, ptr %channels, i32 %5, i32 5
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %prev.i.i = getelementptr %struct.hsc_channel, ptr %channels, i32 %5, i32 3, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %msg, ptr noundef %10, ptr noundef %rx_msgs_queue) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.hsc_add_tail.exit_crit_edge

if.then.hsc_add_tail.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %hsc_add_tail.exit

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %msg, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %rx_msgs_queue, ptr %msg, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %msg, ptr %10, align 4
  br label %hsc_add_tail.exit

hsc_add_tail.exit:                                ; preds = %if.end.i.i.i, %if.then.hsc_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  %rx_wait = getelementptr %struct.hsc_channel, ptr %channels, i32 %5, i32 8
  tail call void @__wake_up(ptr noundef %rx_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end

if.else:                                          ; preds = %entry
  %free_msgs_list = getelementptr %struct.hsc_channel, ptr %channels, i32 %5, i32 2
  %lock.i11 = getelementptr %struct.hsc_channel, ptr %channels, i32 %5, i32 5
  %call2.i12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i11) #9
  %prev.i.i13 = getelementptr %struct.hsc_channel, ptr %channels, i32 %5, i32 2, i32 1
  %15 = ptrtoint ptr %prev.i.i13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i13, align 4
  %call.i.i.i14 = tail call zeroext i1 @__list_add_valid(ptr noundef %msg, ptr noundef %16, ptr noundef %free_msgs_list) #9
  br i1 %call.i.i.i14, label %if.end.i.i.i16, label %if.else.hsc_add_tail.exit17_crit_edge

if.else.hsc_add_tail.exit17_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %hsc_add_tail.exit17

if.end.i.i.i16:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %prev.i.i13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg, ptr %prev.i.i13, align 4
  %18 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %free_msgs_list, ptr %msg, align 4
  %prev3.i.i.i15 = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i.i15, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %msg, ptr %16, align 4
  br label %hsc_add_tail.exit17

hsc_add_tail.exit17:                              ; preds = %if.end.i.i.i16, %if.else.hsc_add_tail.exit17_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i11, i32 noundef %call2.i12) #9
  br label %if.end

if.end:                                           ; preds = %hsc_add_tail.exit17, %hsc_add_tail.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hsc_rx_msg_destructor(ptr noundef %msg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 6
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4, ptr %status, align 4
  %sgt.i = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 2
  %1 = ptrtoint ptr %sgt.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sgt.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %length.i, align 4
  tail call void @hsc_rx_completed(ptr noundef %msg)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hsc_add_tail(ptr noundef %channel, ptr noundef %msg, ptr noundef %queue) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.hsc_channel, ptr %channel, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %prev.i = getelementptr inbounds %struct.list_head, ptr %queue, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %msg, ptr noundef %1, ptr noundef %queue) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %msg, ptr %prev.i, align 4
  %3 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %queue, ptr %msg, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %msg, ptr %1, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hsi_async(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hsc_tx_completed(ptr noundef %msg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cl = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 1
  %0 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %channels = getelementptr inbounds %struct.hsc_client_data, ptr %3, i32 0, i32 5
  %channel1 = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 8
  %4 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel1, align 4
  %flags = getelementptr %struct.hsc_channel, ptr %channels, i32 %5, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %tx_msgs_queue = getelementptr %struct.hsc_channel, ptr %channels, i32 %5, i32 4
  %lock.i = getelementptr %struct.hsc_channel, ptr %channels, i32 %5, i32 5
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %prev.i.i = getelementptr %struct.hsc_channel, ptr %channels, i32 %5, i32 4, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %msg, ptr noundef %10, ptr noundef %tx_msgs_queue) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.hsc_add_tail.exit_crit_edge

if.then.hsc_add_tail.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %hsc_add_tail.exit

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %msg, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %tx_msgs_queue, ptr %msg, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %msg, ptr %10, align 4
  br label %hsc_add_tail.exit

hsc_add_tail.exit:                                ; preds = %if.end.i.i.i, %if.then.hsc_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  %tx_wait = getelementptr %struct.hsc_channel, ptr %channels, i32 %5, i32 9
  tail call void @__wake_up(ptr noundef %tx_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end

if.else:                                          ; preds = %entry
  %free_msgs_list = getelementptr %struct.hsc_channel, ptr %channels, i32 %5, i32 2
  %lock.i11 = getelementptr %struct.hsc_channel, ptr %channels, i32 %5, i32 5
  %call2.i12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i11) #9
  %prev.i.i13 = getelementptr %struct.hsc_channel, ptr %channels, i32 %5, i32 2, i32 1
  %15 = ptrtoint ptr %prev.i.i13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i13, align 4
  %call.i.i.i14 = tail call zeroext i1 @__list_add_valid(ptr noundef %msg, ptr noundef %16, ptr noundef %free_msgs_list) #9
  br i1 %call.i.i.i14, label %if.end.i.i.i16, label %if.else.hsc_add_tail.exit17_crit_edge

if.else.hsc_add_tail.exit17_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %hsc_add_tail.exit17

if.end.i.i.i16:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %prev.i.i13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg, ptr %prev.i.i13, align 4
  %18 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %free_msgs_list, ptr %msg, align 4
  %prev3.i.i.i15 = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i.i15, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %msg, ptr %16, align 4
  br label %hsc_add_tail.exit17

hsc_add_tail.exit17:                              ; preds = %if.end.i.i.i16, %if.else.hsc_add_tail.exit17_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i11, i32 noundef %call2.i12) #9
  br label %if.end

if.end:                                           ; preds = %hsc_add_tail.exit17, %hsc_add_tail.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hsc_tx_msg_destructor(ptr noundef %msg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 6
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4, ptr %status, align 4
  %sgt.i = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 2
  %1 = ptrtoint ptr %sgt.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sgt.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %length.i, align 4
  tail call void @hsc_tx_completed(ptr noundef %msg)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hsi_alloc_msg(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hsi_free_msg(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hsc_break_received(ptr noundef %msg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cl = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 1
  %0 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %channels = getelementptr inbounds %struct.hsc_client_data, ptr %3, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.039 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %channel.037 = phi ptr [ %channels, %entry ], [ %incdec.ptr, %cleanup.for.body_crit_edge ]
  %flags = getelementptr inbounds %struct.hsc_channel, ptr %channel.037, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %for.body
  %free_msgs_list = getelementptr inbounds %struct.hsc_channel, ptr %channel.037, i32 0, i32 2
  %lock.i = getelementptr inbounds %struct.hsc_channel, ptr %channel.037, i32 0, i32 5
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %7 = ptrtoint ptr %free_msgs_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %free_msgs_list, align 4
  %cmp.i.not.i = icmp eq ptr %8, %free_msgs_list
  br i1 %cmp.i.not.i, label %hsc_get_first_msg.exit.thread, label %if.end.i

hsc_get_first_msg.exit.thread:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %8) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.hsc_get_first_msg.exit_crit_edge

if.end.i.hsc_get_first_msg.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hsc_get_first_msg.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %hsc_get_first_msg.exit

hsc_get_first_msg.exit:                           ; preds = %if.end.i.i.i, %if.end.i.hsc_get_first_msg.exit_crit_edge
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %hsc_get_first_msg.exit.cleanup_crit_edge, label %if.end5

hsc_get_first_msg.exit.cleanup_crit_edge:         ; preds = %hsc_get_first_msg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %hsc_get_first_msg.exit
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #9
  %sgt.i = getelementptr inbounds %struct.hsi_msg, ptr %8, i32 0, i32 2
  %17 = ptrtoint ptr %sgt.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sgt.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %length.i, align 4
  %status = getelementptr inbounds %struct.hsi_msg, ptr %8, i32 0, i32 6
  %20 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %status, align 4
  %rx_msgs_queue = getelementptr inbounds %struct.hsc_channel, ptr %channel.037, i32 0, i32 3
  %call2.i30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %prev.i.i31 = getelementptr inbounds %struct.hsc_channel, ptr %channel.037, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %prev.i.i31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i31, align 4
  %call.i.i.i32 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %8, ptr noundef %22, ptr noundef %rx_msgs_queue) #9
  br i1 %call.i.i.i32, label %if.end.i.i.i33, label %if.end5.hsc_add_tail.exit_crit_edge

if.end5.hsc_add_tail.exit_crit_edge:              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %hsc_add_tail.exit

if.end.i.i.i33:                                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %prev.i.i31 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %8, ptr %prev.i.i31, align 4
  %24 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %rx_msgs_queue, ptr %8, align 4
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %8, ptr %22, align 4
  br label %hsc_add_tail.exit

hsc_add_tail.exit:                                ; preds = %if.end.i.i.i33, %if.end5.hsc_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i30) #9
  %rx_wait = getelementptr inbounds %struct.hsc_channel, ptr %channel.037, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %rx_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %hsc_add_tail.exit, %hsc_get_first_msg.exit.cleanup_crit_edge, %hsc_get_first_msg.exit.thread, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.039, 1
  %incdec.ptr = getelementptr %struct.hsc_channel, ptr %channel.037, i32 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %cleanup
  %27 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cl, align 4
  %pclaimed.i.i = getelementptr inbounds %struct.hsi_client, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %pclaimed.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i.i = load i8, ptr %pclaimed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i, label %for.end.hsi_flush.exit_crit_edge, label %if.end.i34

for.end.hsi_flush.exit_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %hsi_flush.exit

if.end.i34:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %parent.i = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 1
  %30 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %parent.i, align 8
  %flush.i = getelementptr inbounds %struct.hsi_port, ptr %31, i32 0, i32 9
  %32 = ptrtoint ptr %flush.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %flush.i, align 8
  %call1.i = tail call i32 %33(ptr noundef %28) #9
  br label %hsi_flush.exit

hsi_flush.exit:                                   ; preds = %if.end.i34, %for.end.hsi_flush.exit_crit_edge
  %34 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cl, align 4
  %ttype.i = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 9
  %36 = ptrtoint ptr %ttype.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load.i = load i8, ptr %ttype.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %ttype.i, align 4
  %call.i = tail call i32 @hsi_async(ptr noundef %35, ptr noundef %msg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp11 = icmp slt i32 %call.i, 0
  br i1 %cmp11, label %if.then12, label %hsi_flush.exit.if.end13_crit_edge

hsi_flush.exit.if.end13_crit_edge:                ; preds = %hsi_flush.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then12:                                        ; preds = %hsi_flush.exit
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cl, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %driver_data.i.i.i, align 4
  tail call void @hsi_free_msg(ptr noundef %msg) #9
  %flags.i = getelementptr inbounds %struct.hsc_client_data, ptr %40, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %hsi_flush.exit.if.end13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hsc_break_req_destructor(ptr noundef %msg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cl = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 1
  %0 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @hsi_free_msg(ptr noundef %msg) #9
  %flags = getelementptr inbounds %struct.hsc_client_data, ptr %3, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hsi_claim_port(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmemleak_ignore(ptr noundef) local_unnamed_addr #3 section ".ref.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @hsi_release_port(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hsc_reset_list(ptr noundef %channel, ptr noundef %l) unnamed_addr #4 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %0, align 4
  %lock = getelementptr inbounds %struct.hsc_channel, ptr %channel, i32 0, i32 5
  %call2 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %3 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %l, align 4
  %cmp.i.not.i = icmp eq ptr %4, %l
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %list, align 4
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %l, i32 0, i32 1
  %7 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list, ptr %prev3.i.i, align 4
  store ptr %4, ptr %list, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %6, ptr %8, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev6.i.i, align 4
  %12 = ptrtoint ptr %l to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %l, ptr %l, align 4
  store ptr %l, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  %13 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %list, align 4
  %cmp.not18.i = icmp eq ptr %14, %list
  br i1 %cmp.not18.i, label %list_splice_init.exit.hsc_free_list.exit_crit_edge, label %list_splice_init.exit.for.body.i_crit_edge

list_splice_init.exit.for.body.i_crit_edge:       ; preds = %list_splice_init.exit
  br label %for.body.i

list_splice_init.exit.hsc_free_list.exit_crit_edge: ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %hsc_free_list.exit

for.body.i:                                       ; preds = %hsc_msg_free.exit.i.for.body.i_crit_edge, %list_splice_init.exit.for.body.i_crit_edge
  %msg.019.i = phi ptr [ %tmp.0.i, %hsc_msg_free.exit.i.for.body.i_crit_edge ], [ %14, %list_splice_init.exit.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %msg.019.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %tmp.0.i = load ptr, ptr %msg.019.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %msg.019.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.019.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i, align 4
  %18 = ptrtoint ptr %msg.019.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %msg.019.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %22 = ptrtoint ptr %msg.019.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %msg.019.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %msg.019.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %sgt.i.i = getelementptr inbounds %struct.hsi_msg, ptr %msg.019.i, i32 0, i32 2
  %24 = ptrtoint ptr %sgt.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sgt.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %and.i.i.i.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %hsc_msg_free.exit.i, label %do.body2.i.i.i.i, !prof !96

do.body2.i.i.i.i:                                 ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !97
  unreachable

hsc_msg_free.exit.i:                              ; preds = %list_del.exit.i
  %and.i.i.i.i = and i32 %27, -4
  %28 = inttoptr i32 %and.i.i.i.i to ptr
  %call1.i.i.i = call ptr @page_address(ptr noundef %28) #9
  %offset.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %25, i32 0, i32 1
  %29 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %call1.i.i.i, i32 %30
  call void @kfree(ptr noundef %add.ptr.i.i.i) #9
  call void @hsi_free_msg(ptr noundef %msg.019.i) #9
  %cmp.not.i = icmp eq ptr %tmp.0.i, %list
  br i1 %cmp.not.i, label %hsc_msg_free.exit.i.hsc_free_list.exit_crit_edge, label %hsc_msg_free.exit.i.for.body.i_crit_edge

hsc_msg_free.exit.i.for.body.i_crit_edge:         ; preds = %hsc_msg_free.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

hsc_msg_free.exit.i.hsc_free_list.exit_crit_edge: ; preds = %hsc_msg_free.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hsc_free_list.exit

hsc_free_list.exit:                               ; preds = %hsc_msg_free.exit.i.hsc_free_list.exit_crit_edge, %list_splice_init.exit.hsc_free_list.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !17, !19, !21, !23, !24, !25, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !46, !47, !48, !49, !50, !51, !52, !53, !55, !56, !58, !59, !60, !62, !64, !66, !67, !69, !71, !73, !74, !75, !77, !78, !80, !81, !83}
!llvm.named.register.sp = !{!84}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @__param_max_data_size, !1, !"__param_max_data_size", i1 false, i1 false}
!1 = !{!"../drivers/hsi/clients/hsi_char.c", i32 113, i32 1}
!2 = !{ptr @__UNIQUE_ID_max_data_sizetype228, !1, !"__UNIQUE_ID_max_data_sizetype228", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_max_data_size229, !4, !"__UNIQUE_ID_max_data_size229", i1 false, i1 false}
!4 = !{!"../drivers/hsi/clients/hsi_char.c", i32 114, i32 1}
!5 = !{ptr @__initcall__kmod_hsi_char__231_776_hsc_init6, !6, !"__initcall__kmod_hsi_char__231_776_hsc_init6", i1 false, i1 false}
!6 = !{!"../drivers/hsi/clients/hsi_char.c", i32 776, i32 1}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/hsi/clients/hsi_char.c", i32 781, i32 2}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @hsc_exit._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @hsc_exit._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @__exitcall_hsc_exit, !14, !"__exitcall_hsc_exit", i1 false, i1 false}
!14 = !{!"../drivers/hsi/clients/hsi_char.c", i32 783, i32 1}
!15 = !{ptr @__UNIQUE_ID_author232, !16, !"__UNIQUE_ID_author232", i1 false, i1 false}
!16 = !{!"../drivers/hsi/clients/hsi_char.c", i32 785, i32 1}
!17 = !{ptr @__UNIQUE_ID_alias233, !18, !"__UNIQUE_ID_alias233", i1 false, i1 false}
!18 = !{!"../drivers/hsi/clients/hsi_char.c", i32 786, i32 1}
!19 = !{ptr @__UNIQUE_ID_description234, !20, !"__UNIQUE_ID_description234", i1 false, i1 false}
!20 = !{!"../drivers/hsi/clients/hsi_char.c", i32 787, i32 1}
!21 = !{ptr @__UNIQUE_ID_file235, !22, !"__UNIQUE_ID_file235", i1 false, i1 false}
!22 = !{!"../drivers/hsi/clients/hsi_char.c", i32 788, i32 1}
!23 = !{ptr @__UNIQUE_ID_license236, !22, !"__UNIQUE_ID_license236", i1 false, i1 false}
!24 = !{ptr @__param_str_max_data_size, !1, !"__param_str_max_data_size", i1 false, i1 false}
!25 = !{ptr @max_data_size, !26, !"max_data_size", i1 false, i1 false}
!26 = !{!"../drivers/hsi/clients/hsi_char.c", i32 112, i32 21}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hsi/clients/hsi_char.c", i32 762, i32 3}
!29 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @hsc_init._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @hsc_init._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hsi/clients/hsi_char.c", i32 768, i32 3}
!34 = !{ptr @hsc_init._entry.5, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @hsc_init._entry_ptr.7, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hsi/clients/hsi_char.c", i32 772, i32 2}
!38 = !{ptr @hsc_init._entry.8, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @hsc_init._entry_ptr.10, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hsi/clients/hsi_char.c", i32 749, i32 11}
!42 = !{ptr @hsc_driver, !43, !"hsc_driver", i1 false, i1 false}
!43 = !{!"../drivers/hsi/clients/hsi_char.c", i32 747, i32 33}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hsi/clients/hsi_char.c", i32 701, i32 3}
!46 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @hsc_probe._entry, !45, !"_entry", i1 false, i1 false}
!50 = !{ptr @hsc_probe._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @hsc_probe.__key, !54, !"__key", i1 false, i1 false}
!54 = !{!"../drivers/hsi/clients/hsi_char.c", i32 705, i32 2}
!55 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/hsi/clients/hsi_char.c", i32 720, i32 3}
!58 = !{ptr @hsc_probe._entry.19, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @hsc_probe._entry_ptr.21, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @hsc_major, !61, !"hsc_major", i1 false, i1 false}
!61 = !{!"../drivers/hsi/clients/hsi_char.c", i32 110, i32 21}
!62 = !{ptr @hsc_fops, !63, !"hsc_fops", i1 false, i1 false}
!63 = !{!"../drivers/hsi/clients/hsi_char.c", i32 656, i32 37}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!66 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/hsi/clients/hsi_char.c", i32 595, i32 2}
!73 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @hsc_open.__UNIQUE_ID_ddebug230, !72, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!75 = !{ptr @hsc_channel_init.__key, !76, !"__key", i1 false, i1 false}
!76 = !{!"../drivers/hsi/clients/hsi_char.c", i32 667, i32 2}
!77 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @hsc_channel_init.__key.28, !79, !"__key", i1 false, i1 false}
!79 = !{!"../drivers/hsi/clients/hsi_char.c", i32 668, i32 2}
!80 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @hsc_channel_init.__key.30, !82, !"__key", i1 false, i1 false}
!82 = !{!"../drivers/hsi/clients/hsi_char.c", i32 669, i32 2}
!83 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!84 = !{!"sp"}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i32 0, i32 33}
!95 = !{!"auto-init"}
!96 = !{!"branch_weights", i32 2000, i32 1}
!97 = !{i64 2153822896, i64 2153823388, i64 2153822933, i64 2153822989, i64 2153823023, i64 2153823047, i64 2153823088, i64 2153823109, i64 2153823137, i64 2153823171}
!98 = !{i64 2152850106, i64 2152850131}
!99 = !{i64 2152849425, i64 2152849450}
!100 = !{i64 5344980}
!101 = !{i64 5345177}
!102 = !{i64 2152830410}
!103 = !{i64 2148710321, i64 2148710326, i64 2148710339, i64 2148710383, i64 2148710417, i64 2148710438}
!104 = !{!"branch_weights", i32 1, i32 2000}
!105 = !{i64 2153882609, i64 2153883104, i64 2153882646, i64 2153882702, i64 2153882736, i64 2153882760, i64 2153882801, i64 2153882822, i64 2153882850, i64 2153882884}
