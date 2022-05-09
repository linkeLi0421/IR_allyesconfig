; ModuleID = '/llk/IR_all_yes/drivers/block/paride/pt.c_pt.bc'
source_filename = "../drivers/block/paride/pt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.pt_unit = type { %struct.pi_adapter, ptr, i32, i32, i32, %struct.atomic_t, i32, i32, i32, ptr, [8 x i8] }
%struct.pi_adapter = type { ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.mtop = type { i16, i32 }
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
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.70 = type { ptr }

@__param_str_verbose = internal constant [11 x i8] c"pt.verbose\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@verbose = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_verbose = internal constant %struct.kernel_param { ptr @__param_str_verbose, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @verbose } }, section "__param", align 4
@__UNIQUE_ID_verbosetype225 = internal constant [24 x i8] c"pt.parmtype=verbose:int\00", section ".modinfo", align 1
@__param_str_major = internal constant [9 x i8] c"pt.major\00", align 1
@major = internal global { i32, [28 x i8] } { i32 96, [28 x i8] zeroinitializer }, align 32
@__param_major = internal constant %struct.kernel_param { ptr @__param_str_major, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @major } }, section "__param", align 4
@__UNIQUE_ID_majortype226 = internal constant [22 x i8] c"pt.parmtype=major:int\00", section ".modinfo", align 1
@__param_str_name = internal constant [8 x i8] c"pt.name\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@name = internal global { ptr, [28 x i8] } { ptr @.str, [28 x i8] zeroinitializer }, align 32
@__param_name = internal constant %struct.kernel_param { ptr @__param_str_name, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @name } }, section "__param", align 4
@__UNIQUE_ID_nametype227 = internal constant [23 x i8] c"pt.parmtype=name:charp\00", section ".modinfo", align 1
@__param_str_drive0 = internal constant [10 x i8] c"pt.drive0\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_drive0 = internal constant %struct.kparam_array { i32 6, i32 4, ptr null, ptr @param_ops_int, ptr @drive0 }, align 4
@__param_drive0 = internal constant %struct.kernel_param { ptr @__param_str_drive0, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_drive0 } }, section "__param", align 4
@__UNIQUE_ID_drive0type228 = internal constant [32 x i8] c"pt.parmtype=drive0:array of int\00", section ".modinfo", align 1
@__param_str_drive1 = internal constant [10 x i8] c"pt.drive1\00", align 1
@__param_arr_drive1 = internal constant %struct.kparam_array { i32 6, i32 4, ptr null, ptr @param_ops_int, ptr @drive1 }, align 4
@__param_drive1 = internal constant %struct.kernel_param { ptr @__param_str_drive1, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_drive1 } }, section "__param", align 4
@__UNIQUE_ID_drive1type229 = internal constant [32 x i8] c"pt.parmtype=drive1:array of int\00", section ".modinfo", align 1
@__param_str_drive2 = internal constant [10 x i8] c"pt.drive2\00", align 1
@__param_arr_drive2 = internal constant %struct.kparam_array { i32 6, i32 4, ptr null, ptr @param_ops_int, ptr @drive2 }, align 4
@__param_drive2 = internal constant %struct.kernel_param { ptr @__param_str_drive2, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_drive2 } }, section "__param", align 4
@__UNIQUE_ID_drive2type230 = internal constant [32 x i8] c"pt.parmtype=drive2:array of int\00", section ".modinfo", align 1
@__param_str_drive3 = internal constant [10 x i8] c"pt.drive3\00", align 1
@__param_arr_drive3 = internal constant %struct.kparam_array { i32 6, i32 4, ptr null, ptr @param_ops_int, ptr @drive3 }, align 4
@__param_drive3 = internal constant %struct.kernel_param { ptr @__param_str_drive3, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_drive3 } }, section "__param", align 4
@__UNIQUE_ID_drive3type231 = internal constant [32 x i8] c"pt.parmtype=drive3:array of int\00", section ".modinfo", align 1
@pt = internal global { [4 x %struct.pt_unit], [144 x i8] } zeroinitializer, align 32
@pt_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__UNIQUE_ID_file232 = internal constant [32 x i8] c"pt.file=drivers/block/paride/pt\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [15 x i8] c"pt.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_pt__234_1023_pt_init6 = internal global ptr @pt_init, section ".initcall6.init", align 4
@__exitcall_pt_exit = internal global ptr @pt_exit, section ".exitcall.exit", align 4
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"pt\00", [29 x i8] zeroinitializer }, align 32
@drive0 = internal global { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 -1], [40 x i8] zeroinitializer }, align 32
@drive1 = internal global { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 -1], [40 x i8] zeroinitializer }, align 32
@drive2 = internal global { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 -1], [40 x i8] zeroinitializer }, align 32
@drive3 = internal global { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 -1], [40 x i8] zeroinitializer }, align 32
@pt_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @pt_read, ptr @pt_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pt_ioctl, ptr null, ptr null, i32 0, ptr @pt_open, ptr null, ptr @pt_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@pt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 979, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"pt_init: unable to get major number %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pt_init\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/block/paride/pt.c\00", [38 x i8] zeroinitializer }, align 32
@pt_init._entry_ptr = internal global ptr @pt_init._entry, section ".printk_index", align 4
@pt_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pt%d\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pt%dn\00", [26 x i8] zeroinitializer }, align 32
@pt_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: %s version %s, major %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pt_detect\00", [22 x i8] zeroinitializer }, align 32
@pt_detect._entry_ptr = internal global ptr @pt_detect._entry, section ".printk_index", align 4
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.04\00", [27 x i8] zeroinitializer }, align 32
@par_drv = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pt_detect._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.3, i32 611, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013failed to register %s driver\0A\00", [32 x i8] zeroinitializer }, align 32
@pt_detect._entry_ptr.11 = internal global ptr @pt_detect._entry.9, section ".printk_index", align 4
@drives = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @drive0, ptr @drive1, ptr @drive2, ptr @drive3], [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%d\00", [27 x i8] zeroinitializer }, align 32
@pt_scratch = internal global { [512 x i8], [128 x i8] } zeroinitializer, align 32
@pt_detect._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.7, ptr @.str.3, i32 655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: No ATAPI tape drive detected\0A\00", [62 x i8] zeroinitializer }, align 32
@pt_detect._entry_ptr.15 = internal global ptr @pt_detect._entry.13, section ".printk_index", align 4
@pt_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Reset (%d) signature = \00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pt_reset\00", [23 x i8] zeroinitializer }, align 32
@pt_reset._entry_ptr = internal global ptr @pt_reset._entry, section ".printk_index", align 4
@pt_reset._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.3, i32 474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%3x\00", [28 x i8] zeroinitializer }, align 32
@pt_reset._entry_ptr.20 = internal global ptr @pt_reset._entry.18, section ".printk_index", align 4
@pt_reset._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.3, i32 476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" (incorrect)\00", [19 x i8] zeroinitializer }, align 32
@pt_reset._entry_ptr.23 = internal global ptr @pt_reset._entry.21, section ".printk_index", align 4
@pt_reset._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.17, ptr @.str.3, i32 477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@pt_reset._entry_ptr.26 = internal global ptr @pt_reset._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"master\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"slave\00", [26 x i8] zeroinitializer }, align 32
@__const.pt_identify.ms = private unnamed_addr constant [2 x ptr] [ptr @.str.27, ptr @.str.28], align 4
@__const.pt_identify.id_cmd = private unnamed_addr constant [12 x i8] c"\12\00\00\00$\00\00\00\00\00\00\00", align 1
@__const.pt_identify.ms_cmd = private unnamed_addr constant [12 x i8] c"\1A\00*\00$\00\00\00\00\00\00\00", align 1
@__const.pt_identify.ls_cmd = private unnamed_addr constant [12 x i8] c"M\00q\00\00\00\00\00$\00\00\00", align 1
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"identify\00", [23 x i8] zeroinitializer }, align 32
@pt_identify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Drive %d, unsupported type %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pt_identify\00", [20 x i8] zeroinitializer }, align 32
@pt_identify._entry_ptr = internal global ptr @pt_identify._entry, section ".printk_index", align 4
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mode sense\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"log sense\00", [22 x i8] zeroinitializer }, align 32
@pt_identify._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.31, ptr @.str.3, i32 571, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: %s %s, %s\00", [18 x i8] zeroinitializer }, align 32
@pt_identify._entry_ptr.36 = internal global ptr @pt_identify._entry.34, section ".printk_index", align 4
@pt_identify._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.31, ptr @.str.3, i32 573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c", no media\0A\00", [20 x i8] zeroinitializer }, align 32
@pt_identify._entry_ptr.39 = internal global ptr @pt_identify._entry.37, section ".printk_index", align 4
@pt_identify._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.31, ptr @.str.3, i32 576, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c", RO\00", [27 x i8] zeroinitializer }, align 32
@pt_identify._entry_ptr.42 = internal global ptr @pt_identify._entry.40, section ".printk_index", align 4
@pt_identify._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.31, ptr @.str.3, i32 577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c", blocksize %d, %d MB\0A\00", [41 x i8] zeroinitializer }, align 32
@pt_identify._entry_ptr.45 = internal global ptr @pt_identify._entry.43, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"before command\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"command DRQ\00", [20 x i8] zeroinitializer }, align 32
@pt_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: %s: command phase error\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pt_command\00", [21 x i8] zeroinitializer }, align 32
@pt_command._entry_ptr = internal global ptr @pt_command._entry, section ".printk_index", align 4
@pt_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: %s %s: alt=0x%x stat=0x%x err=0x%x loop=%d phase=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pt_wait\00", [24 x i8] zeroinitializer }, align 32
@pt_wait._entry_ptr = internal global ptr @pt_wait._entry, section ".printk_index", align 4
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"completion\00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"data done\00", [22 x i8] zeroinitializer }, align 32
@__const.pt_req_sense.rs_cmd = private unnamed_addr constant [12 x i8] c"\03\00\00\00\10\00\00\00\00\00\00\00", align 1
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Request sense\00", [18 x i8] zeroinitializer }, align 32
@pt_req_sense._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.3, i32 369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Sense key: %x, ASC: %x, ASQ: %x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pt_req_sense\00", [19 x i8] zeroinitializer }, align 32
@pt_req_sense._entry_ptr = internal global ptr @pt_req_sense._entry, section ".printk_index", align 4
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"test unit ready\00", [16 x i8] zeroinitializer }, align 32
@__const.pt_read.rd_cmd = private unnamed_addr constant <{ i8, i8, [10 x i8] }> <{ i8 8, i8 1, [10 x i8] zeroinitializer }>, align 1
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"start read-ahead\00", [47 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"read DRQ\00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@pt_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.3, i32 831, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Phase error on read: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pt_read\00", [24 x i8] zeroinitializer }, align 32
@pt_read._entry_ptr = internal global ptr @pt_read._entry, section ".printk_index", align 4
@pt_poll_dsc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.3, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: %s DSC timeout\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pt_poll_dsc\00", [20 x i8] zeroinitializer }, align 32
@pt_poll_dsc._entry_ptr = internal global ptr @pt_poll_dsc._entry, section ".printk_index", align 4
@pt_poll_dsc._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.3, i32 418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: %s stat=0x%x err=0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@pt_poll_dsc._entry_ptr.68 = internal global ptr @pt_poll_dsc._entry.66, section ".printk_index", align 4
@.str.69 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__const.pt_write.wr_cmd = private unnamed_addr constant <{ i8, i8, [10 x i8] }> <{ i8 10, i8 1, [10 x i8] zeroinitializer }>, align 1
@.str.72 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"start buffer-available mode\00", [36 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"write DRQ\00", [22 x i8] zeroinitializer }, align 32
@pt_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.3, i32 932, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Phase error on write: %d \0A\00", [33 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pt_write\00", [23 x i8] zeroinitializer }, align 32
@pt_write._entry_ptr = internal global ptr @pt_write._entry, section ".printk_index", align 4
@pt_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.79, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pt_mutex, i64 52), ptr getelementptr (i8, ptr @pt_mutex, i64 52) }, ptr @pt_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.80, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@pt_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.3, i32 733, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: Unimplemented mt_op %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pt_ioctl\00", [23 x i8] zeroinitializer }, align 32
@pt_ioctl._entry_ptr = internal global ptr @pt_ioctl._entry, section ".printk_index", align 4
@.str.79 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pt_mutex.wait_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pt_mutex\00", [23 x i8] zeroinitializer }, align 32
@__const.pt_rewind.rw_cmd = private unnamed_addr constant <{ i8, [11 x i8] }> <{ i8 1, [11 x i8] zeroinitializer }>, align 1
@.str.81 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rewind\00", [25 x i8] zeroinitializer }, align 32
@__const.pt_write_fm.wm_cmd = private unnamed_addr constant [12 x i8] c"\10\00\00\00\01\00\00\00\00\00\00\00", align 1
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"write filemark\00", [17 x i8] zeroinitializer }, align 32
@pt_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.3, i32 691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: buffer allocation failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pt_open\00", [24 x i8] zeroinitializer }, align 32
@pt_open._entry_ptr = internal global ptr @pt_open._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@___asan_gen_.86 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 120, i32 12 }
@___asan_gen_.89 = private unnamed_addr constant [6 x i8] c"major\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 121, i32 12 }
@___asan_gen_.92 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 122, i32 14 }
@___asan_gen_.95 = private unnamed_addr constant [3 x i8] c"pt\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 232, i32 23 }
@___asan_gen_.98 = private unnamed_addr constant [9 x i8] c"pt_class\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 250, i32 22 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 122, i32 21 }
@___asan_gen_.104 = private unnamed_addr constant [7 x i8] c"drive0\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 125, i32 12 }
@___asan_gen_.107 = private unnamed_addr constant [7 x i8] c"drive1\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 126, i32 12 }
@___asan_gen_.110 = private unnamed_addr constant [7 x i8] c"drive2\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 127, i32 12 }
@___asan_gen_.113 = private unnamed_addr constant [7 x i8] c"drive3\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 128, i32 12 }
@___asan_gen_.116 = private unnamed_addr constant [8 x i8] c"pt_fops\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 239, i32 37 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 979, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 986, i32 13 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 995, i32 11 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 997, i32 17 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 607, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [8 x i8] c"par_drv\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 235, i32 14 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 611, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant [7 x i8] c"drives\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 130, i32 14 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 625, i32 36 }
@___asan_gen_.167 = private unnamed_addr constant [11 x i8] c"pt_scratch\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 234, i32 13 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 655, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 472, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 474, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 476, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 477, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 531, i32 18 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 531, i32 28 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 540, i32 38 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 547, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 562, i32 39 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 568, i32 39 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 571, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 573, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 576, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 577, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 304, i32 50 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 313, i32 46 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 319, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 289, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 335, i32 12 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 347, i32 59 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 360, i32 35 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 368, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 492, i32 35 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 774, i32 39 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 786, i32 44 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 810, i32 9 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 810, i32 28 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 830, i32 5 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 415, i32 4 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 417, i32 4 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 230, i32 6 }
@___asan_gen_.336 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 214, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 174, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 875, i32 31 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 887, i32 44 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 911, i32 9 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 931, i32 5 }
@___asan_gen_.359 = private unnamed_addr constant [9 x i8] c"pt_mutex\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 732, i32 4 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 194, i32 8 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 439, i32 51 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 446, i32 44 }
@___asan_gen_.383 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.389 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.390 = private constant [29 x i8] c"../drivers/block/paride/pt.c\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 691, i32 3 }
@llvm.compiler.used = appending global [143 x ptr] [ptr @__UNIQUE_ID_drive0type228, ptr @__UNIQUE_ID_drive1type229, ptr @__UNIQUE_ID_drive2type230, ptr @__UNIQUE_ID_drive3type231, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__UNIQUE_ID_majortype226, ptr @__UNIQUE_ID_nametype227, ptr @__UNIQUE_ID_verbosetype225, ptr @__exitcall_pt_exit, ptr @__initcall__kmod_pt__234_1023_pt_init6, ptr @__param_drive0, ptr @__param_drive1, ptr @__param_drive2, ptr @__param_drive3, ptr @__param_major, ptr @__param_name, ptr @__param_verbose, ptr @pt_command._entry, ptr @pt_command._entry_ptr, ptr @pt_detect._entry, ptr @pt_detect._entry.13, ptr @pt_detect._entry.9, ptr @pt_detect._entry_ptr, ptr @pt_detect._entry_ptr.11, ptr @pt_detect._entry_ptr.15, ptr @pt_exit, ptr @pt_identify._entry, ptr @pt_identify._entry.34, ptr @pt_identify._entry.37, ptr @pt_identify._entry.40, ptr @pt_identify._entry.43, ptr @pt_identify._entry_ptr, ptr @pt_identify._entry_ptr.36, ptr @pt_identify._entry_ptr.39, ptr @pt_identify._entry_ptr.42, ptr @pt_identify._entry_ptr.45, ptr @pt_init._entry, ptr @pt_init._entry_ptr, ptr @pt_ioctl._entry, ptr @pt_ioctl._entry_ptr, ptr @pt_open._entry, ptr @pt_open._entry_ptr, ptr @pt_poll_dsc._entry, ptr @pt_poll_dsc._entry.66, ptr @pt_poll_dsc._entry_ptr, ptr @pt_poll_dsc._entry_ptr.68, ptr @pt_read._entry, ptr @pt_read._entry_ptr, ptr @pt_req_sense._entry, ptr @pt_req_sense._entry_ptr, ptr @pt_reset._entry, ptr @pt_reset._entry.18, ptr @pt_reset._entry.21, ptr @pt_reset._entry.24, ptr @pt_reset._entry_ptr, ptr @pt_reset._entry_ptr.20, ptr @pt_reset._entry_ptr.23, ptr @pt_reset._entry_ptr.26, ptr @pt_wait._entry, ptr @pt_wait._entry_ptr, ptr @pt_write._entry, ptr @pt_write._entry_ptr, ptr @verbose, ptr @major, ptr @name, ptr @pt, ptr @pt_class, ptr @.str, ptr @drive0, ptr @drive1, ptr @drive2, ptr @drive3, ptr @pt_fops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @pt_init.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @par_drv, ptr @.str.10, ptr @drives, ptr @.str.12, ptr @pt_scratch, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @pt_mutex, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84], section "llvm.metadata"
@0 = internal global [102 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verbose to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt to i32), i32 624, i32 768, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drive0 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drive1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drive2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drive3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @par_drv to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt_detect._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drives to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt_scratch to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt_detect._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt_reset._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt_reset._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt_reset._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt_identify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt_identify._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt_identify._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt_identify._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt_identify._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt_req_sense._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt_poll_dsc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt_poll_dsc._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pt_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %unit.023 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %present = getelementptr [4 x %struct.pt_unit], ptr @pt, i32 0, i32 %unit.023, i32 8
  %0 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %2 = load ptr, ptr @pt_class, align 4
  %3 = load i32, ptr @major, align 4
  %shl = shl i32 %3, 20
  %or = or i32 %shl, %unit.023
  tail call void @device_destroy(ptr noundef %2, i32 noundef %or) #10
  %4 = load ptr, ptr @pt_class, align 4
  %5 = load i32, ptr @major, align 4
  %shl1 = shl i32 %5, 20
  %add = add nuw nsw i32 %unit.023, 128
  %or2 = or i32 %shl1, %add
  tail call void @device_destroy(ptr noundef %4, i32 noundef %or2) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %unit.023, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  %6 = load ptr, ptr @pt_class, align 4
  tail call void @class_destroy(ptr noundef %6) #10
  %7 = load i32, ptr @major, align 4
  %8 = load ptr, ptr @name, align 4
  tail call void @__unregister_chrdev(i32 noundef %7, i32 noundef 0, i32 noundef 256, ptr noundef %8) #10
  br label %for.body5

for.body5:                                        ; preds = %for.inc12.for.body5_crit_edge, %for.end
  %unit.125 = phi i32 [ 0, %for.end ], [ %inc13, %for.inc12.for.body5_crit_edge ]
  %present7 = getelementptr [4 x %struct.pt_unit], ptr @pt, i32 0, i32 %unit.125, i32 8
  %9 = ptrtoint ptr %present7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %present7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.not = icmp eq i32 %10, 0
  br i1 %tobool8.not, label %for.body5.for.inc12_crit_edge, label %if.then9

for.body5.for.inc12_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc12

if.then9:                                         ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #12
  %pi = getelementptr [4 x %struct.pt_unit], ptr @pt, i32 0, i32 %unit.125, i32 1
  %11 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pi, align 4
  tail call void @pi_release(ptr noundef %12) #10
  br label %for.inc12

for.inc12:                                        ; preds = %if.then9, %for.body5.for.inc12_crit_edge
  %inc13 = add nuw nsw i32 %unit.125, 1
  %exitcond27.not = icmp eq i32 %inc13, 4
  br i1 %exitcond27.not, label %for.end14, label %for.inc12.for.body5_crit_edge

for.inc12.for.body5_crit_edge:                    ; preds = %for.inc12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body5

for.end14:                                        ; preds = %for.inc12
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pi_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @name, align 4
  %1 = load i32, ptr @major, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %0, ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %1) #13
  %2 = load ptr, ptr @name, align 4
  %call1.i = tail call ptr @pi_register_driver(ptr noundef %2) #10
  store ptr %call1.i, ptr @par_drv, align 4
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %entry.pt_detect.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.pt_detect.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %pt_detect.exit

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %specified.0123.i = phi i32 [ %specified.1.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %unit.0121.i = phi i32 [ %inc40.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %found.0120.i = phi i32 [ %found.2.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x %struct.pt_unit], ptr @pt, i32 0, i32 %unit.0121.i
  %pi.i = getelementptr [4 x %struct.pt_unit], ptr @pt, i32 0, i32 %unit.0121.i, i32 1
  %3 = ptrtoint ptr %pi.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx.i, ptr %pi.i, align 4
  %available.i = getelementptr [4 x %struct.pt_unit], ptr @pt, i32 0, i32 %unit.0121.i, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %available.i, i32 noundef 4) #10
  %4 = ptrtoint ptr %available.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 1, ptr %available.i, align 4
  %flags.i = getelementptr [4 x %struct.pt_unit], ptr @pt, i32 0, i32 %unit.0121.i, i32 2
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %flags.i, align 4
  %last_sense.i = getelementptr [4 x %struct.pt_unit], ptr @pt, i32 0, i32 %unit.0121.i, i32 3
  %6 = ptrtoint ptr %last_sense.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %last_sense.i, align 4
  %present.i = getelementptr [4 x %struct.pt_unit], ptr @pt, i32 0, i32 %unit.0121.i, i32 8
  %7 = ptrtoint ptr %present.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %present.i, align 4
  %bufptr.i = getelementptr [4 x %struct.pt_unit], ptr @pt, i32 0, i32 %unit.0121.i, i32 9
  %8 = ptrtoint ptr %bufptr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %bufptr.i, align 4
  %arrayidx8.i = getelementptr [4 x ptr], ptr @drives, i32 0, i32 %unit.0121.i
  %9 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx8.i, align 4
  %arrayidx9.i = getelementptr [6 x i32], ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx9.i, align 4
  %drive.i = getelementptr [4 x %struct.pt_unit], ptr @pt, i32 0, i32 %unit.0121.i, i32 4
  %13 = ptrtoint ptr %drive.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %drive.i, align 4
  %name.i = getelementptr [4 x %struct.pt_unit], ptr @pt, i32 0, i32 %unit.0121.i, i32 10
  %14 = load ptr, ptr @name, align 4
  %call10.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 8, ptr noundef nonnull @.str.12, ptr noundef %14, i32 noundef %unit.0121.i) #10
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool13.not.i = icmp eq i32 %16, 0
  br i1 %tobool13.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.end15.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end15.i:                                       ; preds = %for.body.i
  %inc.i = add i32 %specified.0123.i, 1
  %17 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pi.i, align 4
  %arrayidx20.i = getelementptr [6 x i32], ptr %10, i32 0, i32 3
  %19 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx20.i, align 4
  %arrayidx22.i = getelementptr [6 x i32], ptr %10, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx22.i, align 4
  %arrayidx24.i = getelementptr [6 x i32], ptr %10, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx24.i, align 4
  %arrayidx26.i = getelementptr [6 x i32], ptr %10, i32 0, i32 5
  %25 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx26.i, align 4
  %27 = load i32, ptr @verbose, align 4
  %call29.i = tail call i32 @pi_init(ptr noundef %18, i32 noundef 0, i32 noundef %16, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %26, ptr noundef nonnull @pt_scratch, i32 noundef 3, i32 noundef %27, ptr noundef %name.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end15.i.cleanup.i_crit_edge, label %if.then31.i

if.end15.i.cleanup.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.then31.i:                                      ; preds = %if.end15.i
  %28 = ptrtoint ptr %drive.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %drive.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp.i.i = icmp eq i32 %29, -1
  br i1 %cmp.i.i, label %for.cond.preheader.i.i, label %if.else.i.i

for.cond.preheader.i.i:                           ; preds = %if.then31.i
  %30 = ptrtoint ptr %drive.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %drive.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i
  %call.i.i = tail call fastcc i32 @pt_reset(ptr noundef %arrayidx.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.pt_probe.exit.i_crit_edge, label %for.inc.i.i

for.body.i.i.pt_probe.exit.i_crit_edge:           ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pt_probe.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %31 = ptrtoint ptr %drive.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %drive.i, align 4
  %inc.i.i = add i32 %32, 1
  store i32 %inc.i.i, ptr %drive.i, align 4
  %cmp3.i.i = icmp slt i32 %inc.i.i, 2
  br i1 %cmp3.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.if.else.i_crit_edge

for.inc.i.i.if.else.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

if.else.i.i:                                      ; preds = %if.then31.i
  %call7.i.i = tail call fastcc i32 @pt_reset(ptr noundef %arrayidx.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %if.else.i.i.pt_probe.exit.i_crit_edge, label %if.else.i.i.if.else.i_crit_edge

if.else.i.i.if.else.i_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.else.i.i.pt_probe.exit.i_crit_edge:            ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pt_probe.exit.i

pt_probe.exit.i:                                  ; preds = %if.else.i.i.pt_probe.exit.i_crit_edge, %for.body.i.i.pt_probe.exit.i_crit_edge
  %call10.i.i = tail call fastcc i32 @pt_identify(ptr noundef %arrayidx.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool33.not.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool33.not.i, label %if.then34.i, label %pt_probe.exit.i.if.else.i_crit_edge

pt_probe.exit.i.if.else.i_crit_edge:              ; preds = %pt_probe.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then34.i:                                      ; preds = %pt_probe.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %present.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %present.i, align 4
  %inc36.i = add i32 %found.0120.i, 1
  br label %cleanup.i

if.else.i:                                        ; preds = %pt_probe.exit.i.if.else.i_crit_edge, %if.else.i.i.if.else.i_crit_edge, %for.inc.i.i.if.else.i_crit_edge
  %34 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pi.i, align 4
  tail call void @pi_release(ptr noundef %35) #10
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else.i, %if.then34.i, %if.end15.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %found.2.i = phi i32 [ %found.0120.i, %for.body.i.cleanup.i_crit_edge ], [ %found.0120.i, %if.else.i ], [ %inc36.i, %if.then34.i ], [ %found.0120.i, %if.end15.i.cleanup.i_crit_edge ]
  %specified.1.i = phi i32 [ %specified.0123.i, %for.body.i.cleanup.i_crit_edge ], [ %inc.i, %if.else.i ], [ %inc.i, %if.then34.i ], [ %inc.i, %if.end15.i.cleanup.i_crit_edge ]
  %inc40.i = add nuw nsw i32 %unit.0121.i, 1
  %exitcond.not.i = icmp eq i32 %inc40.i, 4
  br i1 %exitcond.not.i, label %for.end.i, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %specified.1.i)
  %cmp41.i = icmp eq i32 %specified.1.i, 0
  br i1 %cmp41.i, label %if.then42.i, label %for.end.i.if.end58.i_crit_edge

for.end.i.if.end58.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58.i

if.then42.i:                                      ; preds = %for.end.i
  %36 = load ptr, ptr getelementptr inbounds ([4 x %struct.pt_unit], ptr @pt, i32 0, i32 0, i32 1), align 4
  %37 = load i32, ptr @verbose, align 4
  %call46.i = tail call i32 @pi_init(ptr noundef %36, i32 noundef 1, i32 noundef -1, i32 noundef -1, i32 noundef -1, i32 noundef -1, i32 noundef -1, ptr noundef nonnull @pt_scratch, i32 noundef 3, i32 noundef %37, ptr noundef getelementptr inbounds ([4 x %struct.pt_unit], ptr @pt, i32 0, i32 0, i32 10)) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.then42.i.if.end58.i_crit_edge, label %if.then48.i

if.then42.i.if.end58.i_crit_edge:                 ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58.i

if.then48.i:                                      ; preds = %if.then42.i
  %38 = load i32, ptr getelementptr inbounds ([4 x %struct.pt_unit], ptr @pt, i32 0, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp.i101.i = icmp eq i32 %38, -1
  br i1 %cmp.i101.i, label %for.cond.preheader.i102.i, label %if.else.i111.i

for.cond.preheader.i102.i:                        ; preds = %if.then48.i
  store i32 0, ptr getelementptr inbounds ([4 x %struct.pt_unit], ptr @pt, i32 0, i32 0, i32 4), align 4
  br label %for.body.i105.i

for.body.i105.i:                                  ; preds = %for.inc.i108.i.for.body.i105.i_crit_edge, %for.cond.preheader.i102.i
  %call.i103.i = tail call fastcc i32 @pt_reset(ptr noundef nonnull @pt) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103.i)
  %tobool.not.i104.i = icmp eq i32 %call.i103.i, 0
  br i1 %tobool.not.i104.i, label %for.body.i105.i.pt_probe.exit115.i_crit_edge, label %for.inc.i108.i

for.body.i105.i.pt_probe.exit115.i_crit_edge:     ; preds = %for.body.i105.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pt_probe.exit115.i

for.inc.i108.i:                                   ; preds = %for.body.i105.i
  %39 = load i32, ptr getelementptr inbounds ([4 x %struct.pt_unit], ptr @pt, i32 0, i32 0, i32 4), align 4
  %inc.i106.i = add i32 %39, 1
  store i32 %inc.i106.i, ptr getelementptr inbounds ([4 x %struct.pt_unit], ptr @pt, i32 0, i32 0, i32 4), align 4
  %cmp3.i107.i = icmp slt i32 %inc.i106.i, 2
  br i1 %cmp3.i107.i, label %for.inc.i108.i.for.body.i105.i_crit_edge, label %for.inc.i108.i.if.else54.i_crit_edge

for.inc.i108.i.if.else54.i_crit_edge:             ; preds = %for.inc.i108.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else54.i

for.inc.i108.i.for.body.i105.i_crit_edge:         ; preds = %for.inc.i108.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i105.i

if.else.i111.i:                                   ; preds = %if.then48.i
  %call7.i109.i = tail call fastcc i32 @pt_reset(ptr noundef nonnull @pt) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i109.i)
  %tobool8.not.i110.i = icmp eq i32 %call7.i109.i, 0
  br i1 %tobool8.not.i110.i, label %if.else.i111.i.pt_probe.exit115.i_crit_edge, label %if.else.i111.i.if.else54.i_crit_edge

if.else.i111.i.if.else54.i_crit_edge:             ; preds = %if.else.i111.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else54.i

if.else.i111.i.pt_probe.exit115.i_crit_edge:      ; preds = %if.else.i111.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pt_probe.exit115.i

pt_probe.exit115.i:                               ; preds = %if.else.i111.i.pt_probe.exit115.i_crit_edge, %for.body.i105.i.pt_probe.exit115.i_crit_edge
  %call10.i112.i = tail call fastcc i32 @pt_identify(ptr noundef nonnull @pt) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i112.i)
  %tobool50.not.i = icmp eq i32 %call10.i112.i, 0
  br i1 %tobool50.not.i, label %if.then51.i, label %pt_probe.exit115.i.if.else54.i_crit_edge

pt_probe.exit115.i.if.else54.i_crit_edge:         ; preds = %pt_probe.exit115.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else54.i

if.then51.i:                                      ; preds = %pt_probe.exit115.i
  call void @__sanitizer_cov_trace_pc() #12
  store i32 1, ptr getelementptr inbounds ([4 x %struct.pt_unit], ptr @pt, i32 0, i32 0, i32 8), align 4
  %inc53.i = add i32 %found.2.i, 1
  br label %if.end58.i

if.else54.i:                                      ; preds = %pt_probe.exit115.i.if.else54.i_crit_edge, %if.else.i111.i.if.else54.i_crit_edge, %for.inc.i108.i.if.else54.i_crit_edge
  %40 = load ptr, ptr getelementptr inbounds ([4 x %struct.pt_unit], ptr @pt, i32 0, i32 0, i32 1), align 4
  tail call void @pi_release(ptr noundef %40) #10
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.else54.i, %if.then51.i, %if.then42.i.if.end58.i_crit_edge, %for.end.i.if.end58.i_crit_edge
  %found.3.i = phi i32 [ %found.2.i, %if.else54.i ], [ %inc53.i, %if.then51.i ], [ %found.2.i, %if.then42.i.if.end58.i_crit_edge ], [ %found.2.i, %for.end.i.if.end58.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.3.i)
  %tobool59.not.i = icmp eq i32 %found.3.i, 0
  br i1 %tobool59.not.i, label %if.end61.i, label %if.end3

if.end61.i:                                       ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #12
  %41 = load ptr, ptr @par_drv, align 4
  tail call void @pi_unregister_driver(ptr noundef %41) #10
  br label %pt_detect.exit

pt_detect.exit:                                   ; preds = %if.end61.i, %entry.pt_detect.exit_crit_edge
  %.str.14.sink.i = phi ptr [ @.str.14, %if.end61.i ], [ @.str.10, %entry.pt_detect.exit_crit_edge ]
  %42 = load ptr, ptr @name, align 4
  %call66.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.14.sink.i, ptr noundef %42) #13
  br label %out

if.end3:                                          ; preds = %if.end58.i
  %43 = load i32, ptr @major, align 4
  %44 = load ptr, ptr @name, align 4
  %call.i46 = tail call i32 @__register_chrdev(i32 noundef %43, i32 noundef 0, i32 noundef 256, ptr noundef %44, ptr noundef nonnull @pt_fops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %cmp = icmp slt i32 %call.i46, 0
  br i1 %cmp, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end3
  %45 = load i32, ptr @major, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %45) #13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end
  %unit.052 = phi i32 [ 0, %do.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %present = getelementptr [4 x %struct.pt_unit], ptr @pt, i32 0, i32 %unit.052, i32 8
  %46 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool8.not = icmp eq i32 %47, 0
  br i1 %tobool8.not, label %for.body.for.inc_crit_edge, label %if.then9

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %pi = getelementptr [4 x %struct.pt_unit], ptr @pt, i32 0, i32 %unit.052, i32 1
  %48 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pi, align 4
  tail call void @pi_release(ptr noundef %49) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %unit.052, 1
  %exitcond55.not = icmp eq i32 %inc, 4
  br i1 %exitcond55.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end12:                                         ; preds = %if.end3
  store i32 %call.i46, ptr @major, align 4
  %call14 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @pt_init.__key) #10
  store ptr %call14, ptr @pt_class, align 4
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end12.for.body21_crit_edge

if.end12.for.body21_crit_edge:                    ; preds = %if.end12
  br label %for.body21

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %call14 to i32
  %51 = load i32, ptr @major, align 4
  tail call void @__unregister_chrdev(i32 noundef %51, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str) #10
  br label %out

for.body21:                                       ; preds = %for.inc31.for.body21_crit_edge, %if.end12.for.body21_crit_edge
  %unit.150 = phi i32 [ %inc32, %for.inc31.for.body21_crit_edge ], [ 0, %if.end12.for.body21_crit_edge ]
  %present23 = getelementptr [4 x %struct.pt_unit], ptr @pt, i32 0, i32 %unit.150, i32 8
  %52 = ptrtoint ptr %present23 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %present23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool24.not = icmp eq i32 %53, 0
  br i1 %tobool24.not, label %for.body21.for.inc31_crit_edge, label %if.then25

for.body21.for.inc31_crit_edge:                   ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc31

if.then25:                                        ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #12
  %54 = load ptr, ptr @pt_class, align 4
  %55 = load i32, ptr @major, align 4
  %shl = shl i32 %55, 20
  %or = or i32 %shl, %unit.150
  %call26 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %54, ptr noundef null, i32 noundef %or, ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef %unit.150) #10
  %56 = load ptr, ptr @pt_class, align 4
  %57 = load i32, ptr @major, align 4
  %shl27 = shl i32 %57, 20
  %add = add nuw nsw i32 %unit.150, 128
  %or28 = or i32 %shl27, %add
  %call29 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %56, ptr noundef null, i32 noundef %or28, ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef %unit.150) #10
  br label %for.inc31

for.inc31:                                        ; preds = %if.then25, %for.body21.for.inc31_crit_edge
  %inc32 = add nuw nsw i32 %unit.150, 1
  %exitcond.not = icmp eq i32 %inc32, 4
  br i1 %exitcond.not, label %for.inc31.out_crit_edge, label %for.inc31.for.body21_crit_edge

for.inc31.for.body21_crit_edge:                   ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body21

for.inc31.out_crit_edge:                          ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out:                                              ; preds = %for.inc31.out_crit_edge, %if.then16, %for.inc.out_crit_edge, %pt_detect.exit
  %err.0 = phi i32 [ %50, %if.then16 ], [ -19, %pt_detect.exit ], [ %call.i46, %for.inc.out_crit_edge ], [ %call.i46, %for.inc31.out_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__unregister_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pi_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pi_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pi_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pt_reset(ptr noundef %tape) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pi1 = getelementptr inbounds %struct.pt_unit, ptr %tape, i32 0, i32 1
  %0 = ptrtoint ptr %pi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pi1, align 4
  tail call void @pi_connect(ptr noundef %1) #10
  %drive.i = getelementptr inbounds %struct.pt_unit, ptr %tape, i32 0, i32 4
  %2 = ptrtoint ptr %drive.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %drive.i, align 4
  %4 = shl i32 %3, 4
  %conv.i = add i32 %4, 160
  %conv = and i32 %conv.i, 240
  tail call void @pi_write_regr(ptr noundef %1, i32 noundef 0, i32 noundef 6, i32 noundef %conv) #10
  tail call void @pi_write_regr(ptr noundef %1, i32 noundef 0, i32 noundef 7, i32 noundef 8) #10
  %call.i = tail call i32 @schedule_timeout_interruptible(i32 noundef 2) #10
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %entry
  %inc61 = phi i32 [ 1, %entry ], [ %inc, %while.body.land.rhs_crit_edge ]
  %call.i57 = tail call i32 @pi_read_regr(ptr noundef %1, i32 noundef 1, i32 noundef 6) #10
  %and = and i32 %call.i57, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %call.i58 = tail call i32 @schedule_timeout_interruptible(i32 noundef 10) #10
  %inc = add nuw nsw i32 %inc61, 1
  %exitcond.not = icmp eq i32 %inc, 31
  br i1 %exitcond.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %inc.lcssa = phi i32 [ 31, %while.body.while.end_crit_edge ], [ %inc61, %land.rhs.while.end_crit_edge ]
  %call.i59 = tail call i32 @pi_read_regr(ptr noundef %1, i32 noundef 0, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i59)
  %cmp7 = icmp eq i32 %call.i59, 1
  %call.i59.1 = tail call i32 @pi_read_regr(ptr noundef %1, i32 noundef 0, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i59.1)
  %cmp7.1 = icmp eq i32 %call.i59.1, 1
  %and9.167 = and i1 %cmp7, %cmp7.1
  %call.i59.2 = tail call i32 @pi_read_regr(ptr noundef %1, i32 noundef 0, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i59.2)
  %cmp7.2 = icmp eq i32 %call.i59.2, 1
  %and9.268 = and i1 %and9.167, %cmp7.2
  %call.i59.3 = tail call i32 @pi_read_regr(ptr noundef %1, i32 noundef 0, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %call.i59.3)
  %cmp7.3 = icmp eq i32 %call.i59.3, 20
  %and9.369 = and i1 %and9.268, %cmp7.3
  %call.i59.4 = tail call i32 @pi_read_regr(ptr noundef %1, i32 noundef 0, i32 noundef 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 235, i32 %call.i59.4)
  %cmp7.4 = icmp eq i32 %call.i59.4, 235
  %and9.470 = and i1 %and9.369, %cmp7.4
  %5 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool11.not = icmp eq i32 %5, 0
  br i1 %tobool11.not, label %while.end.if.end39_crit_edge, label %do.end

while.end.if.end39_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

do.end:                                           ; preds = %while.end
  %name = getelementptr inbounds %struct.pt_unit, ptr %tape, i32 0, i32 10
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name, i32 noundef %inc.lcssa) #13
  %call.i60 = tail call i32 @pi_read_regr(ptr noundef %1, i32 noundef 0, i32 noundef 1) #10
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call.i60) #13
  %call.i60.1 = tail call i32 @pi_read_regr(ptr noundef %1, i32 noundef 0, i32 noundef 2) #10
  %call23.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call.i60.1) #13
  %call.i60.2 = tail call i32 @pi_read_regr(ptr noundef %1, i32 noundef 0, i32 noundef 3) #10
  %call23.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call.i60.2) #13
  %call.i60.3 = tail call i32 @pi_read_regr(ptr noundef %1, i32 noundef 0, i32 noundef 4) #10
  %call23.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call.i60.3) #13
  %call.i60.4 = tail call i32 @pi_read_regr(ptr noundef %1, i32 noundef 0, i32 noundef 5) #10
  %call23.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call.i60.4) #13
  br i1 %and9.470, label %do.end.do.end36_crit_edge, label %do.end31

do.end.do.end36_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end36

do.end31:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #13
  br label %do.end36

do.end36:                                         ; preds = %do.end31, %do.end.do.end36_crit_edge
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #13
  br label %if.end39

if.end39:                                         ; preds = %do.end36, %while.end.if.end39_crit_edge
  tail call void @pi_disconnect(ptr noundef %1) #10
  %not.and9.470 = xor i1 %and9.470, true
  %sub = sext i1 %not.and9.470 to i32
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pt_identify(ptr noundef %tape) unnamed_addr #5 align 64 {
entry:
  %tr_cmd.i = alloca [12 x i8], align 1
  %mf = alloca [10 x i8], align 1
  %id = alloca [18 x i8], align 1
  %id_cmd = alloca [12 x i8], align 1
  %ms_cmd = alloca [12 x i8], align 1
  %ls_cmd = alloca [12 x i8], align 1
  %buf = alloca [36 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %mf) #10
  %0 = getelementptr inbounds [10 x i8], ptr %mf, i32 0, i32 1
  %1 = call ptr @memset(ptr %mf, i32 255, i32 10)
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %id) #10
  %2 = call ptr @memset(ptr %id, i32 255, i32 18)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %id_cmd) #10
  %3 = call ptr @memcpy(ptr %id_cmd, ptr @__const.pt_identify.id_cmd, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ms_cmd) #10
  %4 = call ptr @memcpy(ptr %ms_cmd, ptr @__const.pt_identify.ms_cmd, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ls_cmd) #10
  %5 = call ptr @memcpy(ptr %ls_cmd, ptr @__const.pt_identify.ls_cmd, i32 12)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %buf) #10
  %6 = call ptr @memset(ptr %buf, i32 255, i32 36)
  %call.i = call fastcc i32 @pt_command(ptr noundef %tape, ptr noundef nonnull %id_cmd, i32 noundef 36, ptr noundef nonnull @.str.29) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %7(i32 noundef 214748000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.pt_atapi.exit_crit_edge

entry.pt_atapi.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %pt_atapi.exit

if.end.i:                                         ; preds = %entry
  %call1.i = call fastcc i32 @pt_completion(ptr noundef %tape, ptr noundef nonnull %buf, ptr noundef nonnull @.str.29) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.pt_atapi.exit_crit_edge

if.end.i.pt_atapi.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pt_atapi.exit

pt_atapi.exit:                                    ; preds = %if.end.i.pt_atapi.exit_crit_edge, %entry.pt_atapi.exit_crit_edge
  call fastcc void @pt_req_sense(ptr noundef %tape, i32 noundef 0) #10
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %buf, align 1
  %10 = and i8 %9, 31
  %and = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp.not = icmp eq i8 %10, 1
  br i1 %cmp.not, label %for.inc.i, label %if.then3

if.then3:                                         ; preds = %if.end
  %11 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not = icmp eq i32 %11, 0
  br i1 %tobool4.not, label %if.then3.cleanup_crit_edge, label %do.end

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.pt_unit, ptr %tape, i32 0, i32 10
  %drive = getelementptr inbounds %struct.pt_unit, ptr %tape, i32 0, i32 4
  %12 = ptrtoint ptr %drive to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %drive, align 4
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name, i32 noundef %13, i32 noundef %and) #13
  br label %cleanup

for.inc.i:                                        ; preds = %if.end
  %arrayidx.i = getelementptr inbounds i8, ptr %buf, i32 8
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  %16 = ptrtoint ptr %mf to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %mf, align 1
  %arrayidx.i.1 = getelementptr inbounds i8, ptr %buf, i32 9
  %17 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %18)
  %cmp1.not.i.1 = icmp eq i8 %18, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %15)
  %cmp6.not.i.1 = icmp eq i8 %15, 32
  %or.cond.i.1 = select i1 %cmp1.not.i.1, i1 %cmp6.not.i.1, i1 false
  br i1 %or.cond.i.1, label %for.inc.i.for.inc.i.1_crit_edge, label %if.then.i.1

for.inc.i.for.inc.i.1_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.1

if.then.i.1:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %0, align 1
  %conv11.i.1 = zext i8 %18 to i32
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %if.then.i.1, %for.inc.i.for.inc.i.1_crit_edge
  %j.1.i.1 = phi i32 [ 2, %if.then.i.1 ], [ 1, %for.inc.i.for.inc.i.1_crit_edge ]
  %l.1.i.1 = phi i32 [ %conv11.i.1, %if.then.i.1 ], [ 32, %for.inc.i.for.inc.i.1_crit_edge ]
  %arrayidx.i.2 = getelementptr inbounds i8, ptr %buf, i32 10
  %20 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %21)
  %cmp1.not.i.2 = icmp eq i8 %21, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %l.1.i.1)
  %cmp6.not.i.2 = icmp eq i32 %l.1.i.1, 32
  %or.cond.i.2 = select i1 %cmp1.not.i.2, i1 %cmp6.not.i.2, i1 false
  br i1 %or.cond.i.2, label %for.inc.i.1.for.inc.i.2_crit_edge, label %if.then.i.2

for.inc.i.1.for.inc.i.2_crit_edge:                ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.2

if.then.i.2:                                      ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i.2 = add nuw nsw i32 %j.1.i.1, 1
  %arrayidx10.i.2 = getelementptr i8, ptr %mf, i32 %j.1.i.1
  %22 = ptrtoint ptr %arrayidx10.i.2 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx10.i.2, align 1
  %conv11.i.2 = zext i8 %21 to i32
  br label %for.inc.i.2

for.inc.i.2:                                      ; preds = %if.then.i.2, %for.inc.i.1.for.inc.i.2_crit_edge
  %j.1.i.2 = phi i32 [ %inc.i.2, %if.then.i.2 ], [ %j.1.i.1, %for.inc.i.1.for.inc.i.2_crit_edge ]
  %l.1.i.2 = phi i32 [ %conv11.i.2, %if.then.i.2 ], [ 32, %for.inc.i.1.for.inc.i.2_crit_edge ]
  %arrayidx.i.3 = getelementptr inbounds i8, ptr %buf, i32 11
  %23 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %24)
  %cmp1.not.i.3 = icmp eq i8 %24, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %l.1.i.2)
  %cmp6.not.i.3 = icmp eq i32 %l.1.i.2, 32
  %or.cond.i.3 = select i1 %cmp1.not.i.3, i1 %cmp6.not.i.3, i1 false
  br i1 %or.cond.i.3, label %for.inc.i.2.for.inc.i.3_crit_edge, label %if.then.i.3

for.inc.i.2.for.inc.i.3_crit_edge:                ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.3

if.then.i.3:                                      ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i.3 = add nuw nsw i32 %j.1.i.2, 1
  %arrayidx10.i.3 = getelementptr i8, ptr %mf, i32 %j.1.i.2
  %25 = ptrtoint ptr %arrayidx10.i.3 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %arrayidx10.i.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %24)
  %phi.cmp = icmp eq i8 %24, 32
  br label %for.inc.i.3

for.inc.i.3:                                      ; preds = %if.then.i.3, %for.inc.i.2.for.inc.i.3_crit_edge
  %j.1.i.3 = phi i32 [ %inc.i.3, %if.then.i.3 ], [ %j.1.i.2, %for.inc.i.2.for.inc.i.3_crit_edge ]
  %l.1.i.3 = phi i1 [ %phi.cmp, %if.then.i.3 ], [ true, %for.inc.i.2.for.inc.i.3_crit_edge ]
  %arrayidx.i.4 = getelementptr inbounds i8, ptr %buf, i32 12
  %26 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %27)
  %cmp1.not.i.4 = icmp eq i8 %27, 32
  %or.cond.i.4 = select i1 %cmp1.not.i.4, i1 %l.1.i.3, i1 false
  br i1 %or.cond.i.4, label %for.inc.i.3.for.inc.i.4_crit_edge, label %if.then.i.4

for.inc.i.3.for.inc.i.4_crit_edge:                ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.4

if.then.i.4:                                      ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i.4 = add nuw nsw i32 %j.1.i.3, 1
  %arrayidx10.i.4 = getelementptr i8, ptr %mf, i32 %j.1.i.3
  %28 = ptrtoint ptr %arrayidx10.i.4 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %arrayidx10.i.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %27)
  %phi.cmp180 = icmp eq i8 %27, 32
  br label %for.inc.i.4

for.inc.i.4:                                      ; preds = %if.then.i.4, %for.inc.i.3.for.inc.i.4_crit_edge
  %j.1.i.4 = phi i32 [ %inc.i.4, %if.then.i.4 ], [ %j.1.i.3, %for.inc.i.3.for.inc.i.4_crit_edge ]
  %l.1.i.4 = phi i1 [ %phi.cmp180, %if.then.i.4 ], [ true, %for.inc.i.3.for.inc.i.4_crit_edge ]
  %arrayidx.i.5 = getelementptr inbounds i8, ptr %buf, i32 13
  %29 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %30)
  %cmp1.not.i.5 = icmp eq i8 %30, 32
  %or.cond.i.5 = select i1 %cmp1.not.i.5, i1 %l.1.i.4, i1 false
  br i1 %or.cond.i.5, label %for.inc.i.4.for.inc.i.5_crit_edge, label %if.then.i.5

for.inc.i.4.for.inc.i.5_crit_edge:                ; preds = %for.inc.i.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.5

if.then.i.5:                                      ; preds = %for.inc.i.4
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i.5 = add nuw nsw i32 %j.1.i.4, 1
  %arrayidx10.i.5 = getelementptr i8, ptr %mf, i32 %j.1.i.4
  %31 = ptrtoint ptr %arrayidx10.i.5 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %arrayidx10.i.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %30)
  %phi.cmp181 = icmp eq i8 %30, 32
  br label %for.inc.i.5

for.inc.i.5:                                      ; preds = %if.then.i.5, %for.inc.i.4.for.inc.i.5_crit_edge
  %j.1.i.5 = phi i32 [ %inc.i.5, %if.then.i.5 ], [ %j.1.i.4, %for.inc.i.4.for.inc.i.5_crit_edge ]
  %l.1.i.5 = phi i1 [ %phi.cmp181, %if.then.i.5 ], [ true, %for.inc.i.4.for.inc.i.5_crit_edge ]
  %arrayidx.i.6 = getelementptr inbounds i8, ptr %buf, i32 14
  %32 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %33)
  %cmp1.not.i.6 = icmp eq i8 %33, 32
  %or.cond.i.6 = select i1 %cmp1.not.i.6, i1 %l.1.i.5, i1 false
  br i1 %or.cond.i.6, label %for.inc.i.5.for.inc.i.6_crit_edge, label %if.then.i.6

for.inc.i.5.for.inc.i.6_crit_edge:                ; preds = %for.inc.i.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.6

if.then.i.6:                                      ; preds = %for.inc.i.5
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i.6 = add nuw nsw i32 %j.1.i.5, 1
  %arrayidx10.i.6 = getelementptr i8, ptr %mf, i32 %j.1.i.5
  %34 = ptrtoint ptr %arrayidx10.i.6 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %arrayidx10.i.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %33)
  %phi.cmp182 = icmp eq i8 %33, 32
  br label %for.inc.i.6

for.inc.i.6:                                      ; preds = %if.then.i.6, %for.inc.i.5.for.inc.i.6_crit_edge
  %j.1.i.6 = phi i32 [ %inc.i.6, %if.then.i.6 ], [ %j.1.i.5, %for.inc.i.5.for.inc.i.6_crit_edge ]
  %l.1.i.6 = phi i1 [ %phi.cmp182, %if.then.i.6 ], [ true, %for.inc.i.5.for.inc.i.6_crit_edge ]
  %arrayidx.i.7 = getelementptr inbounds i8, ptr %buf, i32 15
  %35 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %36)
  %cmp1.not.i.7 = icmp eq i8 %36, 32
  %or.cond.i.7 = select i1 %cmp1.not.i.7, i1 %l.1.i.6, i1 false
  br i1 %or.cond.i.7, label %for.inc.i.6.for.inc.i.7_crit_edge, label %if.then.i.7

for.inc.i.6.for.inc.i.7_crit_edge:                ; preds = %for.inc.i.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.7

if.then.i.7:                                      ; preds = %for.inc.i.6
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i.7 = add nuw nsw i32 %j.1.i.6, 1
  %arrayidx10.i.7 = getelementptr i8, ptr %mf, i32 %j.1.i.6
  %37 = ptrtoint ptr %arrayidx10.i.7 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %arrayidx10.i.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %36)
  %phi.cmp183 = icmp eq i8 %36, 32
  %phi.cast = sext i1 %phi.cmp183 to i32
  br label %for.inc.i.7

for.inc.i.7:                                      ; preds = %if.then.i.7, %for.inc.i.6.for.inc.i.7_crit_edge
  %j.1.i.7 = phi i32 [ %inc.i.7, %if.then.i.7 ], [ %j.1.i.6, %for.inc.i.6.for.inc.i.7_crit_edge ]
  %l.1.i.7 = phi i32 [ %phi.cast, %if.then.i.7 ], [ -1, %for.inc.i.6.for.inc.i.7_crit_edge ]
  %spec.select.i = add nsw i32 %j.1.i.7, %l.1.i.7
  %arrayidx17.i = getelementptr i8, ptr %mf, i32 %spec.select.i
  %38 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %arrayidx17.i, align 1
  br label %for.body.i118

for.body.i118:                                    ; preds = %for.inc.i127.for.body.i118_crit_edge, %for.inc.i.7
  %l.033.i110 = phi i32 [ %l.1.i124, %for.inc.i127.for.body.i118_crit_edge ], [ 0, %for.inc.i.7 ]
  %k.032.i111 = phi i32 [ %inc12.i125, %for.inc.i127.for.body.i118_crit_edge ], [ 0, %for.inc.i.7 ]
  %j.031.i112 = phi i32 [ %j.1.i123, %for.inc.i127.for.body.i118_crit_edge ], [ 0, %for.inc.i.7 ]
  %add.i113 = add nuw nsw i32 %k.032.i111, 16
  %arrayidx.i114 = getelementptr i8, ptr %buf, i32 %add.i113
  %39 = ptrtoint ptr %arrayidx.i114 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i114, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %40)
  %cmp1.not.i115 = icmp eq i8 %40, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %l.033.i110)
  %cmp6.not.i116 = icmp eq i32 %l.033.i110, 32
  %or.cond.i117 = select i1 %cmp1.not.i115, i1 %cmp6.not.i116, i1 false
  br i1 %or.cond.i117, label %for.body.i118.for.inc.i127_crit_edge, label %if.then.i122

for.body.i118.for.inc.i127_crit_edge:             ; preds = %for.body.i118
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i127

if.then.i122:                                     ; preds = %for.body.i118
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i119 = add i32 %j.031.i112, 1
  %arrayidx10.i120 = getelementptr i8, ptr %id, i32 %j.031.i112
  %41 = ptrtoint ptr %arrayidx10.i120 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx10.i120, align 1
  %conv11.i121 = zext i8 %40 to i32
  br label %for.inc.i127

for.inc.i127:                                     ; preds = %if.then.i122, %for.body.i118.for.inc.i127_crit_edge
  %j.1.i123 = phi i32 [ %inc.i119, %if.then.i122 ], [ %j.031.i112, %for.body.i118.for.inc.i127_crit_edge ]
  %l.1.i124 = phi i32 [ %conv11.i121, %if.then.i122 ], [ 32, %for.body.i118.for.inc.i127_crit_edge ]
  %inc12.i125 = add nuw nsw i32 %k.032.i111, 1
  %exitcond.not.i126 = icmp eq i32 %inc12.i125, 16
  br i1 %exitcond.not.i126, label %xs.exit132, label %for.inc.i127.for.body.i118_crit_edge

for.inc.i127.for.body.i118_crit_edge:             ; preds = %for.inc.i127
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i118

xs.exit132:                                       ; preds = %for.inc.i127
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %l.1.i124)
  %cmp13.i128 = icmp eq i32 %l.1.i124, 32
  %dec.i129 = sext i1 %cmp13.i128 to i32
  %spec.select.i130 = add i32 %j.1.i123, %dec.i129
  %arrayidx17.i131 = getelementptr i8, ptr %id, i32 %spec.select.i130
  %42 = ptrtoint ptr %arrayidx17.i131 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %arrayidx17.i131, align 1
  %flags = getelementptr inbounds %struct.pt_unit, ptr %tape, i32 0, i32 2
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %flags, align 4
  %capacity = getelementptr inbounds %struct.pt_unit, ptr %tape, i32 0, i32 7
  %44 = ptrtoint ptr %capacity to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %capacity, align 4
  %bs = getelementptr inbounds %struct.pt_unit, ptr %tape, i32 0, i32 6
  %45 = ptrtoint ptr %bs to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %bs, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tr_cmd.i) #10
  %46 = call ptr @memset(ptr %tr_cmd.i, i32 0, i32 12)
  %last_sense.i = getelementptr inbounds %struct.pt_unit, ptr %tape, i32 0, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %if.end7.i.while.body.i_crit_edge, %xs.exit132
  %k.02.i = phi i32 [ 0, %xs.exit132 ], [ %inc.i136, %if.end7.i.while.body.i_crit_edge ]
  %47 = ptrtoint ptr %last_sense.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %last_sense.i, align 4
  %48 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp1.i = icmp sgt i32 %48, 1
  %cond.i = select i1 %cmp1.i, ptr @.str.57, ptr null
  %call.i.i = call fastcc i32 @pt_command(ptr noundef %tape, ptr noundef nonnull %tr_cmd.i, i32 noundef 0, ptr noundef %cond.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %49(i32 noundef 214748000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %while.body.i.if.then3.i.i_crit_edge

while.body.i.if.then3.i.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i.i

if.end.i.i:                                       ; preds = %while.body.i
  %call1.i.i = call fastcc i32 @pt_completion(ptr noundef %tape, ptr noundef null, ptr noundef %cond.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.pt_atapi.exit.i_crit_edge, label %if.end.i.i.if.then3.i.i_crit_edge

if.end.i.i.if.then3.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i.i

if.end.i.i.pt_atapi.exit.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pt_atapi.exit.i

if.then3.i.i:                                     ; preds = %if.end.i.i.if.then3.i.i_crit_edge, %while.body.i.if.then3.i.i_crit_edge
  %not.cmp1.i = xor i1 %cmp1.i, true
  %lnot.ext.i.i = zext i1 %not.cmp1.i to i32
  call fastcc void @pt_req_sense(ptr noundef %tape, i32 noundef %lnot.ext.i.i) #10
  br label %pt_atapi.exit.i

pt_atapi.exit.i:                                  ; preds = %if.then3.i.i, %if.end.i.i.pt_atapi.exit.i_crit_edge
  %50 = ptrtoint ptr %last_sense.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %last_sense.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i133 = icmp eq i32 %51, 0
  br i1 %tobool.not.i133, label %if.then16, label %if.end.i135

if.end.i135:                                      ; preds = %pt_atapi.exit.i
  %and.i = and i32 %51, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1026, i32 %and.i)
  %cmp3.i = icmp eq i32 %and.i, 1026
  %and4.i = and i32 %51, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and4.i)
  %cmp5.i = icmp eq i32 %and4.i, 6
  %or.cond.i134 = or i1 %cmp3.i, %cmp5.i
  br i1 %or.cond.i134, label %if.end7.i, label %if.end.i135.pt_ready_wait.exit.thread_crit_edge

if.end.i135.pt_ready_wait.exit.thread_crit_edge:  ; preds = %if.end.i135
  call void @__sanitizer_cov_trace_pc() #12
  br label %pt_ready_wait.exit.thread

if.end7.i:                                        ; preds = %if.end.i135
  %inc.i136 = add nuw nsw i32 %k.02.i, 1
  %call.i1.i = call i32 @schedule_timeout_interruptible(i32 noundef 100) #10
  %exitcond.not.i137 = icmp eq i32 %inc.i136, 60
  br i1 %exitcond.not.i137, label %if.end7.i.pt_ready_wait.exit.thread_crit_edge, label %if.end7.i.while.body.i_crit_edge

if.end7.i.while.body.i_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end7.i.pt_ready_wait.exit.thread_crit_edge:    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pt_ready_wait.exit.thread

pt_ready_wait.exit.thread:                        ; preds = %if.end7.i.pt_ready_wait.exit.thread_crit_edge, %if.end.i135.pt_ready_wait.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tr_cmd.i) #10
  br label %if.end18

if.then16:                                        ; preds = %pt_atapi.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tr_cmd.i) #10
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags, align 4
  %or = or i32 %53, 1
  store i32 %or, ptr %flags, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %pt_ready_wait.exit.thread
  %call.i138 = call fastcc i32 @pt_command(ptr noundef %tape, ptr noundef nonnull %ms_cmd, i32 noundef 36, ptr noundef nonnull @.str.32) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %54(i32 noundef 214748000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %tobool.not.i139 = icmp eq i32 %call.i138, 0
  br i1 %tobool.not.i139, label %if.end.i142, label %if.end18.pt_atapi.exit146_crit_edge

if.end18.pt_atapi.exit146_crit_edge:              ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %pt_atapi.exit146

if.end.i142:                                      ; preds = %if.end18
  %call1.i140 = call fastcc i32 @pt_completion(ptr noundef %tape, ptr noundef nonnull %buf, ptr noundef nonnull @.str.32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i140)
  %tobool2.not.i141 = icmp eq i32 %call1.i140, 0
  br i1 %tobool2.not.i141, label %if.then23, label %if.end.i142.pt_atapi.exit146_crit_edge

if.end.i142.pt_atapi.exit146_crit_edge:           ; preds = %if.end.i142
  call void @__sanitizer_cov_trace_pc() #12
  br label %pt_atapi.exit146

pt_atapi.exit146:                                 ; preds = %if.end.i142.pt_atapi.exit146_crit_edge, %if.end18.pt_atapi.exit146_crit_edge
  call fastcc void @pt_req_sense(ptr noundef %tape, i32 noundef 0) #10
  br label %if.end35

if.then23:                                        ; preds = %if.end.i142
  %arrayidx24 = getelementptr inbounds [36 x i8], ptr %buf, i32 0, i32 2
  %55 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %56)
  %tobool27.not = icmp sgt i8 %56, -1
  br i1 %tobool27.not, label %if.then28, label %if.then23.if.end31_crit_edge

if.then23.if.end31_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then28:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags, align 4
  %or30 = or i32 %58, 2
  store i32 %or30, ptr %flags, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.then23.if.end31_crit_edge
  %59 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.i.2, align 1
  %conv.i = zext i8 %60 to i32
  %mul.i.1 = shl nuw nsw i32 %conv.i, 8
  %61 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.i.3, align 1
  %conv.i.1 = zext i8 %62 to i32
  %add1.i.1 = or i32 %mul.i.1, %conv.i.1
  %63 = ptrtoint ptr %bs to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %add1.i.1, ptr %bs, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end31, %pt_atapi.exit146
  %call.i152 = call fastcc i32 @pt_command(ptr noundef %tape, ptr noundef nonnull %ls_cmd, i32 noundef 36, ptr noundef nonnull @.str.33) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %64(i32 noundef 214748000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %tobool.not.i153 = icmp eq i32 %call.i152, 0
  br i1 %tobool.not.i153, label %if.end.i156, label %if.end35.pt_atapi.exit160_crit_edge

if.end35.pt_atapi.exit160_crit_edge:              ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %pt_atapi.exit160

if.end.i156:                                      ; preds = %if.end35
  %call1.i154 = call fastcc i32 @pt_completion(ptr noundef %tape, ptr noundef nonnull %buf, ptr noundef nonnull @.str.33) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i154)
  %tobool2.not.i155 = icmp eq i32 %call1.i154, 0
  br i1 %tobool2.not.i155, label %for.body.i170.preheader, label %if.end.i156.pt_atapi.exit160_crit_edge

if.end.i156.pt_atapi.exit160_crit_edge:           ; preds = %if.end.i156
  call void @__sanitizer_cov_trace_pc() #12
  br label %pt_atapi.exit160

for.body.i170.preheader:                          ; preds = %if.end.i156
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i165 = getelementptr inbounds i8, ptr %buf, i32 24
  %65 = ptrtoint ptr %arrayidx.i165 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.i165, align 1
  %conv.i166 = zext i8 %66 to i32
  %arrayidx.i165.1 = getelementptr inbounds i8, ptr %buf, i32 25
  %67 = ptrtoint ptr %arrayidx.i165.1 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx.i165.1, align 1
  %conv.i166.1 = zext i8 %68 to i32
  %69 = shl nuw nsw i32 %conv.i166, 16
  %70 = shl nuw nsw i32 %conv.i166.1, 8
  %mul.i163.2 = or i32 %69, %70
  %arrayidx.i165.2 = getelementptr inbounds i8, ptr %buf, i32 26
  %71 = ptrtoint ptr %arrayidx.i165.2 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.i165.2, align 1
  %conv.i166.2 = zext i8 %72 to i32
  %add1.i167.2 = or i32 %mul.i163.2, %conv.i166.2
  %mul.i163.3 = shl nuw i32 %add1.i167.2, 8
  %arrayidx.i165.3 = getelementptr inbounds i8, ptr %buf, i32 27
  %73 = ptrtoint ptr %arrayidx.i165.3 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.i165.3, align 1
  %conv.i166.3 = zext i8 %74 to i32
  %add1.i167.3 = or i32 %mul.i163.3, %conv.i166.3
  %75 = ptrtoint ptr %capacity to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %add1.i167.3, ptr %capacity, align 4
  br label %do.end47

pt_atapi.exit160:                                 ; preds = %if.end.i156.pt_atapi.exit160_crit_edge, %if.end35.pt_atapi.exit160_crit_edge
  call fastcc void @pt_req_sense(ptr noundef %tape, i32 noundef 0) #10
  br label %do.end47

do.end47:                                         ; preds = %pt_atapi.exit160, %for.body.i170.preheader
  %name49 = getelementptr inbounds %struct.pt_unit, ptr %tape, i32 0, i32 10
  %drive53 = getelementptr inbounds %struct.pt_unit, ptr %tape, i32 0, i32 4
  %76 = ptrtoint ptr %drive53 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %drive53, align 4
  %arrayidx54 = getelementptr [2 x ptr], ptr @__const.pt_identify.ms, i32 0, i32 %77
  %78 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx54, align 4
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %name49, ptr noundef nonnull %mf, ptr noundef nonnull %id, ptr noundef %79) #13
  %80 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %flags, align 4
  %and57 = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %do.end62, label %if.else

do.end62:                                         ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #12
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #13
  br label %cleanup

if.else:                                          ; preds = %do.end47
  %and66 = and i32 %81, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %do.end71, label %if.else.do.end77_crit_edge

if.else.do.end77_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end77

do.end71:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #13
  br label %do.end77

do.end77:                                         ; preds = %do.end71, %if.else.do.end77_crit_edge
  %82 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %bs, align 4
  %84 = ptrtoint ptr %capacity to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %capacity, align 4
  %div = sdiv i32 %85, 1024
  %call81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %83, i32 noundef %div) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end77, %do.end62, %do.end, %if.then3.cleanup_crit_edge, %pt_atapi.exit
  %retval.0 = phi i32 [ -1, %pt_atapi.exit ], [ -1, %do.end ], [ -1, %if.then3.cleanup_crit_edge ], [ 0, %do.end77 ], [ 0, %do.end62 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %buf) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ls_cmd) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ms_cmd) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %id_cmd) #10
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %id) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %mf) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pi_connect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pi_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pi_write_regr(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pi_read_regr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pt_command(ptr noundef %tape, ptr noundef %cmd, i32 noundef %dlen, ptr noundef %fun) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pi1 = getelementptr inbounds %struct.pt_unit, ptr %tape, i32 0, i32 1
  %0 = ptrtoint ptr %pi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pi1, align 4
  tail call void @pi_connect(ptr noundef %1) #10
  %drive.i = getelementptr inbounds %struct.pt_unit, ptr %tape, i32 0, i32 4
  %2 = ptrtoint ptr %drive.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %drive.i, align 4
  %4 = shl i32 %3, 4
  %conv.i = add i32 %4, 160
  %conv = and i32 %conv.i, 240
  tail call void @pi_write_regr(ptr noundef %1, i32 noundef 0, i32 noundef 6, i32 noundef %conv) #10
  %call2 = tail call fastcc i32 @pt_wait(ptr noundef %tape, i32 noundef 136, i32 noundef 0, ptr noundef %fun, ptr noundef nonnull @.str.46)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pi_disconnect(ptr noundef %1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %div = sdiv i32 %dlen, 256
  %5 = mul i32 %div, 256
  %rem.decomposed = sub i32 %dlen, %5
  tail call void @pi_write_regr(ptr noundef %1, i32 noundef 0, i32 noundef 4, i32 noundef %rem.decomposed) #10
  tail call void @pi_write_regr(ptr noundef %1, i32 noundef 0, i32 noundef 5, i32 noundef %div) #10
  tail call void @pi_write_regr(ptr noundef %1, i32 noundef 0, i32 noundef 7, i32 noundef 160) #10
  %call3 = tail call fastcc i32 @pt_wait(ptr noundef %tape, i32 noundef 128, i32 noundef 8, ptr noundef %fun, ptr noundef nonnull @.str.47)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pi_disconnect(ptr noundef %1) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call.i = tail call i32 @pi_read_regr(ptr noundef %1, i32 noundef 0, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 1
  br i1 %cmp.not, label %if.end11, label %do.end

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.pt_unit, ptr %tape, i32 0, i32 10
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %name, ptr noundef %fun) #13
  tail call void @pi_disconnect(ptr noundef %1) #10
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pi_write_block(ptr noundef %1, ptr noundef %cmd, i32 noundef 12) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end, %if.then5, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then5 ], [ -1, %do.end ], [ 0, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pt_completion(ptr noundef %tape, ptr noundef %buf, ptr noundef %fun) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pi1 = getelementptr inbounds %struct.pt_unit, ptr %tape, i32 0, i32 1
  %0 = ptrtoint ptr %pi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pi1, align 4
  %call = tail call fastcc i32 @pt_wait(ptr noundef %tape, i32 noundef 128, i32 noundef 73, ptr noundef %fun, ptr noundef nonnull @.str.52)
  %call.i = tail call i32 @pi_read_regr(ptr noundef %1, i32 noundef 0, i32 noundef 7) #10
  %and = and i32 %call.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then:                                          ; preds = %entry
  %call.i29 = tail call i32 @pi_read_regr(ptr noundef %1, i32 noundef 0, i32 noundef 4) #10
  %call.i30 = tail call i32 @pi_read_regr(ptr noundef %1, i32 noundef 0, i32 noundef 5) #10
  %mul = shl i32 %call.i30, 8
  %add = add i32 %call.i29, 3
  %add5 = add i32 %add, %mul
  %and6 = and i32 %add5, 65532
  %call.i31 = tail call i32 @pi_read_regr(ptr noundef %1, i32 noundef 0, i32 noundef 2) #10
  %and8 = and i32 %call.i31, 3
  %2 = zext i32 %and8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and8, label %if.then.if.end13_crit_edge [
    i32 0, label %if.then9
    i32 2, label %if.then11
  ]

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pi_write_block(ptr noundef %1, ptr noundef %buf, i32 noundef %and6) #10
  br label %if.end13

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pi_read_block(ptr noundef %1, ptr noundef %buf, i32 noundef %and6) #10
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then9, %if.then.if.end13_crit_edge, %entry.if.end13_crit_edge
  %call14 = tail call fastcc i32 @pt_wait(ptr noundef %tape, i32 noundef 128, i32 noundef 65, ptr noundef %fun, ptr noundef nonnull @.str.53)
  tail call void @pi_disconnect(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool15.not = icmp eq i32 %call, 0
  %call14.call = select i1 %tobool15.not, i32 %call14, i32 %call
  ret i32 %call14.call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pt_req_sense(ptr noundef %tape, i32 noundef %quiet) unnamed_addr #5 align 64 {
entry:
  %rs_cmd = alloca [12 x i8], align 1
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rs_cmd) #10
  %0 = call ptr @memcpy(ptr %rs_cmd, ptr @__const.pt_req_sense.rs_cmd, i32 12)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #10
  %1 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 12
  %3 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 13
  %4 = call ptr @memset(ptr %buf, i32 255, i32 16)
  %call = call fastcc i32 @pt_command(ptr noundef %tape, ptr noundef nonnull %rs_cmd, i32 noundef 16, ptr noundef nonnull @.str.54)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %5(i32 noundef 214748000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then4, label %if.end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %last_sense = getelementptr inbounds %struct.pt_unit, ptr %tape, i32 0, i32 3
  %6 = ptrtoint ptr %last_sense to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %last_sense, align 4
  br label %if.end26

if.then4:                                         ; preds = %entry
  %call2 = call fastcc i32 @pt_completion(ptr noundef %tape, ptr noundef nonnull %buf, ptr noundef nonnull @.str.54)
  %last_sense32 = getelementptr inbounds %struct.pt_unit, ptr %tape, i32 0, i32 3
  %7 = ptrtoint ptr %last_sense32 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %last_sense32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quiet)
  %tobool5.not = icmp eq i32 %quiet, 0
  br i1 %tobool5.not, label %do.end, label %if.then4.if.end13_crit_edge

if.then4.if.end13_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.pt_unit, ptr %tape, i32 0, i32 10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %1, align 1
  %10 = and i8 %9, 15
  %and = zext i8 %10 to i32
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %2, align 1
  %conv9 = zext i8 %12 to i32
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %3, align 1
  %conv11 = zext i8 %14 to i32
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %name, i32 noundef %and, i32 noundef %conv9, i32 noundef %conv11) #13
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.then4.if.end13_crit_edge
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %1, align 1
  %17 = and i8 %16, 15
  %and16 = zext i8 %17 to i32
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %2, align 1
  %conv18 = zext i8 %19 to i32
  %shl = shl nuw nsw i32 %conv18, 8
  %or = or i32 %shl, %and16
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %3, align 1
  %conv21 = zext i8 %21 to i32
  %shl23 = shl nuw nsw i32 %conv21, 16
  %or24 = or i32 %or, %shl23
  %22 = ptrtoint ptr %last_sense32 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or24, ptr %last_sense32, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end13, %if.end
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rs_cmd) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pt_wait(ptr noundef %tape, i32 noundef %go, i32 noundef %stop, ptr noundef %fun, ptr noundef %msg) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pi1 = getelementptr inbounds %struct.pt_unit, ptr %tape, i32 0, i32 1
  %0 = ptrtoint ptr %pi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pi1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stop)
  %tobool2.not = icmp ne i32 %stop, 0
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %j.0 = phi i32 [ 0, %entry ], [ %inc, %while.body ]
  %call.i = tail call i32 @pi_read_regr(ptr noundef %1, i32 noundef 1, i32 noundef 6) #10
  %and = and i32 %call.i, %go
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %while.cond.land.rhs_crit_edge

while.cond.land.rhs_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

lor.lhs.false:                                    ; preds = %while.cond
  %and3 = and i32 %call.i, %stop
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %or.cond = select i1 %tobool2.not, i1 %tobool4.not, i1 false
  br i1 %or.cond, label %lor.lhs.false.land.rhs_crit_edge, label %while.end

lor.lhs.false.land.rhs_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

land.rhs:                                         ; preds = %lor.lhs.false.land.rhs_crit_edge, %while.cond.land.rhs_crit_edge
  %exitcond.not = icmp eq i32 %j.0, 600000
  br i1 %exitcond.not, label %land.rhs.if.then_crit_edge, label %while.body

land.rhs.if.then_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

while.body:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add nuw nsw i32 %j.0, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 10737400) #10
  br label %while.cond

while.end:                                        ; preds = %lor.lhs.false
  %and6 = and i32 %and3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp ne i32 %and6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 600000, i32 %j.0)
  %cmp9 = icmp ugt i32 %j.0, 600000
  %or.cond41 = select i1 %tobool7.not, i1 true, i1 %cmp9
  br i1 %or.cond41, label %while.end.if.then_crit_edge, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.end.if.then_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %while.end.if.then_crit_edge, %land.rhs.if.then_crit_edge
  %cmp952 = phi i1 [ %cmp9, %while.end.if.then_crit_edge ], [ true, %land.rhs.if.then_crit_edge ]
  %j.151 = phi i32 [ %j.0, %while.end.if.then_crit_edge ], [ 600001, %land.rhs.if.then_crit_edge ]
  %call.i42 = tail call i32 @pi_read_regr(ptr noundef %1, i32 noundef 0, i32 noundef 7) #10
  %call.i43 = tail call i32 @pi_read_regr(ptr noundef %1, i32 noundef 0, i32 noundef 1) #10
  %call.i44 = tail call i32 @pi_read_regr(ptr noundef %1, i32 noundef 0, i32 noundef 2) #10
  %or = or i32 %call.i43, 256
  %spec.select = select i1 %cmp952, i32 %or, i32 %call.i43
  %tobool15.not = icmp eq ptr %fun, null
  br i1 %tobool15.not, label %if.then.if.end18_crit_edge, label %do.end

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.pt_unit, ptr %tape, i32 0, i32 10
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %name, ptr noundef nonnull %fun, ptr noundef %msg, i32 noundef %call.i, i32 noundef %call.i42, i32 noundef %spec.select, i32 noundef %j.151, i32 noundef %call.i44) #13
  br label %if.end18

if.end18:                                         ; preds = %do.end, %if.then.if.end18_crit_edge
  %shl = shl i32 %spec.select, 8
  %add = add i32 %shl, %call.i42
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.end18 ], [ 0, %while.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pi_write_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pi_read_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pt_read(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #5 align 64 {
entry:
  %rd_cmd = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %pi1 = getelementptr inbounds %struct.pt_unit, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pi1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rd_cmd) #10
  %4 = call ptr @memcpy(ptr %rd_cmd, ptr @__const.pt_read.rd_cmd, i32 12)
  %flags = getelementptr inbounds %struct.pt_unit, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %or = or i32 %6, 16
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or, ptr %flags, align 4
  %call.i = call fastcc i32 @pt_command(ptr noundef %1, ptr noundef nonnull %rd_cmd, i32 noundef 0, ptr noundef nonnull @.str.58) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %8(i32 noundef 214748000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.pt_atapi.exit_crit_edge

if.then.pt_atapi.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %pt_atapi.exit

if.end.i:                                         ; preds = %if.then
  %call1.i = call fastcc i32 @pt_completion(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.58) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end10_crit_edge, label %if.end.i.pt_atapi.exit_crit_edge

if.end.i.pt_atapi.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pt_atapi.exit

if.end.i.if.end10_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

pt_atapi.exit:                                    ; preds = %if.end.i.pt_atapi.exit_crit_edge, %if.then.pt_atapi.exit_crit_edge
  call fastcc void @pt_req_sense(ptr noundef %1, i32 noundef 0) #10
  br label %cleanup

if.else:                                          ; preds = %entry
  %and6 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else.if.end10_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.end10:                                         ; preds = %if.else.if.end10_crit_edge, %if.end.i.if.end10_crit_edge
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and12 = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %while.cond.preheader, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end10
  %bs = getelementptr inbounds %struct.pt_unit, ptr %1, i32 0, i32 6
  %arrayidx = getelementptr inbounds [12 x i8], ptr %rd_cmd, i32 0, i32 4
  %bufptr = getelementptr inbounds %struct.pt_unit, ptr %1, i32 0, i32 9
  br label %while.cond

while.cond:                                       ; preds = %while.end81.while.cond_crit_edge, %while.cond.preheader
  %count.addr.0 = phi i32 [ %count.addr.1184, %while.end81.while.cond_crit_edge ], [ %count, %while.cond.preheader ]
  %t.0 = phi i32 [ %t.1185, %while.end81.while.cond_crit_edge ], [ 0, %while.cond.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.0)
  %cmp.not = icmp eq i32 %count.addr.0, 0
  br i1 %cmp.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %call16 = call fastcc i32 @pt_poll_dsc(ptr noundef %1, i32 noundef 1, i32 noundef 3000, ptr noundef nonnull @.str.59)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %while.body.cleanup_crit_edge, label %if.end19

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %while.body
  %11 = call i32 @llvm.smin.i32(i32 %count.addr.0, i32 32768)
  %sub = add i32 %11, -1
  %12 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bs, align 4
  %add = add i32 %sub, %13
  %div = sdiv i32 %add, %13
  %mul = mul i32 %div, %13
  %conv = trunc i32 %div to i8
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %arrayidx, align 1
  %call26 = call fastcc i32 @pt_command(ptr noundef %1, ptr noundef nonnull %rd_cmd, i32 noundef %mul, ptr noundef nonnull @.str.59)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %15(i32 noundef 214748000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %while.cond30.preheader, label %if.then28

while.cond30.preheader:                           ; preds = %if.end19
  %16 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp32179 = icmp sgt i32 %16, 1
  %cond180 = select i1 %cmp32179, ptr @.str.60, ptr null
  %call34181 = call fastcc i32 @pt_wait(ptr noundef %1, i32 noundef 128, i32 noundef 73, ptr noundef %cond180, ptr noundef nonnull @.str.61)
  %and35182 = and i32 %call34181, 126976
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35182)
  %tobool36.not183 = icmp eq i32 %and35182, 0
  br i1 %tobool36.not183, label %while.cond30.preheader.if.end38_crit_edge, label %while.cond30.preheader.if.then37_crit_edge

while.cond30.preheader.if.then37_crit_edge:       ; preds = %while.cond30.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37

while.cond30.preheader.if.end38_crit_edge:        ; preds = %while.cond30.preheader
  br label %if.end38

if.then28:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @pt_req_sense(ptr noundef %1, i32 noundef 0)
  br label %cleanup

while.cond30.loopexit:                            ; preds = %if.end78.while.cond30.loopexit_crit_edge, %while.cond61.preheader.while.cond30.loopexit_crit_edge
  %count.addr.2.lcssa = phi i32 [ %count.addr.1184, %while.cond61.preheader.while.cond30.loopexit_crit_edge ], [ %sub80, %if.end78.while.cond30.loopexit_crit_edge ]
  %t.2.lcssa = phi i32 [ %t.1185, %while.cond61.preheader.while.cond30.loopexit_crit_edge ], [ %add79, %if.end78.while.cond30.loopexit_crit_edge ]
  %17 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp32 = icmp sgt i32 %17, 1
  %cond = select i1 %cmp32, ptr @.str.60, ptr null
  %call34 = call fastcc i32 @pt_wait(ptr noundef %1, i32 noundef 128, i32 noundef 73, ptr noundef %cond, ptr noundef nonnull @.str.61)
  %and35 = and i32 %call34, 126976
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %while.cond30.loopexit.if.end38_crit_edge, label %while.cond30.loopexit.if.then37_crit_edge

while.cond30.loopexit.if.then37_crit_edge:        ; preds = %while.cond30.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37

while.cond30.loopexit.if.end38_crit_edge:         ; preds = %while.cond30.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then37:                                        ; preds = %while.cond30.loopexit.if.then37_crit_edge, %while.cond30.preheader.if.then37_crit_edge
  call void @pi_disconnect(ptr noundef %3) #10
  call fastcc void @pt_req_sense(ptr noundef %1, i32 noundef 0)
  br label %cleanup

if.end38:                                         ; preds = %while.cond30.loopexit.if.end38_crit_edge, %while.cond30.preheader.if.end38_crit_edge
  %call34186 = phi i32 [ %call34, %while.cond30.loopexit.if.end38_crit_edge ], [ %call34181, %while.cond30.preheader.if.end38_crit_edge ]
  %t.1185 = phi i32 [ %t.2.lcssa, %while.cond30.loopexit.if.end38_crit_edge ], [ %t.0, %while.cond30.preheader.if.end38_crit_edge ]
  %count.addr.1184 = phi i32 [ %count.addr.2.lcssa, %while.cond30.loopexit.if.end38_crit_edge ], [ %count.addr.0, %while.cond30.preheader.if.end38_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34186)
  %tobool39.not = icmp eq i32 %call34186, 0
  br i1 %tobool39.not, label %if.end38.if.end43_crit_edge, label %if.then40

if.end38.if.end43_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %or42 = or i32 %19, 32
  store i32 %or42, ptr %flags, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end38.if.end43_crit_edge
  %call.i146 = call i32 @pi_read_regr(ptr noundef %3, i32 noundef 0, i32 noundef 7) #10
  %and45 = and i32 %call.i146, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %while.end81, label %if.end48

if.end48:                                         ; preds = %if.end43
  %call.i147 = call i32 @pi_read_regr(ptr noundef %3, i32 noundef 0, i32 noundef 4) #10
  %call.i148 = call i32 @pi_read_regr(ptr noundef %3, i32 noundef 0, i32 noundef 5) #10
  %call.i149 = call i32 @pi_read_regr(ptr noundef %3, i32 noundef 0, i32 noundef 2) #10
  %and54 = and i32 %call.i149, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and54)
  %cmp55.not = icmp eq i32 %and54, 2
  br i1 %cmp55.not, label %while.cond61.preheader, label %if.then57

while.cond61.preheader:                           ; preds = %if.end48
  %mul51 = shl i32 %call.i148, 8
  %add52 = add i32 %mul51, %call.i147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add52)
  %cmp62174 = icmp sgt i32 %add52, 0
  br i1 %cmp62174, label %while.cond61.preheader.while.body64_crit_edge, label %while.cond61.preheader.while.cond30.loopexit_crit_edge

while.cond61.preheader.while.cond30.loopexit_crit_edge: ; preds = %while.cond61.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond30.loopexit

while.cond61.preheader.while.body64_crit_edge:    ; preds = %while.cond61.preheader
  br label %while.body64

if.then57:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  call void @pi_disconnect(ptr noundef %3) #10
  %name = getelementptr inbounds %struct.pt_unit, ptr %1, i32 0, i32 10
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %name, i32 noundef %and54) #13
  br label %cleanup

while.body64:                                     ; preds = %if.end78.while.body64_crit_edge, %while.cond61.preheader.while.body64_crit_edge
  %t.2177 = phi i32 [ %add79, %if.end78.while.body64_crit_edge ], [ %t.1185, %while.cond61.preheader.while.body64_crit_edge ]
  %n.0176 = phi i32 [ %sub69, %if.end78.while.body64_crit_edge ], [ %add52, %while.cond61.preheader.while.body64_crit_edge ]
  %count.addr.2175 = phi i32 [ %sub80, %if.end78.while.body64_crit_edge ], [ %count.addr.1184, %while.cond61.preheader.while.body64_crit_edge ]
  %20 = call i32 @llvm.smin.i32(i32 %n.0176, i32 16384)
  %21 = ptrtoint ptr %bufptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bufptr, align 4
  call void @pi_read_block(ptr noundef %3, ptr noundef %22, i32 noundef %20) #10
  %sub69 = sub nsw i32 %n.0176, %20
  %23 = call i32 @llvm.umin.i32(i32 %20, i32 %count.addr.2175)
  %add.ptr = getelementptr i8, ptr %buf, i32 %t.2177
  %24 = ptrtoint ptr %bufptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bufptr, align 4
  call void @__check_object_size(ptr noundef %25, i32 noundef %23, i1 noundef zeroext true) #10
  call void @__might_fault(ptr noundef nonnull @.str.71, i32 noundef 174) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %while.body64.copy_to_user.exit_crit_edge, label %if.end.i.i

while.body64.copy_to_user.exit_crit_edge:         ; preds = %while.body64
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %while.body64
  %26 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 %23, i32 -1226833920) #14, !srcloc !240
  %asmresult.i.i = extractvalue { i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %25, i32 noundef %23) #10
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %add.ptr, ptr noundef %25, i32 noundef %23) #10
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %while.body64.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %23, %while.body64.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %23, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool76.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool76.not, label %if.end78, label %if.then77

if.then77:                                        ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @pi_disconnect(ptr noundef %3) #10
  br label %cleanup

if.end78:                                         ; preds = %copy_to_user.exit
  %add79 = add i32 %23, %t.2177
  %sub80 = sub i32 %count.addr.2175, %23
  %cmp62 = icmp sgt i32 %sub69, 0
  br i1 %cmp62, label %if.end78.while.body64_crit_edge, label %if.end78.while.cond30.loopexit_crit_edge

if.end78.while.cond30.loopexit_crit_edge:         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond30.loopexit

if.end78.while.body64_crit_edge:                  ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body64

while.end81:                                      ; preds = %if.end43
  call void @pi_disconnect(ptr noundef %3) #10
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 4
  %and83 = and i32 %28, 32
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %while.end81.while.cond_crit_edge, label %while.end81.cleanup_crit_edge

while.end81.cleanup_crit_edge:                    ; preds = %while.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.end81.while.cond_crit_edge:                 ; preds = %while.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

cleanup:                                          ; preds = %while.end81.cleanup_crit_edge, %if.then77, %if.then57, %if.then37, %if.then28, %while.body.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.else.cleanup_crit_edge, %pt_atapi.exit
  %retval.0 = phi i32 [ -5, %if.then28 ], [ -5, %if.then37 ], [ -5, %if.then57 ], [ -14, %if.then77 ], [ -5, %pt_atapi.exit ], [ -5, %if.else.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ %t.0, %while.cond.cleanup_crit_edge ], [ %t.1185, %while.end81.cleanup_crit_edge ], [ -5, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rd_cmd) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pt_write(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #5 align 64 {
entry:
  %wr_cmd = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %pi1 = getelementptr inbounds %struct.pt_unit, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pi1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %wr_cmd) #10
  %4 = call ptr @memcpy(ptr %wr_cmd, ptr @__const.pt_write.wr_cmd, i32 12)
  %flags = getelementptr inbounds %struct.pt_unit, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %and3 = and i32 %6, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %or = or i32 %6, 8
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or, ptr %flags, align 4
  %call.i = call fastcc i32 @pt_command(ptr noundef %1, ptr noundef nonnull %wr_cmd, i32 noundef 0, ptr noundef nonnull @.str.72) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %8(i32 noundef 214748000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then5.pt_atapi.exit_crit_edge

if.then5.pt_atapi.exit_crit_edge:                 ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %pt_atapi.exit

if.end.i:                                         ; preds = %if.then5
  %call1.i = call fastcc i32 @pt_completion(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.72) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end15_crit_edge, label %if.end.i.pt_atapi.exit_crit_edge

if.end.i.pt_atapi.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pt_atapi.exit

if.end.i.if.end15_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

pt_atapi.exit:                                    ; preds = %if.end.i.pt_atapi.exit_crit_edge, %if.then5.pt_atapi.exit_crit_edge
  call fastcc void @pt_req_sense(ptr noundef %1, i32 noundef 0) #10
  br label %cleanup

if.else:                                          ; preds = %if.end
  %and11 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else.if.end15_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end15:                                         ; preds = %if.else.if.end15_crit_edge, %if.end.i.if.end15_crit_edge
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and17 = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %while.cond.preheader, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end15
  %bs = getelementptr inbounds %struct.pt_unit, ptr %1, i32 0, i32 6
  %arrayidx = getelementptr inbounds [12 x i8], ptr %wr_cmd, i32 0, i32 4
  %bufptr = getelementptr inbounds %struct.pt_unit, ptr %1, i32 0, i32 9
  br label %while.cond

while.cond:                                       ; preds = %while.end86.while.cond_crit_edge, %while.cond.preheader
  %count.addr.0 = phi i32 [ %count.addr.1192, %while.end86.while.cond_crit_edge ], [ %count, %while.cond.preheader ]
  %t.0 = phi i32 [ %t.1193, %while.end86.while.cond_crit_edge ], [ 0, %while.cond.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.0)
  %cmp.not = icmp eq i32 %count.addr.0, 0
  br i1 %cmp.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %call21 = call fastcc i32 @pt_poll_dsc(ptr noundef %1, i32 noundef 1, i32 noundef 3000, ptr noundef nonnull @.str.73)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %while.body.cleanup_crit_edge, label %if.end24

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %while.body
  %11 = call i32 @llvm.smin.i32(i32 %count.addr.0, i32 32768)
  %sub = add i32 %11, -1
  %12 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bs, align 4
  %add = add i32 %sub, %13
  %div = sdiv i32 %add, %13
  %mul = mul i32 %div, %13
  %conv = trunc i32 %div to i8
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %arrayidx, align 1
  %call31 = call fastcc i32 @pt_command(ptr noundef %1, ptr noundef nonnull %wr_cmd, i32 noundef %mul, ptr noundef nonnull @.str.73)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %15(i32 noundef 214748000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %while.cond35.preheader, label %if.then33

while.cond35.preheader:                           ; preds = %if.end24
  %16 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp37187 = icmp sgt i32 %16, 1
  %cond188 = select i1 %cmp37187, ptr @.str.74, ptr null
  %call39189 = call fastcc i32 @pt_wait(ptr noundef %1, i32 noundef 128, i32 noundef 73, ptr noundef %cond188, ptr noundef null)
  %and40190 = and i32 %call39189, 126976
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40190)
  %tobool41.not191 = icmp eq i32 %and40190, 0
  br i1 %tobool41.not191, label %while.cond35.preheader.if.end43_crit_edge, label %while.cond35.preheader.if.then42_crit_edge

while.cond35.preheader.if.then42_crit_edge:       ; preds = %while.cond35.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42

while.cond35.preheader.if.end43_crit_edge:        ; preds = %while.cond35.preheader
  br label %if.end43

if.then33:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @pt_req_sense(ptr noundef %1, i32 noundef 0)
  br label %cleanup

while.cond35.loopexit:                            ; preds = %if.end81.while.cond35.loopexit_crit_edge, %while.cond66.preheader.while.cond35.loopexit_crit_edge
  %count.addr.2.lcssa = phi i32 [ %count.addr.1192, %while.cond66.preheader.while.cond35.loopexit_crit_edge ], [ %sub84, %if.end81.while.cond35.loopexit_crit_edge ]
  %t.2.lcssa = phi i32 [ %t.1193, %while.cond66.preheader.while.cond35.loopexit_crit_edge ], [ %add83, %if.end81.while.cond35.loopexit_crit_edge ]
  %17 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp37 = icmp sgt i32 %17, 1
  %cond = select i1 %cmp37, ptr @.str.74, ptr null
  %call39 = call fastcc i32 @pt_wait(ptr noundef %1, i32 noundef 128, i32 noundef 73, ptr noundef %cond, ptr noundef null)
  %and40 = and i32 %call39, 126976
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %while.cond35.loopexit.if.end43_crit_edge, label %while.cond35.loopexit.if.then42_crit_edge

while.cond35.loopexit.if.then42_crit_edge:        ; preds = %while.cond35.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42

while.cond35.loopexit.if.end43_crit_edge:         ; preds = %while.cond35.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then42:                                        ; preds = %while.cond35.loopexit.if.then42_crit_edge, %while.cond35.preheader.if.then42_crit_edge
  call void @pi_disconnect(ptr noundef %3) #10
  call fastcc void @pt_req_sense(ptr noundef %1, i32 noundef 0)
  br label %cleanup

if.end43:                                         ; preds = %while.cond35.loopexit.if.end43_crit_edge, %while.cond35.preheader.if.end43_crit_edge
  %call39194 = phi i32 [ %call39, %while.cond35.loopexit.if.end43_crit_edge ], [ %call39189, %while.cond35.preheader.if.end43_crit_edge ]
  %t.1193 = phi i32 [ %t.2.lcssa, %while.cond35.loopexit.if.end43_crit_edge ], [ %t.0, %while.cond35.preheader.if.end43_crit_edge ]
  %count.addr.1192 = phi i32 [ %count.addr.2.lcssa, %while.cond35.loopexit.if.end43_crit_edge ], [ %count.addr.0, %while.cond35.preheader.if.end43_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39194)
  %tobool44.not = icmp eq i32 %call39194, 0
  br i1 %tobool44.not, label %if.end43.if.end48_crit_edge, label %if.then45

if.end43.if.end48_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %or47 = or i32 %19, 32
  store i32 %or47, ptr %flags, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.end43.if.end48_crit_edge
  %call.i152 = call i32 @pi_read_regr(ptr noundef %3, i32 noundef 0, i32 noundef 7) #10
  %and50 = and i32 %call.i152, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %while.end86, label %if.end53

if.end53:                                         ; preds = %if.end48
  %call.i153 = call i32 @pi_read_regr(ptr noundef %3, i32 noundef 0, i32 noundef 4) #10
  %call.i154 = call i32 @pi_read_regr(ptr noundef %3, i32 noundef 0, i32 noundef 5) #10
  %call.i155 = call i32 @pi_read_regr(ptr noundef %3, i32 noundef 0, i32 noundef 2) #10
  %and59 = and i32 %call.i155, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %cmp60.not = icmp eq i32 %and59, 0
  br i1 %cmp60.not, label %while.cond66.preheader, label %if.then62

while.cond66.preheader:                           ; preds = %if.end53
  %mul56 = shl i32 %call.i154, 8
  %add57 = add i32 %mul56, %call.i153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add57)
  %cmp67182 = icmp sgt i32 %add57, 0
  br i1 %cmp67182, label %while.cond66.preheader.while.body69_crit_edge, label %while.cond66.preheader.while.cond35.loopexit_crit_edge

while.cond66.preheader.while.cond35.loopexit_crit_edge: ; preds = %while.cond66.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond35.loopexit

while.cond66.preheader.while.body69_crit_edge:    ; preds = %while.cond66.preheader
  br label %while.body69

if.then62:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  call void @pi_disconnect(ptr noundef %3) #10
  %name = getelementptr inbounds %struct.pt_unit, ptr %1, i32 0, i32 10
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name, i32 noundef %and59) #13
  br label %cleanup

while.body69:                                     ; preds = %if.end81.while.body69_crit_edge, %while.cond66.preheader.while.body69_crit_edge
  %t.2185 = phi i32 [ %add83, %if.end81.while.body69_crit_edge ], [ %t.1193, %while.cond66.preheader.while.body69_crit_edge ]
  %n.0184 = phi i32 [ %sub85, %if.end81.while.body69_crit_edge ], [ %add57, %while.cond66.preheader.while.body69_crit_edge ]
  %count.addr.2183 = phi i32 [ %sub84, %if.end81.while.body69_crit_edge ], [ %count.addr.1192, %while.cond66.preheader.while.body69_crit_edge ]
  %20 = call i32 @llvm.smin.i32(i32 %n.0184, i32 16384)
  %21 = call i32 @llvm.umin.i32(i32 %20, i32 %count.addr.2183)
  %22 = ptrtoint ptr %bufptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bufptr, align 4
  %add.ptr = getelementptr i8, ptr %buf, i32 %t.2185
  call void @__check_object_size(ptr noundef %23, i32 noundef %21, i1 noundef zeroext false) #10
  call void @__might_fault(ptr noundef nonnull @.str.71, i32 noundef 156) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %while.body69.if.end.i.i_crit_edge, label %land.lhs.true.i.i

while.body69.if.end.i.i_crit_edge:                ; preds = %while.body69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %while.body69
  %24 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 %21, i32 -1226833920) #14, !srcloc !241
  %asmresult.i.i = extractvalue { i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !242

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %23, i32 noundef %21) #10
  %25 = call i32 @llvm.read_register.i32(metadata !230) #10
  %and.i.i.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 4
  %27 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !243
  %and.i.i.i.i = and i32 %27, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef %23, ptr noundef %add.ptr, i32 noundef %21) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #10, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %while.body69.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %21, %while.body69.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %21, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end81, label %if.then11.i.i, !prof !242

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = sub i32 %21, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 %sub.i.i
  %28 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  call void @pi_disconnect(ptr noundef %3) #10
  br label %cleanup

if.end81:                                         ; preds = %if.end.i.i
  %29 = ptrtoint ptr %bufptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bufptr, align 4
  call void @pi_write_block(ptr noundef %3, ptr noundef %30, i32 noundef %20) #10
  %add83 = add i32 %21, %t.2185
  %sub84 = sub i32 %count.addr.2183, %21
  %sub85 = sub nsw i32 %n.0184, %20
  %cmp67 = icmp sgt i32 %sub85, 0
  br i1 %cmp67, label %if.end81.while.body69_crit_edge, label %if.end81.while.cond35.loopexit_crit_edge

if.end81.while.cond35.loopexit_crit_edge:         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond35.loopexit

if.end81.while.body69_crit_edge:                  ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body69

while.end86:                                      ; preds = %if.end48
  call void @pi_disconnect(ptr noundef %3) #10
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags, align 4
  %and88 = and i32 %32, 32
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %while.end86.while.cond_crit_edge, label %while.end86.cleanup_crit_edge

while.end86.cleanup_crit_edge:                    ; preds = %while.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.end86.while.cond_crit_edge:                 ; preds = %while.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

cleanup:                                          ; preds = %while.end86.cleanup_crit_edge, %if.then11.i.i, %if.then62, %if.then42, %if.then33, %while.body.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.else.cleanup_crit_edge, %pt_atapi.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then33 ], [ -5, %if.then42 ], [ -5, %if.then62 ], [ -14, %if.then11.i.i ], [ -30, %entry.cleanup_crit_edge ], [ -5, %pt_atapi.exit ], [ -5, %if.else.cleanup_crit_edge ], [ -28, %if.end15.cleanup_crit_edge ], [ %t.0, %while.cond.cleanup_crit_edge ], [ %t.1193, %while.end86.cleanup_crit_edge ], [ -5, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wr_cmd) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pt_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #5 align 64 {
entry:
  %wm_cmd.i = alloca [12 x i8], align 1
  %rw_cmd.i = alloca [12 x i8], align 1
  %mtop = alloca %struct.mtop, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mtop) #10
  %2 = ptrtoint ptr %mtop to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %mtop, align 8, !annotation !246
  call void @__sanitizer_cov_trace_const_cmp4(i32 1074294017, i32 %cmd)
  %cond = icmp eq i32 %cmd, 1074294017
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.71, i32 noundef 156) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %sw.bb.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb.if.then11.i.i_crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 8, i32 -1226833920) #14, !srcloc !241
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !242

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %mtop, i32 noundef 8) #10
  %5 = call i32 @llvm.read_register.i32(metadata !230) #10
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !243
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %mtop, ptr noundef %3, i32 noundef 8) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #10, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !242

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %sw.bb.if.then11.i.i_crit_edge
  %res.0.i.i22 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %sw.bb.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.0.i.i22
  %add.ptr.i.i = getelementptr i8, ptr %mtop, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i22)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %9 = ptrtoint ptr %mtop to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %mtop, align 8
  %conv = sext i16 %10 to i32
  %11 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %conv, label %do.end [
    i32 6, label %sw.bb1
    i32 5, label %sw.bb2
  ]

sw.bb1:                                           ; preds = %if.end
  call void @mutex_lock_nested(ptr noundef nonnull @pt_mutex, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rw_cmd.i) #10
  %12 = call ptr @memcpy(ptr %rw_cmd.i, ptr @__const.pt_rewind.rw_cmd, i32 12)
  %call.i.i11 = call fastcc i32 @pt_command(ptr noundef %1, ptr noundef nonnull %rw_cmd.i, i32 noundef 0, ptr noundef nonnull @.str.81) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i11)
  %tobool.not.i.i = icmp eq i32 %call.i.i11, 0
  br i1 %tobool.not.i.i, label %if.end.i.i13, label %if.then.i.i12

if.then.i.i12:                                    ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @pt_req_sense(ptr noundef %1, i32 noundef 0) #10
  br label %pt_rewind.exit

if.end.i.i13:                                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  %pi.i.i = getelementptr inbounds %struct.pt_unit, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %pi.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pi.i.i, align 4
  call void @pi_disconnect(ptr noundef %14) #10
  %call1.i.i = call fastcc i32 @pt_poll_dsc(ptr noundef %1, i32 noundef 100, i32 noundef 1200, ptr noundef nonnull @.str.81) #10
  br label %pt_rewind.exit

pt_rewind.exit:                                   ; preds = %if.end.i.i13, %if.then.i.i12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rw_cmd.i) #10
  call void @mutex_unlock(ptr noundef nonnull @pt_mutex) #10
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  call void @mutex_lock_nested(ptr noundef nonnull @pt_mutex, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %wm_cmd.i) #10
  %15 = call ptr @memcpy(ptr %wm_cmd.i, ptr @__const.pt_write_fm.wm_cmd, i32 12)
  %call.i.i14 = call fastcc i32 @pt_command(ptr noundef %1, ptr noundef nonnull %wm_cmd.i, i32 noundef 0, ptr noundef nonnull @.str.82) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i14)
  %tobool.not.i.i15 = icmp eq i32 %call.i.i14, 0
  br i1 %tobool.not.i.i15, label %if.end.i.i19, label %if.then.i.i16

if.then.i.i16:                                    ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @pt_req_sense(ptr noundef %1, i32 noundef 0) #10
  br label %pt_write_fm.exit

if.end.i.i19:                                     ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  %pi.i.i17 = getelementptr inbounds %struct.pt_unit, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %pi.i.i17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pi.i.i17, align 4
  call void @pi_disconnect(ptr noundef %17) #10
  %call1.i.i18 = call fastcc i32 @pt_poll_dsc(ptr noundef %1, i32 noundef 100, i32 noundef 3000, ptr noundef nonnull @.str.82) #10
  br label %pt_write_fm.exit

pt_write_fm.exit:                                 ; preds = %if.end.i.i19, %if.then.i.i16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wm_cmd.i) #10
  call void @mutex_unlock(ptr noundef nonnull @pt_mutex) #10
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.pt_unit, ptr %1, i32 0, i32 10
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %name, i32 noundef %conv) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %pt_write_fm.exit, %pt_rewind.exit, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %pt_write_fm.exit ], [ 0, %pt_rewind.exit ], [ -25, %entry.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mtop) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pt_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef %file) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and = and i32 %1, 127
  %add.ptr = getelementptr %struct.pt_unit, ptr @pt, i32 %and
  tail call void @mutex_lock_nested(ptr noundef nonnull @pt_mutex, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp = icmp ugt i32 %and, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %present = getelementptr %struct.pt_unit, ptr @pt, i32 %and, i32 8
  %2 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %available = getelementptr %struct.pt_unit, ptr @pt, i32 %and, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %available, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !247
  tail call void @llvm.prefetch.p0(ptr %available, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %available, ptr %available, i32 1, ptr elementtype(i32) %available) #10, !srcloc !248
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !249
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end3, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end3:                                          ; preds = %if.end
  %call4 = tail call fastcc i32 @pt_identify(ptr noundef %add.ptr)
  %flags = getelementptr %struct.pt_unit, ptr @pt, i32 %and, i32 2
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and5 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end3.out_crit_edge, label %if.end8

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end8:                                          ; preds = %if.end3
  %and10 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %land.lhs.true, label %if.end8.if.end15_crit_edge

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end8
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %7 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %f_mode, align 8
  %and12 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %land.lhs.true.if.end15_crit_edge, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %if.end8.if.end15_crit_edge
  %9 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_rdev.i, align 8
  %and17 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.then19, label %if.end15.if.end21_crit_edge

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %6, 4
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or, ptr %flags, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end15.if.end21_crit_edge
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 16384, i32 noundef 3264, i32 noundef 2) #15
  %bufptr = getelementptr %struct.pt_unit, ptr @pt, i32 %and, i32 9
  %12 = ptrtoint ptr %bufptr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call1.i.i, ptr %bufptr, align 4
  %cmp24 = icmp eq ptr %call1.i.i, null
  br i1 %cmp24, label %do.end, label %if.end27

do.end:                                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr %struct.pt_unit, ptr @pt, i32 %and, i32 10
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %name) #13
  br label %out

if.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %13 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr, ptr %private_data, align 4
  br label %cleanup

out:                                              ; preds = %do.end, %land.lhs.true.out_crit_edge, %if.end3.out_crit_edge, %if.end.out_crit_edge
  %err.0 = phi i32 [ -12, %do.end ], [ -30, %land.lhs.true.out_crit_edge ], [ -19, %if.end3.out_crit_edge ], [ -16, %if.end.out_crit_edge ]
  %call.i.i44 = tail call zeroext i1 @__kasan_check_write(ptr noundef %available, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %available, i32 1, i32 3, i32 1) #10
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %available, ptr %available, i32 1, ptr elementtype(i32) %available) #10, !srcloc !250
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end27, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ 0, %if.end27 ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @pt_mutex) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pt_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #5 align 64 {
entry:
  %rw_cmd.i = alloca [12 x i8], align 1
  %wm_cmd.i = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %available = getelementptr inbounds %struct.pt_unit, ptr %1, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %available, i32 noundef 4) #10
  %2 = ptrtoint ptr %available to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %available, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.pt_unit, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end2_crit_edge, label %if.then1

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end2

if.then1:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %wm_cmd.i) #10
  %6 = call ptr @memcpy(ptr %wm_cmd.i, ptr @__const.pt_write_fm.wm_cmd, i32 12)
  %call.i.i18 = call fastcc i32 @pt_command(ptr noundef %1, ptr noundef nonnull %wm_cmd.i, i32 noundef 0, ptr noundef nonnull @.str.82) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i18)
  %tobool.not.i.i = icmp eq i32 %call.i.i18, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @pt_req_sense(ptr noundef %1, i32 noundef 0) #10
  br label %pt_write_fm.exit

if.end.i.i:                                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  %pi.i.i = getelementptr inbounds %struct.pt_unit, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %pi.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pi.i.i, align 4
  call void @pi_disconnect(ptr noundef %8) #10
  %call1.i.i = call fastcc i32 @pt_poll_dsc(ptr noundef %1, i32 noundef 100, i32 noundef 3000, ptr noundef nonnull @.str.82) #10
  br label %pt_write_fm.exit

pt_write_fm.exit:                                 ; preds = %if.end.i.i, %if.then.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wm_cmd.i) #10
  br label %if.end2

if.end2:                                          ; preds = %pt_write_fm.exit, %if.end.if.end2_crit_edge
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and4 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end2.if.end7_crit_edge, label %if.then6

if.end2.if.end7_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then6:                                         ; preds = %if.end2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rw_cmd.i) #10
  %11 = call ptr @memcpy(ptr %rw_cmd.i, ptr @__const.pt_rewind.rw_cmd, i32 12)
  %call.i.i19 = call fastcc i32 @pt_command(ptr noundef %1, ptr noundef nonnull %rw_cmd.i, i32 noundef 0, ptr noundef nonnull @.str.81) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i19)
  %tobool.not.i.i20 = icmp eq i32 %call.i.i19, 0
  br i1 %tobool.not.i.i20, label %if.end.i.i24, label %if.then.i.i21

if.then.i.i21:                                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @pt_req_sense(ptr noundef %1, i32 noundef 0) #10
  br label %pt_rewind.exit

if.end.i.i24:                                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %pi.i.i22 = getelementptr inbounds %struct.pt_unit, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %pi.i.i22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pi.i.i22, align 4
  call void @pi_disconnect(ptr noundef %13) #10
  %call1.i.i23 = call fastcc i32 @pt_poll_dsc(ptr noundef %1, i32 noundef 100, i32 noundef 1200, ptr noundef nonnull @.str.81) #10
  br label %pt_rewind.exit

pt_rewind.exit:                                   ; preds = %if.end.i.i24, %if.then.i.i21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rw_cmd.i) #10
  br label %if.end7

if.end7:                                          ; preds = %pt_rewind.exit, %if.end2.if.end7_crit_edge
  %bufptr = getelementptr inbounds %struct.pt_unit, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %bufptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bufptr, align 4
  call void @kfree(ptr noundef %15) #10
  %16 = ptrtoint ptr %bufptr to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %bufptr, align 4
  %call.i.i17 = call zeroext i1 @__kasan_check_write(ptr noundef %available, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %available, i32 1, i32 3, i32 1) #10
  %17 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %available, ptr %available, i32 1, ptr elementtype(i32) %available) #10, !srcloc !250
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pt_poll_dsc(ptr noundef %tape, i32 noundef %pause, i32 noundef %tmo, ptr noundef %msg) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pi1 = getelementptr inbounds %struct.pt_unit, ptr %tape, i32 0, i32 1
  %0 = ptrtoint ptr %pi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pi1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tmo)
  %cmp43 = icmp sgt i32 %tmo, 0
  br i1 %cmp43, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %drive.i = getelementptr inbounds %struct.pt_unit, ptr %tape, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %k.044 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %while.body.while.body_crit_edge ]
  %call.i = tail call i32 @schedule_timeout_interruptible(i32 noundef %pause) #10
  %inc = add nuw nsw i32 %k.044, 1
  tail call void @pi_connect(ptr noundef %1) #10
  %2 = ptrtoint ptr %drive.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %drive.i, align 4
  %4 = shl i32 %3, 4
  %conv.i = add i32 %4, 160
  %conv = and i32 %conv.i, 240
  tail call void @pi_write_regr(ptr noundef %1, i32 noundef 0, i32 noundef 6, i32 noundef %conv) #10
  %call.i41 = tail call i32 @pi_read_regr(ptr noundef %1, i32 noundef 0, i32 noundef 7) #10
  %call.i42 = tail call i32 @pi_read_regr(ptr noundef %1, i32 noundef 0, i32 noundef 1) #10
  tail call void @pi_disconnect(ptr noundef %1) #10
  %and = and i32 %call.i41, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %tmo)
  %cmp = icmp slt i32 %inc, %tmo
  %or.cond50 = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond50, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %k.1 = phi i32 [ 0, %entry.while.end_crit_edge ], [ %inc, %while.body.while.end_crit_edge ]
  %e.1 = phi i32 [ 0, %entry.while.end_crit_edge ], [ %call.i42, %while.body.while.end_crit_edge ]
  %s.1 = phi i32 [ 0, %entry.while.end_crit_edge ], [ %call.i41, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %k.1, i32 %tmo)
  %cmp4.not = icmp slt i32 %k.1, %tmo
  %and6 = and i32 %s.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %or.cond = select i1 %cmp4.not, i1 %tobool7.not, i1 false
  br i1 %or.cond, label %while.end.cleanup_crit_edge, label %if.then8

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8:                                         ; preds = %while.end
  %name17 = getelementptr inbounds %struct.pt_unit, ptr %tape, i32 0, i32 10
  br i1 %cmp4.not, label %do.end15, label %do.end

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name17, ptr noundef %msg) #13
  br label %if.end20

do.end15:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %name17, ptr noundef %msg, i32 noundef %s.1, i32 noundef %e.1) #13
  br label %if.end20

if.end20:                                         ; preds = %do.end15, %do.end
  tail call fastcc void @pt_req_sense(ptr noundef %tape, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ 1, %while.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

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
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !28, !30, !32, !33, !35, !36, !38, !39, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !61, !62, !63, !64, !65, !67, !69, !71, !73, !75, !76, !77, !78, !79, !81, !82, !83, !85, !87, !88, !89, !91, !93, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !116, !118, !120, !121, !122, !123, !125, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !147, !149, !150, !151, !152, !154, !155, !156, !157, !159, !161, !163, !165, !166, !167, !168, !170, !172, !174, !176, !178, !180, !182, !183, !184, !185, !187, !188, !189, !190, !192, !193, !194, !196, !197, !199, !201, !203, !205, !207, !209, !210, !211, !212, !214, !215, !216, !217, !219, !220, !221, !223, !225, !227, !228, !229}
!llvm.named.register.sp = !{!230}
!llvm.module.flags = !{!231, !232, !233, !234, !235, !236, !237, !238}
!llvm.ident = !{!239}

!0 = !{ptr @__param_verbose, !1, !"__param_verbose", i1 false, i1 false}
!1 = !{!"../drivers/block/paride/pt.c", i32 155, i32 1}
!2 = !{ptr @__UNIQUE_ID_verbosetype225, !1, !"__UNIQUE_ID_verbosetype225", i1 false, i1 false}
!3 = !{ptr @__param_major, !4, !"__param_major", i1 false, i1 false}
!4 = !{!"../drivers/block/paride/pt.c", i32 156, i32 1}
!5 = !{ptr @__UNIQUE_ID_majortype226, !4, !"__UNIQUE_ID_majortype226", i1 false, i1 false}
!6 = !{ptr @__param_name, !7, !"__param_name", i1 false, i1 false}
!7 = !{!"../drivers/block/paride/pt.c", i32 157, i32 1}
!8 = !{ptr @__UNIQUE_ID_nametype227, !7, !"__UNIQUE_ID_nametype227", i1 false, i1 false}
!9 = !{ptr @__param_drive0, !10, !"__param_drive0", i1 false, i1 false}
!10 = !{!"../drivers/block/paride/pt.c", i32 158, i32 1}
!11 = !{ptr @__UNIQUE_ID_drive0type228, !10, !"__UNIQUE_ID_drive0type228", i1 false, i1 false}
!12 = !{ptr @__param_drive1, !13, !"__param_drive1", i1 false, i1 false}
!13 = !{!"../drivers/block/paride/pt.c", i32 159, i32 1}
!14 = !{ptr @__UNIQUE_ID_drive1type229, !13, !"__UNIQUE_ID_drive1type229", i1 false, i1 false}
!15 = !{ptr @__param_drive2, !16, !"__param_drive2", i1 false, i1 false}
!16 = !{!"../drivers/block/paride/pt.c", i32 160, i32 1}
!17 = !{ptr @__UNIQUE_ID_drive2type230, !16, !"__UNIQUE_ID_drive2type230", i1 false, i1 false}
!18 = !{ptr @__param_drive3, !19, !"__param_drive3", i1 false, i1 false}
!19 = !{!"../drivers/block/paride/pt.c", i32 161, i32 1}
!20 = !{ptr @__UNIQUE_ID_drive3type231, !19, !"__UNIQUE_ID_drive3type231", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_file232, !22, !"__UNIQUE_ID_file232", i1 false, i1 false}
!22 = !{!"../drivers/block/paride/pt.c", i32 1022, i32 1}
!23 = !{ptr @__UNIQUE_ID_license233, !22, !"__UNIQUE_ID_license233", i1 false, i1 false}
!24 = !{ptr @__initcall__kmod_pt__234_1023_pt_init6, !25, !"__initcall__kmod_pt__234_1023_pt_init6", i1 false, i1 false}
!25 = !{!"../drivers/block/paride/pt.c", i32 1023, i32 1}
!26 = !{ptr @__exitcall_pt_exit, !27, !"__exitcall_pt_exit", i1 false, i1 false}
!27 = !{!"../drivers/block/paride/pt.c", i32 1024, i32 1}
!28 = !{ptr @pt, !29, !"pt", i1 false, i1 false}
!29 = !{!"../drivers/block/paride/pt.c", i32 232, i32 23}
!30 = !{ptr @pt_class, !31, !"pt_class", i1 false, i1 false}
!31 = !{!"../drivers/block/paride/pt.c", i32 250, i32 22}
!32 = !{ptr @__param_str_verbose, !1, !"__param_str_verbose", i1 false, i1 false}
!33 = !{ptr @verbose, !34, !"verbose", i1 false, i1 false}
!34 = !{!"../drivers/block/paride/pt.c", i32 120, i32 12}
!35 = !{ptr @__param_str_major, !4, !"__param_str_major", i1 false, i1 false}
!36 = !{ptr @major, !37, !"major", i1 false, i1 false}
!37 = !{!"../drivers/block/paride/pt.c", i32 121, i32 12}
!38 = !{ptr @__param_str_name, !7, !"__param_str_name", i1 false, i1 false}
!39 = !{ptr @.str, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/block/paride/pt.c", i32 122, i32 21}
!41 = !{ptr @name, !42, !"name", i1 false, i1 false}
!42 = !{!"../drivers/block/paride/pt.c", i32 122, i32 14}
!43 = !{ptr @__param_str_drive0, !10, !"__param_str_drive0", i1 false, i1 false}
!44 = !{ptr @__param_arr_drive0, !10, !"__param_arr_drive0", i1 false, i1 false}
!45 = !{ptr @drive0, !46, !"drive0", i1 false, i1 false}
!46 = !{!"../drivers/block/paride/pt.c", i32 125, i32 12}
!47 = !{ptr @__param_str_drive1, !13, !"__param_str_drive1", i1 false, i1 false}
!48 = !{ptr @__param_arr_drive1, !13, !"__param_arr_drive1", i1 false, i1 false}
!49 = !{ptr @drive1, !50, !"drive1", i1 false, i1 false}
!50 = !{!"../drivers/block/paride/pt.c", i32 126, i32 12}
!51 = !{ptr @__param_str_drive2, !16, !"__param_str_drive2", i1 false, i1 false}
!52 = !{ptr @__param_arr_drive2, !16, !"__param_arr_drive2", i1 false, i1 false}
!53 = !{ptr @drive2, !54, !"drive2", i1 false, i1 false}
!54 = !{!"../drivers/block/paride/pt.c", i32 127, i32 12}
!55 = !{ptr @__param_str_drive3, !19, !"__param_str_drive3", i1 false, i1 false}
!56 = !{ptr @__param_arr_drive3, !19, !"__param_arr_drive3", i1 false, i1 false}
!57 = !{ptr @drive3, !58, !"drive3", i1 false, i1 false}
!58 = !{!"../drivers/block/paride/pt.c", i32 128, i32 12}
!59 = !{ptr @.str.1, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/block/paride/pt.c", i32 979, i32 3}
!61 = !{ptr @.str.2, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.3, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @pt_init._entry, !60, !"_entry", i1 false, i1 false}
!64 = !{ptr @pt_init._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @pt_init.__key, !66, !"__key", i1 false, i1 false}
!66 = !{!"../drivers/block/paride/pt.c", i32 986, i32 13}
!67 = !{ptr @.str.4, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/block/paride/pt.c", i32 995, i32 11}
!69 = !{ptr @.str.5, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/block/paride/pt.c", i32 997, i32 17}
!71 = distinct !{null, !72, !"disable", i1 false, i1 false}
!72 = !{!"../drivers/block/paride/pt.c", i32 123, i32 12}
!73 = !{ptr @.str.6, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/block/paride/pt.c", i32 607, i32 2}
!75 = !{ptr @.str.7, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @pt_detect._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @pt_detect._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.8, !74, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.10, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/block/paride/pt.c", i32 611, i32 3}
!81 = !{ptr @pt_detect._entry.9, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @pt_detect._entry_ptr.11, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.12, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/block/paride/pt.c", i32 625, i32 36}
!85 = !{ptr @.str.14, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/block/paride/pt.c", i32 655, i32 2}
!87 = !{ptr @pt_detect._entry.13, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @pt_detect._entry_ptr.15, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @par_drv, !90, !"par_drv", i1 false, i1 false}
!90 = !{!"../drivers/block/paride/pt.c", i32 235, i32 14}
!91 = !{ptr @drives, !92, !"drives", i1 false, i1 false}
!92 = !{!"../drivers/block/paride/pt.c", i32 130, i32 14}
!93 = !{ptr @pt_scratch, !94, !"pt_scratch", i1 false, i1 false}
!94 = !{!"../drivers/block/paride/pt.c", i32 234, i32 13}
!95 = !{ptr @.str.16, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/block/paride/pt.c", i32 472, i32 3}
!97 = !{ptr @.str.17, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @pt_reset._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @pt_reset._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.19, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/block/paride/pt.c", i32 474, i32 4}
!102 = !{ptr @pt_reset._entry.18, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @pt_reset._entry_ptr.20, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.22, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/block/paride/pt.c", i32 476, i32 4}
!106 = !{ptr @pt_reset._entry.21, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @pt_reset._entry_ptr.23, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.25, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/block/paride/pt.c", i32 477, i32 3}
!110 = !{ptr @pt_reset._entry.24, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @pt_reset._entry_ptr.26, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.27, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/block/paride/pt.c", i32 531, i32 18}
!114 = !{ptr @.str.28, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/block/paride/pt.c", i32 531, i32 28}
!116 = !{ptr @.str.29, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/block/paride/pt.c", i32 540, i32 38}
!118 = !{ptr @.str.30, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/block/paride/pt.c", i32 547, i32 4}
!120 = !{ptr @.str.31, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @pt_identify._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @pt_identify._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.32, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/block/paride/pt.c", i32 562, i32 39}
!125 = !{ptr @.str.33, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/block/paride/pt.c", i32 568, i32 39}
!127 = !{ptr @.str.35, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/block/paride/pt.c", i32 571, i32 2}
!129 = !{ptr @pt_identify._entry.34, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @pt_identify._entry_ptr.36, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.38, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/block/paride/pt.c", i32 573, i32 3}
!133 = !{ptr @pt_identify._entry.37, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @pt_identify._entry_ptr.39, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.41, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/block/paride/pt.c", i32 576, i32 4}
!137 = !{ptr @pt_identify._entry.40, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @pt_identify._entry_ptr.42, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.44, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/block/paride/pt.c", i32 577, i32 3}
!141 = !{ptr @pt_identify._entry.43, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @pt_identify._entry_ptr.45, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.46, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/block/paride/pt.c", i32 304, i32 50}
!145 = !{ptr @.str.47, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/block/paride/pt.c", i32 313, i32 46}
!147 = !{ptr @.str.48, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/block/paride/pt.c", i32 319, i32 3}
!149 = !{ptr @.str.49, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @pt_command._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @pt_command._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.50, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/block/paride/pt.c", i32 289, i32 4}
!154 = !{ptr @.str.51, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @pt_wait._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @pt_wait._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.52, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/block/paride/pt.c", i32 335, i32 12}
!159 = !{ptr @.str.53, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/block/paride/pt.c", i32 347, i32 59}
!161 = !{ptr @.str.54, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/block/paride/pt.c", i32 360, i32 35}
!163 = !{ptr @.str.55, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/block/paride/pt.c", i32 368, i32 4}
!165 = !{ptr @.str.56, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @pt_req_sense._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @pt_req_sense._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.57, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/block/paride/pt.c", i32 492, i32 35}
!170 = !{ptr @pt_fops, !171, !"pt_fops", i1 false, i1 false}
!171 = !{!"../drivers/block/paride/pt.c", i32 239, i32 37}
!172 = !{ptr @.str.58, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/block/paride/pt.c", i32 774, i32 39}
!174 = !{ptr @.str.59, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/block/paride/pt.c", i32 786, i32 44}
!176 = !{ptr @.str.60, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/block/paride/pt.c", i32 810, i32 9}
!178 = !{ptr @.str.61, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/block/paride/pt.c", i32 810, i32 28}
!180 = !{ptr @.str.62, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/block/paride/pt.c", i32 830, i32 5}
!182 = !{ptr @.str.63, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @pt_read._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @pt_read._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.64, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/block/paride/pt.c", i32 415, i32 4}
!187 = !{ptr @.str.65, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @pt_poll_dsc._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @pt_poll_dsc._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.67, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/block/paride/pt.c", i32 417, i32 4}
!192 = !{ptr @pt_poll_dsc._entry.66, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @pt_poll_dsc._entry_ptr.68, !191, !"_entry_ptr", i1 false, i1 false}
!194 = distinct !{null, !195, !"__already_done", i1 false, i1 false}
!195 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!196 = !{ptr @.str.69, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.70, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!199 = !{ptr @.str.71, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!201 = !{ptr @.str.72, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/block/paride/pt.c", i32 875, i32 31}
!203 = !{ptr @.str.73, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/block/paride/pt.c", i32 887, i32 44}
!205 = !{ptr @.str.74, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/block/paride/pt.c", i32 911, i32 9}
!207 = !{ptr @.str.75, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/block/paride/pt.c", i32 931, i32 5}
!209 = !{ptr @.str.76, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @pt_write._entry, !208, !"_entry", i1 false, i1 false}
!211 = !{ptr @pt_write._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.77, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/block/paride/pt.c", i32 732, i32 4}
!214 = !{ptr @.str.78, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @pt_ioctl._entry, !213, !"_entry", i1 false, i1 false}
!216 = !{ptr @pt_ioctl._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.79, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/block/paride/pt.c", i32 194, i32 8}
!219 = !{ptr @.str.80, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @pt_mutex, !218, !"pt_mutex", i1 false, i1 false}
!221 = !{ptr @.str.81, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/block/paride/pt.c", i32 439, i32 51}
!223 = !{ptr @.str.82, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/block/paride/pt.c", i32 446, i32 44}
!225 = !{ptr @.str.83, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/block/paride/pt.c", i32 691, i32 3}
!227 = !{ptr @.str.84, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @pt_open._entry, !226, !"_entry", i1 false, i1 false}
!229 = !{ptr @pt_open._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!230 = !{!"sp"}
!231 = !{i32 1, !"wchar_size", i32 2}
!232 = !{i32 1, !"min_enum_size", i32 4}
!233 = !{i32 8, !"branch-target-enforcement", i32 0}
!234 = !{i32 8, !"sign-return-address", i32 0}
!235 = !{i32 8, !"sign-return-address-all", i32 0}
!236 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!237 = !{i32 7, !"uwtable", i32 1}
!238 = !{i32 7, !"frame-pointer", i32 2}
!239 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!240 = !{i64 2152427365, i64 2152427390}
!241 = !{i64 2152426684, i64 2152426709}
!242 = !{!"branch_weights", i32 2000, i32 1}
!243 = !{i64 4922239}
!244 = !{i64 4922436}
!245 = !{i64 2152407669}
!246 = !{!"auto-init"}
!247 = !{i64 2148450543}
!248 = !{i64 2148365252, i64 2148365284, i64 2148365313, i64 2148365347, i64 2148365378, i64 2148365401}
!249 = !{i64 2148450772}
!250 = !{i64 2148362067, i64 2148362093, i64 2148362122, i64 2148362156, i64 2148362187, i64 2148362210}
