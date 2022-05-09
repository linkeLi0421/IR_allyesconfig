; ModuleID = '/llk/IR_all_yes/drivers/thunderbolt/debugfs.c_pt.bc'
source_filename = "../drivers/thunderbolt/debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.tb_switch = type { %struct.device, %struct.tb_regs_switch_header, ptr, ptr, %struct.tb_switch_tmu, ptr, i64, ptr, i16, i16, ptr, ptr, i32, i32, i8, i32, i32, i32, i32, i32, i8, ptr, ptr, i8, i8, i8, i8, i32, i32, ptr, ptr, i8, i8, i8, i8, %struct.completion, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.tb_regs_switch_header = type <{ i16, i16, i32, i32, i64 }>
%struct.tb_switch_tmu = type { i32, i8, i32, i8, i8, i32 }
%struct.tb_port = type { %struct.tb_regs_port_header, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i8, i8, i8, ptr, i8, %struct.ida, %struct.ida, %struct.list_head, i32, i32, i32 }
%struct.tb_regs_port_header = type { i16, i16, [12 x i8], i32, i32, i32, i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.tb_service = type { %struct.device, i32, ptr, i32, i32, i32, i32, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.69 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.71 = type { ptr }
%struct.tb = type { %struct.device, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [0 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.tb_cap_any = type { %union.anon.72 }
%union.anon.72 = type { %struct.tb_cap_extended_long }
%struct.tb_cap_extended_long = type { i8, i8, i8, i8, i16, i16 }

@tb_debugfs_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"regs\00", [27 x i8] zeroinitializer }, align 32
@switch_regs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @switch_regs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @switch_regs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"port%d\00", [25 x i8] zeroinitializer }, align 32
@port_regs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @port_regs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @port_regs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"path\00", [27 x i8] zeroinitializer }, align 32
@path_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @path_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"counters\00", [23 x i8] zeroinitializer }, align 32
@counters_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @counters_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @counters_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"thunderbolt\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%i %i %i %i %i\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"# offset relative_offset cap_id vs_cap_id value\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"0x%04x %4d 0x00 0x00 0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"0x%04x <capability read failed>\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"0x%04x <unknown capability 0x%02x>\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"0x%04x %4d 0x%02x 0x%02x 0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"0x%04x <not accessible>\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"0x%04x <unsupported capability 0x%02x>\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"# offset relative_offset in_hop_id value\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"0x%04x %4d 0x%02x 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"# offset relative_offset counter_id value\0A\00", [53 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 5]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 5]
@__sancov_gen_cov_switch_values.21 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.22 = internal global [8 x i64] [i64 6, i64 64, i64 1009088891019329536, i64 1009089990530957312, i64 1153204079095185408, i64 1153205178606813184, i64 2306125583702032384, i64 2306126683213660160]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"tb_debugfs_root\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 53, i32 23 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 670, i32 22 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"switch_regs_fops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 540, i32 1 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 682, i32 40 }
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"port_regs_fops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 436, i32 1 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 686, i32 23 }
@___asan_gen_.42 = private unnamed_addr constant [10 x i8] c"path_fops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 601, i32 1 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 689, i32 24 }
@___asan_gen_.48 = private unnamed_addr constant [14 x i8] c"counters_fops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 655, i32 1 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 731, i32 39 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 230, i32 6 }
@___asan_gen_.58 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 214, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 156, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 88, i32 23 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 107, i32 22 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 524, i32 14 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 506, i32 17 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 447, i32 17 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 469, i32 18 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 298, i32 18 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 268, i32 18 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 344, i32 18 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 576, i32 14 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 555, i32 17 }
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private constant [33 x i8] c"../drivers/thunderbolt/debugfs.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 639, i32 14 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @tb_debugfs_root, ptr @.str, ptr @switch_regs_fops, ptr @.str.1, ptr @port_regs_fops, ptr @.str.2, ptr @path_fops, ptr @.str.3, ptr @counters_fops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_debugfs_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch_regs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_regs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @path_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @counters_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tb_switch_debugfs_init(ptr noundef %sw) local_unnamed_addr #0 align 64 {
entry:
  %dir_name = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %init_name.i = getelementptr inbounds %struct.device, ptr %sw, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sw, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %entry.dev_name.exit_crit_edge ]
  %4 = load ptr, ptr @tb_debugfs_root, align 4
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i, ptr noundef %4) #7
  %debugfs_dir2 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 29
  %5 = ptrtoint ptr %debugfs_dir2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1, ptr %debugfs_dir2, align 8
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 384, ptr noundef %call1, ptr noundef %sw, ptr noundef nonnull @switch_regs_fops) #7
  %ports = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 2
  %6 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ports, align 4
  %max_port_number = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 2
  %port.050 = getelementptr %struct.tb_port, ptr %7, i32 1
  %8 = ptrtoint ptr %max_port_number to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load51 = load i32, ptr %max_port_number, align 4
  %bf.lshr52 = lshr i32 %bf.load51, 12
  %bf.clear53 = and i32 %bf.lshr52, 63
  %arrayidx554 = getelementptr %struct.tb_port, ptr %7, i32 %bf.clear53
  %cmp.not55 = icmp ugt ptr %port.050, %arrayidx554
  br i1 %cmp.not55, label %dev_name.exit.for.end_crit_edge, label %dev_name.exit.for.body_crit_edge

dev_name.exit.for.body_crit_edge:                 ; preds = %dev_name.exit
  br label %for.body

dev_name.exit.for.end_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %dev_name.exit.for.body_crit_edge
  %port.057 = phi ptr [ %port.0, %cleanup.for.body_crit_edge ], [ %port.050, %dev_name.exit.for.body_crit_edge ]
  %.pn56 = phi ptr [ %port.057, %cleanup.for.body_crit_edge ], [ %7, %dev_name.exit.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %dir_name) #7
  %disabled = getelementptr %struct.tb_port, ptr %.pn56, i32 1, i32 10
  %9 = call ptr @memset(ptr %dir_name, i32 255, i32 10)
  %10 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %disabled, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.body
  %type = getelementptr %struct.tb_port, ptr %.pn56, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %type to i32
  call void @__asan_loadN_noabort(i32 %12, i32 12)
  %bf.load8 = load i96, ptr %type, align 4
  %13 = and i96 %bf.load8, 18446742974197923840
  %cmp11 = icmp eq i96 %13, 0
  br i1 %cmp11, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %port14 = getelementptr %struct.tb_port, ptr %.pn56, i32 1, i32 9
  %14 = ptrtoint ptr %port14 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %port14, align 4
  %conv = zext i8 %15 to i32
  %call15 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %dir_name, i32 noundef 10, ptr noundef nonnull @.str.1, i32 noundef %conv)
  %16 = ptrtoint ptr %debugfs_dir2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %debugfs_dir2, align 8
  %call18 = call ptr @debugfs_create_dir(ptr noundef nonnull %dir_name, ptr noundef %17) #7
  %call19 = call ptr @debugfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 384, ptr noundef %call18, ptr noundef %port.057, ptr noundef nonnull @port_regs_fops) #7
  %call20 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 256, ptr noundef %call18, ptr noundef %port.057, ptr noundef nonnull @path_fops) #7
  %18 = ptrtoint ptr %type to i32
  call void @__asan_loadN_noabort(i32 %18, i32 12)
  %bf.load22 = load i96, ptr %type, align 4
  %19 = and i96 %bf.load22, 75557863725914323419136
  %tobool26.not = icmp eq i96 %19, 0
  br i1 %tobool26.not, label %if.end13.cleanup_crit_edge, label %if.then27

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then27:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %call28 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 384, ptr noundef %call18, ptr noundef %port.057, ptr noundef nonnull @counters_fops) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %dir_name) #7
  %port.0 = getelementptr %struct.tb_port, ptr %port.057, i32 1
  %20 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ports, align 4
  %22 = ptrtoint ptr %max_port_number to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load = load i32, ptr %max_port_number, align 4
  %bf.lshr = lshr i32 %bf.load, 12
  %bf.clear = and i32 %bf.lshr, 63
  %arrayidx5 = getelementptr %struct.tb_port, ptr %21, i32 %bf.clear
  %cmp.not = icmp ugt ptr %port.0, %arrayidx5
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %dev_name.exit.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tb_switch_debugfs_remove(ptr nocapture noundef readonly %sw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_dir = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 29
  %0 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs_dir, align 8
  tail call void @debugfs_remove(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tb_service_debugfs_init(ptr nocapture noundef %svc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %init_name.i = getelementptr inbounds %struct.device, ptr %svc, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %svc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %svc, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %entry.dev_name.exit_crit_edge ]
  %4 = load ptr, ptr @tb_debugfs_root, align 4
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i, ptr noundef %4) #7
  %debugfs_dir = getelementptr inbounds %struct.tb_service, ptr %svc, i32 0, i32 7
  %5 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1, ptr %debugfs_dir, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tb_service_debugfs_remove(ptr nocapture noundef %svc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_dir = getelementptr inbounds %struct.tb_service, ptr %svc, i32 0, i32 7
  %0 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs_dir, align 8
  tail call void @debugfs_remove(ptr noundef %1) #7
  %2 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %debugfs_dir, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tb_debugfs_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.4, ptr noundef null) #7
  store ptr %call, ptr @tb_debugfs_root, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tb_debugfs_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @tb_debugfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @switch_regs_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %call = tail call fastcc i32 @regs_write(ptr noundef %3, ptr noundef null, ptr noundef %user_buf, i32 noundef %count)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @switch_regs_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @switch_regs_show, ptr noundef %1) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @regs_write(ptr noundef %sw, ptr noundef readonly %port, ptr noundef %user_buf, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  %v.i = alloca [5 x i32], align 4
  %count.addr = alloca i32, align 4
  %line = alloca ptr, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %count.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %count, ptr %count.addr, align 4
  %tb1 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %1 = ptrtoint ptr %tb1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tb1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %line) #7
  %3 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %line, align 4, !annotation !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !62
  %call = call fastcc ptr @validate_and_copy_from_user(ptr noundef %user_buf, ptr noundef nonnull %count.addr)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %sw, i32 noundef 4) #7
  %lock = getelementptr inbounds %struct.tb, ptr %2, i32 0, i32 1
  %call5 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end7:                                          ; preds = %if.end
  tail call void @add_taint(i32 noundef 6, i32 noundef 0) #7
  %6 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %line, align 4
  %7 = getelementptr inbounds [5 x i32], ptr %v.i, i32 0, i32 4
  %8 = getelementptr inbounds [5 x i32], ptr %v.i, i32 0, i32 3
  %9 = getelementptr inbounds [5 x i32], ptr %v.i, i32 0, i32 2
  %10 = getelementptr inbounds [5 x i32], ptr %v.i, i32 0, i32 1
  %tobool9.not = icmp eq ptr %port, null
  %sw.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 1
  %port3.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 9
  %is_unplugged.i6 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 20
  %route_hi.i.i10 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %route_lo.i.i13 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  br label %while.cond

while.cond:                                       ; preds = %if.end13.while.cond_crit_edge, %if.end7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %v.i) #7
  %11 = call ptr @memset(ptr %v.i, i32 255, i32 20)
  %call.i1 = call ptr @strsep(ptr noundef nonnull %line, ptr noundef nonnull @.str.8) #7
  %tobool.not.i = icmp eq ptr %call.i1, null
  br i1 %tobool.not.i, label %while.cond.parse_line.exit.thread_crit_edge, label %if.end.i

while.cond.parse_line.exit.thread_crit_edge:      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %parse_line.exit.thread

if.end.i:                                         ; preds = %while.cond
  %call5.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %call.i1, ptr noundef nonnull @.str.9, ptr noundef nonnull %v.i, ptr noundef %10, ptr noundef %9, ptr noundef %8, ptr noundef %7) #7
  %12 = zext i32 %call5.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call5.i, label %if.end.i.parse_line.exit.thread_crit_edge [
    i32 2, label %if.end.i.while.body_crit_edge
    i32 5, label %if.end.i.while.body_crit_edge27
  ]

if.end.i.while.body_crit_edge27:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end.i.while.body_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end.i.parse_line.exit.thread_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %parse_line.exit.thread

parse_line.exit.thread:                           ; preds = %if.end.i.parse_line.exit.thread_crit_edge, %while.cond.parse_line.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %v.i) #7
  br label %while.end

while.body:                                       ; preds = %if.end.i.while.body_crit_edge, %if.end.i.while.body_crit_edge27
  %13 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.sink.i = load i32, ptr %v.i, align 4
  %sub12.i = add nsw i32 %call5.i, -1
  %arrayidx13.i = getelementptr [5 x i32], ptr %v.i, i32 0, i32 %sub12.i
  %14 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx13.i, align 4
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %v.i) #7
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %while.body
  %17 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sw.i, align 4
  %is_unplugged.i = getelementptr inbounds %struct.tb_switch, ptr %18, i32 0, i32 20
  %19 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %is_unplugged.i, align 8, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i3 = icmp eq i8 %20, 0
  br i1 %tobool.not.i3, label %if.end.i4, label %if.then10.while.end_crit_edge

if.then10.while.end_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end.i4:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %18, i32 0, i32 5
  %21 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tb.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctl.i, align 8
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %18, i32 0, i32 1, i32 4
  %25 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %26 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %26, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %18, i32 0, i32 1, i32 3
  %27 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %28 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %29 = ptrtoint ptr %port3.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %port3.i, align 4
  %conv.i = zext i8 %30 to i32
  %call4.i = call i32 @tb_cfg_write(ptr noundef %24, ptr noundef nonnull %val, i64 noundef %or.i.i, i32 noundef %conv.i, i32 noundef 1, i32 noundef %.sink.i, i32 noundef 1) #7
  br label %if.end13

if.else:                                          ; preds = %while.body
  %31 = ptrtoint ptr %is_unplugged.i6 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %is_unplugged.i6, align 8, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i7 = icmp eq i8 %32, 0
  br i1 %tobool.not.i7, label %if.end.i16, label %if.else.while.end_crit_edge

if.else.while.end_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end.i16:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %tb1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tb1, align 8
  %ctl.i9 = getelementptr inbounds %struct.tb, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %ctl.i9 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ctl.i9, align 8
  %37 = ptrtoint ptr %route_hi.i.i10 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 8)
  %bf.load.i.i11 = load i64, ptr %route_hi.i.i10, align 4
  %38 = lshr i64 %bf.load.i.i11, 1
  %shl.i.i12 = and i64 %38, 9223372032559808512
  %39 = ptrtoint ptr %route_lo.i.i13 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %route_lo.i.i13, align 8
  %conv2.i.i14 = zext i32 %40 to i64
  %or.i.i15 = or i64 %shl.i.i12, %conv2.i.i14
  %call1.i = call i32 @tb_cfg_write(ptr noundef %36, ptr noundef nonnull %val, i64 noundef %or.i.i15, i32 noundef 0, i32 noundef 2, i32 noundef %.sink.i, i32 noundef 1) #7
  br label %if.end13

if.end13:                                         ; preds = %if.end.i16, %if.end.i4
  %ret.1 = phi i32 [ %call4.i, %if.end.i4 ], [ %call1.i, %if.end.i16 ]
  %tobool14.not = icmp eq i32 %ret.1, 0
  br i1 %tobool14.not, label %if.end13.while.cond_crit_edge, label %if.end13.while.end_crit_edge

if.end13.while.end_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end13.while.cond_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.end:                                        ; preds = %if.end13.while.end_crit_edge, %if.else.while.end_crit_edge, %if.then10.while.end_crit_edge, %parse_line.exit.thread
  %ret.2 = phi i32 [ 0, %parse_line.exit.thread ], [ -19, %if.else.while.end_crit_edge ], [ -19, %if.then10.while.end_crit_edge ], [ %ret.1, %if.end13.while.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #7
  br label %out

out:                                              ; preds = %while.end, %if.end.out_crit_edge
  %ret.3 = phi i32 [ %ret.2, %while.end ], [ -512, %if.end.out_crit_edge ]
  %call.i18 = call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %sw, i32 0, i32 12, i32 22
  %41 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store volatile i64 %call.i18, ptr %last_busy.i, align 8
  %call.i19 = call i32 @__pm_runtime_suspend(ptr noundef %sw, i32 noundef 13) #7
  %42 = ptrtoint ptr %call to i32
  call void @free_pages(i32 noundef %42, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3)
  %cmp = icmp slt i32 %ret.3, 0
  br i1 %cmp, label %out.cleanup_crit_edge, label %cond.false

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cond.false:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %count.addr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %count.addr, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %out.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ %44, %cond.false ], [ %ret.3, %out.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %line) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @validate_and_copy_from_user(ptr noundef %user_buf, ptr nocapture noundef %count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %1, i32 -1226833920) #10, !srcloc !63
  %asmresult = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %cmp = icmp eq i32 %asmresult, 0
  br i1 %cmp, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @get_zeroed_page(i32 noundef 3264) #7
  %3 = inttoptr i32 %call5 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 4096)
  tail call void @__check_object_size(ptr noundef nonnull %3, i32 noundef %6, i1 noundef zeroext false) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.end9.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end9.if.end.i.i_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end9
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %6, i32 -1226833920) #10, !srcloc !64
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !65

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %3, i32 noundef %6) #7
  %8 = tail call i32 @llvm.read_register.i32(metadata !51) #7
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !66
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %user_buf, i32 noundef %6) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #7, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end9.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %6, %if.end9.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %6, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end16, label %if.then11.i.i, !prof !65

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = sub i32 %6, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  tail call void @free_pages(i32 noundef %call5, i32 noundef 0) #7
  br label %cleanup

if.end16:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %6, ptr %count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then11.i.i, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -14 to ptr), %if.then11.i.i ], [ %3, %if.end16 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -14 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end4.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_taint(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_cfg_write(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @switch_regs_show(ptr noundef %s, ptr nocapture noundef readnone %not_used) #0 align 64 {
entry:
  %header.i.i = alloca %struct.tb_cap_any, align 8
  %data.i = alloca [27 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %tb1 = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %tb1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tb1, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #7
  %lock = getelementptr inbounds %struct.tb, ptr %3, i32 0, i32 1
  %call2 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.out_rpm_put_crit_edge

entry.out_rpm_put_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_rpm_put

if.end:                                           ; preds = %entry
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.10) #7
  call void @llvm.lifetime.start.p0(i64 108, ptr nonnull %data.i) #7
  %4 = call ptr @memset(ptr %data.i, i32 255, i32 108)
  %thunderbolt_version.i.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %thunderbolt_version.i.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %bf.load.i.i = load i64, ptr %thunderbolt_version.i.i, align 4
  %bf.cast1.i.i = and i64 %bf.load.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %bf.cast1.i.i)
  %cmp.i.i = icmp eq i64 %bf.cast1.i.i, 32
  %..i = select i1 %cmp.i.i, i32 27, i32 7
  %is_unplugged.i.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %is_unplugged.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_unplugged.i.i, align 8, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i.i, label %tb_sw_read.exit.i, label %if.end.switch_basic_regs_show.exit.thread_crit_edge

if.end.switch_basic_regs_show.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %switch_basic_regs_show.exit.thread

tb_sw_read.exit.i:                                ; preds = %if.end
  %8 = ptrtoint ptr %tb1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tb1, align 8
  %ctl.i.i = getelementptr inbounds %struct.tb, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctl.i.i, align 8
  %12 = lshr i64 %bf.load.i.i, 1
  %shl.i.i.i = and i64 %12, 9223372032559808512
  %route_lo.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %route_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %route_lo.i.i.i, align 8
  %conv2.i.i.i = zext i32 %14 to i64
  %or.i.i.i = or i64 %shl.i.i.i, %conv2.i.i.i
  %call1.i.i = call i32 @tb_cfg_read(ptr noundef %11, ptr noundef nonnull %data.i, i64 noundef %or.i.i.i, i32 noundef 0, i32 noundef 2, i32 noundef 0, i32 noundef %..i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i, label %tb_sw_read.exit.i.for.body.i_crit_edge, label %tb_sw_read.exit.i.switch_basic_regs_show.exit.thread_crit_edge

tb_sw_read.exit.i.switch_basic_regs_show.exit.thread_crit_edge: ; preds = %tb_sw_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %switch_basic_regs_show.exit.thread

tb_sw_read.exit.i.for.body.i_crit_edge:           ; preds = %tb_sw_read.exit.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %tb_sw_read.exit.i.for.body.i_crit_edge
  %i.016.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %tb_sw_read.exit.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [27 x i32], ptr %data.i, i32 0, i32 %i.016.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.11, i32 noundef %i.016.i, i32 noundef %i.016.i, i32 noundef %16) #7
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %..i
  br i1 %exitcond.not.i, label %if.end6, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

switch_basic_regs_show.exit.thread:               ; preds = %tb_sw_read.exit.i.switch_basic_regs_show.exit.thread_crit_edge, %if.end.switch_basic_regs_show.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -19, %if.end.switch_basic_regs_show.exit.thread_crit_edge ], [ %call1.i.i, %tb_sw_read.exit.i.switch_basic_regs_show.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %data.i) #7
  br label %out_unlock

if.end6:                                          ; preds = %for.body.i
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %data.i) #7
  %call.i21 = call i32 @tb_switch_next_cap(ptr noundef %1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %cmp6.i = icmp sgt i32 %call.i21, 0
  br i1 %cmp6.i, label %while.body.lr.ph.i, label %if.end6.out_unlock_crit_edge

if.end6.out_unlock_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

while.body.lr.ph.i:                               ; preds = %if.end6
  %17 = getelementptr inbounds %struct.tb_cap_extended_long, ptr %header.i.i, i32 0, i32 1
  %18 = getelementptr inbounds %struct.tb_cap_extended_long, ptr %header.i.i, i32 0, i32 2
  %19 = getelementptr inbounds %struct.tb_cap_extended_long, ptr %header.i.i, i32 0, i32 3
  %20 = getelementptr inbounds %struct.tb_cap_extended_long, ptr %header.i.i, i32 0, i32 4
  %21 = getelementptr inbounds %struct.tb_cap_extended_long, ptr %header.i.i, i32 0, i32 5
  br label %while.body.i

while.body.i:                                     ; preds = %switch_cap_show.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %cap.07.i = phi i32 [ %call.i21, %while.body.lr.ph.i ], [ %call1.i, %switch_cap_show.exit.i.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %header.i.i) #7
  %22 = ptrtoint ptr %header.i.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 -1, ptr %header.i.i, align 8
  %23 = ptrtoint ptr %is_unplugged.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %is_unplugged.i.i, align 8, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i.i.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i.i.i, label %tb_sw_read.exit.i.i, label %while.body.i.if.then.i.i_crit_edge

while.body.i.if.then.i.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

tb_sw_read.exit.i.i:                              ; preds = %while.body.i
  %25 = ptrtoint ptr %tb1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tb1, align 8
  %ctl.i.i.i = getelementptr inbounds %struct.tb, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %ctl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctl.i.i.i, align 8
  %29 = ptrtoint ptr %thunderbolt_version.i.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 8)
  %bf.load.i.i.i.i = load i64, ptr %thunderbolt_version.i.i, align 4
  %30 = lshr i64 %bf.load.i.i.i.i, 1
  %shl.i.i.i.i = and i64 %30, 9223372032559808512
  %31 = ptrtoint ptr %route_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %route_lo.i.i.i, align 8
  %conv2.i.i.i.i = zext i32 %32 to i64
  %or.i.i.i.i = or i64 %shl.i.i.i.i, %conv2.i.i.i.i
  %call1.i.i.i = call i32 @tb_cfg_read(ptr noundef %28, ptr noundef nonnull %header.i.i, i64 noundef %or.i.i.i.i, i32 noundef 0, i32 noundef 2, i32 noundef %cap.07.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i22 = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i22, label %if.end.i.i, label %tb_sw_read.exit.i.i.if.then.i.i_crit_edge

tb_sw_read.exit.i.i.if.then.i.i_crit_edge:        ; preds = %tb_sw_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %tb_sw_read.exit.i.i.if.then.i.i_crit_edge, %while.body.i.if.then.i.i_crit_edge
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.12, i32 noundef %cap.07.i) #7
  br label %switch_cap_show.exit.i

if.end.i.i:                                       ; preds = %tb_sw_read.exit.i.i
  %33 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %17, align 1
  %35 = zext i8 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %34, label %if.else24.i.i [
    i8 5, label %if.then3.i.i
    i8 3, label %if.end.i.i.if.end28.i.i_crit_edge
  ]

if.end.i.i.if.end28.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  %36 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool5.not.i.i = icmp eq i8 %37, 0
  br i1 %tobool5.not.i.i, label %if.then6.i.i, label %if.else.i.i

if.then6.i.i:                                     ; preds = %if.then3.i.i
  %add.i.i = add nuw i32 %cap.07.i, 1
  %38 = ptrtoint ptr %is_unplugged.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %is_unplugged.i.i, align 8, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i45.i.i = icmp eq i8 %39, 0
  br i1 %tobool.not.i45.i.i, label %tb_sw_read.exit57.i.i, label %if.then6.i.i.if.then9.i.i_crit_edge

if.then6.i.i.if.then9.i.i_crit_edge:              ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9.i.i

tb_sw_read.exit57.i.i:                            ; preds = %if.then6.i.i
  %40 = ptrtoint ptr %tb1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tb1, align 8
  %ctl.i47.i.i = getelementptr inbounds %struct.tb, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %ctl.i47.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ctl.i47.i.i, align 8
  %44 = ptrtoint ptr %thunderbolt_version.i.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 8)
  %bf.load.i.i49.i.i = load i64, ptr %thunderbolt_version.i.i, align 4
  %45 = lshr i64 %bf.load.i.i49.i.i, 1
  %shl.i.i50.i.i = and i64 %45, 9223372032559808512
  %46 = ptrtoint ptr %route_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %route_lo.i.i.i, align 8
  %conv2.i.i52.i.i = zext i32 %47 to i64
  %or.i.i53.i.i = or i64 %shl.i.i50.i.i, %conv2.i.i52.i.i
  %call1.i54.i.i = call i32 @tb_cfg_read(ptr noundef %43, ptr noundef %20, i64 noundef %or.i.i53.i.i, i32 noundef 0, i32 noundef 2, i32 noundef %add.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i54.i.i)
  %tobool8.not.i.i = icmp eq i32 %call1.i54.i.i, 0
  br i1 %tobool8.not.i.i, label %if.end11.i.i, label %tb_sw_read.exit57.i.i.if.then9.i.i_crit_edge

tb_sw_read.exit57.i.i.if.then9.i.i_crit_edge:     ; preds = %tb_sw_read.exit57.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9.i.i

if.then9.i.i:                                     ; preds = %tb_sw_read.exit57.i.i.if.then9.i.i_crit_edge, %if.then6.i.i.if.then9.i.i_crit_edge
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.12, i32 noundef %add.i.i) #7
  br label %switch_cap_show.exit.i

if.end11.i.i:                                     ; preds = %tb_sw_read.exit57.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %21 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %21, align 2
  %conv13.i.i = zext i16 %49 to i32
  br label %if.end16.i.i

if.else.i.i:                                      ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv15.i.i = zext i8 %37 to i32
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.else.i.i, %if.end11.i.i
  %length.0.i.i = phi i32 [ %conv15.i.i, %if.else.i.i ], [ %conv13.i.i, %if.end11.i.i ]
  %50 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %18, align 2
  br label %if.end28.i.i

if.else24.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i = zext i8 %34 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.13, i32 noundef %cap.07.i, i32 noundef %conv.i.i) #7
  br label %switch_cap_show.exit.i

if.end28.i.i:                                     ; preds = %if.end16.i.i, %if.end.i.i.if.end28.i.i_crit_edge
  %length.1.i.i = phi i32 [ %length.0.i.i, %if.end16.i.i ], [ 26, %if.end.i.i.if.end28.i.i_crit_edge ]
  %vsec_id.0.i.i = phi i8 [ %51, %if.end16.i.i ], [ 0, %if.end.i.i.if.end28.i.i_crit_edge ]
  %52 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %17, align 1
  call fastcc void @cap_show(ptr noundef %s, ptr noundef %1, ptr noundef null, i32 noundef %cap.07.i, i8 noundef zeroext %53, i8 noundef zeroext %vsec_id.0.i.i, i32 noundef %length.1.i.i) #7
  br label %switch_cap_show.exit.i

switch_cap_show.exit.i:                           ; preds = %if.end28.i.i, %if.else24.i.i, %if.then9.i.i, %if.then.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %header.i.i) #7
  %call1.i = call i32 @tb_switch_next_cap(ptr noundef %1, i32 noundef %cap.07.i) #7
  %cmp.i = icmp sgt i32 %call1.i, 0
  br i1 %cmp.i, label %switch_cap_show.exit.i.while.body.i_crit_edge, label %switch_cap_show.exit.i.out_unlock_crit_edge

switch_cap_show.exit.i.out_unlock_crit_edge:      ; preds = %switch_cap_show.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

switch_cap_show.exit.i.while.body.i_crit_edge:    ; preds = %switch_cap_show.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

out_unlock:                                       ; preds = %switch_cap_show.exit.i.out_unlock_crit_edge, %if.end6.out_unlock_crit_edge, %switch_basic_regs_show.exit.thread
  %retval.0.i27 = phi i32 [ %retval.0.i.ph, %switch_basic_regs_show.exit.thread ], [ 0, %if.end6.out_unlock_crit_edge ], [ 0, %switch_cap_show.exit.i.out_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #7
  br label %out_rpm_put

out_rpm_put:                                      ; preds = %out_unlock, %entry.out_rpm_put_crit_edge
  %ret.0 = phi i32 [ %retval.0.i27, %out_unlock ], [ -512, %entry.out_rpm_put_crit_edge ]
  %call.i23 = call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 22
  %54 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store volatile i64 %call.i23, ptr %last_busy.i, align 8
  %call.i24 = call i32 @__pm_runtime_suspend(ptr noundef %1, i32 noundef 13) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_cfg_read(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_switch_next_cap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cap_show(ptr noundef %s, ptr nocapture noundef readonly %sw, ptr noundef readonly %port, i32 noundef %cap, i8 noundef zeroext %cap_id, i8 noundef zeroext %vsec_id, i32 noundef %length) unnamed_addr #0 align 64 {
entry:
  %data.i = alloca i32, align 4
  %data = alloca [60 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %port, null
  %sw.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 1
  %port3.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 9
  %is_unplugged.i48 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 20
  %tb.i50 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %route_hi.i.i52 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %route_lo.i.i55 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %conv = zext i8 %cap_id to i32
  %conv12 = zext i8 %vsec_id to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp77 = icmp sgt i32 %length, 0
  br i1 %cmp77, label %entry.while.body_crit_edge, label %entry.cleanup16_crit_edge

entry.cleanup16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup16

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %entry.while.body_crit_edge
  %length.addr.079 = phi i32 [ %sub, %cleanup.while.body_crit_edge ], [ %length, %entry.while.body_crit_edge ]
  %offset.078 = phi i32 [ %add13, %cleanup.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %0 = call i32 @llvm.umin.i32(i32 %length.addr.079, i32 60)
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %data) #7
  %1 = call ptr @memset(ptr %data, i32 255, i32 240)
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  %2 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sw.i, align 4
  %is_unplugged.i = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_unplugged.i, align 8, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.for.body.lr.ph.i_crit_edge

if.then.for.body.lr.ph.i_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph.i

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i32 %offset.078, %cap
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tb.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctl.i, align 8
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %11 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %11, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %13 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %14 = ptrtoint ptr %port3.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %port3.i, align 4
  %conv.i = zext i8 %15 to i32
  %call4.i = call i32 @tb_cfg_read(ptr noundef %9, ptr noundef nonnull %data, i64 noundef %or.i.i, i32 noundef %conv.i, i32 noundef 1, i32 noundef %add, i32 noundef %0) #7
  br label %if.end

if.else:                                          ; preds = %while.body
  %16 = ptrtoint ptr %is_unplugged.i48 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_unplugged.i48, align 8, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i49 = icmp eq i8 %17, 0
  br i1 %tobool.not.i49, label %if.end.i58, label %if.else.for.body.lr.ph.i_crit_edge

if.else.for.body.lr.ph.i_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph.i

if.end.i58:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %add3 = add i32 %offset.078, %cap
  %18 = ptrtoint ptr %tb.i50 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tb.i50, align 8
  %ctl.i51 = getelementptr inbounds %struct.tb, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %ctl.i51 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctl.i51, align 8
  %22 = ptrtoint ptr %route_hi.i.i52 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %bf.load.i.i53 = load i64, ptr %route_hi.i.i52, align 4
  %23 = lshr i64 %bf.load.i.i53, 1
  %shl.i.i54 = and i64 %23, 9223372032559808512
  %24 = ptrtoint ptr %route_lo.i.i55 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %route_lo.i.i55, align 8
  %conv2.i.i56 = zext i32 %25 to i64
  %or.i.i57 = or i64 %shl.i.i54, %conv2.i.i56
  %call1.i = call i32 @tb_cfg_read(ptr noundef %21, ptr noundef nonnull %data, i64 noundef %or.i.i57, i32 noundef 0, i32 noundef 2, i32 noundef %add3, i32 noundef %0) #7
  br label %if.end

if.end:                                           ; preds = %if.end.i58, %if.end.i
  %ret.0 = phi i32 [ %call4.i, %if.end.i ], [ %call1.i, %if.end.i58 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool5.not = icmp eq i32 %ret.0, 0
  br i1 %tobool5.not, label %for.body.lr.ph, label %if.end.for.body.lr.ph.i_crit_edge

if.end.for.body.lr.ph.i_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph.i

for.body.lr.ph:                                   ; preds = %if.end
  %add9 = add i32 %offset.078, %cap
  br label %for.body

for.body.lr.ph.i:                                 ; preds = %if.end.for.body.lr.ph.i_crit_edge, %if.else.for.body.lr.ph.i_crit_edge, %if.then.for.body.lr.ph.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #7
  %26 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %data.i, align 4, !annotation !62
  %add.i = add i32 %offset.078, %cap
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.044.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  br i1 %tobool.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  %27 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sw.i, align 4
  %is_unplugged.i.i = getelementptr inbounds %struct.tb_switch, ptr %28, i32 0, i32 20
  %29 = ptrtoint ptr %is_unplugged.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %is_unplugged.i.i, align 8, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.if.then6.i_crit_edge

if.then.i.if.then6.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %add1.i = add i32 %add.i, %i.044.i
  %tb.i.i = getelementptr inbounds %struct.tb_switch, ptr %28, i32 0, i32 5
  %31 = ptrtoint ptr %tb.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tb.i.i, align 8
  %ctl.i.i = getelementptr inbounds %struct.tb, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctl.i.i, align 8
  %route_hi.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %28, i32 0, i32 1, i32 4
  %35 = ptrtoint ptr %route_hi.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 8)
  %bf.load.i.i.i = load i64, ptr %route_hi.i.i.i, align 4
  %36 = lshr i64 %bf.load.i.i.i, 1
  %shl.i.i.i = and i64 %36, 9223372032559808512
  %route_lo.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %28, i32 0, i32 1, i32 3
  %37 = ptrtoint ptr %route_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %route_lo.i.i.i, align 8
  %conv2.i.i.i = zext i32 %38 to i64
  %or.i.i.i = or i64 %shl.i.i.i, %conv2.i.i.i
  %39 = ptrtoint ptr %port3.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %port3.i, align 4
  %conv.i.i = zext i8 %40 to i32
  %call4.i.i = call i32 @tb_cfg_read(ptr noundef %34, ptr noundef nonnull %data.i, i64 noundef %or.i.i.i, i32 noundef %conv.i.i, i32 noundef 1, i32 noundef %add1.i, i32 noundef 1) #7
  br label %if.end.i62

if.else.i:                                        ; preds = %for.body.i
  %41 = ptrtoint ptr %is_unplugged.i48 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %is_unplugged.i48, align 8, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i30.i = icmp eq i8 %42, 0
  br i1 %tobool.not.i30.i, label %if.end.i39.i, label %if.else.i.if.then6.i_crit_edge

if.else.i.if.then6.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i

if.end.i39.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %add3.i = add i32 %add.i, %i.044.i
  %43 = ptrtoint ptr %tb.i50 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tb.i50, align 8
  %ctl.i32.i = getelementptr inbounds %struct.tb, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %ctl.i32.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctl.i32.i, align 8
  %47 = ptrtoint ptr %route_hi.i.i52 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 8)
  %bf.load.i.i34.i = load i64, ptr %route_hi.i.i52, align 4
  %48 = lshr i64 %bf.load.i.i34.i, 1
  %shl.i.i35.i = and i64 %48, 9223372032559808512
  %49 = ptrtoint ptr %route_lo.i.i55 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %route_lo.i.i55, align 8
  %conv2.i.i37.i = zext i32 %50 to i64
  %or.i.i38.i = or i64 %shl.i.i35.i, %conv2.i.i37.i
  %call1.i.i = call i32 @tb_cfg_read(ptr noundef %46, ptr noundef nonnull %data.i, i64 noundef %or.i.i38.i, i32 noundef 0, i32 noundef 2, i32 noundef %add3.i, i32 noundef 1) #7
  br label %if.end.i62

if.end.i62:                                       ; preds = %if.end.i39.i, %if.end.i.i
  %ret.0.i = phi i32 [ %call4.i.i, %if.end.i.i ], [ %call1.i.i, %if.end.i39.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool5.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool5.not.i, label %if.end9.i, label %if.end.i62.if.then6.i_crit_edge

if.end.i62.if.then6.i_crit_edge:                  ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i62.if.then6.i_crit_edge, %if.else.i.if.then6.i_crit_edge, %if.then.i.if.then6.i_crit_edge
  %add8.i = add i32 %add.i, %i.044.i
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.15, i32 noundef %add8.i) #7
  br label %for.inc.i

if.end9.i:                                        ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #9
  %add10.i = add i32 %i.044.i, %offset.078
  %add11.i = add i32 %add10.i, %cap
  %51 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %data.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.14, i32 noundef %add11.i, i32 noundef %add10.i, i32 noundef %conv, i32 noundef %conv12, i32 noundef %52) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end9.i, %if.then6.i
  %inc.i = add nuw nsw i32 %i.044.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %length.addr.079
  br i1 %exitcond.not.i, label %cap_show_by_dw.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

cap_show_by_dw.exit:                              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #7
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %data) #7
  br label %cleanup16

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.070 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %add10 = add i32 %add9, %i.070
  %add11 = add i32 %i.070, %offset.078
  %arrayidx = getelementptr [60 x i32], ptr %data, i32 0, i32 %i.070
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.14, i32 noundef %add10, i32 noundef %add11, i32 noundef %conv, i32 noundef %conv12, i32 noundef %54) #7
  %inc = add nuw nsw i32 %i.070, 1
  %exitcond.not = icmp eq i32 %inc, %0
  br i1 %exitcond.not, label %cleanup, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.body
  %sub = sub i32 %length.addr.079, %0
  %add13 = add i32 %0, %offset.078
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %data) #7
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.cleanup16_crit_edge

cleanup.cleanup16_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup16

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup16:                                        ; preds = %cleanup.cleanup16_crit_edge, %cap_show_by_dw.exit, %entry.cleanup16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port_regs_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %sw = getelementptr inbounds %struct.tb_port, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sw, align 4
  %call = tail call fastcc i32 @regs_write(ptr noundef %5, ptr noundef %3, ptr noundef %user_buf, i32 noundef %count)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port_regs_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @port_regs_show, ptr noundef %1) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port_regs_show(ptr noundef %s, ptr nocapture noundef readnone %not_used) #0 align 64 {
entry:
  %header.i.i = alloca %struct.tb_cap_any, align 8
  %data.i = alloca [9 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %sw1 = getelementptr inbounds %struct.tb_port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sw1, align 4
  %tb2 = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %tb2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tb2, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #7
  %lock = getelementptr inbounds %struct.tb, ptr %5, i32 0, i32 1
  %call3 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.out_rpm_put_crit_edge

entry.out_rpm_put_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_rpm_put

if.end:                                           ; preds = %entry
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.10) #7
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %data.i) #7
  %6 = call ptr @memset(ptr %data.i, i32 255, i32 36)
  %7 = ptrtoint ptr %sw1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sw1, align 4
  %is_unplugged.i.i = getelementptr inbounds %struct.tb_switch, ptr %8, i32 0, i32 20
  %9 = ptrtoint ptr %is_unplugged.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_unplugged.i.i, align 8, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i.i, label %tb_port_read.exit.i, label %if.end.port_basic_regs_show.exit.thread_crit_edge

if.end.port_basic_regs_show.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %port_basic_regs_show.exit.thread

tb_port_read.exit.i:                              ; preds = %if.end
  %tb.i.i = getelementptr inbounds %struct.tb_switch, ptr %8, i32 0, i32 5
  %11 = ptrtoint ptr %tb.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tb.i.i, align 8
  %ctl.i.i = getelementptr inbounds %struct.tb, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctl.i.i, align 8
  %route_hi.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %8, i32 0, i32 1, i32 4
  %15 = ptrtoint ptr %route_hi.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %bf.load.i.i.i = load i64, ptr %route_hi.i.i.i, align 4
  %16 = lshr i64 %bf.load.i.i.i, 1
  %shl.i.i.i = and i64 %16, 9223372032559808512
  %route_lo.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %8, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %route_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %route_lo.i.i.i, align 8
  %conv2.i.i.i = zext i32 %18 to i64
  %or.i.i.i = or i64 %shl.i.i.i, %conv2.i.i.i
  %port3.i.i = getelementptr inbounds %struct.tb_port, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %port3.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %port3.i.i, align 4
  %conv.i.i = zext i8 %20 to i32
  %call4.i.i = call i32 @tb_cfg_read(ptr noundef %14, ptr noundef nonnull %data.i, i64 noundef %or.i.i.i, i32 noundef %conv.i.i, i32 noundef 1, i32 noundef 0, i32 noundef 9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not.i, label %if.end7, label %tb_port_read.exit.i.port_basic_regs_show.exit.thread_crit_edge

tb_port_read.exit.i.port_basic_regs_show.exit.thread_crit_edge: ; preds = %tb_port_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %port_basic_regs_show.exit.thread

port_basic_regs_show.exit.thread:                 ; preds = %tb_port_read.exit.i.port_basic_regs_show.exit.thread_crit_edge, %if.end.port_basic_regs_show.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -19, %if.end.port_basic_regs_show.exit.thread_crit_edge ], [ %call4.i.i, %tb_port_read.exit.i.port_basic_regs_show.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %data.i) #7
  br label %out_unlock

if.end7:                                          ; preds = %tb_port_read.exit.i
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 0, i32 noundef %22) #7
  %arrayidx.1.i = getelementptr inbounds [9 x i32], ptr %data.i, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.1.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.11, i32 noundef 1, i32 noundef 1, i32 noundef %24) #7
  %arrayidx.2.i = getelementptr inbounds [9 x i32], ptr %data.i, i32 0, i32 2
  %25 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.2.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.11, i32 noundef 2, i32 noundef 2, i32 noundef %26) #7
  %arrayidx.3.i = getelementptr inbounds [9 x i32], ptr %data.i, i32 0, i32 3
  %27 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.3.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.11, i32 noundef 3, i32 noundef 3, i32 noundef %28) #7
  %arrayidx.4.i = getelementptr inbounds [9 x i32], ptr %data.i, i32 0, i32 4
  %29 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.4.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.11, i32 noundef 4, i32 noundef 4, i32 noundef %30) #7
  %arrayidx.5.i = getelementptr inbounds [9 x i32], ptr %data.i, i32 0, i32 5
  %31 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.5.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.11, i32 noundef 5, i32 noundef 5, i32 noundef %32) #7
  %arrayidx.6.i = getelementptr inbounds [9 x i32], ptr %data.i, i32 0, i32 6
  %33 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.6.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.11, i32 noundef 6, i32 noundef 6, i32 noundef %34) #7
  %arrayidx.7.i = getelementptr inbounds [9 x i32], ptr %data.i, i32 0, i32 7
  %35 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.7.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.11, i32 noundef 7, i32 noundef 7, i32 noundef %36) #7
  %arrayidx.8.i = getelementptr inbounds [9 x i32], ptr %data.i, i32 0, i32 8
  %37 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.8.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.11, i32 noundef 8, i32 noundef 8, i32 noundef %38) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %data.i) #7
  %call.i22 = call i32 @tb_port_next_cap(ptr noundef %1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %cmp9.i = icmp sgt i32 %call.i22, 0
  br i1 %cmp9.i, label %while.body.lr.ph.i, label %if.end7.out_unlock_crit_edge

if.end7.out_unlock_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

while.body.lr.ph.i:                               ; preds = %if.end7
  %39 = getelementptr inbounds %struct.tb_cap_extended_long, ptr %header.i.i, i32 0, i32 1
  %40 = getelementptr inbounds %struct.tb_cap_extended_long, ptr %header.i.i, i32 0, i32 2
  %41 = getelementptr inbounds %struct.tb_cap_extended_long, ptr %header.i.i, i32 0, i32 3
  %42 = getelementptr inbounds %struct.tb_cap_extended_long, ptr %header.i.i, i32 0, i32 4
  %43 = getelementptr inbounds %struct.tb_cap_extended_long, ptr %header.i.i, i32 0, i32 5
  %tobool.not.i72.i.i = icmp eq ptr %1, null
  %type.i.i.i = getelementptr inbounds %struct.tb_regs_port_header, ptr %1, i32 0, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %port_cap_show.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %cap.010.i = phi i32 [ %call.i22, %while.body.lr.ph.i ], [ %call1.i, %port_cap_show.exit.i.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %header.i.i) #7
  %44 = ptrtoint ptr %header.i.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 -1, ptr %header.i.i, align 8
  %45 = ptrtoint ptr %sw1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sw1, align 4
  %is_unplugged.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %46, i32 0, i32 20
  %47 = ptrtoint ptr %is_unplugged.i.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %is_unplugged.i.i.i, align 8, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i.i.i = icmp eq i8 %48, 0
  br i1 %tobool.not.i.i.i, label %tb_port_read.exit.i.i, label %while.body.i.if.then.i.i_crit_edge

while.body.i.if.then.i.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

tb_port_read.exit.i.i:                            ; preds = %while.body.i
  %tb.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %46, i32 0, i32 5
  %49 = ptrtoint ptr %tb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tb.i.i.i, align 8
  %ctl.i.i.i = getelementptr inbounds %struct.tb, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %ctl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ctl.i.i.i, align 8
  %route_hi.i.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %46, i32 0, i32 1, i32 4
  %53 = ptrtoint ptr %route_hi.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 8)
  %bf.load.i.i.i.i = load i64, ptr %route_hi.i.i.i.i, align 4
  %54 = lshr i64 %bf.load.i.i.i.i, 1
  %shl.i.i.i.i = and i64 %54, 9223372032559808512
  %route_lo.i.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %46, i32 0, i32 1, i32 3
  %55 = ptrtoint ptr %route_lo.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %route_lo.i.i.i.i, align 8
  %conv2.i.i.i.i = zext i32 %56 to i64
  %or.i.i.i.i = or i64 %shl.i.i.i.i, %conv2.i.i.i.i
  %57 = ptrtoint ptr %port3.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %port3.i.i, align 4
  %conv.i.i.i = zext i8 %58 to i32
  %call4.i.i.i = call i32 @tb_cfg_read(ptr noundef %52, ptr noundef nonnull %header.i.i, i64 noundef %or.i.i.i.i, i32 noundef %conv.i.i.i, i32 noundef 1, i32 noundef %cap.010.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool.not.i.i23 = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool.not.i.i23, label %if.end.i.i, label %tb_port_read.exit.i.i.if.then.i.i_crit_edge

tb_port_read.exit.i.i.if.then.i.i_crit_edge:      ; preds = %tb_port_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %tb_port_read.exit.i.i.if.then.i.i_crit_edge, %while.body.i.if.then.i.i_crit_edge
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.12, i32 noundef %cap.010.i) #7
  br label %port_cap_show.exit.i

if.end.i.i:                                       ; preds = %tb_port_read.exit.i.i
  %59 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %39, align 1
  %61 = zext i8 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %60, label %sw.default.i.i [
    i8 1, label %if.end.i.i.sw.epilog.i.i_crit_edge
    i8 3, label %sw.bb2.i.i
    i8 2, label %sw.bb3.i.i
    i8 4, label %sw.bb4.i.i
    i8 5, label %sw.bb29.i.i
    i8 6, label %sw.bb46.i.i
  ]

if.end.i.i.sw.epilog.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.bb2.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.bb3.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.bb4.i.i:                                       ; preds = %if.end.i.i
  br i1 %tobool.not.i72.i.i, label %sw.bb4.i.i.if.else23.i.i_crit_edge, label %tb_port_is_pcie_down.exit.i.i

sw.bb4.i.i.if.else23.i.i_crit_edge:               ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else23.i.i

tb_port_is_pcie_down.exit.i.i:                    ; preds = %sw.bb4.i.i
  %62 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 12)
  %bf.load.i.i.i24 = load i96, ptr %type.i.i.i, align 4
  %63 = trunc i96 %bf.load.i.i.i24 to i64
  %trunc.i = and i64 %63, -1099511627776
  call void @__sanitizer_cov_trace_switch(i64 %trunc.i, ptr @__sancov_gen_cov_switch_values.22)
  switch i64 %trunc.i, label %tb_port_is_pcie_down.exit.i.i.if.else23.i.i_crit_edge [
    i64 1153204079095185408, label %tb_port_is_pcie_down.exit.i.i.sw.epilog.i.i_crit_edge
    i64 1153205178606813184, label %tb_port_is_pcie_down.exit.i.i.sw.epilog.i.i_crit_edge31
    i64 1009088891019329536, label %sw.epilog.i.fold.split.i
    i64 1009089990530957312, label %sw.epilog.i.fold.split6.i
    i64 2306125583702032384, label %sw.epilog.i.fold.split7.i
    i64 2306126683213660160, label %sw.epilog.i.fold.split8.i
  ]

tb_port_is_pcie_down.exit.i.i.sw.epilog.i.i_crit_edge31: ; preds = %tb_port_is_pcie_down.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

tb_port_is_pcie_down.exit.i.i.sw.epilog.i.i_crit_edge: ; preds = %tb_port_is_pcie_down.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

tb_port_is_pcie_down.exit.i.i.if.else23.i.i_crit_edge: ; preds = %tb_port_is_pcie_down.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else23.i.i

if.else23.i.i:                                    ; preds = %tb_port_is_pcie_down.exit.i.i.if.else23.i.i_crit_edge, %sw.bb4.i.i.if.else23.i.i_crit_edge
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.16, i32 noundef %cap.010.i, i32 noundef 4) #7
  br label %port_cap_show.exit.i

sw.bb29.i.i:                                      ; preds = %if.end.i.i
  %64 = ptrtoint ptr %41 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool31.not.i.i = icmp eq i8 %65, 0
  br i1 %tobool31.not.i.i, label %if.then32.i.i, label %if.else41.i.i

if.then32.i.i:                                    ; preds = %sw.bb29.i.i
  %add.i.i = add nuw i32 %cap.010.i, 1
  %66 = ptrtoint ptr %sw1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sw1, align 4
  %is_unplugged.i99.i.i = getelementptr inbounds %struct.tb_switch, ptr %67, i32 0, i32 20
  %68 = ptrtoint ptr %is_unplugged.i99.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %is_unplugged.i99.i.i, align 8, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i100.i.i = icmp eq i8 %69, 0
  br i1 %tobool.not.i100.i.i, label %tb_port_read.exit114.i.i, label %if.then32.i.i.if.then35.i.i_crit_edge

if.then32.i.i.if.then35.i.i_crit_edge:            ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then35.i.i

tb_port_read.exit114.i.i:                         ; preds = %if.then32.i.i
  %tb.i101.i.i = getelementptr inbounds %struct.tb_switch, ptr %67, i32 0, i32 5
  %70 = ptrtoint ptr %tb.i101.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %tb.i101.i.i, align 8
  %ctl.i102.i.i = getelementptr inbounds %struct.tb, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %ctl.i102.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ctl.i102.i.i, align 8
  %route_hi.i.i103.i.i = getelementptr inbounds %struct.tb_switch, ptr %67, i32 0, i32 1, i32 4
  %74 = ptrtoint ptr %route_hi.i.i103.i.i to i32
  call void @__asan_loadN_noabort(i32 %74, i32 8)
  %bf.load.i.i104.i.i = load i64, ptr %route_hi.i.i103.i.i, align 4
  %75 = lshr i64 %bf.load.i.i104.i.i, 1
  %shl.i.i105.i.i = and i64 %75, 9223372032559808512
  %route_lo.i.i106.i.i = getelementptr inbounds %struct.tb_switch, ptr %67, i32 0, i32 1, i32 3
  %76 = ptrtoint ptr %route_lo.i.i106.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %route_lo.i.i106.i.i, align 8
  %conv2.i.i107.i.i = zext i32 %77 to i64
  %or.i.i108.i.i = or i64 %shl.i.i105.i.i, %conv2.i.i107.i.i
  %78 = ptrtoint ptr %port3.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %port3.i.i, align 4
  %conv.i110.i.i = zext i8 %79 to i32
  %call4.i111.i.i = call i32 @tb_cfg_read(ptr noundef %73, ptr noundef %42, i64 noundef %or.i.i108.i.i, i32 noundef %conv.i110.i.i, i32 noundef 1, i32 noundef %add.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i111.i.i)
  %tobool34.not.i.i = icmp eq i32 %call4.i111.i.i, 0
  br i1 %tobool34.not.i.i, label %if.end37.i.i, label %tb_port_read.exit114.i.i.if.then35.i.i_crit_edge

tb_port_read.exit114.i.i.if.then35.i.i_crit_edge: ; preds = %tb_port_read.exit114.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then35.i.i

if.then35.i.i:                                    ; preds = %tb_port_read.exit114.i.i.if.then35.i.i_crit_edge, %if.then32.i.i.if.then35.i.i_crit_edge
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.12, i32 noundef %add.i.i) #7
  br label %port_cap_show.exit.i

if.end37.i.i:                                     ; preds = %tb_port_read.exit114.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %43 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %43, align 2
  %conv39.i.i = zext i16 %81 to i32
  %82 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %40, align 2
  br label %sw.epilog.i.i

if.else41.i.i:                                    ; preds = %sw.bb29.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv43.i.i = zext i8 %65 to i32
  %84 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %40, align 2
  br label %sw.epilog.i.i

sw.bb46.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.default.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i25 = zext i8 %60 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.16, i32 noundef %cap.010.i, i32 noundef %conv.i.i25) #7
  br label %port_cap_show.exit.i

sw.epilog.i.fold.split.i:                         ; preds = %tb_port_is_pcie_down.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.epilog.i.fold.split6.i:                        ; preds = %tb_port_is_pcie_down.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.epilog.i.fold.split7.i:                        ; preds = %tb_port_is_pcie_down.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.epilog.i.fold.split8.i:                        ; preds = %tb_port_is_pcie_down.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.epilog.i.fold.split8.i, %sw.epilog.i.fold.split7.i, %sw.epilog.i.fold.split6.i, %sw.epilog.i.fold.split.i, %sw.bb46.i.i, %if.else41.i.i, %if.end37.i.i, %tb_port_is_pcie_down.exit.i.i.sw.epilog.i.i_crit_edge, %tb_port_is_pcie_down.exit.i.i.sw.epilog.i.i_crit_edge31, %sw.bb3.i.i, %sw.bb2.i.i, %if.end.i.i.sw.epilog.i.i_crit_edge
  %vsec_id.0.i.i = phi i8 [ 0, %sw.bb46.i.i ], [ %85, %if.else41.i.i ], [ %83, %if.end37.i.i ], [ 0, %sw.bb3.i.i ], [ 0, %sw.bb2.i.i ], [ 0, %if.end.i.i.sw.epilog.i.i_crit_edge ], [ 0, %tb_port_is_pcie_down.exit.i.i.sw.epilog.i.i_crit_edge ], [ 0, %tb_port_is_pcie_down.exit.i.i.sw.epilog.i.i_crit_edge31 ], [ 0, %sw.epilog.i.fold.split.i ], [ 0, %sw.epilog.i.fold.split6.i ], [ 0, %sw.epilog.i.fold.split7.i ], [ 0, %sw.epilog.i.fold.split8.i ]
  %length.0.i.i = phi i32 [ 20, %sw.bb46.i.i ], [ %conv43.i.i, %if.else41.i.i ], [ %conv39.i.i, %if.end37.i.i ], [ 2, %sw.bb3.i.i ], [ 8, %sw.bb2.i.i ], [ 3, %if.end.i.i.sw.epilog.i.i_crit_edge ], [ 1, %tb_port_is_pcie_down.exit.i.i.sw.epilog.i.i_crit_edge ], [ 1, %tb_port_is_pcie_down.exit.i.i.sw.epilog.i.i_crit_edge31 ], [ 8, %sw.epilog.i.fold.split.i ], [ 8, %sw.epilog.i.fold.split6.i ], [ 5, %sw.epilog.i.fold.split7.i ], [ 5, %sw.epilog.i.fold.split8.i ]
  %86 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %39, align 1
  call fastcc void @cap_show(ptr noundef %s, ptr noundef null, ptr noundef %1, i32 noundef %cap.010.i, i8 noundef zeroext %87, i8 noundef zeroext %vsec_id.0.i.i, i32 noundef %length.0.i.i) #7
  br label %port_cap_show.exit.i

port_cap_show.exit.i:                             ; preds = %sw.epilog.i.i, %sw.default.i.i, %if.then35.i.i, %if.else23.i.i, %if.then.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %header.i.i) #7
  %call1.i = call i32 @tb_port_next_cap(ptr noundef %1, i32 noundef %cap.010.i) #7
  %cmp.i = icmp sgt i32 %call1.i, 0
  br i1 %cmp.i, label %port_cap_show.exit.i.while.body.i_crit_edge, label %port_cap_show.exit.i.out_unlock_crit_edge

port_cap_show.exit.i.out_unlock_crit_edge:        ; preds = %port_cap_show.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

port_cap_show.exit.i.while.body.i_crit_edge:      ; preds = %port_cap_show.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

out_unlock:                                       ; preds = %port_cap_show.exit.i.out_unlock_crit_edge, %if.end7.out_unlock_crit_edge, %port_basic_regs_show.exit.thread
  %retval.0.i30 = phi i32 [ %retval.0.i.ph, %port_basic_regs_show.exit.thread ], [ 0, %if.end7.out_unlock_crit_edge ], [ 0, %port_cap_show.exit.i.out_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #7
  br label %out_rpm_put

out_rpm_put:                                      ; preds = %out_unlock, %entry.out_rpm_put_crit_edge
  %ret.0 = phi i32 [ %retval.0.i30, %out_unlock ], [ -512, %entry.out_rpm_put_crit_edge ]
  %call.i26 = call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 22
  %88 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %88)
  store volatile i64 %call.i26, ptr %last_busy.i, align 8
  %call.i27 = call i32 @__pm_runtime_suspend(ptr noundef %3, i32 noundef 13) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_port_next_cap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @path_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @path_show, ptr noundef %1) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @path_show(ptr noundef %s, ptr nocapture noundef readnone %not_used) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %sw1 = getelementptr inbounds %struct.tb_port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sw1, align 4
  %tb2 = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %tb2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tb2, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #7
  %lock = getelementptr inbounds %struct.tb, ptr %5, i32 0, i32 1
  %call3 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.out_rpm_put_crit_edge

entry.out_rpm_put_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_rpm_put

if.end:                                           ; preds = %entry
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.17) #7
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.tb_port_is_nhi.exit48.thread_crit_edge, label %land.lhs.true.i

if.end.tb_port_is_nhi.exit48.thread_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %tb_port_is_nhi.exit48.thread

land.lhs.true.i:                                  ; preds = %if.end
  %port1.i = getelementptr inbounds %struct.tb_port, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %port1.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %port1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not.i = icmp eq i8 %7, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.tb_port_is_nhi.exit_crit_edge, label %tb_port_is_null.exit

land.lhs.true.i.tb_port_is_nhi.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tb_port_is_nhi.exit

tb_port_is_null.exit:                             ; preds = %land.lhs.true.i
  %type.i = getelementptr inbounds %struct.tb_regs_port_header, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 12)
  %bf.load.i = load i96, ptr %type.i, align 4
  %9 = and i96 %bf.load.i, 18446742974197923840
  %cmp.i = icmp eq i96 %9, 1099511627776
  br i1 %cmp.i, label %tb_port_is_null.exit.if.then6_crit_edge, label %tb_port_is_null.exit.tb_port_is_nhi.exit_crit_edge

tb_port_is_null.exit.tb_port_is_nhi.exit_crit_edge: ; preds = %tb_port_is_null.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %tb_port_is_nhi.exit

tb_port_is_null.exit.if.then6_crit_edge:          ; preds = %tb_port_is_null.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

tb_port_is_nhi.exit:                              ; preds = %tb_port_is_null.exit.tb_port_is_nhi.exit_crit_edge, %land.lhs.true.i.tb_port_is_nhi.exit_crit_edge
  %type.i39 = getelementptr inbounds %struct.tb_regs_port_header, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %type.i39 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 12)
  %bf.load.i40 = load i96, ptr %type.i39, align 4
  %11 = and i96 %bf.load.i40, 18446742974197923840
  %cmp.i41 = icmp eq i96 %11, 2199023255552
  br i1 %cmp.i41, label %tb_port_is_nhi.exit.if.then6_crit_edge, label %tb_port_is_nhi.exit.tb_port_is_nhi.exit48_crit_edge

tb_port_is_nhi.exit.tb_port_is_nhi.exit48_crit_edge: ; preds = %tb_port_is_nhi.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %tb_port_is_nhi.exit48

tb_port_is_nhi.exit.if.then6_crit_edge:           ; preds = %tb_port_is_nhi.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

if.then6:                                         ; preds = %tb_port_is_nhi.exit.if.then6_crit_edge, %tb_port_is_null.exit.if.then6_crit_edge
  %call7 = tail call fastcc i32 @path_show_one(ptr noundef nonnull %1, ptr noundef %s, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then6.tb_port_is_nhi.exit48_crit_edge, label %if.then6.out_unlock_crit_edge

if.then6.out_unlock_crit_edge:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.then6.tb_port_is_nhi.exit48_crit_edge:         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %tb_port_is_nhi.exit48

tb_port_is_nhi.exit48:                            ; preds = %if.then6.tb_port_is_nhi.exit48_crit_edge, %tb_port_is_nhi.exit.tb_port_is_nhi.exit48_crit_edge
  %type.i44 = getelementptr inbounds %struct.tb_regs_port_header, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %type.i44 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 12)
  %bf.load.i45 = load i96, ptr %type.i44, align 4
  %13 = and i96 %bf.load.i45, 18446742974197923840
  %cmp.i46 = icmp eq i96 %13, 2199023255552
  %spec.select = select i1 %cmp.i46, i32 1, i32 8
  br label %tb_port_is_nhi.exit48.thread

tb_port_is_nhi.exit48.thread:                     ; preds = %tb_port_is_nhi.exit48, %if.end.tb_port_is_nhi.exit48.thread_crit_edge
  %14 = phi i32 [ 8, %if.end.tb_port_is_nhi.exit48.thread_crit_edge ], [ %spec.select, %tb_port_is_nhi.exit48 ]
  %max_in_hop_id = getelementptr inbounds %struct.tb_regs_port_header, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %max_in_hop_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load52 = load i32, ptr %max_in_hop_id, align 4
  %bf.lshr53 = lshr i32 %bf.load52, 21
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %bf.lshr53)
  %cmp.not54 = icmp ugt i32 %14, %bf.lshr53
  br i1 %cmp.not54, label %tb_port_is_nhi.exit48.thread.out_unlock_crit_edge, label %tb_port_is_nhi.exit48.thread.for.body_crit_edge

tb_port_is_nhi.exit48.thread.for.body_crit_edge:  ; preds = %tb_port_is_nhi.exit48.thread
  br label %for.body

tb_port_is_nhi.exit48.thread.out_unlock_crit_edge: ; preds = %tb_port_is_nhi.exit48.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.055, 1
  %16 = ptrtoint ptr %max_in_hop_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load = load i32, ptr %max_in_hop_id, align 4
  %bf.lshr = lshr i32 %bf.load, 21
  %cmp.not.not = icmp ult i32 %i.055, %bf.lshr
  br i1 %cmp.not.not, label %for.cond.for.body_crit_edge, label %for.cond.out_unlock_crit_edge

for.cond.out_unlock_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %tb_port_is_nhi.exit48.thread.for.body_crit_edge
  %i.055 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ %14, %tb_port_is_nhi.exit48.thread.for.body_crit_edge ]
  %call13 = tail call fastcc i32 @path_show_one(ptr noundef %1, ptr noundef %s, i32 noundef %i.055)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %for.cond, label %for.body.out_unlock_crit_edge

for.body.out_unlock_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

out_unlock:                                       ; preds = %for.body.out_unlock_crit_edge, %for.cond.out_unlock_crit_edge, %tb_port_is_nhi.exit48.thread.out_unlock_crit_edge, %if.then6.out_unlock_crit_edge
  %ret.2 = phi i32 [ %call7, %if.then6.out_unlock_crit_edge ], [ 0, %tb_port_is_nhi.exit48.thread.out_unlock_crit_edge ], [ %call13, %for.body.out_unlock_crit_edge ], [ 0, %for.cond.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %out_rpm_put

out_rpm_put:                                      ; preds = %out_unlock, %entry.out_rpm_put_crit_edge
  %ret.3 = phi i32 [ %ret.2, %out_unlock ], [ -512, %entry.out_rpm_put_crit_edge ]
  %call.i49 = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 22
  %17 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store volatile i64 %call.i49, ptr %last_busy.i, align 8
  %call.i50 = tail call i32 @__pm_runtime_suspend(ptr noundef %3, i32 noundef 13) #7
  ret i32 %ret.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @path_show_one(ptr nocapture noundef readonly %port, ptr noundef %s, i32 noundef %hopid) unnamed_addr #0 align 64 {
entry:
  %data = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #7
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !62
  %1 = getelementptr inbounds [2 x i32], ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !62
  %mul = shl i32 %hopid, 1
  %sw.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 1
  %3 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sw.i, align 4
  %is_unplugged.i = getelementptr inbounds %struct.tb_switch, ptr %4, i32 0, i32 20
  %5 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_unplugged.i, align 8, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %tb_port_read.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

tb_port_read.exit:                                ; preds = %entry
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %4, i32 0, i32 5
  %7 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tb.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctl.i, align 8
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %4, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %12 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %12, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %4, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %14 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %port3.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 9
  %15 = ptrtoint ptr %port3.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %port3.i, align 4
  %conv.i = zext i8 %16 to i32
  %call4.i = call i32 @tb_cfg_read(ptr noundef %10, ptr noundef nonnull %data, i64 noundef %or.i.i, i32 noundef %conv.i, i32 noundef 0, i32 noundef %mul, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %for.body.preheader, label %tb_port_read.exit.if.then_crit_edge

tb_port_read.exit.if.then_crit_edge:              ; preds = %tb_port_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.body.preheader:                               ; preds = %tb_port_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.18, i32 noundef %mul, i32 noundef 0, i32 noundef %hopid, i32 noundef %18) #7
  %add.1 = or i32 %mul, 1
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.18, i32 noundef %add.1, i32 noundef 1, i32 noundef %hopid, i32 noundef %20) #7
  br label %cleanup

if.then:                                          ; preds = %tb_port_read.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i16 = phi i32 [ %call4.i, %tb_port_read.exit.if.then_crit_edge ], [ -19, %entry.if.then_crit_edge ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.15, i32 noundef %mul) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.body.preheader
  %retval.0 = phi i32 [ %retval.0.i16, %if.then ], [ 0, %for.body.preheader ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @counters_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %v.i = alloca [5 x i32], align 4
  %count.addr = alloca i32, align 4
  %line = alloca ptr, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %count.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %count, ptr %count.addr, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private, align 8
  %sw1 = getelementptr inbounds %struct.tb_port, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %sw1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sw1, align 4
  %tb3 = getelementptr inbounds %struct.tb_switch, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %tb3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tb3, align 8
  %call = call fastcc ptr @validate_and_copy_from_user(ptr noundef %user_buf, ptr noundef nonnull %count.addr)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #7
  %lock = getelementptr inbounds %struct.tb, ptr %8, i32 0, i32 1
  %call7 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end9, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end9:                                          ; preds = %if.end
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %call, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %11)
  %cmp = icmp eq i8 %11, 10
  br i1 %cmp, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end9
  %max_counters.i = getelementptr inbounds %struct.tb_regs_port_header, ptr %4, i32 0, i32 2
  %12 = ptrtoint ptr %max_counters.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 12)
  %bf.load.i = load i96, ptr %max_counters.i, align 4
  %bf.lshr.i = lshr i96 %bf.load.i, 77
  %13 = trunc i96 %bf.lshr.i to i32
  %bf.cast.i = and i32 %13, 2047
  %14 = mul nuw nsw i32 %bf.cast.i, 12
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #11
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.then11.if.end18_crit_edge, label %if.end.i

if.then11.if.end18_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.end.i:                                         ; preds = %if.then11
  %15 = ptrtoint ptr %sw1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sw1, align 4
  %is_unplugged.i.i = getelementptr inbounds %struct.tb_switch, ptr %16, i32 0, i32 20
  %17 = ptrtoint ptr %is_unplugged.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %is_unplugged.i.i, align 8, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.tb_port_write.exit.i_crit_edge

if.end.i.tb_port_write.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tb_port_write.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %max_counters.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 12)
  %bf.load3.i = load i96, ptr %max_counters.i, align 4
  %bf.lshr4.i = lshr i96 %bf.load3.i, 77
  %20 = trunc i96 %bf.lshr4.i to i32
  %bf.cast6.i = and i32 %20, 2047
  %mul7.i = mul nuw nsw i32 %bf.cast6.i, 3
  %tb.i.i = getelementptr inbounds %struct.tb_switch, ptr %16, i32 0, i32 5
  %21 = ptrtoint ptr %tb.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tb.i.i, align 8
  %ctl.i.i = getelementptr inbounds %struct.tb, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctl.i.i, align 8
  %route_hi.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %16, i32 0, i32 1, i32 4
  %25 = ptrtoint ptr %route_hi.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %bf.load.i.i.i = load i64, ptr %route_hi.i.i.i, align 4
  %26 = lshr i64 %bf.load.i.i.i, 1
  %shl.i.i.i = and i64 %26, 9223372032559808512
  %route_lo.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %16, i32 0, i32 1, i32 3
  %27 = ptrtoint ptr %route_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %route_lo.i.i.i, align 8
  %conv2.i.i.i = zext i32 %28 to i64
  %or.i.i.i = or i64 %shl.i.i.i, %conv2.i.i.i
  %port3.i.i = getelementptr inbounds %struct.tb_port, ptr %4, i32 0, i32 9
  %29 = ptrtoint ptr %port3.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %port3.i.i, align 4
  %conv.i.i = zext i8 %30 to i32
  %call4.i.i = tail call i32 @tb_cfg_write(ptr noundef %24, ptr noundef nonnull %call8.i.i.i, i64 noundef %or.i.i.i, i32 noundef %conv.i.i, i32 noundef 3, i32 noundef 0, i32 noundef %mul7.i) #7
  br label %tb_port_write.exit.i

tb_port_write.exit.i:                             ; preds = %if.end.i.i, %if.end.i.tb_port_write.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call4.i.i, %if.end.i.i ], [ -19, %if.end.i.tb_port_write.exit.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #7
  br label %if.end18

if.else:                                          ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %line) #7
  %31 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call, ptr %line, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %32 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %val, align 4, !annotation !62
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %v.i) #7
  %33 = call ptr @memset(ptr %v.i, i32 255, i32 20)
  %call.i4258 = call ptr @strsep(ptr noundef nonnull %line, ptr noundef nonnull @.str.8) #7
  %tobool.not.i4359 = icmp eq ptr %call.i4258, null
  br i1 %tobool.not.i4359, label %if.else.parse_line.exit.thread_crit_edge, label %if.end.i45.lr.ph

if.else.parse_line.exit.thread_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %parse_line.exit.thread

if.end.i45.lr.ph:                                 ; preds = %if.else
  %34 = getelementptr inbounds [5 x i32], ptr %v.i, i32 0, i32 4
  %35 = getelementptr inbounds [5 x i32], ptr %v.i, i32 0, i32 3
  %36 = getelementptr inbounds [5 x i32], ptr %v.i, i32 0, i32 2
  %37 = getelementptr inbounds [5 x i32], ptr %v.i, i32 0, i32 1
  %port3.i = getelementptr inbounds %struct.tb_port, ptr %4, i32 0, i32 9
  br label %if.end.i45

while.cond:                                       ; preds = %tb_port_write.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %v.i) #7
  %38 = call ptr @memset(ptr %v.i, i32 255, i32 20)
  %call.i42 = call ptr @strsep(ptr noundef nonnull %line, ptr noundef nonnull @.str.8) #7
  %tobool.not.i43 = icmp eq ptr %call.i42, null
  br i1 %tobool.not.i43, label %while.cond.parse_line.exit.thread_crit_edge, label %while.cond.if.end.i45_crit_edge

while.cond.if.end.i45_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i45

while.cond.parse_line.exit.thread_crit_edge:      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %parse_line.exit.thread

if.end.i45:                                       ; preds = %while.cond.if.end.i45_crit_edge, %if.end.i45.lr.ph
  %call.i4261 = phi ptr [ %call.i4258, %if.end.i45.lr.ph ], [ %call.i42, %while.cond.if.end.i45_crit_edge ]
  %ret.060 = phi i32 [ -22, %if.end.i45.lr.ph ], [ 0, %while.cond.if.end.i45_crit_edge ]
  %call5.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %call.i4261, ptr noundef nonnull @.str.9, ptr noundef nonnull %v.i, ptr noundef %37, ptr noundef %36, ptr noundef %35, ptr noundef %34) #7
  %39 = zext i32 %call5.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %call5.i, label %if.end.i45.parse_line.exit.thread_crit_edge [
    i32 1, label %if.end.i45.while.body_crit_edge
    i32 4, label %if.end.i45.while.body_crit_edge63
  ]

if.end.i45.while.body_crit_edge63:                ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end.i45.while.body_crit_edge:                  ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end.i45.parse_line.exit.thread_crit_edge:      ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %parse_line.exit.thread

parse_line.exit.thread:                           ; preds = %if.end.i45.parse_line.exit.thread_crit_edge, %while.cond.parse_line.exit.thread_crit_edge, %if.else.parse_line.exit.thread_crit_edge
  %ret.0.lcssa = phi i32 [ -22, %if.else.parse_line.exit.thread_crit_edge ], [ %ret.060, %if.end.i45.parse_line.exit.thread_crit_edge ], [ 0, %while.cond.parse_line.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %v.i) #7
  br label %while.end

while.body:                                       ; preds = %if.end.i45.while.body_crit_edge, %if.end.i45.while.body_crit_edge63
  %40 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %.sink.i = load i32, ptr %v.i, align 4
  %sub12.i = add nsw i32 %call5.i, -1
  %arrayidx13.i = getelementptr [5 x i32], ptr %v.i, i32 0, i32 %sub12.i
  %41 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx13.i, align 4
  %43 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %v.i) #7
  %44 = ptrtoint ptr %sw1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sw1, align 4
  %is_unplugged.i = getelementptr inbounds %struct.tb_switch, ptr %45, i32 0, i32 20
  %46 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %is_unplugged.i, align 8, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i47 = icmp eq i8 %47, 0
  br i1 %tobool.not.i47, label %tb_port_write.exit, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

tb_port_write.exit:                               ; preds = %while.body
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %45, i32 0, i32 5
  %48 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tb.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ctl.i, align 8
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %45, i32 0, i32 1, i32 4
  %52 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %53 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %53, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %45, i32 0, i32 1, i32 3
  %54 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %55 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %56 = ptrtoint ptr %port3.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %port3.i, align 4
  %conv.i = zext i8 %57 to i32
  %call4.i = call i32 @tb_cfg_write(ptr noundef %51, ptr noundef nonnull %val, i64 noundef %or.i.i, i32 noundef %conv.i, i32 noundef 3, i32 noundef %.sink.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool15.not = icmp eq i32 %call4.i, 0
  br i1 %tobool15.not, label %while.cond, label %tb_port_write.exit.while.end_crit_edge

tb_port_write.exit.while.end_crit_edge:           ; preds = %tb_port_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %tb_port_write.exit.while.end_crit_edge, %while.body.while.end_crit_edge, %parse_line.exit.thread
  %ret.1 = phi i32 [ %ret.0.lcssa, %parse_line.exit.thread ], [ -19, %while.body.while.end_crit_edge ], [ %call4.i, %tb_port_write.exit.while.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %line) #7
  br label %if.end18

if.end18:                                         ; preds = %while.end, %tb_port_write.exit.i, %if.then11.if.end18_crit_edge
  %ret.2 = phi i32 [ %ret.1, %while.end ], [ %retval.0.i.i, %tb_port_write.exit.i ], [ -12, %if.then11.if.end18_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #7
  br label %out

out:                                              ; preds = %if.end18, %if.end.out_crit_edge
  %ret.3 = phi i32 [ %ret.2, %if.end18 ], [ -512, %if.end.out_crit_edge ]
  %call.i50 = call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 12, i32 22
  %58 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store volatile i64 %call.i50, ptr %last_busy.i, align 8
  %call.i51 = call i32 @__pm_runtime_suspend(ptr noundef %6, i32 noundef 13) #7
  %59 = ptrtoint ptr %call to i32
  call void @free_pages(i32 noundef %59, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3)
  %cmp23 = icmp slt i32 %ret.3, 0
  br i1 %cmp23, label %out.cleanup_crit_edge, label %cond.false

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cond.false:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %count.addr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %count.addr, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %out.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %9, %if.then ], [ %61, %cond.false ], [ %ret.3, %out.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @counters_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @counters_show, ptr noundef %1) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @counters_show(ptr noundef %s, ptr nocapture noundef readnone %not_used) #0 align 64 {
entry:
  %data.i = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %sw1 = getelementptr inbounds %struct.tb_port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sw1, align 4
  %tb2 = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %tb2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tb2, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #7
  %lock = getelementptr inbounds %struct.tb, ptr %5, i32 0, i32 1
  %call3 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.19) #7
  %max_counters = getelementptr inbounds %struct.tb_regs_port_header, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %max_counters to i32
  call void @__asan_loadN_noabort(i32 %6, i32 12)
  %bf.load27 = load i96, ptr %max_counters, align 4
  %7 = and i96 %bf.load27, 309333894093893240077942784
  %cmp30.not = icmp eq i96 %7, 0
  br i1 %cmp30.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %8 = getelementptr inbounds [3 x i32], ptr %data.i, i32 0, i32 1
  %9 = getelementptr inbounds [3 x i32], ptr %data.i, i32 0, i32 2
  %port3.i.i = getelementptr inbounds %struct.tb_port, ptr %1, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.031 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %data.i) #7
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %data.i, align 4, !annotation !62
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %8, align 4, !annotation !62
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %9, align 4, !annotation !62
  %mul.i = mul nuw nsw i32 %i.031, 3
  %13 = ptrtoint ptr %sw1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sw1, align 4
  %is_unplugged.i.i = getelementptr inbounds %struct.tb_switch, ptr %14, i32 0, i32 20
  %15 = ptrtoint ptr %is_unplugged.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %is_unplugged.i.i, align 8, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i.i, label %tb_port_read.exit.i, label %for.body.counter_set_regs_show.exit_crit_edge

for.body.counter_set_regs_show.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %counter_set_regs_show.exit

tb_port_read.exit.i:                              ; preds = %for.body
  %tb.i.i = getelementptr inbounds %struct.tb_switch, ptr %14, i32 0, i32 5
  %17 = ptrtoint ptr %tb.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tb.i.i, align 8
  %ctl.i.i = getelementptr inbounds %struct.tb, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctl.i.i, align 8
  %route_hi.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %14, i32 0, i32 1, i32 4
  %21 = ptrtoint ptr %route_hi.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %bf.load.i.i.i = load i64, ptr %route_hi.i.i.i, align 4
  %22 = lshr i64 %bf.load.i.i.i, 1
  %shl.i.i.i = and i64 %22, 9223372032559808512
  %route_lo.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %14, i32 0, i32 1, i32 3
  %23 = ptrtoint ptr %route_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %route_lo.i.i.i, align 8
  %conv2.i.i.i = zext i32 %24 to i64
  %or.i.i.i = or i64 %shl.i.i.i, %conv2.i.i.i
  %25 = ptrtoint ptr %port3.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %port3.i.i, align 4
  %conv.i.i = zext i8 %26 to i32
  %call4.i.i = call i32 @tb_cfg_read(ptr noundef %20, ptr noundef nonnull %data.i, i64 noundef %or.i.i.i, i32 noundef %conv.i.i, i32 noundef 3, i32 noundef %mul.i, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not.i, label %for.inc, label %tb_port_read.exit.i.counter_set_regs_show.exit_crit_edge

tb_port_read.exit.i.counter_set_regs_show.exit_crit_edge: ; preds = %tb_port_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %counter_set_regs_show.exit

counter_set_regs_show.exit:                       ; preds = %tb_port_read.exit.i.counter_set_regs_show.exit_crit_edge, %for.body.counter_set_regs_show.exit_crit_edge
  %retval.0.i16.i = phi i32 [ %call4.i.i, %tb_port_read.exit.i.counter_set_regs_show.exit_crit_edge ], [ -19, %for.body.counter_set_regs_show.exit_crit_edge ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.15, i32 noundef %mul.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %data.i) #7
  br label %for.end

for.inc:                                          ; preds = %tb_port_read.exit.i
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.18, i32 noundef %mul.i, i32 noundef 0, i32 noundef %i.031, i32 noundef %28) #7
  %add.1.i = add nuw nsw i32 %mul.i, 1
  %29 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %8, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.18, i32 noundef %add.1.i, i32 noundef 1, i32 noundef %i.031, i32 noundef %30) #7
  %add.2.i = add nuw nsw i32 %mul.i, 2
  %31 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %9, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.18, i32 noundef %add.2.i, i32 noundef 2, i32 noundef %i.031, i32 noundef %32) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %data.i) #7
  %inc = add nuw nsw i32 %i.031, 1
  %33 = ptrtoint ptr %max_counters to i32
  call void @__asan_loadN_noabort(i32 %33, i32 12)
  %bf.load = load i96, ptr %max_counters, align 4
  %bf.lshr = lshr i96 %bf.load, 77
  %34 = trunc i96 %bf.lshr to i32
  %bf.cast = and i32 %34, 2047
  %cmp = icmp ult i32 %inc, %bf.cast
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %counter_set_regs_show.exit, %if.end.for.end_crit_edge
  %ret.1 = phi i32 [ %retval.0.i16.i, %counter_set_regs_show.exit ], [ 0, %if.end.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #7
  br label %out

out:                                              ; preds = %for.end, %entry.out_crit_edge
  %ret.2 = phi i32 [ %ret.1, %for.end ], [ -512, %entry.out_crit_edge ]
  %call.i23 = call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 22
  %35 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store volatile i64 %call.i23, ptr %last_busy.i, align 8
  %call.i24 = call i32 @__pm_runtime_suspend(ptr noundef %3, i32 noundef 13) #7
  ret i32 %ret.2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49}
!llvm.named.register.sp = !{!51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/thunderbolt/debugfs.c", i32 670, i32 22}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/thunderbolt/debugfs.c", i32 682, i32 40}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/thunderbolt/debugfs.c", i32 686, i32 23}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/thunderbolt/debugfs.c", i32 689, i32 24}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/thunderbolt/debugfs.c", i32 731, i32 39}
!10 = !{ptr @tb_debugfs_root, !11, !"tb_debugfs_root", i1 false, i1 false}
!11 = !{!"../drivers/thunderbolt/debugfs.c", i32 53, i32 23}
!12 = !{ptr @switch_regs_fops, !13, !"switch_regs_fops", i1 false, i1 false}
!13 = !{!"../drivers/thunderbolt/debugfs.c", i32 540, i32 1}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/thunderbolt/debugfs.c", i32 88, i32 23}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/thunderbolt/debugfs.c", i32 107, i32 22}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/thunderbolt/debugfs.c", i32 524, i32 14}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/thunderbolt/debugfs.c", i32 506, i32 17}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/thunderbolt/debugfs.c", i32 447, i32 17}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/thunderbolt/debugfs.c", i32 469, i32 18}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/thunderbolt/debugfs.c", i32 298, i32 18}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/thunderbolt/debugfs.c", i32 268, i32 18}
!37 = !{ptr @port_regs_fops, !38, !"port_regs_fops", i1 false, i1 false}
!38 = !{!"../drivers/thunderbolt/debugfs.c", i32 436, i32 1}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/thunderbolt/debugfs.c", i32 344, i32 18}
!41 = !{ptr @path_fops, !42, !"path_fops", i1 false, i1 false}
!42 = !{!"../drivers/thunderbolt/debugfs.c", i32 601, i32 1}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/thunderbolt/debugfs.c", i32 576, i32 14}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/thunderbolt/debugfs.c", i32 555, i32 17}
!47 = !{ptr @counters_fops, !48, !"counters_fops", i1 false, i1 false}
!48 = !{!"../drivers/thunderbolt/debugfs.c", i32 655, i32 1}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/thunderbolt/debugfs.c", i32 639, i32 14}
!51 = !{!"sp"}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{i8 0, i8 2}
!62 = !{!"auto-init"}
!63 = !{i64 2154691646, i64 2154691671}
!64 = !{i64 2152191119, i64 2152191144}
!65 = !{!"branch_weights", i32 2000, i32 1}
!66 = !{i64 4686674}
!67 = !{i64 4686871}
!68 = !{i64 2152172104}
