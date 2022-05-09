; ModuleID = '/llk/IR_all_yes/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c_pt.bc'
source_filename = "../drivers/char/ipmi/kcs_bmc_cdev_ipmi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kcs_bmc_driver = type { %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.kcs_bmc_driver_ops = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kcs_bmc_client_ops = type { ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kcs_bmc_device = type { %struct.list_head, ptr, i32, %struct.kcs_ioreg, ptr, %struct.spinlock, ptr }
%struct.kcs_ioreg = type { i32, i32, i32 }
%struct.kcs_bmc_ipmi = type { %struct.list_head, %struct.kcs_bmc_client, %struct.spinlock, i32, i32, %struct.wait_queue_head, i8, i32, ptr, i32, i32, ptr, %struct.mutex, ptr, %struct.miscdevice }
%struct.kcs_bmc_client = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__initcall__kmod_kcs_bmc_cdev_ipmi__223_557_kcs_bmc_ipmi_init6 = internal global ptr @kcs_bmc_ipmi_init, section ".initcall6.init", align 4
@__exitcall_kcs_bmc_ipmi_exit = internal global ptr @kcs_bmc_ipmi_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file224 = internal constant [59 x i8] c"kcs_bmc_cdev_ipmi.file=drivers/char/ipmi/kcs_bmc_cdev_ipmi\00", section ".modinfo", align 1
@__UNIQUE_ID_license225 = internal constant [33 x i8] c"kcs_bmc_cdev_ipmi.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author226 = internal constant [67 x i8] c"kcs_bmc_cdev_ipmi.author=Haiyue Wang <haiyue.wang@linux.intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author227 = internal constant [58 x i8] c"kcs_bmc_cdev_ipmi.author=Andrew Jeffery <andrew@aj.id.au>\00", section ".modinfo", align 1
@__UNIQUE_ID_description228 = internal constant [86 x i8] c"kcs_bmc_cdev_ipmi.description=KCS BMC to handle the IPMI request from system software\00", section ".modinfo", align 1
@kcs_bmc_ipmi_driver = internal global { %struct.kcs_bmc_driver, [20 x i8] } { %struct.kcs_bmc_driver { %struct.list_head zeroinitializer, ptr @kcs_bmc_ipmi_driver_ops }, [20 x i8] zeroinitializer }, align 32
@kcs_bmc_ipmi_driver_ops = internal constant { %struct.kcs_bmc_driver_ops, [24 x i8] } { %struct.kcs_bmc_driver_ops { ptr @kcs_bmc_ipmi_add_device, ptr @kcs_bmc_ipmi_remove_device }, [24 x i8] zeroinitializer }, align 32
@kcs_bmc_ipmi_add_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@kcs_bmc_ipmi_add_device.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&priv->mutex\00", [19 x i8] zeroinitializer }, align 32
@kcs_bmc_ipmi_add_device.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&priv->queue\00", [19 x i8] zeroinitializer }, align 32
@kcs_bmc_ipmi_client_ops = internal constant { %struct.kcs_bmc_client_ops, [28 x i8] } { %struct.kcs_bmc_client_ops { ptr @kcs_bmc_ipmi_event }, [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%u\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ipmi-kcs\00", [23 x i8] zeroinitializer }, align 32
@kcs_bmc_ipmi_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @kcs_bmc_ipmi_read, ptr @kcs_bmc_ipmi_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kcs_bmc_ipmi_poll, ptr @kcs_bmc_ipmi_ioctl, ptr null, ptr null, i32 0, ptr @kcs_bmc_ipmi_open, ptr null, ptr @kcs_bmc_ipmi_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@kcs_bmc_ipmi_add_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 502, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to register device: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"kcs_bmc_ipmi_add_device\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/char/ipmi/kcs_bmc_cdev_ipmi.c\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@kcs_bmc_ipmi_add_device._entry_ptr = internal global ptr @kcs_bmc_ipmi_add_device._entry, section ".printk_index", align 4
@kcs_bmc_ipmi_instances_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@kcs_bmc_ipmi_instances = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @kcs_bmc_ipmi_instances, ptr @kcs_bmc_ipmi_instances }, [24 x i8] zeroinitializer }, align 32
@kcs_bmc_ipmi_add_device._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.9, i32 510, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Initialised IPMI client for channel %d\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@kcs_bmc_ipmi_add_device._entry_ptr.15 = internal global ptr @kcs_bmc_ipmi_add_device._entry.12, section ".printk_index", align 4
@kcs_bmc_ipmi_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.9, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013kcs-bmc: channel=%u with too large data : %zu\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"kcs_bmc_ipmi_read\00", [46 x i8] zeroinitializer }, align 32
@kcs_bmc_ipmi_read._entry_ptr = internal global ptr @kcs_bmc_ipmi_read._entry, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"kcs_bmc_ipmi_instances_lock\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 96, i64 97, i64 98]
@__sancov_gen_cov_switch_values.22 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 32, i64 45312, i64 45313, i64 45314]
@___asan_gen_.24 = private unnamed_addr constant [20 x i8] c"kcs_bmc_ipmi_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 547, i32 30 }
@___asan_gen_.27 = private unnamed_addr constant [24 x i8] c"kcs_bmc_ipmi_driver_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 542, i32 40 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 481, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 482, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 484, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [24 x i8] c"kcs_bmc_ipmi_client_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 289, i32 40 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 493, i32 64 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 493, i32 72 }
@___asan_gen_.57 = private unnamed_addr constant [18 x i8] c"kcs_bmc_ipmi_fops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 459, i32 37 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 502, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [28 x i8] c"kcs_bmc_ipmi_instances_lock\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [23 x i8] c"kcs_bmc_ipmi_instances\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 470, i32 8 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 510, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 348, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 230, i32 6 }
@___asan_gen_.106 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 214, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 174, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.112 = private constant [41 x i8] c"../drivers/char/ipmi/kcs_bmc_cdev_ipmi.c\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 469, i32 8 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_author226, ptr @__UNIQUE_ID_author227, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file224, ptr @__UNIQUE_ID_license225, ptr @__exitcall_kcs_bmc_ipmi_exit, ptr @__initcall__kmod_kcs_bmc_cdev_ipmi__223_557_kcs_bmc_ipmi_init6, ptr @kcs_bmc_ipmi_add_device._entry, ptr @kcs_bmc_ipmi_add_device._entry.12, ptr @kcs_bmc_ipmi_add_device._entry_ptr, ptr @kcs_bmc_ipmi_add_device._entry_ptr.15, ptr @kcs_bmc_ipmi_read._entry, ptr @kcs_bmc_ipmi_read._entry_ptr, ptr @kcs_bmc_ipmi_driver, ptr @kcs_bmc_ipmi_driver_ops, ptr @kcs_bmc_ipmi_add_device.__key, ptr @.str, ptr @kcs_bmc_ipmi_add_device.__key.1, ptr @.str.2, ptr @kcs_bmc_ipmi_add_device.__key.3, ptr @.str.4, ptr @kcs_bmc_ipmi_client_ops, ptr @.str.5, ptr @.str.6, ptr @kcs_bmc_ipmi_fops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @kcs_bmc_ipmi_instances_lock, ptr @kcs_bmc_ipmi_instances, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcs_bmc_ipmi_driver to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcs_bmc_ipmi_driver_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcs_bmc_ipmi_add_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcs_bmc_ipmi_add_device.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcs_bmc_ipmi_add_device.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcs_bmc_ipmi_client_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcs_bmc_ipmi_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcs_bmc_ipmi_add_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcs_bmc_ipmi_instances_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcs_bmc_ipmi_instances to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcs_bmc_ipmi_add_device._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcs_bmc_ipmi_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kcs_bmc_ipmi_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kcs_bmc_register_driver(ptr noundef nonnull @kcs_bmc_ipmi_driver) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kcs_bmc_ipmi_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kcs_bmc_unregister_driver(ptr noundef nonnull @kcs_bmc_ipmi_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kcs_bmc_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kcs_bmc_ipmi_add_device(ptr noundef %kcs_bmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.kcs_bmc_device, ptr %kcs_bmc, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 280, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.kcs_bmc_ipmi, ptr %call.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @kcs_bmc_ipmi_add_device.__key, i16 noundef signext 3) #5
  %mutex = getelementptr inbounds %struct.kcs_bmc_ipmi, ptr %call.i, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.2, ptr noundef nonnull @kcs_bmc_ipmi_add_device.__key.1) #5
  %queue = getelementptr inbounds %struct.kcs_bmc_ipmi, ptr %call.i, i32 0, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %queue, ptr noundef nonnull @.str.4, ptr noundef nonnull @kcs_bmc_ipmi_add_device.__key.3) #5
  %client = getelementptr inbounds %struct.kcs_bmc_ipmi, ptr %call.i, i32 0, i32 1
  %dev8 = getelementptr inbounds %struct.kcs_bmc_ipmi, ptr %call.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %kcs_bmc, ptr %dev8, align 4
  %3 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @kcs_bmc_ipmi_client_ops, ptr %client, align 4
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call11 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 1000, i32 noundef 3264) #5
  %data_in = getelementptr inbounds %struct.kcs_bmc_ipmi, ptr %call.i, i32 0, i32 8
  %6 = ptrtoint ptr %data_in to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call11, ptr %data_in, align 4
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %call13 = tail call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef 1000, i32 noundef 3264) #5
  %data_out = getelementptr inbounds %struct.kcs_bmc_ipmi, ptr %call.i, i32 0, i32 11
  %9 = ptrtoint ptr %data_out to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call13, ptr %data_out, align 4
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %call15 = tail call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef 1000, i32 noundef 3264) #5
  %kbuffer = getelementptr inbounds %struct.kcs_bmc_ipmi, ptr %call.i, i32 0, i32 13
  %12 = ptrtoint ptr %kbuffer to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call15, ptr %kbuffer, align 4
  %miscdev = getelementptr inbounds %struct.kcs_bmc_ipmi, ptr %call.i, i32 0, i32 14
  %13 = ptrtoint ptr %miscdev to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 255, ptr %miscdev, align 4
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %channel = getelementptr inbounds %struct.kcs_bmc_device, ptr %kcs_bmc, i32 0, i32 2
  %16 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %channel, align 4
  %call17 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %15, i32 noundef 3264, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %17) #5
  %name = getelementptr inbounds %struct.kcs_bmc_ipmi, ptr %call.i, i32 0, i32 14, i32 1
  %18 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call17, ptr %name, align 4
  %19 = ptrtoint ptr %data_in to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data_in, align 4
  %tobool20.not = icmp eq ptr %20, null
  br i1 %tobool20.not, label %do.body.cleanup_crit_edge, label %lor.lhs.false

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.body
  %21 = ptrtoint ptr %data_out to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data_out, align 4
  %tobool22.not = icmp eq ptr %22, null
  br i1 %tobool22.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false23

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false23:                                  ; preds = %lor.lhs.false
  %23 = ptrtoint ptr %kbuffer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %kbuffer, align 4
  %tobool25.not = icmp eq ptr %24, null
  %tobool29.not = icmp eq ptr %call17, null
  %or.cond = select i1 %tobool25.not, i1 true, i1 %tobool29.not
  br i1 %or.cond, label %lor.lhs.false23.cleanup_crit_edge, label %if.end31

lor.lhs.false23.cleanup_crit_edge:                ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end31:                                         ; preds = %lor.lhs.false23
  %fops = getelementptr inbounds %struct.kcs_bmc_ipmi, ptr %call.i, i32 0, i32 14, i32 2
  %25 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @kcs_bmc_ipmi_fops, ptr %fops, align 4
  %call34 = tail call i32 @misc_register(ptr noundef %miscdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end41, label %do.end39

do.end39:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.7, i32 noundef %call34) #8
  br label %cleanup

if.end41:                                         ; preds = %if.end31
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @kcs_bmc_ipmi_instances_lock) #5
  %28 = load ptr, ptr @kcs_bmc_ipmi_instances, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef nonnull @kcs_bmc_ipmi_instances, ptr noundef %28) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end41.list_add.exit_crit_edge

if.end41.list_add.exit_crit_edge:                 ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %prev1.i.i, align 4
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %28, ptr %call.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @kcs_bmc_ipmi_instances, ptr %prev3.i.i, align 4
  store volatile ptr %call.i, ptr @kcs_bmc_ipmi_instances, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end41.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @kcs_bmc_ipmi_instances_lock) #5
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %34 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %channel, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %33, ptr noundef nonnull @.str.13, i32 noundef %35) #8
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %do.end39, %lor.lhs.false23.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call34, %do.end39 ], [ 0, %list_add.exit ], [ -12, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false23.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kcs_bmc_ipmi_remove_device(ptr noundef readonly %kcs_bmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @kcs_bmc_ipmi_instances_lock) #5
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %pos.0.in = phi ptr [ @kcs_bmc_ipmi_instances, %entry ], [ %pos.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %pos.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %pos.0 = load ptr, ptr %pos.0.in, align 4
  %cmp.not = icmp eq ptr %pos.0, @kcs_bmc_ipmi_instances
  br i1 %cmp.not, label %for.end.thread, label %for.body

for.end.thread:                                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @kcs_bmc_ipmi_instances_lock) #5
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %dev = getelementptr inbounds %struct.kcs_bmc_ipmi, ptr %pos.0, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %cmp2 = icmp eq ptr %2, %kcs_bmc
  br i1 %cmp2, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

if.then:                                          ; preds = %for.body
  %dev.le = getelementptr inbounds %struct.kcs_bmc_ipmi, ptr %pos.0, i32 0, i32 1, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.0) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pos.0, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %pos.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pos.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %for.end

for.end:                                          ; preds = %if.end.i.i, %if.then.for.end_crit_edge
  %9 = ptrtoint ptr %pos.0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pos.0, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @kcs_bmc_ipmi_instances_lock) #5
  %tobool.not = icmp eq ptr %pos.0, null
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %if.end9

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %miscdev = getelementptr inbounds %struct.kcs_bmc_ipmi, ptr %pos.0, i32 0, i32 14
  tail call void @misc_deregister(ptr noundef %miscdev) #5
  %client10 = getelementptr inbounds %struct.kcs_bmc_ipmi, ptr %pos.0, i32 0, i32 1
  %11 = ptrtoint ptr %dev.le to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.le, align 4
  tail call void @kcs_bmc_disable_device(ptr noundef %12, ptr noundef %client10) #5
  %dev13 = getelementptr inbounds %struct.kcs_bmc_device, ptr %kcs_bmc, i32 0, i32 1
  %13 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev13, align 4
  %kbuffer = getelementptr inbounds %struct.kcs_bmc_ipmi, ptr %pos.0, i32 0, i32 13
  %15 = ptrtoint ptr %kbuffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %kbuffer, align 4
  tail call void @devm_kfree(ptr noundef %14, ptr noundef %16) #5
  %17 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev13, align 4
  %data_out = getelementptr inbounds %struct.kcs_bmc_ipmi, ptr %pos.0, i32 0, i32 11
  %19 = ptrtoint ptr %data_out to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data_out, align 4
  tail call void @devm_kfree(ptr noundef %18, ptr noundef %20) #5
  %21 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev13, align 4
  %data_in = getelementptr inbounds %struct.kcs_bmc_ipmi, ptr %pos.0, i32 0, i32 8
  %23 = ptrtoint ptr %data_in to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data_in, align 4
  tail call void @devm_kfree(ptr noundef %22, ptr noundef %24) #5
  %25 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev13, align 4
  tail call void @devm_kfree(ptr noundef %26, ptr noundef nonnull %pos.0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %for.end.cleanup_crit_edge, %for.end.thread
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -19, %for.end.cleanup_crit_edge ], [ -19, %for.end.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kcs_bmc_ipmi_event(ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %client, i32 -8
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr i8, ptr %client, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock) #5
  %dev = getelementptr %struct.kcs_bmc_client, ptr %client, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call1 = tail call zeroext i8 @kcs_bmc_read_status(ptr noundef %1) #5
  %conv = zext i8 %call1 to i32
  %and = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end10_crit_edge, label %if.then3

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then3:                                         ; preds = %if.end
  %and5 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then3
  tail call void @kcs_bmc_update_status(ptr noundef %3, i8 noundef zeroext -64, i8 noundef zeroext -128) #5
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void @kcs_bmc_write_data(ptr noundef %5, i8 noundef zeroext 0) #5
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call.i = tail call zeroext i8 @kcs_bmc_read_data(ptr noundef %7) #5
  %8 = zext i8 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %call.i, label %sw.default.i [
    i8 97, label %sw.bb.i
    i8 98, label %sw.bb3.i
    i8 96, label %sw.bb7.i
  ]

sw.bb.i:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  %phase.i = getelementptr i8, ptr %client, i32 52
  %9 = ptrtoint ptr %phase.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %phase.i, align 4
  %error.i = getelementptr i8, ptr %client, i32 56
  %10 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %error.i, align 4
  %data_in_avail.i = getelementptr i8, ptr %client, i32 112
  %11 = ptrtoint ptr %data_in_avail.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %data_in_avail.i, align 4
  %data_in_idx.i = getelementptr i8, ptr %client, i32 116
  %12 = ptrtoint ptr %data_in_idx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %data_in_idx.i, align 4
  br label %if.end10

sw.bb3.i:                                         ; preds = %if.then7
  %phase4.i = getelementptr i8, ptr %client, i32 52
  %13 = ptrtoint ptr %phase4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %phase4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.not.i = icmp eq i32 %14, 2
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  tail call void @kcs_bmc_update_status(ptr noundef %16, i8 noundef zeroext -64, i8 noundef zeroext -64) #5
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %call.i.i = tail call zeroext i8 @kcs_bmc_read_data(ptr noundef %18) #5
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  tail call void @kcs_bmc_write_data(ptr noundef %20, i8 noundef zeroext 0) #5
  %21 = ptrtoint ptr %phase4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 9, ptr %phase4.i, align 4
  %data_in_avail.i.i = getelementptr i8, ptr %client, i32 112
  %22 = ptrtoint ptr %data_in_avail.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %data_in_avail.i.i, align 4
  %data_in_idx.i.i = getelementptr i8, ptr %client, i32 116
  %23 = ptrtoint ptr %data_in_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %data_in_idx.i.i, align 4
  br label %if.end10

if.end.i:                                         ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %phase4.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %phase4.i, align 4
  br label %if.end10

sw.bb7.i:                                         ; preds = %if.then7
  %error8.i = getelementptr i8, ptr %client, i32 56
  %25 = ptrtoint ptr %error8.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %error8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp9.i = icmp eq i32 %26, 0
  br i1 %cmp9.i, label %if.then11.i, label %sw.bb7.i.if.end13.i_crit_edge

sw.bb7.i.if.end13.i_crit_edge:                    ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i

if.then11.i:                                      ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %error8.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %error8.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %sw.bb7.i.if.end13.i_crit_edge
  %phase14.i = getelementptr i8, ptr %client, i32 52
  %28 = ptrtoint ptr %phase14.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 7, ptr %phase14.i, align 4
  %data_in_avail15.i = getelementptr i8, ptr %client, i32 112
  %29 = ptrtoint ptr %data_in_avail15.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %data_in_avail15.i, align 4
  %data_in_idx16.i = getelementptr i8, ptr %client, i32 116
  %30 = ptrtoint ptr %data_in_idx16.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %data_in_idx16.i, align 4
  br label %if.end10

sw.default.i:                                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  tail call void @kcs_bmc_update_status(ptr noundef %32, i8 noundef zeroext -64, i8 noundef zeroext -64) #5
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  %call.i35.i = tail call zeroext i8 @kcs_bmc_read_data(ptr noundef %34) #5
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  tail call void @kcs_bmc_write_data(ptr noundef %36, i8 noundef zeroext 0) #5
  %phase.i36.i = getelementptr i8, ptr %client, i32 52
  %37 = ptrtoint ptr %phase.i36.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 9, ptr %phase.i36.i, align 4
  %data_in_avail.i37.i = getelementptr i8, ptr %client, i32 112
  %38 = ptrtoint ptr %data_in_avail.i37.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %data_in_avail.i37.i, align 4
  %data_in_idx.i38.i = getelementptr i8, ptr %client, i32 116
  %39 = ptrtoint ptr %data_in_idx.i38.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %data_in_idx.i38.i, align 4
  %error17.i = getelementptr i8, ptr %client, i32 56
  %40 = ptrtoint ptr %error17.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %error17.i, align 4
  br label %if.end10

if.else:                                          ; preds = %if.then3
  %phase.i20 = getelementptr i8, ptr %client, i32 52
  %41 = ptrtoint ptr %phase.i20 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %phase.i20, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %42, label %sw.default.i30 [
    i32 1, label %sw.bb.i21
    i32 2, label %if.else.sw.bb3.i23_crit_edge
    i32 3, label %sw.bb5.i
    i32 6, label %sw.bb18.i
    i32 7, label %sw.bb37.i
    i32 8, label %sw.bb42.i
  ]

if.else.sw.bb3.i23_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i23

sw.bb.i21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %phase.i20 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2, ptr %phase.i20, align 4
  br label %sw.bb3.i23

sw.bb3.i23:                                       ; preds = %sw.bb.i21, %if.else.sw.bb3.i23_crit_edge
  %data_in_idx.i22 = getelementptr i8, ptr %client, i32 116
  %45 = ptrtoint ptr %data_in_idx.i22 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %data_in_idx.i22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %46)
  %cmp.i = icmp slt i32 %46, 1000
  br i1 %cmp.i, label %if.then.i25, label %if.else.i

if.then.i25:                                      ; preds = %sw.bb3.i23
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kcs_bmc_update_status(ptr noundef %3, i8 noundef zeroext -64, i8 noundef zeroext -128) #5
  tail call void @kcs_bmc_write_data(ptr noundef %3, i8 noundef zeroext 0) #5
  %call.i24 = tail call zeroext i8 @kcs_bmc_read_data(ptr noundef %3) #5
  %data_in.i = getelementptr i8, ptr %client, i32 120
  %47 = ptrtoint ptr %data_in.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data_in.i, align 4
  %49 = ptrtoint ptr %data_in_idx.i22 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %data_in_idx.i22, align 4
  %inc.i = add i32 %50, 1
  store i32 %inc.i, ptr %data_in_idx.i22, align 4
  %arrayidx.i = getelementptr i8, ptr %48, i32 %50
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %call.i24, ptr %arrayidx.i, align 1
  br label %if.end10

if.else.i:                                        ; preds = %sw.bb3.i23
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kcs_bmc_update_status(ptr noundef %3, i8 noundef zeroext -64, i8 noundef zeroext -64) #5
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 4
  %call.i.i26 = tail call zeroext i8 @kcs_bmc_read_data(ptr noundef %53) #5
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 4
  tail call void @kcs_bmc_write_data(ptr noundef %55, i8 noundef zeroext 0) #5
  %56 = ptrtoint ptr %phase.i20 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 9, ptr %phase.i20, align 4
  %data_in_avail.i.i27 = getelementptr i8, ptr %client, i32 112
  %57 = ptrtoint ptr %data_in_avail.i.i27 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %data_in_avail.i.i27, align 4
  %58 = ptrtoint ptr %data_in_idx.i22 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %data_in_idx.i22, align 4
  %error.i28 = getelementptr i8, ptr %client, i32 56
  %59 = ptrtoint ptr %error.i28 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 6, ptr %error.i28, align 4
  br label %if.end10

sw.bb5.i:                                         ; preds = %if.else
  %data_in_idx6.i = getelementptr i8, ptr %client, i32 116
  %60 = ptrtoint ptr %data_in_idx6.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %data_in_idx6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %61)
  %cmp7.i = icmp slt i32 %61, 1000
  br i1 %cmp7.i, label %if.then8.i, label %if.else15.i

if.then8.i:                                       ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kcs_bmc_update_status(ptr noundef %3, i8 noundef zeroext -64, i8 noundef zeroext 64) #5
  %call9.i = tail call zeroext i8 @kcs_bmc_read_data(ptr noundef %3) #5
  %data_in10.i = getelementptr i8, ptr %client, i32 120
  %62 = ptrtoint ptr %data_in10.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data_in10.i, align 4
  %64 = ptrtoint ptr %data_in_idx6.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %data_in_idx6.i, align 4
  %inc12.i = add i32 %65, 1
  store i32 %inc12.i, ptr %data_in_idx6.i, align 4
  %arrayidx13.i = getelementptr i8, ptr %63, i32 %65
  %66 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %call9.i, ptr %arrayidx13.i, align 1
  %67 = ptrtoint ptr %phase.i20 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 4, ptr %phase.i20, align 4
  %data_in_avail.i29 = getelementptr i8, ptr %client, i32 112
  %68 = ptrtoint ptr %data_in_avail.i29 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %data_in_avail.i29, align 4
  %queue.i = getelementptr i8, ptr %client, i32 60
  tail call void @__wake_up(ptr noundef %queue.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #5
  br label %if.end10

if.else15.i:                                      ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kcs_bmc_update_status(ptr noundef %3, i8 noundef zeroext -64, i8 noundef zeroext -64) #5
  %69 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev, align 4
  %call.i89.i = tail call zeroext i8 @kcs_bmc_read_data(ptr noundef %70) #5
  %71 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev, align 4
  tail call void @kcs_bmc_write_data(ptr noundef %72, i8 noundef zeroext 0) #5
  %73 = ptrtoint ptr %phase.i20 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 9, ptr %phase.i20, align 4
  %data_in_avail.i91.i = getelementptr i8, ptr %client, i32 112
  %74 = ptrtoint ptr %data_in_avail.i91.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %data_in_avail.i91.i, align 4
  %75 = ptrtoint ptr %data_in_idx6.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %data_in_idx6.i, align 4
  %error16.i = getelementptr i8, ptr %client, i32 56
  %76 = ptrtoint ptr %error16.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 6, ptr %error16.i, align 4
  br label %if.end10

sw.bb18.i:                                        ; preds = %if.else
  %data_out_idx.i = getelementptr i8, ptr %client, i32 124
  %77 = ptrtoint ptr %data_out_idx.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %data_out_idx.i, align 4
  %data_out_len.i = getelementptr i8, ptr %client, i32 128
  %79 = ptrtoint ptr %data_out_len.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %data_out_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %80)
  %cmp19.i = icmp eq i32 %78, %80
  br i1 %cmp19.i, label %if.then20.i, label %sw.bb18.i.if.end21.i_crit_edge

sw.bb18.i.if.end21.i_crit_edge:                   ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.i

if.then20.i:                                      ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kcs_bmc_update_status(ptr noundef %3, i8 noundef zeroext -64, i8 noundef zeroext 0) #5
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then20.i, %sw.bb18.i.if.end21.i_crit_edge
  %call22.i = tail call zeroext i8 @kcs_bmc_read_data(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 104, i8 %call22.i)
  %cmp23.not.i = icmp eq i8 %call22.i, 104
  br i1 %cmp23.not.i, label %if.end26.i, label %if.then25.i

if.then25.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  %81 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev, align 4
  tail call void @kcs_bmc_update_status(ptr noundef %82, i8 noundef zeroext -64, i8 noundef zeroext -64) #5
  tail call void @kcs_bmc_write_data(ptr noundef %3, i8 noundef zeroext 0) #5
  br label %if.end10

if.end26.i:                                       ; preds = %if.end21.i
  %83 = ptrtoint ptr %data_out_idx.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %data_out_idx.i, align 4
  %85 = ptrtoint ptr %data_out_len.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %data_out_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %86)
  %cmp29.i = icmp eq i32 %84, %86
  br i1 %cmp29.i, label %if.then31.i, label %if.end33.i

if.then31.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kcs_bmc_write_data(ptr noundef %3, i8 noundef zeroext 0) #5
  %87 = ptrtoint ptr %phase.i20 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %phase.i20, align 4
  br label %if.end10

if.end33.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  %data_out.i = getelementptr i8, ptr %client, i32 132
  %88 = ptrtoint ptr %data_out.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %data_out.i, align 4
  %inc35.i = add i32 %84, 1
  %90 = ptrtoint ptr %data_out_idx.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %inc35.i, ptr %data_out_idx.i, align 4
  %arrayidx36.i = getelementptr i8, ptr %89, i32 %84
  %91 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx36.i, align 1
  tail call void @kcs_bmc_write_data(ptr noundef %3, i8 noundef zeroext %92) #5
  br label %if.end10

sw.bb37.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kcs_bmc_update_status(ptr noundef %3, i8 noundef zeroext -64, i8 noundef zeroext 64) #5
  %call38.i = tail call zeroext i8 @kcs_bmc_read_data(ptr noundef %3) #5
  %error39.i = getelementptr i8, ptr %client, i32 56
  %93 = ptrtoint ptr %error39.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %error39.i, align 4
  %conv40.i = trunc i32 %94 to i8
  tail call void @kcs_bmc_write_data(ptr noundef %3, i8 noundef zeroext %conv40.i) #5
  %95 = ptrtoint ptr %phase.i20 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 8, ptr %phase.i20, align 4
  br label %if.end10

sw.bb42.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kcs_bmc_update_status(ptr noundef %3, i8 noundef zeroext -64, i8 noundef zeroext 0) #5
  %call43.i = tail call zeroext i8 @kcs_bmc_read_data(ptr noundef %3) #5
  tail call void @kcs_bmc_write_data(ptr noundef %3, i8 noundef zeroext 0) #5
  %96 = ptrtoint ptr %phase.i20 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %phase.i20, align 4
  br label %if.end10

sw.default.i30:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kcs_bmc_update_status(ptr noundef %3, i8 noundef zeroext -64, i8 noundef zeroext -64) #5
  %97 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev, align 4
  %call.i98.i = tail call zeroext i8 @kcs_bmc_read_data(ptr noundef %98) #5
  %99 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev, align 4
  tail call void @kcs_bmc_write_data(ptr noundef %100, i8 noundef zeroext 0) #5
  %101 = ptrtoint ptr %phase.i20 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 9, ptr %phase.i20, align 4
  %data_in_avail.i100.i = getelementptr i8, ptr %client, i32 112
  %102 = ptrtoint ptr %data_in_avail.i100.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %data_in_avail.i100.i, align 4
  %data_in_idx.i101.i = getelementptr i8, ptr %client, i32 116
  %103 = ptrtoint ptr %data_in_idx.i101.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %data_in_idx.i101.i, align 4
  br label %if.end10

if.end10:                                         ; preds = %sw.default.i30, %sw.bb42.i, %sw.bb37.i, %if.end33.i, %if.then31.i, %if.then25.i, %if.else15.i, %if.then8.i, %if.else.i, %if.then.i25, %sw.default.i, %if.end13.i, %if.end.i, %if.then.i, %sw.bb.i, %if.end.if.end10_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.if.end10_crit_edge ], [ 1, %sw.bb.i ], [ 1, %if.then.i ], [ 1, %if.end.i ], [ 1, %if.end13.i ], [ 1, %sw.default.i ], [ 1, %if.then.i25 ], [ 1, %if.else.i ], [ 1, %if.then8.i ], [ 1, %if.else15.i ], [ 1, %if.then25.i ], [ 1, %if.then31.i ], [ 1, %if.end33.i ], [ 1, %sw.bb37.i ], [ 1, %sw.bb42.i ], [ 1, %sw.default.i30 ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end10 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @kcs_bmc_read_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kcs_bmc_write_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @kcs_bmc_read_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kcs_bmc_update_status(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kcs_bmc_ipmi_read(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %2 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_flags, align 4
  %and = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then:                                          ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 330) #5
  %data_in_avail = getelementptr i8, ptr %1, i32 -120
  %4 = ptrtoint ptr %data_in_avail to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data_in_avail, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %if.then5, label %if.then.if.end17_crit_edge

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then5:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #5
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #5
  %queue = getelementptr i8, ptr %1, i32 -172
  %call792 = call i32 @prepare_to_wait_event(ptr noundef %queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #5
  %7 = ptrtoint ptr %data_in_avail to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %data_in_avail, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool9.not93 = icmp eq i8 %8, 0
  br i1 %tobool9.not93, label %if.then5.if.end_crit_edge, label %if.then5.for.end_crit_edge

if.then5.for.end_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.then5.if.end_crit_edge:                        ; preds = %if.then5
  br label %if.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.then5.if.end_crit_edge
  %call794 = phi i32 [ %call7, %cleanup.if.end_crit_edge ], [ %call792, %if.then5.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call794)
  %tobool11.not = icmp eq i32 %call794, 0
  br i1 %tobool11.not, label %cleanup, label %if.end.__out_crit_edge

if.end.__out_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %__out

cleanup:                                          ; preds = %if.end
  call void @schedule() #5
  %call7 = call i32 @prepare_to_wait_event(ptr noundef %queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #5
  %9 = ptrtoint ptr %data_in_avail to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data_in_avail, align 4, !range !74
  %tobool9.not = icmp eq i8 %10, 0
  br i1 %tobool9.not, label %cleanup.if.end_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then5.for.end_crit_edge
  call void @finish_wait(ptr noundef %queue, ptr noundef nonnull %__wq_entry) #5
  br label %__out

__out:                                            ; preds = %for.end, %if.end.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #5
  br label %if.end17

if.end17:                                         ; preds = %__out, %if.then.if.end17_crit_edge, %entry.if.end17_crit_edge
  %mutex = getelementptr i8, ptr %1, i32 -96
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %lock = getelementptr i8, ptr %1, i32 -224
  call void @_raw_spin_lock_irq(ptr noundef %lock) #5
  %data_in_avail18 = getelementptr i8, ptr %1, i32 -120
  %11 = ptrtoint ptr %data_in_avail18 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %data_in_avail18, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool19.not = icmp eq i8 %12, 0
  br i1 %tobool19.not, label %if.end22.thread, label %if.end26

if.end22.thread:                                  ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #5
  br label %out_unlock

if.end26:                                         ; preds = %if.end17
  %data_in_idx = getelementptr i8, ptr %1, i32 -116
  %13 = ptrtoint ptr %data_in_idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_in_idx, align 4
  %kbuffer = getelementptr i8, ptr %1, i32 -4
  %15 = ptrtoint ptr %kbuffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %kbuffer, align 4
  %data_in = getelementptr i8, ptr %1, i32 -112
  %17 = ptrtoint ptr %data_in to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data_in, align 4
  %19 = call ptr @memcpy(ptr %16, ptr %18, i32 %14)
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %count)
  %cmp = icmp ugt i32 %14, %count
  br i1 %cmp, label %do.end30, label %if.end35

do.end30:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr i8, ptr %1, i32 -228
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %channel = getelementptr inbounds %struct.kcs_bmc_device, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %channel, align 4
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %23, i32 noundef %14) #8
  call void @_raw_spin_lock_irq(ptr noundef %lock) #5
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  call void @kcs_bmc_update_status(ptr noundef %25, i8 noundef zeroext -64, i8 noundef zeroext -64) #5
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %call.i = call zeroext i8 @kcs_bmc_read_data(ptr noundef %27) #5
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  call void @kcs_bmc_write_data(ptr noundef %29, i8 noundef zeroext 0) #5
  %phase.i = getelementptr i8, ptr %1, i32 -180
  %30 = ptrtoint ptr %phase.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 9, ptr %phase.i, align 4
  %31 = ptrtoint ptr %data_in_avail18 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %data_in_avail18, align 4
  %32 = ptrtoint ptr %data_in_idx to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %data_in_idx, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #5
  br label %out_unlock

if.end35:                                         ; preds = %if.end26
  %33 = ptrtoint ptr %kbuffer to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %kbuffer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp9.i.i = icmp slt i32 %14, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end35
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.out_unlock_crit_edge, label %if.then27.i.i, !prof !75

land.rhs16.i.i.out_unlock_crit_edge:              ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 230, i32 noundef 9, ptr noundef null) #5
  br label %out_unlock

if.then.i.i.i:                                    ; preds = %if.end35
  call void @__check_object_size(ptr noundef %34, i32 noundef %14, i1 noundef zeroext true) #5
  call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 174) #5
  %call.i.i = call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %35 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %14, i32 -1226833920) #9, !srcloc !76
  %asmresult.i.i = extractvalue { i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %34, i32 noundef %14) #5
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %34, i32 noundef %14) #5
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %14, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %14, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool38.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool38.not, label %if.end40, label %copy_to_user.exit.out_unlock_crit_edge

copy_to_user.exit.out_unlock_crit_edge:           ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.end40:                                         ; preds = %copy_to_user.exit
  call void @_raw_spin_lock_irq(ptr noundef %lock) #5
  %phase = getelementptr i8, ptr %1, i32 -180
  %36 = ptrtoint ptr %phase to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %phase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %37)
  %cmp42 = icmp eq i32 %37, 4
  br i1 %cmp42, label %if.then43, label %if.end40.if.end47_crit_edge

if.end40.if.end47_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %phase to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 5, ptr %phase, align 4
  %39 = ptrtoint ptr %data_in_avail18 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %data_in_avail18, align 4
  %40 = ptrtoint ptr %data_in_idx to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %data_in_idx, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %if.end40.if.end47_crit_edge
  %ret.0 = phi i32 [ %14, %if.then43 ], [ -11, %if.end40.if.end47_crit_edge ]
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #5
  br label %out_unlock

out_unlock:                                       ; preds = %if.end47, %copy_to_user.exit.out_unlock_crit_edge, %if.then27.i.i, %land.rhs16.i.i.out_unlock_crit_edge, %do.end30, %if.end22.thread
  %ret.1 = phi i32 [ -75, %do.end30 ], [ %ret.0, %if.end47 ], [ -14, %copy_to_user.exit.out_unlock_crit_edge ], [ -11, %if.end22.thread ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.out_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #5
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kcs_bmc_ipmi_write(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %2 = add i32 %count, -1001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -998, i32 %2)
  %3 = icmp ult i32 %2, -998
  br i1 %3, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr i8, ptr %1, i32 -96
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %kbuffer = getelementptr i8, ptr %1, i32 -4
  %4 = ptrtoint ptr %kbuffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kbuffer, align 4
  tail call void @__check_object_size(ptr noundef %5, i32 noundef %count, i1 noundef zeroext false) #5
  tail call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 156) #5
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i, label %if.end.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end.if.then11.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count, i32 -1226833920) #9, !srcloc !77
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !75

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %5, i32 noundef %count) #5
  %7 = tail call i32 @llvm.read_register.i32(metadata !64) #5
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !78
  %and.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #5, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %5, ptr noundef %buf, i32 noundef %count) #5
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #5, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end4, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !75

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end.if.then11.i.i_crit_edge
  %res.0.i.i33 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %count, %if.end.if.then11.i.i_crit_edge ], [ %count, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %count, %res.0.i.i33
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %sub.i.i
  %10 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i33)
  br label %out_unlock

if.end4:                                          ; preds = %if.end.i.i
  %lock = getelementptr i8, ptr %1, i32 -224
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #5
  %phase = getelementptr i8, ptr %1, i32 -180
  %11 = ptrtoint ptr %phase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %phase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %12)
  %cmp5 = icmp eq i32 %12, 5
  br i1 %cmp5, label %if.then6, label %if.end4.if.end10_crit_edge

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %phase to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 6, ptr %phase, align 4
  %data_out_idx = getelementptr i8, ptr %1, i32 -108
  %14 = ptrtoint ptr %data_out_idx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %data_out_idx, align 4
  %data_out_len = getelementptr i8, ptr %1, i32 -104
  %15 = ptrtoint ptr %data_out_len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %count, ptr %data_out_len, align 4
  %data_out = getelementptr i8, ptr %1, i32 -100
  %16 = ptrtoint ptr %data_out to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data_out, align 4
  %18 = ptrtoint ptr %kbuffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %kbuffer, align 4
  %20 = call ptr @memcpy(ptr %17, ptr %19, i32 %count)
  %dev = getelementptr i8, ptr %1, i32 -228
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %23 = load ptr, ptr %data_out, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 1
  tail call void @kcs_bmc_write_data(ptr noundef %22, i8 noundef zeroext %25) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end4.if.end10_crit_edge
  %ret.0 = phi i32 [ %count, %if.then6 ], [ -22, %if.end4.if.end10_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #5
  br label %out_unlock

out_unlock:                                       ; preds = %if.end10, %if.then11.i.i
  %ret.1 = phi i32 [ %ret.0, %if.end10 ], [ -14, %if.then11.i.i ]
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out_unlock ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kcs_bmc_ipmi_poll(ptr noundef %filp, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %queue = getelementptr i8, ptr %1, i32 -172
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %queue, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %3(ptr noundef %filp, ptr noundef nonnull %queue, ptr noundef nonnull %wait) #5
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %lock = getelementptr i8, ptr %1, i32 -224
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #5
  %data_in_avail = getelementptr i8, ptr %1, i32 -120
  %4 = ptrtoint ptr %data_in_avail to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data_in_avail, align 4, !range !74
  %6 = zext i8 %5 to i32
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #5
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kcs_bmc_ipmi_ioctl(ptr nocapture noundef readonly %filp, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %lock = getelementptr i8, ptr %1, i32 -224
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #5
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 45312, label %sw.bb
    i32 45313, label %sw.bb1
    i32 45314, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr i8, ptr %1, i32 -228
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void @kcs_bmc_update_status(ptr noundef %4, i8 noundef zeroext 4, i8 noundef zeroext 4) #5
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev3 = getelementptr i8, ptr %1, i32 -228
  %5 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev3, align 4
  tail call void @kcs_bmc_update_status(ptr noundef %6, i8 noundef zeroext 4, i8 noundef zeroext 0) #5
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i = getelementptr i8, ptr %1, i32 -228
  %7 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i.i, align 4
  tail call void @kcs_bmc_update_status(ptr noundef %8, i8 noundef zeroext -64, i8 noundef zeroext -64) #5
  %9 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i.i, align 4
  %call.i = tail call zeroext i8 @kcs_bmc_read_data(ptr noundef %10) #5
  %11 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i.i, align 4
  tail call void @kcs_bmc_write_data(ptr noundef %12, i8 noundef zeroext 0) #5
  %phase.i = getelementptr i8, ptr %1, i32 -180
  %13 = ptrtoint ptr %phase.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 9, ptr %phase.i, align 4
  %data_in_avail.i = getelementptr i8, ptr %1, i32 -120
  %14 = ptrtoint ptr %data_in_avail.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %data_in_avail.i, align 4
  %data_in_idx.i = getelementptr i8, ptr %1, i32 -116
  %15 = ptrtoint ptr %data_in_idx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %data_in_idx.i, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb4 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kcs_bmc_ipmi_open(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %client = getelementptr i8, ptr %1, i32 -232
  %dev = getelementptr i8, ptr %1, i32 -228
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call2 = tail call i32 @kcs_bmc_enable_device(ptr noundef %3, ptr noundef %client) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kcs_bmc_ipmi_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev.i.i = getelementptr i8, ptr %1, i32 -228
  %2 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i, align 4
  tail call void @kcs_bmc_update_status(ptr noundef %3, i8 noundef zeroext -64, i8 noundef zeroext -64) #5
  %4 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i.i, align 4
  %call.i = tail call zeroext i8 @kcs_bmc_read_data(ptr noundef %5) #5
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 4
  tail call void @kcs_bmc_write_data(ptr noundef %7, i8 noundef zeroext 0) #5
  %phase.i = getelementptr i8, ptr %1, i32 -180
  %8 = ptrtoint ptr %phase.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 9, ptr %phase.i, align 4
  %data_in_avail.i = getelementptr i8, ptr %1, i32 -120
  %9 = ptrtoint ptr %data_in_avail.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %data_in_avail.i, align 4
  %data_in_idx.i = getelementptr i8, ptr %1, i32 -116
  %10 = ptrtoint ptr %data_in_idx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %data_in_idx.i, align 4
  %client = getelementptr i8, ptr %1, i32 -232
  %11 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i.i, align 4
  tail call void @kcs_bmc_disable_device(ptr noundef %12, ptr noundef %client) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

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
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kcs_bmc_enable_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kcs_bmc_disable_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kcs_bmc_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20, !22, !23, !25, !26, !28, !30, !32, !33, !34, !35, !36, !37, !38, !40, !41, !42, !43, !45, !47, !49, !50, !51, !52, !54, !55, !57, !59, !61, !62}
!llvm.named.register.sp = !{!64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__initcall__kmod_kcs_bmc_cdev_ipmi__223_557_kcs_bmc_ipmi_init6, !1, !"__initcall__kmod_kcs_bmc_cdev_ipmi__223_557_kcs_bmc_ipmi_init6", i1 false, i1 false}
!1 = !{!"../drivers/char/ipmi/kcs_bmc_cdev_ipmi.c", i32 557, i32 1}
!2 = !{ptr @__exitcall_kcs_bmc_ipmi_exit, !3, !"__exitcall_kcs_bmc_ipmi_exit", i1 false, i1 false}
!3 = !{!"../drivers/char/ipmi/kcs_bmc_cdev_ipmi.c", i32 563, i32 1}
!4 = !{ptr @__UNIQUE_ID_file224, !5, !"__UNIQUE_ID_file224", i1 false, i1 false}
!5 = !{!"../drivers/char/ipmi/kcs_bmc_cdev_ipmi.c", i32 565, i32 1}
!6 = !{ptr @__UNIQUE_ID_license225, !5, !"__UNIQUE_ID_license225", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author226, !8, !"__UNIQUE_ID_author226", i1 false, i1 false}
!8 = !{!"../drivers/char/ipmi/kcs_bmc_cdev_ipmi.c", i32 566, i32 1}
!9 = !{ptr @__UNIQUE_ID_author227, !10, !"__UNIQUE_ID_author227", i1 false, i1 false}
!10 = !{!"../drivers/char/ipmi/kcs_bmc_cdev_ipmi.c", i32 567, i32 1}
!11 = !{ptr @__UNIQUE_ID_description228, !12, !"__UNIQUE_ID_description228", i1 false, i1 false}
!12 = !{!"../drivers/char/ipmi/kcs_bmc_cdev_ipmi.c", i32 568, i32 1}
!13 = !{ptr @kcs_bmc_ipmi_driver, !14, !"kcs_bmc_ipmi_driver", i1 false, i1 false}
!14 = !{!"../drivers/char/ipmi/kcs_bmc_cdev_ipmi.c", i32 547, i32 30}
!15 = !{ptr @kcs_bmc_ipmi_driver_ops, !16, !"kcs_bmc_ipmi_driver_ops", i1 false, i1 false}
!16 = !{!"../drivers/char/ipmi/kcs_bmc_cdev_ipmi.c", i32 542, i32 40}
!17 = !{ptr @kcs_bmc_ipmi_add_device.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/char/ipmi/kcs_bmc_cdev_ipmi.c", i32 481, i32 2}
!19 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @kcs_bmc_ipmi_add_device.__key.1, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/char/ipmi/kcs_bmc_cdev_ipmi.c", i32 482, i32 2}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @kcs_bmc_ipmi_add_device.__key.3, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/char/ipmi/kcs_bmc_cdev_ipmi.c", i32 484, i32 2}
!25 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/char/ipmi/kcs_bmc_cdev_ipmi.c", i32 493, i32 64}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/char/ipmi/kcs_bmc_cdev_ipmi.c", i32 493, i32 72}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/char/ipmi/kcs_bmc_cdev_ipmi.c", i32 502, i32 3}
!32 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @kcs_bmc_ipmi_add_device._entry, !31, !"_entry", i1 false, i1 false}
!37 = !{ptr @kcs_bmc_ipmi_add_device._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/char/ipmi/kcs_bmc_cdev_ipmi.c", i32 510, i32 2}
!40 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @kcs_bmc_ipmi_add_device._entry.12, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @kcs_bmc_ipmi_add_device._entry_ptr.15, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @kcs_bmc_ipmi_client_ops, !44, !"kcs_bmc_ipmi_client_ops", i1 false, i1 false}
!44 = !{!"../drivers/char/ipmi/kcs_bmc_cdev_ipmi.c", i32 289, i32 40}
!45 = !{ptr @kcs_bmc_ipmi_fops, !46, !"kcs_bmc_ipmi_fops", i1 false, i1 false}
!46 = !{!"../drivers/char/ipmi/kcs_bmc_cdev_ipmi.c", i32 459, i32 37}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/char/ipmi/kcs_bmc_cdev_ipmi.c", i32 348, i32 3}
!49 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @kcs_bmc_ipmi_read._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @kcs_bmc_ipmi_read._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!54 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/char/ipmi/kcs_bmc_cdev_ipmi.c", i32 469, i32 8}
!61 = !{ptr @kcs_bmc_ipmi_instances_lock, !60, !"kcs_bmc_ipmi_instances_lock", i1 false, i1 false}
!62 = !{ptr @kcs_bmc_ipmi_instances, !63, !"kcs_bmc_ipmi_instances", i1 false, i1 false}
!63 = !{!"../drivers/char/ipmi/kcs_bmc_cdev_ipmi.c", i32 470, i32 8}
!64 = !{!"sp"}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i8 0, i8 2}
!75 = !{!"branch_weights", i32 2000, i32 1}
!76 = !{i64 2152769028, i64 2152769053}
!77 = !{i64 2152768347, i64 2152768372}
!78 = !{i64 5263902}
!79 = !{i64 5264099}
!80 = !{i64 2152749332}
