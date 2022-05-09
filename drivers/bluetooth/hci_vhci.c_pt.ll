; ModuleID = '/llk/IR_all_yes/drivers/bluetooth/hci_vhci.c_pt.bc'
source_filename = "../drivers/bluetooth/hci_vhci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.122 }
%union.anon.122 = type { ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vhci_data = type { ptr, %struct.wait_queue_head, %struct.sk_buff_head, %struct.mutex, %struct.delayed_work, %struct.work_struct, i8, i8, i16, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, i16, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.46, %union.anon.47 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }

@__initcall__kmod_hci_vhci__477_594_vhci_miscdev_init6 = internal global ptr @vhci_miscdev_init, section ".initcall6.init", align 4
@vhci_miscdev = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 137, ptr @.str.3, ptr @vhci_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_vhci_miscdev_exit = internal global ptr @vhci_miscdev_exit, section ".exitcall.exit", align 4
@__param_str_amp = internal constant [13 x i8] c"hci_vhci.amp\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@amp = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_amp = internal constant %struct.kernel_param { ptr @__param_str_amp, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.122 { ptr @amp } }, section "__param", align 4
@__UNIQUE_ID_amptype478 = internal constant [27 x i8] c"hci_vhci.parmtype=amp:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_amp479 = internal constant [47 x i8] c"hci_vhci.parm=amp:Create AMP controller device\00", section ".modinfo", align 1
@__UNIQUE_ID_author480 = internal constant [54 x i8] c"hci_vhci.author=Marcel Holtmann <marcel@holtmann.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description481 = internal constant [58 x i8] c"hci_vhci.description=Bluetooth virtual HCI driver ver 1.5\00", section ".modinfo", align 1
@__UNIQUE_ID_version482 = internal constant [21 x i8] c"hci_vhci.version=1.5\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hci_vhci\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.5\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file483 = internal constant [41 x i8] c"hci_vhci.file=drivers/bluetooth/hci_vhci\00", section ".modinfo", align 1
@__UNIQUE_ID_license484 = internal constant [21 x i8] c"hci_vhci.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias485 = internal constant [28 x i8] c"hci_vhci.alias=devname:vhci\00", section ".modinfo", align 1
@__UNIQUE_ID_alias486 = internal constant [33 x i8] c"hci_vhci.alias=char-major-10-137\00", section ".modinfo", align 1
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vhci\00", [27 x i8] zeroinitializer }, align 32
@vhci_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @vhci_read, ptr null, ptr null, ptr @vhci_write, ptr null, ptr null, ptr null, ptr @vhci_poll, ptr null, ptr null, ptr null, i32 0, ptr @vhci_open, ptr null, ptr @vhci_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/bluetooth/hci_vhci.c\00", [35 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Can't register HCI device\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"force_suspend\00", [18 x i8] zeroinitializer }, align 32
@force_suspend_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @force_suspend_read, ptr @force_suspend_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"force_wakeup\00", [19 x i8] zeroinitializer }, align 32
@force_wakeup_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @force_wakeup_read, ptr @force_wakeup_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"msft_opcode\00", [20 x i8] zeroinitializer }, align 32
@msft_opcode_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @msft_opcode_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aosp_capable\00", [19 x i8] zeroinitializer }, align 32
@aosp_capable_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @aosp_capable_read, ptr @aosp_capable_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@vhci_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&data->read_wait\00", [47 x i8] zeroinitializer }, align 32
@vhci_open.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&data->open_mutex\00", [46 x i8] zeroinitializer }, align 32
@vhci_open.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&data->open_timeout)->work)\00", [48 x i8] zeroinitializer }, align 32
@vhci_open.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&data->open_timeout)->timer\00", [34 x i8] zeroinitializer }, align 32
@vhci_open.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&data->suspend_work)\00", [57 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [7 x i64] [i64 5, i64 8, i64 2, i64 3, i64 4, i64 5, i64 255]
@___asan_gen_.25 = private unnamed_addr constant [13 x i8] c"vhci_miscdev\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 589, i32 26 }
@___asan_gen_.28 = private unnamed_addr constant [4 x i8] c"amp\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 31, i32 13 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 601, i32 1 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 590, i32 10 }
@___asan_gen_.43 = private unnamed_addr constant [10 x i8] c"vhci_fops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 579, i32 37 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 497, i32 9 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 230, i32 6 }
@___asan_gen_.53 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 214, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 174, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 337, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 344, i32 22 }
@___asan_gen_.64 = private unnamed_addr constant [19 x i8] c"force_suspend_fops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 153, i32 37 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 347, i32 22 }
@___asan_gen_.70 = private unnamed_addr constant [18 x i8] c"force_wakeup_fops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 192, i32 37 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 351, i32 23 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"msft_opcode_fops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 355, i32 23 }
@___asan_gen_.82 = private unnamed_addr constant [18 x i8] c"aosp_capable_fops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 261, i32 37 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 223, i32 1 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 543, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 545, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 546, i32 2 }
@___asan_gen_.116 = private constant [32 x i8] c"../drivers/bluetooth/hci_vhci.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 547, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 1984, i32 2 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_alias485, ptr @__UNIQUE_ID_alias486, ptr @__UNIQUE_ID_amp479, ptr @__UNIQUE_ID_amptype478, ptr @__UNIQUE_ID_author480, ptr @__UNIQUE_ID_description481, ptr @__UNIQUE_ID_file483, ptr @__UNIQUE_ID_license484, ptr @__UNIQUE_ID_version482, ptr @__exitcall_vhci_miscdev_exit, ptr @__initcall__kmod_hci_vhci__477_594_vhci_miscdev_init6, ptr @__modver_attr, ptr @__param_amp, ptr @vhci_miscdev_exit, ptr @vhci_miscdev, ptr @amp, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @vhci_fops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @force_suspend_fops, ptr @.str.10, ptr @force_wakeup_fops, ptr @.str.11, ptr @msft_opcode_fops, ptr @.str.12, ptr @aosp_capable_fops, ptr @.str.13, ptr @vhci_open.__key, ptr @.str.14, ptr @vhci_open.__key.15, ptr @.str.16, ptr @vhci_open.__key.17, ptr @.str.18, ptr @vhci_open.__key.19, ptr @.str.20, ptr @vhci_open.__key.21, ptr @.str.22, ptr @skb_queue_head_init.__key, ptr @.str.23], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_miscdev to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amp to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_suspend_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_wakeup_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msft_opcode_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aosp_capable_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_open.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_open.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_open.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_open.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vhci_miscdev_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @misc_register(ptr noundef nonnull @vhci_miscdev) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vhci_miscdev_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @misc_deregister(ptr noundef nonnull @vhci_miscdev) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhci_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %pos) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %readq = getelementptr inbounds %struct.vhci_data, ptr %1, i32 0, i32 2
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %read_wait = getelementptr inbounds %struct.vhci_data, ptr %1, i32 0, i32 1
  %call81 = call ptr @skb_dequeue(ptr noundef %readq) #11
  %tobool1.not82 = icmp eq ptr %call81, null
  br i1 %tobool1.not82, label %while.body.lr.ph.if.end5_crit_edge, label %while.body.lr.ph.if.then_crit_edge

while.body.lr.ph.if.then_crit_edge:               ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

while.body.lr.ph.if.end5_crit_edge:               ; preds = %while.body.lr.ph
  br label %if.end5

while.cond:                                       ; preds = %if.end27.while.cond_crit_edge, %if.end27.thread73, %if.end8.while.cond_crit_edge
  %call = call ptr @skb_dequeue(ptr noundef %readq) #11
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %while.cond.if.end5_crit_edge, label %while.cond.if.then_crit_edge

while.cond.if.then_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

while.cond.if.end5_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then:                                          ; preds = %while.cond.if.then_crit_edge, %while.body.lr.ph.if.then_crit_edge
  %call.lcssa = phi ptr [ %call81, %while.body.lr.ph.if.then_crit_edge ], [ %call, %while.cond.if.then_crit_edge ]
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %call.lcssa, i32 0, i32 6
  %2 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len1.i, align 4
  %4 = call i32 @llvm.umin.i32(i32 %3, i32 %count) #11
  %data2.i = getelementptr inbounds %struct.sk_buff, ptr %call.lcssa, i32 0, i32 19
  %5 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp9.i.i.i = icmp slt i32 %4, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.then
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.if.then3_crit_edge, label %if.then27.i.i.i, !prof !88

land.rhs16.i.i.i.if.then3_crit_edge:              ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %if.then3

if.then.i.i.i.i:                                  ; preds = %if.then
  call void @__check_object_size(ptr noundef %6, i32 noundef %4, i1 noundef zeroext true) #11
  call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 174) #11
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i, label %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge, label %if.end.i.i.i

if.then.i.i.i.i.copy_to_user.exit.i_crit_edge:    ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i.i
  %7 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %4, i32 -1226833920) #14, !srcloc !89
  %asmresult.i.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then2.i.i.i, label %if.end.i.i.i.copy_to_user.exit.i_crit_edge

if.end.i.i.i.copy_to_user.exit.i_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %6, i32 noundef %4) #11
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %6, i32 noundef %4) #11
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i.i.copy_to_user.exit.i_crit_edge, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i.i = phi i32 [ %4, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %4, %if.end.i.i.i.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %tobool.not.i = icmp eq i32 %n.addr.0.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %copy_to_user.exit.i.if.then3_crit_edge

copy_to_user.exit.i.if.then3_crit_edge:           ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

if.end.i:                                         ; preds = %copy_to_user.exit.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %tobool3.not.i = icmp eq ptr %9, null
  br i1 %tobool3.not.i, label %if.end.i.if.else_crit_edge, label %if.end5.i

if.end.i.if.else_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.end5.i:                                        ; preds = %if.end.i
  %byte_tx.i = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 199, i32 9
  %10 = ptrtoint ptr %byte_tx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %byte_tx.i, align 4
  %add.i = add i32 %11, %4
  store i32 %add.i, ptr %byte_tx.i, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.lcssa, i32 0, i32 3
  %12 = ptrtoint ptr %cb.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cb.i, align 8
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i8 %13, label %if.end5.i.if.else_crit_edge [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb9.i
    i8 3, label %sw.bb13.i
  ]

if.end5.i.if.else_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

sw.bb.i:                                          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %cmd_tx.i = getelementptr inbounds %struct.hci_dev, ptr %16, i32 0, i32 199, i32 2
  br label %if.else.sink.split

sw.bb9.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %acl_tx.i = getelementptr inbounds %struct.hci_dev, ptr %18, i32 0, i32 199, i32 4
  br label %if.else.sink.split

sw.bb13.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %sco_tx.i = getelementptr inbounds %struct.hci_dev, ptr %20, i32 0, i32 199, i32 6
  br label %if.else.sink.split

if.then3:                                         ; preds = %copy_to_user.exit.i.if.then3_crit_edge, %if.then27.i.i.i, %land.rhs16.i.i.i.if.then3_crit_edge
  call void @skb_queue_head(ptr noundef %readq, ptr noundef nonnull %call.lcssa) #11
  br label %while.end

if.else.sink.split:                               ; preds = %sw.bb13.i, %sw.bb9.i, %sw.bb.i
  %sco_tx.i.sink78 = phi ptr [ %sco_tx.i, %sw.bb13.i ], [ %acl_tx.i, %sw.bb9.i ], [ %cmd_tx.i, %sw.bb.i ]
  %21 = ptrtoint ptr %sco_tx.i.sink78 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sco_tx.i.sink78, align 8
  %inc16.i = add i32 %22, 1
  store i32 %inc16.i, ptr %sco_tx.i.sink78, align 8
  br label %if.else

if.else:                                          ; preds = %if.else.sink.split, %if.end5.i.if.else_crit_edge, %if.end.i.if.else_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.lcssa, i32 noundef 0) #11
  br label %while.end

if.end5:                                          ; preds = %while.cond.if.end5_crit_edge, %while.body.lr.ph.if.end5_crit_edge
  %23 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %f_flags, align 4
  %and = and i32 %24, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end8, label %if.end5.while.end_crit_edge

if.end5.while.end_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end8:                                          ; preds = %if.end5
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 498) #11
  %25 = ptrtoint ptr %readq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %readq, align 4
  %cmp.i.not = icmp eq ptr %26, %readq
  br i1 %cmp.i.not, label %if.then15, label %if.end8.while.cond_crit_edge

if.end8.while.cond_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

if.then15:                                        ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %27 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %call1763 = call i32 @prepare_to_wait_event(ptr noundef %read_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %28 = ptrtoint ptr %readq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %readq, align 4
  %cmp.i49.not64 = icmp eq ptr %29, %readq
  br i1 %cmp.i49.not64, label %if.then15.if.end22_crit_edge, label %if.then15.if.end27.thread73_crit_edge

if.then15.if.end27.thread73_crit_edge:            ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.thread73

if.then15.if.end22_crit_edge:                     ; preds = %if.then15
  br label %if.end22

if.end22:                                         ; preds = %cleanup.if.end22_crit_edge, %if.then15.if.end22_crit_edge
  %call1765 = phi i32 [ %call17, %cleanup.if.end22_crit_edge ], [ %call1763, %if.then15.if.end22_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1765)
  %tobool23.not = icmp eq i32 %call1765, 0
  br i1 %tobool23.not, label %cleanup, label %if.end27

cleanup:                                          ; preds = %if.end22
  call void @schedule() #11
  %call17 = call i32 @prepare_to_wait_event(ptr noundef %read_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %30 = ptrtoint ptr %readq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %readq, align 4
  %cmp.i49.not = icmp eq ptr %31, %readq
  br i1 %cmp.i49.not, label %cleanup.if.end22_crit_edge, label %cleanup.if.end27.thread73_crit_edge

cleanup.if.end27.thread73_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.thread73

cleanup.if.end22_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.end27.thread73:                                ; preds = %cleanup.if.end27.thread73_crit_edge, %if.then15.if.end27.thread73_crit_edge
  call void @finish_wait(ptr noundef %read_wait, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %while.cond

if.end27:                                         ; preds = %if.end22
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1765)
  %cmp29 = icmp slt i32 %call1765, 0
  br i1 %cmp29, label %if.end27.while.end_crit_edge, label %if.end27.while.cond_crit_edge

if.end27.while.cond_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

if.end27.while.end_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end27.while.end_crit_edge, %if.end5.while.end_crit_edge, %if.else, %if.then3, %entry.while.end_crit_edge
  %ret.1 = phi i32 [ -14, %if.then3 ], [ %4, %if.else ], [ 0, %entry.while.end_crit_edge ], [ -11, %if.end5.while.end_crit_edge ], [ %call1765, %if.end27.while.end_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhci_write(ptr nocapture noundef readonly %iocb, ptr noundef %from) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %count.i.i = getelementptr inbounds %struct.iov_iter, ptr %from, i32 0, i32 4
  %4 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count.i.i, align 8
  %6 = add i32 %5, -1029
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1027, i32 %6)
  %7 = icmp ult i32 %6, -1027
  br i1 %7, label %entry.vhci_get_user.exit_crit_edge, label %if.end.i

entry.vhci_get_user.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %vhci_get_user.exit

if.end.i:                                         ; preds = %entry
  %add.i.i = add nuw nsw i32 %5, 8
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.vhci_get_user.exit_crit_edge, label %if.end4.i

if.end.i.vhci_get_user.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vhci_get_user.exit

if.end4.i:                                        ; preds = %if.end.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %11, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call5.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %5) #11
  tail call void @__check_object_size(ptr noundef %call5.i, i32 noundef %5, i1 noundef zeroext false) #11
  %call3.i.i.i = tail call i32 @_copy_from_iter(ptr noundef %call5.i, i32 noundef %5, ptr noundef %from) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i.i.i, i32 %5)
  %cmp.i.i = icmp eq i32 %call3.i.i.i, %5
  br i1 %cmp.i.i, label %if.end8.i, label %if.then7.i, !prof !88

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @iov_iter_revert(ptr noundef %from, i32 noundef %call3.i.i.i) #11
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #11
  br label %vhci_get_user.exit

if.end8.i:                                        ; preds = %if.end4.i
  %12 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %call10.i = tail call ptr @skb_pull(ptr noundef nonnull %call.i.i.i, i32 noundef 1) #11
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %15, label %sw.default.i [
    i8 4, label %if.end8.i.sw.bb.i_crit_edge
    i8 2, label %if.end8.i.sw.bb.i_crit_edge1
    i8 3, label %if.end8.i.sw.bb.i_crit_edge2
    i8 5, label %if.end8.i.sw.bb.i_crit_edge3
    i8 -1, label %sw.bb17.i
  ]

if.end8.i.sw.bb.i_crit_edge3:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end8.i.sw.bb.i_crit_edge2:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end8.i.sw.bb.i_crit_edge1:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end8.i.sw.bb.i_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end8.i.sw.bb.i_crit_edge, %if.end8.i.sw.bb.i_crit_edge1, %if.end8.i.sw.bb.i_crit_edge2, %if.end8.i.sw.bb.i_crit_edge3
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %tobool11.not.i = icmp eq ptr %18, null
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end13.i

if.then12.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #11
  br label %vhci_get_user.exit

if.end13.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %15, ptr %cb.i, align 8
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %call16.i = tail call i32 @hci_recv_frame(ptr noundef %21, ptr noundef nonnull %call.i.i.i) #11
  br label %sw.epilog.i

sw.bb17.i:                                        ; preds = %if.end8.i
  %open_timeout.i = getelementptr inbounds %struct.vhci_data, ptr %3, i32 0, i32 4
  %call18.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %open_timeout.i) #11
  %22 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 1
  %call20.i = tail call ptr @skb_pull(ptr noundef nonnull %call.i.i.i, i32 noundef 1) #11
  %len21.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %26 = ptrtoint ptr %len21.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp22.not.i = icmp eq i32 %27, 0
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #11
  br i1 %cmp22.not.i, label %if.end25.i, label %sw.bb17.i.vhci_get_user.exit_crit_edge

sw.bb17.i.vhci_get_user.exit_crit_edge:           ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vhci_get_user.exit

if.end25.i:                                       ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #13
  %call26.i = tail call fastcc i32 @vhci_create_device(ptr noundef %3, i8 noundef zeroext %25) #11
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #11
  br label %vhci_get_user.exit

sw.epilog.i:                                      ; preds = %if.end25.i, %if.end13.i
  %ret.0.i = phi i32 [ %call26.i, %if.end25.i ], [ %call16.i, %if.end13.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp27.i = icmp slt i32 %ret.0.i, 0
  %ret.0.call.i = select i1 %cmp27.i, i32 %ret.0.i, i32 %5
  br label %vhci_get_user.exit

vhci_get_user.exit:                               ; preds = %sw.epilog.i, %sw.default.i, %sw.bb17.i.vhci_get_user.exit_crit_edge, %if.then12.i, %if.then7.i, %if.end.i.vhci_get_user.exit_crit_edge, %entry.vhci_get_user.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %sw.default.i ], [ %ret.0.call.i, %sw.epilog.i ], [ -19, %if.then12.i ], [ -14, %if.then7.i ], [ -22, %entry.vhci_get_user.exit_crit_edge ], [ -12, %if.end.i.vhci_get_user.exit_crit_edge ], [ -22, %sw.bb17.i.vhci_get_user.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhci_poll(ptr noundef %file, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %read_wait = getelementptr inbounds %struct.vhci_data, ptr %1, i32 0, i32 1
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %read_wait, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %3(ptr noundef %file, ptr noundef nonnull %read_wait, ptr noundef nonnull %wait) #11
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %readq = getelementptr inbounds %struct.vhci_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %readq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %readq, align 4
  %cmp.i.not = icmp eq ptr %5, %readq
  %. = select i1 %cmp.i.not, i32 260, i32 65
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhci_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 356) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %readq = getelementptr inbounds %struct.vhci_data, ptr %call7.i.i, i32 0, i32 2
  %lock.i = getelementptr inbounds %struct.vhci_data, ptr %call7.i.i, i32 0, i32 2, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #11
  %1 = ptrtoint ptr %readq to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %readq, ptr %readq, align 8
  %prev.i.i = getelementptr inbounds %struct.vhci_data, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %readq, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.vhci_data, ptr %call7.i.i, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %qlen.i.i, align 8
  %read_wait = getelementptr inbounds %struct.vhci_data, ptr %call7.i.i, i32 0, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %read_wait, ptr noundef nonnull @.str.14, ptr noundef nonnull @vhci_open.__key) #11
  %open_mutex = getelementptr inbounds %struct.vhci_data, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %open_mutex, ptr noundef nonnull @.str.16, ptr noundef nonnull @vhci_open.__key.15) #11
  %open_timeout = getelementptr inbounds %struct.vhci_data, ptr %call7.i.i, i32 0, i32 4
  tail call void @__init_work(ptr noundef %open_timeout, i32 noundef 0) #11
  %4 = ptrtoint ptr %open_timeout to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %open_timeout, align 4
  %lockdep_map = getelementptr inbounds %struct.vhci_data, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.18, ptr noundef nonnull @vhci_open.__key.17, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry13 = getelementptr inbounds %struct.vhci_data, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 1
  %5 = ptrtoint ptr %entry13 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry13, ptr %entry13, align 8
  %prev.i = getelementptr inbounds %struct.vhci_data, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry13, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.vhci_data, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 2
  %7 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @vhci_open_timeout, ptr %func, align 8
  %timer = getelementptr inbounds %struct.vhci_data, ptr %call7.i.i, i32 0, i32 4, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.20, ptr noundef nonnull @vhci_open.__key.19) #11
  %suspend_work = getelementptr inbounds %struct.vhci_data, ptr %call7.i.i, i32 0, i32 5
  tail call void @__init_work(ptr noundef %suspend_work, i32 noundef 0) #11
  %8 = ptrtoint ptr %suspend_work to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %suspend_work, align 8
  %lockdep_map30 = getelementptr inbounds %struct.vhci_data, ptr %call7.i.i, i32 0, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map30, ptr noundef nonnull @.str.22, ptr noundef nonnull @vhci_open.__key.21, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry32 = getelementptr inbounds %struct.vhci_data, ptr %call7.i.i, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %entry32 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry32, ptr %entry32, align 4
  %prev.i58 = getelementptr inbounds %struct.vhci_data, ptr %call7.i.i, i32 0, i32 5, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i58 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry32, ptr %prev.i58, align 8
  %func34 = getelementptr inbounds %struct.vhci_data, ptr %call7.i.i, i32 0, i32 5, i32 2
  %11 = ptrtoint ptr %func34 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @vhci_suspend_work, ptr %func34, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %12 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %private_data, align 4
  %call37 = tail call i32 @nonseekable_open(ptr noundef %inode, ptr noundef %file) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %13 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %open_timeout, i32 noundef 100) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhci_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %open_timeout = getelementptr inbounds %struct.vhci_data, ptr %1, i32 0, i32 4
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %open_timeout) #11
  %suspend_work = getelementptr inbounds %struct.vhci_data, ptr %1, i32 0, i32 5
  %call1 = tail call zeroext i1 @flush_work(ptr noundef %suspend_work) #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @hci_unregister_dev(ptr noundef nonnull %3) #11
  tail call void @hci_free_dev(ptr noundef nonnull %3) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %readq = getelementptr inbounds %struct.vhci_data, ptr %1, i32 0, i32 2
  tail call void @skb_queue_purge(ptr noundef %readq) #11
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %private_data, align 4
  tail call void @kfree(ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_recv_frame(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vhci_create_device(ptr noundef %data, i8 noundef zeroext %opcode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %open_mutex = getelementptr inbounds %struct.vhci_data, ptr %data, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %open_mutex, i32 noundef 0) #11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.__vhci_create_device.exit_crit_edge

entry.__vhci_create_device.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__vhci_create_device.exit

if.end.i:                                         ; preds = %entry
  %conv.i = zext i8 %opcode to i32
  %and.i = and i8 %opcode, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %and.i)
  %switch.i = icmp ult i8 %and.i, 2
  %and11.i = and i32 %conv.i, 60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  %or.cond.i = and i1 %switch.i, %tobool12.not.i
  br i1 %or.cond.i, label %if.end14.i, label %if.end.i.__vhci_create_device.exit_crit_edge

if.end.i.__vhci_create_device.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__vhci_create_device.exit

if.end14.i:                                       ; preds = %if.end.i
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 12, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end14.i.__vhci_create_device.exit_crit_edge, label %if.end17.i

if.end14.i.__vhci_create_device.exit_crit_edge:   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__vhci_create_device.exit

if.end17.i:                                       ; preds = %if.end14.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %5, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call.i.i = tail call ptr @hci_alloc_dev_priv(i32 noundef 0) #11
  %tobool19.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool19.not.i, label %if.then20.i, label %if.end21.i

if.then20.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #11
  br label %__vhci_create_device.exit

if.end21.i:                                       ; preds = %if.end17.i
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i.i, ptr %data, align 4
  %bus.i = getelementptr inbounds %struct.hci_dev, ptr %call.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %bus.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %bus.i, align 2
  %dev_type23.i = getelementptr inbounds %struct.hci_dev, ptr %call.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %dev_type23.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %and.i, ptr %dev_type23.i, align 1
  %driver_data.i.i.i = getelementptr inbounds %struct.hci_dev, ptr %call.i.i, i32 0, i32 204, i32 8
  %9 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %data, ptr %driver_data.i.i.i, align 4
  %open.i = getelementptr inbounds %struct.hci_dev, ptr %call.i.i, i32 0, i32 232
  %10 = ptrtoint ptr %open.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @vhci_open_dev, ptr %open.i, align 8
  %close.i = getelementptr inbounds %struct.hci_dev, ptr %call.i.i, i32 0, i32 233
  %11 = ptrtoint ptr %close.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @vhci_close_dev, ptr %close.i, align 4
  %flush.i = getelementptr inbounds %struct.hci_dev, ptr %call.i.i, i32 0, i32 234
  %12 = ptrtoint ptr %flush.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @vhci_flush, ptr %flush.i, align 8
  %send.i = getelementptr inbounds %struct.hci_dev, ptr %call.i.i, i32 0, i32 237
  %13 = ptrtoint ptr %send.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @vhci_send_frame, ptr %send.i, align 4
  %get_data_path_id.i = getelementptr inbounds %struct.hci_dev, ptr %call.i.i, i32 0, i32 246
  %14 = ptrtoint ptr %get_data_path_id.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @vhci_get_data_path_id, ptr %get_data_path_id.i, align 8
  %get_codec_config_data.i = getelementptr inbounds %struct.hci_dev, ptr %call.i.i, i32 0, i32 247
  %15 = ptrtoint ptr %get_codec_config_data.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @vhci_get_codec_config_data, ptr %get_codec_config_data.i, align 4
  %wakeup.i = getelementptr inbounds %struct.hci_dev, ptr %call.i.i, i32 0, i32 244
  %16 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @vhci_wakeup, ptr %wakeup.i, align 8
  %setup.i = getelementptr inbounds %struct.hci_dev, ptr %call.i.i, i32 0, i32 235
  %17 = ptrtoint ptr %setup.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @vhci_setup, ptr %setup.i, align 4
  %quirks.i = getelementptr inbounds %struct.hci_dev, ptr %call.i.i, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 12, ptr noundef %quirks.i) #11
  %and25.i = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.end21.i.if.end29.i_crit_edge, label %if.then27.i

if.end21.i.if.end29.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29.i

if.then27.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 6, ptr noundef %quirks.i) #11
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then27.i, %if.end21.i.if.end29.i_crit_edge
  %and31.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %if.end29.i.if.end35.i_crit_edge, label %if.then33.i

if.end29.i.if.end35.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.i

if.then33.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %quirks.i) #11
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then33.i, %if.end29.i.if.end35.i_crit_edge
  tail call void @_set_bit(i32 noundef 14, ptr noundef %quirks.i) #11
  %call37.i = tail call i32 @hci_register_dev(ptr noundef nonnull %call.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %cmp38.i = icmp slt i32 %call37.i, 0
  br i1 %cmp38.i, label %if.then40.i, label %if.end42.i

if.then40.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.8) #11
  tail call void @hci_free_dev(ptr noundef nonnull %call.i.i) #11
  %18 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %data, align 4
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #11
  br label %__vhci_create_device.exit

if.end42.i:                                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  %debugfs.i = getelementptr inbounds %struct.hci_dev, ptr %call.i.i, i32 0, i32 203
  %19 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %debugfs.i, align 4
  %call43.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.9, i16 noundef zeroext 420, ptr noundef %20, ptr noundef %data, ptr noundef nonnull @force_suspend_fops) #11
  %21 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %debugfs.i, align 4
  %call45.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.10, i16 noundef zeroext 420, ptr noundef %22, ptr noundef %data, ptr noundef nonnull @force_wakeup_fops) #11
  %23 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %debugfs.i, align 4
  %call47.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.11, i16 noundef zeroext 420, ptr noundef %24, ptr noundef %data, ptr noundef nonnull @msft_opcode_fops) #11
  %25 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %debugfs.i, align 4
  %call49.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.12, i16 noundef zeroext 420, ptr noundef %26, ptr noundef %data, ptr noundef nonnull @aosp_capable_fops) #11
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %cb.i, align 8
  %call.i98.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 1) #11
  %28 = ptrtoint ptr %call.i98.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %call.i98.i, align 1
  %call.i99.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 1) #11
  %29 = ptrtoint ptr %call.i99.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %opcode, ptr %call.i99.i, align 1
  %id.i = getelementptr inbounds %struct.hci_dev, ptr %call.i.i, i32 0, i32 4
  %30 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %id.i, align 8
  %call50.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 2) #11
  %32 = tail call i16 @llvm.bswap.i16(i16 %31) #11
  %33 = ptrtoint ptr %call50.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 %32, ptr %call50.i, align 1
  %readq.i = getelementptr inbounds %struct.vhci_data, ptr %data, i32 0, i32 2
  tail call void @skb_queue_tail(ptr noundef %readq.i, ptr noundef nonnull %call.i.i.i) #11
  %read_wait.i = getelementptr inbounds %struct.vhci_data, ptr %data, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %read_wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  br label %__vhci_create_device.exit

__vhci_create_device.exit:                        ; preds = %if.end42.i, %if.then40.i, %if.then20.i, %if.end14.i.__vhci_create_device.exit_crit_edge, %if.end.i.__vhci_create_device.exit_crit_edge, %entry.__vhci_create_device.exit_crit_edge
  %retval.0.i = phi i32 [ -16, %if.then40.i ], [ 0, %if.end42.i ], [ -12, %if.then20.i ], [ -77, %entry.__vhci_create_device.exit_crit_edge ], [ -22, %if.end.i.__vhci_create_device.exit_crit_edge ], [ -12, %if.end14.i.__vhci_create_device.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %open_mutex) #11
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vhci_open_dev(ptr nocapture noundef readnone %hdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhci_close_dev(ptr nocapture noundef readonly %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %readq = getelementptr inbounds %struct.vhci_data, ptr %1, i32 0, i32 2
  tail call void @skb_queue_purge(ptr noundef %readq) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhci_flush(ptr nocapture noundef readonly %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %readq = getelementptr inbounds %struct.vhci_data, ptr %1, i32 0, i32 2
  tail call void @skb_queue_purge(ptr noundef %readq) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhci_send_frame(ptr nocapture noundef readonly %hdev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #11
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cb, align 8
  %4 = ptrtoint ptr %call1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %call1, align 1
  %readq = getelementptr inbounds %struct.vhci_data, ptr %1, i32 0, i32 2
  tail call void @skb_queue_tail(ptr noundef %readq, ptr noundef %skb) #11
  %read_wait = getelementptr inbounds %struct.vhci_data, ptr %1, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %read_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @vhci_get_data_path_id(ptr nocapture noundef readnone %hdev, ptr nocapture noundef writeonly %data_path_id) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data_path_id to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %data_path_id, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @vhci_get_codec_config_data(ptr nocapture noundef readnone %hdev, i8 noundef zeroext %type, ptr nocapture noundef readnone %codec, ptr nocapture noundef writeonly %vnd_len, ptr nocapture noundef writeonly %vnd_data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %type)
  %cmp.not = icmp eq i8 %type, 2
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %vnd_len to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %vnd_len, align 1
  %1 = ptrtoint ptr %vnd_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %vnd_data, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @vhci_wakeup(ptr nocapture noundef readonly %hdev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %wakeup = getelementptr inbounds %struct.vhci_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %wakeup to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %wakeup, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool = icmp ne i8 %3, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vhci_setup(ptr nocapture noundef %hdev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %msft_opcode = getelementptr inbounds %struct.vhci_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %msft_opcode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %msft_opcode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %msft_opcode.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 227
  %4 = ptrtoint ptr %msft_opcode.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %msft_opcode.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %aosp_capable = getelementptr inbounds %struct.vhci_data, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %aosp_capable to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %aosp_capable, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %aosp_capable.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 230
  %7 = ptrtoint ptr %aosp_capable.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %aosp_capable.i, align 1
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_register_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_free_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_alloc_dev_priv(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @force_suspend_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #11
  %2 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %suspended = getelementptr inbounds %struct.vhci_data, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %suspended, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %conv = select i1 %tobool.not, i8 78, i8 89
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %buf, align 1
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 10, ptr %2, align 1
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %3, align 1
  %call = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef 2) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @force_suspend_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %enable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %enable) #11
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %enable, align 1, !annotation !91
  %call = call i32 @kstrtobool_from_user(ptr noundef %user_buf, i32 noundef %count, ptr noundef nonnull %enable) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %suspended = getelementptr inbounds %struct.vhci_data, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %suspended, align 4, !range !90
  %5 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enable, align 1, !range !90
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %6)
  %cmp = icmp eq i8 %4, %6
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %suspended, align 4
  %suspend_work = getelementptr inbounds %struct.vhci_data, ptr %1, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %suspend_work) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end6 ], [ %call, %entry.cleanup_crit_edge ], [ -114, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %enable) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool_from_user(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @force_wakeup_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #11
  %2 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %wakeup = getelementptr inbounds %struct.vhci_data, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %wakeup to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %wakeup, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %conv = select i1 %tobool.not, i8 78, i8 89
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %buf, align 1
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 10, ptr %2, align 1
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %3, align 1
  %call = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef 2) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @force_wakeup_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %enable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %enable) #11
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %enable, align 1, !annotation !91
  %call = call i32 @kstrtobool_from_user(ptr noundef %user_buf, i32 noundef %count, ptr noundef nonnull %enable) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %wakeup = getelementptr inbounds %struct.vhci_data, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %wakeup to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %wakeup, align 1, !range !90
  %5 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enable, align 1, !range !90
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %6)
  %cmp = icmp eq i8 %4, %6
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %wakeup to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %wakeup, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end6 ], [ %call, %entry.cleanup_crit_edge ], [ -114, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %enable) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msft_opcode_fops_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @msft_opcode_get, ptr noundef nonnull @msft_opcode_set, ptr noundef nonnull @.str.13) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @msft_opcode_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %msft_opcode = getelementptr inbounds %struct.vhci_data, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %msft_opcode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %msft_opcode, align 2
  %conv = zext i16 %1 to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @msft_opcode_set(ptr nocapture noundef %data, i64 noundef %val) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i64 %val, -1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 64512, i64 %0)
  %1 = icmp eq i64 %0, 64512
  br i1 %1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %msft_opcode = getelementptr inbounds %struct.vhci_data, ptr %data, i32 0, i32 8
  %2 = ptrtoint ptr %msft_opcode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %msft_opcode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv = trunc i64 %val to i16
  %4 = ptrtoint ptr %msft_opcode to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %msft_opcode, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -114, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aosp_capable_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #11
  %2 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %aosp_capable = getelementptr inbounds %struct.vhci_data, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %aosp_capable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %aosp_capable, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %conv = select i1 %tobool.not, i8 78, i8 89
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %buf, align 1
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 10, ptr %2, align 1
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %3, align 1
  %call = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef 2) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aosp_capable_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %enable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %enable) #11
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %enable, align 1, !annotation !91
  %call = call i32 @kstrtobool_from_user(ptr noundef %user_buf, i32 noundef %count, ptr noundef nonnull %enable) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enable, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %aosp_capable = getelementptr inbounds %struct.vhci_data, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %aosp_capable to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %aosp_capable, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not = icmp eq i8 %6, 0
  br i1 %tobool4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %aosp_capable to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %aosp_capable, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end6 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -114, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %enable) #11
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vhci_open_timeout(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -204
  %0 = load i8, ptr @amp, align 1, !range !90
  %call = tail call fastcc i32 @vhci_create_device(ptr noundef %add.ptr, i8 noundef zeroext %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vhci_suspend_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -304
  %suspended = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %suspended, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @hci_suspend_dev(ptr noundef %3) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 @hci_resume_dev(ptr noundef %3) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_suspend_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_resume_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_unregister_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !59, !61, !63, !64, !66, !67, !69, !70, !71, !72, !74, !75, !77, !78}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @__initcall__kmod_hci_vhci__477_594_vhci_miscdev_init6, !1, !"__initcall__kmod_hci_vhci__477_594_vhci_miscdev_init6", i1 false, i1 false}
!1 = !{!"../drivers/bluetooth/hci_vhci.c", i32 594, i32 1}
!2 = !{ptr @__exitcall_vhci_miscdev_exit, !1, !"__exitcall_vhci_miscdev_exit", i1 false, i1 false}
!3 = !{ptr @__param_amp, !4, !"__param_amp", i1 false, i1 false}
!4 = !{!"../drivers/bluetooth/hci_vhci.c", i32 596, i32 1}
!5 = !{ptr @__UNIQUE_ID_amptype478, !4, !"__UNIQUE_ID_amptype478", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_amp479, !7, !"__UNIQUE_ID_amp479", i1 false, i1 false}
!7 = !{!"../drivers/bluetooth/hci_vhci.c", i32 597, i32 1}
!8 = !{ptr @__UNIQUE_ID_author480, !9, !"__UNIQUE_ID_author480", i1 false, i1 false}
!9 = !{!"../drivers/bluetooth/hci_vhci.c", i32 599, i32 1}
!10 = !{ptr @__UNIQUE_ID_description481, !11, !"__UNIQUE_ID_description481", i1 false, i1 false}
!11 = !{!"../drivers/bluetooth/hci_vhci.c", i32 600, i32 1}
!12 = !{ptr @__UNIQUE_ID_version482, !13, !"__UNIQUE_ID_version482", i1 false, i1 false}
!13 = !{!"../drivers/bluetooth/hci_vhci.c", i32 601, i32 1}
!14 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @__modver_attr, !13, !"__modver_attr", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_file483, !19, !"__UNIQUE_ID_file483", i1 false, i1 false}
!19 = !{!"../drivers/bluetooth/hci_vhci.c", i32 602, i32 1}
!20 = !{ptr @__UNIQUE_ID_license484, !19, !"__UNIQUE_ID_license484", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_alias485, !22, !"__UNIQUE_ID_alias485", i1 false, i1 false}
!22 = !{!"../drivers/bluetooth/hci_vhci.c", i32 603, i32 1}
!23 = !{ptr @__UNIQUE_ID_alias486, !24, !"__UNIQUE_ID_alias486", i1 false, i1 false}
!24 = !{!"../drivers/bluetooth/hci_vhci.c", i32 604, i32 1}
!25 = !{ptr @amp, !26, !"amp", i1 false, i1 false}
!26 = !{!"../drivers/bluetooth/hci_vhci.c", i32 31, i32 13}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/bluetooth/hci_vhci.c", i32 590, i32 10}
!29 = !{ptr @vhci_miscdev, !30, !"vhci_miscdev", i1 false, i1 false}
!30 = !{!"../drivers/bluetooth/hci_vhci.c", i32 589, i32 26}
!31 = !{ptr @vhci_fops, !32, !"vhci_fops", i1 false, i1 false}
!32 = !{!"../drivers/bluetooth/hci_vhci.c", i32 579, i32 37}
!33 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/bluetooth/hci_vhci.c", i32 497, i32 9}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!37 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!40 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!42 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/bluetooth/hci_vhci.c", i32 337, i32 3}
!44 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/bluetooth/hci_vhci.c", i32 344, i32 22}
!46 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/bluetooth/hci_vhci.c", i32 347, i32 22}
!48 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/bluetooth/hci_vhci.c", i32 351, i32 23}
!50 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/bluetooth/hci_vhci.c", i32 355, i32 23}
!52 = !{ptr @force_suspend_fops, !53, !"force_suspend_fops", i1 false, i1 false}
!53 = !{!"../drivers/bluetooth/hci_vhci.c", i32 153, i32 37}
!54 = !{ptr @force_wakeup_fops, !55, !"force_wakeup_fops", i1 false, i1 false}
!55 = !{!"../drivers/bluetooth/hci_vhci.c", i32 192, i32 37}
!56 = !{ptr @msft_opcode_fops, !57, !"msft_opcode_fops", i1 false, i1 false}
!57 = !{!"../drivers/bluetooth/hci_vhci.c", i32 223, i32 1}
!58 = !{ptr @.str.13, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @aosp_capable_fops, !60, !"aosp_capable_fops", i1 false, i1 false}
!60 = !{!"../drivers/bluetooth/hci_vhci.c", i32 261, i32 37}
!61 = !{ptr @vhci_open.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../drivers/bluetooth/hci_vhci.c", i32 543, i32 2}
!63 = !{ptr @.str.14, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @vhci_open.__key.15, !65, !"__key", i1 false, i1 false}
!65 = !{!"../drivers/bluetooth/hci_vhci.c", i32 545, i32 2}
!66 = !{ptr @.str.16, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @vhci_open.__key.17, !68, !"__key", i1 false, i1 false}
!68 = !{!"../drivers/bluetooth/hci_vhci.c", i32 546, i32 2}
!69 = !{ptr @.str.18, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @vhci_open.__key.19, !68, !"__key", i1 false, i1 false}
!71 = !{ptr @.str.20, !68, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @vhci_open.__key.21, !73, !"__key", i1 false, i1 false}
!73 = !{!"../drivers/bluetooth/hci_vhci.c", i32 547, i32 2}
!74 = !{ptr @.str.22, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @skb_queue_head_init.__key, !76, !"__key", i1 false, i1 false}
!76 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!77 = !{ptr @.str.23, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @__param_str_amp, !4, !"__param_str_amp", i1 false, i1 false}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{!"branch_weights", i32 2000, i32 1}
!89 = !{i64 2152824930, i64 2152824955}
!90 = !{i8 0, i8 2}
!91 = !{!"auto-init"}
