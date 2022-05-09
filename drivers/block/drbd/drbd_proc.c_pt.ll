; ModuleID = '/llk/IR_all_yes/drivers/block/drbd/drbd_proc.c_pt.bc'
source_filename = "../drivers/block/drbd/drbd_proc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.drbd_device = type { ptr, %struct.list_head, %struct.list_head, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.kref, i32, ptr, i64, ptr, ptr, i32, %struct.drbd_work, %struct.drbd_work, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %union.drbd_state, %union.drbd_dev_state, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.rb_root, %struct.rb_root, [2 x %struct.list_head], [2 x %struct.list_head], i8, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], i32, i32, i64, i64, i64, i64, i64, i32, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.drbd_md_io, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.wait_queue_head, %struct.atomic_t, i32, %struct.spinlock, i32, %struct.bm_io_work, i64, %struct.mutex, ptr, i8, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, %struct.submit_worker }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drbd_work = type { %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.drbd_state = type { %struct.anon.189 }
%struct.anon.189 = type { i32 }
%union.drbd_dev_state = type { %struct.anon.190 }
%struct.anon.190 = type { i32 }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.drbd_md_io = type { ptr, i32, i32, ptr, %struct.atomic_t, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.bm_io_work = type { %struct.drbd_work, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.submit_worker = type { ptr, %struct.work_struct, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.drbd_peer_device = type { %struct.list_head, ptr, ptr, %struct.work_struct, ptr }
%struct.drbd_connection = type { %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.idr, i32, %struct.mutex, i32, i32, ptr, %struct.wait_queue_head, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, %struct.drbd_socket, %struct.drbd_socket, i32, i32, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.blk_plug, %struct.drbd_thread, %struct.drbd_thread, %struct.drbd_thread, ptr, ptr, ptr, ptr, %struct.drbd_work_queue, i32, i32, [16 x %struct.drbd_thread_timing_details], [16 x %struct.drbd_thread_timing_details], %struct.anon.195 }
%struct.__kernel_sockaddr_storage = type { %union.anon.191 }
%union.anon.191 = type { ptr, [124 x i8] }
%struct.drbd_socket = type { %struct.mutex, ptr, ptr, ptr }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.drbd_thread = type { %struct.spinlock, ptr, %struct.completion, i32, ptr, ptr, ptr, i32, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.drbd_work_queue = type { %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.drbd_thread_timing_details = type { i32, ptr, ptr, i32, i32 }
%struct.anon.195 = type { i32, i8, i32, i32 }
%struct.net_conf = type { [64 x i8], i32, [64 x i8], i32, [64 x i8], i32, [64 x i8], i32, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.drbd_resource = type { ptr, ptr, ptr, ptr, ptr, %struct.kref, %struct.idr, %struct.list_head, %struct.list_head, %struct.res_opts, %struct.mutex, %struct.mutex, %struct.spinlock, i8, i32, ptr }
%struct.res_opts = type { [32 x i8], i32, i32 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@drbd_seq_show.write_ordering_chars = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ndf", [29 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"version: 8.4.11 (api:%d/proto:%d-%d)\0A%s\0A\00", [55 x i8] zeroinitializer }, align 32
@drbd_devices = external dso_local global %struct.idr, align 4
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%2d: cs:Unconfigured\0A\00", [42 x i8] zeroinitializer }, align 32
@drbd_seq_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/block/drbd/drbd_proc.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [121 x i8], [39 x i8] } { [121 x i8] c"%2d: cs:%s ro:%s/%s ds:%s/%s %c %c%c%c%c%c%c\0A    ns:%u nr:%u dw:%u dr:%u al:%u bm:%u lo:%d pe:%d ua:%d ap:%d ep:%d wo:%c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" oos:%llu\0A\00", [21 x i8] zeroinitializer }, align 32
@drbd_proc_details = external dso_local local_unnamed_addr global i32, align 4
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\09blocked on activity log: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@drbd_proc = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\09[\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"] \00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"verified:\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sync'ed:\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%3u.%u%% \00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"(%lu/%lu)M\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"(%lu/%lu)K\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\0A\09\00", [29 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"finish: %lu:%02lu:%02lu\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" speed: \00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c" (\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" -- \00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" want: \00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" K/sec%s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" (stalled)\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\09%3d%% sector pos: %llu/%llu\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c" stop sector: %llu\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%ld,\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%03ld,%03ld\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%ld,%03ld\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%ld\00", [28 x i8] zeroinitializer }, align 32
@put_ldev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.33, i32 2099, ptr @.str.34, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ASSERT( i >= 0 ) in %s:%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"put_ldev\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/block/drbd/drbd_int.h\00", [34 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@put_ldev._entry_ptr = internal global ptr @put_ldev._entry, section ".printk_index", align 4
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.36 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 -1]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.38 = private unnamed_addr constant [21 x i8] c"write_ordering_chars\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 224, i32 14 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 230, i32 18 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 265, i32 20 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 269, i32 9 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 272, i32 7 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 301, i32 20 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 318, i32 20 }
@___asan_gen_.62 = private unnamed_addr constant [10 x i8] c"drbd_proc\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 24, i32 24 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 695, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 102, i32 16 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 108, i32 16 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 111, i32 17 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 113, i32 17 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 114, i32 18 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 118, i32 19 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 122, i32 19 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 126, i32 16 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 151, i32 18 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 155, i32 16 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 157, i32 16 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 168, i32 17 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 184, i32 17 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 187, i32 18 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 187, i32 42 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 187, i32 57 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 205, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 210, i32 20 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 31, i32 19 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 33, i32 19 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 35, i32 19 }
@___asan_gen_.135 = private constant [34 x i8] c"../drivers/block/drbd/drbd_proc.c\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 37, i32 19 }
@___asan_gen_.137 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [33 x i8] c"../drivers/block/drbd/drbd_int.h\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 2099, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 723, i32 2 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @put_ldev._entry, ptr @put_ldev._entry_ptr, ptr @drbd_seq_show.write_ordering_chars, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @drbd_proc, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_seq_show.write_ordering_chars to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 121, i32 160, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_proc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @put_ldev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drbd_seq_show(ptr noundef %seq, ptr nocapture noundef readnone %v) local_unnamed_addr #0 align 64 {
entry:
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #8
  %call = tail call ptr @drbd_buildtag() #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str, i32 noundef 1, i32 noundef 86, i32 noundef 101, ptr noundef %call) #8
  %0 = tail call i32 @llvm.read_register.i32(metadata !77) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !87
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %i, align 4
  %call1218 = call ptr @idr_get_next(ptr noundef nonnull @drbd_devices, ptr noundef nonnull %i) #8
  %cmp.not219 = icmp eq ptr %call1218, null
  br i1 %cmp.not219, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.for.body_crit_edge

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %call1221 = phi ptr [ %call1, %for.inc.for.body_crit_edge ], [ %call1218, %rcu_read_lock.exit.for.body_crit_edge ]
  %prev_i.0220 = phi i32 [ %8, %for.inc.for.body_crit_edge ], [ -1, %rcu_read_lock.exit.for.body_crit_edge ]
  %5 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i, align 4
  %sub = add i32 %6, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %prev_i.0220, i32 %sub)
  %cmp2.not = icmp eq i32 %prev_i.0220, %sub
  br i1 %cmp2.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %7 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i, align 4
  %state3 = getelementptr inbounds %struct.drbd_device, ptr %call1221, i32 0, i32 27
  %9 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %state.sroa.0.0.copyload = load i32, ptr %state3, align 8
  %bf.lshr = lshr i32 %state.sroa.0.0.copyload, 4
  %bf.clear = and i32 %bf.lshr, 31
  %call4 = call ptr @drbd_conn_str(i32 noundef %bf.clear) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear)
  %cmp8 = icmp eq i32 %bf.clear, 0
  %10 = and i32 %state.sroa.0.0.copyload, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp12 = icmp eq i32 %10, 0
  %or.cond = select i1 %cmp8, i1 %cmp12, i1 false
  %bf.clear15 = and i32 %state.sroa.0.0.copyload, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bf.clear15)
  %cmp16 = icmp eq i32 %bf.clear15, 2
  %or.cond186 = select i1 %or.cond, i1 %cmp16, i1 false
  br i1 %or.cond186, label %if.end90.thread, label %if.else

if.end90.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.1, i32 noundef %12) #8
  br label %if.end115

if.else:                                          ; preds = %if.end
  %peer_devices.i = getelementptr inbounds %struct.drbd_device, ptr %call1221, i32 0, i32 1
  %13 = ptrtoint ptr %peer_devices.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %peer_devices.i, align 4
  %cmp.not.i = icmp eq ptr %14, %peer_devices.i
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %14
  %connection = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i, i32 0, i32 2
  %15 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %connection, align 4
  %net_conf = getelementptr inbounds %struct.drbd_connection, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %net_conf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %net_conf, align 4
  %call20 = call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %land.lhs.true21, label %if.else.do.end29_crit_edge

if.else.do.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end29

land.lhs.true21:                                  ; preds = %if.else
  %call22 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true21.do.end29_crit_edge, label %land.lhs.true24

land.lhs.true21.do.end29_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end29

land.lhs.true24:                                  ; preds = %land.lhs.true21
  %.b185 = load i1, ptr @drbd_seq_show.__warned, align 1
  br i1 %.b185, label %land.lhs.true24.do.end29_crit_edge, label %if.then26

land.lhs.true24.do.end29_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end29

if.then26:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @drbd_seq_show.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 269, ptr noundef nonnull @.str.3) #8
  br label %do.end29

do.end29:                                         ; preds = %if.then26, %land.lhs.true24.do.end29_crit_edge, %land.lhs.true21.do.end29_crit_edge, %if.else.do.end29_crit_edge
  %tobool31.not = icmp eq ptr %18, null
  br i1 %tobool31.not, label %do.end29.if.end90_crit_edge, label %cond.true

do.end29.if.end90_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

cond.true:                                        ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #10
  %wire_protocol = getelementptr inbounds %struct.net_conf, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %wire_protocol to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wire_protocol, align 4
  %add = add i32 %20, 64
  br label %if.end90

if.end90:                                         ; preds = %cond.true, %do.end29.if.end90_crit_edge
  %cond = phi i32 [ %add, %cond.true ], [ 32, %do.end29.if.end90_crit_edge ]
  %21 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i, align 4
  %call35 = call ptr @drbd_role_str(i32 noundef %bf.clear15) #8
  %bf.lshr37 = lshr i32 %state.sroa.0.0.copyload, 2
  %bf.clear38 = and i32 %bf.lshr37, 3
  %call39 = call ptr @drbd_role_str(i32 noundef %bf.clear38) #8
  %bf.lshr41 = lshr i32 %state.sroa.0.0.copyload, 9
  %bf.clear42 = and i32 %bf.lshr41, 15
  %call43 = call ptr @drbd_disk_str(i32 noundef %bf.clear42) #8
  %bf.lshr45 = lshr i32 %state.sroa.0.0.copyload, 13
  %bf.clear46 = and i32 %bf.lshr45, 15
  %call47 = call ptr @drbd_disk_str(i32 noundef %bf.clear46) #8
  %conv48 = and i32 %cond, 255
  %23 = ptrtoint ptr %call1221 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call1221, align 8
  %susp.i = getelementptr inbounds %struct.drbd_resource, ptr %24, i32 0, i32 13
  %25 = ptrtoint ptr %susp.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load.i = load i8, ptr %susp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %bf.load.i)
  %26 = icmp ult i8 %bf.load.i, 32
  %cond51 = select i1 %26, i32 114, i32 115
  %27 = and i32 %state.sroa.0.0.copyload, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool55.not = icmp eq i32 %27, 0
  %cond56 = select i1 %tobool55.not, i32 45, i32 97
  %28 = and i32 %state.sroa.0.0.copyload, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool60.not = icmp eq i32 %28, 0
  %cond61 = select i1 %tobool60.not, i32 45, i32 112
  %29 = and i32 %state.sroa.0.0.copyload, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool65.not = icmp eq i32 %29, 0
  %cond66 = select i1 %tobool65.not, i32 45, i32 117
  %congestion_reason = getelementptr inbounds %struct.drbd_device, ptr %call1221, i32 0, i32 95
  %30 = ptrtoint ptr %congestion_reason to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %congestion_reason, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool68.not = icmp eq i8 %31, 0
  %narrow = select i1 %tobool68.not, i8 45, i8 %31
  %conv67. = zext i8 %narrow to i32
  %flags = getelementptr inbounds %struct.drbd_device, ptr %call1221, i32 0, i32 14
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %flags, align 4
  %34 = and i32 %33, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool74.not = icmp eq i32 %34, 0
  %cond75 = select i1 %tobool74.not, i32 45, i32 115
  %send_cnt = getelementptr inbounds %struct.drbd_device, ptr %call1221, i32 0, i32 30
  %35 = ptrtoint ptr %send_cnt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %send_cnt, align 4
  %div181 = lshr i32 %36, 1
  %recv_cnt = getelementptr inbounds %struct.drbd_device, ptr %call1221, i32 0, i32 31
  %37 = ptrtoint ptr %recv_cnt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %recv_cnt, align 8
  %div76182 = lshr i32 %38, 1
  %writ_cnt = getelementptr inbounds %struct.drbd_device, ptr %call1221, i32 0, i32 33
  %39 = ptrtoint ptr %writ_cnt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %writ_cnt, align 8
  %div77183 = lshr i32 %40, 1
  %read_cnt = getelementptr inbounds %struct.drbd_device, ptr %call1221, i32 0, i32 32
  %41 = ptrtoint ptr %read_cnt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %read_cnt, align 4
  %div78184 = lshr i32 %42, 1
  %al_writ_cnt = getelementptr inbounds %struct.drbd_device, ptr %call1221, i32 0, i32 34
  %43 = ptrtoint ptr %al_writ_cnt to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %al_writ_cnt, align 4
  %bm_writ_cnt = getelementptr inbounds %struct.drbd_device, ptr %call1221, i32 0, i32 35
  %45 = ptrtoint ptr %bm_writ_cnt to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bm_writ_cnt, align 8
  %local_cnt = getelementptr inbounds %struct.drbd_device, ptr %call1221, i32 0, i32 41
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %local_cnt, i32 noundef 4) #8
  %47 = ptrtoint ptr %local_cnt to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %local_cnt, align 4
  %ap_pending_cnt = getelementptr inbounds %struct.drbd_device, ptr %call1221, i32 0, i32 38
  %call.i.i187 = call zeroext i1 @__kasan_check_read(ptr noundef %ap_pending_cnt, i32 noundef 4) #8
  %49 = ptrtoint ptr %ap_pending_cnt to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %ap_pending_cnt, align 4
  %rs_pending_cnt = getelementptr inbounds %struct.drbd_device, ptr %call1221, i32 0, i32 39
  %call.i.i188 = call zeroext i1 @__kasan_check_read(ptr noundef %rs_pending_cnt, i32 noundef 4) #8
  %51 = ptrtoint ptr %rs_pending_cnt to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %rs_pending_cnt, align 4
  %add82 = add i32 %52, %50
  %unacked_cnt = getelementptr inbounds %struct.drbd_device, ptr %call1221, i32 0, i32 40
  %call.i.i189 = call zeroext i1 @__kasan_check_read(ptr noundef %unacked_cnt, i32 noundef 4) #8
  %53 = ptrtoint ptr %unacked_cnt to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %unacked_cnt, align 4
  %ap_bio_cnt = getelementptr inbounds %struct.drbd_device, ptr %call1221, i32 0, i32 36
  %call.i.i190 = call zeroext i1 @__kasan_check_read(ptr noundef %ap_bio_cnt, i32 noundef 4) #8
  %55 = ptrtoint ptr %ap_bio_cnt to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %ap_bio_cnt, align 4
  %57 = ptrtoint ptr %peer_devices.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile ptr, ptr %peer_devices.i, align 4
  %cmp.not.i193 = icmp eq ptr %58, %peer_devices.i
  %spec.select.i194 = select i1 %cmp.not.i193, ptr null, ptr %58
  %connection86 = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i194, i32 0, i32 2
  %59 = ptrtoint ptr %connection86 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %connection86, align 4
  %epochs = getelementptr inbounds %struct.drbd_connection, ptr %60, i32 0, i32 33
  %61 = ptrtoint ptr %epochs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %epochs, align 4
  %63 = ptrtoint ptr %call1221 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call1221, align 8
  %write_ordering = getelementptr inbounds %struct.drbd_resource, ptr %64, i32 0, i32 14
  %65 = ptrtoint ptr %write_ordering to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %write_ordering, align 4
  %arrayidx = getelementptr [3 x i8], ptr @drbd_seq_show.write_ordering_chars, i32 0, i32 %66
  %67 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx, align 1
  %conv87 = zext i8 %68 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.4, i32 noundef %22, ptr noundef %call4, ptr noundef %call35, ptr noundef %call39, ptr noundef %call43, ptr noundef %call47, i32 noundef %conv48, i32 noundef %cond51, i32 noundef %cond56, i32 noundef %cond61, i32 noundef %cond66, i32 noundef %conv67., i32 noundef %cond75, i32 noundef %div181, i32 noundef %div76182, i32 noundef %div77183, i32 noundef %div78184, i32 noundef %44, i32 noundef %46, i32 noundef %48, i32 noundef %add82, i32 noundef %54, i32 noundef %56, i32 noundef %62, i32 noundef %conv87) #8
  %call88 = call i32 @drbd_bm_total_weight(ptr noundef nonnull %call1221) #8
  %conv89 = zext i32 %call88 to i64
  %shl = shl nuw nsw i64 %conv89, 2
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.5, i64 noundef %shl) #8
  %69 = and i32 %state.sroa.0.0.copyload, 448
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %69)
  %switch = icmp eq i32 %69, 256
  br i1 %switch, label %if.then113, label %if.end90.if.end115_crit_edge

if.end90.if.end115_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115

if.then113:                                       ; preds = %if.end90
  %rs_total2.i.i = getelementptr inbounds %struct.drbd_device, ptr %call1221, i32 0, i32 48
  %70 = ptrtoint ptr %rs_total2.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rs_total2.i.i, align 4
  %72 = and i32 %state.sroa.0.0.copyload, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 288, i32 %72)
  %switch.i.i = icmp eq i32 %72, 288
  br i1 %switch.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #10
  %ov_left.i.i = getelementptr inbounds %struct.drbd_device, ptr %call1221, i32 0, i32 62
  %73 = ptrtoint ptr %ov_left.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ov_left.i.i, align 8
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i195 = call i32 @drbd_bm_total_weight(ptr noundef nonnull %call1221) #8
  %rs_failed.i.i = getelementptr inbounds %struct.drbd_device, ptr %call1221, i32 0, i32 49
  %75 = ptrtoint ptr %rs_failed.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rs_failed.i.i, align 8
  %sub.i.i = sub i32 %call.i.i195, %76
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %storemerge.i.i = phi i32 [ %sub.i.i, %if.else.i.i ], [ %74, %if.then.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge.i.i, i32 %71)
  %cmp10.i.i = icmp ugt i32 %storemerge.i.i, %71
  br i1 %cmp10.i.i, label %if.then12.i.i, label %if.else13.i.i

if.then12.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i.i = icmp eq i32 %71, 0
  %spec.select223 = select i1 %tobool.not.i.i, i32 1000, i32 0
  br label %drbd_get_syncer_progress.exit.i

if.else13.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i.i = lshr i32 %storemerge.i.i, 10
  %shr17.i.i = lshr i32 %71, 10
  %add.i.i = add nuw nsw i32 %shr17.i.i, 1
  %mul.i.i = mul nuw i32 %shr.i.i, 1000
  %div.i.i = udiv i32 %mul.i.i, %add.i.i
  %sub19.i.i = sub i32 1000, %div.i.i
  br label %drbd_get_syncer_progress.exit.i

drbd_get_syncer_progress.exit.i:                  ; preds = %if.else13.i.i, %if.then12.i.i
  %rs_left.0.i = phi i32 [ %storemerge.i.i, %if.else13.i.i ], [ %71, %if.then12.i.i ]
  %storemerge37.i.i = phi i32 [ %sub19.i.i, %if.else13.i.i ], [ %spec.select223, %if.then12.i.i ]
  %div.i = udiv i32 %storemerge37.i.i, 50
  %sub.i = sub nsw i32 20, %div.i
  call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %storemerge37.i.i)
  %cmp258.i = icmp ugt i32 %storemerge37.i.i, 99
  br i1 %cmp258.i, label %for.body.preheader.i, label %for.end.thread.i

for.end.thread.i:                                 ; preds = %drbd_get_syncer_progress.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 62) #8
  br label %for.body6.preheader.i

for.body.preheader.i:                             ; preds = %drbd_get_syncer_progress.exit.i
  %umax.i = call i32 @llvm.umax.i32(i32 %div.i, i32 2) #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.0259.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 1, %for.body.preheader.i ]
  call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 61) #8
  %inc.i = add nuw nsw i32 %i.0259.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 62) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %storemerge37.i.i)
  %cmp5260.i = icmp ult i32 %storemerge37.i.i, 1000
  br i1 %cmp5260.i, label %for.end.i.for.body6.preheader.i_crit_edge, label %for.end.i.for.end9.i_crit_edge

for.end.i.for.end9.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end9.i

for.end.i.for.body6.preheader.i_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6.preheader.i

for.body6.preheader.i:                            ; preds = %for.end.i.for.body6.preheader.i_crit_edge, %for.end.thread.i
  %smax.i = call i32 @llvm.smax.i32(i32 %sub.i, i32 1) #8
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.body6.i.for.body6.i_crit_edge, %for.body6.preheader.i
  %i.1261.i = phi i32 [ %inc8.i, %for.body6.i.for.body6.i_crit_edge ], [ 0, %for.body6.preheader.i ]
  call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 46) #8
  %inc8.i = add nuw nsw i32 %i.1261.i, 1
  %exitcond262.not.i = icmp eq i32 %inc8.i, %smax.i
  br i1 %exitcond262.not.i, label %for.body6.i.for.end9.i_crit_edge, label %for.body6.i.for.body6.i_crit_edge

for.body6.i.for.body6.i_crit_edge:                ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6.i

for.body6.i.for.end9.i_crit_edge:                 ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end9.i

for.end9.i:                                       ; preds = %for.body6.i.for.end9.i_crit_edge, %for.end.i.for.end9.i_crit_edge
  call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.10) #8
  %.str.11..str.12.i = select i1 %switch.i.i, ptr @.str.11, ptr @.str.12
  call void @seq_puts(ptr noundef %seq, ptr noundef nonnull %.str.11..str.12.i) #8
  %storemerge37.i.i.frozen = freeze i32 %storemerge37.i.i
  %div15.i = udiv i32 %storemerge37.i.i.frozen, 10
  %77 = mul i32 %div15.i, 10
  %rem.i.decomposed = sub i32 %storemerge37.i.i.frozen, %77
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, i32 noundef %div15.i, i32 noundef %rem.i.decomposed) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %71)
  %cmp16.i = icmp ugt i32 %71, 1048576
  br i1 %cmp16.i, label %if.then17.i, label %if.else20.i

if.then17.i:                                      ; preds = %for.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %78 = lshr i32 %rs_left.0.i, 8
  %shl.i = and i32 %78, 16777212
  %79 = lshr i32 %71, 8
  %shl19.i = and i32 %79, 16777212
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.14, i32 noundef %shl.i, i32 noundef %shl19.i) #8
  br label %if.end23.i

if.else20.i:                                      ; preds = %for.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl21.i = shl i32 %rs_left.0.i, 2
  %shl22.i = shl nuw nsw i32 %71, 2
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.15, i32 noundef %shl21.i, i32 noundef %shl22.i) #8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else20.i, %if.then17.i
  call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.16) #8
  %rs_last_mark.i = getelementptr inbounds %struct.drbd_device, ptr %call1221, i32 0, i32 55
  %80 = ptrtoint ptr %rs_last_mark.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rs_last_mark.i, align 8
  %add.i = add i32 %81, 2
  %rem24.i = srem i32 %add.i, 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %82 = load volatile i32, ptr @jiffies, align 128
  %arrayidx.i = getelementptr %struct.drbd_device, ptr %call1221, i32 0, i32 54, i32 %rem24.i
  %83 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx.i, align 4
  %sub25.i = sub i32 %82, %84
  %div26.i = udiv i32 %sub25.i, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 18099, i32 %sub25.i)
  %cmp27.i = icmp ugt i32 %sub25.i, 18099
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %sub25.i)
  %85 = icmp ult i32 %sub25.i, 100
  %dt.0.i = select i1 %85, i32 1, i32 %div26.i
  %arrayidx33.i = getelementptr %struct.drbd_device, ptr %call1221, i32 0, i32 53, i32 %rem24.i
  %86 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx33.i, align 4
  %sub34.i = sub i32 %87, %rs_left.0.i
  %div35.i = udiv i32 %sub34.i, 100
  %add36.i = add nuw nsw i32 %div35.i, 1
  %div37.i = udiv i32 %rs_left.0.i, %add36.i
  %mul.i = mul i32 %dt.0.i, %div37.i
  %div38.i = udiv i32 %mul.i, 100
  %div39.i = udiv i32 %mul.i, 360000
  %rem40.i = urem i32 %div38.i, 3600
  %div41.lhs.trunc.i = trunc i32 %rem40.i to i16
  %div41255.i = udiv i16 %div41.lhs.trunc.i, 60
  %div41.zext.i = zext i16 %div41255.i to i32
  %rem42.i = urem i32 %div38.i, 60
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.17, i32 noundef %div39.i, i32 noundef %div41.zext.i, i32 noundef %rem42.i) #8
  %div43.i = udiv i32 %sub34.i, %dt.0.i
  %shl44.i = shl i32 %div43.i, 2
  call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999, i32 %shl44.i)
  %cmp.i.i = icmp sgt i32 %shl44.i, 999999
  br i1 %cmp.i.i, label %if.then.i195.i, label %if.else.i196.i, !prof !88

if.then.i195.i:                                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl44.i.frozen = freeze i32 %shl44.i
  %div27.i.i = udiv i32 %shl44.i.frozen, 1000000
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.27, i32 noundef %div27.i.i) #8
  %88 = mul i32 %div27.i.i, 1000000
  %rem28.i.i.decomposed = sub i32 %shl44.i.frozen, %88
  %div229.i.i = udiv i32 %rem28.i.i.decomposed, 1000
  %89 = mul i32 %div229.i.i, 1000
  %rem330.i.i.decomposed = sub i32 %rem28.i.i.decomposed, %89
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.28, i32 noundef %div229.i.i, i32 noundef %rem330.i.i.decomposed) #8
  br label %seq_printf_with_thousands_grouping.exit.i

if.else.i196.i:                                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %shl44.i)
  %cmp4.i.i = icmp sgt i32 %shl44.i, 999
  br i1 %cmp4.i.i, label %if.then11.i.i, label %if.else14.i.i, !prof !89

if.then11.i.i:                                    ; preds = %if.else.i196.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl44.i.frozen224 = freeze i32 %shl44.i
  %div1231.i.i = udiv i32 %shl44.i.frozen224, 1000
  %90 = mul i32 %div1231.i.i, 1000
  %rem1332.i.i.decomposed = sub i32 %shl44.i.frozen224, %90
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.29, i32 noundef %div1231.i.i, i32 noundef %rem1332.i.i.decomposed) #8
  br label %seq_printf_with_thousands_grouping.exit.i

if.else14.i.i:                                    ; preds = %if.else.i196.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.30, i32 noundef %shl44.i) #8
  br label %seq_printf_with_thousands_grouping.exit.i

seq_printf_with_thousands_grouping.exit.i:        ; preds = %if.else14.i.i, %if.then11.i.i, %if.then.i195.i
  call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.19) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @drbd_proc_details to i32))
  %91 = load i32, ptr @drbd_proc_details, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp45.i = icmp sgt i32 %91, 0
  br i1 %cmp45.i, label %if.then46.i, label %seq_printf_with_thousands_grouping.exit.i.if.end64.i_crit_edge

seq_printf_with_thousands_grouping.exit.i.if.end64.i_crit_edge: ; preds = %seq_printf_with_thousands_grouping.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64.i

if.then46.i:                                      ; preds = %seq_printf_with_thousands_grouping.exit.i
  %92 = ptrtoint ptr %rs_last_mark.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %rs_last_mark.i, align 8
  %sub49.i = add i32 %93, 7
  %rem50.i = srem i32 %sub49.i, 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %94 = load volatile i32, ptr @jiffies, align 128
  %arrayidx52.i = getelementptr %struct.drbd_device, ptr %call1221, i32 0, i32 54, i32 %rem50.i
  %95 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx52.i, align 4
  %sub53.i = sub i32 %94, %96
  %div54.i = udiv i32 %sub53.i, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %sub53.i)
  %97 = icmp ult i32 %sub53.i, 100
  %spec.select.i196 = select i1 %97, i32 1, i32 %div54.i
  %arrayidx60.i = getelementptr %struct.drbd_device, ptr %call1221, i32 0, i32 53, i32 %rem50.i
  %98 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx60.i, align 4
  %sub61.i = sub i32 %99, %rs_left.0.i
  %div62.i = udiv i32 %sub61.i, %spec.select.i196
  %shl63.i = shl i32 %div62.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999, i32 %shl63.i)
  %cmp.i197.i = icmp sgt i32 %shl63.i, 999999
  br i1 %cmp.i197.i, label %if.then.i202.i, label %if.else.i204.i, !prof !88

if.then.i202.i:                                   ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl63.i.frozen = freeze i32 %shl63.i
  %div27.i198.i = udiv i32 %shl63.i.frozen, 1000000
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.27, i32 noundef %div27.i198.i) #8
  %100 = mul i32 %div27.i198.i, 1000000
  %rem28.i199.i.decomposed = sub i32 %shl63.i.frozen, %100
  %div229.i200.i = udiv i32 %rem28.i199.i.decomposed, 1000
  %101 = mul i32 %div229.i200.i, 1000
  %rem330.i201.i.decomposed = sub i32 %rem28.i199.i.decomposed, %101
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.28, i32 noundef %div229.i200.i, i32 noundef %rem330.i201.i.decomposed) #8
  br label %seq_printf_with_thousands_grouping.exit209.i

if.else.i204.i:                                   ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %shl63.i)
  %cmp4.i203.i = icmp sgt i32 %shl63.i, 999
  br i1 %cmp4.i203.i, label %if.then11.i207.i, label %if.else14.i208.i, !prof !89

if.then11.i207.i:                                 ; preds = %if.else.i204.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl63.i.frozen225 = freeze i32 %shl63.i
  %div1231.i205.i = udiv i32 %shl63.i.frozen225, 1000
  %102 = mul i32 %div1231.i205.i, 1000
  %rem1332.i206.i.decomposed = sub i32 %shl63.i.frozen225, %102
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.29, i32 noundef %div1231.i205.i, i32 noundef %rem1332.i206.i.decomposed) #8
  br label %seq_printf_with_thousands_grouping.exit209.i

if.else14.i208.i:                                 ; preds = %if.else.i204.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.30, i32 noundef %shl63.i) #8
  br label %seq_printf_with_thousands_grouping.exit209.i

seq_printf_with_thousands_grouping.exit209.i:     ; preds = %if.else14.i208.i, %if.then11.i207.i, %if.then.i202.i
  call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.20) #8
  br label %if.end64.i

if.end64.i:                                       ; preds = %seq_printf_with_thousands_grouping.exit209.i, %seq_printf_with_thousands_grouping.exit.i.if.end64.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %103 = load volatile i32, ptr @jiffies, align 128
  %rs_start.i = getelementptr inbounds %struct.drbd_device, ptr %call1221, i32 0, i32 50
  %104 = ptrtoint ptr %rs_start.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %rs_start.i, align 4
  %rs_paused.i = getelementptr inbounds %struct.drbd_device, ptr %call1221, i32 0, i32 51
  %106 = ptrtoint ptr %rs_paused.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %rs_paused.i, align 8
  %108 = add i32 %105, %107
  %sub66.i = sub i32 %103, %108
  %div67.i = udiv i32 %sub66.i, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %sub66.i)
  %109 = icmp ult i32 %sub66.i, 100
  %spec.store.select.i = select i1 %109, i32 1, i32 %div67.i
  %sub71.i = sub i32 %71, %rs_left.0.i
  %div72.i = udiv i32 %sub71.i, %spec.store.select.i
  %shl73.i = shl i32 %div72.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999, i32 %shl73.i)
  %cmp.i210.i = icmp sgt i32 %shl73.i, 999999
  br i1 %cmp.i210.i, label %if.then.i215.i, label %if.else.i217.i, !prof !88

if.then.i215.i:                                   ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl73.i.frozen = freeze i32 %shl73.i
  %div27.i211.i = udiv i32 %shl73.i.frozen, 1000000
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.27, i32 noundef %div27.i211.i) #8
  %110 = mul i32 %div27.i211.i, 1000000
  %rem28.i212.i.decomposed = sub i32 %shl73.i.frozen, %110
  %div229.i213.i = udiv i32 %rem28.i212.i.decomposed, 1000
  %111 = mul i32 %div229.i213.i, 1000
  %rem330.i214.i.decomposed = sub i32 %rem28.i212.i.decomposed, %111
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.28, i32 noundef %div229.i213.i, i32 noundef %rem330.i214.i.decomposed) #8
  br label %seq_printf_with_thousands_grouping.exit222.i

if.else.i217.i:                                   ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %shl73.i)
  %cmp4.i216.i = icmp sgt i32 %shl73.i, 999
  br i1 %cmp4.i216.i, label %if.then11.i220.i, label %if.else14.i221.i, !prof !89

if.then11.i220.i:                                 ; preds = %if.else.i217.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl73.i.frozen226 = freeze i32 %shl73.i
  %div1231.i218.i = udiv i32 %shl73.i.frozen226, 1000
  %112 = mul i32 %div1231.i218.i, 1000
  %rem1332.i219.i.decomposed = sub i32 %shl73.i.frozen226, %112
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.29, i32 noundef %div1231.i218.i, i32 noundef %rem1332.i219.i.decomposed) #8
  br label %seq_printf_with_thousands_grouping.exit222.i

if.else14.i221.i:                                 ; preds = %if.else.i217.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.30, i32 noundef %shl73.i) #8
  br label %seq_printf_with_thousands_grouping.exit222.i

seq_printf_with_thousands_grouping.exit222.i:     ; preds = %if.else14.i221.i, %if.then11.i220.i, %if.then.i215.i
  call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 41) #8
  %bf.clear.off191.i = add nsw i32 %bf.clear, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bf.clear.off191.i)
  %switch192.i = icmp ult i32 %bf.clear.off191.i, 2
  br i1 %switch192.i, label %if.then83.i, label %seq_printf_with_thousands_grouping.exit222.i.if.end84.i_crit_edge

seq_printf_with_thousands_grouping.exit222.i.if.end84.i_crit_edge: ; preds = %seq_printf_with_thousands_grouping.exit222.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84.i

if.then83.i:                                      ; preds = %seq_printf_with_thousands_grouping.exit222.i
  call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.21) #8
  %c_sync_rate.i = getelementptr inbounds %struct.drbd_device, ptr %call1221, i32 0, i32 100
  %113 = ptrtoint ptr %c_sync_rate.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %c_sync_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999, i32 %114)
  %cmp.i223.i = icmp sgt i32 %114, 999999
  br i1 %cmp.i223.i, label %if.then.i228.i, label %if.else.i230.i, !prof !88

if.then.i228.i:                                   ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #10
  %.frozen = freeze i32 %114
  %div27.i224.i = udiv i32 %.frozen, 1000000
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.27, i32 noundef %div27.i224.i) #8
  %115 = mul i32 %div27.i224.i, 1000000
  %rem28.i225.i.decomposed = sub i32 %.frozen, %115
  %div229.i226.i = udiv i32 %rem28.i225.i.decomposed, 1000
  %116 = mul i32 %div229.i226.i, 1000
  %rem330.i227.i.decomposed = sub i32 %rem28.i225.i.decomposed, %116
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.28, i32 noundef %div229.i226.i, i32 noundef %rem330.i227.i.decomposed) #8
  br label %if.end84.i

if.else.i230.i:                                   ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %114)
  %cmp4.i229.i = icmp sgt i32 %114, 999
  br i1 %cmp4.i229.i, label %if.then11.i233.i, label %if.else14.i234.i, !prof !89

if.then11.i233.i:                                 ; preds = %if.else.i230.i
  call void @__sanitizer_cov_trace_pc() #10
  %.frozen227 = freeze i32 %114
  %div1231.i231.i = udiv i32 %.frozen227, 1000
  %117 = mul i32 %div1231.i231.i, 1000
  %rem1332.i232.i.decomposed = sub i32 %.frozen227, %117
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.29, i32 noundef %div1231.i231.i, i32 noundef %rem1332.i232.i.decomposed) #8
  br label %if.end84.i

if.else14.i234.i:                                 ; preds = %if.else.i230.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.30, i32 noundef %114) #8
  br label %if.end84.i

if.end84.i:                                       ; preds = %if.else14.i234.i, %if.then11.i233.i, %if.then.i228.i, %seq_printf_with_thousands_grouping.exit222.i.if.end84.i_crit_edge
  %cond.i = select i1 %cmp27.i, ptr @.str.23, ptr @.str.24
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.22, ptr noundef nonnull %cond.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @drbd_proc_details to i32))
  %118 = load i32, ptr @drbd_proc_details, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp86.i = icmp sgt i32 %118, 0
  br i1 %cmp86.i, label %if.then87.i, label %if.end84.i.for.inc_crit_edge

if.end84.i.for.inc_crit_edge:                     ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then87.i:                                      ; preds = %if.end84.i
  %call.i197 = call i32 @drbd_bm_bits(ptr noundef %call1221) #8
  br i1 %switch.i.i, label %if.then97.i, label %if.else102.i

if.then97.i:                                      ; preds = %if.then87.i
  %ov_left.i = getelementptr inbounds %struct.drbd_device, ptr %call1221, i32 0, i32 62
  %119 = ptrtoint ptr %ov_left.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %ov_left.i, align 8
  %sub98.i = sub i32 %call.i197, %120
  %121 = ptrtoint ptr %peer_devices.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile ptr, ptr %peer_devices.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %122, %peer_devices.i
  %spec.select.i.i.i = select i1 %cmp.not.i.i.i, ptr null, ptr %122
  %connection.i.i = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i.i.i, i32 0, i32 2
  %123 = ptrtoint ptr %connection.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %connection.i.i, align 4
  %agreed_pro_version.i.i = getelementptr inbounds %struct.drbd_connection, ptr %124, i32 0, i32 19
  %125 = ptrtoint ptr %agreed_pro_version.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %agreed_pro_version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %126)
  %cmp.i236.i = icmp sgt i32 %126, 96
  br i1 %cmp.i236.i, label %verify_can_do_stop_sector.exit.i, label %if.then97.i.if.end103.thread.i_crit_edge

if.then97.i.if.end103.thread.i_crit_edge:         ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103.thread.i

verify_can_do_stop_sector.exit.i:                 ; preds = %if.then97.i
  %127 = ptrtoint ptr %peer_devices.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile ptr, ptr %peer_devices.i, align 4
  %cmp.not.i7.i.i = icmp eq ptr %128, %peer_devices.i
  %spec.select.i8.i.i = select i1 %cmp.not.i7.i.i, ptr null, ptr %128
  %connection2.i.i = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i8.i.i, i32 0, i32 2
  %129 = ptrtoint ptr %connection2.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %connection2.i.i, align 4
  %agreed_pro_version3.i.i = getelementptr inbounds %struct.drbd_connection, ptr %130, i32 0, i32 19
  %131 = ptrtoint ptr %agreed_pro_version3.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %agreed_pro_version3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %132)
  %cmp4.i237.not.i = icmp eq i32 %132, 100
  br i1 %cmp4.i237.not.i, label %verify_can_do_stop_sector.exit.i.if.end103.thread.i_crit_edge, label %if.end103.i

verify_can_do_stop_sector.exit.i.if.end103.thread.i_crit_edge: ; preds = %verify_can_do_stop_sector.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103.thread.i

if.else102.i:                                     ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #10
  %bm_resync_fo.i = getelementptr inbounds %struct.drbd_device, ptr %call1221, i32 0, i32 64
  %133 = ptrtoint ptr %bm_resync_fo.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %bm_resync_fo.i, align 8
  br label %if.end103.thread.i

if.end103.thread.i:                               ; preds = %if.else102.i, %verify_can_do_stop_sector.exit.i.if.end103.thread.i_crit_edge, %if.then97.i.if.end103.thread.i_crit_edge
  %bit_pos.0.ph.i = phi i32 [ %134, %if.else102.i ], [ %sub98.i, %verify_can_do_stop_sector.exit.i.if.end103.thread.i_crit_edge ], [ %sub98.i, %if.then97.i.if.end103.thread.i_crit_edge ]
  %div104248.i = udiv i32 %call.i197, 100
  %add105249.i = add nuw nsw i32 %div104248.i, 1
  %div106250.i = udiv i32 %bit_pos.0.ph.i, %add105249.i
  %conv251.i = zext i32 %bit_pos.0.ph.i to i64
  %mul107252.i = shl nuw nsw i64 %conv251.i, 3
  %conv108253.i = zext i32 %call.i197 to i64
  %mul109254.i = shl nuw nsw i64 %conv108253.i, 3
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.25, i32 noundef %div106250.i, i64 noundef %mul107252.i, i64 noundef %mul109254.i) #8
  br label %if.end115.i

if.end103.i:                                      ; preds = %verify_can_do_stop_sector.exit.i
  %ov_stop_sector.i = getelementptr inbounds %struct.drbd_device, ptr %call1221, i32 0, i32 58
  %135 = ptrtoint ptr %ov_stop_sector.i to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %ov_stop_sector.i, align 8
  %div104.i = udiv i32 %call.i197, 100
  %add105.i = add nuw nsw i32 %div104.i, 1
  %div106.i = udiv i32 %sub98.i, %add105.i
  %conv.i = zext i32 %sub98.i to i64
  %mul107.i = shl nuw nsw i64 %conv.i, 3
  %conv108.i = zext i32 %call.i197 to i64
  %mul109.i = shl nuw nsw i64 %conv108.i, 3
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.25, i32 noundef %div106.i, i64 noundef %mul107.i, i64 noundef %mul109.i) #8
  call void @__sanitizer_cov_trace_switch(i64 %136, ptr @__sancov_gen_cov_switch_values)
  switch i64 %136, label %if.then114.i [
    i64 0, label %if.end103.i.if.end115.i_crit_edge
    i64 -1, label %if.end103.i.if.end115.i_crit_edge228
  ]

if.end103.i.if.end115.i_crit_edge228:             ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115.i

if.end103.i.if.end115.i_crit_edge:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115.i

if.then114.i:                                     ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.26, i64 noundef %136) #8
  br label %if.end115.i

if.end115.i:                                      ; preds = %if.then114.i, %if.end103.i.if.end115.i_crit_edge, %if.end103.i.if.end115.i_crit_edge228, %if.end103.thread.i
  call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #8
  br label %if.end115

if.end115:                                        ; preds = %if.end115.i, %if.end90.if.end115_crit_edge, %if.end90.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @drbd_proc_details to i32))
  %.pr = load i32, ptr @drbd_proc_details, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp116 = icmp sgt i32 %.pr, 0
  br i1 %cmp116, label %land.lhs.true118, label %if.end115.for.inc_crit_edge

if.end115.for.inc_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true118:                                 ; preds = %if.end115
  %137 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %137)
  %bf.load.i198 = load i32, ptr %state3, align 8
  %138 = and i32 %bf.load.i198, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %cmp.i = icmp eq i32 %138, 0
  br i1 %cmp.i, label %land.lhs.true118.if.end126_crit_edge, label %if.end.i

land.lhs.true118.if.end126_crit_edge:             ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end126

if.end.i:                                         ; preds = %land.lhs.true118
  %local_cnt.i = getelementptr inbounds %struct.drbd_device, ptr %call1221, i32 0, i32 41
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %local_cnt.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %local_cnt.i, i32 1, i32 3, i32 1) #8
  %139 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_cnt.i, ptr %local_cnt.i, i32 1, ptr elementtype(i32) %local_cnt.i) #8, !srcloc !90
  %140 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %140)
  %bf.load2.i = load i32, ptr %state3, align 8
  %141 = and i32 %bf.load2.i, 7168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %cmp5.not.i = icmp eq i32 %141, 0
  br i1 %cmp5.not.i, label %if.then6.i, label %if.then125

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @put_ldev(ptr noundef %call1221) #8
  br label %if.end126

if.then125:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %resync = getelementptr inbounds %struct.drbd_device, ptr %call1221, i32 0, i32 65
  %142 = ptrtoint ptr %resync to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %resync, align 4
  call void @lc_seq_printf_stats(ptr noundef %seq, ptr noundef %143) #8
  %act_log = getelementptr inbounds %struct.drbd_device, ptr %call1221, i32 0, i32 83
  %144 = ptrtoint ptr %act_log to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %act_log, align 4
  call void @lc_seq_printf_stats(ptr noundef %seq, ptr noundef %145) #8
  call fastcc void @put_ldev(ptr noundef %call1221)
  br label %if.end126

if.end126:                                        ; preds = %if.then125, %if.then6.i, %land.lhs.true118.if.end126_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @drbd_proc_details to i32))
  %.pr213 = load i32, ptr @drbd_proc_details, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr213)
  %cmp127 = icmp sgt i32 %.pr213, 1
  br i1 %cmp127, label %if.then129, label %if.end126.for.inc_crit_edge

if.end126.for.inc_crit_edge:                      ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then129:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  %ap_actlog_cnt = getelementptr inbounds %struct.drbd_device, ptr %call1221, i32 0, i32 37
  %call.i.i191 = call zeroext i1 @__kasan_check_read(ptr noundef %ap_actlog_cnt, i32 noundef 4) #8
  %146 = ptrtoint ptr %ap_actlog_cnt to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load volatile i32, ptr %ap_actlog_cnt, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.6, i32 noundef %147) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then129, %if.end126.for.inc_crit_edge, %if.end115.for.inc_crit_edge, %if.end84.i.for.inc_crit_edge
  %148 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %i, align 4
  %add132 = add i32 %149, 1
  store i32 %add132, ptr %i, align 4
  %call1 = call ptr @idr_get_next(ptr noundef nonnull @drbd_devices, ptr noundef nonnull %i) #8
  %cmp.not = icmp eq ptr %call1, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %call.i199 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i199, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i202

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i202:                               ; preds = %for.end
  %call1.i200 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i200)
  %tobool.not.i201 = icmp eq i32 %call1.i200, 0
  br i1 %tobool.not.i201, label %land.lhs.true.i202.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i204

land.lhs.true.i202.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i202
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i204:                              ; preds = %land.lhs.true.i202
  %.b4.i203 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i203, label %land.lhs.true2.i204.rcu_read_unlock.exit_crit_edge, label %if.then.i205

land.lhs.true2.i204.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i204
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i205:                                     ; preds = %land.lhs.true2.i204
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.36) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i205, %land.lhs.true2.i204.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i202.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !91
  %150 = call i32 @llvm.read_register.i32(metadata !77) #8
  %and.i.i.i.i.i206 = and i32 %150, -16384
  %151 = inttoptr i32 %and.i.i.i.i.i206 to ptr
  %preempt_count.i.i.i.i207 = getelementptr inbounds %struct.thread_info, ptr %151, i32 0, i32 1
  %152 = ptrtoint ptr %preempt_count.i.i.i.i207 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile i32, ptr %preempt_count.i.i.i.i207, align 4
  %sub.i.i.i = add i32 %153, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i207, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drbd_buildtag() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drbd_conn_str(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drbd_role_str(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drbd_disk_str(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drbd_bm_total_weight(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lc_seq_printf_stats(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_ldev(ptr noundef %device) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %state = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 27
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %state, align 8
  %bf.lshr = lshr i32 %bf.load, 9
  %bf.clear = and i32 %bf.lshr, 15
  %local_cnt = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 41
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %local_cnt, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !92
  tail call void @llvm.prefetch.p0(ptr %local_cnt, i32 1, i32 3, i32 1) #8
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_cnt, ptr %local_cnt, i32 1, ptr elementtype(i32) %local_cnt) #8, !srcloc !93
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %asmresult.i.i.i.i)
  %cmp = icmp sgt i32 %asmresult.i.i.i.i, -1
  br i1 %cmp, label %do.end3, label %do.end3.thread

do.end3.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %2 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.34, ptr noundef %bd_device, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.33, i32 noundef 2099) #11
  br label %if.end15

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp4 = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp4, label %if.then5, label %do.end3.if.end15_crit_edge

do.end3.if.end15_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then5:                                         ; preds = %do.end3
  %6 = zext i32 %bf.clear to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %bf.clear, label %if.then5.if.end14_crit_edge [
    i32 0, label %if.then7
    i32 2, label %if.then10
  ]

if.then5.if.end14_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then7:                                         ; preds = %if.then5
  %flags.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 14
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 24, ptr noundef %flags.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then7.if.end14_crit_edge

if.then7.if.end14_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then.i:                                        ; preds = %if.then7
  %peer_devices.i.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 1
  %7 = ptrtoint ptr %peer_devices.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %peer_devices.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %8, %peer_devices.i.i
  %spec.select.i.i = select i1 %cmp.not.i.i, ptr null, ptr %8
  %connection2.i = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %connection2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %connection2.i, align 4
  %flags3.i = getelementptr inbounds %struct.drbd_connection, ptr %10, i32 0, i32 10
  %call4.i = tail call i32 @_test_and_set_bit(i32 noundef 12, ptr noundef %flags3.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then.i.if.end14.sink.split_crit_edge, label %if.then.i.if.end14_crit_edge

if.then.i.if.end14_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then.i.if.end14.sink.split_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.sink.split

if.then10:                                        ; preds = %if.then5
  %flags = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 14
  %call11 = tail call i32 @_test_and_set_bit(i32 noundef 22, ptr noundef %flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.then12, label %if.then10.if.end14_crit_edge

if.then10.if.end14_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then12:                                        ; preds = %if.then10
  %call.i25 = tail call i32 @_test_and_set_bit(i32 noundef 23, ptr noundef %flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool.not.i26 = icmp eq i32 %call.i25, 0
  br i1 %tobool.not.i26, label %if.then.i34, label %if.then12.if.end14_crit_edge

if.then12.if.end14_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then.i34:                                      ; preds = %if.then12
  %peer_devices.i.i27 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 1
  %11 = ptrtoint ptr %peer_devices.i.i27 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %peer_devices.i.i27, align 4
  %cmp.not.i.i28 = icmp eq ptr %12, %peer_devices.i.i27
  %spec.select.i.i29 = select i1 %cmp.not.i.i28, ptr null, ptr %12
  %connection2.i30 = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i.i29, i32 0, i32 2
  %13 = ptrtoint ptr %connection2.i30 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %connection2.i30, align 4
  %flags3.i31 = getelementptr inbounds %struct.drbd_connection, ptr %14, i32 0, i32 10
  %call4.i32 = tail call i32 @_test_and_set_bit(i32 noundef 12, ptr noundef %flags3.i31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i32)
  %tobool5.not.i33 = icmp eq i32 %call4.i32, 0
  br i1 %tobool5.not.i33, label %if.then.i34.if.end14.sink.split_crit_edge, label %if.then.i34.if.end14_crit_edge

if.then.i34.if.end14_crit_edge:                   ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then.i34.if.end14.sink.split_crit_edge:        ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.sink.split

if.end14.sink.split:                              ; preds = %if.then.i34.if.end14.sink.split_crit_edge, %if.then.i.if.end14.sink.split_crit_edge
  %.sink = phi ptr [ %10, %if.then.i.if.end14.sink.split_crit_edge ], [ %14, %if.then.i34.if.end14.sink.split_crit_edge ]
  %q_wait.i35 = getelementptr inbounds %struct.drbd_connection, ptr %.sink, i32 0, i32 45, i32 2
  tail call void @__wake_up(ptr noundef %q_wait.i35, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %if.end14

if.end14:                                         ; preds = %if.end14.sink.split, %if.then.i34.if.end14_crit_edge, %if.then12.if.end14_crit_edge, %if.then10.if.end14_crit_edge, %if.then.i.if.end14_crit_edge, %if.then7.if.end14_crit_edge, %if.then5.if.end14_crit_edge
  %misc_wait = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 28
  tail call void @__wake_up(ptr noundef %misc_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %do.end3.if.end15_crit_edge, %do.end3.thread
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drbd_bm_bits(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !12, !14, !16, !18, !20, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !69, !70, !71, !72, !73, !74, !76}
!llvm.named.register.sp = !{!77}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @drbd_seq_show.write_ordering_chars, !1, !"write_ordering_chars", i1 false, i1 false}
!1 = !{!"../drivers/block/drbd/drbd_proc.c", i32 224, i32 14}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/block/drbd/drbd_proc.c", i32 230, i32 18}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/block/drbd/drbd_proc.c", i32 265, i32 20}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../drivers/block/drbd/drbd_proc.c", i32 269, i32 9}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/block/drbd/drbd_proc.c", i32 272, i32 7}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/block/drbd/drbd_proc.c", i32 301, i32 20}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/block/drbd/drbd_proc.c", i32 318, i32 20}
!16 = !{ptr @drbd_proc, !17, !"drbd_proc", i1 false, i1 false}
!17 = !{!"../drivers/block/drbd/drbd_proc.c", i32 24, i32 24}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/block/drbd/drbd_proc.c", i32 102, i32 16}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/block/drbd/drbd_proc.c", i32 108, i32 16}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/block/drbd/drbd_proc.c", i32 111, i32 17}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/block/drbd/drbd_proc.c", i32 113, i32 17}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/block/drbd/drbd_proc.c", i32 114, i32 18}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/block/drbd/drbd_proc.c", i32 118, i32 19}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/block/drbd/drbd_proc.c", i32 122, i32 19}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/block/drbd/drbd_proc.c", i32 126, i32 16}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/block/drbd/drbd_proc.c", i32 151, i32 18}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/block/drbd/drbd_proc.c", i32 155, i32 16}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/block/drbd/drbd_proc.c", i32 157, i32 16}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/block/drbd/drbd_proc.c", i32 168, i32 17}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/block/drbd/drbd_proc.c", i32 184, i32 17}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/block/drbd/drbd_proc.c", i32 187, i32 18}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/block/drbd/drbd_proc.c", i32 187, i32 42}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/block/drbd/drbd_proc.c", i32 187, i32 57}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/block/drbd/drbd_proc.c", i32 205, i32 4}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/block/drbd/drbd_proc.c", i32 210, i32 20}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/block/drbd/drbd_proc.c", i32 31, i32 19}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/block/drbd/drbd_proc.c", i32 33, i32 19}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/block/drbd/drbd_proc.c", i32 35, i32 19}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/block/drbd/drbd_proc.c", i32 37, i32 19}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/block/drbd/drbd_int.h", i32 2099, i32 2}
!68 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @put_ldev._entry, !67, !"_entry", i1 false, i1 false}
!73 = !{ptr @put_ldev._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!74 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!75 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!76 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!77 = !{!"sp"}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{i64 2149364281}
!88 = !{!"branch_weights", i32 1, i32 2000}
!89 = !{!"branch_weights", i32 2000, i32 1}
!90 = !{i64 2148348122, i64 2148348148, i64 2148348177, i64 2148348211, i64 2148348242, i64 2148348265}
!91 = !{i64 2149364547}
!92 = !{i64 2148436598}
!93 = !{i64 2148351307, i64 2148351339, i64 2148351368, i64 2148351402, i64 2148351433, i64 2148351456}
!94 = !{i64 2148436827}
