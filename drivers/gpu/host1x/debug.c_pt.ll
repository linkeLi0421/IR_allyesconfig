; ModuleID = '/llk/IR_all_yes/drivers/gpu/host1x/debug.c_pt.bc'
source_filename = "../drivers/gpu/host1x/debug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.output = type { ptr, ptr, [256 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.__va_list = type { ptr }
%struct.host1x = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x %struct.reset_control_bulk_data], i32, ptr, ptr, %struct.iova_domain, i32, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.host1x_channel_list, ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.device_dma_parameters, %struct.host1x_bo_cache }
%struct.reset_control_bulk_data = type { ptr, ptr }
%struct.iova_domain = type { %struct.spinlock, %struct.rb_root, ptr, ptr, i32, i32, i32, i32, %struct.iova, [6 x %struct.iova_rcache], %struct.hlist_node }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.rb_root = type { ptr }
%struct.iova = type { %struct.rb_node, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.iova_rcache = type { %struct.spinlock, i32, [32 x ptr], ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.host1x_channel_list = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.host1x_bo_cache = type { %struct.list_head, %struct.mutex }
%struct.host1x_debug_ops = type { ptr, ptr, ptr, ptr }
%struct.host1x_channel = type { %struct.kref, i32, %struct.mutex, ptr, ptr, ptr, %struct.host1x_cdma }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.host1x_cdma = type { %struct.mutex, %struct.completion, i32, i32, i32, i32, i32, %struct.push_buffer, %struct.list_head, %struct.buffer_timeout, i8, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.push_buffer = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.buffer_timeout = type { %struct.delayed_work, i8, ptr, i32, i64, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.host1x_syncpt = type { %struct.kref, i32, %struct.atomic_t, %struct.atomic_t, i32, ptr, i8, ptr, ptr, %struct.host1x_syncpt_intr, i8 }
%struct.host1x_syncpt_intr = type { %struct.spinlock, %struct.list_head, [12 x i8], %struct.work_struct }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.76, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.73 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.74 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.75 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.76 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__const.host1x_debug_dump_syncpts.o = private unnamed_addr constant %struct.output { ptr @write_to_printk, ptr null, [256 x i8] zeroinitializer }, align 4
@host1x_debug_trace_cmdbuf = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tegra-host1x\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@host1x_debug_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @host1x_debug_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"status_all\00", [21 x i8] zeroinitializer }, align 32
@host1x_debug_all_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @host1x_debug_open_all, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"trace_cmdbuf\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"force_timeout_pid\00", [46 x i8] zeroinitializer }, align 32
@host1x_debug_force_timeout_pid = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"force_timeout_val\00", [46 x i8] zeroinitializer }, align 32
@host1x_debug_force_timeout_val = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"force_timeout_channel\00", [42 x i8] zeroinitializer }, align 32
@host1x_debug_force_timeout_channel = internal global { i32, [28 x i8] } zeroinitializer, align 32
@write_to_printk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 31, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01c%s\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"write_to_printk\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/gpu/host1x/debug.h\00", [37 x i8] zeroinitializer }, align 32
@write_to_printk._entry_ptr = internal global ptr @write_to_printk._entry, section ".printk_index", align 4
@write_to_printk._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.9, i32 33, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\016%s\00", [27 x i8] zeroinitializer }, align 32
@write_to_printk._entry_ptr.12 = internal global ptr @write_to_printk._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"---- channels ----\0A\00", [44 x i8] zeroinitializer }, align 32
@debug_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @debug_lock, i64 52), ptr getelementptr (i8, ptr @debug_lock, i64 52) }, ptr @debug_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"debug_lock.wait_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"debug_lock\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"---- syncpts ----\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"id %u (%s) min %d max %d (%d waiters)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"waitbase id %u val %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant [26 x i8] c"host1x_debug_trace_cmdbuf\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 22, i32 14 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 190, i32 41 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 195, i32 22 }
@___asan_gen_.29 = private unnamed_addr constant [18 x i8] c"host1x_debug_fops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 181, i32 37 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 196, i32 22 }
@___asan_gen_.35 = private unnamed_addr constant [22 x i8] c"host1x_debug_all_fops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 169, i32 37 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 199, i32 21 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 204, i32 21 }
@___asan_gen_.44 = private unnamed_addr constant [31 x i8] c"host1x_debug_force_timeout_pid\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 24, i32 14 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 206, i32 21 }
@___asan_gen_.50 = private unnamed_addr constant [31 x i8] c"host1x_debug_force_timeout_val\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 25, i32 12 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 208, i32 21 }
@___asan_gen_.56 = private unnamed_addr constant [35 x i8] c"host1x_debug_force_timeout_channel\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 26, i32 12 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 31, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [30 x i8] c"../drivers/gpu/host1x/debug.h\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 33, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 128, i32 25 }
@___asan_gen_.80 = private unnamed_addr constant [11 x i8] c"debug_lock\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 20, i32 8 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 84, i32 25 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 104, i32 9 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 113, i32 27 }
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private constant [30 x i8] c"../drivers/gpu/host1x/debug.c\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 119, i32 25 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @write_to_printk._entry, ptr @write_to_printk._entry.10, ptr @write_to_printk._entry_ptr, ptr @write_to_printk._entry_ptr.12, ptr @host1x_debug_trace_cmdbuf, ptr @.str, ptr @.str.1, ptr @host1x_debug_fops, ptr @.str.2, ptr @host1x_debug_all_fops, ptr @.str.3, ptr @.str.4, ptr @host1x_debug_force_timeout_pid, ptr @.str.5, ptr @host1x_debug_force_timeout_val, ptr @.str.6, ptr @host1x_debug_force_timeout_channel, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @debug_lock, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_debug_trace_cmdbuf to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_debug_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_debug_all_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_debug_force_timeout_pid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_debug_force_timeout_val to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_debug_force_timeout_channel to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_to_printk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_to_printk._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @host1x_debug_output(ptr noundef %o, ptr nocapture noundef readonly %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #8
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !59
  call void @llvm.va_start(ptr nonnull %args)
  %buf = getelementptr inbounds %struct.output, ptr %o, i32 0, i32 2
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %1)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call i32 @vsnprintf(ptr noundef %buf, i32 noundef 256, ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %args)
  %2 = ptrtoint ptr %o to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %o, align 4
  %ctx = getelementptr inbounds %struct.output, ptr %o, i32 0, i32 1
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  call void %3(ptr noundef %5, ptr noundef %buf, i32 noundef %call, i1 noundef zeroext false) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @host1x_debug_cont(ptr noundef %o, ptr nocapture noundef readonly %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #8
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !59
  call void @llvm.va_start(ptr nonnull %args)
  %buf = getelementptr inbounds %struct.output, ptr %o, i32 0, i32 2
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %1)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call i32 @vsnprintf(ptr noundef %buf, i32 noundef 256, ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %args)
  %2 = ptrtoint ptr %o to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %o, align 4
  %ctx = getelementptr inbounds %struct.output, ptr %o, i32 0, i32 1
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  call void %3(ptr noundef %5, ptr noundef %buf, i32 noundef %call, i1 noundef zeroext true) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @host1x_debug_init(ptr noundef %host1x) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef null) #8
  %debugfs.i = getelementptr inbounds %struct.host1x, ptr %host1x, i32 0, i32 24
  %0 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %debugfs.i, align 4
  %call1.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 292, ptr noundef %call.i, ptr noundef %host1x, ptr noundef nonnull @host1x_debug_fops) #8
  %call2.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 292, ptr noundef %call.i, ptr noundef %host1x, ptr noundef nonnull @host1x_debug_all_fops) #8
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.3, i16 noundef zeroext 420, ptr noundef %call.i, ptr noundef nonnull @host1x_debug_trace_cmdbuf) #8
  %debug_op.i.i = getelementptr inbounds %struct.host1x, ptr %host1x, i32 0, i32 20
  %1 = ptrtoint ptr %debug_op.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %debug_op.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %entry.host1x_debugfs_init.exit_crit_edge, label %land.lhs.true.i.i

entry.host1x_debugfs_init.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %host1x_debugfs_init.exit

land.lhs.true.i.i:                                ; preds = %entry
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool2.not.i.i = icmp eq ptr %4, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.host1x_debugfs_init.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.host1x_debugfs_init.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %host1x_debugfs_init.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %4(ptr noundef %call.i) #8
  br label %host1x_debugfs_init.exit

host1x_debugfs_init.exit:                         ; preds = %if.then.i.i, %land.lhs.true.i.i.host1x_debugfs_init.exit_crit_edge, %entry.host1x_debugfs_init.exit_crit_edge
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.4, i16 noundef zeroext 420, ptr noundef %call.i, ptr noundef nonnull @host1x_debug_force_timeout_pid) #8
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.5, i16 noundef zeroext 420, ptr noundef %call.i, ptr noundef nonnull @host1x_debug_force_timeout_val) #8
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.6, i16 noundef zeroext 420, ptr noundef %call.i, ptr noundef nonnull @host1x_debug_force_timeout_channel) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @host1x_debug_deinit(ptr nocapture noundef readonly %host1x) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs.i = getelementptr inbounds %struct.host1x, ptr %host1x, i32 0, i32 24
  %0 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs.i, align 4
  tail call void @debugfs_remove(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @host1x_debug_dump(ptr noundef %host1x) local_unnamed_addr #0 align 64 {
entry:
  %o = alloca %struct.output, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %o) #8
  %0 = call ptr @memcpy(ptr %o, ptr @__const.host1x_debug_dump_syncpts.o, i32 264)
  call fastcc void @show_all(ptr noundef %host1x, ptr noundef nonnull %o, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %o) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @write_to_printk(ptr nocapture noundef readnone %ctx, ptr noundef %str, i32 noundef %len, i1 noundef zeroext %cont) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %.str.7..str.11 = select i1 %cont, ptr @.str.7, ptr @.str.11
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.7..str.11, ptr noundef %str) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @show_all(ptr noundef %m, ptr noundef %o, i1 noundef zeroext %show_fifo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %debug_op.i = getelementptr inbounds %struct.host1x, ptr %m, i32 0, i32 20
  %0 = ptrtoint ptr %debug_op.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debug_op.i, align 4
  %show_mlocks.i = getelementptr inbounds %struct.host1x_debug_ops, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %show_mlocks.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %show_mlocks.i, align 4
  tail call void %3(ptr noundef %m, ptr noundef %o) #8
  tail call fastcc void @show_syncpts(ptr noundef %m, ptr noundef %o)
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %o, ptr noundef nonnull @.str.13)
  %4 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp13.not = icmp eq i32 %7, 0
  br i1 %cmp13.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = tail call ptr @host1x_channel_get_index(ptr noundef %m, i32 noundef %i.014) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.body
  %dev.i = getelementptr inbounds %struct.host1x_channel, ptr %call, i32 0, i32 5
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i, align 4
  %dev1.i = getelementptr inbounds %struct.host1x, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev1.i, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %15, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i

if.then.i.i:                                      ; preds = %if.then
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #8
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #8, !srcloc !61
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.show_channel.exit_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.show_channel.exit_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %show_channel.exit

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !62
  br label %show_channel.exit

if.end.i:                                         ; preds = %if.then
  %cdma.i = getelementptr inbounds %struct.host1x_channel, ptr %call, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %cdma.i, i32 noundef 0) #8
  tail call void @mutex_lock_nested(ptr noundef nonnull @debug_lock, i32 noundef 0) #8
  br i1 %show_fifo, label %if.then3.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %debug_op.i.i = getelementptr inbounds %struct.host1x, ptr %13, i32 0, i32 20
  %17 = ptrtoint ptr %debug_op.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %debug_op.i.i, align 4
  %show_channel_fifo.i.i = getelementptr inbounds %struct.host1x_debug_ops, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %show_channel_fifo.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %show_channel_fifo.i.i, align 4
  tail call void %20(ptr noundef %13, ptr noundef nonnull %call, ptr noundef %o) #8
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  %debug_op.i1.i = getelementptr inbounds %struct.host1x, ptr %13, i32 0, i32 20
  %21 = ptrtoint ptr %debug_op.i1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %debug_op.i1.i, align 4
  %show_channel_cdma.i.i = getelementptr inbounds %struct.host1x_debug_ops, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %show_channel_cdma.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %show_channel_cdma.i.i, align 4
  tail call void %24(ptr noundef %13, ptr noundef nonnull %call, ptr noundef %o) #8
  tail call void @mutex_unlock(ptr noundef nonnull @debug_lock) #8
  tail call void @mutex_unlock(ptr noundef %cdma.i) #8
  %25 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev1.i, align 4
  %call.i2.i = tail call i32 @__pm_runtime_idle(ptr noundef %26, i32 noundef 5) #8
  br label %show_channel.exit

show_channel.exit:                                ; preds = %if.end4.i, %do.end11.i.i.i.i.i.i, %if.then.i.i.show_channel.exit_crit_edge
  tail call void @host1x_channel_put(ptr noundef nonnull %call) #8
  br label %if.end

if.end:                                           ; preds = %show_channel.exit, %for.body.if.end_crit_edge
  %inc = add nuw i32 %i.014, 1
  %27 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %m, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 8
  %cmp = icmp ult i32 %inc, %30
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @host1x_debug_dump_syncpts(ptr noundef %host1x) local_unnamed_addr #0 align 64 {
entry:
  %o = alloca %struct.output, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %o) #8
  %0 = call ptr @memcpy(ptr %o, ptr @__const.host1x_debug_dump_syncpts.o, i32 264)
  call fastcc void @show_syncpts(ptr noundef %host1x, ptr noundef nonnull %o)
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %o) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @show_syncpts(ptr noundef %m, ptr noundef %o) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %o, ptr noundef nonnull @.str.16)
  %dev = getelementptr inbounds %struct.host1x, ptr %m, i32 0, i32 5
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call194 = tail call i32 @host1x_syncpt_nb_pts(ptr noundef %m) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194)
  %cmp295.not = icmp eq i32 %call194, 0
  br i1 %cmp295.not, label %for.cond.preheader.for.cond36.preheader_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.cond36.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond36.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %syncpt = getelementptr inbounds %struct.host1x, ptr %m, i32 0, i32 3
  br label %for.body

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !61
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup51_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup51_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup51

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !62
  br label %cleanup51

for.cond36.preheader:                             ; preds = %cleanup.for.cond36.preheader_crit_edge, %for.cond.preheader.for.cond36.preheader_crit_edge
  %call3798 = tail call i32 @host1x_syncpt_nb_bases(ptr noundef %m) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3798)
  %cmp3899.not = icmp eq i32 %call3798, 0
  br i1 %cmp3899.not, label %for.cond36.preheader.for.end48_crit_edge, label %for.body39.lr.ph

for.cond36.preheader.for.end48_crit_edge:         ; preds = %for.cond36.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end48

for.body39.lr.ph:                                 ; preds = %for.cond36.preheader
  %syncpt40 = getelementptr inbounds %struct.host1x, ptr %m, i32 0, i32 3
  br label %for.body39

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.096 = phi i32 [ 0, %for.body.lr.ph ], [ %inc34, %cleanup.for.body_crit_edge ]
  %3 = ptrtoint ptr %syncpt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %syncpt, align 4
  %add.ptr = getelementptr %struct.host1x_syncpt, ptr %4, i32 %i.096
  %call3 = tail call i32 @host1x_syncpt_read_max(ptr noundef %add.ptr) #8
  %5 = ptrtoint ptr %syncpt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %syncpt, align 4
  %add.ptr5 = getelementptr %struct.host1x_syncpt, ptr %6, i32 %i.096
  %call6 = tail call i32 @host1x_syncpt_load(ptr noundef %add.ptr5) #8
  %7 = ptrtoint ptr %syncpt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %syncpt, align 4
  %intr = getelementptr %struct.host1x_syncpt, ptr %8, i32 %i.096, i32 9
  tail call void @_raw_spin_lock(ptr noundef %intr) #8
  %9 = ptrtoint ptr %syncpt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %syncpt, align 4
  %wait_head = getelementptr %struct.host1x_syncpt, ptr %10, i32 %i.096, i32 9, i32 1
  br label %for.cond11

for.cond11:                                       ; preds = %for.cond11.for.cond11_crit_edge, %for.body
  %pos.0.in = phi ptr [ %wait_head, %for.body ], [ %pos.0, %for.cond11.for.cond11_crit_edge ]
  %waiters.0 = phi i32 [ 0, %for.body ], [ %inc, %for.cond11.for.cond11_crit_edge ]
  %11 = ptrtoint ptr %pos.0.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %pos.0 = load ptr, ptr %pos.0.in, align 4
  %cmp.i90.not = icmp eq ptr %pos.0, %wait_head
  %inc = add i32 %waiters.0, 1
  br i1 %cmp.i90.not, label %for.end, label %for.cond11.for.cond11_crit_edge

for.cond11.for.cond11_crit_edge:                  ; preds = %for.cond11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond11

for.end:                                          ; preds = %for.cond11
  %intr21 = getelementptr %struct.host1x_syncpt, ptr %10, i32 %i.096, i32 9
  tail call void @_raw_spin_unlock(ptr noundef %intr21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool23.not = icmp eq i32 %call6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool24.not = icmp eq i32 %call3, 0
  %or.cond = select i1 %tobool23.not, i1 %tobool24.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %waiters.0)
  %tobool26.not = icmp eq i32 %waiters.0, 0
  %or.cond89 = select i1 %or.cond, i1 %tobool26.not, i1 false
  br i1 %or.cond89, label %for.end.cleanup_crit_edge, label %if.end28

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %syncpt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %syncpt, align 4
  %name = getelementptr %struct.host1x_syncpt, ptr %13, i32 %i.096, i32 5
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %o, ptr noundef nonnull @.str.17, i32 noundef %i.096, ptr noundef %15, i32 noundef %call6, i32 noundef %call3, i32 noundef %waiters.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %for.end.cleanup_crit_edge
  %inc34 = add nuw i32 %i.096, 1
  %call1 = tail call i32 @host1x_syncpt_nb_pts(ptr noundef %m) #8
  %cmp2 = icmp ult i32 %inc34, %call1
  br i1 %cmp2, label %cleanup.for.body_crit_edge, label %cleanup.for.cond36.preheader_crit_edge

cleanup.for.cond36.preheader_crit_edge:           ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond36.preheader

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body39:                                       ; preds = %if.end45.for.body39_crit_edge, %for.body39.lr.ph
  %i.1100 = phi i32 [ 0, %for.body39.lr.ph ], [ %inc47, %if.end45.for.body39_crit_edge ]
  %16 = ptrtoint ptr %syncpt40 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %syncpt40, align 4
  %add.ptr41 = getelementptr %struct.host1x_syncpt, ptr %17, i32 %i.1100
  %call42 = tail call i32 @host1x_syncpt_load_wait_base(ptr noundef %add.ptr41) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %for.body39.if.end45_crit_edge, label %if.then44

for.body39.if.end45_crit_edge:                    ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then44:                                        ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %o, ptr noundef nonnull @.str.18, i32 noundef %i.1100, i32 noundef %call42)
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %for.body39.if.end45_crit_edge
  %inc47 = add nuw i32 %i.1100, 1
  %call37 = tail call i32 @host1x_syncpt_nb_bases(ptr noundef %m) #8
  %cmp38 = icmp ult i32 %inc47, %call37
  br i1 %cmp38, label %if.end45.for.body39_crit_edge, label %if.end45.for.end48_crit_edge

if.end45.for.end48_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end48

if.end45.for.body39_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body39

for.end48:                                        ; preds = %if.end45.for.end48_crit_edge, %for.cond36.preheader.for.end48_crit_edge
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %call.i91 = tail call i32 @__pm_runtime_idle(ptr noundef %19, i32 noundef 5) #8
  tail call void (ptr, ptr, ...) @host1x_debug_output(ptr noundef %o, ptr noundef nonnull @.str.19)
  br label %cleanup51

cleanup51:                                        ; preds = %for.end48, %do.end11.i.i.i.i.i, %if.then.i.cleanup51_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @host1x_debug_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @host1x_debug_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @host1x_debug_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  %o = alloca %struct.output, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %o) #8
  %0 = getelementptr inbounds i8, ptr %o, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 256)
  %2 = ptrtoint ptr %o to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @write_to_seqfile, ptr %o, align 4
  %ctx = getelementptr inbounds %struct.output, ptr %o, i32 0, i32 1
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %s, ptr %ctx, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 8
  call fastcc void @show_all(ptr noundef %5, ptr noundef nonnull %o, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %o) #8
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @write_to_seqfile(ptr noundef %ctx, ptr noundef %str, i32 noundef %len, i1 noundef zeroext %cont) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @seq_write(ptr noundef %ctx, ptr noundef %str, i32 noundef %len) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @host1x_debug_open_all(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @host1x_debug_show_all, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @host1x_debug_show_all(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  %o = alloca %struct.output, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %o) #8
  %0 = getelementptr inbounds i8, ptr %o, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 256)
  %2 = ptrtoint ptr %o to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @write_to_seqfile, ptr %o, align 4
  %ctx = getelementptr inbounds %struct.output, ptr %o, i32 0, i32 1
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %s, ptr %ctx, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 8
  call fastcc void @show_all(ptr noundef %5, ptr noundef nonnull %o, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %o) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_channel_get_index(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_channel_put(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_syncpt_nb_pts(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_syncpt_read_max(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_syncpt_load(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_syncpt_nb_bases(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_syncpt_load_wait_base(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !34, !35, !36, !38, !40, !41, !42, !44, !46, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @host1x_debug_trace_cmdbuf, !1, !"host1x_debug_trace_cmdbuf", i1 false, i1 false}
!1 = !{!"../drivers/gpu/host1x/debug.c", i32 22, i32 14}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/host1x/debug.c", i32 190, i32 41}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/host1x/debug.c", i32 195, i32 22}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/host1x/debug.c", i32 196, i32 22}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/host1x/debug.c", i32 199, i32 21}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/host1x/debug.c", i32 204, i32 21}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/host1x/debug.c", i32 206, i32 21}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/host1x/debug.c", i32 208, i32 21}
!16 = !{ptr @host1x_debug_fops, !17, !"host1x_debug_fops", i1 false, i1 false}
!17 = !{!"../drivers/gpu/host1x/debug.c", i32 181, i32 37}
!18 = !{ptr @host1x_debug_all_fops, !19, !"host1x_debug_all_fops", i1 false, i1 false}
!19 = !{!"../drivers/gpu/host1x/debug.c", i32 169, i32 37}
!20 = !{ptr @host1x_debug_force_timeout_pid, !21, !"host1x_debug_force_timeout_pid", i1 false, i1 false}
!21 = !{!"../drivers/gpu/host1x/debug.c", i32 24, i32 14}
!22 = !{ptr @host1x_debug_force_timeout_val, !23, !"host1x_debug_force_timeout_val", i1 false, i1 false}
!23 = !{!"../drivers/gpu/host1x/debug.c", i32 25, i32 12}
!24 = !{ptr @host1x_debug_force_timeout_channel, !25, !"host1x_debug_force_timeout_channel", i1 false, i1 false}
!25 = !{!"../drivers/gpu/host1x/debug.c", i32 26, i32 12}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/host1x/debug.h", i32 31, i32 3}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @write_to_printk._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @write_to_printk._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/host1x/debug.h", i32 33, i32 3}
!34 = !{ptr @write_to_printk._entry.10, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @write_to_printk._entry_ptr.12, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/host1x/debug.c", i32 128, i32 25}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/host1x/debug.c", i32 20, i32 8}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @debug_lock, !39, !"debug_lock", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/host1x/debug.c", i32 84, i32 25}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/host1x/debug.c", i32 104, i32 9}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/host1x/debug.c", i32 113, i32 27}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/host1x/debug.c", i32 119, i32 25}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{!"auto-init"}
!60 = !{i64 2148666486}
!61 = !{i64 1153086, i64 1153111, i64 1153133, i64 1153149, i64 1153161, i64 1153181, i64 1153205, i64 1153221, i64 1153233}
!62 = !{i64 2148666674}
