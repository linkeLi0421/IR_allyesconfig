; ModuleID = '/llk/IR_all_yes/net/rds/ib_send.c_pt.bc'
source_filename = "../net/rds/ib_send.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.rds_ib_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rds_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.rds_ib_connection = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, [32 x %struct.ib_wc], [32 x %struct.ib_wc], %struct.atomic_t, %struct.atomic_t, %struct.tasklet_struct, %struct.tasklet_struct, %struct.rds_ib_work_ring, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.mutex, %struct.rds_ib_work_ring, ptr, i32, ptr, ptr, ptr, i64, %struct.rds_ib_refill_cache, %struct.rds_ib_refill_cache, %struct.atomic_t, i32, %struct.atomic64_t, ptr, %struct.ib_send_wr, %struct.ib_sge, i32, i32, %struct.atomic_t, i8, i32, i8, %struct.atomic_t, i32, i32, i8 }
%struct.ib_wc = type { %union.anon.137, i32, i32, i32, i32, ptr, %union.anon.138, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.137 = type { i64 }
%union.anon.138 = type { i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.180, i32 }
%union.anon.180 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rds_ib_work_ring = type { i32, i32, i32, i32, %struct.atomic_t }
%struct.rds_ib_refill_cache = type { ptr, ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.ib_send_wr = type { ptr, %union.anon.159, ptr, i32, i32, i32, %union.anon.160 }
%union.anon.159 = type { i64 }
%union.anon.160 = type { i32 }
%struct.ib_sge = type { i64, i32, i32 }
%struct.rds_ib_send_work = type { ptr, %union.anon.181, [8 x %struct.ib_sge], i32 }
%union.anon.181 = type { %struct.ib_atomic_wr }
%struct.ib_atomic_wr = type { %struct.ib_send_wr, i64, i64, i64, i64, i64, i32 }
%struct.rm_data_op = type { i8, i32, i32, i32, i32, ptr, ptr }
%struct.rm_rdma_op = type { i32, i64, i8, i32, i32, i32, ptr, ptr, ptr, i64, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rm_atomic_op = type { i32, %union.anon.177, i32, i64, i8, ptr, ptr, ptr }
%union.anon.177 = type { %struct.anon.178 }
%struct.anon.178 = type { i64, i64, i64, i64 }
%struct.rds_message = type { %struct.refcount_struct, %struct.list_head, %struct.list_head, %struct.rds_incoming, i64, %struct.in6_addr, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i64, i32, i32, ptr, %struct.anon.176, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rds_incoming = type { %struct.refcount_struct, %struct.list_head, ptr, ptr, %struct.rds_header, i32, %struct.in6_addr, %struct.rds_inc_usercopy, [4 x i64] }
%struct.rds_header = type { i64, i64, i32, i16, i16, i8, i8, [4 x i8], i16, [16 x i8] }
%struct.rds_inc_usercopy = type { i64, i64 }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.anon.176 = type { %struct.rm_atomic_op, %struct.rm_rdma_op, %struct.rm_data_op }
%struct.rds_connection = type { %struct.hlist_node, %struct.in6_addr, %struct.in6_addr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.possible_net_t, i8, %struct.list_head, i32, ptr, %struct.wait_queue_head, i32, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.rds_conn_path = type { ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.spinlock, i64, %struct.list_head, %struct.list_head, i64, ptr, %struct.atomic_t, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.mutex, %struct.wait_queue_head, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rds_transport = type { [16 x i8], %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rdma_cm_id = type { ptr, ptr, ptr, ptr, %struct.rdma_route, i32, i32, i32 }
%struct.rdma_route = type { %struct.rdma_addr, ptr, i32 }
%struct.rdma_addr = type { %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, %struct.rdma_dev_addr }
%struct.__kernel_sockaddr_storage = type { %union.anon.172 }
%union.anon.172 = type { ptr, [124 x i8] }
%struct.rdma_dev_addr = type { [32 x i8], [32 x i8], [32 x i8], i16, i32, i32, ptr, ptr, i32, i32 }
%struct.rds_ext_header_rdma = type { i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.rds_ib_device = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, i8, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.refcount_struct, %struct.work_struct, ptr }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.175, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.175 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.162 }
%struct.anon.162 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rds_mr = type { %struct.rb_node, %struct.kref, i32, i8, ptr, ptr, ptr }

@rds_ib_send_cqe_handler.__UNIQUE_ID_ddebug546 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rds_rdma\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rds_ib_send_cqe_handler\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/rds/ib_send.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s(): wc wr_id 0x%llx status %u (%s) byte_len %u imm_data %u\0A\00", [34 x i8] zeroinitializer }, align 32
@rds_ib_stats = external dso_local global %struct.rds_ib_statistics, section ".data..percpu..shared_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rds_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.4 = internal constant { [115 x i8], [45 x i8] } { [115 x i8] c"\014RDS/IB: send completion on <%pI6c,%pI6c,%d> had status %u (%s), vendor err 0x%x, disconnecting and reconnecting\0A\00", [45 x i8] zeroinitializer }, align 32
@rds_ib_send_grab_credits.__UNIQUE_ID_ddebug547 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rds_ib_send_grab_credits\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s(): wanted=%u credits=%u posted=%u\0A\00", [58 x i8] zeroinitializer }, align 32
@rds_ib_send_add_credits.__UNIQUE_ID_ddebug550 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rds_ib_send_add_credits\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s(): credits=%u current=%u%s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c", ll_send_full\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@rds_ib_xmit.__UNIQUE_ID_ddebug553 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 -118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rds_ib_xmit\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s(): ic %p mapping rm %p: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@rds_ib_xmit.__UNIQUE_ID_ddebug556 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 -86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s(): send %p wr %p num_sge %u next %p\0A\00", [56 x i8] zeroinitializer }, align 32
@rds_ib_xmit.__UNIQUE_ID_ddebug557 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.14, i8 0, i8 -72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s(): ic %p first %p (wr %p) ret %d wr %p\0A\00", [53 x i8] zeroinitializer }, align 32
@rds_ib_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.11, ptr @.str.2, i32 743, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014RDS/IB: ib_post_send to %pI6c returned %d\0A\00", [51 x i8] zeroinitializer }, align 32
@rds_ib_xmit._entry_ptr = internal global ptr @rds_ib_xmit._entry, section ".printk_index", align 4
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014RDS/IB: ib_post_send failed\0A\00", [33 x i8] zeroinitializer }, align 32
@rds_ib_xmit_atomic.__UNIQUE_ID_ddebug558 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 -54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rds_ib_xmit_atomic\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s(): ic %p mapping atomic op %p. mapped %d pg\0A\00", [48 x i8] zeroinitializer }, align 32
@rds_ib_xmit_atomic.__UNIQUE_ID_ddebug559 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.19, i8 0, i8 -50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(): rva %Lx rpa %Lx len %u\0A\00", [34 x i8] zeroinitializer }, align 32
@rds_ib_xmit_atomic.__UNIQUE_ID_ddebug560 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.20, i8 0, i8 -48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s(): ic %p send %p (wr %p) ret %d wr %p\0A\00", [54 x i8] zeroinitializer }, align 32
@rds_ib_xmit_atomic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.17, ptr @.str.2, i32 837, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014RDS/IB: atomic ib_post_send to %pI6c returned %d\0A\00", [44 x i8] zeroinitializer }, align 32
@rds_ib_xmit_atomic._entry_ptr = internal global ptr @rds_ib_xmit_atomic._entry, section ".printk_index", align 4
@rds_ib_xmit_atomic._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.2, i32 844, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014RDS/IB: atomic ib_post_send() rc=%d, but failed_wqe updated!\0A\00", [32 x i8] zeroinitializer }, align 32
@rds_ib_xmit_atomic._entry_ptr.24 = internal global ptr @rds_ib_xmit_atomic._entry.22, section ".printk_index", align 4
@rds_ib_xmit_rdma.__UNIQUE_ID_ddebug561 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 -36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rds_ib_xmit_rdma\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s(): ic %p mapping op %p: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@rds_ib_xmit_rdma.__UNIQUE_ID_ddebug562 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.27, i8 0, i8 -18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s(): ic %p sent %d remote_addr %llu\0A\00", [58 x i8] zeroinitializer }, align 32
@rds_ib_xmit_rdma.__UNIQUE_ID_ddebug563 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.13, i8 0, i8 -15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rds_ib_xmit_rdma.__UNIQUE_ID_ddebug564 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.14, i8 0, i8 -9, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rds_ib_xmit_rdma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.25, ptr @.str.2, i32 993, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014RDS/IB: rdma ib_post_send to %pI6c returned %d\0A\00", [46 x i8] zeroinitializer }, align 32
@rds_ib_xmit_rdma._entry_ptr = internal global ptr @rds_ib_xmit_rdma._entry, section ".printk_index", align 4
@rds_ib_xmit_rdma._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.2, i32 1000, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014RDS/IB: ib_post_send() rc=%d, but failed_wqe updated!\0A\00", [39 x i8] zeroinitializer }, align 32
@rds_ib_xmit_rdma._entry_ptr.31 = internal global ptr @rds_ib_xmit_rdma._entry.29, section ".printk_index", align 4
@rds_ib_send_unmap_op._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.32, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.rds_ib_send_unmap_op = private unnamed_addr constant [21 x i8] c"rds_ib_send_unmap_op\00", align 1
@rds_ib_send_unmap_op._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @__func__.rds_ib_send_unmap_op, ptr @.str.2, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015RDS/IB: %s: unexpected opcode 0x%x in WR!\0A\00", [51 x i8] zeroinitializer }, align 32
@rds_ib_send_unmap_op._entry_ptr = internal global ptr @rds_ib_send_unmap_op._entry, section ".printk_index", align 4
@rds_stats = external dso_local global %struct.rds_statistics, section ".data..percpu..shared_aligned", align 128
@rds_ib_ring_empty_wait = external dso_local global %struct.wait_queue_head, align 4
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"net/rds/rds.h\00", [18 x i8] zeroinitializer }, align 32
@rds_ib_sysctl_max_unsig_wrs = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 5, i64 10]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 5, i64 10]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 48]
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 254, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 304, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 371, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 415, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 555, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 682, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 738, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 742, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 751, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 811, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 824, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 832, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 836, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 844, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 882, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 955, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 992, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 1000, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.147 = private constant [21 x i8] c"../net/rds/ib_send.c\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 179, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"../net/rds/rds.h\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 835, i32 2 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @rds_ib_send_unmap_op._entry, ptr @rds_ib_send_unmap_op._entry_ptr, ptr @rds_ib_xmit._entry, ptr @rds_ib_xmit._entry_ptr, ptr @rds_ib_xmit_atomic._entry, ptr @rds_ib_xmit_atomic._entry.22, ptr @rds_ib_xmit_atomic._entry_ptr, ptr @rds_ib_xmit_atomic._entry_ptr.24, ptr @rds_ib_xmit_rdma._entry, ptr @rds_ib_xmit_rdma._entry.29, ptr @rds_ib_xmit_rdma._entry_ptr, ptr @rds_ib_xmit_rdma._entry_ptr.31, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @rds_ib_send_unmap_op._rs, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 115, i32 160, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_xmit_atomic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_xmit_atomic._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_xmit_rdma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_xmit_rdma._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_send_unmap_op._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_send_unmap_op._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_ib_send_init_ring(ptr nocapture noundef readonly %ic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_send_ring = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 13
  %0 = ptrtoint ptr %i_send_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_send_ring, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp25.not = icmp eq i32 %1, 0
  br i1 %cmp25.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %i_sends = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 17
  %2 = ptrtoint ptr %i_sends to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sends, align 8
  %i_send_hdrs_dma = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 16
  %i_pd = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %send.027 = phi ptr [ %3, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %i.026 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %send.027 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %send.027, align 8
  %conv = zext i32 %i.026 to i64
  %5 = getelementptr inbounds %struct.rds_ib_send_work, ptr %send.027, i32 0, i32 1, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv, ptr %5, align 8
  %s_sge = getelementptr inbounds %struct.rds_ib_send_work, ptr %send.027, i32 0, i32 2
  %sg_list = getelementptr inbounds %struct.rds_ib_send_work, ptr %send.027, i32 0, i32 1, i32 0, i32 0, i32 2
  %7 = ptrtoint ptr %sg_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %s_sge, ptr %sg_list, align 8
  %ex = getelementptr inbounds %struct.rds_ib_send_work, ptr %send.027, i32 0, i32 1, i32 0, i32 0, i32 6
  %8 = ptrtoint ptr %ex to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %ex, align 8
  %9 = ptrtoint ptr %i_send_hdrs_dma to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_send_hdrs_dma, align 4
  %arrayidx2 = getelementptr i32, ptr %10, i32 %i.026
  %11 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx2, align 4
  %conv3 = zext i32 %12 to i64
  %13 = ptrtoint ptr %s_sge to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv3, ptr %s_sge, align 8
  %length = getelementptr inbounds %struct.rds_ib_send_work, ptr %send.027, i32 0, i32 2, i32 0, i32 1
  %14 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 48, ptr %length, align 8
  %15 = ptrtoint ptr %i_pd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_pd, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %lkey = getelementptr inbounds %struct.rds_ib_send_work, ptr %send.027, i32 0, i32 2, i32 0, i32 2
  %19 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %lkey, align 4
  %20 = load ptr, ptr %i_pd, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %lkey8 = getelementptr %struct.rds_ib_send_work, ptr %send.027, i32 0, i32 2, i32 1, i32 2
  %23 = ptrtoint ptr %lkey8 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %lkey8, align 4
  %inc = add nuw i32 %i.026, 1
  %incdec.ptr = getelementptr %struct.rds_ib_send_work, ptr %send.027, i32 1
  %24 = ptrtoint ptr %i_send_ring to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_send_ring, align 8
  %cmp = icmp ult i32 %inc, %25
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_ib_send_clear_ring(ptr nocapture noundef readonly %ic) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_send_ring = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 13
  %0 = ptrtoint ptr %i_send_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_send_ring, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8.not = icmp eq i32 %1, 0
  br i1 %cmp8.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %i_sends = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 17
  %2 = ptrtoint ptr %i_sends to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sends, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.011 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %send.09 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %3, %for.body.preheader ]
  %4 = ptrtoint ptr %send.09 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %send.09, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %opcode = getelementptr inbounds %struct.rds_ib_send_work, ptr %send.09, i32 0, i32 1, i32 0, i32 0, i32 4
  %6 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %opcode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 57005, i32 %7)
  %cmp1.not = icmp eq i32 %7, 57005
  br i1 %cmp1.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call fastcc ptr @rds_ib_send_unmap_op(ptr noundef %ic, ptr noundef %send.09, i32 noundef 5)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.011, 1
  %incdec.ptr = getelementptr %struct.rds_ib_send_work, ptr %send.09, i32 1
  %8 = ptrtoint ptr %i_send_ring to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_send_ring, align 8
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rds_ib_send_unmap_op(ptr nocapture noundef readonly %ic, ptr nocapture noundef %send, i32 noundef %wc_status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %opcode = getelementptr inbounds %struct.rds_ib_send_work, ptr %send, i32 0, i32 1, i32 0, i32 0, i32 4
  %0 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %opcode, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %sw.default [
    i32 2, label %sw.bb
    i32 0, label %entry.sw.bb3_crit_edge
    i32 4, label %entry.sw.bb3_crit_edge65
    i32 6, label %entry.sw.bb13_crit_edge
    i32 5, label %entry.sw.bb13_crit_edge66
  ]

entry.sw.bb13_crit_edge66:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb13

entry.sw.bb13_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb13

entry.sw.bb3_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %send to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %send, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  %add.ptr = getelementptr i8, ptr %4, i32 -456
  %op_nents.i = getelementptr inbounds %struct.rm_data_op, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %op_nents.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %op_nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.then.sw.epilog_crit_edge, label %if.then.i

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %i_cm_id.i = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 3
  %7 = ptrtoint ptr %i_cm_id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_cm_id.i, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %op_sg.i = getelementptr inbounds %struct.rm_data_op, ptr %4, i32 0, i32 6
  %11 = ptrtoint ptr %op_sg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %op_sg.i, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 8
  tail call void @dma_unmap_sg_attrs(ptr noundef %14, ptr noundef %12, i32 noundef %6, i32 noundef 1, i32 noundef 0) #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge65
  %15 = ptrtoint ptr %send to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %send, align 8
  %tobool5.not = icmp eq ptr %16, null
  br i1 %tobool5.not, label %sw.bb3.sw.epilog_crit_edge, label %if.then6

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then6:                                         ; preds = %sw.bb3
  %add.ptr10 = getelementptr i8, ptr %16, i32 -392
  %op_mapped.i = getelementptr inbounds %struct.rm_rdma_op, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %op_mapped.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i = load i8, ptr %op_mapped.i, align 8
  %18 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i47 = icmp eq i8 %18, 0
  br i1 %tobool.not.i47, label %if.then6.if.end.i_crit_edge, label %if.then.i51

if.then6.if.end.i_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i51:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %i_cm_id.i48 = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 3
  %19 = ptrtoint ptr %i_cm_id.i48 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_cm_id.i48, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %op_sg.i49 = getelementptr inbounds %struct.rm_rdma_op, ptr %16, i32 0, i32 6
  %23 = ptrtoint ptr %op_sg.i49 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %op_sg.i49, align 8
  %op_nents.i50 = getelementptr inbounds %struct.rm_rdma_op, ptr %16, i32 0, i32 4
  %25 = ptrtoint ptr %op_nents.i50 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %op_nents.i50, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool4.not.i = icmp sgt i8 %bf.load.i, -1
  %cond.i = select i1 %tobool4.not.i, i32 2, i32 1
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %22, align 8
  tail call void @dma_unmap_sg_attrs(ptr noundef %28, ptr noundef %24, i32 noundef %26, i32 noundef %cond.i, i32 noundef 0) #9
  %29 = ptrtoint ptr %op_mapped.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load6.i = load i8, ptr %op_mapped.i, align 8
  %bf.clear7.i = and i8 %bf.load6.i, -9
  store i8 %bf.clear7.i, ptr %op_mapped.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i51, %if.then6.if.end.i_crit_edge
  %30 = zext i32 %wc_status to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %wc_status, label %sw.default.i.i [
    i32 5, label %if.end.i.rds_ib_send_complete.exit.i_crit_edge
    i32 0, label %if.end.i.sw.epilog.i.i_crit_edge
    i32 10, label %sw.bb2.i.i
  ]

if.end.i.sw.epilog.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i

if.end.i.rds_ib_send_complete.exit.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rds_ib_send_complete.exit.i

sw.bb2.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i

sw.default.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.default.i.i, %sw.bb2.i.i, %if.end.i.sw.epilog.i.i_crit_edge
  %notify_status.0.i.i = phi i32 [ 4, %sw.default.i.i ], [ 1, %sw.bb2.i.i ], [ %wc_status, %if.end.i.sw.epilog.i.i_crit_edge ]
  tail call void @rds_rdma_send_complete(ptr noundef %add.ptr10, i32 noundef %notify_status.0.i.i) #9, !callees !90
  br label %rds_ib_send_complete.exit.i

rds_ib_send_complete.exit.i:                      ; preds = %sw.epilog.i.i, %if.end.i.rds_ib_send_complete.exit.i_crit_edge
  %31 = ptrtoint ptr %op_mapped.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load9.i = load i8, ptr %op_mapped.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load9.i)
  %tobool12.not.i = icmp sgt i8 %bf.load9.i, -1
  %op_bytes27.i = getelementptr inbounds %struct.rm_rdma_op, ptr %16, i32 0, i32 3
  %32 = ptrtoint ptr %op_bytes27.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %op_bytes27.i, align 4
  %conv28.i = zext i32 %33 to i64
  %34 = tail call i32 @llvm.read_register.i32(metadata !80) #9
  %and.i.i.i61.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i61.i to ptr
  %preempt_count.i.i62.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i62.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i62.i, align 4
  %add.i63.i = add i32 %37, 1
  store volatile i32 %add.i63.i, ptr %preempt_count.i.i62.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9
  %38 = tail call i32 @llvm.read_register.i32(metadata !80) #9
  %and.i67.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i67.i to ptr
  %cpu41.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %cpu41.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cpu41.i, align 4
  %arrayidx42.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %41
  %42 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx42.i, align 4
  %add43.i = add i32 %43, ptrtoint (ptr @rds_stats to i32)
  %44 = inttoptr i32 %add43.i to ptr
  br i1 %tobool12.not.i, label %do.body26.i, label %do.body.i

do.body.i:                                        ; preds = %rds_ib_send_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %s_send_rdma_bytes.i = getelementptr inbounds %struct.rds_statistics, ptr %44, i32 0, i32 23
  %45 = ptrtoint ptr %s_send_rdma_bytes.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %s_send_rdma_bytes.i, align 8
  %add20.i = add i64 %46, %conv28.i
  store i64 %add20.i, ptr %s_send_rdma_bytes.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !91
  br label %rds_ib_send_unmap_rdma.exit

do.body26.i:                                      ; preds = %rds_ib_send_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %s_recv_rdma_bytes.i = getelementptr inbounds %struct.rds_statistics, ptr %44, i32 0, i32 11
  %47 = ptrtoint ptr %s_recv_rdma_bytes.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %s_recv_rdma_bytes.i, align 8
  %add44.i = add i64 %48, %conv28.i
  store i64 %add44.i, ptr %s_recv_rdma_bytes.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !92
  br label %rds_ib_send_unmap_rdma.exit

rds_ib_send_unmap_rdma.exit:                      ; preds = %do.body26.i, %do.body.i
  %49 = tail call i32 @llvm.read_register.i32(metadata !80) #9
  %and.i.i.i64.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i64.i to ptr
  %preempt_count.i.i65.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i65.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i65.i, align 4
  %sub.i66.i = add i32 %52, -1
  store volatile i32 %sub.i66.i, ptr %preempt_count.i.i65.i, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry.sw.bb13_crit_edge, %entry.sw.bb13_crit_edge66
  %53 = ptrtoint ptr %send to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %send, align 8
  %tobool15.not = icmp eq ptr %54, null
  br i1 %tobool15.not, label %sw.bb13.sw.epilog_crit_edge, label %if.then16

sw.bb13.sw.epilog_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then16:                                        ; preds = %sw.bb13
  %add.ptr20 = getelementptr i8, ptr %54, i32 -320
  %op_mapped.i52 = getelementptr inbounds %struct.rm_atomic_op, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %op_mapped.i52 to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load.i53 = load i8, ptr %op_mapped.i52, align 8
  %56 = and i8 %bf.load.i53, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i54 = icmp eq i8 %56, 0
  br i1 %tobool.not.i54, label %if.then16.if.end.i59_crit_edge, label %if.then.i57

if.then16.if.end.i59_crit_edge:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i59

if.then.i57:                                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %i_cm_id.i55 = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 3
  %57 = ptrtoint ptr %i_cm_id.i55 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %i_cm_id.i55, align 8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %op_sg.i56 = getelementptr inbounds %struct.rm_atomic_op, ptr %54, i32 0, i32 5
  %61 = ptrtoint ptr %op_sg.i56 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %op_sg.i56, align 4
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %60, align 8
  tail call void @dma_unmap_sg_attrs(ptr noundef %64, ptr noundef %62, i32 noundef 1, i32 noundef 2, i32 noundef 0) #9
  %65 = ptrtoint ptr %op_mapped.i52 to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load2.i = load i8, ptr %op_mapped.i52, align 8
  %bf.clear3.i = and i8 %bf.load2.i, -33
  store i8 %bf.clear3.i, ptr %op_mapped.i52, align 8
  br label %if.end.i59

if.end.i59:                                       ; preds = %if.then.i57, %if.then16.if.end.i59_crit_edge
  %66 = zext i32 %wc_status to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %wc_status, label %sw.default.i.i61 [
    i32 5, label %if.end.i59.rds_ib_send_complete.exit.i64_crit_edge
    i32 0, label %if.end.i59.sw.epilog.i.i63_crit_edge
    i32 10, label %sw.bb2.i.i60
  ]

if.end.i59.sw.epilog.i.i63_crit_edge:             ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i63

if.end.i59.rds_ib_send_complete.exit.i64_crit_edge: ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #11
  br label %rds_ib_send_complete.exit.i64

sw.bb2.i.i60:                                     ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i63

sw.default.i.i61:                                 ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i63

sw.epilog.i.i63:                                  ; preds = %sw.default.i.i61, %sw.bb2.i.i60, %if.end.i59.sw.epilog.i.i63_crit_edge
  %notify_status.0.i.i62 = phi i32 [ 4, %sw.default.i.i61 ], [ 1, %sw.bb2.i.i60 ], [ %wc_status, %if.end.i59.sw.epilog.i.i63_crit_edge ]
  tail call void @rds_atomic_send_complete(ptr noundef %add.ptr20, i32 noundef %notify_status.0.i.i62) #9, !callees !90
  br label %rds_ib_send_complete.exit.i64

rds_ib_send_complete.exit.i64:                    ; preds = %sw.epilog.i.i63, %if.end.i59.rds_ib_send_complete.exit.i64_crit_edge
  %67 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %54, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp.i = icmp eq i32 %68, 0
  %69 = tail call i32 @llvm.read_register.i32(metadata !80) #9
  %and.i.i.i.i = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %72, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9
  %73 = tail call i32 @llvm.read_register.i32(metadata !80) #9
  %and.i.i = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %76
  %77 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %78, ptrtoint (ptr @rds_ib_stats to i32)
  %79 = inttoptr i32 %add.i to ptr
  br i1 %cmp.i, label %do.body5.i, label %do.body17.i

do.body5.i:                                       ; preds = %rds_ib_send_complete.exit.i64
  call void @__sanitizer_cov_trace_pc() #11
  %s_ib_atomic_cswp.i = getelementptr inbounds %struct.rds_ib_statistics, ptr %79, i32 0, i32 37
  %80 = ptrtoint ptr %s_ib_atomic_cswp.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %s_ib_atomic_cswp.i, align 8
  %inc.i = add i64 %81, 1
  store i64 %inc.i, ptr %s_ib_atomic_cswp.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !93
  br label %rds_ib_send_unmap_atomic.exit

do.body17.i:                                      ; preds = %rds_ib_send_complete.exit.i64
  call void @__sanitizer_cov_trace_pc() #11
  %s_ib_atomic_fadd.i = getelementptr inbounds %struct.rds_ib_statistics, ptr %79, i32 0, i32 38
  %82 = ptrtoint ptr %s_ib_atomic_fadd.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %s_ib_atomic_fadd.i, align 8
  %inc32.i = add i64 %83, 1
  store i64 %inc32.i, ptr %s_ib_atomic_fadd.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !94
  br label %rds_ib_send_unmap_atomic.exit

rds_ib_send_unmap_atomic.exit:                    ; preds = %do.body17.i, %do.body5.i
  %84 = tail call i32 @llvm.read_register.i32(metadata !80) #9
  %and.i.i.i48.i = and i32 %84, -16384
  %85 = inttoptr i32 %and.i.i.i48.i to ptr
  %preempt_count.i.i49.i = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %preempt_count.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %preempt_count.i.i49.i, align 4
  %sub.i50.i = add i32 %87, -1
  store volatile i32 %sub.i50.i, ptr %preempt_count.i.i49.i, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @rds_ib_send_unmap_op._rs, ptr noundef nonnull @__func__.rds_ib_send_unmap_op) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool23.not = icmp eq i32 %call, 0
  br i1 %tobool23.not, label %sw.default.sw.epilog_crit_edge, label %do.end

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end:                                           ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %opcode, align 8
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.rds_ib_send_unmap_op, i32 noundef %89) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.default.sw.epilog_crit_edge, %rds_ib_send_unmap_atomic.exit, %sw.bb13.sw.epilog_crit_edge, %rds_ib_send_unmap_rdma.exit, %sw.bb3.sw.epilog_crit_edge, %if.then.i, %if.then.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %rm.0 = phi ptr [ null, %do.end ], [ null, %sw.default.sw.epilog_crit_edge ], [ %add.ptr20, %rds_ib_send_unmap_atomic.exit ], [ null, %sw.bb13.sw.epilog_crit_edge ], [ %add.ptr10, %rds_ib_send_unmap_rdma.exit ], [ null, %sw.bb3.sw.epilog_crit_edge ], [ null, %sw.bb.sw.epilog_crit_edge ], [ %add.ptr, %if.then.sw.epilog_crit_edge ], [ %add.ptr, %if.then.i ]
  %90 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 57005, ptr %opcode, align 8
  ret ptr %rm.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_ib_send_cqe_handler(ptr noundef %ic, ptr nocapture noundef readonly %wc) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conn1 = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 2
  %0 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_send_cqe_handler.__UNIQUE_ID_ddebug546, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_send_cqe_handler, %if.then)) #9
          to label %do.body7 [label %if.then], !srcloc !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %wc to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %wc, align 8
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 8
  %call5 = tail call ptr @ib_wc_status_msg(i32 noundef %5) #13
  %byte_len = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 4
  %6 = ptrtoint ptr %byte_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %byte_len, align 4
  %ex = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 6
  %8 = ptrtoint ptr %ex to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ex, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_send_cqe_handler.__UNIQUE_ID_ddebug546, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i64 noundef %3, i32 noundef %5, ptr noundef %call5, i32 noundef %7, i32 noundef %9) #9
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  %10 = tail call i32 @llvm.read_register.i32(metadata !80) #9
  %and.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %13, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !96
  %14 = tail call i32 @llvm.read_register.i32(metadata !80) #9
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %add = add i32 %19, ptrtoint (ptr @rds_ib_stats to i32)
  %20 = inttoptr i32 %add to ptr
  %s_ib_tx_cq_event = getelementptr inbounds %struct.rds_ib_statistics, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %s_ib_tx_cq_event to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %s_ib_tx_cq_event, align 8
  %inc = add i64 %22, 1
  store i64 %inc, ptr %s_ib_tx_cq_event, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !97
  %23 = tail call i32 @llvm.read_register.i32(metadata !80) #9
  %and.i.i.i170 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i170 to ptr
  %preempt_count.i.i171 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i171 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i171, align 4
  %sub.i = add i32 %26, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i171, align 4
  %27 = ptrtoint ptr %wc to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %wc, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %28)
  %cmp = icmp eq i64 %28, -1
  br i1 %cmp, label %if.then22, label %if.end49

if.then22:                                        ; preds = %do.body7
  %i_ack_queued = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 36
  %29 = ptrtoint ptr %i_ack_queued to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %i_ack_queued, align 4
  %add23 = add i32 %30, 50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add23, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp24 = icmp slt i32 %sub, 0
  br i1 %cmp24, label %do.body27, label %if.then22.if.end48_crit_edge

if.then22.if.end48_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

do.body27:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %32 = tail call i32 @llvm.read_register.i32(metadata !80) #9
  %and.i.i.i172 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i172 to ptr
  %preempt_count.i.i173 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i173 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i173, align 4
  %add.i174 = add i32 %35, 1
  store volatile i32 %add.i174, ptr %preempt_count.i.i173, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !98
  %36 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cpu, align 4
  %arrayidx40 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx40, align 4
  %add41 = add i32 %39, ptrtoint (ptr @rds_ib_stats to i32)
  %40 = inttoptr i32 %add41 to ptr
  %s_ib_tx_stalled = getelementptr inbounds %struct.rds_ib_statistics, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %s_ib_tx_stalled to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %s_ib_tx_stalled, align 8
  %inc42 = add i64 %42, 1
  store i64 %inc42, ptr %s_ib_tx_stalled, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !99
  %43 = tail call i32 @llvm.read_register.i32(metadata !80) #9
  %and.i.i.i175 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i175 to ptr
  %preempt_count.i.i176 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i176 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i176, align 4
  %sub.i177 = add i32 %46, -1
  store volatile i32 %sub.i177, ptr %preempt_count.i.i176, align 4
  br label %if.end48

if.end48:                                         ; preds = %do.body27, %if.then22.if.end48_crit_edge
  tail call void @rds_ib_ack_send_complete(ptr noundef %ic) #9
  br label %cleanup

if.end49:                                         ; preds = %do.body7
  %i_send_ring = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 13
  %call50 = tail call i32 @rds_ib_ring_oldest(ptr noundef %i_send_ring) #9
  %47 = ptrtoint ptr %wc to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %wc, align 8
  %conv = trunc i64 %48 to i32
  %call52 = tail call i32 @rds_ib_ring_completed(ptr noundef %i_send_ring, i32 noundef %conv, i32 noundef %call50) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53186.not = icmp eq i32 %call52, 0
  br i1 %cmp53186.not, label %if.end49.for.end_crit_edge, label %for.body.lr.ph

if.end49.for.end_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end49
  %i_sends = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 17
  %status60 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end99.for.body_crit_edge, %for.body.lr.ph
  %oldest.0189 = phi i32 [ %call50, %for.body.lr.ph ], [ %rem, %if.end99.for.body_crit_edge ]
  %i.0188 = phi i32 [ 0, %for.body.lr.ph ], [ %inc102, %if.end99.for.body_crit_edge ]
  %nr_sig.0187 = phi i32 [ 0, %for.body.lr.ph ], [ %spec.select, %if.end99.for.body_crit_edge ]
  %49 = ptrtoint ptr %i_sends to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i_sends, align 8
  %arrayidx55 = getelementptr %struct.rds_ib_send_work, ptr %50, i32 %oldest.0189
  %send_flags = getelementptr %struct.rds_ib_send_work, ptr %50, i32 %oldest.0189, i32 1, i32 0, i32 0, i32 5
  %51 = ptrtoint ptr %send_flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %send_flags, align 4
  %and = lshr i32 %52, 1
  %and.lobit = and i32 %and, 1
  %spec.select = add i32 %and.lobit, %nr_sig.0187
  %53 = ptrtoint ptr %status60 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %status60, align 8
  %call61 = tail call fastcc ptr @rds_ib_send_unmap_op(ptr noundef %ic, ptr noundef %arrayidx55, i32 noundef %54)
  %s_queued = getelementptr %struct.rds_ib_send_work, ptr %50, i32 %oldest.0189, i32 3
  %55 = ptrtoint ptr %s_queued to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %s_queued, align 8
  %add62 = add i32 %56, 50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %57 = load volatile i32, ptr @jiffies, align 128
  %sub63 = sub i32 %add62, %57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub63)
  %cmp64 = icmp slt i32 %sub63, 0
  br i1 %cmp64, label %do.body68, label %for.body.if.end90_crit_edge

for.body.if.end90_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

do.body68:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %58 = tail call i32 @llvm.read_register.i32(metadata !80) #9
  %and.i.i.i178 = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i178 to ptr
  %preempt_count.i.i179 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %preempt_count.i.i179 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %preempt_count.i.i179, align 4
  %add.i180 = add i32 %61, 1
  store volatile i32 %add.i180, ptr %preempt_count.i.i179, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !100
  %62 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cpu, align 4
  %arrayidx81 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %63
  %64 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx81, align 4
  %add82 = add i32 %65, ptrtoint (ptr @rds_ib_stats to i32)
  %66 = inttoptr i32 %add82 to ptr
  %s_ib_tx_stalled83 = getelementptr inbounds %struct.rds_ib_statistics, ptr %66, i32 0, i32 8
  %67 = ptrtoint ptr %s_ib_tx_stalled83 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %s_ib_tx_stalled83, align 8
  %inc84 = add i64 %68, 1
  store i64 %inc84, ptr %s_ib_tx_stalled83, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !101
  %69 = tail call i32 @llvm.read_register.i32(metadata !80) #9
  %and.i.i.i181 = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i181 to ptr
  %preempt_count.i.i182 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %preempt_count.i.i182 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %preempt_count.i.i182, align 4
  %sub.i183 = add i32 %72, -1
  store volatile i32 %sub.i183, ptr %preempt_count.i.i182, align 4
  br label %if.end90

if.end90:                                         ; preds = %do.body68, %for.body.if.end90_crit_edge
  %73 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx55, align 8
  %tobool91.not = icmp eq ptr %74, null
  br i1 %tobool91.not, label %if.end90.if.end99_crit_edge, label %if.then92

if.end90.if.end99_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

if.then92:                                        ; preds = %if.end90
  %m_final_op = getelementptr inbounds %struct.rds_message, ptr %call61, i32 0, i32 13
  %75 = ptrtoint ptr %m_final_op to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %m_final_op, align 8
  %cmp94 = icmp eq ptr %74, %76
  br i1 %cmp94, label %if.then96, label %if.then92.if.end97_crit_edge

if.then92.if.end97_crit_edge:                     ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

if.then96:                                        ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rds_message_unmapped(ptr noundef %call61) #9
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %if.then92.if.end97_crit_edge
  tail call void @rds_message_put(ptr noundef %call61) #9
  %77 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %arrayidx55, align 8
  br label %if.end99

if.end99:                                         ; preds = %if.end97, %if.end90.if.end99_crit_edge
  %add100 = add i32 %oldest.0189, 1
  %78 = ptrtoint ptr %i_send_ring to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %i_send_ring, align 8
  %rem = urem i32 %add100, %79
  %inc102 = add nuw i32 %i.0188, 1
  %exitcond.not = icmp eq i32 %inc102, %call52
  br i1 %exitcond.not, label %if.end99.for.end_crit_edge, label %if.end99.for.body_crit_edge

if.end99.for.body_crit_edge:                      ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end99.for.end_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end99.for.end_crit_edge, %if.end49.for.end_crit_edge
  %nr_sig.0.lcssa = phi i32 [ 0, %if.end49.for.end_crit_edge ], [ %spec.select, %if.end99.for.end_crit_edge ]
  tail call void @rds_ib_ring_free(ptr noundef %i_send_ring, i32 noundef %call52) #9
  %i_signaled_sends.i = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 18
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_signaled_sends.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @llvm.prefetch.p0(ptr %i_signaled_sends.i, i32 1, i32 3, i32 1) #9
  %80 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_signaled_sends.i, ptr %i_signaled_sends.i, i32 %nr_sig.0.lcssa, ptr elementtype(i32) %i_signaled_sends.i) #9, !srcloc !103
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %80, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %for.end.do.body.i_crit_edge

for.end.do.body.i_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

land.lhs.true.i:                                  ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.wait_queue_head, ptr @rds_ib_ring_empty_wait, i32 0, i32 1) to i32))
  %81 = load volatile ptr, ptr getelementptr inbounds (%struct.wait_queue_head, ptr @rds_ib_ring_empty_wait, i32 0, i32 1), align 4
  %cmp.i.i.not.i = icmp eq ptr %81, getelementptr inbounds (%struct.wait_queue_head, ptr @rds_ib_ring_empty_wait, i32 0, i32 1)
  br i1 %cmp.i.i.not.i, label %land.lhs.true.i.do.body.i_crit_edge, label %if.then.i

land.lhs.true.i.do.body.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__wake_up(ptr noundef nonnull @rds_ib_ring_empty_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %land.lhs.true.i.do.body.i_crit_edge, %for.end.do.body.i_crit_edge
  %call.i.i14.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_signaled_sends.i, i32 noundef 4) #9
  %82 = ptrtoint ptr %i_signaled_sends.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %i_signaled_sends.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp4.i = icmp slt i32 %83, 0
  br i1 %cmp4.i, label %do.body8.i, label %rds_ib_sub_signaled.exit, !prof !105

do.body8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/ib_send.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 234, 0\0A.popsection", ""() #9, !srcloc !106
  unreachable

rds_ib_sub_signaled.exit:                         ; preds = %do.body.i
  %c_path = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 17
  %84 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %c_path, align 4
  %cp_flags = getelementptr inbounds %struct.rds_conn_path, ptr %85, i32 0, i32 16
  %call105 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %cp_flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %lor.lhs.false, label %rds_ib_sub_signaled.exit.if.then109_crit_edge

rds_ib_sub_signaled.exit.if.then109_crit_edge:    ; preds = %rds_ib_sub_signaled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then109

lor.lhs.false:                                    ; preds = %rds_ib_sub_signaled.exit
  %c_map_queued = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 16
  %86 = ptrtoint ptr %c_map_queued to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %c_map_queued, align 4
  %and1.i = and i32 %87, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool108.not = icmp eq i32 %and1.i, 0
  br i1 %tobool108.not, label %lor.lhs.false.if.end113_crit_edge, label %lor.lhs.false.if.then109_crit_edge

lor.lhs.false.if.then109_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then109

lor.lhs.false.if.end113_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

if.then109:                                       ; preds = %lor.lhs.false.if.then109_crit_edge, %rds_ib_sub_signaled.exit.if.then109_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rds_wq to i32))
  %88 = load ptr, ptr @rds_wq, align 4
  %89 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %c_path, align 4
  %cp_send_w = getelementptr inbounds %struct.rds_conn_path, ptr %90, i32 0, i32 18
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %88, ptr noundef %cp_send_w, i32 noundef 0) #9
  br label %if.end113

if.end113:                                        ; preds = %if.then109, %lor.lhs.false.if.end113_crit_edge
  %status114 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %91 = ptrtoint ptr %status114 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %status114, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp115.not = icmp eq i32 %92, 0
  br i1 %cmp115.not, label %if.end113.cleanup_crit_edge, label %land.lhs.true

if.end113.cleanup_crit_edge:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end113
  %c_trans.i = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 8
  %93 = ptrtoint ptr %c_trans.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %c_trans.i, align 4
  %t_mp_capable.i = getelementptr inbounds %struct.rds_transport, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %t_mp_capable.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %bf.load.i = load i8, ptr %t_mp_capable.i, align 4
  %96 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool.not.i = icmp eq i8 %96, 0
  br i1 %tobool.not.i, label %land.lhs.true.rds_conn_up.exit_crit_edge, label %do.end.i, !prof !107

land.lhs.true.rds_conn_up.exit_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %rds_conn_up.exit

do.end.i:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 835, i32 noundef 9, ptr noundef null) #9
  br label %rds_conn_up.exit

rds_conn_up.exit:                                 ; preds = %do.end.i, %land.lhs.true.rds_conn_up.exit_crit_edge
  %97 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %c_path, align 4
  %cp_state.i.i = getelementptr inbounds %struct.rds_conn_path, ptr %98, i32 0, i32 14
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cp_state.i.i, i32 noundef 4) #9
  %99 = ptrtoint ptr %cp_state.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %cp_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %100)
  %cmp.i.i.not = icmp eq i32 %100, 3
  br i1 %cmp.i.i.not, label %if.then119, label %rds_conn_up.exit.cleanup_crit_edge

rds_conn_up.exit.cleanup_crit_edge:               ; preds = %rds_conn_up.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then119:                                       ; preds = %rds_conn_up.exit
  call void @__sanitizer_cov_trace_pc() #11
  %c_laddr = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 1
  %c_faddr = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 2
  %c_tos = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 14
  %101 = ptrtoint ptr %c_tos to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %c_tos, align 4
  %conv120 = zext i8 %102 to i32
  %103 = ptrtoint ptr %status114 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %status114, align 8
  %call123 = tail call ptr @ib_wc_status_msg(i32 noundef %104) #13
  %vendor_err = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 3
  %105 = ptrtoint ptr %vendor_err to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %vendor_err, align 8
  tail call void (ptr, ptr, ...) @__rds_ib_conn_error(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef %c_laddr, ptr noundef %c_faddr, i32 noundef %conv120, i32 noundef %104, ptr noundef %call123, i32 noundef %106) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then119, %rds_conn_up.exit.cleanup_crit_edge, %if.end113.cleanup_crit_edge, %if.end48
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local ptr @ib_wc_status_msg(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_ack_send_complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_ib_ring_oldest(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_ib_ring_completed(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_message_unmapped(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_message_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_ring_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rds_ib_sub_signaled(ptr noundef %ic, i32 noundef %nr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_signaled_sends = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_signaled_sends, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @llvm.prefetch.p0(ptr %i_signaled_sends, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_signaled_sends, ptr %i_signaled_sends, i32 %nr, ptr elementtype(i32) %i_signaled_sends) #9, !srcloc !103
  %asmresult.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp, label %land.lhs.true, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.wait_queue_head, ptr @rds_ib_ring_empty_wait, i32 0, i32 1) to i32))
  %1 = load volatile ptr, ptr getelementptr inbounds (%struct.wait_queue_head, ptr @rds_ib_ring_empty_wait, i32 0, i32 1), align 4
  %cmp.i.i.not = icmp eq ptr %1, getelementptr inbounds (%struct.wait_queue_head, ptr @rds_ib_ring_empty_wait, i32 0, i32 1)
  br i1 %cmp.i.i.not, label %land.lhs.true.do.body_crit_edge, label %if.then

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__wake_up(ptr noundef nonnull @rds_ib_ring_empty_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %do.body

do.body:                                          ; preds = %if.then, %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  %call.i.i14 = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_signaled_sends, i32 noundef 4) #9
  %2 = ptrtoint ptr %i_signaled_sends to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %i_signaled_sends, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp4 = icmp slt i32 %3, 0
  br i1 %cmp4, label %do.body8, label %do.end12, !prof !105

do.body8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/ib_send.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 234, 0\0A.popsection", ""() #9, !srcloc !106
  unreachable

do.end12:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rds_ib_conn_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_ib_send_grab_credits(ptr noundef %ic, i32 noundef %wanted, ptr nocapture noundef writeonly %adv_credits, i32 noundef %need_posted, i32 noundef %max_posted) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adv_credits to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %adv_credits, align 4
  %i_flowctl = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 38
  %1 = ptrtoint ptr %i_flowctl to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %i_flowctl, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %try_again.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

try_again.preheader:                              ; preds = %entry
  %i_credits = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 37
  %i_cm_id = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 3
  br label %try_again

try_again:                                        ; preds = %atomic_cmpxchg.exit.try_again_crit_edge, %try_again.preheader
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_credits, i32 noundef 4) #9
  %2 = ptrtoint ptr %i_credits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %i_credits, align 4
  %shr = ashr i32 %3, 16
  %and = and i32 %3, 65535
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_send_grab_credits.__UNIQUE_ID_ddebug547, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_send_grab_credits, %if.then5)) #9
          to label %do.end [label %if.then5], !srcloc !95

if.then5:                                         ; preds = %try_again
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_send_grab_credits.__UNIQUE_ID_ddebug547, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef %wanted, i32 noundef %and, i32 noundef %shr) #9
  br label %do.end

do.end:                                           ; preds = %if.then5, %try_again
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %3)
  %tobool8.not = icmp ult i32 %3, 65536
  %dec = sext i1 %tobool8.not to i32
  %spec.select = add nsw i32 %and, %dec
  %avail.0 = select i1 %tobool7.not, i32 0, i32 %spec.select
  call void @__sanitizer_cov_trace_cmp4(i32 %avail.0, i32 %wanted)
  %cmp = icmp ult i32 %avail.0, %wanted
  br i1 %cmp, label %if.then11, label %do.end.if.end12_crit_edge

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %i_cm_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_cm_id, align 8
  %context = getelementptr inbounds %struct.rdma_cm_id, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %context, align 4
  %c_path = getelementptr inbounds %struct.rds_connection, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %c_path, align 4
  %cp_flags = getelementptr inbounds %struct.rds_conn_path, ptr %9, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 0, ptr noundef %cp_flags) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %do.end.if.end12_crit_edge
  %got.0 = phi i32 [ %avail.0, %if.then11 ], [ %wanted, %do.end.if.end12_crit_edge ]
  %and13 = and i32 %got.0, 65535
  %sub = sub i32 %3, %and13
  %10 = or i32 %got.0, %need_posted
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %11 = icmp eq i32 %10, 0
  %or.cond = select i1 %tobool8.not, i1 true, i1 %11
  %12 = tail call i32 @llvm.umin.i32(i32 %shr, i32 %max_posted)
  %shl.neg = mul i32 %12, -65536
  %sub21 = select i1 %or.cond, i32 0, i32 %shl.neg
  %newval.0 = add i32 %sub, %sub21
  %call.i.i57 = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_credits, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !108
  tail call void @llvm.prefetch.p0(ptr %i_credits, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.end12
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %i_credits, ptr %i_credits, i32 %3, i32 %newval.0, ptr elementtype(i32) %i_credits) #9, !srcloc !109
  %asmresult.i.i.i = extractvalue { i32, i32 } %13, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %13, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !110
  %cmp25.not = icmp eq i32 %asmresult3.i.i.i, %3
  br i1 %cmp25.not, label %if.end27, label %atomic_cmpxchg.exit.try_again_crit_edge

atomic_cmpxchg.exit.try_again_crit_edge:          ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %try_again

if.end27:                                         ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #11
  %advertise.0.le = select i1 %or.cond, i32 0, i32 %12
  %14 = ptrtoint ptr %adv_credits to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %advertise.0.le, ptr %adv_credits, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %got.0, %if.end27 ], [ %wanted, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_ib_send_add_credits(ptr nocapture noundef readonly %conn, i32 noundef %credits) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %c_path = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 17
  %0 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c_path, align 4
  %cp_transport_data = getelementptr inbounds %struct.rds_conn_path, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cp_transport_data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %credits)
  %cmp = icmp eq i32 %credits, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_send_add_credits.__UNIQUE_ID_ddebug550, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_send_add_credits, %if.then3)) #9
          to label %do.end [label %if.then3], !srcloc !95

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %i_credits = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 37
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_credits, i32 noundef 4) #9
  %4 = ptrtoint ptr %i_credits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %i_credits, align 4
  %and = and i32 %5, 65535
  %6 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %c_path, align 4
  %cp_flags = getelementptr inbounds %struct.rds_conn_path, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %cp_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %cp_flags, align 4
  %and1.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool8.not = icmp eq i32 %and1.i, 0
  %cond = select i1 %tobool8.not, ptr @.str.10, ptr @.str.9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_send_add_credits.__UNIQUE_ID_ddebug550, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, i32 noundef %credits, i32 noundef %and, ptr noundef nonnull %cond) #9
  br label %do.end

do.end:                                           ; preds = %if.then3, %do.body
  %and10 = and i32 %credits, 65535
  %i_credits11 = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 37
  %call.i.i78 = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_credits11, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %i_credits11, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_credits11, ptr %i_credits11, i32 %and10, ptr elementtype(i32) %i_credits11) #9, !srcloc !111
  %11 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %c_path, align 4
  %cp_flags14 = getelementptr inbounds %struct.rds_conn_path, ptr %12, i32 0, i32 16
  %call15 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %cp_flags14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %do.end.if.end21_crit_edge, label %if.then17

do.end.if.end21_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then17:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rds_wq to i32))
  %13 = load ptr, ptr @rds_wq, align 4
  %14 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %c_path, align 4
  %cp_send_w = getelementptr inbounds %struct.rds_conn_path, ptr %15, i32 0, i32 18
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %cp_send_w, i32 noundef 0) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %do.end.if.end21_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %and10)
  %cmp23 = icmp ugt i32 %and10, 16383
  br i1 %cmp23, label %do.end39, label %if.end21.if.end45_crit_edge, !prof !105

if.end21.if.end45_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

do.end39:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 424, i32 noundef 9, ptr noundef null) #9
  br label %if.end45

if.end45:                                         ; preds = %do.end39, %if.end21.if.end45_crit_edge
  %16 = tail call i32 @llvm.read_register.i32(metadata !80) #9
  %and.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %19, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !112
  %20 = tail call i32 @llvm.read_register.i32(metadata !80) #9
  %and.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu, align 4
  %arrayidx64 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx64, align 4
  %add = add i32 %25, ptrtoint (ptr @rds_ib_stats to i32)
  %26 = inttoptr i32 %add to ptr
  %s_ib_rx_credit_updates = getelementptr inbounds %struct.rds_ib_statistics, ptr %26, i32 0, i32 17
  %27 = ptrtoint ptr %s_ib_rx_credit_updates to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %s_ib_rx_credit_updates, align 8
  %inc = add i64 %28, 1
  store i64 %inc, ptr %s_ib_rx_credit_updates, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !113
  %29 = tail call i32 @llvm.read_register.i32(metadata !80) #9
  %and.i.i.i79 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i79 to ptr
  %preempt_count.i.i80 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i80 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i80, align 4
  %sub.i = add i32 %32, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i80, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_ib_advertise_credits(ptr nocapture noundef readonly %conn, i32 noundef %posted) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %c_path = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 17
  %0 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c_path, align 4
  %cp_transport_data = getelementptr inbounds %struct.rds_conn_path, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cp_transport_data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %posted)
  %cmp = icmp eq i32 %posted, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %shl = shl i32 %posted, 16
  %i_credits = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 37
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_credits, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %i_credits, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_credits, ptr %i_credits, i32 %shl, ptr elementtype(i32) %i_credits) #9, !srcloc !111
  %call.i.i8 = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_credits, i32 noundef 4) #9
  %5 = ptrtoint ptr %i_credits to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %i_credits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %6)
  %cmp2 = icmp sgt i32 %6, 1048575
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %i_ack_flags = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 30
  tail call void @_set_bit(i32 noundef 1, ptr noundef %i_ack_flags) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_ib_xmit(ptr noundef %conn, ptr noundef %rm, i32 noundef %hdr_off, i32 noundef %sg, i32 noundef %off) local_unnamed_addr #2 align 64 {
entry:
  %failed_wr = alloca ptr, align 4
  %pos = alloca i32, align 4
  %posted = alloca i32, align 4
  %ext_hdr = alloca %struct.rds_ext_header_rdma, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %c_path = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 17
  %0 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c_path, align 4
  %cp_transport_data = getelementptr inbounds %struct.rds_conn_path, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cp_transport_data, align 8
  %i_cm_id = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %i_cm_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_cm_id, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %failed_wr) #9
  %8 = ptrtoint ptr %failed_wr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %failed_wr, align 4, !annotation !114
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos) #9
  %9 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %pos, align 4, !annotation !114
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %posted) #9
  %10 = ptrtoint ptr %posted to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %posted, align 4, !annotation !114
  %rem = and i32 %off, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %do.body9, label %do.body3, !prof !107

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/ib_send.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 506, 0\0A.popsection", ""() #9, !srcloc !115
  unreachable

do.body9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hdr_off)
  %cmp.not.not = icmp eq i32 %hdr_off, 0
  %11 = zext i32 %hdr_off to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %hdr_off, label %do.body18 [
    i32 48, label %do.body9.do.end26_crit_edge
    i32 0, label %do.body9.do.end26_crit_edge844
  ]

do.body9.do.end26_crit_edge844:                   ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end26

do.body9.do.end26_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end26

do.body18:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/ib_send.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 507, 0\0A.popsection", ""() #9, !srcloc !116
  unreachable

do.end26:                                         ; preds = %do.body9.do.end26_crit_edge, %do.body9.do.end26_crit_edge844
  %c_loopback = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 5
  %12 = ptrtoint ptr %c_loopback to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load = load i32, ptr %c_loopback, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool27.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool27.not, label %do.end26.if.end33_crit_edge, label %land.lhs.true

do.end26.if.end33_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

land.lhs.true:                                    ; preds = %do.end26
  %h_flags = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 3, i32 4, i32 5
  %13 = ptrtoint ptr %h_flags to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %h_flags, align 8
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool28.not = icmp eq i8 %15, 0
  br i1 %tobool28.not, label %land.lhs.true.if.end33_crit_edge, label %if.then29

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then29:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %c_fcong = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 10
  %16 = ptrtoint ptr %c_fcong to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %c_fcong, align 4
  tail call void @rds_cong_map_updated(ptr noundef %17, i64 noundef -1) #9
  %op_sg = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 2, i32 6
  %18 = ptrtoint ptr %op_sg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %op_sg, align 8
  %length = getelementptr %struct.scatterlist, ptr %19, i32 %sg, i32 2
  %20 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %21)
  %cmp31 = icmp slt i32 %21, 8192
  %phi.bo = add i32 %21, 48
  %cond = select i1 %cmp31, i32 8240, i32 %phi.bo
  br label %cleanup

if.end33:                                         ; preds = %land.lhs.true.if.end33_crit_edge, %do.end26.if.end33_crit_edge
  %i_hdr35 = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 3, i32 4
  %h_len = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 3, i32 4, i32 2
  %22 = ptrtoint ptr %h_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %h_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp36 = icmp eq i32 %23, 0
  %sub = add i32 %23, 4095
  %div770 = lshr i32 %sub, 12
  %i.0 = select i1 %cmp36, i32 1, i32 %div770
  %i_send_ring = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 13
  %call = call i32 @rds_ib_ring_alloc(ptr noundef %i_send_ring, i32 noundef %i.0, ptr noundef nonnull %pos) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp44 = icmp eq i32 %call, 0
  br i1 %cmp44, label %do.body549.thread, label %if.end67

do.body549.thread:                                ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %c_path, align 4
  %cp_flags = getelementptr inbounds %struct.rds_conn_path, ptr %25, i32 0, i32 16
  call void @_set_bit(i32 noundef 0, ptr noundef %cp_flags) #9
  %26 = call i32 @llvm.read_register.i32(metadata !80) #9
  %and.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %29, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !117
  %30 = call i32 @llvm.read_register.i32(metadata !80) #9
  %and.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cpu, align 4
  %arrayidx60 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx60, align 4
  %add61 = add i32 %35, ptrtoint (ptr @rds_ib_stats to i32)
  %36 = inttoptr i32 %add61 to ptr
  %s_ib_tx_ring_full = getelementptr inbounds %struct.rds_ib_statistics, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %s_ib_tx_ring_full to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %s_ib_tx_ring_full, align 8
  %inc = add i64 %38, 1
  store i64 %inc, ptr %s_ib_tx_ring_full, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %39 = call i32 @llvm.read_register.i32(metadata !80) #9
  %and.i.i.i776 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i776 to ptr
  %preempt_count.i.i777 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i777 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i777, align 4
  %sub.i = add i32 %42, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i777, align 4
  br label %cleanup

if.end67:                                         ; preds = %if.end33
  %i_flowctl = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 38
  %43 = ptrtoint ptr %i_flowctl to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load68 = load i8, ptr %i_flowctl, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load68)
  %tobool70.not = icmp sgt i8 %bf.load68, -1
  br i1 %tobool70.not, label %if.end67.if.end109_crit_edge, label %if.then71

if.end67.if.end109_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

if.then71:                                        ; preds = %if.end67
  %call72 = call i32 @rds_ib_send_grab_credits(ptr noundef %3, i32 noundef %call, ptr noundef nonnull %posted, i32 noundef 0, i32 noundef 255)
  %44 = ptrtoint ptr %posted to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %posted, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %call72)
  %cmp74 = icmp ugt i32 %call, %call72
  br i1 %cmp74, label %if.end79, label %if.then71.if.end109_crit_edge

if.then71.if.end109_crit_edge:                    ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

if.end79:                                         ; preds = %if.then71
  %sub78 = sub i32 %call, %call72
  call void @rds_ib_ring_unalloc(ptr noundef %i_send_ring, i32 noundef %sub78) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp80 = icmp eq i32 %call72, 0
  br i1 %cmp80, label %if.then82, label %if.end79.if.end109_crit_edge

if.end79.if.end109_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

if.then82:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %c_path, align 4
  %cp_flags85 = getelementptr inbounds %struct.rds_conn_path, ptr %47, i32 0, i32 16
  call void @_set_bit(i32 noundef 0, ptr noundef %cp_flags85) #9
  %48 = call i32 @llvm.read_register.i32(metadata !80) #9
  %and.i.i.i778 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i778 to ptr
  %preempt_count.i.i779 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i779 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i779, align 4
  %add.i780 = add i32 %51, 1
  store volatile i32 %add.i780, ptr %preempt_count.i.i779, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !119
  %52 = call i32 @llvm.read_register.i32(metadata !80) #9
  %and.i804 = and i32 %52, -16384
  %53 = inttoptr i32 %and.i804 to ptr
  %cpu99 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %cpu99 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cpu99, align 4
  %arrayidx100 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %55
  %56 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx100, align 4
  %add101 = add i32 %57, ptrtoint (ptr @rds_ib_stats to i32)
  %58 = inttoptr i32 %add101 to ptr
  %s_ib_tx_throttle = getelementptr inbounds %struct.rds_ib_statistics, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %s_ib_tx_throttle to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %s_ib_tx_throttle, align 8
  %inc102 = add i64 %60, 1
  store i64 %inc102, ptr %s_ib_tx_throttle, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !120
  %61 = call i32 @llvm.read_register.i32(metadata !80) #9
  %and.i.i.i781 = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i781 to ptr
  %preempt_count.i.i782 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %preempt_count.i.i782 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %preempt_count.i.i782, align 4
  %sub.i783 = add i32 %64, -1
  store volatile i32 %sub.i783, ptr %preempt_count.i.i782, align 4
  br label %do.body549

if.end109:                                        ; preds = %if.end79.if.end109_crit_edge, %if.then71.if.end109_crit_edge, %if.end67.if.end109_crit_edge
  %tobool353.not = phi i1 [ true, %if.then71.if.end109_crit_edge ], [ false, %if.end79.if.end109_crit_edge ], [ true, %if.end67.if.end109_crit_edge ]
  %adv_credits.0 = phi i32 [ %45, %if.then71.if.end109_crit_edge ], [ %45, %if.end79.if.end109_crit_edge ], [ 0, %if.end67.if.end109_crit_edge ]
  %credit_alloc.0 = phi i32 [ %call72, %if.then71.if.end109_crit_edge ], [ %call72, %if.end79.if.end109_crit_edge ], [ 0, %if.end67.if.end109_crit_edge ]
  %work_alloc.1 = phi i32 [ %call, %if.then71.if.end109_crit_edge ], [ %call72, %if.end79.if.end109_crit_edge ], [ %call, %if.end67.if.end109_crit_edge ]
  %i_data_op = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 14
  %65 = ptrtoint ptr %i_data_op to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %i_data_op, align 4
  %tobool110.not = icmp eq ptr %66, null
  br i1 %tobool110.not, label %if.then111, label %if.end109.if.end248_crit_edge

if.end109.if.end248_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end248

if.then111:                                       ; preds = %if.end109
  %data112 = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 2
  %op_nents = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 2, i32 1
  %67 = ptrtoint ptr %op_nents to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %op_nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool113.not = icmp eq i32 %68, 0
  br i1 %tobool113.not, label %if.else166, label %if.then114

if.then114:                                       ; preds = %if.then111
  %op_sg116 = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 2, i32 6
  %69 = ptrtoint ptr %op_sg116 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %op_sg116, align 8
  %71 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %7, align 8
  %call2.i.i = call i32 @dma_map_sg_attrs(ptr noundef %72, ptr noundef %70, i32 noundef %68, i32 noundef 1, i32 noundef 0) #9
  %op_count = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 2, i32 2
  %73 = ptrtoint ptr %op_count to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %call2.i.i, ptr %op_count, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_xmit.__UNIQUE_ID_ddebug553, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_xmit, %if.then131)) #9
          to label %do.end136 [label %if.then131], !srcloc !95

if.then131:                                       ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %op_count to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %op_count, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_xmit.__UNIQUE_ID_ddebug553, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, ptr noundef %3, ptr noundef %rm, i32 noundef %75) #9
  br label %do.end136

do.end136:                                        ; preds = %if.then131, %if.then114
  %76 = ptrtoint ptr %op_count to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %op_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp139 = icmp eq i32 %77, 0
  br i1 %cmp139, label %do.body143, label %do.end136.if.end169_crit_edge

do.end136.if.end169_crit_edge:                    ; preds = %do.end136
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end169

do.body143:                                       ; preds = %do.end136
  call void @__sanitizer_cov_trace_pc() #11
  %78 = call i32 @llvm.read_register.i32(metadata !80) #9
  %and.i.i.i784 = and i32 %78, -16384
  %79 = inttoptr i32 %and.i.i.i784 to ptr
  %preempt_count.i.i785 = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %preempt_count.i.i785 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %preempt_count.i.i785, align 4
  %add.i786 = add i32 %81, 1
  store volatile i32 %add.i786, ptr %preempt_count.i.i785, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !121
  %82 = call i32 @llvm.read_register.i32(metadata !80) #9
  %and.i805 = and i32 %82, -16384
  %83 = inttoptr i32 %and.i805 to ptr
  %cpu155 = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %cpu155 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cpu155, align 4
  %arrayidx156 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %85
  %86 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx156, align 4
  %add157 = add i32 %87, ptrtoint (ptr @rds_ib_stats to i32)
  %88 = inttoptr i32 %add157 to ptr
  %s_ib_tx_sg_mapping_failure = getelementptr inbounds %struct.rds_ib_statistics, ptr %88, i32 0, i32 7
  %89 = ptrtoint ptr %s_ib_tx_sg_mapping_failure to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %s_ib_tx_sg_mapping_failure, align 8
  %inc158 = add i64 %90, 1
  store i64 %inc158, ptr %s_ib_tx_sg_mapping_failure, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !122
  %91 = call i32 @llvm.read_register.i32(metadata !80) #9
  %and.i.i.i787 = and i32 %91, -16384
  %92 = inttoptr i32 %and.i.i.i787 to ptr
  %preempt_count.i.i788 = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %preempt_count.i.i788 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %preempt_count.i.i788, align 4
  %sub.i789 = add i32 %94, -1
  store volatile i32 %sub.i789, ptr %preempt_count.i.i788, align 4
  call void @rds_ib_ring_unalloc(ptr noundef %i_send_ring, i32 noundef %work_alloc.1) #9
  br label %do.body549

if.else166:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #11
  %op_count168 = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 2, i32 2
  %95 = ptrtoint ptr %op_count168 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %op_count168, align 8
  br label %if.end169

if.end169:                                        ; preds = %if.else166, %do.end136.if.end169_crit_edge
  call void @rds_message_addref(ptr noundef %rm) #9
  %op_dmasg = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 2, i32 3
  %96 = ptrtoint ptr %op_dmasg to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %op_dmasg, align 4
  %op_dmaoff = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 2, i32 4
  %97 = ptrtoint ptr %op_dmaoff to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %op_dmaoff, align 8
  %98 = ptrtoint ptr %i_data_op to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %data112, ptr %i_data_op, align 4
  %m_flags = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 6
  %99 = ptrtoint ptr %m_flags to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %m_flags, align 4
  %101 = and i32 %100, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool175.not = icmp eq i32 %101, 0
  br i1 %tobool175.not, label %if.end169.if.end182_crit_edge, label %if.then176

if.end169.if.end182_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end182

if.then176:                                       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #11
  %h_flags179 = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 3, i32 4, i32 5
  %102 = ptrtoint ptr %h_flags179 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %h_flags179, align 8
  %104 = or i8 %103, 2
  store i8 %104, ptr %h_flags179, align 8
  br label %if.end182

if.end182:                                        ; preds = %if.then176, %if.end169.if.end182_crit_edge
  %105 = ptrtoint ptr %m_flags to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %m_flags, align 4
  %107 = and i32 %106, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool185.not = icmp eq i32 %107, 0
  br i1 %tobool185.not, label %if.end182.if.end193_crit_edge, label %if.then186

if.end182.if.end193_crit_edge:                    ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end193

if.then186:                                       ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #11
  %h_flags189 = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 3, i32 4, i32 5
  %108 = ptrtoint ptr %h_flags189 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %h_flags189, align 8
  %110 = or i8 %109, 4
  store i8 %110, ptr %h_flags189, align 8
  br label %if.end193

if.end193:                                        ; preds = %if.then186, %if.end182.if.end193_crit_edge
  %op_active = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 1, i32 2
  %111 = ptrtoint ptr %op_active to i32
  call void @__asan_load1_noabort(i32 %111)
  %bf.load194 = load i8, ptr %op_active, align 8
  %112 = and i8 %bf.load194, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool197.not = icmp eq i8 %112, 0
  br i1 %tobool197.not, label %if.end193.if.end203_crit_edge, label %if.then198

if.end193.if.end203_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end203

if.then198:                                       ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #11
  %rdma = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ext_hdr) #9
  %113 = ptrtoint ptr %rdma to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %rdma, align 8
  %115 = ptrtoint ptr %ext_hdr to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %ext_hdr, align 4
  %call202 = call i32 @rds_message_add_extension(ptr noundef %i_hdr35, i32 noundef 2, ptr noundef nonnull %ext_hdr, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ext_hdr) #9
  br label %if.end203

if.end203:                                        ; preds = %if.then198, %if.end193.if.end203_crit_edge
  %m_rdma_cookie = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 10
  %116 = ptrtoint ptr %m_rdma_cookie to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %m_rdma_cookie, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %117)
  %tobool204.not = icmp eq i64 %117, 0
  br i1 %tobool204.not, label %if.end203.if.end213_crit_edge, label %if.then205

if.end203.if.end213_crit_edge:                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end213

if.then205:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = trunc i64 %117 to i32
  %shr.i806 = lshr i64 %117, 32
  %conv.i807 = trunc i64 %shr.i806 to i32
  %call212 = call i32 @rds_message_add_rdma_dest_extension(ptr noundef %i_hdr35, i32 noundef %conv.i, i32 noundef %conv.i807) #9
  br label %if.end213

if.end213:                                        ; preds = %if.then205, %if.end203.if.end213_crit_edge
  %call214 = call i64 @rds_ib_piggyb_ack(ptr noundef %3) #9
  %h_ack = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 3, i32 4, i32 1
  %118 = ptrtoint ptr %h_ack to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 %call214, ptr %h_ack, align 8
  %h_csum.i = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 3, i32 4, i32 8
  %119 = ptrtoint ptr %h_csum.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 0, ptr %h_csum.i, align 2
  %120 = call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %i_hdr35, i32 12) #9, !srcloc !123
  %asmresult.i.i = extractvalue { i32, ptr, i32, i32 } %120, 0
  %121 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %asmresult.i.i) #14, !srcloc !124
  %neg.i.i.i = xor i32 %121, -1
  %shr.i.i.i = lshr i32 %neg.i.i.i, 16
  %conv.i.i.i = trunc i32 %shr.i.i.i to i16
  %122 = ptrtoint ptr %h_csum.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %conv.i.i.i, ptr %h_csum.i, align 2
  %123 = ptrtoint ptr %i_flowctl to i32
  call void @__asan_load1_noabort(i32 %123)
  %bf.load220 = load i8, ptr %i_flowctl, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load220)
  %tobool223.not = icmp sgt i8 %bf.load220, -1
  br i1 %tobool223.not, label %if.end213.if.end248_crit_edge, label %if.then224

if.end213.if.end248_crit_edge:                    ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end248

if.then224:                                       ; preds = %if.end213
  %sub225 = sub i32 255, %adv_credits.0
  %call226 = call i32 @rds_ib_send_grab_credits(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %posted, i32 noundef 1, i32 noundef %sub225)
  %124 = ptrtoint ptr %posted to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %posted, align 4
  %add227 = add i32 %125, %adv_credits.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add227)
  %cmp229 = icmp ugt i32 %add227, 255
  br i1 %cmp229, label %do.body238, label %if.then224.if.end248_crit_edge, !prof !105

if.then224.if.end248_crit_edge:                   ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end248

do.body238:                                       ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/ib_send.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 605, 0\0A.popsection", ""() #9, !srcloc !125
  unreachable

if.end248:                                        ; preds = %if.then224.if.end248_crit_edge, %if.end213.if.end248_crit_edge, %if.end109.if.end248_crit_edge
  %adv_credits.1 = phi i32 [ %adv_credits.0, %if.end109.if.end248_crit_edge ], [ %add227, %if.then224.if.end248_crit_edge ], [ %adv_credits.0, %if.end213.if.end248_crit_edge ]
  %op_active250 = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 1, i32 2
  %126 = ptrtoint ptr %op_active250 to i32
  call void @__asan_load1_noabort(i32 %126)
  %bf.load251 = load i8, ptr %op_active250, align 8
  %127 = and i8 %bf.load251, 66
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %127)
  %.not = icmp eq i8 %127, 66
  %send_flags.0 = zext i1 %.not to i32
  %i_sends = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 17
  %128 = ptrtoint ptr %i_sends to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %i_sends, align 8
  %130 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %pos, align 4
  %arrayidx265 = getelementptr %struct.rds_ib_send_work, ptr %129, i32 %131
  %132 = ptrtoint ptr %i_data_op to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %i_data_op, align 4
  %op_sg267 = getelementptr inbounds %struct.rm_data_op, ptr %133, i32 0, i32 6
  %134 = ptrtoint ptr %op_sg267 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %op_sg267, align 4
  %op_dmasg269 = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 2, i32 3
  %136 = ptrtoint ptr %op_dmasg269 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %op_dmasg269, align 4
  %arrayidx270 = getelementptr %struct.scatterlist, ptr %135, i32 %137
  %i_send_hdrs_dma = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 16
  %i_pd = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 4
  %rds_ibdev = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 1
  %i_send_hdrs = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 15
  %op_sg292 = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 2, i32 6
  %op_count294 = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 2, i32 2
  %op_dmaoff300 = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 2, i32 4
  %i_unsignaled_wrs.i = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 39
  %sub355 = add i32 %work_alloc.1, -1
  %138 = add i32 %work_alloc.1, -1
  br label %do.body271

do.body271:                                       ; preds = %land.rhs439.do.body271_crit_edge, %if.end248
  %nr_sig.0 = phi i32 [ 0, %if.end248 ], [ %spec.select773, %land.rhs439.do.body271_crit_edge ]
  %bytes_sent.0 = phi i32 [ 0, %if.end248 ], [ %bytes_sent.1, %land.rhs439.do.body271_crit_edge ]
  %adv_credits.2 = phi i32 [ %adv_credits.1, %if.end248 ], [ %adv_credits.3, %land.rhs439.do.body271_crit_edge ]
  %i.1 = phi i32 [ 0, %if.end248 ], [ %inc435, %land.rhs439.do.body271_crit_edge ]
  %scat.0 = phi ptr [ %arrayidx270, %if.end248 ], [ %scat.1, %land.rhs439.do.body271_crit_edge ]
  %prev.0 = phi ptr [ null, %if.end248 ], [ %send.0, %land.rhs439.do.body271_crit_edge ]
  %send.0 = phi ptr [ %arrayidx265, %if.end248 ], [ %arrayidx434, %land.rhs439.do.body271_crit_edge ]
  %139 = getelementptr inbounds %struct.rds_ib_send_work, ptr %send.0, i32 0, i32 1
  %send_flags272 = getelementptr inbounds %struct.rds_ib_send_work, ptr %send.0, i32 0, i32 1, i32 0, i32 0, i32 5
  %140 = ptrtoint ptr %send_flags272 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %send_flags.0, ptr %send_flags272, align 4
  %opcode = getelementptr inbounds %struct.rds_ib_send_work, ptr %send.0, i32 0, i32 1, i32 0, i32 0, i32 4
  %141 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 2, ptr %opcode, align 8
  %num_sge = getelementptr inbounds %struct.rds_ib_send_work, ptr %send.0, i32 0, i32 1, i32 0, i32 0, i32 3
  %142 = ptrtoint ptr %num_sge to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 1, ptr %num_sge, align 4
  %143 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr null, ptr %139, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %144 = load volatile i32, ptr @jiffies, align 128
  %s_queued = getelementptr inbounds %struct.rds_ib_send_work, ptr %send.0, i32 0, i32 3
  %145 = ptrtoint ptr %s_queued to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %s_queued, align 8
  %146 = ptrtoint ptr %send.0 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr null, ptr %send.0, align 8
  %147 = ptrtoint ptr %i_send_hdrs_dma to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %i_send_hdrs_dma, align 4
  %149 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %pos, align 4
  %arrayidx273 = getelementptr i32, ptr %148, i32 %150
  %151 = ptrtoint ptr %arrayidx273 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx273, align 4
  %conv274 = zext i32 %152 to i64
  %s_sge = getelementptr inbounds %struct.rds_ib_send_work, ptr %send.0, i32 0, i32 2
  %153 = ptrtoint ptr %s_sge to i32
  call void @__asan_store8_noabort(i32 %153)
  store i64 %conv274, ptr %s_sge, align 8
  %length278 = getelementptr inbounds %struct.rds_ib_send_work, ptr %send.0, i32 0, i32 2, i32 0, i32 1
  %154 = ptrtoint ptr %length278 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 48, ptr %length278, align 8
  %155 = ptrtoint ptr %i_pd to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %i_pd, align 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %156, align 4
  %lkey = getelementptr inbounds %struct.rds_ib_send_work, ptr %send.0, i32 0, i32 2, i32 0, i32 2
  %159 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %lkey, align 4
  %160 = ptrtoint ptr %rds_ibdev to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %rds_ibdev, align 8
  %dev281 = getelementptr inbounds %struct.rds_ib_device, ptr %161, i32 0, i32 3
  %162 = ptrtoint ptr %dev281 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dev281, align 4
  %164 = load ptr, ptr %i_send_hdrs_dma, align 4
  %arrayidx283 = getelementptr i32, ptr %164, i32 %150
  %165 = ptrtoint ptr %arrayidx283 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx283, align 4
  %167 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %163, align 8
  call void @dma_sync_single_for_cpu(ptr noundef %168, i32 noundef %166, i32 noundef 48, i32 noundef 1) #9
  %169 = ptrtoint ptr %i_send_hdrs to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %i_send_hdrs, align 8
  %171 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %pos, align 4
  %arrayidx285 = getelementptr ptr, ptr %170, i32 %172
  %173 = ptrtoint ptr %arrayidx285 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %arrayidx285, align 4
  %175 = call ptr @memcpy(ptr %174, ptr %i_hdr35, i32 48)
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %work_alloc.1)
  %cmp288 = icmp ult i32 %i.1, %work_alloc.1
  br i1 %cmp288, label %land.lhs.true290, label %do.body271.if.end345_crit_edge

do.body271.if.end345_crit_edge:                   ; preds = %do.body271
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end345

land.lhs.true290:                                 ; preds = %do.body271
  %176 = ptrtoint ptr %op_sg292 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %op_sg292, align 8
  %178 = ptrtoint ptr %op_count294 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %op_count294, align 8
  %arrayidx295 = getelementptr %struct.scatterlist, ptr %177, i32 %179
  %cmp296.not = icmp eq ptr %scat.0, %arrayidx295
  br i1 %cmp296.not, label %land.lhs.true290.if.end345_crit_edge, label %if.then298

land.lhs.true290.if.end345_crit_edge:             ; preds = %land.lhs.true290
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end345

if.then298:                                       ; preds = %land.lhs.true290
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %scat.0, i32 0, i32 4
  %180 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %dma_length, align 4
  %182 = ptrtoint ptr %op_dmaoff300 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %op_dmaoff300, align 8
  %sub301 = sub i32 %181, %183
  %184 = call i32 @llvm.umin.i32(i32 %sub301, i32 4096)
  %185 = ptrtoint ptr %num_sge to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 2, ptr %num_sge, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %scat.0, i32 0, i32 3
  %186 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %dma_address, align 4
  %conv310 = zext i32 %187 to i64
  %arrayidx312 = getelementptr %struct.rds_ib_send_work, ptr %send.0, i32 0, i32 2, i32 1
  %188 = ptrtoint ptr %arrayidx312 to i32
  call void @__asan_store8_noabort(i32 %188)
  store i64 %conv310, ptr %arrayidx312, align 8
  %189 = ptrtoint ptr %op_dmaoff300 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %op_dmaoff300, align 8
  %conv316 = zext i32 %190 to i64
  %add320 = add nuw nsw i64 %conv316, %conv310
  store i64 %add320, ptr %arrayidx312, align 8
  %length323 = getelementptr %struct.rds_ib_send_work, ptr %send.0, i32 0, i32 2, i32 1, i32 1
  %191 = ptrtoint ptr %length323 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %184, ptr %length323, align 8
  %192 = ptrtoint ptr %i_pd to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %i_pd, align 4
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %193, align 4
  %lkey328 = getelementptr %struct.rds_ib_send_work, ptr %send.0, i32 0, i32 2, i32 1, i32 2
  %196 = ptrtoint ptr %lkey328 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %195, ptr %lkey328, align 4
  %add329 = add i32 %184, %bytes_sent.0
  %197 = load i32, ptr %op_dmaoff300, align 8
  %add332 = add i32 %197, %184
  store i32 %add332, ptr %op_dmaoff300, align 8
  %198 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add332, i32 %199)
  %cmp336 = icmp eq i32 %add332, %199
  br i1 %cmp336, label %if.then338, label %if.then298.if.end345_crit_edge

if.then298.if.end345_crit_edge:                   ; preds = %if.then298
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end345

if.then338:                                       ; preds = %if.then298
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr = getelementptr %struct.scatterlist, ptr %scat.0, i32 1
  %200 = ptrtoint ptr %op_dmasg269 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %op_dmasg269, align 4
  %inc341 = add i32 %201, 1
  store i32 %inc341, ptr %op_dmasg269, align 4
  %202 = ptrtoint ptr %op_dmaoff300 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 0, ptr %op_dmaoff300, align 8
  br label %if.end345

if.end345:                                        ; preds = %if.then338, %if.then298.if.end345_crit_edge, %land.lhs.true290.if.end345_crit_edge, %do.body271.if.end345_crit_edge
  %bytes_sent.1 = phi i32 [ %add329, %if.then338 ], [ %add329, %if.then298.if.end345_crit_edge ], [ %bytes_sent.0, %land.lhs.true290.if.end345_crit_edge ], [ %bytes_sent.0, %do.body271.if.end345_crit_edge ]
  %scat.1 = phi ptr [ %incdec.ptr, %if.then338 ], [ %scat.0, %if.then298.if.end345_crit_edge ], [ %scat.0, %land.lhs.true290.if.end345_crit_edge ], [ %scat.0, %do.body271.if.end345_crit_edge ]
  %203 = ptrtoint ptr %i_unsignaled_wrs.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %i_unsignaled_wrs.i, align 8
  %dec.i = add i32 %204, -1
  store i32 %dec.i, ptr %i_unsignaled_wrs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %cmp.i = icmp eq i32 %204, 0
  br i1 %cmp.i, label %if.then.i, label %if.end345.rds_ib_set_wr_signal_state.exit_crit_edge

if.end345.rds_ib_set_wr_signal_state.exit_crit_edge: ; preds = %if.end345
  call void @__sanitizer_cov_trace_pc() #11
  br label %rds_ib_set_wr_signal_state.exit

if.then.i:                                        ; preds = %if.end345
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rds_ib_sysctl_max_unsig_wrs to i32))
  %205 = load i32, ptr @rds_ib_sysctl_max_unsig_wrs, align 4
  %206 = ptrtoint ptr %i_unsignaled_wrs.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %205, ptr %i_unsignaled_wrs.i, align 8
  %207 = ptrtoint ptr %send_flags272 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %send_flags272, align 4
  %or.i = or i32 %208, 2
  store i32 %or.i, ptr %send_flags272, align 4
  br label %rds_ib_set_wr_signal_state.exit

rds_ib_set_wr_signal_state.exit:                  ; preds = %if.then.i, %if.end345.rds_ib_set_wr_signal_state.exit_crit_edge
  %209 = ptrtoint ptr %i_flowctl to i32
  call void @__asan_load1_noabort(i32 %209)
  %bf.load348 = load i8, ptr %i_flowctl, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load348)
  %tobool351.not = icmp sgt i8 %bf.load348, -1
  %or.cond771 = or i1 %tobool353.not, %tobool351.not
  %or.cond771.not = xor i1 %or.cond771, true
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %sub355)
  %cmp356 = icmp eq i32 %i.1, %sub355
  %or.cond772 = select i1 %or.cond771.not, i1 %cmp356, i1 false
  br i1 %or.cond772, label %if.then358, label %rds_ib_set_wr_signal_state.exit.if.end362_crit_edge

rds_ib_set_wr_signal_state.exit.if.end362_crit_edge: ; preds = %rds_ib_set_wr_signal_state.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end362

if.then358:                                       ; preds = %rds_ib_set_wr_signal_state.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rds_ib_sysctl_max_unsig_wrs to i32))
  %210 = load i32, ptr @rds_ib_sysctl_max_unsig_wrs, align 4
  %211 = ptrtoint ptr %i_unsignaled_wrs.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %210, ptr %i_unsignaled_wrs.i, align 8
  %212 = ptrtoint ptr %send_flags272 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %send_flags272, align 4
  %or361 = or i32 %213, 6
  store i32 %or361, ptr %send_flags272, align 4
  br label %if.end362

if.end362:                                        ; preds = %if.then358, %rds_ib_set_wr_signal_state.exit.if.end362_crit_edge
  %214 = ptrtoint ptr %send_flags272 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %send_flags272, align 4
  %and364 = lshr i32 %215, 1
  %and364.lobit = and i32 %and364, 1
  %spec.select773 = add i32 %and364.lobit, %nr_sig.0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_xmit.__UNIQUE_ID_ddebug556, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_xmit, %if.then381)) #9
          to label %do.end386 [label %if.then381], !srcloc !95

if.then381:                                       ; preds = %if.end362
  call void @__sanitizer_cov_trace_pc() #11
  %216 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %num_sge, align 4
  %218 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %139, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_xmit.__UNIQUE_ID_ddebug556, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, ptr noundef %send.0, ptr noundef %139, i32 noundef %217, ptr noundef %219) #9
  br label %do.end386

do.end386:                                        ; preds = %if.then381, %if.end362
  %220 = ptrtoint ptr %i_flowctl to i32
  call void @__asan_load1_noabort(i32 %220)
  %bf.load388 = load i8, ptr %i_flowctl, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load388)
  %tobool391.not = icmp sgt i8 %bf.load388, -1
  br i1 %tobool391.not, label %do.end386.if.end420_crit_edge, label %land.lhs.true392

do.end386.if.end420_crit_edge:                    ; preds = %do.end386
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end420

land.lhs.true392:                                 ; preds = %do.end386
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %adv_credits.2)
  %tobool393.not = icmp eq i32 %adv_credits.2, 0
  br i1 %tobool393.not, label %land.lhs.true392.if.end420_crit_edge, label %if.then394

land.lhs.true392.if.end420_crit_edge:             ; preds = %land.lhs.true392
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end420

if.then394:                                       ; preds = %land.lhs.true392
  call void @__sanitizer_cov_trace_pc() #11
  %221 = ptrtoint ptr %i_send_hdrs to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %i_send_hdrs, align 8
  %223 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %pos, align 4
  %arrayidx396 = getelementptr ptr, ptr %222, i32 %224
  %225 = ptrtoint ptr %arrayidx396 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %arrayidx396, align 4
  %conv397 = trunc i32 %adv_credits.2 to i8
  %h_credit = getelementptr inbounds %struct.rds_header, ptr %226, i32 0, i32 6
  %227 = ptrtoint ptr %h_credit to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %conv397, ptr %h_credit, align 1
  %h_csum.i816 = getelementptr inbounds %struct.rds_header, ptr %226, i32 0, i32 8
  %228 = ptrtoint ptr %h_csum.i816 to i32
  call void @__asan_store2_noabort(i32 %228)
  store i16 0, ptr %h_csum.i816, align 2
  %229 = call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %226, i32 12) #9, !srcloc !123
  %asmresult.i.i817 = extractvalue { i32, ptr, i32, i32 } %229, 0
  %230 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %asmresult.i.i817) #14, !srcloc !124
  %neg.i.i.i818 = xor i32 %230, -1
  %shr.i.i.i819 = lshr i32 %neg.i.i.i818, 16
  %conv.i.i.i820 = trunc i32 %shr.i.i.i819 to i16
  %231 = ptrtoint ptr %h_csum.i816 to i32
  call void @__asan_store2_noabort(i32 %231)
  store i16 %conv.i.i.i820, ptr %h_csum.i816, align 2
  %232 = call i32 @llvm.read_register.i32(metadata !80) #9
  %and.i.i.i795 = and i32 %232, -16384
  %233 = inttoptr i32 %and.i.i.i795 to ptr
  %preempt_count.i.i796 = getelementptr inbounds %struct.thread_info, ptr %233, i32 0, i32 1
  %234 = ptrtoint ptr %preempt_count.i.i796 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load volatile i32, ptr %preempt_count.i.i796, align 4
  %add.i797 = add i32 %235, 1
  store volatile i32 %add.i797, ptr %preempt_count.i.i796, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !126
  %236 = call i32 @llvm.read_register.i32(metadata !80) #9
  %and.i821 = and i32 %236, -16384
  %237 = inttoptr i32 %and.i821 to ptr
  %cpu411 = getelementptr inbounds %struct.thread_info, ptr %237, i32 0, i32 3
  %238 = ptrtoint ptr %cpu411 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %cpu411, align 4
  %arrayidx412 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %239
  %240 = ptrtoint ptr %arrayidx412 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %arrayidx412, align 4
  %add413 = add i32 %241, ptrtoint (ptr @rds_ib_stats to i32)
  %242 = inttoptr i32 %add413 to ptr
  %s_ib_tx_credit_updates = getelementptr inbounds %struct.rds_ib_statistics, ptr %242, i32 0, i32 9
  %243 = ptrtoint ptr %s_ib_tx_credit_updates to i32
  call void @__asan_load8_noabort(i32 %243)
  %244 = load i64, ptr %s_ib_tx_credit_updates, align 8
  %inc414 = add i64 %244, 1
  store i64 %inc414, ptr %s_ib_tx_credit_updates, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !127
  %245 = call i32 @llvm.read_register.i32(metadata !80) #9
  %and.i.i.i798 = and i32 %245, -16384
  %246 = inttoptr i32 %and.i.i.i798 to ptr
  %preempt_count.i.i799 = getelementptr inbounds %struct.thread_info, ptr %246, i32 0, i32 1
  %247 = ptrtoint ptr %preempt_count.i.i799 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load volatile i32, ptr %preempt_count.i.i799, align 4
  %sub.i800 = add i32 %248, -1
  store volatile i32 %sub.i800, ptr %preempt_count.i.i799, align 4
  br label %if.end420

if.end420:                                        ; preds = %if.then394, %land.lhs.true392.if.end420_crit_edge, %do.end386.if.end420_crit_edge
  %adv_credits.3 = phi i32 [ 0, %if.then394 ], [ 0, %land.lhs.true392.if.end420_crit_edge ], [ %adv_credits.2, %do.end386.if.end420_crit_edge ]
  %249 = ptrtoint ptr %rds_ibdev to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %rds_ibdev, align 8
  %dev422 = getelementptr inbounds %struct.rds_ib_device, ptr %250, i32 0, i32 3
  %251 = ptrtoint ptr %dev422 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %dev422, align 4
  %253 = ptrtoint ptr %i_send_hdrs_dma to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %i_send_hdrs_dma, align 4
  %255 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %pos, align 4
  %arrayidx424 = getelementptr i32, ptr %254, i32 %256
  %257 = ptrtoint ptr %arrayidx424 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %arrayidx424, align 4
  %259 = ptrtoint ptr %252 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %252, align 8
  call void @dma_sync_single_for_device(ptr noundef %260, i32 noundef %258, i32 noundef 48, i32 noundef 1) #9
  %tobool426.not = icmp eq ptr %prev.0, null
  br i1 %tobool426.not, label %if.end420.if.end429_crit_edge, label %if.then427

if.end420.if.end429_crit_edge:                    ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end429

if.then427:                                       ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #11
  %261 = getelementptr inbounds %struct.rds_ib_send_work, ptr %prev.0, i32 0, i32 1
  %262 = ptrtoint ptr %261 to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr %139, ptr %261, align 8
  br label %if.end429

if.end429:                                        ; preds = %if.then427, %if.end420.if.end429_crit_edge
  %263 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %pos, align 4
  %add430 = add i32 %264, 1
  %265 = ptrtoint ptr %i_send_ring to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %i_send_ring, align 8
  %rem432 = urem i32 %add430, %266
  store i32 %rem432, ptr %pos, align 4
  %inc435 = add nuw i32 %i.1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %138)
  %exitcond.not = icmp eq i32 %i.1, %138
  br i1 %exitcond.not, label %if.end429.do.end448_crit_edge, label %land.rhs439

if.end429.do.end448_crit_edge:                    ; preds = %if.end429
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end448

land.rhs439:                                      ; preds = %if.end429
  %267 = ptrtoint ptr %i_sends to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %i_sends, align 8
  %arrayidx434 = getelementptr %struct.rds_ib_send_work, ptr %268, i32 %rem432
  %269 = ptrtoint ptr %op_sg292 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %op_sg292, align 8
  %271 = ptrtoint ptr %op_count294 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %op_count294, align 8
  %arrayidx444 = getelementptr %struct.scatterlist, ptr %270, i32 %272
  %cmp445.not = icmp eq ptr %scat.1, %arrayidx444
  br i1 %cmp445.not, label %land.rhs439.do.end448_crit_edge, label %land.rhs439.do.body271_crit_edge

land.rhs439.do.body271_crit_edge:                 ; preds = %land.rhs439
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body271

land.rhs439.do.end448_crit_edge:                  ; preds = %land.rhs439
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end448

do.end448:                                        ; preds = %land.rhs439.do.end448_crit_edge, %if.end429.do.end448_crit_edge
  %inc435.lcssa = phi i32 [ %work_alloc.1, %if.end429.do.end448_crit_edge ], [ %inc435, %land.rhs439.do.end448_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %work_alloc.1, i32 %inc435)
  %cmp437.le = icmp ugt i32 %work_alloc.1, %inc435
  %add452 = add i32 %bytes_sent.1, 48
  %spec.select774 = select i1 %cmp.not.not, i32 %add452, i32 %bytes_sent.1
  %273 = ptrtoint ptr %op_sg292 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %op_sg292, align 8
  %275 = ptrtoint ptr %op_count294 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %op_count294, align 8
  %arrayidx458 = getelementptr %struct.scatterlist, ptr %274, i32 %276
  %cmp459 = icmp eq ptr %scat.1, %arrayidx458
  br i1 %cmp459, label %if.then461, label %do.end448.if.end474_crit_edge

do.end448.if.end474_crit_edge:                    ; preds = %do.end448
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end474

if.then461:                                       ; preds = %do.end448
  %277 = ptrtoint ptr %i_data_op to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %i_data_op, align 4
  %279 = ptrtoint ptr %send.0 to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr %278, ptr %send.0, align 8
  %280 = ptrtoint ptr %send_flags272 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %send_flags272, align 4
  %or465 = or i32 %281, 4
  store i32 %or465, ptr %send_flags272, align 4
  %and467 = and i32 %281, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and467)
  %tobool468.not = icmp eq i32 %and467, 0
  br i1 %tobool468.not, label %if.then469, label %if.then461.if.end472_crit_edge

if.then461.if.end472_crit_edge:                   ; preds = %if.then461
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end472

if.then469:                                       ; preds = %if.then461
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rds_ib_sysctl_max_unsig_wrs to i32))
  %282 = load i32, ptr @rds_ib_sysctl_max_unsig_wrs, align 4
  %283 = ptrtoint ptr %i_unsignaled_wrs.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 %282, ptr %i_unsignaled_wrs.i, align 8
  %284 = ptrtoint ptr %send_flags272 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %send_flags272, align 4
  %or.i826 = or i32 %285, 2
  store i32 %or.i826, ptr %send_flags272, align 4
  %add471 = add i32 %spec.select773, 1
  br label %if.end472

if.end472:                                        ; preds = %if.then469, %if.then461.if.end472_crit_edge
  %nr_sig.2 = phi i32 [ %spec.select773, %if.then461.if.end472_crit_edge ], [ %add471, %if.then469 ]
  %286 = ptrtoint ptr %i_data_op to i32
  call void @__asan_store4_noabort(i32 %286)
  store ptr null, ptr %i_data_op, align 4
  br label %if.end474

if.end474:                                        ; preds = %if.end472, %do.end448.if.end474_crit_edge
  %nr_sig.3 = phi i32 [ %nr_sig.2, %if.end472 ], [ %spec.select773, %do.end448.if.end474_crit_edge ]
  br i1 %cmp437.le, label %if.then477, label %if.end474.if.end480_crit_edge

if.end474.if.end480_crit_edge:                    ; preds = %if.end474
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end480

if.then477:                                       ; preds = %if.end474
  call void @__sanitizer_cov_trace_pc() #11
  %sub479 = sub i32 %work_alloc.1, %inc435.lcssa
  call void @rds_ib_ring_unalloc(ptr noundef %i_send_ring, i32 noundef %sub479) #9
  br label %if.end480

if.end480:                                        ; preds = %if.then477, %if.end474.if.end480_crit_edge
  %work_alloc.2 = phi i32 [ %inc435.lcssa, %if.then477 ], [ %work_alloc.1, %if.end474.if.end480_crit_edge ]
  %287 = ptrtoint ptr %i_flowctl to i32
  call void @__asan_load1_noabort(i32 %287)
  %bf.load482 = load i8, ptr %i_flowctl, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load482)
  %tobool485.not = icmp slt i8 %bf.load482, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %credit_alloc.0, i32 %inc435.lcssa)
  %cmp487 = icmp ugt i32 %credit_alloc.0, %inc435.lcssa
  %or.cond775 = select i1 %tobool485.not, i1 %cmp487, i1 false
  br i1 %or.cond775, label %if.then489, label %if.end480.if.end491_crit_edge

if.end480.if.end491_crit_edge:                    ; preds = %if.end480
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end491

if.then489:                                       ; preds = %if.end480
  call void @__sanitizer_cov_trace_pc() #11
  %sub490 = sub i32 %credit_alloc.0, %inc435.lcssa
  call void @rds_ib_send_add_credits(ptr noundef %conn, i32 noundef %sub490)
  br label %if.end491

if.end491:                                        ; preds = %if.then489, %if.end480.if.end491_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_sig.3)
  %tobool492.not = icmp eq i32 %nr_sig.3, 0
  br i1 %tobool492.not, label %if.end491.if.end494_crit_edge, label %if.then493

if.end491.if.end494_crit_edge:                    ; preds = %if.end491
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end494

if.then493:                                       ; preds = %if.end491
  call void @__sanitizer_cov_trace_pc() #11
  %i_signaled_sends = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 18
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_signaled_sends, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %i_signaled_sends, i32 1, i32 3, i32 1) #9
  %288 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_signaled_sends, ptr %i_signaled_sends, i32 %nr_sig.3, ptr elementtype(i32) %i_signaled_sends) #9, !srcloc !111
  br label %if.end494

if.end494:                                        ; preds = %if.then493, %if.end491.if.end494_crit_edge
  %289 = getelementptr %struct.rds_ib_send_work, ptr %129, i32 %131, i32 1
  %290 = ptrtoint ptr %failed_wr to i32
  call void @__asan_store4_noabort(i32 %290)
  store ptr %289, ptr %failed_wr, align 4
  %291 = ptrtoint ptr %i_cm_id to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %i_cm_id, align 8
  %qp = getelementptr inbounds %struct.rdma_cm_id, ptr %292, i32 0, i32 2
  %293 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %qp, align 4
  %295 = ptrtoint ptr %294 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %294, align 4
  %post_send.i = getelementptr inbounds %struct.ib_device, ptr %296, i32 0, i32 1, i32 6
  %297 = ptrtoint ptr %post_send.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %post_send.i, align 4
  %call.i = call i32 %298(ptr noundef %294, ptr noundef %289, ptr noundef nonnull %failed_wr) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_xmit.__UNIQUE_ID_ddebug557, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_xmit, %if.then509)) #9
          to label %do.body513 [label %if.then509], !srcloc !95

if.then509:                                       ; preds = %if.end494
  call void @__sanitizer_cov_trace_pc() #11
  %299 = ptrtoint ptr %failed_wr to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %failed_wr, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_xmit.__UNIQUE_ID_ddebug557, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.11, ptr noundef %3, ptr noundef %arrayidx265, ptr noundef %289, i32 noundef %call.i, ptr noundef %300) #9
  br label %do.body513

do.body513:                                       ; preds = %if.then509, %if.end494
  %301 = ptrtoint ptr %failed_wr to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %failed_wr, align 4
  %cmp514.not = icmp eq ptr %302, %289
  br i1 %cmp514.not, label %do.end531, label %do.body523, !prof !107

do.body523:                                       ; preds = %do.body513
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/ib_send.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 740, 0\0A.popsection", ""() #9, !srcloc !128
  unreachable

do.end531:                                        ; preds = %do.body513
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool532.not = icmp eq i32 %call.i, 0
  br i1 %tobool532.not, label %do.end531.do.body549_crit_edge, label %do.end536

do.end531.do.body549_crit_edge:                   ; preds = %do.end531
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body549

do.end536:                                        ; preds = %do.end531
  %c_faddr = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 2
  %call538 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %c_faddr, i32 noundef %call.i) #12
  call void @rds_ib_ring_unalloc(ptr noundef %i_send_ring, i32 noundef %work_alloc.2) #9
  %i_signaled_sends.i = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_signaled_sends.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !102
  call void @llvm.prefetch.p0(ptr %i_signaled_sends.i, i32 1, i32 3, i32 1) #9
  %303 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_signaled_sends.i, ptr %i_signaled_sends.i, i32 %nr_sig.3, ptr elementtype(i32) %i_signaled_sends.i) #9, !srcloc !103
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %303, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i829 = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i829, label %land.lhs.true.i, label %do.end536.do.body.i_crit_edge

do.end536.do.body.i_crit_edge:                    ; preds = %do.end536
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

land.lhs.true.i:                                  ; preds = %do.end536
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.wait_queue_head, ptr @rds_ib_ring_empty_wait, i32 0, i32 1) to i32))
  %304 = load volatile ptr, ptr getelementptr inbounds (%struct.wait_queue_head, ptr @rds_ib_ring_empty_wait, i32 0, i32 1), align 4
  %cmp.i.i.not.i = icmp eq ptr %304, getelementptr inbounds (%struct.wait_queue_head, ptr @rds_ib_ring_empty_wait, i32 0, i32 1)
  br i1 %cmp.i.i.not.i, label %land.lhs.true.i.do.body.i_crit_edge, label %if.then.i830

land.lhs.true.i.do.body.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.then.i830:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__wake_up(ptr noundef nonnull @rds_ib_ring_empty_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i830, %land.lhs.true.i.do.body.i_crit_edge, %do.end536.do.body.i_crit_edge
  %call.i.i14.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_signaled_sends.i, i32 noundef 4) #9
  %305 = ptrtoint ptr %i_signaled_sends.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load volatile i32, ptr %i_signaled_sends.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %306)
  %cmp4.i = icmp slt i32 %306, 0
  br i1 %cmp4.i, label %do.body8.i, label %rds_ib_sub_signaled.exit, !prof !105

do.body8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/ib_send.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 234, 0\0A.popsection", ""() #9, !srcloc !106
  unreachable

rds_ib_sub_signaled.exit:                         ; preds = %do.body.i
  %307 = ptrtoint ptr %send.0 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %send.0, align 8
  %tobool541.not = icmp eq ptr %308, null
  br i1 %tobool541.not, label %rds_ib_sub_signaled.exit.if.end546_crit_edge, label %if.then542

rds_ib_sub_signaled.exit.if.end546_crit_edge:     ; preds = %rds_ib_sub_signaled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end546

if.then542:                                       ; preds = %rds_ib_sub_signaled.exit
  call void @__sanitizer_cov_trace_pc() #11
  %309 = ptrtoint ptr %i_data_op to i32
  call void @__asan_store4_noabort(i32 %309)
  store ptr %308, ptr %i_data_op, align 4
  %310 = ptrtoint ptr %send.0 to i32
  call void @__asan_store4_noabort(i32 %310)
  store ptr null, ptr %send.0, align 8
  br label %if.end546

if.end546:                                        ; preds = %if.then542, %rds_ib_sub_signaled.exit.if.end546_crit_edge
  %conn547 = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 2
  %311 = ptrtoint ptr %conn547 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %conn547, align 4
  call void (ptr, ptr, ...) @__rds_ib_conn_error(ptr noundef %312, ptr noundef nonnull @.str.16) #9
  br label %do.body549

do.body549:                                       ; preds = %if.end546, %do.end531.do.body549_crit_edge, %do.body143, %if.then82
  %ret.0 = phi i32 [ -12, %if.then82 ], [ %call.i, %if.end546 ], [ -12, %do.body143 ], [ %spec.select774, %do.end531.do.body549_crit_edge ]
  %adv_credits.4 = phi i32 [ %45, %if.then82 ], [ %adv_credits.3, %if.end546 ], [ %adv_credits.0, %do.body143 ], [ %adv_credits.3, %do.end531.do.body549_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %adv_credits.4)
  %tobool550.not = icmp eq i32 %adv_credits.4, 0
  br i1 %tobool550.not, label %do.body549.cleanup_crit_edge, label %do.body558, !prof !107

do.body549.cleanup_crit_edge:                     ; preds = %do.body549
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body558:                                       ; preds = %do.body549
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/ib_send.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 757, 0\0A.popsection", ""() #9, !srcloc !129
  unreachable

cleanup:                                          ; preds = %do.body549.cleanup_crit_edge, %do.body549.thread, %if.then29
  %retval.0 = phi i32 [ %cond, %if.then29 ], [ %ret.0, %do.body549.cleanup_crit_edge ], [ -12, %do.body549.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %posted) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %failed_wr) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_cong_map_updated(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_ib_ring_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_ring_unalloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_message_addref(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_message_add_extension(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_message_add_rdma_dest_extension(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rds_ib_piggyb_ack(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_ib_xmit_atomic(ptr noundef %conn, ptr noundef %op) local_unnamed_addr #2 align 64 {
entry:
  %failed_wr = alloca ptr, align 4
  %pos = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %c_path = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 17
  %0 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c_path, align 4
  %cp_transport_data = getelementptr inbounds %struct.rds_conn_path, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cp_transport_data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %failed_wr) #9
  %4 = ptrtoint ptr %failed_wr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %failed_wr, align 4, !annotation !114
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos) #9
  %5 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %pos, align 4, !annotation !114
  %i_send_ring = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 13
  %call = call i32 @rds_ib_ring_alloc(ptr noundef %i_send_ring, i32 noundef 1, ptr noundef nonnull %pos) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %do.body1

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = call i32 @llvm.read_register.i32(metadata !80) #9
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %9, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !130
  %10 = call i32 @llvm.read_register.i32(metadata !80) #9
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu, align 4
  %arrayidx8 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx8, align 4
  %add = add i32 %15, ptrtoint (ptr @rds_ib_stats to i32)
  %16 = inttoptr i32 %add to ptr
  %s_ib_tx_ring_full = getelementptr inbounds %struct.rds_ib_statistics, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %s_ib_tx_ring_full to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %s_ib_tx_ring_full, align 8
  %inc = add i64 %18, 1
  store i64 %inc, ptr %s_ib_tx_ring_full, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !131
  %19 = call i32 @llvm.read_register.i32(metadata !80) #9
  %and.i.i.i254 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i254 to ptr
  %preempt_count.i.i255 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i255 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i255, align 4
  %sub.i = add i32 %22, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i255, align 4
  br label %out

if.end:                                           ; preds = %entry
  %i_sends = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 17
  %23 = ptrtoint ptr %i_sends to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sends, align 8
  %25 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pos, align 4
  %arrayidx14 = getelementptr %struct.rds_ib_send_work, ptr %24, i32 %26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %s_queued = getelementptr %struct.rds_ib_send_work, ptr %24, i32 %26, i32 3
  %28 = ptrtoint ptr %s_queued to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %s_queued, align 8
  %29 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %op, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp15 = icmp eq i32 %30, 0
  %31 = getelementptr %struct.rds_ib_send_work, ptr %24, i32 %26, i32 1
  %opcode = getelementptr inbounds %struct.ib_send_wr, ptr %31, i32 0, i32 4
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 12, ptr %opcode, align 8
  %33 = getelementptr inbounds %struct.rm_atomic_op, ptr %op, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %33, align 8
  %compare_add = getelementptr inbounds %struct.ib_atomic_wr, ptr %31, i32 0, i32 2
  %36 = ptrtoint ptr %compare_add to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %compare_add, align 8
  %swap = getelementptr inbounds %struct.rm_atomic_op, ptr %op, i32 0, i32 1, i32 0, i32 1
  %37 = ptrtoint ptr %swap to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %swap, align 8
  %swap17 = getelementptr inbounds %struct.ib_atomic_wr, ptr %31, i32 0, i32 3
  %39 = ptrtoint ptr %swap17 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %swap17, align 8
  %compare_mask = getelementptr inbounds %struct.rm_atomic_op, ptr %op, i32 0, i32 1, i32 0, i32 2
  %40 = ptrtoint ptr %compare_mask to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %compare_mask, align 8
  %compare_add_mask = getelementptr inbounds %struct.ib_atomic_wr, ptr %31, i32 0, i32 4
  %42 = ptrtoint ptr %compare_add_mask to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %compare_add_mask, align 8
  %swap_mask = getelementptr inbounds %struct.rm_atomic_op, ptr %op, i32 0, i32 1, i32 0, i32 3
  %43 = ptrtoint ptr %swap_mask to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %swap_mask, align 8
  br label %if.end26

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 13, ptr %opcode, align 8
  %46 = getelementptr inbounds %struct.rm_atomic_op, ptr %op, i32 0, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %46, align 8
  %compare_add22 = getelementptr inbounds %struct.ib_atomic_wr, ptr %31, i32 0, i32 2
  %49 = ptrtoint ptr %compare_add22 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %compare_add22, align 8
  %swap23 = getelementptr inbounds %struct.ib_atomic_wr, ptr %31, i32 0, i32 3
  %50 = ptrtoint ptr %swap23 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 0, ptr %swap23, align 8
  %nocarry_mask = getelementptr inbounds %struct.rm_atomic_op, ptr %op, i32 0, i32 1, i32 0, i32 1
  %51 = ptrtoint ptr %nocarry_mask to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %nocarry_mask, align 8
  %compare_add_mask24 = getelementptr inbounds %struct.ib_atomic_wr, ptr %31, i32 0, i32 4
  %53 = ptrtoint ptr %compare_add_mask24 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %compare_add_mask24, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then16
  %.sink = phi i64 [ 0, %if.else ], [ %44, %if.then16 ]
  %swap_mask25 = getelementptr inbounds %struct.ib_atomic_wr, ptr %31, i32 0, i32 5
  %54 = ptrtoint ptr %swap_mask25 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %.sink, ptr %swap_mask25, align 8
  %55 = getelementptr %struct.rds_ib_send_work, ptr %24, i32 %26, i32 1
  %send_flags = getelementptr inbounds %struct.ib_send_wr, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %send_flags to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %send_flags, align 4
  %op_notify = getelementptr inbounds %struct.rm_atomic_op, ptr %op, i32 0, i32 4
  %57 = ptrtoint ptr %op_notify to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load = load i8, ptr %op_notify, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool = icmp slt i8 %bf.load, 0
  %i_unsignaled_wrs.i = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 39
  %58 = ptrtoint ptr %i_unsignaled_wrs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %i_unsignaled_wrs.i, align 8
  %dec.i = add i32 %59, -1
  store i32 %dec.i, ptr %i_unsignaled_wrs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp.i = icmp eq i32 %59, 0
  %brmerge.i = or i1 %tobool, %cmp.i
  br i1 %brmerge.i, label %if.then.i, label %if.end26.rds_ib_set_wr_signal_state.exit_crit_edge

if.end26.rds_ib_set_wr_signal_state.exit_crit_edge: ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %rds_ib_set_wr_signal_state.exit

if.then.i:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rds_ib_sysctl_max_unsig_wrs to i32))
  %60 = load i32, ptr @rds_ib_sysctl_max_unsig_wrs, align 4
  %61 = ptrtoint ptr %i_unsignaled_wrs.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %i_unsignaled_wrs.i, align 8
  %send_flags.i = getelementptr %struct.rds_ib_send_work, ptr %24, i32 %26, i32 1, i32 0, i32 0, i32 5
  %62 = ptrtoint ptr %send_flags.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %send_flags.i, align 4
  %or.i = or i32 %63, 2
  store i32 %or.i, ptr %send_flags.i, align 4
  br label %rds_ib_set_wr_signal_state.exit

rds_ib_set_wr_signal_state.exit:                  ; preds = %if.then.i, %if.end26.rds_ib_set_wr_signal_state.exit_crit_edge
  %retval.0.i268 = phi i32 [ 1, %if.then.i ], [ 0, %if.end26.rds_ib_set_wr_signal_state.exit_crit_edge ]
  %num_sge = getelementptr inbounds %struct.ib_send_wr, ptr %55, i32 0, i32 3
  %64 = ptrtoint ptr %num_sge to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %num_sge, align 4
  %65 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %55, align 8
  %op_remote_addr = getelementptr inbounds %struct.rm_atomic_op, ptr %op, i32 0, i32 3
  %66 = ptrtoint ptr %op_remote_addr to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %op_remote_addr, align 8
  %remote_addr = getelementptr inbounds %struct.ib_atomic_wr, ptr %55, i32 0, i32 1
  %68 = ptrtoint ptr %remote_addr to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %67, ptr %remote_addr, align 8
  %op_rkey = getelementptr inbounds %struct.rm_atomic_op, ptr %op, i32 0, i32 2
  %69 = ptrtoint ptr %op_rkey to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %op_rkey, align 8
  %rkey = getelementptr inbounds %struct.ib_atomic_wr, ptr %55, i32 0, i32 6
  %71 = ptrtoint ptr %rkey to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %rkey, align 8
  %72 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %op, ptr %arrayidx14, align 8
  %add.ptr = getelementptr i8, ptr %op, i32 -320
  call void @rds_message_addref(ptr noundef %add.ptr) #9
  %i_cm_id = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 3
  %73 = ptrtoint ptr %i_cm_id to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %i_cm_id, align 8
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %op_sg = getelementptr inbounds %struct.rm_atomic_op, ptr %op, i32 0, i32 5
  %77 = ptrtoint ptr %op_sg to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %op_sg, align 4
  %79 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %76, align 8
  %call2.i.i = call i32 @dma_map_sg_attrs(ptr noundef %80, ptr noundef %78, i32 noundef 1, i32 noundef 2, i32 noundef 0) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_xmit_atomic.__UNIQUE_ID_ddebug558, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_xmit_atomic, %if.then39)) #9
          to label %do.end42 [label %if.then39], !srcloc !95

if.then39:                                        ; preds = %rds_ib_set_wr_signal_state.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_xmit_atomic.__UNIQUE_ID_ddebug558, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, ptr noundef %3, ptr noundef %op, i32 noundef %call2.i.i) #9
  br label %do.end42

do.end42:                                         ; preds = %if.then39, %rds_ib_set_wr_signal_state.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i.i)
  %cmp43.not = icmp eq i32 %call2.i.i, 1
  br i1 %cmp43.not, label %if.end68, label %if.then44

if.then44:                                        ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #11
  call void @rds_ib_ring_unalloc(ptr noundef %i_send_ring, i32 noundef 1) #9
  %81 = call i32 @llvm.read_register.i32(metadata !80) #9
  %and.i.i.i256 = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i.i256 to ptr
  %preempt_count.i.i257 = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %preempt_count.i.i257 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %preempt_count.i.i257, align 4
  %add.i258 = add i32 %84, 1
  store volatile i32 %add.i258, ptr %preempt_count.i.i257, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !132
  %85 = call i32 @llvm.read_register.i32(metadata !80) #9
  %and.i269 = and i32 %85, -16384
  %86 = inttoptr i32 %and.i269 to ptr
  %cpu59 = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 3
  %87 = ptrtoint ptr %cpu59 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %cpu59, align 4
  %arrayidx60 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %88
  %89 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx60, align 4
  %add61 = add i32 %90, ptrtoint (ptr @rds_ib_stats to i32)
  %91 = inttoptr i32 %add61 to ptr
  %s_ib_tx_sg_mapping_failure = getelementptr inbounds %struct.rds_ib_statistics, ptr %91, i32 0, i32 7
  %92 = ptrtoint ptr %s_ib_tx_sg_mapping_failure to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %s_ib_tx_sg_mapping_failure, align 8
  %inc62 = add i64 %93, 1
  store i64 %inc62, ptr %s_ib_tx_sg_mapping_failure, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !133
  %94 = call i32 @llvm.read_register.i32(metadata !80) #9
  %and.i.i.i259 = and i32 %94, -16384
  %95 = inttoptr i32 %and.i.i.i259 to ptr
  %preempt_count.i.i260 = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %preempt_count.i.i260 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %preempt_count.i.i260, align 4
  %sub.i261 = add i32 %97, -1
  store volatile i32 %sub.i261, ptr %preempt_count.i.i260, align 4
  br label %out

if.end68:                                         ; preds = %do.end42
  %98 = ptrtoint ptr %op_sg to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %op_sg, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %dma_address, align 4
  %conv = zext i32 %101 to i64
  %s_sge = getelementptr %struct.rds_ib_send_work, ptr %24, i32 %26, i32 2
  %102 = ptrtoint ptr %s_sge to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %conv, ptr %s_sge, align 8
  %103 = load ptr, ptr %op_sg, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %103, i32 0, i32 4
  %104 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %dma_length, align 4
  %length = getelementptr inbounds %struct.ib_sge, ptr %s_sge, i32 0, i32 1
  %106 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %length, align 8
  %i_pd = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 4
  %107 = ptrtoint ptr %i_pd to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %i_pd, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %108, align 4
  %lkey = getelementptr inbounds %struct.ib_sge, ptr %s_sge, i32 0, i32 2
  %111 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %lkey, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_xmit_atomic.__UNIQUE_ID_ddebug559, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_xmit_atomic, %if.then88)) #9
          to label %do.end98 [label %if.then88], !srcloc !95

if.then88:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  %112 = ptrtoint ptr %op_remote_addr to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %op_remote_addr, align 8
  %114 = ptrtoint ptr %s_sge to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %s_sge, align 8
  %116 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %length, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_xmit_atomic.__UNIQUE_ID_ddebug559, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i64 noundef %113, i64 noundef %115, i32 noundef %117) #9
  br label %do.end98

do.end98:                                         ; preds = %if.then88, %if.end68
  br i1 %brmerge.i, label %if.then100, label %do.end98.if.end101_crit_edge

do.end98.if.end101_crit_edge:                     ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

if.then100:                                       ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #11
  %i_signaled_sends = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 18
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_signaled_sends, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %i_signaled_sends, i32 1, i32 3, i32 1) #9
  %118 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_signaled_sends, ptr %i_signaled_sends, i32 1, ptr elementtype(i32) %i_signaled_sends) #9, !srcloc !111
  br label %if.end101

if.end101:                                        ; preds = %if.then100, %do.end98.if.end101_crit_edge
  %119 = ptrtoint ptr %failed_wr to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %55, ptr %failed_wr, align 4
  %120 = ptrtoint ptr %i_cm_id to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %i_cm_id, align 8
  %qp = getelementptr inbounds %struct.rdma_cm_id, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %qp, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %123, align 4
  %post_send.i = getelementptr inbounds %struct.ib_device, ptr %125, i32 0, i32 1, i32 6
  %126 = ptrtoint ptr %post_send.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %post_send.i, align 4
  %call.i = call i32 %127(ptr noundef %123, ptr noundef %55, ptr noundef nonnull %failed_wr) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_xmit_atomic.__UNIQUE_ID_ddebug560, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_xmit_atomic, %if.then118)) #9
          to label %do.body122 [label %if.then118], !srcloc !95

if.then118:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  %128 = ptrtoint ptr %failed_wr to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %failed_wr, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_xmit_atomic.__UNIQUE_ID_ddebug560, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.17, ptr noundef %3, ptr noundef %arrayidx14, ptr noundef %55, i32 noundef %call.i, ptr noundef %129) #9
  br label %do.body122

do.body122:                                       ; preds = %if.then118, %if.end101
  %130 = ptrtoint ptr %failed_wr to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %failed_wr, align 4
  %cmp124.not = icmp eq ptr %131, %55
  br i1 %cmp124.not, label %do.end141, label %do.body133, !prof !107

do.body133:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/ib_send.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 834, 0\0A.popsection", ""() #9, !srcloc !134
  unreachable

do.end141:                                        ; preds = %do.body122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool142.not = icmp eq i32 %call.i, 0
  br i1 %tobool142.not, label %do.end141.out_crit_edge, label %do.end146

do.end141.out_crit_edge:                          ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end146:                                        ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #11
  %c_faddr = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 2
  %call148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %c_faddr, i32 noundef %call.i) #12
  call void @rds_ib_ring_unalloc(ptr noundef %i_send_ring, i32 noundef 1) #9
  call fastcc void @rds_ib_sub_signaled(ptr noundef %3, i32 noundef %retval.0.i268)
  br label %out

out:                                              ; preds = %do.end146, %do.end141.out_crit_edge, %if.then44, %do.body1
  %ret.0 = phi i32 [ -12, %do.body1 ], [ -12, %if.then44 ], [ %call.i, %do.end146 ], [ 0, %do.end141.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %failed_wr) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_ib_xmit_rdma(ptr noundef %conn, ptr noundef %op) local_unnamed_addr #2 align 64 {
entry:
  %failed_wr = alloca ptr, align 4
  %pos = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %c_path = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 17
  %0 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c_path, align 4
  %cp_transport_data = getelementptr inbounds %struct.rds_conn_path, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cp_transport_data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %failed_wr) #9
  %4 = ptrtoint ptr %failed_wr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %failed_wr, align 4, !annotation !114
  %op_remote_addr = getelementptr inbounds %struct.rm_rdma_op, ptr %op, i32 0, i32 1
  %5 = ptrtoint ptr %op_remote_addr to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %op_remote_addr, align 8
  %rds_ibdev = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %rds_ibdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rds_ibdev, align 8
  %max_sge1 = getelementptr inbounds %struct.rds_ib_device, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %max_sge1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_sge1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos) #9
  %11 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %pos, align 4, !annotation !114
  %op_odp_addr = getelementptr inbounds %struct.rm_rdma_op, ptr %op, i32 0, i32 9
  %12 = ptrtoint ptr %op_odp_addr to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %op_odp_addr, align 8
  %op_odp_mr = getelementptr inbounds %struct.rm_rdma_op, ptr %op, i32 0, i32 10
  %14 = ptrtoint ptr %op_odp_mr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %op_odp_mr, align 8
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %op_mapped = getelementptr inbounds %struct.rm_rdma_op, ptr %op, i32 0, i32 2
  %16 = ptrtoint ptr %op_mapped to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %op_mapped, align 8
  %17 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool2.not = icmp eq i8 %17, 0
  br i1 %tobool2.not, label %if.then3, label %if.then.if.end42_crit_edge

if.then.if.end42_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then3:                                         ; preds = %if.then
  %i_cm_id = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %i_cm_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_cm_id, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %op_sg = getelementptr inbounds %struct.rm_rdma_op, ptr %op, i32 0, i32 6
  %22 = ptrtoint ptr %op_sg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %op_sg, align 8
  %op_nents = getelementptr inbounds %struct.rm_rdma_op, ptr %op, i32 0, i32 4
  %24 = ptrtoint ptr %op_nents to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %op_nents, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool7.not = icmp sgt i8 %bf.load, -1
  %cond = select i1 %tobool7.not, i32 2, i32 1
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %21, align 8
  %call2.i.i = tail call i32 @dma_map_sg_attrs(ptr noundef %27, ptr noundef %23, i32 noundef %25, i32 noundef %cond, i32 noundef 0) #9
  %op_count = getelementptr inbounds %struct.rm_rdma_op, ptr %op, i32 0, i32 5
  %28 = ptrtoint ptr %op_count to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call2.i.i, ptr %op_count, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_xmit_rdma.__UNIQUE_ID_ddebug561, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_xmit_rdma, %if.then12)) #9
          to label %do.end [label %if.then12], !srcloc !95

if.then12:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %op_count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %op_count, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_xmit_rdma.__UNIQUE_ID_ddebug561, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25, ptr noundef %3, ptr noundef %op, i32 noundef %30) #9
  br label %do.end

do.end:                                           ; preds = %if.then12, %if.then3
  %31 = ptrtoint ptr %op_count to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %op_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp = icmp eq i32 %32, 0
  br i1 %cmp, label %do.body17, label %if.end33

do.body17:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %33 = tail call i32 @llvm.read_register.i32(metadata !80) #9
  %and.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %36, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !135
  %37 = tail call i32 @llvm.read_register.i32(metadata !80) #9
  %and.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cpu, align 4
  %arrayidx27 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx27, align 4
  %add = add i32 %42, ptrtoint (ptr @rds_ib_stats to i32)
  %43 = inttoptr i32 %add to ptr
  %s_ib_tx_sg_mapping_failure = getelementptr inbounds %struct.rds_ib_statistics, ptr %43, i32 0, i32 7
  %44 = ptrtoint ptr %s_ib_tx_sg_mapping_failure to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %s_ib_tx_sg_mapping_failure, align 8
  %inc = add i64 %45, 1
  store i64 %inc, ptr %s_ib_tx_sg_mapping_failure, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !136
  %46 = tail call i32 @llvm.read_register.i32(metadata !80) #9
  br label %out.sink.split

if.end33:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %op_mapped to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load35 = load i8, ptr %op_mapped, align 8
  %bf.set = or i8 %bf.load35, 8
  store i8 %bf.set, ptr %op_mapped, align 8
  br label %if.end42

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %op_nents38 = getelementptr inbounds %struct.rm_rdma_op, ptr %op, i32 0, i32 4
  %48 = ptrtoint ptr %op_nents38 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %op_nents38, align 8
  %op_count39 = getelementptr inbounds %struct.rm_rdma_op, ptr %op, i32 0, i32 5
  %50 = ptrtoint ptr %op_count39 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %op_count39, align 4
  %r_trans_private = getelementptr inbounds %struct.rds_mr, ptr %15, i32 0, i32 6
  %51 = ptrtoint ptr %r_trans_private to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %r_trans_private, align 4
  %call41 = tail call i32 @rds_ib_get_lkey(ptr noundef %52) #9
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.end33, %if.then.if.end42_crit_edge
  %odp_lkey.0 = phi i32 [ %call41, %if.else ], [ 0, %if.then.if.end42_crit_edge ], [ 0, %if.end33 ]
  %op_count43 = getelementptr inbounds %struct.rm_rdma_op, ptr %op, i32 0, i32 5
  %53 = ptrtoint ptr %op_count43 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %op_count43, align 4
  %add44 = add i32 %10, -1
  %sub = add i32 %add44, %54
  %div = udiv i32 %sub, %10
  %i_send_ring = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 13
  %call45 = call i32 @rds_ib_ring_alloc(ptr noundef %i_send_ring, i32 noundef %div, ptr noundef nonnull %pos) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call45, i32 %div)
  %cmp46.not = icmp eq i32 %call45, %div
  br i1 %cmp46.not, label %if.end71, label %if.then47

if.then47:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  call void @rds_ib_ring_unalloc(ptr noundef %i_send_ring, i32 noundef %call45) #9
  %55 = call i32 @llvm.read_register.i32(metadata !80) #9
  %and.i.i.i428 = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i428 to ptr
  %preempt_count.i.i429 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i.i429 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i.i429, align 4
  %add.i430 = add i32 %58, 1
  store volatile i32 %add.i430, ptr %preempt_count.i.i429, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !137
  %59 = call i32 @llvm.read_register.i32(metadata !80) #9
  %and.i443 = and i32 %59, -16384
  %60 = inttoptr i32 %and.i443 to ptr
  %cpu62 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %cpu62 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cpu62, align 4
  %arrayidx63 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %62
  %63 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx63, align 4
  %add64 = add i32 %64, ptrtoint (ptr @rds_ib_stats to i32)
  %65 = inttoptr i32 %add64 to ptr
  %s_ib_tx_ring_full = getelementptr inbounds %struct.rds_ib_statistics, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %s_ib_tx_ring_full to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %s_ib_tx_ring_full, align 8
  %inc65 = add i64 %67, 1
  store i64 %inc65, ptr %s_ib_tx_ring_full, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !138
  %68 = call i32 @llvm.read_register.i32(metadata !80) #9
  br label %out.sink.split

if.end71:                                         ; preds = %if.end42
  %i_sends = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 17
  %69 = ptrtoint ptr %i_sends to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %i_sends, align 8
  %71 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %pos, align 4
  %arrayidx72 = getelementptr %struct.rds_ib_send_work, ptr %70, i32 %72
  %op_sg73 = getelementptr inbounds %struct.rm_rdma_op, ptr %op, i32 0, i32 6
  %73 = ptrtoint ptr %op_sg73 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %op_sg73, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %sub)
  %cmp76465.not = icmp ugt i32 %10, %sub
  br i1 %cmp76465.not, label %if.end71.for.end199_crit_edge, label %land.rhs.lr.ph

if.end71.for.end199_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end199

land.rhs.lr.ph:                                   ; preds = %if.end71
  %op_notify = getelementptr inbounds %struct.rm_rdma_op, ptr %op, i32 0, i32 2
  %i_unsignaled_wrs.i = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 39
  %i_pd = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 4
  %75 = ptrtoint ptr %op_sg73 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %op_sg73, align 8
  %77 = ptrtoint ptr %op_count43 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %op_count43, align 4
  %arrayidx79489 = getelementptr %struct.scatterlist, ptr %76, i32 %78
  %cmp80.not490 = icmp eq ptr %74, %arrayidx79489
  br i1 %cmp80.not490, label %land.rhs.lr.ph.for.end199_crit_edge, label %for.body.lr.ph

land.rhs.lr.ph.for.end199_crit_edge:              ; preds = %land.rhs.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end199

for.body.lr.ph:                                   ; preds = %land.rhs.lr.ph
  %79 = ptrtoint ptr %op_count43 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %op_count43, align 4
  br label %for.body

land.rhs:                                         ; preds = %do.end187
  %incdec.ptr188 = getelementptr %struct.rds_ib_send_work, ptr %send.0474491, i32 1
  %81 = ptrtoint ptr %i_sends to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %i_sends, align 8
  %83 = ptrtoint ptr %i_send_ring to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %i_send_ring, align 8
  %arrayidx191 = getelementptr %struct.rds_ib_send_work, ptr %82, i32 %84
  %cmp192 = icmp eq ptr %incdec.ptr188, %arrayidx191
  %spec.select = select i1 %cmp192, ptr %82, ptr %incdec.ptr188
  %85 = ptrtoint ptr %op_sg73 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %op_sg73, align 8
  %87 = ptrtoint ptr %op_count43 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %op_count43, align 4
  %arrayidx79 = getelementptr %struct.scatterlist, ptr %86, i32 %88
  %cmp80.not = icmp eq ptr %scat.1.lcssa, %arrayidx79
  br i1 %cmp80.not, label %land.rhs.for.end199.loopexit_crit_edge, label %land.rhs.for.body_crit_edge

land.rhs.for.body_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

land.rhs.for.end199.loopexit_crit_edge:           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end199.loopexit

for.body:                                         ; preds = %land.rhs.for.body_crit_edge, %for.body.lr.ph
  %odp_addr.0466499 = phi i64 [ %13, %for.body.lr.ph ], [ %odp_addr.1.lcssa, %land.rhs.for.body_crit_edge ]
  %nr_sig.0467498 = phi i32 [ 0, %for.body.lr.ph ], [ %nr_sig.1, %land.rhs.for.body_crit_edge ]
  %num_sge.0468497 = phi i32 [ %80, %for.body.lr.ph ], [ %spec.select487, %land.rhs.for.body_crit_edge ]
  %sent.0469496 = phi i32 [ 0, %for.body.lr.ph ], [ %sent.1.lcssa, %land.rhs.for.body_crit_edge ]
  %i.0470495 = phi i32 [ 0, %for.body.lr.ph ], [ %inc198, %land.rhs.for.body_crit_edge ]
  %remote_addr.0471494 = phi i64 [ %6, %for.body.lr.ph ], [ %remote_addr.1.lcssa, %land.rhs.for.body_crit_edge ]
  %scat.0472493 = phi ptr [ %74, %for.body.lr.ph ], [ %scat.1.lcssa, %land.rhs.for.body_crit_edge ]
  %prev.0473492 = phi ptr [ null, %for.body.lr.ph ], [ %send.0474491, %land.rhs.for.body_crit_edge ]
  %send.0474491 = phi ptr [ %arrayidx72, %for.body.lr.ph ], [ %spec.select, %land.rhs.for.body_crit_edge ]
  %89 = getelementptr inbounds %struct.rds_ib_send_work, ptr %send.0474491, i32 0, i32 1
  %send_flags = getelementptr inbounds %struct.rds_ib_send_work, ptr %send.0474491, i32 0, i32 1, i32 0, i32 0, i32 5
  %90 = ptrtoint ptr %send_flags to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %send_flags, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %91 = load volatile i32, ptr @jiffies, align 128
  %s_queued = getelementptr inbounds %struct.rds_ib_send_work, ptr %send.0474491, i32 0, i32 3
  %92 = ptrtoint ptr %s_queued to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %s_queued, align 8
  %93 = ptrtoint ptr %send.0474491 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %send.0474491, align 8
  %94 = ptrtoint ptr %op_notify to i32
  call void @__asan_load1_noabort(i32 %94)
  %bf.load81 = load i8, ptr %op_notify, align 8
  %95 = and i8 %bf.load81, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool85.not = icmp eq i8 %95, 0
  br i1 %tobool85.not, label %if.then86, label %for.body.if.end95_crit_edge

for.body.if.end95_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

if.then86:                                        ; preds = %for.body
  %96 = ptrtoint ptr %i_unsignaled_wrs.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %i_unsignaled_wrs.i, align 8
  %dec.i = add i32 %97, -1
  store i32 %dec.i, ptr %i_unsignaled_wrs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp.i = icmp eq i32 %97, 0
  br i1 %cmp.i, label %if.then.i, label %if.then86.rds_ib_set_wr_signal_state.exit_crit_edge

if.then86.rds_ib_set_wr_signal_state.exit_crit_edge: ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #11
  br label %rds_ib_set_wr_signal_state.exit

if.then.i:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rds_ib_sysctl_max_unsig_wrs to i32))
  %98 = load i32, ptr @rds_ib_sysctl_max_unsig_wrs, align 4
  %99 = ptrtoint ptr %i_unsignaled_wrs.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %i_unsignaled_wrs.i, align 8
  %100 = ptrtoint ptr %send_flags to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %send_flags, align 4
  %or.i = or i32 %101, 2
  store i32 %or.i, ptr %send_flags, align 4
  br label %rds_ib_set_wr_signal_state.exit

rds_ib_set_wr_signal_state.exit:                  ; preds = %if.then.i, %if.then86.rds_ib_set_wr_signal_state.exit_crit_edge
  %retval.0.i444 = phi i32 [ 1, %if.then.i ], [ 0, %if.then86.rds_ib_set_wr_signal_state.exit_crit_edge ]
  %add94 = add i32 %retval.0.i444, %nr_sig.0467498
  br label %if.end95

if.end95:                                         ; preds = %rds_ib_set_wr_signal_state.exit, %for.body.if.end95_crit_edge
  %nr_sig.1 = phi i32 [ %nr_sig.0467498, %for.body.if.end95_crit_edge ], [ %add94, %rds_ib_set_wr_signal_state.exit ]
  %102 = ptrtoint ptr %op_notify to i32
  call void @__asan_load1_noabort(i32 %102)
  %bf.load97 = load i8, ptr %op_notify, align 8
  %103 = lshr i8 %bf.load97, 5
  %104 = and i8 %103, 4
  %105 = xor i8 %104, 4
  %106 = zext i8 %105 to i32
  %opcode = getelementptr inbounds %struct.rds_ib_send_work, ptr %send.0474491, i32 0, i32 1, i32 0, i32 0, i32 4
  %107 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %opcode, align 8
  %remote_addr102 = getelementptr inbounds %struct.rds_ib_send_work, ptr %send.0474491, i32 0, i32 1, i32 0, i32 1
  %108 = ptrtoint ptr %remote_addr102 to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %remote_addr.0471494, ptr %remote_addr102, align 8
  %109 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %op, align 8
  %rkey = getelementptr inbounds %struct.rds_ib_send_work, ptr %send.0474491, i32 0, i32 1, i32 0, i32 2
  %111 = ptrtoint ptr %rkey to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %rkey, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %num_sge.0468497, i32 %10)
  %cmp103 = icmp ugt i32 %num_sge.0468497, %10
  %112 = call i32 @llvm.umin.i32(i32 %num_sge.0468497, i32 %10)
  %sub106 = select i1 %cmp103, i32 %10, i32 0
  %spec.select487 = sub i32 %num_sge.0468497, %sub106
  %113 = getelementptr inbounds %struct.rds_ib_send_work, ptr %send.0474491, i32 0, i32 1, i32 0, i32 0, i32 3
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %112, ptr %113, align 4
  %115 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %89, align 8
  %tobool112.not = icmp eq ptr %prev.0473492, null
  br i1 %tobool112.not, label %if.end95.if.end117_crit_edge, label %if.then113

if.end95.if.end117_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end117

if.then113:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  %116 = getelementptr inbounds %struct.rds_ib_send_work, ptr %prev.0473492, i32 0, i32 1
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %89, ptr %116, align 8
  %118 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %118)
  %.pr = load i32, ptr %113, align 4
  br label %if.end117

if.end117:                                        ; preds = %if.then113, %if.end95.if.end117_crit_edge
  %119 = phi i32 [ %.pr, %if.then113 ], [ %112, %if.end95.if.end117_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %cmp121451.not = icmp eq i32 %119, 0
  br i1 %cmp121451.not, label %if.end117.do.body167_crit_edge, label %if.end117.land.rhs122_crit_edge

if.end117.land.rhs122_crit_edge:                  ; preds = %if.end117
  br label %land.rhs122

if.end117.do.body167_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body167

land.rhs122:                                      ; preds = %do.end161.land.rhs122_crit_edge, %if.end117.land.rhs122_crit_edge
  %scat.1457 = phi ptr [ %incdec.ptr, %do.end161.land.rhs122_crit_edge ], [ %scat.0472493, %if.end117.land.rhs122_crit_edge ]
  %remote_addr.1456 = phi i64 [ %add163, %do.end161.land.rhs122_crit_edge ], [ %remote_addr.0471494, %if.end117.land.rhs122_crit_edge ]
  %j.0454 = phi i32 [ %inc166, %do.end161.land.rhs122_crit_edge ], [ 0, %if.end117.land.rhs122_crit_edge ]
  %sent.1453 = phi i32 [ %add145, %do.end161.land.rhs122_crit_edge ], [ %sent.0469496, %if.end117.land.rhs122_crit_edge ]
  %odp_addr.1452 = phi i64 [ %add165, %do.end161.land.rhs122_crit_edge ], [ %odp_addr.0466499, %if.end117.land.rhs122_crit_edge ]
  %120 = ptrtoint ptr %op_sg73 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %op_sg73, align 8
  %122 = ptrtoint ptr %op_count43 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %op_count43, align 4
  %arrayidx125 = getelementptr %struct.scatterlist, ptr %121, i32 %123
  %cmp126.not = icmp eq ptr %scat.1457, %arrayidx125
  br i1 %cmp126.not, label %land.rhs122.do.body167_crit_edge, label %for.body128

land.rhs122.do.body167_crit_edge:                 ; preds = %land.rhs122
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body167

for.body128:                                      ; preds = %land.rhs122
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %scat.1457, i32 0, i32 4
  %124 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %dma_length, align 4
  %126 = ptrtoint ptr %op_odp_mr to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %op_odp_mr, align 8
  %tobool130.not = icmp eq ptr %127, null
  br i1 %tobool130.not, label %if.then131, label %if.else135

if.then131:                                       ; preds = %for.body128
  call void @__sanitizer_cov_trace_pc() #11
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %scat.1457, i32 0, i32 3
  %128 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %dma_address, align 4
  %conv = zext i32 %129 to i64
  %arrayidx132 = getelementptr %struct.rds_ib_send_work, ptr %send.0474491, i32 0, i32 2, i32 %j.0454
  %130 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 %conv, ptr %arrayidx132, align 8
  %131 = ptrtoint ptr %i_pd to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %i_pd, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %132, align 4
  br label %if.end142

if.else135:                                       ; preds = %for.body128
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx137 = getelementptr %struct.rds_ib_send_work, ptr %send.0474491, i32 0, i32 2, i32 %j.0454
  %135 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %odp_addr.1452, ptr %arrayidx137, align 8
  br label %if.end142

if.end142:                                        ; preds = %if.else135, %if.then131
  %odp_lkey.0.sink = phi i32 [ %134, %if.then131 ], [ %odp_lkey.0, %if.else135 ]
  %136 = getelementptr %struct.rds_ib_send_work, ptr %send.0474491, i32 0, i32 2, i32 %j.0454, i32 2
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %odp_lkey.0.sink, ptr %136, align 4
  %length = getelementptr %struct.rds_ib_send_work, ptr %send.0474491, i32 0, i32 2, i32 %j.0454, i32 1
  %138 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %125, ptr %length, align 8
  %add145 = add i32 %125, %sent.1453
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_xmit_rdma.__UNIQUE_ID_ddebug562, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_xmit_rdma, %if.then158)) #9
          to label %do.end161 [label %if.then158], !srcloc !95

if.then158:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_xmit_rdma.__UNIQUE_ID_ddebug562, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, ptr noundef %3, i32 noundef %add145, i64 noundef %remote_addr.1456) #9
  br label %do.end161

do.end161:                                        ; preds = %if.then158, %if.end142
  %conv162 = zext i32 %125 to i64
  %add163 = add i64 %remote_addr.1456, %conv162
  %add165 = add i64 %odp_addr.1452, %conv162
  %incdec.ptr = getelementptr %struct.scatterlist, ptr %scat.1457, i32 1
  %inc166 = add nuw i32 %j.0454, 1
  %139 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %113, align 4
  %cmp121 = icmp ult i32 %inc166, %140
  br i1 %cmp121, label %do.end161.land.rhs122_crit_edge, label %do.end161.do.body167_crit_edge

do.end161.do.body167_crit_edge:                   ; preds = %do.end161
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body167

do.end161.land.rhs122_crit_edge:                  ; preds = %do.end161
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs122

do.body167:                                       ; preds = %do.end161.do.body167_crit_edge, %land.rhs122.do.body167_crit_edge, %if.end117.do.body167_crit_edge
  %odp_addr.1.lcssa = phi i64 [ %odp_addr.0466499, %if.end117.do.body167_crit_edge ], [ %odp_addr.1452, %land.rhs122.do.body167_crit_edge ], [ %add165, %do.end161.do.body167_crit_edge ]
  %sent.1.lcssa = phi i32 [ %sent.0469496, %if.end117.do.body167_crit_edge ], [ %sent.1453, %land.rhs122.do.body167_crit_edge ], [ %add145, %do.end161.do.body167_crit_edge ]
  %remote_addr.1.lcssa = phi i64 [ %remote_addr.0471494, %if.end117.do.body167_crit_edge ], [ %remote_addr.1456, %land.rhs122.do.body167_crit_edge ], [ %add163, %do.end161.do.body167_crit_edge ]
  %scat.1.lcssa = phi ptr [ %scat.0472493, %if.end117.do.body167_crit_edge ], [ %scat.1457, %land.rhs122.do.body167_crit_edge ], [ %incdec.ptr, %do.end161.do.body167_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_xmit_rdma.__UNIQUE_ID_ddebug563, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_xmit_rdma, %if.then179)) #9
          to label %do.end187 [label %if.then179], !srcloc !95

if.then179:                                       ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #11
  %141 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %113, align 4
  %143 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %89, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_xmit_rdma.__UNIQUE_ID_ddebug563, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.25, ptr noundef %send.0474491, ptr noundef %89, i32 noundef %142, ptr noundef %144) #9
  br label %do.end187

do.end187:                                        ; preds = %if.then179, %do.body167
  %inc198 = add nuw i32 %i.0470495, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc198, i32 %div)
  %exitcond.not = icmp eq i32 %inc198, %div
  br i1 %exitcond.not, label %do.end187.for.end199.loopexit_crit_edge, label %land.rhs

do.end187.for.end199.loopexit_crit_edge:          ; preds = %do.end187
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end199.loopexit

for.end199.loopexit:                              ; preds = %do.end187.for.end199.loopexit_crit_edge, %land.rhs.for.end199.loopexit_crit_edge
  %i.0.lcssa.ph = phi i32 [ %inc198, %land.rhs.for.end199.loopexit_crit_edge ], [ %div, %do.end187.for.end199.loopexit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %inc198)
  %cmp76.le = icmp ugt i32 %div, %inc198
  br label %for.end199

for.end199:                                       ; preds = %for.end199.loopexit, %land.rhs.lr.ph.for.end199_crit_edge, %if.end71.for.end199_crit_edge
  %nr_sig.0.lcssa = phi i32 [ 0, %if.end71.for.end199_crit_edge ], [ 0, %land.rhs.lr.ph.for.end199_crit_edge ], [ %nr_sig.1, %for.end199.loopexit ]
  %i.0.lcssa = phi i32 [ 0, %if.end71.for.end199_crit_edge ], [ 0, %land.rhs.lr.ph.for.end199_crit_edge ], [ %i.0.lcssa.ph, %for.end199.loopexit ]
  %scat.0.lcssa = phi ptr [ %74, %if.end71.for.end199_crit_edge ], [ %74, %land.rhs.lr.ph.for.end199_crit_edge ], [ %scat.1.lcssa, %for.end199.loopexit ]
  %prev.0.lcssa = phi ptr [ null, %if.end71.for.end199_crit_edge ], [ null, %land.rhs.lr.ph.for.end199_crit_edge ], [ %send.0474491, %for.end199.loopexit ]
  %cmp76.lcssa = phi i1 [ false, %if.end71.for.end199_crit_edge ], [ true, %land.rhs.lr.ph.for.end199_crit_edge ], [ %cmp76.le, %for.end199.loopexit ]
  %145 = ptrtoint ptr %op_sg73 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %op_sg73, align 8
  %147 = ptrtoint ptr %op_count43 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %op_count43, align 4
  %arrayidx202 = getelementptr %struct.scatterlist, ptr %146, i32 %148
  %cmp203 = icmp eq ptr %scat.0.lcssa, %arrayidx202
  br i1 %cmp203, label %if.then205, label %for.end199.if.end208_crit_edge

for.end199.if.end208_crit_edge:                   ; preds = %for.end199
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end208

if.then205:                                       ; preds = %for.end199
  call void @__sanitizer_cov_trace_pc() #11
  %149 = ptrtoint ptr %prev.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %op, ptr %prev.0.lcssa, align 8
  %add.ptr = getelementptr i8, ptr %op, i32 -392
  call void @rds_message_addref(ptr noundef %add.ptr) #9
  br label %if.end208

if.end208:                                        ; preds = %if.then205, %for.end199.if.end208_crit_edge
  br i1 %cmp76.lcssa, label %if.then211, label %if.end208.if.end214_crit_edge

if.end208.if.end214_crit_edge:                    ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end214

if.then211:                                       ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  %sub213 = sub i32 %div, %i.0.lcssa
  call void @rds_ib_ring_unalloc(ptr noundef %i_send_ring, i32 noundef %sub213) #9
  br label %if.end214

if.end214:                                        ; preds = %if.then211, %if.end208.if.end214_crit_edge
  %work_alloc.0 = phi i32 [ %i.0.lcssa, %if.then211 ], [ %div, %if.end208.if.end214_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_sig.0.lcssa)
  %tobool215.not = icmp eq i32 %nr_sig.0.lcssa, 0
  br i1 %tobool215.not, label %if.end214.if.end217_crit_edge, label %if.then216

if.end214.if.end217_crit_edge:                    ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end217

if.then216:                                       ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #11
  %i_signaled_sends = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 18
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_signaled_sends, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %i_signaled_sends, i32 1, i32 3, i32 1) #9
  %150 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_signaled_sends, ptr %i_signaled_sends, i32 %nr_sig.0.lcssa, ptr elementtype(i32) %i_signaled_sends) #9, !srcloc !111
  br label %if.end217

if.end217:                                        ; preds = %if.then216, %if.end214.if.end217_crit_edge
  %151 = getelementptr %struct.rds_ib_send_work, ptr %70, i32 %72, i32 1
  %152 = ptrtoint ptr %failed_wr to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %151, ptr %failed_wr, align 4
  %i_cm_id219 = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 3
  %153 = ptrtoint ptr %i_cm_id219 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %i_cm_id219, align 8
  %qp = getelementptr inbounds %struct.rdma_cm_id, ptr %154, i32 0, i32 2
  %155 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %qp, align 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %156, align 4
  %post_send.i = getelementptr inbounds %struct.ib_device, ptr %158, i32 0, i32 1, i32 6
  %159 = ptrtoint ptr %post_send.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %post_send.i, align 4
  %call.i = call i32 %160(ptr noundef %156, ptr noundef %151, ptr noundef nonnull %failed_wr) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_xmit_rdma.__UNIQUE_ID_ddebug564, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_xmit_rdma, %if.then234)) #9
          to label %do.body239 [label %if.then234], !srcloc !95

if.then234:                                       ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #11
  %161 = ptrtoint ptr %failed_wr to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %failed_wr, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_xmit_rdma.__UNIQUE_ID_ddebug564, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.25, ptr noundef %3, ptr noundef %arrayidx72, ptr noundef %151, i32 noundef %call.i, ptr noundef %162) #9
  br label %do.body239

do.body239:                                       ; preds = %if.then234, %if.end217
  %163 = ptrtoint ptr %failed_wr to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %failed_wr, align 4
  %cmp241.not = icmp eq ptr %164, %151
  br i1 %cmp241.not, label %do.end258, label %do.body250, !prof !107

do.body250:                                       ; preds = %do.body239
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/ib_send.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 990, 0\0A.popsection", ""() #9, !srcloc !139
  unreachable

do.end258:                                        ; preds = %do.body239
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool259.not = icmp eq i32 %call.i, 0
  br i1 %tobool259.not, label %do.end258.out_crit_edge, label %do.end263

do.end258.out_crit_edge:                          ; preds = %do.end258
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end263:                                        ; preds = %do.end258
  %c_faddr = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 2
  %call265 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %c_faddr, i32 noundef %call.i) #12
  call void @rds_ib_ring_unalloc(ptr noundef %i_send_ring, i32 noundef %work_alloc.0) #9
  %i_signaled_sends.i = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_signaled_sends.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !102
  call void @llvm.prefetch.p0(ptr %i_signaled_sends.i, i32 1, i32 3, i32 1) #9
  %165 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_signaled_sends.i, ptr %i_signaled_sends.i, i32 %nr_sig.0.lcssa, ptr elementtype(i32) %i_signaled_sends.i) #9, !srcloc !103
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %165, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i445 = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i445, label %land.lhs.true.i, label %do.end263.do.body.i_crit_edge

do.end263.do.body.i_crit_edge:                    ; preds = %do.end263
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

land.lhs.true.i:                                  ; preds = %do.end263
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.wait_queue_head, ptr @rds_ib_ring_empty_wait, i32 0, i32 1) to i32))
  %166 = load volatile ptr, ptr getelementptr inbounds (%struct.wait_queue_head, ptr @rds_ib_ring_empty_wait, i32 0, i32 1), align 4
  %cmp.i.i.not.i = icmp eq ptr %166, getelementptr inbounds (%struct.wait_queue_head, ptr @rds_ib_ring_empty_wait, i32 0, i32 1)
  br i1 %cmp.i.i.not.i, label %land.lhs.true.i.do.body.i_crit_edge, label %if.then.i446

land.lhs.true.i.do.body.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.then.i446:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__wake_up(ptr noundef nonnull @rds_ib_ring_empty_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i446, %land.lhs.true.i.do.body.i_crit_edge, %do.end263.do.body.i_crit_edge
  %call.i.i14.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_signaled_sends.i, i32 noundef 4) #9
  %167 = ptrtoint ptr %i_signaled_sends.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load volatile i32, ptr %i_signaled_sends.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %cmp4.i = icmp slt i32 %168, 0
  br i1 %cmp4.i, label %do.body8.i, label %do.body.i.out_crit_edge, !prof !105

do.body.i.out_crit_edge:                          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/ib_send.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 234, 0\0A.popsection", ""() #9, !srcloc !106
  unreachable

out.sink.split:                                   ; preds = %if.then47, %do.body17
  %.sink = phi i32 [ %46, %do.body17 ], [ %68, %if.then47 ]
  %and.i.i.i426 = and i32 %.sink, -16384
  %169 = inttoptr i32 %and.i.i.i426 to ptr
  %preempt_count.i.i427 = getelementptr inbounds %struct.thread_info, ptr %169, i32 0, i32 1
  %170 = ptrtoint ptr %preempt_count.i.i427 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load volatile i32, ptr %preempt_count.i.i427, align 4
  %sub.i433 = add i32 %171, -1
  store volatile i32 %sub.i433, ptr %preempt_count.i.i427, align 4
  br label %out

out:                                              ; preds = %out.sink.split, %do.body.i.out_crit_edge, %do.end258.out_crit_edge
  %ret.0 = phi i32 [ 0, %do.end258.out_crit_edge ], [ %call.i, %do.body.i.out_crit_edge ], [ -12, %out.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %failed_wr) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_ib_get_lkey(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_ib_xmit_path_complete(ptr nocapture noundef readonly %cp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cp, align 8
  %c_path = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %c_path, align 4
  %cp_transport_data = getelementptr inbounds %struct.rds_conn_path, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cp_transport_data, align 8
  tail call void @rds_ib_attempt_ack(ptr noundef %5) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_attempt_ack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_rdma_send_complete(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_atomic_send_complete(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone willreturn }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !27, !28, !30, !31, !32, !34, !36, !37, !38, !40, !41, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !61, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !77, !78}
!llvm.named.register.sp = !{!80}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/rds/ib_send.c", i32 254, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @rds_ib_send_cqe_handler.__UNIQUE_ID_ddebug546, !1, !"__UNIQUE_ID_ddebug546", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/rds/ib_send.c", i32 304, i32 3}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/rds/ib_send.c", i32 371, i32 2}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @rds_ib_send_grab_credits.__UNIQUE_ID_ddebug547, !9, !"__UNIQUE_ID_ddebug547", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/rds/ib_send.c", i32 415, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @rds_ib_send_add_credits.__UNIQUE_ID_ddebug550, !13, !"__UNIQUE_ID_ddebug550", i1 false, i1 false}
!16 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/rds/ib_send.c", i32 555, i32 4}
!20 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @rds_ib_xmit.__UNIQUE_ID_ddebug553, !19, !"__UNIQUE_ID_ddebug553", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/rds/ib_send.c", i32 682, i32 3}
!24 = !{ptr @rds_ib_xmit.__UNIQUE_ID_ddebug556, !23, !"__UNIQUE_ID_ddebug556", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/rds/ib_send.c", i32 738, i32 2}
!27 = !{ptr @rds_ib_xmit.__UNIQUE_ID_ddebug557, !26, !"__UNIQUE_ID_ddebug557", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/rds/ib_send.c", i32 742, i32 3}
!30 = !{ptr @rds_ib_xmit._entry, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @rds_ib_xmit._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/rds/ib_send.c", i32 751, i32 3}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/rds/ib_send.c", i32 811, i32 2}
!36 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @rds_ib_xmit_atomic.__UNIQUE_ID_ddebug558, !35, !"__UNIQUE_ID_ddebug558", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/rds/ib_send.c", i32 824, i32 2}
!40 = !{ptr @rds_ib_xmit_atomic.__UNIQUE_ID_ddebug559, !39, !"__UNIQUE_ID_ddebug559", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/rds/ib_send.c", i32 832, i32 2}
!43 = !{ptr @rds_ib_xmit_atomic.__UNIQUE_ID_ddebug560, !42, !"__UNIQUE_ID_ddebug560", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/rds/ib_send.c", i32 836, i32 3}
!46 = !{ptr @rds_ib_xmit_atomic._entry, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @rds_ib_xmit_atomic._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/rds/ib_send.c", i32 844, i32 3}
!50 = !{ptr @rds_ib_xmit_atomic._entry.22, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @rds_ib_xmit_atomic._entry_ptr.24, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/rds/ib_send.c", i32 882, i32 4}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @rds_ib_xmit_rdma.__UNIQUE_ID_ddebug561, !53, !"__UNIQUE_ID_ddebug561", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/rds/ib_send.c", i32 955, i32 4}
!58 = !{ptr @rds_ib_xmit_rdma.__UNIQUE_ID_ddebug562, !57, !"__UNIQUE_ID_ddebug562", i1 false, i1 false}
!59 = !{ptr @rds_ib_xmit_rdma.__UNIQUE_ID_ddebug563, !60, !"__UNIQUE_ID_ddebug563", i1 false, i1 false}
!60 = !{!"../net/rds/ib_send.c", i32 962, i32 3}
!61 = !{ptr @rds_ib_xmit_rdma.__UNIQUE_ID_ddebug564, !62, !"__UNIQUE_ID_ddebug564", i1 false, i1 false}
!62 = !{!"../net/rds/ib_send.c", i32 988, i32 2}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/rds/ib_send.c", i32 992, i32 3}
!65 = !{ptr @rds_ib_xmit_rdma._entry, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @rds_ib_xmit_rdma._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/rds/ib_send.c", i32 1000, i32 3}
!69 = !{ptr @rds_ib_xmit_rdma._entry.29, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @rds_ib_xmit_rdma._entry_ptr.31, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../net/rds/ib_send.c", i32 179, i32 3}
!73 = !{ptr @rds_ib_send_unmap_op._rs, !72, !"_rs", i1 false, i1 false}
!74 = !{ptr @__func__.rds_ib_send_unmap_op, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @rds_ib_send_unmap_op._entry, !72, !"_entry", i1 false, i1 false}
!77 = !{ptr @rds_ib_send_unmap_op._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../net/rds/rds.h", i32 835, i32 2}
!80 = !{!"sp"}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{ptr @rds_atomic_send_complete, ptr @rds_rdma_send_complete}
!91 = !{i64 2158571083}
!92 = !{i64 2158573090}
!93 = !{i64 2158576254}
!94 = !{i64 2158578256}
!95 = !{i64 2148720322, i64 2148720327, i64 2148720340, i64 2148720384, i64 2148720418, i64 2148720439}
!96 = !{i64 2158591582}
!97 = !{i64 2158591755}
!98 = !{i64 2158594010}
!99 = !{i64 2158594183}
!100 = !{i64 2158596421}
!101 = !{i64 2158596594}
!102 = !{i64 2148326959}
!103 = !{i64 2148241692, i64 2148241724, i64 2148241753, i64 2148241787, i64 2148241818, i64 2148241841}
!104 = !{i64 2148327188}
!105 = !{!"branch_weights", i32 1, i32 2000}
!106 = !{i64 2158585106, i64 2158585588, i64 2158585143, i64 2158585199, i64 2158585233, i64 2158585257, i64 2158585298, i64 2158585319, i64 2158585347, i64 2158585381}
!107 = !{!"branch_weights", i32 2000, i32 1}
!108 = !{i64 2148340330}
!109 = !{i64 722243, i64 722267, i64 722288, i64 722305, i64 722322}
!110 = !{i64 2148340556}
!111 = !{i64 2148238507, i64 2148238533, i64 2148238562, i64 2148238596, i64 2148238627, i64 2148238650}
!112 = !{i64 2158611673}
!113 = !{i64 2158611846}
!114 = !{!"auto-init"}
!115 = !{i64 2158612655, i64 2158613137, i64 2158612692, i64 2158612748, i64 2158612782, i64 2158612806, i64 2158612847, i64 2158612868, i64 2158612896, i64 2158612930}
!116 = !{i64 2158614309, i64 2158614791, i64 2158614346, i64 2158614402, i64 2158614436, i64 2158614460, i64 2158614501, i64 2158614522, i64 2158614550, i64 2158614584}
!117 = !{i64 2158619619}
!118 = !{i64 2158619792}
!119 = !{i64 2158621765}
!120 = !{i64 2158621938}
!121 = !{i64 2158626336}
!122 = !{i64 2158626509}
!123 = !{i64 7394468, i64 7394507, i64 7394533, i64 7394557, i64 7394582, i64 7394608, i64 7394633, i64 7394659, i64 7394686, i64 7394712, i64 7394751, i64 7394795, i64 7394826, i64 7394851}
!124 = !{i64 7394085}
!125 = !{i64 2158627029, i64 2158627511, i64 2158627066, i64 2158627122, i64 2158627156, i64 2158627180, i64 2158627221, i64 2158627242, i64 2158627270, i64 2158627304}
!126 = !{i64 2158635134}
!127 = !{i64 2158635307}
!128 = !{i64 2158638430, i64 2158638912, i64 2158638467, i64 2158638523, i64 2158638557, i64 2158638581, i64 2158638622, i64 2158638643, i64 2158638671, i64 2158638705}
!129 = !{i64 2158641750, i64 2158642232, i64 2158641787, i64 2158641843, i64 2158641877, i64 2158641901, i64 2158641942, i64 2158641963, i64 2158641991, i64 2158642025}
!130 = !{i64 2158644861}
!131 = !{i64 2158645034}
!132 = !{i64 2158650794}
!133 = !{i64 2158650967}
!134 = !{i64 2158656909, i64 2158657391, i64 2158656946, i64 2158657002, i64 2158657036, i64 2158657060, i64 2158657101, i64 2158657122, i64 2158657150, i64 2158657184}
!135 = !{i64 2158667572}
!136 = !{i64 2158667745}
!137 = !{i64 2158669654}
!138 = !{i64 2158669827}
!139 = !{i64 2158679768, i64 2158680250, i64 2158679805, i64 2158679861, i64 2158679895, i64 2158679919, i64 2158679960, i64 2158679981, i64 2158680009, i64 2158680043}
