; ModuleID = '/llk/IR_all_yes/drivers/block/paride/pg.c_pt.bc'
source_filename = "../drivers/block/paride/pg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.pg = type { %struct.pi_adapter, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [8 x i8] }
%struct.pi_adapter = type { ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pg_read_hdr = type { i8, i8, i32, i32, [12 x i8] }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.pg_write_hdr = type { i8, i8, i32, i32, [12 x i8] }
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
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.70 = type { ptr }

@__param_str_verbose = internal constant [11 x i8] c"pg.verbose\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@verbose = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_verbose = internal constant %struct.kernel_param { ptr @__param_str_verbose, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @verbose } }, section "__param", align 4
@__UNIQUE_ID_verbosetype225 = internal constant [24 x i8] c"pg.parmtype=verbose:int\00", section ".modinfo", align 1
@__param_str_major = internal constant [9 x i8] c"pg.major\00", align 1
@major = internal global { i32, [28 x i8] } { i32 97, [28 x i8] zeroinitializer }, align 32
@__param_major = internal constant %struct.kernel_param { ptr @__param_str_major, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @major } }, section "__param", align 4
@__UNIQUE_ID_majortype226 = internal constant [22 x i8] c"pg.parmtype=major:int\00", section ".modinfo", align 1
@__param_str_name = internal constant [8 x i8] c"pg.name\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@name = internal global { ptr, [28 x i8] } { ptr @.str, [28 x i8] zeroinitializer }, align 32
@__param_name = internal constant %struct.kernel_param { ptr @__param_str_name, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @name } }, section "__param", align 4
@__UNIQUE_ID_nametype227 = internal constant [23 x i8] c"pg.parmtype=name:charp\00", section ".modinfo", align 1
@__param_str_drive0 = internal constant [10 x i8] c"pg.drive0\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_drive0 = internal constant %struct.kparam_array { i32 6, i32 4, ptr null, ptr @param_ops_int, ptr @drive0 }, align 4
@__param_drive0 = internal constant %struct.kernel_param { ptr @__param_str_drive0, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_drive0 } }, section "__param", align 4
@__UNIQUE_ID_drive0type228 = internal constant [32 x i8] c"pg.parmtype=drive0:array of int\00", section ".modinfo", align 1
@__param_str_drive1 = internal constant [10 x i8] c"pg.drive1\00", align 1
@__param_arr_drive1 = internal constant %struct.kparam_array { i32 6, i32 4, ptr null, ptr @param_ops_int, ptr @drive1 }, align 4
@__param_drive1 = internal constant %struct.kernel_param { ptr @__param_str_drive1, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_drive1 } }, section "__param", align 4
@__UNIQUE_ID_drive1type229 = internal constant [32 x i8] c"pg.parmtype=drive1:array of int\00", section ".modinfo", align 1
@__param_str_drive2 = internal constant [10 x i8] c"pg.drive2\00", align 1
@__param_arr_drive2 = internal constant %struct.kparam_array { i32 6, i32 4, ptr null, ptr @param_ops_int, ptr @drive2 }, align 4
@__param_drive2 = internal constant %struct.kernel_param { ptr @__param_str_drive2, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_drive2 } }, section "__param", align 4
@__UNIQUE_ID_drive2type230 = internal constant [32 x i8] c"pg.parmtype=drive2:array of int\00", section ".modinfo", align 1
@__param_str_drive3 = internal constant [10 x i8] c"pg.drive3\00", align 1
@__param_arr_drive3 = internal constant %struct.kparam_array { i32 6, i32 4, ptr null, ptr @param_ops_int, ptr @drive3 }, align 4
@__param_drive3 = internal constant %struct.kernel_param { ptr @__param_str_drive3, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_drive3 } }, section "__param", align 4
@__UNIQUE_ID_drive3type231 = internal constant [32 x i8] c"pg.parmtype=drive3:array of int\00", section ".modinfo", align 1
@devices = internal global { [4 x %struct.pg], [160 x i8] } zeroinitializer, align 32
@pg_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__UNIQUE_ID_file232 = internal constant [32 x i8] c"pg.file=drivers/block/paride/pg\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [15 x i8] c"pg.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_pg__234_733_pg_init6 = internal global ptr @pg_init, section ".initcall6.init", align 4
@__exitcall_pg_exit = internal global ptr @pg_exit, section ".exitcall.exit", align 4
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"pg\00", [29 x i8] zeroinitializer }, align 32
@drive0 = internal global { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 -1], [40 x i8] zeroinitializer }, align 32
@drive1 = internal global { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 -1], [40 x i8] zeroinitializer }, align 32
@drive2 = internal global { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 -1], [40 x i8] zeroinitializer }, align 32
@drive3 = internal global { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 -1], [40 x i8] zeroinitializer }, align 32
@pg_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @pg_read, ptr @pg_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @pg_open, ptr null, ptr @pg_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@pg_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 684, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"pg_init: unable to get major number %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pg_init\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/block/paride/pg.c\00", [38 x i8] zeroinitializer }, align 32
@pg_init._entry_ptr = internal global ptr @pg_init._entry, section ".printk_index", align 4
@pg_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pg%u\00", [27 x i8] zeroinitializer }, align 32
@pg_drive_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@drives = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @drive0, ptr @drive1, ptr @drive2, ptr @drive3], [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%c\00", [27 x i8] zeroinitializer }, align 32
@pg_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: %s version %s, major %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pg_detect\00", [22 x i8] zeroinitializer }, align 32
@pg_detect._entry_ptr = internal global ptr @pg_detect._entry, section ".printk_index", align 4
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.02\00", [27 x i8] zeroinitializer }, align 32
@par_drv = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pg_detect._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.3, i32 487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013failed to register %s driver\0A\00", [32 x i8] zeroinitializer }, align 32
@pg_detect._entry_ptr.11 = internal global ptr @pg_detect._entry.9, section ".printk_index", align 4
@pg_scratch = internal global { [512 x i8], [128 x i8] } zeroinitializer, align 32
@pg_detect._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.7, ptr @.str.3, i32 522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: No ATAPI device detected\0A\00", [34 x i8] zeroinitializer }, align 32
@pg_detect._entry_ptr.14 = internal global ptr @pg_detect._entry.12, section ".printk_index", align 4
@__const.pg_reset.expect = private unnamed_addr constant [5 x i32] [i32 1, i32 1, i32 1, i32 20, i32 235], align 4
@pg_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Reset (%d) signature = \00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pg_reset\00", [23 x i8] zeroinitializer }, align 32
@pg_reset._entry_ptr = internal global ptr @pg_reset._entry, section ".printk_index", align 4
@pg_reset._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 412, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%3x\00", [28 x i8] zeroinitializer }, align 32
@pg_reset._entry_ptr.19 = internal global ptr @pg_reset._entry.17, section ".printk_index", align 4
@pg_reset._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.3, i32 414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" (incorrect)\00", [19 x i8] zeroinitializer }, align 32
@pg_reset._entry_ptr.22 = internal global ptr @pg_reset._entry.20, section ".printk_index", align 4
@pg_reset._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.3, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@pg_reset._entry_ptr.25 = internal global ptr @pg_reset._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"master\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"slave\00", [26 x i8] zeroinitializer }, align 32
@__const.pg_identify.ms = private unnamed_addr constant [2 x ptr] [ptr @.str.26, ptr @.str.27], align 4
@__const.pg_identify.id_cmd = private unnamed_addr constant [12 x i8] c"\12\00\00\00$\00\00\00\00\00\00\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@pg_identify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: %s %s, %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pg_identify\00", [20 x i8] zeroinitializer }, align 32
@pg_identify._entry_ptr = internal global ptr @pg_identify._entry, section ".printk_index", align 4
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"before command\00", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"command DRQ\00", [20 x i8] zeroinitializer }, align 32
@pg_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: command phase error\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pg_command\00", [21 x i8] zeroinitializer }, align 32
@pg_command._entry_ptr = internal global ptr @pg_command._entry, section ".printk_index", align 4
@pg_command._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.3, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Command sent, dlen=%d packet= \00", [61 x i8] zeroinitializer }, align 32
@pg_command._entry_ptr.36 = internal global ptr @pg_command._entry.34, section ".printk_index", align 4
@pg_command._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.3, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x \00", [26 x i8] zeroinitializer }, align 32
@pg_command._entry_ptr.39 = internal global ptr @pg_command._entry.37, section ".printk_index", align 4
@pg_command._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.33, ptr @.str.3, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pg_command._entry_ptr.41 = internal global ptr @pg_command._entry.40, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@pg_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: %s: stat=0x%x err=0x%x phase=%d%s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pg_wait\00", [24 x i8] zeroinitializer }, align 32
@pg_wait._entry_ptr = internal global ptr @pg_wait._entry, section ".printk_index", align 4
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" timeout\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"completion\00", [21 x i8] zeroinitializer }, align 32
@pg_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: %s %d bytes\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pg_completion\00", [18 x i8] zeroinitializer }, align 32
@pg_completion._entry_ptr = internal global ptr @pg_completion._entry, section ".printk_index", align 4
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Read\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Write\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@pg_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.56, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pg_mutex, i64 52), ptr getelementptr (i8, ptr @pg_mutex, i64 52) }, ptr @pg_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.57, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@pg_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: buffer allocation failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pg_open\00", [24 x i8] zeroinitializer }, align 32
@pg_open._entry_ptr = internal global ptr @pg_open._entry, section ".printk_index", align 4
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pg_mutex.wait_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pg_mutex\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 8, i64 67, i64 90]
@___asan_gen_.59 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 140, i32 12 }
@___asan_gen_.62 = private unnamed_addr constant [6 x i8] c"major\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 141, i32 12 }
@___asan_gen_.65 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 142, i32 14 }
@___asan_gen_.68 = private unnamed_addr constant [8 x i8] c"devices\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 223, i32 18 }
@___asan_gen_.71 = private unnamed_addr constant [9 x i8] c"pg_class\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 229, i32 22 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 142, i32 21 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"drive0\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 145, i32 12 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"drive1\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 146, i32 12 }
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"drive2\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 147, i32 12 }
@___asan_gen_.86 = private unnamed_addr constant [7 x i8] c"drive3\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 148, i32 12 }
@___asan_gen_.89 = private unnamed_addr constant [8 x i8] c"pg_fops\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 234, i32 37 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 684, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 693, i32 13 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 702, i32 11 }
@___asan_gen_.110 = private unnamed_addr constant [15 x i8] c"pg_drive_count\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 151, i32 12 }
@___asan_gen_.113 = private unnamed_addr constant [7 x i8] c"drives\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 150, i32 14 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 257, i32 35 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 483, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant [8 x i8] c"par_drv\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 230, i32 14 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 487, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [11 x i8] c"pg_scratch\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 227, i32 13 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 522, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 410, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 412, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 414, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 415, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 440, i32 18 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 440, i32 28 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 455, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 328, i32 49 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 335, i32 45 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 339, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 346, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 348, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 349, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 310, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 362, i32 12 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 375, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 230, i32 6 }
@___asan_gen_.258 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 214, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 174, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant [9 x i8] c"pg_mutex\00", align 1
@___asan_gen_.266 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 553, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.279 = private constant [29 x i8] c"../drivers/block/paride/pg.c\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 197, i32 8 }
@llvm.compiler.used = appending global [109 x ptr] [ptr @__UNIQUE_ID_drive0type228, ptr @__UNIQUE_ID_drive1type229, ptr @__UNIQUE_ID_drive2type230, ptr @__UNIQUE_ID_drive3type231, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__UNIQUE_ID_majortype226, ptr @__UNIQUE_ID_nametype227, ptr @__UNIQUE_ID_verbosetype225, ptr @__exitcall_pg_exit, ptr @__initcall__kmod_pg__234_733_pg_init6, ptr @__param_drive0, ptr @__param_drive1, ptr @__param_drive2, ptr @__param_drive3, ptr @__param_major, ptr @__param_name, ptr @__param_verbose, ptr @pg_command._entry, ptr @pg_command._entry.34, ptr @pg_command._entry.37, ptr @pg_command._entry.40, ptr @pg_command._entry_ptr, ptr @pg_command._entry_ptr.36, ptr @pg_command._entry_ptr.39, ptr @pg_command._entry_ptr.41, ptr @pg_completion._entry, ptr @pg_completion._entry_ptr, ptr @pg_detect._entry, ptr @pg_detect._entry.12, ptr @pg_detect._entry.9, ptr @pg_detect._entry_ptr, ptr @pg_detect._entry_ptr.11, ptr @pg_detect._entry_ptr.14, ptr @pg_exit, ptr @pg_identify._entry, ptr @pg_identify._entry_ptr, ptr @pg_init._entry, ptr @pg_init._entry_ptr, ptr @pg_open._entry, ptr @pg_open._entry_ptr, ptr @pg_reset._entry, ptr @pg_reset._entry.17, ptr @pg_reset._entry.20, ptr @pg_reset._entry.23, ptr @pg_reset._entry_ptr, ptr @pg_reset._entry_ptr.19, ptr @pg_reset._entry_ptr.22, ptr @pg_reset._entry_ptr.25, ptr @pg_wait._entry, ptr @pg_wait._entry_ptr, ptr @verbose, ptr @major, ptr @name, ptr @devices, ptr @pg_class, ptr @.str, ptr @drive0, ptr @drive1, ptr @drive2, ptr @drive3, ptr @pg_fops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @pg_init.__key, ptr @.str.4, ptr @pg_drive_count, ptr @drives, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @par_drv, ptr @.str.10, ptr @pg_scratch, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @pg_mutex, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verbose to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devices to i32), i32 640, i32 800, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pg_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drive0 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drive1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drive2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drive3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pg_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pg_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pg_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pg_drive_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drives to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pg_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @par_drv to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pg_detect._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pg_scratch to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pg_detect._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pg_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pg_reset._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pg_reset._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pg_reset._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pg_identify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pg_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pg_command._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pg_command._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pg_command._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pg_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pg_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pg_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pg_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pg_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %unit.020 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %present = getelementptr [4 x %struct.pg], ptr @devices, i32 0, i32 %unit.020, i32 9
  %0 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %2 = load ptr, ptr @pg_class, align 4
  %3 = load i32, ptr @major, align 4
  %shl = shl i32 %3, 20
  %or = or i32 %shl, %unit.020
  tail call void @device_destroy(ptr noundef %2, i32 noundef %or) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %inc = add nuw nsw i32 %unit.020, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end
  %4 = load ptr, ptr @pg_class, align 4
  tail call void @class_destroy(ptr noundef %4) #10
  %5 = load i32, ptr @major, align 4
  %6 = load ptr, ptr @name, align 4
  tail call void @__unregister_chrdev(i32 noundef %5, i32 noundef 0, i32 noundef 256, ptr noundef %6) #10
  br label %for.body3

for.body3:                                        ; preds = %if.end9.for.body3_crit_edge, %for.end
  %unit.122 = phi i32 [ 0, %for.end ], [ %inc11, %if.end9.for.body3_crit_edge ]
  %present6 = getelementptr [4 x %struct.pg], ptr @devices, i32 0, i32 %unit.122, i32 9
  %7 = ptrtoint ptr %present6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %present6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool7.not = icmp eq i32 %8, 0
  br i1 %tobool7.not, label %for.body3.if.end9_crit_edge, label %if.then8

for.body3.if.end9_crit_edge:                      ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then8:                                         ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #12
  %pi = getelementptr [4 x %struct.pg], ptr @devices, i32 0, i32 %unit.122, i32 1
  %9 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pi, align 4
  tail call void @pi_release(ptr noundef %10) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %for.body3.if.end9_crit_edge
  %inc11 = add nuw nsw i32 %unit.122, 1
  %exitcond24.not = icmp eq i32 %inc11, 4
  br i1 %exitcond24.not, label %for.end12, label %if.end9.for.body3_crit_edge

if.end9.for.body3_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body3

for.end12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pi_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pg_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 0, ptr @pg_drive_count, align 4
  store ptr @devices, ptr getelementptr inbounds ([4 x %struct.pg], ptr @devices, i32 0, i32 0, i32 1), align 4
  tail call void @_clear_bit(i32 noundef 0, ptr noundef getelementptr inbounds ([4 x %struct.pg], ptr @devices, i32 0, i32 0, i32 8)) #10
  store i32 0, ptr getelementptr inbounds ([4 x %struct.pg], ptr @devices, i32 0, i32 0, i32 2), align 4
  store i32 0, ptr getelementptr inbounds ([4 x %struct.pg], ptr @devices, i32 0, i32 0, i32 9), align 4
  store ptr null, ptr getelementptr inbounds ([4 x %struct.pg], ptr @devices, i32 0, i32 0, i32 10), align 4
  %0 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @drive0, i32 0, i32 4), align 4
  store i32 %0, ptr getelementptr inbounds ([4 x %struct.pg], ptr @devices, i32 0, i32 0, i32 7), align 4
  %1 = load ptr, ptr @name, align 4
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef getelementptr inbounds ([4 x %struct.pg], ptr @devices, i32 0, i32 0, i32 11), i32 noundef 8, ptr noundef nonnull @.str.5, ptr noundef %1, i32 noundef 97) #10
  %2 = load i32, ptr @drive0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = load i32, ptr @pg_drive_count, align 4
  %inc.i = add i32 %3, 1
  store i32 %inc.i, ptr @pg_drive_count, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  store ptr getelementptr inbounds ([4 x %struct.pg], ptr @devices, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.pg], ptr @devices, i32 0, i32 1, i32 1), align 4
  tail call void @_clear_bit(i32 noundef 0, ptr noundef getelementptr inbounds ([4 x %struct.pg], ptr @devices, i32 0, i32 1, i32 8)) #10
  store i32 0, ptr getelementptr inbounds ([4 x %struct.pg], ptr @devices, i32 0, i32 1, i32 2), align 4
  store i32 0, ptr getelementptr inbounds ([4 x %struct.pg], ptr @devices, i32 0, i32 1, i32 9), align 4
  store ptr null, ptr getelementptr inbounds ([4 x %struct.pg], ptr @devices, i32 0, i32 1, i32 10), align 4
  %4 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @drive1, i32 0, i32 4), align 4
  store i32 %4, ptr getelementptr inbounds ([4 x %struct.pg], ptr @devices, i32 0, i32 1, i32 7), align 4
  %5 = load ptr, ptr @name, align 4
  %call.1.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef getelementptr inbounds ([4 x %struct.pg], ptr @devices, i32 0, i32 1, i32 11), i32 noundef 8, ptr noundef nonnull @.str.5, ptr noundef %5, i32 noundef 98) #10
  %6 = load i32, ptr @drive1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.1.i = icmp eq i32 %6, 0
  br i1 %tobool.not.1.i, label %if.end.i.if.end.1.i_crit_edge, label %if.then.1.i

if.end.i.if.end.1.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.1.i

if.then.1.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %7 = load i32, ptr @pg_drive_count, align 4
  %inc.1.i = add i32 %7, 1
  store i32 %inc.1.i, ptr @pg_drive_count, align 4
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %if.then.1.i, %if.end.i.if.end.1.i_crit_edge
  store ptr getelementptr inbounds ([4 x %struct.pg], ptr @devices, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.pg], ptr @devices, i32 0, i32 2, i32 1), align 4
  tail call void @_clear_bit(i32 noundef 0, ptr noundef getelementptr inbounds ([4 x %struct.pg], ptr @devices, i32 0, i32 2, i32 8)) #10
  store i32 0, ptr getelementptr inbounds ([4 x %struct.pg], ptr @devices, i32 0, i32 2, i32 2), align 4
  store i32 0, ptr getelementptr inbounds ([4 x %struct.pg], ptr @devices, i32 0, i32 2, i32 9), align 4
  store ptr null, ptr getelementptr inbounds ([4 x %struct.pg], ptr @devices, i32 0, i32 2, i32 10), align 4
  %8 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @drive2, i32 0, i32 4), align 4
  store i32 %8, ptr getelementptr inbounds ([4 x %struct.pg], ptr @devices, i32 0, i32 2, i32 7), align 4
  %9 = load ptr, ptr @name, align 4
  %call.2.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef getelementptr inbounds ([4 x %struct.pg], ptr @devices, i32 0, i32 2, i32 11), i32 noundef 8, ptr noundef nonnull @.str.5, ptr noundef %9, i32 noundef 99) #10
  %10 = load i32, ptr @drive2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.2.i = icmp eq i32 %10, 0
  br i1 %tobool.not.2.i, label %if.end.1.i.if.end.2.i_crit_edge, label %if.then.2.i

if.end.1.i.if.end.2.i_crit_edge:                  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.2.i

if.then.2.i:                                      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = load i32, ptr @pg_drive_count, align 4
  %inc.2.i = add i32 %11, 1
  store i32 %inc.2.i, ptr @pg_drive_count, align 4
  br label %if.end.2.i

if.end.2.i:                                       ; preds = %if.then.2.i, %if.end.1.i.if.end.2.i_crit_edge
  store ptr getelementptr inbounds ([4 x %struct.pg], ptr @devices, i32 0, i32 3), ptr getelementptr inbounds ([4 x %struct.pg], ptr @devices, i32 0, i32 3, i32 1), align 4
  tail call void @_clear_bit(i32 noundef 0, ptr noundef getelementptr inbounds ([4 x %struct.pg], ptr @devices, i32 0, i32 3, i32 8)) #10
  store i32 0, ptr getelementptr inbounds ([4 x %struct.pg], ptr @devices, i32 0, i32 3, i32 2), align 4
  store i32 0, ptr getelementptr inbounds ([4 x %struct.pg], ptr @devices, i32 0, i32 3, i32 9), align 4
  store ptr null, ptr getelementptr inbounds ([4 x %struct.pg], ptr @devices, i32 0, i32 3, i32 10), align 4
  %12 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @drive3, i32 0, i32 4), align 4
  store i32 %12, ptr getelementptr inbounds ([4 x %struct.pg], ptr @devices, i32 0, i32 3, i32 7), align 4
  %13 = load ptr, ptr @name, align 4
  %call.3.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef getelementptr inbounds ([4 x %struct.pg], ptr @devices, i32 0, i32 3, i32 11), i32 noundef 8, ptr noundef nonnull @.str.5, ptr noundef %13, i32 noundef 100) #10
  %14 = load i32, ptr @drive3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.3.i = icmp eq i32 %14, 0
  br i1 %tobool.not.3.i, label %if.end.2.i.pg_init_units.exit_crit_edge, label %if.then.3.i

if.end.2.i.pg_init_units.exit_crit_edge:          ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pg_init_units.exit

if.then.3.i:                                      ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = load i32, ptr @pg_drive_count, align 4
  %inc.3.i = add i32 %15, 1
  store i32 %inc.3.i, ptr @pg_drive_count, align 4
  br label %pg_init_units.exit

pg_init_units.exit:                               ; preds = %if.then.3.i, %if.end.2.i.pg_init_units.exit_crit_edge
  %16 = load ptr, ptr @name, align 4
  %17 = load i32, ptr @major, align 4
  %call.i41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %16, ptr noundef %16, ptr noundef nonnull @.str.8, i32 noundef %17) #13
  %18 = load ptr, ptr @name, align 4
  %call1.i = tail call ptr @pi_register_driver(ptr noundef %18) #10
  store ptr %call1.i, ptr @par_drv, align 4
  %tobool.not.i42 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i42, label %do.end4.i, label %if.end.i43

do.end4.i:                                        ; preds = %pg_init_units.exit
  call void @__sanitizer_cov_trace_pc() #12
  %19 = load ptr, ptr @name, align 4
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %19) #13
  br label %out

if.end.i43:                                       ; preds = %pg_init_units.exit
  %20 = load i32, ptr @pg_drive_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i = icmp eq i32 %20, 0
  br i1 %cmp.i, label %if.then7.i, label %if.end.i43.for.body.i_crit_edge

if.end.i43.for.body.i_crit_edge:                  ; preds = %if.end.i43
  br label %for.body.i

if.then7.i:                                       ; preds = %if.end.i43
  %21 = load ptr, ptr getelementptr inbounds ([4 x %struct.pg], ptr @devices, i32 0, i32 0, i32 1), align 4
  %22 = load i32, ptr @verbose, align 4
  %call8.i = tail call i32 @pi_init(ptr noundef %21, i32 noundef 1, i32 noundef -1, i32 noundef -1, i32 noundef -1, i32 noundef -1, i32 noundef -1, ptr noundef nonnull @pg_scratch, i32 noundef 4, i32 noundef %22, ptr noundef getelementptr inbounds ([4 x %struct.pg], ptr @devices, i32 0, i32 0, i32 11)) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.then7.i.if.end48.i_crit_edge, label %if.then10.i

if.then7.i.if.end48.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48.i

if.then10.i:                                      ; preds = %if.then7.i
  %23 = load i32, ptr getelementptr inbounds ([4 x %struct.pg], ptr @devices, i32 0, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp.i.i = icmp eq i32 %23, -1
  br i1 %cmp.i.i, label %for.cond.preheader.i.i, label %if.else.i.i

for.cond.preheader.i.i:                           ; preds = %if.then10.i
  store i32 0, ptr getelementptr inbounds ([4 x %struct.pg], ptr @devices, i32 0, i32 0, i32 7), align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i
  %call.i.i = tail call fastcc i32 @pg_reset(ptr noundef nonnull @devices) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.pg_probe.exit.i_crit_edge, label %for.inc.i.i

for.body.i.i.pg_probe.exit.i_crit_edge:           ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pg_probe.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %24 = load i32, ptr getelementptr inbounds ([4 x %struct.pg], ptr @devices, i32 0, i32 0, i32 7), align 4
  %inc.i.i = add i32 %24, 1
  store i32 %inc.i.i, ptr getelementptr inbounds ([4 x %struct.pg], ptr @devices, i32 0, i32 0, i32 7), align 4
  %cmp3.i.i = icmp slt i32 %inc.i.i, 2
  br i1 %cmp3.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.if.else.i_crit_edge

for.inc.i.i.if.else.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

if.else.i.i:                                      ; preds = %if.then10.i
  %call7.i.i = tail call fastcc i32 @pg_reset(ptr noundef nonnull @devices) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %if.else.i.i.pg_probe.exit.i_crit_edge, label %if.else.i.i.if.else.i_crit_edge

if.else.i.i.if.else.i_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.else.i.i.pg_probe.exit.i_crit_edge:            ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pg_probe.exit.i

pg_probe.exit.i:                                  ; preds = %if.else.i.i.pg_probe.exit.i_crit_edge, %for.body.i.i.pg_probe.exit.i_crit_edge
  %call10.i.i = tail call fastcc i32 @pg_identify(ptr noundef nonnull @devices, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool12.not.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool12.not.i, label %if.end45.thread97.i, label %pg_probe.exit.i.if.else.i_crit_edge

pg_probe.exit.i.if.else.i_crit_edge:              ; preds = %pg_probe.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.end45.thread97.i:                              ; preds = %pg_probe.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  store i32 1, ptr getelementptr inbounds ([4 x %struct.pg], ptr @devices, i32 0, i32 0, i32 9), align 4
  br label %if.end3

if.else.i:                                        ; preds = %pg_probe.exit.i.if.else.i_crit_edge, %if.else.i.i.if.else.i_crit_edge, %for.inc.i.i.if.else.i_crit_edge
  %25 = load ptr, ptr getelementptr inbounds ([4 x %struct.pg], ptr @devices, i32 0, i32 0, i32 1), align 4
  tail call void @pi_release(ptr noundef %25) #10
  br label %if.end48.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.end.i43.for.body.i_crit_edge
  %dev.0102.i = phi ptr [ %incdec.ptr.i, %cleanup.i.for.body.i_crit_edge ], [ @devices, %if.end.i43.for.body.i_crit_edge ]
  %k.0101.i = phi i32 [ %k.2.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %if.end.i43.for.body.i_crit_edge ]
  %unit.0100.i = phi i32 [ %inc44.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %if.end.i43.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x ptr], ptr @drives, i32 0, i32 %unit.0100.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool21.not.i = icmp eq i32 %29, 0
  br i1 %tobool21.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.end23.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end23.i:                                       ; preds = %for.body.i
  %pi24.i = getelementptr inbounds %struct.pg, ptr %dev.0102.i, i32 0, i32 1
  %30 = ptrtoint ptr %pi24.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pi24.i, align 4
  %arrayidx26.i = getelementptr i32, ptr %27, i32 3
  %32 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx26.i, align 4
  %arrayidx27.i = getelementptr i32, ptr %27, i32 2
  %34 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx27.i, align 4
  %arrayidx28.i = getelementptr i32, ptr %27, i32 1
  %36 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx28.i, align 4
  %arrayidx29.i = getelementptr i32, ptr %27, i32 5
  %38 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx29.i, align 4
  %40 = load i32, ptr @verbose, align 4
  %name30.i = getelementptr inbounds %struct.pg, ptr %dev.0102.i, i32 0, i32 11
  %call32.i = tail call i32 @pi_init(ptr noundef %31, i32 noundef 0, i32 noundef %29, i32 noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %39, ptr noundef nonnull @pg_scratch, i32 noundef 4, i32 noundef %40, ptr noundef %name30.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.end23.i.cleanup.i_crit_edge, label %if.then34.i

if.end23.i.cleanup.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.then34.i:                                      ; preds = %if.end23.i
  %drive.i.i = getelementptr inbounds %struct.pg, ptr %dev.0102.i, i32 0, i32 7
  %41 = ptrtoint ptr %drive.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %drive.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %cmp.i76.i = icmp eq i32 %42, -1
  br i1 %cmp.i76.i, label %for.cond.preheader.i77.i, label %if.else.i86.i

for.cond.preheader.i77.i:                         ; preds = %if.then34.i
  %43 = ptrtoint ptr %drive.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %drive.i.i, align 4
  br label %for.body.i80.i

for.body.i80.i:                                   ; preds = %for.inc.i83.i.for.body.i80.i_crit_edge, %for.cond.preheader.i77.i
  %call.i78.i = tail call fastcc i32 @pg_reset(ptr noundef %dev.0102.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78.i)
  %tobool.not.i79.i = icmp eq i32 %call.i78.i, 0
  br i1 %tobool.not.i79.i, label %for.body.i80.i.pg_probe.exit90.i_crit_edge, label %for.inc.i83.i

for.body.i80.i.pg_probe.exit90.i_crit_edge:       ; preds = %for.body.i80.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pg_probe.exit90.i

for.inc.i83.i:                                    ; preds = %for.body.i80.i
  %44 = ptrtoint ptr %drive.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %drive.i.i, align 4
  %inc.i81.i = add i32 %45, 1
  store i32 %inc.i81.i, ptr %drive.i.i, align 4
  %cmp3.i82.i = icmp slt i32 %inc.i81.i, 2
  br i1 %cmp3.i82.i, label %for.inc.i83.i.for.body.i80.i_crit_edge, label %for.inc.i83.i.if.else40.i_crit_edge

for.inc.i83.i.if.else40.i_crit_edge:              ; preds = %for.inc.i83.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else40.i

for.inc.i83.i.for.body.i80.i_crit_edge:           ; preds = %for.inc.i83.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i80.i

if.else.i86.i:                                    ; preds = %if.then34.i
  %call7.i84.i = tail call fastcc i32 @pg_reset(ptr noundef %dev.0102.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i84.i)
  %tobool8.not.i85.i = icmp eq i32 %call7.i84.i, 0
  br i1 %tobool8.not.i85.i, label %if.else.i86.i.pg_probe.exit90.i_crit_edge, label %if.else.i86.i.if.else40.i_crit_edge

if.else.i86.i.if.else40.i_crit_edge:              ; preds = %if.else.i86.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else40.i

if.else.i86.i.pg_probe.exit90.i_crit_edge:        ; preds = %if.else.i86.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pg_probe.exit90.i

pg_probe.exit90.i:                                ; preds = %if.else.i86.i.pg_probe.exit90.i_crit_edge, %for.body.i80.i.pg_probe.exit90.i_crit_edge
  %call10.i87.i = tail call fastcc i32 @pg_identify(ptr noundef %dev.0102.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i87.i)
  %tobool36.not.i = icmp eq i32 %call10.i87.i, 0
  br i1 %tobool36.not.i, label %if.then37.i, label %pg_probe.exit90.i.if.else40.i_crit_edge

pg_probe.exit90.i.if.else40.i_crit_edge:          ; preds = %pg_probe.exit90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else40.i

if.then37.i:                                      ; preds = %pg_probe.exit90.i
  call void @__sanitizer_cov_trace_pc() #12
  %present38.i = getelementptr inbounds %struct.pg, ptr %dev.0102.i, i32 0, i32 9
  %46 = ptrtoint ptr %present38.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %present38.i, align 4
  %inc39.i = add i32 %k.0101.i, 1
  br label %cleanup.i

if.else40.i:                                      ; preds = %pg_probe.exit90.i.if.else40.i_crit_edge, %if.else.i86.i.if.else40.i_crit_edge, %for.inc.i83.i.if.else40.i_crit_edge
  %47 = ptrtoint ptr %pi24.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pi24.i, align 4
  tail call void @pi_release(ptr noundef %48) #10
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else40.i, %if.then37.i, %if.end23.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %k.2.i = phi i32 [ %k.0101.i, %for.body.i.cleanup.i_crit_edge ], [ %k.0101.i, %if.else40.i ], [ %inc39.i, %if.then37.i ], [ %k.0101.i, %if.end23.i.cleanup.i_crit_edge ]
  %inc44.i = add nuw nsw i32 %unit.0100.i, 1
  %incdec.ptr.i = getelementptr %struct.pg, ptr %dev.0102.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc44.i, 4
  br i1 %exitcond.not.i, label %if.end45.i, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end45.i:                                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %k.2.i)
  %tobool46.not.i = icmp eq i32 %k.2.i, 0
  br i1 %tobool46.not.i, label %if.end45.i.if.end48.i_crit_edge, label %if.end45.i.if.end3_crit_edge

if.end45.i.if.end3_crit_edge:                     ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.end45.i.if.end48.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.end45.i.if.end48.i_crit_edge, %if.else.i, %if.then7.i.if.end48.i_crit_edge
  %49 = load ptr, ptr @par_drv, align 4
  tail call void @pi_unregister_driver(ptr noundef %49) #10
  %50 = load ptr, ptr @name, align 4
  %call53.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %50) #13
  br label %out

if.end3:                                          ; preds = %if.end45.i.if.end3_crit_edge, %if.end45.thread97.i
  %51 = load i32, ptr @major, align 4
  %52 = load ptr, ptr @name, align 4
  %call.i44 = tail call i32 @__register_chrdev(i32 noundef %51, i32 noundef 0, i32 noundef 256, ptr noundef %52, ptr noundef nonnull @pg_fops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %cmp = icmp slt i32 %call.i44, 0
  br i1 %cmp, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end3
  %53 = load i32, ptr @major, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %53) #13
  br label %for.body

for.body:                                         ; preds = %if.end10.for.body_crit_edge, %do.end
  %unit.051 = phi i32 [ 0, %do.end ], [ %inc, %if.end10.for.body_crit_edge ]
  %present = getelementptr [4 x %struct.pg], ptr @devices, i32 0, i32 %unit.051, i32 9
  %54 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool8.not = icmp eq i32 %55, 0
  br i1 %tobool8.not, label %for.body.if.end10_crit_edge, label %if.then9

for.body.if.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %pi = getelementptr [4 x %struct.pg], ptr @devices, i32 0, i32 %unit.051, i32 1
  %56 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pi, align 4
  tail call void @pi_release(ptr noundef %57) #10
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %for.body.if.end10_crit_edge
  %inc = add nuw nsw i32 %unit.051, 1
  %exitcond54.not = icmp eq i32 %inc, 4
  br i1 %exitcond54.not, label %if.end10.out_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end11:                                         ; preds = %if.end3
  store i32 %call.i44, ptr @major, align 4
  %call13 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @pg_init.__key) #10
  store ptr %call13, ptr @pg_class, align 4
  %cmp.i45 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i45, label %if.then15, label %if.end11.for.body20_crit_edge

if.end11.for.body20_crit_edge:                    ; preds = %if.end11
  br label %for.body20

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %call13 to i32
  %59 = load i32, ptr @major, align 4
  tail call void @__unregister_chrdev(i32 noundef %59, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str) #10
  br label %out

for.body20:                                       ; preds = %if.end27.for.body20_crit_edge, %if.end11.for.body20_crit_edge
  %unit.149 = phi i32 [ %inc29, %if.end27.for.body20_crit_edge ], [ 0, %if.end11.for.body20_crit_edge ]
  %present23 = getelementptr [4 x %struct.pg], ptr @devices, i32 0, i32 %unit.149, i32 9
  %60 = ptrtoint ptr %present23 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %present23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool24.not = icmp eq i32 %61, 0
  br i1 %tobool24.not, label %for.body20.if.end27_crit_edge, label %if.then25

for.body20.if.end27_crit_edge:                    ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then25:                                        ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #12
  %62 = load ptr, ptr @pg_class, align 4
  %63 = load i32, ptr @major, align 4
  %shl = shl i32 %63, 20
  %or = or i32 %shl, %unit.149
  %call26 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %62, ptr noundef null, i32 noundef %or, ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef %unit.149) #10
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %for.body20.if.end27_crit_edge
  %inc29 = add nuw nsw i32 %unit.149, 1
  %exitcond.not = icmp eq i32 %inc29, 4
  br i1 %exitcond.not, label %if.end27.out_crit_edge, label %if.end27.for.body20_crit_edge

if.end27.for.body20_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body20

if.end27.out_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out:                                              ; preds = %if.end27.out_crit_edge, %if.then15, %if.end10.out_crit_edge, %if.end48.i, %do.end4.i
  %err.0 = phi i32 [ %58, %if.then15 ], [ -19, %do.end4.i ], [ -19, %if.end48.i ], [ %call.i44, %if.end10.out_crit_edge ], [ 0, %if.end27.out_crit_edge ]
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
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pi_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pi_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pi_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pg_reset(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  %got = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %got) #10
  %0 = getelementptr inbounds [5 x i32], ptr %got, i32 0, i32 1
  %1 = getelementptr inbounds [5 x i32], ptr %got, i32 0, i32 2
  %2 = getelementptr inbounds [5 x i32], ptr %got, i32 0, i32 3
  %3 = getelementptr inbounds [5 x i32], ptr %got, i32 0, i32 4
  %pi = getelementptr inbounds %struct.pg, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pi, align 4
  tail call void @pi_connect(ptr noundef %5) #10
  %drive.i = getelementptr inbounds %struct.pg, ptr %dev, i32 0, i32 7
  %6 = ptrtoint ptr %drive.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %drive.i, align 4
  %8 = shl i32 %7, 4
  %conv.i = add i32 %8, 160
  %conv = and i32 %conv.i, 240
  %9 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pi, align 4
  tail call void @pi_write_regr(ptr noundef %10, i32 noundef 0, i32 noundef 6, i32 noundef %conv) #10
  %11 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pi, align 4
  tail call void @pi_write_regr(ptr noundef %12, i32 noundef 0, i32 noundef 7, i32 noundef 8) #10
  %call.i = tail call i32 @schedule_timeout_interruptible(i32 noundef 2) #10
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %entry
  %inc61 = phi i32 [ 1, %entry ], [ %inc, %while.body.land.rhs_crit_edge ]
  %13 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pi, align 4
  %call.i57 = tail call i32 @pi_read_regr(ptr noundef %14, i32 noundef 1, i32 noundef 6) #10
  %and = and i32 %call.i57, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %call.i58 = tail call i32 @schedule_timeout_interruptible(i32 noundef 1) #10
  %inc = add nuw nsw i32 %inc61, 1
  %exitcond.not = icmp eq i32 %inc, 1001
  br i1 %exitcond.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %inc.lcssa = phi i32 [ 1001, %while.body.while.end_crit_edge ], [ %inc61, %land.rhs.while.end_crit_edge ]
  %15 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pi, align 4
  %call.i60 = tail call i32 @pi_read_regr(ptr noundef %16, i32 noundef 0, i32 noundef 1) #10
  %17 = ptrtoint ptr %got to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call.i60, ptr %got, align 4
  %18 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pi, align 4
  %call.i60.1 = tail call i32 @pi_read_regr(ptr noundef %19, i32 noundef 0, i32 noundef 2) #10
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call.i60.1, ptr %0, align 4
  %21 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pi, align 4
  %call.i60.2 = tail call i32 @pi_read_regr(ptr noundef %22, i32 noundef 0, i32 noundef 3) #10
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call.i60.2, ptr %1, align 4
  %24 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pi, align 4
  %call.i60.3 = tail call i32 @pi_read_regr(ptr noundef %25, i32 noundef 0, i32 noundef 4) #10
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call.i60.3, ptr %2, align 4
  %27 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pi, align 4
  %call.i60.4 = tail call i32 @pi_read_regr(ptr noundef %28, i32 noundef 0, i32 noundef 5) #10
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call.i60.4, ptr %3, align 4
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(20) @__const.pg_reset.expect, ptr noundef nonnull dereferenceable(20) %got, i32 20) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool9.not = icmp eq i32 %bcmp, 0
  %30 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool10.not = icmp eq i32 %30, 0
  br i1 %tobool10.not, label %while.end.if.end38_crit_edge, label %do.end

while.end.if.end38_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

do.end:                                           ; preds = %while.end
  %name = getelementptr inbounds %struct.pg, ptr %dev, i32 0, i32 11
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name, i32 noundef %inc.lcssa) #13
  %31 = ptrtoint ptr %got to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %got, align 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %32) #13
  %33 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %0, align 4
  %call22.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %34) #13
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %1, align 4
  %call22.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %36) #13
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %2, align 4
  %call22.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %38) #13
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %3, align 4
  %call22.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %40) #13
  br i1 %tobool9.not, label %do.end.do.end35_crit_edge, label %do.end30

do.end.do.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end35

do.end30:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #13
  br label %do.end35

do.end35:                                         ; preds = %do.end30, %do.end.do.end35_crit_edge
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #13
  br label %if.end38

if.end38:                                         ; preds = %do.end35, %while.end.if.end38_crit_edge
  %not.tobool9.not = xor i1 %tobool9.not, true
  %cond = sext i1 %not.tobool9.not to i32
  %41 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pi, align 4
  tail call void @pi_disconnect(ptr noundef %42) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %got) #10
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pg_identify(ptr noundef %dev, i32 noundef %log) unnamed_addr #5 align 64 {
entry:
  %mf = alloca [10 x i8], align 1
  %id = alloca [18 x i8], align 1
  %id_cmd = alloca [12 x i8], align 1
  %buf = alloca [36 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %mf) #10
  %0 = getelementptr inbounds [10 x i8], ptr %mf, i32 0, i32 1
  %1 = call ptr @memset(ptr %mf, i32 255, i32 10)
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %id) #10
  %2 = getelementptr inbounds [18 x i8], ptr %id, i32 0, i32 1
  %3 = call ptr @memset(ptr %id, i32 255, i32 18)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %id_cmd) #10
  %4 = call ptr @memcpy(ptr %id_cmd, ptr @__const.pg_identify.id_cmd, i32 12)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %buf) #10
  %5 = call ptr @memset(ptr %buf, i32 255, i32 36)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %6, 100
  %call = call fastcc i32 @pg_command(ptr noundef %dev, ptr noundef nonnull %id_cmd, i32 noundef 36, i32 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %add2 = add i32 %7, 100
  %call3 = call fastcc i32 @pg_completion(ptr noundef %dev, ptr noundef nonnull %buf, i32 noundef %add2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %log)
  %tobool7.not = icmp eq i32 %log, 0
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.then8

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8:                                         ; preds = %if.end6
  %add.ptr = getelementptr inbounds i8, ptr %buf, i32 8
  %incdec.ptr.i = getelementptr inbounds i8, ptr %buf, i32 9
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %add.ptr, align 1
  %10 = and i8 %9, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %if.then8.if.end.i_crit_edge, label %if.then.i

if.then8.if.end.i_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %mf to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %9, ptr %mf, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then8.if.end.i_crit_edge
  %targ.addr.1.i = phi ptr [ %0, %if.then.i ], [ %mf, %if.then8.if.end.i_crit_edge ]
  %l.1.i = phi i8 [ %9, %if.then.i ], [ 0, %if.then8.if.end.i_crit_edge ]
  %incdec.ptr.i.1 = getelementptr inbounds i8, ptr %buf, i32 10
  %13 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %incdec.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %14)
  %cmp1.not.i.1 = icmp eq i8 %14, 32
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %l.1.i)
  %cmp5.not.i.1 = icmp eq i8 %14, %l.1.i
  %or.cond.i.1 = select i1 %cmp1.not.i.1, i1 true, i1 %cmp5.not.i.1
  br i1 %or.cond.i.1, label %if.end.i.if.end.i.1_crit_edge, label %if.then.i.1

if.end.i.if.end.i.1_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.1

if.then.i.1:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr7.i.1 = getelementptr i8, ptr %targ.addr.1.i, i32 1
  %15 = ptrtoint ptr %targ.addr.1.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %targ.addr.1.i, align 1
  br label %if.end.i.1

if.end.i.1:                                       ; preds = %if.then.i.1, %if.end.i.if.end.i.1_crit_edge
  %targ.addr.1.i.1 = phi ptr [ %incdec.ptr7.i.1, %if.then.i.1 ], [ %targ.addr.1.i, %if.end.i.if.end.i.1_crit_edge ]
  %l.1.i.1 = phi i8 [ %14, %if.then.i.1 ], [ %l.1.i, %if.end.i.if.end.i.1_crit_edge ]
  %incdec.ptr.i.2 = getelementptr inbounds i8, ptr %buf, i32 11
  %16 = ptrtoint ptr %incdec.ptr.i.1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %incdec.ptr.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %17)
  %cmp1.not.i.2 = icmp eq i8 %17, 32
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %l.1.i.1)
  %cmp5.not.i.2 = icmp eq i8 %17, %l.1.i.1
  %or.cond.i.2 = select i1 %cmp1.not.i.2, i1 true, i1 %cmp5.not.i.2
  br i1 %or.cond.i.2, label %if.end.i.1.if.end.i.2_crit_edge, label %if.then.i.2

if.end.i.1.if.end.i.2_crit_edge:                  ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.2

if.then.i.2:                                      ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr7.i.2 = getelementptr i8, ptr %targ.addr.1.i.1, i32 1
  %18 = ptrtoint ptr %targ.addr.1.i.1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %targ.addr.1.i.1, align 1
  br label %if.end.i.2

if.end.i.2:                                       ; preds = %if.then.i.2, %if.end.i.1.if.end.i.2_crit_edge
  %targ.addr.1.i.2 = phi ptr [ %incdec.ptr7.i.2, %if.then.i.2 ], [ %targ.addr.1.i.1, %if.end.i.1.if.end.i.2_crit_edge ]
  %l.1.i.2 = phi i8 [ %17, %if.then.i.2 ], [ %l.1.i.1, %if.end.i.1.if.end.i.2_crit_edge ]
  %incdec.ptr.i.3 = getelementptr inbounds i8, ptr %buf, i32 12
  %19 = ptrtoint ptr %incdec.ptr.i.2 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %incdec.ptr.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %20)
  %cmp1.not.i.3 = icmp eq i8 %20, 32
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %l.1.i.2)
  %cmp5.not.i.3 = icmp eq i8 %20, %l.1.i.2
  %or.cond.i.3 = select i1 %cmp1.not.i.3, i1 true, i1 %cmp5.not.i.3
  br i1 %or.cond.i.3, label %if.end.i.2.if.end.i.3_crit_edge, label %if.then.i.3

if.end.i.2.if.end.i.3_crit_edge:                  ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.3

if.then.i.3:                                      ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr7.i.3 = getelementptr i8, ptr %targ.addr.1.i.2, i32 1
  %21 = ptrtoint ptr %targ.addr.1.i.2 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %targ.addr.1.i.2, align 1
  br label %if.end.i.3

if.end.i.3:                                       ; preds = %if.then.i.3, %if.end.i.2.if.end.i.3_crit_edge
  %targ.addr.1.i.3 = phi ptr [ %incdec.ptr7.i.3, %if.then.i.3 ], [ %targ.addr.1.i.2, %if.end.i.2.if.end.i.3_crit_edge ]
  %l.1.i.3 = phi i8 [ %20, %if.then.i.3 ], [ %l.1.i.2, %if.end.i.2.if.end.i.3_crit_edge ]
  %incdec.ptr.i.4 = getelementptr inbounds i8, ptr %buf, i32 13
  %22 = ptrtoint ptr %incdec.ptr.i.3 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %incdec.ptr.i.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %23)
  %cmp1.not.i.4 = icmp eq i8 %23, 32
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %l.1.i.3)
  %cmp5.not.i.4 = icmp eq i8 %23, %l.1.i.3
  %or.cond.i.4 = select i1 %cmp1.not.i.4, i1 true, i1 %cmp5.not.i.4
  br i1 %or.cond.i.4, label %if.end.i.3.if.end.i.4_crit_edge, label %if.then.i.4

if.end.i.3.if.end.i.4_crit_edge:                  ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.4

if.then.i.4:                                      ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr7.i.4 = getelementptr i8, ptr %targ.addr.1.i.3, i32 1
  %24 = ptrtoint ptr %targ.addr.1.i.3 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %targ.addr.1.i.3, align 1
  br label %if.end.i.4

if.end.i.4:                                       ; preds = %if.then.i.4, %if.end.i.3.if.end.i.4_crit_edge
  %targ.addr.1.i.4 = phi ptr [ %incdec.ptr7.i.4, %if.then.i.4 ], [ %targ.addr.1.i.3, %if.end.i.3.if.end.i.4_crit_edge ]
  %l.1.i.4 = phi i8 [ %23, %if.then.i.4 ], [ %l.1.i.3, %if.end.i.3.if.end.i.4_crit_edge ]
  %incdec.ptr.i.5 = getelementptr inbounds i8, ptr %buf, i32 14
  %25 = ptrtoint ptr %incdec.ptr.i.4 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %incdec.ptr.i.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %26)
  %cmp1.not.i.5 = icmp eq i8 %26, 32
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %l.1.i.4)
  %cmp5.not.i.5 = icmp eq i8 %26, %l.1.i.4
  %or.cond.i.5 = select i1 %cmp1.not.i.5, i1 true, i1 %cmp5.not.i.5
  br i1 %or.cond.i.5, label %if.end.i.4.if.end.i.5_crit_edge, label %if.then.i.5

if.end.i.4.if.end.i.5_crit_edge:                  ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.5

if.then.i.5:                                      ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr7.i.5 = getelementptr i8, ptr %targ.addr.1.i.4, i32 1
  %27 = ptrtoint ptr %targ.addr.1.i.4 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %targ.addr.1.i.4, align 1
  br label %if.end.i.5

if.end.i.5:                                       ; preds = %if.then.i.5, %if.end.i.4.if.end.i.5_crit_edge
  %targ.addr.1.i.5 = phi ptr [ %incdec.ptr7.i.5, %if.then.i.5 ], [ %targ.addr.1.i.4, %if.end.i.4.if.end.i.5_crit_edge ]
  %l.1.i.5 = phi i8 [ %26, %if.then.i.5 ], [ %l.1.i.4, %if.end.i.4.if.end.i.5_crit_edge ]
  %incdec.ptr.i.6 = getelementptr inbounds i8, ptr %buf, i32 15
  %28 = ptrtoint ptr %incdec.ptr.i.5 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %incdec.ptr.i.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %29)
  %cmp1.not.i.6 = icmp eq i8 %29, 32
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %l.1.i.5)
  %cmp5.not.i.6 = icmp eq i8 %29, %l.1.i.5
  %or.cond.i.6 = select i1 %cmp1.not.i.6, i1 true, i1 %cmp5.not.i.6
  br i1 %or.cond.i.6, label %if.end.i.5.if.end.i.6_crit_edge, label %if.then.i.6

if.end.i.5.if.end.i.6_crit_edge:                  ; preds = %if.end.i.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.6

if.then.i.6:                                      ; preds = %if.end.i.5
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr7.i.6 = getelementptr i8, ptr %targ.addr.1.i.5, i32 1
  %30 = ptrtoint ptr %targ.addr.1.i.5 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %targ.addr.1.i.5, align 1
  br label %if.end.i.6

if.end.i.6:                                       ; preds = %if.then.i.6, %if.end.i.5.if.end.i.6_crit_edge
  %targ.addr.1.i.6 = phi ptr [ %incdec.ptr7.i.6, %if.then.i.6 ], [ %targ.addr.1.i.5, %if.end.i.5.if.end.i.6_crit_edge ]
  %l.1.i.6 = phi i8 [ %29, %if.then.i.6 ], [ %l.1.i.5, %if.end.i.5.if.end.i.6_crit_edge ]
  %31 = ptrtoint ptr %incdec.ptr.i.6 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %incdec.ptr.i.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %32)
  %cmp1.not.i.7 = icmp eq i8 %32, 32
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %l.1.i.6)
  %cmp5.not.i.7 = icmp eq i8 %32, %l.1.i.6
  %or.cond.i.7 = select i1 %cmp1.not.i.7, i1 true, i1 %cmp5.not.i.7
  br i1 %or.cond.i.7, label %if.end.i.6.if.end.i.7_crit_edge, label %if.then.i.7

if.end.i.6.if.end.i.7_crit_edge:                  ; preds = %if.end.i.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.7

if.then.i.7:                                      ; preds = %if.end.i.6
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr7.i.7 = getelementptr i8, ptr %targ.addr.1.i.6, i32 1
  %33 = ptrtoint ptr %targ.addr.1.i.6 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %targ.addr.1.i.6, align 1
  br label %if.end.i.7

if.end.i.7:                                       ; preds = %if.then.i.7, %if.end.i.6.if.end.i.7_crit_edge
  %targ.addr.1.i.7 = phi ptr [ %incdec.ptr7.i.7, %if.then.i.7 ], [ %targ.addr.1.i.6, %if.end.i.6.if.end.i.7_crit_edge ]
  %l.1.i.7 = phi i8 [ %32, %if.then.i.7 ], [ %l.1.i.6, %if.end.i.6.if.end.i.7_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %l.1.i.7)
  %cmp9.i = icmp eq i8 %l.1.i.7, 32
  %spec.select.idx.i = sext i1 %cmp9.i to i32
  %spec.select.i = getelementptr i8, ptr %targ.addr.1.i.7, i32 %spec.select.idx.i
  %34 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %spec.select.i, align 1
  %add.ptr12 = getelementptr inbounds i8, ptr %buf, i32 16
  %incdec.ptr.i32 = getelementptr inbounds i8, ptr %buf, i32 17
  %35 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %add.ptr12, align 1
  %37 = and i8 %36, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %if.end.i.7.if.end.i43_crit_edge, label %if.then.i38

if.end.i.7.if.end.i43_crit_edge:                  ; preds = %if.end.i.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i43

if.then.i38:                                      ; preds = %if.end.i.7
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %36, ptr %id, align 1
  br label %if.end.i43

if.end.i43:                                       ; preds = %if.then.i38, %if.end.i.7.if.end.i43_crit_edge
  %targ.addr.1.i39 = phi ptr [ %2, %if.then.i38 ], [ %id, %if.end.i.7.if.end.i43_crit_edge ]
  %l.1.i40 = phi i8 [ %36, %if.then.i38 ], [ 0, %if.end.i.7.if.end.i43_crit_edge ]
  %incdec.ptr.i32.1 = getelementptr inbounds i8, ptr %buf, i32 18
  %40 = ptrtoint ptr %incdec.ptr.i32 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %incdec.ptr.i32, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %41)
  %cmp1.not.i33.1 = icmp eq i8 %41, 32
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %l.1.i40)
  %cmp5.not.i34.1 = icmp eq i8 %41, %l.1.i40
  %or.cond.i35.1 = select i1 %cmp1.not.i33.1, i1 true, i1 %cmp5.not.i34.1
  br i1 %or.cond.i35.1, label %if.end.i43.if.end.i43.1_crit_edge, label %if.then.i38.1

if.end.i43.if.end.i43.1_crit_edge:                ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i43.1

if.then.i38.1:                                    ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr7.i37.1 = getelementptr i8, ptr %targ.addr.1.i39, i32 1
  %42 = ptrtoint ptr %targ.addr.1.i39 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %targ.addr.1.i39, align 1
  br label %if.end.i43.1

if.end.i43.1:                                     ; preds = %if.then.i38.1, %if.end.i43.if.end.i43.1_crit_edge
  %targ.addr.1.i39.1 = phi ptr [ %incdec.ptr7.i37.1, %if.then.i38.1 ], [ %targ.addr.1.i39, %if.end.i43.if.end.i43.1_crit_edge ]
  %l.1.i40.1 = phi i8 [ %41, %if.then.i38.1 ], [ %l.1.i40, %if.end.i43.if.end.i43.1_crit_edge ]
  %incdec.ptr.i32.2 = getelementptr inbounds i8, ptr %buf, i32 19
  %43 = ptrtoint ptr %incdec.ptr.i32.1 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %incdec.ptr.i32.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %44)
  %cmp1.not.i33.2 = icmp eq i8 %44, 32
  call void @__sanitizer_cov_trace_cmp1(i8 %44, i8 %l.1.i40.1)
  %cmp5.not.i34.2 = icmp eq i8 %44, %l.1.i40.1
  %or.cond.i35.2 = select i1 %cmp1.not.i33.2, i1 true, i1 %cmp5.not.i34.2
  br i1 %or.cond.i35.2, label %if.end.i43.1.if.end.i43.2_crit_edge, label %if.then.i38.2

if.end.i43.1.if.end.i43.2_crit_edge:              ; preds = %if.end.i43.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i43.2

if.then.i38.2:                                    ; preds = %if.end.i43.1
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr7.i37.2 = getelementptr i8, ptr %targ.addr.1.i39.1, i32 1
  %45 = ptrtoint ptr %targ.addr.1.i39.1 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %targ.addr.1.i39.1, align 1
  br label %if.end.i43.2

if.end.i43.2:                                     ; preds = %if.then.i38.2, %if.end.i43.1.if.end.i43.2_crit_edge
  %targ.addr.1.i39.2 = phi ptr [ %incdec.ptr7.i37.2, %if.then.i38.2 ], [ %targ.addr.1.i39.1, %if.end.i43.1.if.end.i43.2_crit_edge ]
  %l.1.i40.2 = phi i8 [ %44, %if.then.i38.2 ], [ %l.1.i40.1, %if.end.i43.1.if.end.i43.2_crit_edge ]
  %incdec.ptr.i32.3 = getelementptr inbounds i8, ptr %buf, i32 20
  %46 = ptrtoint ptr %incdec.ptr.i32.2 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %incdec.ptr.i32.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %47)
  %cmp1.not.i33.3 = icmp eq i8 %47, 32
  call void @__sanitizer_cov_trace_cmp1(i8 %47, i8 %l.1.i40.2)
  %cmp5.not.i34.3 = icmp eq i8 %47, %l.1.i40.2
  %or.cond.i35.3 = select i1 %cmp1.not.i33.3, i1 true, i1 %cmp5.not.i34.3
  br i1 %or.cond.i35.3, label %if.end.i43.2.if.end.i43.3_crit_edge, label %if.then.i38.3

if.end.i43.2.if.end.i43.3_crit_edge:              ; preds = %if.end.i43.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i43.3

if.then.i38.3:                                    ; preds = %if.end.i43.2
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr7.i37.3 = getelementptr i8, ptr %targ.addr.1.i39.2, i32 1
  %48 = ptrtoint ptr %targ.addr.1.i39.2 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %targ.addr.1.i39.2, align 1
  br label %if.end.i43.3

if.end.i43.3:                                     ; preds = %if.then.i38.3, %if.end.i43.2.if.end.i43.3_crit_edge
  %targ.addr.1.i39.3 = phi ptr [ %incdec.ptr7.i37.3, %if.then.i38.3 ], [ %targ.addr.1.i39.2, %if.end.i43.2.if.end.i43.3_crit_edge ]
  %l.1.i40.3 = phi i8 [ %47, %if.then.i38.3 ], [ %l.1.i40.2, %if.end.i43.2.if.end.i43.3_crit_edge ]
  %incdec.ptr.i32.4 = getelementptr inbounds i8, ptr %buf, i32 21
  %49 = ptrtoint ptr %incdec.ptr.i32.3 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %incdec.ptr.i32.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %50)
  %cmp1.not.i33.4 = icmp eq i8 %50, 32
  call void @__sanitizer_cov_trace_cmp1(i8 %50, i8 %l.1.i40.3)
  %cmp5.not.i34.4 = icmp eq i8 %50, %l.1.i40.3
  %or.cond.i35.4 = select i1 %cmp1.not.i33.4, i1 true, i1 %cmp5.not.i34.4
  br i1 %or.cond.i35.4, label %if.end.i43.3.if.end.i43.4_crit_edge, label %if.then.i38.4

if.end.i43.3.if.end.i43.4_crit_edge:              ; preds = %if.end.i43.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i43.4

if.then.i38.4:                                    ; preds = %if.end.i43.3
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr7.i37.4 = getelementptr i8, ptr %targ.addr.1.i39.3, i32 1
  %51 = ptrtoint ptr %targ.addr.1.i39.3 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %targ.addr.1.i39.3, align 1
  br label %if.end.i43.4

if.end.i43.4:                                     ; preds = %if.then.i38.4, %if.end.i43.3.if.end.i43.4_crit_edge
  %targ.addr.1.i39.4 = phi ptr [ %incdec.ptr7.i37.4, %if.then.i38.4 ], [ %targ.addr.1.i39.3, %if.end.i43.3.if.end.i43.4_crit_edge ]
  %l.1.i40.4 = phi i8 [ %50, %if.then.i38.4 ], [ %l.1.i40.3, %if.end.i43.3.if.end.i43.4_crit_edge ]
  %incdec.ptr.i32.5 = getelementptr inbounds i8, ptr %buf, i32 22
  %52 = ptrtoint ptr %incdec.ptr.i32.4 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %incdec.ptr.i32.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %53)
  %cmp1.not.i33.5 = icmp eq i8 %53, 32
  call void @__sanitizer_cov_trace_cmp1(i8 %53, i8 %l.1.i40.4)
  %cmp5.not.i34.5 = icmp eq i8 %53, %l.1.i40.4
  %or.cond.i35.5 = select i1 %cmp1.not.i33.5, i1 true, i1 %cmp5.not.i34.5
  br i1 %or.cond.i35.5, label %if.end.i43.4.if.end.i43.5_crit_edge, label %if.then.i38.5

if.end.i43.4.if.end.i43.5_crit_edge:              ; preds = %if.end.i43.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i43.5

if.then.i38.5:                                    ; preds = %if.end.i43.4
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr7.i37.5 = getelementptr i8, ptr %targ.addr.1.i39.4, i32 1
  %54 = ptrtoint ptr %targ.addr.1.i39.4 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %targ.addr.1.i39.4, align 1
  br label %if.end.i43.5

if.end.i43.5:                                     ; preds = %if.then.i38.5, %if.end.i43.4.if.end.i43.5_crit_edge
  %targ.addr.1.i39.5 = phi ptr [ %incdec.ptr7.i37.5, %if.then.i38.5 ], [ %targ.addr.1.i39.4, %if.end.i43.4.if.end.i43.5_crit_edge ]
  %l.1.i40.5 = phi i8 [ %53, %if.then.i38.5 ], [ %l.1.i40.4, %if.end.i43.4.if.end.i43.5_crit_edge ]
  %incdec.ptr.i32.6 = getelementptr inbounds i8, ptr %buf, i32 23
  %55 = ptrtoint ptr %incdec.ptr.i32.5 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %incdec.ptr.i32.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %56)
  %cmp1.not.i33.6 = icmp eq i8 %56, 32
  call void @__sanitizer_cov_trace_cmp1(i8 %56, i8 %l.1.i40.5)
  %cmp5.not.i34.6 = icmp eq i8 %56, %l.1.i40.5
  %or.cond.i35.6 = select i1 %cmp1.not.i33.6, i1 true, i1 %cmp5.not.i34.6
  br i1 %or.cond.i35.6, label %if.end.i43.5.if.end.i43.6_crit_edge, label %if.then.i38.6

if.end.i43.5.if.end.i43.6_crit_edge:              ; preds = %if.end.i43.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i43.6

if.then.i38.6:                                    ; preds = %if.end.i43.5
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr7.i37.6 = getelementptr i8, ptr %targ.addr.1.i39.5, i32 1
  %57 = ptrtoint ptr %targ.addr.1.i39.5 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %targ.addr.1.i39.5, align 1
  br label %if.end.i43.6

if.end.i43.6:                                     ; preds = %if.then.i38.6, %if.end.i43.5.if.end.i43.6_crit_edge
  %targ.addr.1.i39.6 = phi ptr [ %incdec.ptr7.i37.6, %if.then.i38.6 ], [ %targ.addr.1.i39.5, %if.end.i43.5.if.end.i43.6_crit_edge ]
  %l.1.i40.6 = phi i8 [ %56, %if.then.i38.6 ], [ %l.1.i40.5, %if.end.i43.5.if.end.i43.6_crit_edge ]
  %incdec.ptr.i32.7 = getelementptr inbounds i8, ptr %buf, i32 24
  %58 = ptrtoint ptr %incdec.ptr.i32.6 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %incdec.ptr.i32.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %59)
  %cmp1.not.i33.7 = icmp eq i8 %59, 32
  call void @__sanitizer_cov_trace_cmp1(i8 %59, i8 %l.1.i40.6)
  %cmp5.not.i34.7 = icmp eq i8 %59, %l.1.i40.6
  %or.cond.i35.7 = select i1 %cmp1.not.i33.7, i1 true, i1 %cmp5.not.i34.7
  br i1 %or.cond.i35.7, label %if.end.i43.6.if.end.i43.7_crit_edge, label %if.then.i38.7

if.end.i43.6.if.end.i43.7_crit_edge:              ; preds = %if.end.i43.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i43.7

if.then.i38.7:                                    ; preds = %if.end.i43.6
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr7.i37.7 = getelementptr i8, ptr %targ.addr.1.i39.6, i32 1
  %60 = ptrtoint ptr %targ.addr.1.i39.6 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %targ.addr.1.i39.6, align 1
  br label %if.end.i43.7

if.end.i43.7:                                     ; preds = %if.then.i38.7, %if.end.i43.6.if.end.i43.7_crit_edge
  %targ.addr.1.i39.7 = phi ptr [ %incdec.ptr7.i37.7, %if.then.i38.7 ], [ %targ.addr.1.i39.6, %if.end.i43.6.if.end.i43.7_crit_edge ]
  %l.1.i40.7 = phi i8 [ %59, %if.then.i38.7 ], [ %l.1.i40.6, %if.end.i43.6.if.end.i43.7_crit_edge ]
  %incdec.ptr.i32.8 = getelementptr inbounds i8, ptr %buf, i32 25
  %61 = ptrtoint ptr %incdec.ptr.i32.7 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %incdec.ptr.i32.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %62)
  %cmp1.not.i33.8 = icmp eq i8 %62, 32
  call void @__sanitizer_cov_trace_cmp1(i8 %62, i8 %l.1.i40.7)
  %cmp5.not.i34.8 = icmp eq i8 %62, %l.1.i40.7
  %or.cond.i35.8 = select i1 %cmp1.not.i33.8, i1 true, i1 %cmp5.not.i34.8
  br i1 %or.cond.i35.8, label %if.end.i43.7.if.end.i43.8_crit_edge, label %if.then.i38.8

if.end.i43.7.if.end.i43.8_crit_edge:              ; preds = %if.end.i43.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i43.8

if.then.i38.8:                                    ; preds = %if.end.i43.7
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr7.i37.8 = getelementptr i8, ptr %targ.addr.1.i39.7, i32 1
  %63 = ptrtoint ptr %targ.addr.1.i39.7 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %targ.addr.1.i39.7, align 1
  br label %if.end.i43.8

if.end.i43.8:                                     ; preds = %if.then.i38.8, %if.end.i43.7.if.end.i43.8_crit_edge
  %targ.addr.1.i39.8 = phi ptr [ %incdec.ptr7.i37.8, %if.then.i38.8 ], [ %targ.addr.1.i39.7, %if.end.i43.7.if.end.i43.8_crit_edge ]
  %l.1.i40.8 = phi i8 [ %62, %if.then.i38.8 ], [ %l.1.i40.7, %if.end.i43.7.if.end.i43.8_crit_edge ]
  %incdec.ptr.i32.9 = getelementptr inbounds i8, ptr %buf, i32 26
  %64 = ptrtoint ptr %incdec.ptr.i32.8 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %incdec.ptr.i32.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %65)
  %cmp1.not.i33.9 = icmp eq i8 %65, 32
  call void @__sanitizer_cov_trace_cmp1(i8 %65, i8 %l.1.i40.8)
  %cmp5.not.i34.9 = icmp eq i8 %65, %l.1.i40.8
  %or.cond.i35.9 = select i1 %cmp1.not.i33.9, i1 true, i1 %cmp5.not.i34.9
  br i1 %or.cond.i35.9, label %if.end.i43.8.if.end.i43.9_crit_edge, label %if.then.i38.9

if.end.i43.8.if.end.i43.9_crit_edge:              ; preds = %if.end.i43.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i43.9

if.then.i38.9:                                    ; preds = %if.end.i43.8
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr7.i37.9 = getelementptr i8, ptr %targ.addr.1.i39.8, i32 1
  %66 = ptrtoint ptr %targ.addr.1.i39.8 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %targ.addr.1.i39.8, align 1
  br label %if.end.i43.9

if.end.i43.9:                                     ; preds = %if.then.i38.9, %if.end.i43.8.if.end.i43.9_crit_edge
  %targ.addr.1.i39.9 = phi ptr [ %incdec.ptr7.i37.9, %if.then.i38.9 ], [ %targ.addr.1.i39.8, %if.end.i43.8.if.end.i43.9_crit_edge ]
  %l.1.i40.9 = phi i8 [ %65, %if.then.i38.9 ], [ %l.1.i40.8, %if.end.i43.8.if.end.i43.9_crit_edge ]
  %incdec.ptr.i32.10 = getelementptr inbounds i8, ptr %buf, i32 27
  %67 = ptrtoint ptr %incdec.ptr.i32.9 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %incdec.ptr.i32.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %68)
  %cmp1.not.i33.10 = icmp eq i8 %68, 32
  call void @__sanitizer_cov_trace_cmp1(i8 %68, i8 %l.1.i40.9)
  %cmp5.not.i34.10 = icmp eq i8 %68, %l.1.i40.9
  %or.cond.i35.10 = select i1 %cmp1.not.i33.10, i1 true, i1 %cmp5.not.i34.10
  br i1 %or.cond.i35.10, label %if.end.i43.9.if.end.i43.10_crit_edge, label %if.then.i38.10

if.end.i43.9.if.end.i43.10_crit_edge:             ; preds = %if.end.i43.9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i43.10

if.then.i38.10:                                   ; preds = %if.end.i43.9
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr7.i37.10 = getelementptr i8, ptr %targ.addr.1.i39.9, i32 1
  %69 = ptrtoint ptr %targ.addr.1.i39.9 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %targ.addr.1.i39.9, align 1
  br label %if.end.i43.10

if.end.i43.10:                                    ; preds = %if.then.i38.10, %if.end.i43.9.if.end.i43.10_crit_edge
  %targ.addr.1.i39.10 = phi ptr [ %incdec.ptr7.i37.10, %if.then.i38.10 ], [ %targ.addr.1.i39.9, %if.end.i43.9.if.end.i43.10_crit_edge ]
  %l.1.i40.10 = phi i8 [ %68, %if.then.i38.10 ], [ %l.1.i40.9, %if.end.i43.9.if.end.i43.10_crit_edge ]
  %incdec.ptr.i32.11 = getelementptr inbounds i8, ptr %buf, i32 28
  %70 = ptrtoint ptr %incdec.ptr.i32.10 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %incdec.ptr.i32.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %71)
  %cmp1.not.i33.11 = icmp eq i8 %71, 32
  call void @__sanitizer_cov_trace_cmp1(i8 %71, i8 %l.1.i40.10)
  %cmp5.not.i34.11 = icmp eq i8 %71, %l.1.i40.10
  %or.cond.i35.11 = select i1 %cmp1.not.i33.11, i1 true, i1 %cmp5.not.i34.11
  br i1 %or.cond.i35.11, label %if.end.i43.10.if.end.i43.11_crit_edge, label %if.then.i38.11

if.end.i43.10.if.end.i43.11_crit_edge:            ; preds = %if.end.i43.10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i43.11

if.then.i38.11:                                   ; preds = %if.end.i43.10
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr7.i37.11 = getelementptr i8, ptr %targ.addr.1.i39.10, i32 1
  %72 = ptrtoint ptr %targ.addr.1.i39.10 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %targ.addr.1.i39.10, align 1
  br label %if.end.i43.11

if.end.i43.11:                                    ; preds = %if.then.i38.11, %if.end.i43.10.if.end.i43.11_crit_edge
  %targ.addr.1.i39.11 = phi ptr [ %incdec.ptr7.i37.11, %if.then.i38.11 ], [ %targ.addr.1.i39.10, %if.end.i43.10.if.end.i43.11_crit_edge ]
  %l.1.i40.11 = phi i8 [ %71, %if.then.i38.11 ], [ %l.1.i40.10, %if.end.i43.10.if.end.i43.11_crit_edge ]
  %incdec.ptr.i32.12 = getelementptr inbounds i8, ptr %buf, i32 29
  %73 = ptrtoint ptr %incdec.ptr.i32.11 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %incdec.ptr.i32.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %74)
  %cmp1.not.i33.12 = icmp eq i8 %74, 32
  call void @__sanitizer_cov_trace_cmp1(i8 %74, i8 %l.1.i40.11)
  %cmp5.not.i34.12 = icmp eq i8 %74, %l.1.i40.11
  %or.cond.i35.12 = select i1 %cmp1.not.i33.12, i1 true, i1 %cmp5.not.i34.12
  br i1 %or.cond.i35.12, label %if.end.i43.11.if.end.i43.12_crit_edge, label %if.then.i38.12

if.end.i43.11.if.end.i43.12_crit_edge:            ; preds = %if.end.i43.11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i43.12

if.then.i38.12:                                   ; preds = %if.end.i43.11
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr7.i37.12 = getelementptr i8, ptr %targ.addr.1.i39.11, i32 1
  %75 = ptrtoint ptr %targ.addr.1.i39.11 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %targ.addr.1.i39.11, align 1
  br label %if.end.i43.12

if.end.i43.12:                                    ; preds = %if.then.i38.12, %if.end.i43.11.if.end.i43.12_crit_edge
  %targ.addr.1.i39.12 = phi ptr [ %incdec.ptr7.i37.12, %if.then.i38.12 ], [ %targ.addr.1.i39.11, %if.end.i43.11.if.end.i43.12_crit_edge ]
  %l.1.i40.12 = phi i8 [ %74, %if.then.i38.12 ], [ %l.1.i40.11, %if.end.i43.11.if.end.i43.12_crit_edge ]
  %incdec.ptr.i32.13 = getelementptr inbounds i8, ptr %buf, i32 30
  %76 = ptrtoint ptr %incdec.ptr.i32.12 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %incdec.ptr.i32.12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %77)
  %cmp1.not.i33.13 = icmp eq i8 %77, 32
  call void @__sanitizer_cov_trace_cmp1(i8 %77, i8 %l.1.i40.12)
  %cmp5.not.i34.13 = icmp eq i8 %77, %l.1.i40.12
  %or.cond.i35.13 = select i1 %cmp1.not.i33.13, i1 true, i1 %cmp5.not.i34.13
  br i1 %or.cond.i35.13, label %if.end.i43.12.if.end.i43.13_crit_edge, label %if.then.i38.13

if.end.i43.12.if.end.i43.13_crit_edge:            ; preds = %if.end.i43.12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i43.13

if.then.i38.13:                                   ; preds = %if.end.i43.12
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr7.i37.13 = getelementptr i8, ptr %targ.addr.1.i39.12, i32 1
  %78 = ptrtoint ptr %targ.addr.1.i39.12 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %targ.addr.1.i39.12, align 1
  br label %if.end.i43.13

if.end.i43.13:                                    ; preds = %if.then.i38.13, %if.end.i43.12.if.end.i43.13_crit_edge
  %targ.addr.1.i39.13 = phi ptr [ %incdec.ptr7.i37.13, %if.then.i38.13 ], [ %targ.addr.1.i39.12, %if.end.i43.12.if.end.i43.13_crit_edge ]
  %l.1.i40.13 = phi i8 [ %77, %if.then.i38.13 ], [ %l.1.i40.12, %if.end.i43.12.if.end.i43.13_crit_edge ]
  %incdec.ptr.i32.14 = getelementptr inbounds i8, ptr %buf, i32 31
  %79 = ptrtoint ptr %incdec.ptr.i32.13 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %incdec.ptr.i32.13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %80)
  %cmp1.not.i33.14 = icmp eq i8 %80, 32
  call void @__sanitizer_cov_trace_cmp1(i8 %80, i8 %l.1.i40.13)
  %cmp5.not.i34.14 = icmp eq i8 %80, %l.1.i40.13
  %or.cond.i35.14 = select i1 %cmp1.not.i33.14, i1 true, i1 %cmp5.not.i34.14
  br i1 %or.cond.i35.14, label %if.end.i43.13.if.end.i43.14_crit_edge, label %if.then.i38.14

if.end.i43.13.if.end.i43.14_crit_edge:            ; preds = %if.end.i43.13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i43.14

if.then.i38.14:                                   ; preds = %if.end.i43.13
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr7.i37.14 = getelementptr i8, ptr %targ.addr.1.i39.13, i32 1
  %81 = ptrtoint ptr %targ.addr.1.i39.13 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %targ.addr.1.i39.13, align 1
  br label %if.end.i43.14

if.end.i43.14:                                    ; preds = %if.then.i38.14, %if.end.i43.13.if.end.i43.14_crit_edge
  %targ.addr.1.i39.14 = phi ptr [ %incdec.ptr7.i37.14, %if.then.i38.14 ], [ %targ.addr.1.i39.13, %if.end.i43.13.if.end.i43.14_crit_edge ]
  %l.1.i40.14 = phi i8 [ %80, %if.then.i38.14 ], [ %l.1.i40.13, %if.end.i43.13.if.end.i43.14_crit_edge ]
  %82 = ptrtoint ptr %incdec.ptr.i32.14 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %incdec.ptr.i32.14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %83)
  %cmp1.not.i33.15 = icmp eq i8 %83, 32
  call void @__sanitizer_cov_trace_cmp1(i8 %83, i8 %l.1.i40.14)
  %cmp5.not.i34.15 = icmp eq i8 %83, %l.1.i40.14
  %or.cond.i35.15 = select i1 %cmp1.not.i33.15, i1 true, i1 %cmp5.not.i34.15
  br i1 %or.cond.i35.15, label %if.end.i43.14.if.end.i43.15_crit_edge, label %if.then.i38.15

if.end.i43.14.if.end.i43.15_crit_edge:            ; preds = %if.end.i43.14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i43.15

if.then.i38.15:                                   ; preds = %if.end.i43.14
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr7.i37.15 = getelementptr i8, ptr %targ.addr.1.i39.14, i32 1
  %84 = ptrtoint ptr %targ.addr.1.i39.14 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %targ.addr.1.i39.14, align 1
  br label %if.end.i43.15

if.end.i43.15:                                    ; preds = %if.then.i38.15, %if.end.i43.14.if.end.i43.15_crit_edge
  %targ.addr.1.i39.15 = phi ptr [ %incdec.ptr7.i37.15, %if.then.i38.15 ], [ %targ.addr.1.i39.14, %if.end.i43.14.if.end.i43.15_crit_edge ]
  %l.1.i40.15 = phi i8 [ %83, %if.then.i38.15 ], [ %l.1.i40.14, %if.end.i43.14.if.end.i43.15_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %l.1.i40.15)
  %cmp9.i44 = icmp eq i8 %l.1.i40.15, 32
  %spec.select.idx.i45 = sext i1 %cmp9.i44 to i32
  %spec.select.i46 = getelementptr i8, ptr %targ.addr.1.i39.15, i32 %spec.select.idx.i45
  %85 = ptrtoint ptr %spec.select.i46 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %spec.select.i46, align 1
  %name = getelementptr inbounds %struct.pg, ptr %dev, i32 0, i32 11
  %drive = getelementptr inbounds %struct.pg, ptr %dev, i32 0, i32 7
  %86 = ptrtoint ptr %drive to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %drive, align 4
  %arrayidx = getelementptr [2 x ptr], ptr @__const.pg_identify.ms, i32 0, i32 %87
  %88 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx, align 4
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name, ptr noundef nonnull %mf, ptr noundef nonnull %id, ptr noundef %89) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end.i43.15, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ 0, %if.end.i43.15 ], [ 0, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %buf) #10
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
define internal fastcc i32 @pg_command(ptr noundef %dev, ptr noundef %cmd, i32 noundef %dlen, i32 noundef %tmo) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pi = getelementptr inbounds %struct.pg, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pi, align 4
  tail call void @pi_connect(ptr noundef %1) #10
  %drive.i = getelementptr inbounds %struct.pg, ptr %dev, i32 0, i32 7
  %2 = ptrtoint ptr %drive.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %drive.i, align 4
  %4 = shl i32 %3, 4
  %conv.i = add i32 %4, 160
  %conv = and i32 %conv.i, 240
  %5 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pi, align 4
  tail call void @pi_write_regr(ptr noundef %6, i32 noundef 0, i32 noundef 6, i32 noundef %conv) #10
  %call1 = tail call fastcc i32 @pg_wait(ptr noundef %dev, i32 noundef 136, i32 noundef 0, i32 noundef %tmo, ptr noundef nonnull @.str.30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.fail_crit_edge

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end:                                           ; preds = %entry
  %div = sdiv i32 %dlen, 256
  %7 = mul i32 %div, 256
  %rem.decomposed = sub i32 %dlen, %7
  %8 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pi, align 4
  tail call void @pi_write_regr(ptr noundef %9, i32 noundef 0, i32 noundef 4, i32 noundef %rem.decomposed) #10
  %10 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pi, align 4
  tail call void @pi_write_regr(ptr noundef %11, i32 noundef 0, i32 noundef 5, i32 noundef %div) #10
  %12 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pi, align 4
  tail call void @pi_write_regr(ptr noundef %13, i32 noundef 0, i32 noundef 7, i32 noundef 160) #10
  %call2 = tail call fastcc i32 @pg_wait(ptr noundef %dev, i32 noundef 128, i32 noundef 8, i32 noundef %tmo, ptr noundef nonnull @.str.31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.fail_crit_edge

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end5:                                          ; preds = %if.end
  %14 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pi, align 4
  %call.i = tail call i32 @pi_read_regr(ptr noundef %15, i32 noundef 0, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 1
  br i1 %cmp.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.pg, ptr %dev, i32 0, i32 11
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %name) #13
  br label %fail

if.end10:                                         ; preds = %if.end5
  %16 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pi, align 4
  tail call void @pi_write_block(ptr noundef %17, ptr noundef %cmd, i32 noundef 12) #10
  %18 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp12 = icmp sgt i32 %18, 1
  br i1 %cmp12, label %do.end17, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %name19 = getelementptr inbounds %struct.pg, ptr %dev, i32 0, i32 11
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %name19, i32 noundef %dlen) #13
  %19 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cmd, align 1
  %conv28 = zext i8 %20 to i32
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv28) #13
  %arrayidx.1 = getelementptr i8, ptr %cmd, i32 1
  %21 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.1, align 1
  %conv28.1 = zext i8 %22 to i32
  %call29.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv28.1) #13
  %arrayidx.2 = getelementptr i8, ptr %cmd, i32 2
  %23 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.2, align 1
  %conv28.2 = zext i8 %24 to i32
  %call29.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv28.2) #13
  %arrayidx.3 = getelementptr i8, ptr %cmd, i32 3
  %25 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.3, align 1
  %conv28.3 = zext i8 %26 to i32
  %call29.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv28.3) #13
  %arrayidx.4 = getelementptr i8, ptr %cmd, i32 4
  %27 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.4, align 1
  %conv28.4 = zext i8 %28 to i32
  %call29.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv28.4) #13
  %arrayidx.5 = getelementptr i8, ptr %cmd, i32 5
  %29 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.5, align 1
  %conv28.5 = zext i8 %30 to i32
  %call29.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv28.5) #13
  %arrayidx.6 = getelementptr i8, ptr %cmd, i32 6
  %31 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.6, align 1
  %conv28.6 = zext i8 %32 to i32
  %call29.6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv28.6) #13
  %arrayidx.7 = getelementptr i8, ptr %cmd, i32 7
  %33 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.7, align 1
  %conv28.7 = zext i8 %34 to i32
  %call29.7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv28.7) #13
  %arrayidx.8 = getelementptr i8, ptr %cmd, i32 8
  %35 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.8, align 1
  %conv28.8 = zext i8 %36 to i32
  %call29.8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv28.8) #13
  %arrayidx.9 = getelementptr i8, ptr %cmd, i32 9
  %37 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.9, align 1
  %conv28.9 = zext i8 %38 to i32
  %call29.9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv28.9) #13
  %arrayidx.10 = getelementptr i8, ptr %cmd, i32 10
  %39 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.10, align 1
  %conv28.10 = zext i8 %40 to i32
  %call29.10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv28.10) #13
  %arrayidx.11 = getelementptr i8, ptr %cmd, i32 11
  %41 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.11, align 1
  %conv28.11 = zext i8 %42 to i32
  %call29.11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv28.11) #13
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #13
  br label %cleanup

fail:                                             ; preds = %do.end, %if.end.fail_crit_edge, %entry.fail_crit_edge
  %43 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pi, align 4
  tail call void @pi_disconnect(ptr noundef %44) #10
  br label %cleanup

cleanup:                                          ; preds = %fail, %do.end17, %if.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %fail ], [ 0, %do.end17 ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pg_completion(ptr noundef %dev, ptr noundef %buf, i32 noundef %tmo) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @pg_wait(ptr noundef %dev, i32 noundef 128, i32 noundef 73, i32 noundef %tmo, ptr noundef nonnull @.str.46)
  %dlen = getelementptr inbounds %struct.pg, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %dlen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %dlen, align 4
  %pi.i = getelementptr inbounds %struct.pg, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pi.i, align 4
  %call.i49 = tail call i32 @pi_read_regr(ptr noundef %2, i32 noundef 0, i32 noundef 7) #10
  %and50 = and i32 %call.i49, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool.not51 = icmp eq i32 %and50, 0
  br i1 %tobool.not51, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %name = getelementptr inbounds %struct.pg, ptr %dev, i32 0, i32 11
  br label %while.body

while.body:                                       ; preds = %if.end16.while.body_crit_edge, %while.body.lr.ph
  %buf.addr.052 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr, %if.end16.while.body_crit_edge ]
  %3 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pi.i, align 4
  %call.i44 = tail call i32 @pi_read_regr(ptr noundef %4, i32 noundef 0, i32 noundef 4) #10
  %5 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pi.i, align 4
  %call.i46 = tail call i32 @pi_read_regr(ptr noundef %6, i32 noundef 0, i32 noundef 5) #10
  %mul = shl i32 %call.i46, 8
  %add = add i32 %mul, %call.i44
  %add4 = add i32 %add, 3
  %and5 = and i32 %add4, 65532
  %7 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pi.i, align 4
  %call.i48 = tail call i32 @pi_read_regr(ptr noundef %8, i32 noundef 0, i32 noundef 2) #10
  %and7 = and i32 %call.i48, 3
  %9 = zext i32 %and7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and7, label %while.body.if.end11_crit_edge [
    i32 0, label %if.then
    i32 2, label %if.then9
  ]

while.body.if.end11_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pi.i, align 4
  tail call void @pi_write_block(ptr noundef %11, ptr noundef %buf.addr.052, i32 noundef %and5) #10
  br label %if.end11

if.then9:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pi.i, align 4
  tail call void @pi_read_block(ptr noundef %13, ptr noundef %buf.addr.052, i32 noundef %and5) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.then, %while.body.if.end11_crit_edge
  %14 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp12 = icmp sgt i32 %14, 1
  br i1 %cmp12, label %do.end, label %if.end11.if.end16_crit_edge

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool14.not = icmp eq i32 %and7, 0
  %cond = select i1 %tobool14.not, ptr @.str.50, ptr @.str.49
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %name, ptr noundef nonnull %cond, i32 noundef %and5) #13
  br label %if.end16

if.end16:                                         ; preds = %do.end, %if.end11.if.end16_crit_edge
  %sub = sub nsw i32 1, %and7
  %mul17 = mul i32 %sub, %add
  %15 = ptrtoint ptr %dlen to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dlen, align 4
  %add19 = add i32 %16, %mul17
  store i32 %add19, ptr %dlen, align 4
  %add.ptr = getelementptr i8, ptr %buf.addr.052, i32 %add
  %call20 = tail call fastcc i32 @pg_wait(ptr noundef %dev, i32 noundef 128, i32 noundef 73, i32 noundef %tmo, ptr noundef nonnull @.str.46)
  %17 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pi.i, align 4
  %call.i = tail call i32 @pi_read_regr(ptr noundef %18, i32 noundef 0, i32 noundef 7) #10
  %and = and i32 %call.i, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end16.while.end_crit_edge, label %if.end16.while.body_crit_edge

if.end16.while.body_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end16.while.end_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end16.while.end_crit_edge, %entry.while.end_crit_edge
  %r.0.lcssa = phi i32 [ %call, %entry.while.end_crit_edge ], [ %call20, %if.end16.while.end_crit_edge ]
  %19 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pi.i, align 4
  tail call void @pi_disconnect(ptr noundef %20) #10
  ret i32 %r.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pg_wait(ptr noundef %dev, i32 noundef %go, i32 noundef %stop, i32 noundef %tmo, ptr noundef %msg) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.pg, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %status, align 4
  %pi.i = getelementptr inbounds %struct.pg, ptr %dev, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stop)
  %tobool1.not = icmp ne i32 %stop, 0
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %j.0 = phi i32 [ 0, %entry ], [ %inc, %while.cond.backedge ]
  %1 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pi.i, align 4
  %call.i = tail call i32 @pi_read_regr(ptr noundef %2, i32 noundef 1, i32 noundef 6) #10
  %and = and i32 %call.i, %go
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %while.cond.land.rhs_crit_edge

while.cond.land.rhs_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

lor.lhs.false:                                    ; preds = %while.cond
  %and2 = and i32 %call.i, %stop
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %or.cond = select i1 %tobool1.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %lor.lhs.false.land.rhs_crit_edge, label %lor.lhs.false.while.end_crit_edge

lor.lhs.false.while.end_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

lor.lhs.false.land.rhs_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

land.rhs:                                         ; preds = %lor.lhs.false.land.rhs_crit_edge, %while.cond.land.rhs_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %3, %tmo
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = and i32 %call.i, %stop
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %inc = add i32 %j.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %j.0)
  %cmp4 = icmp slt i32 %j.0, 200
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 10737400) #10
  br label %while.cond.backedge

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %call.i47 = tail call i32 @schedule_timeout_interruptible(i32 noundef 1) #10
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else, %if.then
  br label %while.cond

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %lor.lhs.false.while.end_crit_edge
  %and7.pre-phi = phi i32 [ %.pre, %land.rhs.while.end_crit_edge ], [ %and2, %lor.lhs.false.while.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %sub5 = sub i32 %5, %tmo
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub5)
  %cmp6 = icmp sgt i32 %sub5, -1
  %and8 = and i32 %and7.pre-phi, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp ne i32 %and8, 0
  %brmerge = select i1 %tobool9.not, i1 true, i1 %cmp6
  br i1 %brmerge, label %if.then12, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then12:                                        ; preds = %while.end
  %6 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pi.i, align 4
  %call.i49 = tail call i32 @pi_read_regr(ptr noundef %7, i32 noundef 0, i32 noundef 7) #10
  %8 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pi.i, align 4
  %call.i51 = tail call i32 @pi_read_regr(ptr noundef %9, i32 noundef 0, i32 noundef 1) #10
  %10 = ptrtoint ptr %pi.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pi.i, align 4
  %call.i53 = tail call i32 @pi_read_regr(ptr noundef %11, i32 noundef 0, i32 noundef 2) #10
  %12 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp16 = icmp sgt i32 %12, 1
  br i1 %cmp16, label %do.end, label %if.then12.if.end20_crit_edge

if.then12.if.end20_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

do.end:                                           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.pg, ptr %dev, i32 0, i32 11
  %cond = select i1 %cmp6, ptr @.str.44, ptr @.str.45
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name, ptr noundef %msg, i32 noundef %call.i49, i32 noundef %call.i51, i32 noundef %call.i53, ptr noundef nonnull %cond) #13
  br label %if.end20

if.end20:                                         ; preds = %do.end, %if.then12.if.end20_crit_edge
  %13 = lshr i32 %call.i51, 4
  %14 = or i32 %13, 16
  %15 = select i1 %cmp6, i32 %14, i32 %13
  %and24 = and i32 %15, 255
  %16 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and24, ptr %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.end20 ], [ 0, %while.end.cleanup_crit_edge ]
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
define internal i32 @pg_read(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #5 align 64 {
entry:
  %hdr = alloca %struct.pg_read_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %hdr) #10
  %busy = getelementptr inbounds %struct.pg, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %busy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %count)
  %cmp = icmp ult i32 %count, 24
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %entry
  %4 = ptrtoint ptr %busy to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %busy, align 4
  %bufptr = getelementptr inbounds %struct.pg, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %bufptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bufptr, align 4
  %timeout = getelementptr inbounds %struct.pg, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %timeout, align 4
  %call = tail call fastcc i32 @pg_completion(ptr noundef %1, ptr noundef %6, i32 noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end2.if.end9_crit_edge, label %if.then5

if.end2.if.end9_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then5:                                         ; preds = %if.end2
  %status = getelementptr inbounds %struct.pg, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status, align 4
  %and = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.then5.if.end9_crit_edge, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5.if.end9_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.end9:                                          ; preds = %if.then5.if.end9_crit_edge, %if.end2.if.end9_crit_edge
  %11 = call ptr @memset(ptr %hdr, i32 0, i32 24)
  %12 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 80, ptr %hdr, align 4
  %dlen = getelementptr inbounds %struct.pg, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %dlen to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dlen, align 4
  %dlen10 = getelementptr inbounds %struct.pg_read_hdr, ptr %hdr, i32 0, i32 2
  %15 = ptrtoint ptr %dlen10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %dlen10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp12 = icmp slt i32 %14, 0
  br i1 %cmp12, label %if.then13, label %if.end9.if.end21_crit_edge

if.end9.if.end21_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %mul = sub i32 0, %14
  %16 = ptrtoint ptr %dlen10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul, ptr %dlen10, align 4
  %sub = add i32 %count, -24
  %17 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %mul)
  br label %if.end21

if.end21:                                         ; preds = %if.then13, %if.end9.if.end21_crit_edge
  %copy.0 = phi i32 [ 0, %if.end9.if.end21_crit_edge ], [ %17, %if.then13 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %start = getelementptr inbounds %struct.pg, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %start, align 4
  %sub22 = add i32 %18, 50
  %add = sub i32 %sub22, %20
  %div = udiv i32 %add, 100
  %duration = getelementptr inbounds %struct.pg_read_hdr, ptr %hdr, i32 0, i32 3
  %21 = ptrtoint ptr %duration to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div, ptr %duration, align 4
  %status23 = getelementptr inbounds %struct.pg, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %status23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %status23, align 4
  %24 = trunc i32 %23 to i8
  %conv = and i8 %24, 15
  %scsi = getelementptr inbounds %struct.pg_read_hdr, ptr %hdr, i32 0, i32 1
  %25 = ptrtoint ptr %scsi to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv, ptr %scsi, align 1
  tail call void @__might_fault(ptr noundef nonnull @.str.53, i32 noundef 174) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.end21.cleanup_crit_edge, label %if.end.i.i

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end21
  %26 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 24, i32 -1226833920) #15, !srcloc !185
  %asmresult.i.i = extractvalue { i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %hdr, i32 noundef 24) #10
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %hdr, i32 noundef 24) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool26.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool26.not, label %if.end28, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copy.0)
  %cmp29 = icmp sgt i32 %copy.0, 0
  br i1 %cmp29, label %if.then31, label %if.end28.if.end37_crit_edge

if.end28.if.end37_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then31:                                        ; preds = %if.end28
  %add.ptr = getelementptr i8, ptr %buf, i32 24
  %27 = ptrtoint ptr %bufptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bufptr, align 4
  call void @__check_object_size(ptr noundef %28, i32 noundef %copy.0, i1 noundef zeroext true) #10
  call void @__might_fault(ptr noundef nonnull @.str.53, i32 noundef 174) #10
  %call.i.i66 = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i66, label %if.then31.cleanup_crit_edge, label %if.end.i.i69

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i69:                                     ; preds = %if.then31
  %29 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 %copy.0, i32 -1226833920) #15, !srcloc !185
  %asmresult.i.i67 = extractvalue { i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i67)
  %cmp.i6.i68 = icmp eq i32 %asmresult.i.i67, 0
  br i1 %cmp.i6.i68, label %copy_to_user.exit74, label %if.end.i.i69.cleanup_crit_edge

if.end.i.i69.cleanup_crit_edge:                   ; preds = %if.end.i.i69
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

copy_to_user.exit74:                              ; preds = %if.end.i.i69
  %call.i.i.i70 = call zeroext i1 @__kasan_check_read(ptr noundef %28, i32 noundef %copy.0) #10
  %call.i12.i.i71 = call i32 @arm_copy_to_user(ptr noundef %add.ptr, ptr noundef %28, i32 noundef %copy.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i71)
  %tobool34.not = icmp eq i32 %call.i12.i.i71, 0
  br i1 %tobool34.not, label %copy_to_user.exit74.if.end37_crit_edge, label %copy_to_user.exit74.cleanup_crit_edge

copy_to_user.exit74.cleanup_crit_edge:            ; preds = %copy_to_user.exit74
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

copy_to_user.exit74.if.end37_crit_edge:           ; preds = %copy_to_user.exit74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.end37:                                         ; preds = %copy_to_user.exit74.if.end37_crit_edge, %if.end28.if.end37_crit_edge
  %add38 = add nuw i32 %copy.0, 24
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %copy_to_user.exit74.cleanup_crit_edge, %if.end.i.i69.cleanup_crit_edge, %if.then31.cleanup_crit_edge, %copy_to_user.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add38, %if.end37 ], [ -22, %entry.cleanup_crit_edge ], [ -62, %if.then5.cleanup_crit_edge ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %copy_to_user.exit74.cleanup_crit_edge ], [ -14, %if.end21.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ -14, %if.then31.cleanup_crit_edge ], [ -14, %if.end.i.i69.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %hdr) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pg_write(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #5 align 64 {
entry:
  %hdr = alloca %struct.pg_write_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %hdr) #10
  %2 = call ptr @memset(ptr %hdr, i32 255, i32 24)
  %busy = getelementptr inbounds %struct.pg, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %busy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %count)
  %cmp = icmp ult i32 %count, 24
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end59.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end59.i.i:                                     ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.53, i32 noundef 156) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.end59.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i.if.then11.i.i_crit_edge:             ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 24, i32 -1226833920) #15, !srcloc !186
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !187

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %hdr, i32 noundef 24) #10
  %6 = call i32 @llvm.read_register.i32(metadata !175) #10
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !188
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !189
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !190
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %hdr, ptr noundef %buf, i32 noundef 24) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #10, !srcloc !189
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !190
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end5, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !187

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i.if.then11.i.i_crit_edge
  %res.0.i.i103 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 24, %if.end59.i.i.if.then11.i.i_crit_edge ], [ 24, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 24, %res.0.i.i103
  %add.ptr.i.i = getelementptr i8, ptr %hdr, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i103)
  br label %cleanup

if.end5:                                          ; preds = %if.end.i.i
  %10 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hdr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %11)
  %cmp6.not = icmp eq i8 %11, 80
  br i1 %cmp6.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %dlen = getelementptr inbounds %struct.pg_write_hdr, ptr %hdr, i32 0, i32 2
  %12 = ptrtoint ptr %dlen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %13)
  %14 = icmp ugt i32 %13, 32768
  br i1 %14, label %if.end9.cleanup_crit_edge, label %if.end16

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %sub = add i32 %count, -24
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %sub)
  %cmp17 = icmp ugt i32 %sub, 32768
  br i1 %cmp17, label %if.end16.cleanup_crit_edge, label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %func = getelementptr inbounds %struct.pg_write_hdr, ptr %hdr, i32 0, i32 1
  %15 = ptrtoint ptr %func to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %func, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.58)
  switch i8 %16, label %if.end20.cleanup_crit_edge [
    i8 90, label %if.then24
    i8 67, label %if.end39
  ]

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %count)
  %cmp25.not = icmp eq i32 %count, 24
  br i1 %cmp25.not, label %if.end28, label %if.then24.cleanup_crit_edge

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  %call29 = call fastcc i32 @pg_reset(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  %. = select i1 %tobool30.not, i32 24, i32 -5
  br label %cleanup

if.end39:                                         ; preds = %if.end20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %start = getelementptr inbounds %struct.pg, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %start, align 4
  %timeout = getelementptr inbounds %struct.pg_write_hdr, ptr %hdr, i32 0, i32 3
  %20 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %timeout, align 4
  %mul = mul i32 %21, 100
  %add = add i32 %mul, 50
  %22 = load volatile i32, ptr @jiffies, align 128
  %add40 = add i32 %add, %22
  %timeout41 = getelementptr inbounds %struct.pg, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %timeout41 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add40, ptr %timeout41, align 4
  %packet = getelementptr inbounds %struct.pg_write_hdr, ptr %hdr, i32 0, i32 4
  %24 = load volatile i32, ptr @jiffies, align 128
  %add43 = add i32 %24, 100
  %call44 = call fastcc i32 @pg_command(ptr noundef %1, ptr noundef %packet, i32 noundef %13, i32 noundef %add43)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end50, label %if.then46

if.then46:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %status = getelementptr inbounds %struct.pg, ptr %1, i32 0, i32 6
  %25 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status, align 4
  %and = and i32 %26, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool47.not = icmp eq i32 %and, 0
  %.77 = select i1 %tobool47.not, i32 -5, i32 -62
  br label %cleanup

if.end50:                                         ; preds = %if.end39
  %27 = ptrtoint ptr %busy to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %busy, align 4
  %bufptr = getelementptr inbounds %struct.pg, ptr %1, i32 0, i32 10
  %28 = ptrtoint ptr %bufptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bufptr, align 4
  %add.ptr = getelementptr i8, ptr %buf, i32 24
  call void @__check_object_size(ptr noundef %29, i32 noundef %sub, i1 noundef zeroext false) #10
  call void @__might_fault(ptr noundef nonnull @.str.53, i32 noundef 156) #10
  %call.i.i82 = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i82, label %if.end50.if.end.i.i95_crit_edge, label %land.lhs.true.i.i85

if.end50.if.end.i.i95_crit_edge:                  ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i95

land.lhs.true.i.i85:                              ; preds = %if.end50
  %30 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 %sub, i32 -1226833920) #15, !srcloc !186
  %asmresult.i.i83 = extractvalue { i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i83)
  %cmp.i6.i84 = icmp eq i32 %asmresult.i.i83, 0
  br i1 %cmp.i6.i84, label %if.then.i7.i92, label %land.lhs.true.i.i85.if.end.i.i95_crit_edge, !prof !187

land.lhs.true.i.i85.if.end.i.i95_crit_edge:       ; preds = %land.lhs.true.i.i85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i95

if.then.i7.i92:                                   ; preds = %land.lhs.true.i.i85
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i86 = call zeroext i1 @__kasan_check_write(ptr noundef %29, i32 noundef %sub) #10
  %31 = call i32 @llvm.read_register.i32(metadata !175) #10
  %and.i.i.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i.i87 to ptr
  %cpu_domain.i.i.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 4
  %33 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i88) #6, !srcloc !188
  %and.i.i.i.i89 = and i32 %33, -13
  %or.i.i.i.i90 = or i32 %and.i.i.i.i89, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i90) #10, !srcloc !189
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !190
  %call1.i.i.i91 = call i32 @arm_copy_from_user(ptr noundef %29, ptr noundef %add.ptr, i32 noundef %sub) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #10, !srcloc !189
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !190
  br label %if.end.i.i95

if.end.i.i95:                                     ; preds = %if.then.i7.i92, %land.lhs.true.i.i85.if.end.i.i95_crit_edge, %if.end50.if.end.i.i95_crit_edge
  %res.0.i.i93 = phi i32 [ %sub, %if.end50.if.end.i.i95_crit_edge ], [ %call1.i.i.i91, %if.then.i7.i92 ], [ %sub, %land.lhs.true.i.i85.if.end.i.i95_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i93)
  %tobool4.not.i.i94 = icmp eq i32 %res.0.i.i93, 0
  br i1 %tobool4.not.i.i94, label %if.end.i.i95.cleanup_crit_edge, label %if.then11.i.i98, !prof !187

if.end.i.i95.cleanup_crit_edge:                   ; preds = %if.end.i.i95
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then11.i.i98:                                  ; preds = %if.end.i.i95
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i96 = sub i32 %sub, %res.0.i.i93
  %add.ptr.i.i97 = getelementptr i8, ptr %29, i32 %sub.i.i96
  %34 = call ptr @memset(ptr %add.ptr.i.i97, i32 0, i32 %res.0.i.i93)
  br label %cleanup

cleanup:                                          ; preds = %if.then11.i.i98, %if.end.i.i95.cleanup_crit_edge, %if.then46, %if.end28, %if.then24.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then11.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -22, %if.end16.cleanup_crit_edge ], [ -22, %if.then24.cleanup_crit_edge ], [ %., %if.end28 ], [ -22, %if.end20.cleanup_crit_edge ], [ %.77, %if.then46 ], [ %count, %if.end.i.i95.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then11.i.i98 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %hdr) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pg_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and = and i32 %1, 127
  %arrayidx = getelementptr [4 x %struct.pg], ptr @devices, i32 0, i32 %and
  tail call void @mutex_lock_nested(ptr noundef nonnull @pg_mutex, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp = icmp ugt i32 %and, 3
  br i1 %cmp, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %present = getelementptr [4 x %struct.pg], ptr @devices, i32 0, i32 %and, i32 9
  %2 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.lhs.false.out_crit_edge, label %if.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %access = getelementptr [4 x %struct.pg], ptr @devices, i32 0, i32 %and, i32 8
  %call1 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %access) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end4:                                          ; preds = %if.end
  %busy = getelementptr [4 x %struct.pg], ptr @devices, i32 0, i32 %and, i32 2
  %4 = ptrtoint ptr %busy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %if.end4.if.end9_crit_edge, label %if.then6

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call fastcc i32 @pg_reset(ptr noundef %arrayidx)
  %6 = ptrtoint ptr %busy to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %busy, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end4.if.end9_crit_edge
  %7 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp10 = icmp sgt i32 %7, 1
  %conv = zext i1 %cmp10 to i32
  %call11 = tail call fastcc i32 @pg_identify(ptr noundef %arrayidx, i32 noundef %conv)
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 32768, i32 noundef 3264, i32 noundef 3) #16
  %bufptr = getelementptr [4 x %struct.pg], ptr @devices, i32 0, i32 %and, i32 10
  %8 = ptrtoint ptr %bufptr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1.i.i, ptr %bufptr, align 4
  %cmp14 = icmp eq ptr %call1.i.i, null
  br i1 %cmp14, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %access) #10
  %name = getelementptr [4 x %struct.pg], ptr @devices, i32 0, i32 %and, i32 11
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %name) #13
  br label %out

if.end19:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %9 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx, ptr %private_data, align 4
  br label %out

out:                                              ; preds = %if.end19, %if.then16, %if.end.out_crit_edge, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ -12, %if.then16 ], [ 0, %if.end19 ], [ -19, %lor.lhs.false.out_crit_edge ], [ -19, %entry.out_crit_edge ], [ -16, %if.end.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @pg_mutex) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pg_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %bufptr = getelementptr inbounds %struct.pg, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %bufptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bufptr, align 4
  tail call void @kfree(ptr noundef %3) #10
  %4 = ptrtoint ptr %bufptr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %bufptr, align 4
  %access = getelementptr inbounds %struct.pg, ptr %1, i32 0, i32 8
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %access) #10
  ret i32 0
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
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !28, !30, !32, !34, !35, !36, !38, !39, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !61, !62, !63, !64, !65, !67, !69, !71, !73, !75, !77, !79, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !116, !118, !119, !120, !121, !123, !125, !127, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !143, !144, !145, !146, !147, !148, !150, !152, !153, !154, !155, !156, !157, !159, !161, !162, !164, !166, !168, !169, !170, !171, !173, !174}
!llvm.named.register.sp = !{!175}
!llvm.module.flags = !{!176, !177, !178, !179, !180, !181, !182, !183}
!llvm.ident = !{!184}

!0 = !{ptr @__param_verbose, !1, !"__param_verbose", i1 false, i1 false}
!1 = !{!"../drivers/block/paride/pg.c", i32 171, i32 1}
!2 = !{ptr @__UNIQUE_ID_verbosetype225, !1, !"__UNIQUE_ID_verbosetype225", i1 false, i1 false}
!3 = !{ptr @__param_major, !4, !"__param_major", i1 false, i1 false}
!4 = !{!"../drivers/block/paride/pg.c", i32 172, i32 1}
!5 = !{ptr @__UNIQUE_ID_majortype226, !4, !"__UNIQUE_ID_majortype226", i1 false, i1 false}
!6 = !{ptr @__param_name, !7, !"__param_name", i1 false, i1 false}
!7 = !{!"../drivers/block/paride/pg.c", i32 173, i32 1}
!8 = !{ptr @__UNIQUE_ID_nametype227, !7, !"__UNIQUE_ID_nametype227", i1 false, i1 false}
!9 = !{ptr @__param_drive0, !10, !"__param_drive0", i1 false, i1 false}
!10 = !{!"../drivers/block/paride/pg.c", i32 174, i32 1}
!11 = !{ptr @__UNIQUE_ID_drive0type228, !10, !"__UNIQUE_ID_drive0type228", i1 false, i1 false}
!12 = !{ptr @__param_drive1, !13, !"__param_drive1", i1 false, i1 false}
!13 = !{!"../drivers/block/paride/pg.c", i32 175, i32 1}
!14 = !{ptr @__UNIQUE_ID_drive1type229, !13, !"__UNIQUE_ID_drive1type229", i1 false, i1 false}
!15 = !{ptr @__param_drive2, !16, !"__param_drive2", i1 false, i1 false}
!16 = !{!"../drivers/block/paride/pg.c", i32 176, i32 1}
!17 = !{ptr @__UNIQUE_ID_drive2type230, !16, !"__UNIQUE_ID_drive2type230", i1 false, i1 false}
!18 = !{ptr @__param_drive3, !19, !"__param_drive3", i1 false, i1 false}
!19 = !{!"../drivers/block/paride/pg.c", i32 177, i32 1}
!20 = !{ptr @__UNIQUE_ID_drive3type231, !19, !"__UNIQUE_ID_drive3type231", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_file232, !22, !"__UNIQUE_ID_file232", i1 false, i1 false}
!22 = !{!"../drivers/block/paride/pg.c", i32 732, i32 1}
!23 = !{ptr @__UNIQUE_ID_license233, !22, !"__UNIQUE_ID_license233", i1 false, i1 false}
!24 = !{ptr @__initcall__kmod_pg__234_733_pg_init6, !25, !"__initcall__kmod_pg__234_733_pg_init6", i1 false, i1 false}
!25 = !{!"../drivers/block/paride/pg.c", i32 733, i32 1}
!26 = !{ptr @__exitcall_pg_exit, !27, !"__exitcall_pg_exit", i1 false, i1 false}
!27 = !{!"../drivers/block/paride/pg.c", i32 734, i32 1}
!28 = !{ptr @verbose, !29, !"verbose", i1 false, i1 false}
!29 = !{!"../drivers/block/paride/pg.c", i32 140, i32 12}
!30 = !{ptr @devices, !31, !"devices", i1 false, i1 false}
!31 = !{!"../drivers/block/paride/pg.c", i32 223, i32 18}
!32 = !{ptr @pg_class, !33, !"pg_class", i1 false, i1 false}
!33 = !{!"../drivers/block/paride/pg.c", i32 229, i32 22}
!34 = !{ptr @__param_str_verbose, !1, !"__param_str_verbose", i1 false, i1 false}
!35 = !{ptr @__param_str_major, !4, !"__param_str_major", i1 false, i1 false}
!36 = !{ptr @major, !37, !"major", i1 false, i1 false}
!37 = !{!"../drivers/block/paride/pg.c", i32 141, i32 12}
!38 = !{ptr @__param_str_name, !7, !"__param_str_name", i1 false, i1 false}
!39 = !{ptr @.str, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/block/paride/pg.c", i32 142, i32 21}
!41 = !{ptr @name, !42, !"name", i1 false, i1 false}
!42 = !{!"../drivers/block/paride/pg.c", i32 142, i32 14}
!43 = !{ptr @__param_str_drive0, !10, !"__param_str_drive0", i1 false, i1 false}
!44 = !{ptr @__param_arr_drive0, !10, !"__param_arr_drive0", i1 false, i1 false}
!45 = !{ptr @drive0, !46, !"drive0", i1 false, i1 false}
!46 = !{!"../drivers/block/paride/pg.c", i32 145, i32 12}
!47 = !{ptr @__param_str_drive1, !13, !"__param_str_drive1", i1 false, i1 false}
!48 = !{ptr @__param_arr_drive1, !13, !"__param_arr_drive1", i1 false, i1 false}
!49 = !{ptr @drive1, !50, !"drive1", i1 false, i1 false}
!50 = !{!"../drivers/block/paride/pg.c", i32 146, i32 12}
!51 = !{ptr @__param_str_drive2, !16, !"__param_str_drive2", i1 false, i1 false}
!52 = !{ptr @__param_arr_drive2, !16, !"__param_arr_drive2", i1 false, i1 false}
!53 = !{ptr @drive2, !54, !"drive2", i1 false, i1 false}
!54 = !{!"../drivers/block/paride/pg.c", i32 147, i32 12}
!55 = !{ptr @__param_str_drive3, !19, !"__param_str_drive3", i1 false, i1 false}
!56 = !{ptr @__param_arr_drive3, !19, !"__param_arr_drive3", i1 false, i1 false}
!57 = !{ptr @drive3, !58, !"drive3", i1 false, i1 false}
!58 = !{!"../drivers/block/paride/pg.c", i32 148, i32 12}
!59 = !{ptr @.str.1, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/block/paride/pg.c", i32 684, i32 3}
!61 = !{ptr @.str.2, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.3, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @pg_init._entry, !60, !"_entry", i1 false, i1 false}
!64 = !{ptr @pg_init._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @pg_init.__key, !66, !"__key", i1 false, i1 false}
!66 = !{!"../drivers/block/paride/pg.c", i32 693, i32 13}
!67 = !{ptr @.str.4, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/block/paride/pg.c", i32 702, i32 11}
!69 = distinct !{null, !70, !"disable", i1 false, i1 false}
!70 = !{!"../drivers/block/paride/pg.c", i32 143, i32 12}
!71 = !{ptr @.str.5, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/block/paride/pg.c", i32 257, i32 35}
!73 = !{ptr @pg_drive_count, !74, !"pg_drive_count", i1 false, i1 false}
!74 = !{!"../drivers/block/paride/pg.c", i32 151, i32 12}
!75 = !{ptr @drives, !76, !"drives", i1 false, i1 false}
!76 = !{!"../drivers/block/paride/pg.c", i32 150, i32 14}
!77 = !{ptr @.str.6, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/block/paride/pg.c", i32 483, i32 2}
!79 = !{ptr @.str.7, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @pg_detect._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @pg_detect._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.8, !78, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.10, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/block/paride/pg.c", i32 487, i32 3}
!85 = !{ptr @pg_detect._entry.9, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @pg_detect._entry_ptr.11, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.13, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/block/paride/pg.c", i32 522, i32 2}
!89 = !{ptr @pg_detect._entry.12, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @pg_detect._entry_ptr.14, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @par_drv, !92, !"par_drv", i1 false, i1 false}
!92 = !{!"../drivers/block/paride/pg.c", i32 230, i32 14}
!93 = !{ptr @pg_scratch, !94, !"pg_scratch", i1 false, i1 false}
!94 = !{!"../drivers/block/paride/pg.c", i32 227, i32 13}
!95 = !{ptr @.str.15, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/block/paride/pg.c", i32 410, i32 3}
!97 = !{ptr @.str.16, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @pg_reset._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @pg_reset._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.18, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/block/paride/pg.c", i32 412, i32 4}
!102 = !{ptr @pg_reset._entry.17, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @pg_reset._entry_ptr.19, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.21, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/block/paride/pg.c", i32 414, i32 4}
!106 = !{ptr @pg_reset._entry.20, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @pg_reset._entry_ptr.22, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.24, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/block/paride/pg.c", i32 415, i32 3}
!110 = !{ptr @pg_reset._entry.23, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @pg_reset._entry_ptr.25, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.26, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/block/paride/pg.c", i32 440, i32 18}
!114 = !{ptr @.str.27, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/block/paride/pg.c", i32 440, i32 28}
!116 = !{ptr @.str.28, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/block/paride/pg.c", i32 455, i32 3}
!118 = !{ptr @.str.29, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @pg_identify._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @pg_identify._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.30, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/block/paride/pg.c", i32 328, i32 49}
!123 = !{ptr @.str.31, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/block/paride/pg.c", i32 335, i32 45}
!125 = !{ptr @.str.32, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/block/paride/pg.c", i32 339, i32 3}
!127 = !{ptr @.str.33, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @pg_command._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @pg_command._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.35, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/block/paride/pg.c", i32 346, i32 3}
!132 = !{ptr @pg_command._entry.34, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @pg_command._entry_ptr.36, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.38, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/block/paride/pg.c", i32 348, i32 4}
!136 = !{ptr @pg_command._entry.37, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @pg_command._entry_ptr.39, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @pg_command._entry.40, !139, !"_entry", i1 false, i1 false}
!139 = !{!"../drivers/block/paride/pg.c", i32 349, i32 3}
!140 = !{ptr @pg_command._entry_ptr.41, !139, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.42, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/block/paride/pg.c", i32 310, i32 4}
!143 = !{ptr @.str.43, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @pg_wait._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @pg_wait._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.44, !142, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.45, !142, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.46, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/block/paride/pg.c", i32 362, i32 12}
!150 = !{ptr @.str.47, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/block/paride/pg.c", i32 375, i32 4}
!152 = !{ptr @.str.48, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @pg_completion._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @pg_completion._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.49, !151, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.50, !151, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @pg_fops, !158, !"pg_fops", i1 false, i1 false}
!158 = !{!"../drivers/block/paride/pg.c", i32 234, i32 37}
!159 = distinct !{null, !160, !"__already_done", i1 false, i1 false}
!160 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!161 = !{ptr @.str.51, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.52, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!164 = !{ptr @.str.53, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!166 = !{ptr @.str.54, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/block/paride/pg.c", i32 553, i32 3}
!168 = !{ptr @.str.55, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @pg_open._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @pg_open._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.56, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/block/paride/pg.c", i32 197, i32 8}
!173 = !{ptr @.str.57, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @pg_mutex, !172, !"pg_mutex", i1 false, i1 false}
!175 = !{!"sp"}
!176 = !{i32 1, !"wchar_size", i32 2}
!177 = !{i32 1, !"min_enum_size", i32 4}
!178 = !{i32 8, !"branch-target-enforcement", i32 0}
!179 = !{i32 8, !"sign-return-address", i32 0}
!180 = !{i32 8, !"sign-return-address-all", i32 0}
!181 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!182 = !{i32 7, !"uwtable", i32 1}
!183 = !{i32 7, !"frame-pointer", i32 2}
!184 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!185 = !{i64 2152420462, i64 2152420487}
!186 = !{i64 2152419781, i64 2152419806}
!187 = !{!"branch_weights", i32 2000, i32 1}
!188 = !{i64 4915336}
!189 = !{i64 4915533}
!190 = !{i64 2152400766}
