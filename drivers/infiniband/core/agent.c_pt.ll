; ModuleID = '/llk/IR_all_yes/drivers/infiniband/core/agent.c_pt.bc'
source_filename = "../drivers/infiniband/core/agent.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.169, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.169 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.160 }
%struct.anon.160 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ib_agent_port_private = type { %struct.list_head, [2 x ptr] }
%struct.ib_mad_agent = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.list_head, i8, i8, i8 }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.ib_wc = type { %union.anon, i32, i32, i32, i32, ptr, %union.anon.171, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon = type { i64 }
%union.anon.171 = type { i32 }
%struct.ib_mad_send_buf = type { ptr, ptr, ptr, ptr, [2 x ptr], i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_port_data = type { ptr, %struct.ib_port_immutable, %struct.spinlock, %struct.spinlock, %struct.list_head, %struct.ib_port_cache, ptr, %struct.hlist_node, %struct.rdma_port_counter, ptr }
%struct.ib_port_immutable = type { i32, i32, i32, i32 }
%struct.ib_port_cache = type { i64, ptr, ptr, i8, i32 }
%struct.rdma_port_counter = type { %struct.rdma_counter_mode, ptr, i32, %struct.mutex }
%struct.rdma_counter_mode = type { i32, i32, %struct.auto_mode_param }
%struct.auto_mode_param = type { i32 }

@agent_send_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 97, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unable to find port agent\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"agent_send_response\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/infiniband/core/agent.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@agent_send_response._entry_ptr = internal global ptr @agent_send_response._entry, section ".printk_index", align 4
@agent_send_response._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 105, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ib_create_ah_from_wc error %ld\0A\00", [32 x i8] zeroinitializer }, align 32
@agent_send_response._entry_ptr.7 = internal global ptr @agent_send_response._entry.5, section ".printk_index", align 4
@agent_send_response._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 118, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ib_create_send_mad error\0A\00", [38 x i8] zeroinitializer }, align 32
@agent_send_response._entry_ptr.10 = internal global ptr @agent_send_response._entry.8, section ".printk_index", align 4
@agent_send_response._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 133, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ib_post_send_mad error\0A\00", [40 x i8] zeroinitializer }, align 32
@agent_send_response._entry_ptr.13 = internal global ptr @agent_send_response._entry.11, section ".printk_index", align 4
@ib_agent_port_list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@ib_agent_port_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ib_agent_port_list, ptr @ib_agent_port_list }, [24 x i8] zeroinitializer }, align 32
@ib_agent_port_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 209, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Port %d not found\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ib_agent_port_close\00", [44 x i8] zeroinitializer }, align 32
@ib_agent_port_close._entry_ptr = internal global ptr @ib_agent_port_close._entry, section ".printk_index", align 4
@rdma_destroy_ah.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/rdma/ib_verbs.h\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Destroy of kernel AH shouldn't fail\00", [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ib_agent_port_list_lock\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 97, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 104, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 118, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 133, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [24 x i8] c"ib_agent_port_list_lock\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [19 x i8] c"ib_agent_port_list\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 54, i32 8 }
@___asan_gen_.61 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 209, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [27 x i8] c"../include/rdma/ib_verbs.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 3630, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private constant [35 x i8] c"../drivers/infiniband/core/agent.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 53, i32 8 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @agent_send_response._entry, ptr @agent_send_response._entry.11, ptr @agent_send_response._entry.5, ptr @agent_send_response._entry.8, ptr @agent_send_response._entry_ptr, ptr @agent_send_response._entry_ptr.10, ptr @agent_send_response._entry_ptr.13, ptr @agent_send_response._entry_ptr.7, ptr @ib_agent_port_close._entry, ptr @ib_agent_port_close._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @ib_agent_port_list_lock, ptr @ib_agent_port_list, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @agent_send_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @agent_send_response._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @agent_send_response._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @agent_send_response._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_agent_port_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_agent_port_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_agent_port_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @agent_send_response(ptr nocapture noundef readonly %mad_hdr, ptr noundef %grh, ptr noundef %wc, ptr noundef %device, i32 noundef %port_num, i32 noundef %qpn, i32 noundef %resp_mad_len, i1 noundef zeroext %opa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %is_switch.i = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 19
  %0 = ptrtoint ptr %is_switch.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %is_switch.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i)
  %tobool.i = icmp slt i8 %bf.load.i, 0
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @ib_agent_port_list_lock) #4
  %entry1.017.i.i = load ptr, ptr @ib_agent_port_list, align 4
  %cmp.not18.i.i = icmp eq ptr %entry1.017.i.i, @ib_agent_port_list
  br i1 %tobool.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %cmp.not18.i.i, label %if.then.if.end_crit_edge, label %if.then.for.body.i.i_crit_edge

if.then.for.body.i.i_crit_edge:                   ; preds = %if.then
  br label %for.body.i.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then.for.body.i.i_crit_edge
  %entry1.019.i.i = phi ptr [ %entry1.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %entry1.017.i.i, %if.then.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ib_agent_port_private, ptr %entry1.019.i.i, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %cmp3.i.i = icmp eq ptr %4, %device
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %port_num6.i.i = getelementptr inbounds %struct.ib_mad_agent, ptr %2, i32 0, i32 9
  %5 = ptrtoint ptr %port_num6.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %port_num6.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp7.i.i = icmp eq i8 %6, 0
  br i1 %cmp7.i.i, label %land.lhs.true.i.i.if.end_crit_edge, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i

land.lhs.true.i.i.if.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %7 = ptrtoint ptr %entry1.019.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %entry1.0.i.i = load ptr, ptr %entry1.019.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %entry1.0.i.i, @ib_agent_port_list
  br i1 %cmp.not.i.i, label %for.inc.i.i.if.end_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.inc.i.i.if.end_crit_edge:                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %cmp.not18.i.i, label %if.else.if.end_crit_edge, label %if.else.for.body.i.i72_crit_edge

if.else.for.body.i.i72_crit_edge:                 ; preds = %if.else
  br label %for.body.i.i72

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

for.body.i.i72:                                   ; preds = %for.inc.i.i79.for.body.i.i72_crit_edge, %if.else.for.body.i.i72_crit_edge
  %entry1.019.i.i69 = phi ptr [ %entry1.0.i.i77, %for.inc.i.i79.for.body.i.i72_crit_edge ], [ %entry1.017.i.i, %if.else.for.body.i.i72_crit_edge ]
  %arrayidx.i.i70 = getelementptr %struct.ib_agent_port_private, ptr %entry1.019.i.i69, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx.i.i70 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i70, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %cmp3.i.i71 = icmp eq ptr %11, %device
  br i1 %cmp3.i.i71, label %land.lhs.true.i.i76, label %for.body.i.i72.for.inc.i.i79_crit_edge

for.body.i.i72.for.inc.i.i79_crit_edge:           ; preds = %for.body.i.i72
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i79

land.lhs.true.i.i76:                              ; preds = %for.body.i.i72
  %port_num6.i.i73 = getelementptr inbounds %struct.ib_mad_agent, ptr %9, i32 0, i32 9
  %12 = ptrtoint ptr %port_num6.i.i73 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %port_num6.i.i73, align 4
  %conv.i.i74 = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i74, i32 %port_num)
  %cmp7.i.i75 = icmp eq i32 %conv.i.i74, %port_num
  br i1 %cmp7.i.i75, label %land.lhs.true.i.i76.if.end_crit_edge, label %land.lhs.true.i.i76.for.inc.i.i79_crit_edge

land.lhs.true.i.i76.for.inc.i.i79_crit_edge:      ; preds = %land.lhs.true.i.i76
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i79

land.lhs.true.i.i76.if.end_crit_edge:             ; preds = %land.lhs.true.i.i76
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

for.inc.i.i79:                                    ; preds = %land.lhs.true.i.i76.for.inc.i.i79_crit_edge, %for.body.i.i72.for.inc.i.i79_crit_edge
  %14 = ptrtoint ptr %entry1.019.i.i69 to i32
  call void @__asan_load4_noabort(i32 %14)
  %entry1.0.i.i77 = load ptr, ptr %entry1.019.i.i69, align 4
  %cmp.not.i.i78 = icmp eq ptr %entry1.0.i.i77, @ib_agent_port_list
  br i1 %cmp.not.i.i78, label %for.inc.i.i79.if.end_crit_edge, label %for.inc.i.i79.for.body.i.i72_crit_edge

for.inc.i.i79.for.body.i.i72_crit_edge:           ; preds = %for.inc.i.i79
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i72

for.inc.i.i79.if.end_crit_edge:                   ; preds = %for.inc.i.i79
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %for.inc.i.i79.if.end_crit_edge, %land.lhs.true.i.i76.if.end_crit_edge, %if.else.if.end_crit_edge, %for.inc.i.i.if.end_crit_edge, %land.lhs.true.i.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %port_priv.0 = phi ptr [ null, %if.then.if.end_crit_edge ], [ null, %if.else.if.end_crit_edge ], [ null, %for.inc.i.i.if.end_crit_edge ], [ %entry1.019.i.i, %land.lhs.true.i.i.if.end_crit_edge ], [ null, %for.inc.i.i79.if.end_crit_edge ], [ %entry1.019.i.i69, %land.lhs.true.i.i76.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ib_agent_port_list_lock, i32 noundef %call3.i) #4
  %tobool.not = icmp eq ptr %port_priv.0, null
  br i1 %tobool.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %15 = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.ib_agent_port_private, ptr %port_priv.0, i32 0, i32 1, i32 %qpn
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %qp = getelementptr inbounds %struct.ib_mad_agent, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %qp, align 4
  %pd = getelementptr inbounds %struct.ib_qp, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pd, align 4
  %call6 = tail call ptr @ib_create_ah_from_wc(ptr noundef %21, ptr noundef %wc, ptr noundef %grh, i32 noundef %port_num) #4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end11, label %if.end13

do.end11:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %22 = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 13
  %23 = ptrtoint ptr %call6 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.6, i32 noundef %23) #7
  br label %cleanup

if.end13:                                         ; preds = %if.end4
  br i1 %opa, label %land.lhs.true, label %if.end13.if.end17_crit_edge

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %mad_hdr to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %mad_hdr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %25)
  %cmp.not = icmp eq i8 %25, -128
  %spec.select = select i1 %cmp.not, i32 %resp_mad_len, i32 256
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true, %if.end13.if.end17_crit_edge
  %resp_mad_len.addr.0 = phi i32 [ %resp_mad_len, %if.end13.if.end17_crit_edge ], [ %spec.select, %land.lhs.true ]
  %src_qp = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 7
  %26 = ptrtoint ptr %src_qp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %src_qp, align 8
  %pkey_index = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 10
  %28 = ptrtoint ptr %pkey_index to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %pkey_index, align 4
  %sub = add i32 %resp_mad_len.addr.0, -24
  %30 = ptrtoint ptr %mad_hdr to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %mad_hdr, align 8
  %call19 = tail call ptr @ib_create_send_mad(ptr noundef %17, i32 noundef %27, i16 noundef zeroext %29, i32 noundef 0, i32 noundef 24, i32 noundef %sub, i32 noundef 3264, i8 noundef zeroext %31) #4
  %cmp.i82 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i82, label %do.end24, label %if.end25

do.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %32 = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.9) #7
  br label %err1

if.end25:                                         ; preds = %if.end17
  %mad = getelementptr inbounds %struct.ib_mad_send_buf, ptr %call19, i32 0, i32 1
  %33 = ptrtoint ptr %mad to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mad, align 4
  %35 = call ptr @memcpy(ptr %34, ptr %mad_hdr, i32 %resp_mad_len.addr.0)
  %ah26 = getelementptr inbounds %struct.ib_mad_send_buf, ptr %call19, i32 0, i32 3
  %36 = ptrtoint ptr %ah26 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call6, ptr %ah26, align 4
  %37 = ptrtoint ptr %is_switch.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load.i84 = load i8, ptr %is_switch.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i84)
  %tobool.i85 = icmp slt i8 %bf.load.i84, 0
  br i1 %tobool.i85, label %if.then28, label %if.end25.if.end30_crit_edge

if.end25.if.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  %port_num29 = getelementptr i8, ptr %call19, i32 136
  %38 = ptrtoint ptr %port_num29 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %port_num, ptr %port_num29, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end25.if.end30_crit_edge
  %call31 = tail call i32 @ib_post_send_mad(ptr noundef %call19, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end30.cleanup_crit_edge, label %do.end36

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  %39 = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.12) #7
  tail call void @ib_free_send_mad(ptr noundef %call19) #4
  br label %err1

err1:                                             ; preds = %do.end36, %do.end24
  %call.i = tail call i32 @rdma_destroy_ah_user(ptr noundef %call6, i32 noundef 1, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %err1.cleanup_crit_edge, label %land.rhs.i

err1.cleanup_crit_edge:                           ; preds = %err1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.rhs.i:                                       ; preds = %err1
  %.b1.i = load i1, ptr @rdma_destroy_ah.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.cleanup_crit_edge, label %if.then.i, !prof !43

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @rdma_destroy_ah.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 3630, i32 noundef 9, ptr noundef nonnull @.str.17) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %land.rhs.i.cleanup_crit_edge, %err1.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %do.end11, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_create_ah_from_wc(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_create_send_mad(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_post_send_mad(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_free_send_mad(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_agent_port_open(ptr noundef %device, i32 noundef %port_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %port_data.i = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 11
  %1 = ptrtoint ptr %port_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %port_data.i, align 8
  %core_cap_flags.i = getelementptr %struct.ib_port_data, ptr %2, i32 %port_num, i32 1, i32 2
  %3 = ptrtoint ptr %core_cap_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %core_cap_flags.i, align 4
  %and.i = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end.if.end12_crit_edge, label %if.then2

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then2:                                         ; preds = %if.end
  %call3 = tail call ptr @ib_register_mad_agent(ptr noundef %device, i32 noundef %port_num, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, ptr noundef nonnull @agent_send_handler, ptr noundef null, ptr noundef null, i32 noundef 0) #4
  %agent = getelementptr inbounds %struct.ib_agent_port_private, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %agent to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %agent, align 8
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then2.error2_crit_edge, label %if.then2.if.end12_crit_edge

if.then2.if.end12_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then2.error2_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %error2

if.end12:                                         ; preds = %if.then2.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %call13 = tail call ptr @ib_register_mad_agent(ptr noundef %device, i32 noundef %port_num, i32 noundef 1, ptr noundef null, i8 noundef zeroext 0, ptr noundef nonnull @agent_send_handler, ptr noundef null, ptr noundef null, i32 noundef 0) #4
  %arrayidx15 = getelementptr %struct.ib_agent_port_private, ptr %call7.i.i, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call13, ptr %arrayidx15, align 4
  %cmp.i52 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i52, label %if.then19, label %do.body24

if.then19:                                        ; preds = %if.end12
  %agent14 = getelementptr inbounds %struct.ib_agent_port_private, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %agent14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %agent14, align 8
  %tobool31.not = icmp eq ptr %8, null
  br i1 %tobool31.not, label %if.then19.error2_crit_edge, label %if.then32

if.then19.error2_crit_edge:                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #6
  br label %error2

do.body24:                                        ; preds = %if.end12
  %call26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @ib_agent_port_list_lock) #4
  %9 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ib_agent_port_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %9, ptr noundef nonnull @ib_agent_port_list) #4
  br i1 %call.i.i, label %if.end.i.i, label %do.body24.list_add_tail.exit_crit_edge

do.body24.list_add_tail.exit_crit_edge:           ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @ib_agent_port_list, i32 0, i32 1), align 4
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ib_agent_port_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %call7.i.i, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body24.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ib_agent_port_list_lock, i32 noundef %call26) #4
  br label %cleanup

if.then32:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ib_unregister_mad_agent(ptr noundef nonnull %8) #4
  br label %error2

error2:                                           ; preds = %if.then32, %if.then19.error2_crit_edge, %if.then2.error2_crit_edge
  %ret.0.in = phi ptr [ %call13, %if.then32 ], [ %call13, %if.then19.error2_crit_edge ], [ %call3, %if.then2.error2_crit_edge ]
  %ret.0 = ptrtoint ptr %ret.0.in to i32
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %error2, %list_add_tail.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ %ret.0, %error2 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_register_mad_agent(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @agent_send_handler(ptr nocapture noundef readnone %mad_agent, ptr nocapture noundef readonly %mad_send_wc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mad_send_wc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mad_send_wc, align 4
  %ah = getelementptr inbounds %struct.ib_mad_send_buf, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ah, align 4
  %call.i = tail call i32 @rdma_destroy_ah_user(ptr noundef %3, i32 noundef 1, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.rdma_destroy_ah.exit_crit_edge, label %land.rhs.i

entry.rdma_destroy_ah.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %rdma_destroy_ah.exit

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @rdma_destroy_ah.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.rdma_destroy_ah.exit_crit_edge, label %if.then.i, !prof !43

land.rhs.i.rdma_destroy_ah.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rdma_destroy_ah.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @rdma_destroy_ah.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 3630, i32 noundef 9, ptr noundef nonnull @.str.17) #4
  br label %rdma_destroy_ah.exit

rdma_destroy_ah.exit:                             ; preds = %if.then.i, %land.rhs.i.rdma_destroy_ah.exit_crit_edge, %entry.rdma_destroy_ah.exit_crit_edge
  %4 = ptrtoint ptr %mad_send_wc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mad_send_wc, align 4
  tail call void @ib_free_send_mad(ptr noundef %5) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_unregister_mad_agent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_agent_port_close(ptr noundef %device, i32 noundef %port_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @ib_agent_port_list_lock) #4
  %entry1.017.i = load ptr, ptr @ib_agent_port_list, align 4
  %cmp.not18.i = icmp eq ptr %entry1.017.i, @ib_agent_port_list
  br i1 %cmp.not18.i, label %entry.if.then_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %entry1.019.i = phi ptr [ %entry1.0.i, %for.inc.i.for.body.i_crit_edge ], [ %entry1.017.i, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ib_agent_port_private, ptr %entry1.019.i, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmp3.i = icmp eq ptr %3, %device
  br i1 %cmp3.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %port_num6.i = getelementptr inbounds %struct.ib_mad_agent, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %port_num6.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port_num6.i, align 4
  %conv.i = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %port_num)
  %cmp7.i = icmp eq i32 %conv.i, %port_num
  br i1 %cmp7.i, label %__ib_get_agent_port.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %6 = ptrtoint ptr %entry1.019.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %entry1.0.i = load ptr, ptr %entry1.019.i, align 4
  %cmp.not.i = icmp eq ptr %entry1.0.i, @ib_agent_port_list
  br i1 %cmp.not.i, label %for.inc.i.if.then_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

__ib_get_agent_port.exit:                         ; preds = %land.lhs.true.i
  %arrayidx.i.le = getelementptr %struct.ib_agent_port_private, ptr %entry1.019.i, i32 0, i32 1, i32 1
  %cmp6 = icmp eq ptr %entry1.019.i, null
  br i1 %cmp6, label %__ib_get_agent_port.exit.if.then_crit_edge, label %if.end

__ib_get_agent_port.exit.if.then_crit_edge:       ; preds = %__ib_get_agent_port.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %__ib_get_agent_port.exit.if.then_crit_edge, %for.inc.i.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ib_agent_port_list_lock, i32 noundef %call2) #4
  %7 = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.14, i32 noundef %port_num) #7
  br label %cleanup

if.end:                                           ; preds = %__ib_get_agent_port.exit
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %entry1.019.i) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.019.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %entry1.019.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %entry1.019.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %14 = ptrtoint ptr %entry1.019.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.019.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %entry1.019.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ib_agent_port_list_lock, i32 noundef %call2) #4
  %agent = getelementptr inbounds %struct.ib_agent_port_private, ptr %entry1.019.i, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx.i.le to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.le, align 4
  tail call void @ib_unregister_mad_agent(ptr noundef %17) #4
  %18 = ptrtoint ptr %agent to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %agent, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %list_del.exit.if.end16_crit_edge, label %if.then13

list_del.exit.if.end16_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.then13:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ib_unregister_mad_agent(ptr noundef nonnull %19) #4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %list_del.exit.if.end16_crit_edge
  tail call void @kfree(ptr noundef nonnull %entry1.019.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then
  %retval.0 = phi i32 [ -19, %if.then ], [ 0, %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_destroy_ah_user(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/core/agent.c", i32 97, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @agent_send_response._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @agent_send_response._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/core/agent.c", i32 104, i32 3}
!10 = !{ptr @agent_send_response._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @agent_send_response._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/infiniband/core/agent.c", i32 118, i32 3}
!14 = !{ptr @agent_send_response._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @agent_send_response._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/infiniband/core/agent.c", i32 133, i32 3}
!18 = !{ptr @agent_send_response._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @agent_send_response._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/infiniband/core/agent.c", i32 209, i32 3}
!22 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ib_agent_port_close._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @ib_agent_port_close._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../include/rdma/ib_verbs.h", i32 3630, i32 2}
!27 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/infiniband/core/agent.c", i32 53, i32 8}
!31 = !{ptr @ib_agent_port_list_lock, !30, !"ib_agent_port_list_lock", i1 false, i1 false}
!32 = !{ptr @ib_agent_port_list, !33, !"ib_agent_port_list", i1 false, i1 false}
!33 = !{!"../drivers/infiniband/core/agent.c", i32 54, i32 8}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"branch_weights", i32 2000, i32 1}
