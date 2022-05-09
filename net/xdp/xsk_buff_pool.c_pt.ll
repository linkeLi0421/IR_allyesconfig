; ModuleID = '/llk/IR_all_yes/net/xdp/xsk_buff_pool.c_pt.bc'
source_filename = "../net/xdp/xsk_buff_pool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+xp_set_rxq_info\22, \22a\22\09"
module asm "\09.weak\09__crc_xp_set_rxq_info\09\09\09\09"
module asm "\09.long\09__crc_xp_set_rxq_info\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xp_set_rxq_info:\09\09\09\09\09"
module asm "\09.asciz \09\22xp_set_rxq_info\22\09\09\09\09\09"
module asm "__kstrtabns_xp_set_rxq_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xp_dma_unmap\22, \22a\22\09"
module asm "\09.weak\09__crc_xp_dma_unmap\09\09\09\09"
module asm "\09.long\09__crc_xp_dma_unmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xp_dma_unmap:\09\09\09\09\09"
module asm "\09.asciz \09\22xp_dma_unmap\22\09\09\09\09\09"
module asm "__kstrtabns_xp_dma_unmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xp_dma_map\22, \22a\22\09"
module asm "\09.weak\09__crc_xp_dma_map\09\09\09\09"
module asm "\09.long\09__crc_xp_dma_map\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xp_dma_map:\09\09\09\09\09"
module asm "\09.asciz \09\22xp_dma_map\22\09\09\09\09\09"
module asm "__kstrtabns_xp_dma_map:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xp_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_xp_alloc\09\09\09\09"
module asm "\09.long\09__crc_xp_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xp_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22xp_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_xp_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xp_alloc_batch\22, \22a\22\09"
module asm "\09.weak\09__crc_xp_alloc_batch\09\09\09\09"
module asm "\09.long\09__crc_xp_alloc_batch\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xp_alloc_batch:\09\09\09\09\09"
module asm "\09.asciz \09\22xp_alloc_batch\22\09\09\09\09\09"
module asm "__kstrtabns_xp_alloc_batch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xp_can_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_xp_can_alloc\09\09\09\09"
module asm "\09.long\09__crc_xp_can_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xp_can_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22xp_can_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_xp_can_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xp_free\22, \22a\22\09"
module asm "\09.weak\09__crc_xp_free\09\09\09\09"
module asm "\09.long\09__crc_xp_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xp_free:\09\09\09\09\09"
module asm "\09.asciz \09\22xp_free\22\09\09\09\09\09"
module asm "__kstrtabns_xp_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xp_raw_get_data\22, \22a\22\09"
module asm "\09.weak\09__crc_xp_raw_get_data\09\09\09\09"
module asm "\09.long\09__crc_xp_raw_get_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xp_raw_get_data:\09\09\09\09\09"
module asm "\09.asciz \09\22xp_raw_get_data\22\09\09\09\09\09"
module asm "__kstrtabns_xp_raw_get_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xp_raw_get_dma\22, \22a\22\09"
module asm "\09.weak\09__crc_xp_raw_get_dma\09\09\09\09"
module asm "\09.long\09__crc_xp_raw_get_dma\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xp_raw_get_dma:\09\09\09\09\09"
module asm "\09.asciz \09\22xp_raw_get_dma\22\09\09\09\09\09"
module asm "__kstrtabns_xp_raw_get_dma:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xp_dma_sync_for_cpu_slow\22, \22a\22\09"
module asm "\09.weak\09__crc_xp_dma_sync_for_cpu_slow\09\09\09\09"
module asm "\09.long\09__crc_xp_dma_sync_for_cpu_slow\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xp_dma_sync_for_cpu_slow:\09\09\09\09\09"
module asm "\09.asciz \09\22xp_dma_sync_for_cpu_slow\22\09\09\09\09\09"
module asm "__kstrtabns_xp_dma_sync_for_cpu_slow:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xp_dma_sync_for_device_slow\22, \22a\22\09"
module asm "\09.weak\09__crc_xp_dma_sync_for_device_slow\09\09\09\09"
module asm "\09.long\09__crc_xp_dma_sync_for_device_slow\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xp_dma_sync_for_device_slow:\09\09\09\09\09"
module asm "\09.asciz \09\22xp_dma_sync_for_device_slow\22\09\09\09\09\09"
module asm "__kstrtabns_xp_dma_sync_for_device_slow:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.xdp_sock = type { %struct.sock, [64 x i8], ptr, ptr, ptr, %struct.list_head, ptr, i16, i8, i32, [96 x i8], ptr, %struct.list_head, %struct.spinlock, i64, i64, %struct.list_head, %struct.spinlock, %struct.mutex, ptr, ptr, [32 x i8] }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.80, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.81, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.82, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.40, %union.anon.42, %union.anon.43, i16, i8, i8, i32, %union.anon.45, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.72, [0 x i32], %union.anon.73, i16, i16, %union.anon.74, %struct.refcount_struct, [0 x i32], %union.anon.75 }
%union.anon.40 = type { i64 }
%union.anon.42 = type { i32 }
%union.anon.43 = type { i32 }
%union.anon.45 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { i32 }
%union.anon.73 = type { %struct.hlist_node }
%union.anon.74 = type { i32 }
%union.anon.75 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.80 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.81 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.82 = type { ptr }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xsk_buff_pool = type { ptr, ptr, %struct.list_head, %struct.spinlock, %struct.refcount_struct, ptr, %struct.work_struct, %struct.list_head, i32, i16, ptr, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, ptr, %struct.spinlock, [0 x ptr], [16 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xdp_umem = type { ptr, i64, i32, i32, i32, i32, ptr, %struct.refcount_struct, i8, i8, ptr, i32, %struct.list_head, %struct.work_struct }
%struct.xdp_buff_xsk = type { %struct.xdp_buff, i32, i32, ptr, i64, %struct.list_head }
%struct.xdp_buff = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.netdev_bpf = type { i32, %union.anon.132 }
%union.anon.132 = type { %struct.anon.133 }
%struct.anon.133 = type { i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.127, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.172, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.127 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.172 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xsk_dma_map = type { ptr, ptr, ptr, %struct.refcount_struct, %struct.list_head, i32, i8 }
%struct.xsk_queue = type { i32, i32, i32, i32, ptr, i64, i64 }
%struct.xdp_ring = type { i32, [124 x i8], i32, [124 x i8], i32, [124 x i8], i32, i32, [120 x i8], i32, [124 x i8] }
%struct.xdp_umem_ring = type { %struct.xdp_ring, [0 x i64] }

@xp_create_and_assign_umem.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&pool->xsk_tx_list_lock\00", [40 x i8] zeroinitializer }, align 32
@xp_create_and_assign_umem.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&pool->cq_lock\00", [17 x i8] zeroinitializer }, align 32
@__kstrtab_xp_set_rxq_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_xp_set_rxq_info = external dso_local constant [0 x i8], align 1
@__ksymtab_xp_set_rxq_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xp_set_rxq_info to i32), ptr @__kstrtab_xp_set_rxq_info, ptr @__kstrtabns_xp_set_rxq_info }, section "___ksymtab+xp_set_rxq_info", align 4
@xp_assign_dev.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/xdp/xsk_buff_pool.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Driver did not DMA map zero-copy buffers\00", [55 x i8] zeroinitializer }, align 32
@xp_put_pool.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&pool->work)\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Could not find dma_map for device\00", [62 x i8] zeroinitializer }, align 32
@__kstrtab_xp_dma_unmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_xp_dma_unmap = external dso_local constant [0 x i8], align 1
@__ksymtab_xp_dma_unmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xp_dma_unmap to i32), ptr @__kstrtab_xp_dma_unmap, ptr @__kstrtabns_xp_dma_unmap }, section "___ksymtab+xp_dma_unmap", align 4
@__kstrtab_xp_dma_map = external dso_local constant [0 x i8], align 1
@__kstrtabns_xp_dma_map = external dso_local constant [0 x i8], align 1
@__ksymtab_xp_dma_map = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xp_dma_map to i32), ptr @__kstrtab_xp_dma_map, ptr @__kstrtabns_xp_dma_map }, section "___ksymtab+xp_dma_map", align 4
@__kstrtab_xp_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_xp_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_xp_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xp_alloc to i32), ptr @__kstrtab_xp_alloc, ptr @__kstrtabns_xp_alloc }, section "___ksymtab+xp_alloc", align 4
@__kstrtab_xp_alloc_batch = external dso_local constant [0 x i8], align 1
@__kstrtabns_xp_alloc_batch = external dso_local constant [0 x i8], align 1
@__ksymtab_xp_alloc_batch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xp_alloc_batch to i32), ptr @__kstrtab_xp_alloc_batch, ptr @__kstrtabns_xp_alloc_batch }, section "___ksymtab+xp_alloc_batch", align 4
@__kstrtab_xp_can_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_xp_can_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_xp_can_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xp_can_alloc to i32), ptr @__kstrtab_xp_can_alloc, ptr @__kstrtabns_xp_can_alloc }, section "___ksymtab+xp_can_alloc", align 4
@__kstrtab_xp_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_xp_free = external dso_local constant [0 x i8], align 1
@__ksymtab_xp_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xp_free to i32), ptr @__kstrtab_xp_free, ptr @__kstrtabns_xp_free }, section "___ksymtab+xp_free", align 4
@__kstrtab_xp_raw_get_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_xp_raw_get_data = external dso_local constant [0 x i8], align 1
@__ksymtab_xp_raw_get_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xp_raw_get_data to i32), ptr @__kstrtab_xp_raw_get_data, ptr @__kstrtabns_xp_raw_get_data }, section "___ksymtab+xp_raw_get_data", align 4
@__kstrtab_xp_raw_get_dma = external dso_local constant [0 x i8], align 1
@__kstrtabns_xp_raw_get_dma = external dso_local constant [0 x i8], align 1
@__ksymtab_xp_raw_get_dma = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xp_raw_get_dma to i32), ptr @__kstrtab_xp_raw_get_dma, ptr @__kstrtabns_xp_raw_get_dma }, section "___ksymtab+xp_raw_get_dma", align 4
@__kstrtab_xp_dma_sync_for_cpu_slow = external dso_local constant [0 x i8], align 1
@__kstrtabns_xp_dma_sync_for_cpu_slow = external dso_local constant [0 x i8], align 1
@__ksymtab_xp_dma_sync_for_cpu_slow = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xp_dma_sync_for_cpu_slow to i32), ptr @__kstrtab_xp_dma_sync_for_cpu_slow, ptr @__kstrtabns_xp_dma_sync_for_cpu_slow }, section "___ksymtab+xp_dma_sync_for_cpu_slow", align 4
@__kstrtab_xp_dma_sync_for_device_slow = external dso_local constant [0 x i8], align 1
@__kstrtabns_xp_dma_sync_for_device_slow = external dso_local constant [0 x i8], align 1
@__ksymtab_xp_dma_sync_for_device_slow = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xp_dma_sync_for_device_slow to i32), ptr @__kstrtab_xp_dma_sync_for_device_slow, ptr @__kstrtabns_xp_dma_sync_for_device_slow }, section "___ksymtab+xp_dma_sync_for_device_slow", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@xp_disable_drv_zc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to disable zero-copy!\0A\00", [34 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 75, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 76, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 135, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 181, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 261, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 338, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private constant [27 x i8] c"../net/xdp/xsk_buff_pool.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 124, i32 4 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__ksymtab_xp_alloc, ptr @__ksymtab_xp_alloc_batch, ptr @__ksymtab_xp_can_alloc, ptr @__ksymtab_xp_dma_map, ptr @__ksymtab_xp_dma_sync_for_cpu_slow, ptr @__ksymtab_xp_dma_sync_for_device_slow, ptr @__ksymtab_xp_dma_unmap, ptr @__ksymtab_xp_free, ptr @__ksymtab_xp_raw_get_data, ptr @__ksymtab_xp_raw_get_dma, ptr @__ksymtab_xp_set_rxq_info, ptr @xp_create_and_assign_umem.__key, ptr @.str, ptr @xp_create_and_assign_umem.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @xp_put_pool.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xp_create_and_assign_umem.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xp_create_and_assign_umem.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xp_put_pool.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xp_add_xsk(ptr noundef %pool, ptr noundef %xs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tx = getelementptr inbounds %struct.xdp_sock, ptr %xs, i32 0, i32 11
  %0 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx, align 128
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body1:                                         ; preds = %entry
  %xsk_tx_list_lock = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %xsk_tx_list_lock) #12
  %tx_list = getelementptr inbounds %struct.xdp_sock, ptr %xs, i32 0, i32 12
  %xsk_tx_list = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 2
  %2 = ptrtoint ptr %xsk_tx_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xsk_tx_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %tx_list, ptr noundef %xsk_tx_list, ptr noundef %3) #12
  br i1 %call.i.i, label %if.end.i.i, label %do.body1.list_add_rcu.exit_crit_edge

do.body1.list_add_rcu.exit_crit_edge:             ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_rcu.exit

if.end.i.i:                                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %tx_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %tx_list, align 4
  %prev2.i.i = getelementptr inbounds %struct.xdp_sock, ptr %xs, i32 0, i32 12, i32 1
  %5 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %xsk_tx_list, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !53
  %6 = ptrtoint ptr %xsk_tx_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %tx_list, ptr %xsk_tx_list, align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %tx_list, ptr %prev37.i.i, align 4
  br label %list_add_rcu.exit

list_add_rcu.exit:                                ; preds = %if.end.i.i, %do.body1.list_add_rcu.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %xsk_tx_list_lock, i32 noundef %call2) #12
  br label %cleanup

cleanup:                                          ; preds = %list_add_rcu.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xp_del_xsk(ptr noundef %pool, ptr noundef %xs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tx = getelementptr inbounds %struct.xdp_sock, ptr %xs, i32 0, i32 11
  %0 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx, align 128
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body1:                                         ; preds = %entry
  %xsk_tx_list_lock = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %xsk_tx_list_lock) #12
  %tx_list = getelementptr inbounds %struct.xdp_sock, ptr %xs, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tx_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %do.body1.list_del_rcu.exit_crit_edge

do.body1.list_del_rcu.exit_crit_edge:             ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.xdp_sock, ptr %xs, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %do.body1.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.xdp_sock, ptr %xs, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %xsk_tx_list_lock, i32 noundef %call2) #12
  br label %cleanup

cleanup:                                          ; preds = %list_del_rcu.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xp_destroy(ptr noundef %pool) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pool, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %heads = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 13
  %0 = ptrtoint ptr %heads to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %heads, align 4
  tail call void @kvfree(ptr noundef %1) #12
  tail call void @kvfree(ptr noundef nonnull %pool) #12
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xp_create_and_assign_umem(ptr nocapture noundef readonly %xs, ptr noundef %umem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.xdp_umem, ptr %umem, i32 0, i32 8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 8
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %chunks = getelementptr inbounds %struct.xdp_umem, ptr %umem, i32 0, i32 4
  %3 = ptrtoint ptr %chunks to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chunks, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %4, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %cond, i32 4) #12
  %6 = extractvalue { i32, i1 } %5, 1
  %7 = extractvalue { i32, i1 } %5, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %7, i32 256) #12
  %retval.0.i = select i1 %6, i32 -1, i32 %spec.select.i
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %retval.0.i, i32 noundef 3520, i32 noundef -1) #15
  %tobool4.not = icmp eq ptr %call.i.i, null
  br i1 %tobool4.not, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %chunks5 = getelementptr inbounds %struct.xdp_umem, ptr %umem, i32 0, i32 4
  %8 = ptrtoint ptr %chunks5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chunks5, align 8
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 56) #12
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %kvcalloc.exit.thread, label %kvcalloc.exit, !prof !54

kvcalloc.exit.thread:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %heads109 = getelementptr inbounds %struct.xsk_buff_pool, ptr %call.i.i, i32 0, i32 13
  %12 = ptrtoint ptr %heads109 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %heads109, align 4
  br label %if.end.i

kvcalloc.exit:                                    ; preds = %if.end
  %13 = extractvalue { i32, i1 } %10, 0
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %13, i32 noundef 3520, i32 noundef -1) #15
  %heads = getelementptr inbounds %struct.xsk_buff_pool, ptr %call.i.i, i32 0, i32 13
  %14 = ptrtoint ptr %heads to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i.i.i, ptr %heads, align 4
  %tobool8.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool8.not, label %kvcalloc.exit.if.end.i_crit_edge, label %if.end10

kvcalloc.exit.if.end.i_crit_edge:                 ; preds = %kvcalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end10:                                         ; preds = %kvcalloc.exit
  %chunk_size = getelementptr inbounds %struct.xdp_umem, ptr %umem, i32 0, i32 3
  %15 = ptrtoint ptr %chunk_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %chunk_size, align 4
  %conv11 = zext i32 %16 to i64
  %neg = sub nsw i64 0, %conv11
  %chunk_mask = getelementptr inbounds %struct.xsk_buff_pool, ptr %call.i.i, i32 0, i32 14
  %17 = ptrtoint ptr %chunk_mask to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %neg, ptr %chunk_mask, align 16
  %size = getelementptr inbounds %struct.xdp_umem, ptr %umem, i32 0, i32 1
  %18 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %size, align 8
  %addrs_cnt = getelementptr inbounds %struct.xsk_buff_pool, ptr %call.i.i, i32 0, i32 15
  %20 = ptrtoint ptr %addrs_cnt to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %addrs_cnt, align 8
  %21 = ptrtoint ptr %chunks5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chunks5, align 8
  %heads_cnt = getelementptr inbounds %struct.xsk_buff_pool, ptr %call.i.i, i32 0, i32 8
  %23 = ptrtoint ptr %heads_cnt to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %heads_cnt, align 8
  %free_heads_cnt = getelementptr inbounds %struct.xsk_buff_pool, ptr %call.i.i, i32 0, i32 18
  %24 = ptrtoint ptr %free_heads_cnt to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %22, ptr %free_heads_cnt, align 8
  %headroom = getelementptr inbounds %struct.xdp_umem, ptr %umem, i32 0, i32 2
  %25 = ptrtoint ptr %headroom to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %headroom, align 8
  %headroom14 = getelementptr inbounds %struct.xsk_buff_pool, ptr %call.i.i, i32 0, i32 19
  %27 = ptrtoint ptr %headroom14 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %headroom14, align 4
  %chunk_size16 = getelementptr inbounds %struct.xsk_buff_pool, ptr %call.i.i, i32 0, i32 20
  %28 = ptrtoint ptr %chunk_size16 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %16, ptr %chunk_size16, align 16
  %29 = tail call i32 @llvm.cttz.i32(i32 %16, i1 true), !range !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %iszero = icmp eq i32 %16, 0
  %sub18 = select i1 %iszero, i32 -1, i32 %29
  %chunk_shift = getelementptr inbounds %struct.xsk_buff_pool, ptr %call.i.i, i32 0, i32 21
  %30 = ptrtoint ptr %chunk_shift to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub18, ptr %chunk_shift, align 4
  %unaligned20 = getelementptr inbounds %struct.xsk_buff_pool, ptr %call.i.i, i32 0, i32 26
  %31 = ptrtoint ptr %unaligned20 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %2, ptr %unaligned20, align 1
  %sub24 = add i32 %16, -256
  %sub25 = sub i32 %sub24, %26
  %frame_len = getelementptr inbounds %struct.xsk_buff_pool, ptr %call.i.i, i32 0, i32 22
  %32 = ptrtoint ptr %frame_len to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub25, ptr %frame_len, align 8
  %umem26 = getelementptr inbounds %struct.xsk_buff_pool, ptr %call.i.i, i32 0, i32 5
  %33 = ptrtoint ptr %umem26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %umem, ptr %umem26, align 64
  %34 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %umem, align 8
  %addrs27 = getelementptr inbounds %struct.xsk_buff_pool, ptr %call.i.i, i32 0, i32 27
  %36 = ptrtoint ptr %addrs27 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %addrs27, align 64
  %free_list = getelementptr inbounds %struct.xsk_buff_pool, ptr %call.i.i, i32 0, i32 7
  %37 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %free_list, ptr %free_list, align 4
  %prev.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %call.i.i, i32 0, i32 7, i32 1
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %free_list, ptr %prev.i, align 4
  %xsk_tx_list = getelementptr inbounds %struct.xsk_buff_pool, ptr %call.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %xsk_tx_list to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %xsk_tx_list, ptr %xsk_tx_list, align 4
  %prev.i105 = getelementptr inbounds %struct.xsk_buff_pool, ptr %call.i.i, i32 0, i32 2, i32 1
  %40 = ptrtoint ptr %prev.i105 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %xsk_tx_list, ptr %prev.i105, align 4
  %xsk_tx_list_lock = getelementptr inbounds %struct.xsk_buff_pool, ptr %call.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %xsk_tx_list_lock, ptr noundef nonnull @.str, ptr noundef nonnull @xp_create_and_assign_umem.__key, i16 noundef signext 3) #12
  %cq_lock = getelementptr inbounds %struct.xsk_buff_pool, ptr %call.i.i, i32 0, i32 28
  tail call void @__raw_spin_lock_init(ptr noundef %cq_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @xp_create_and_assign_umem.__key.1, i16 noundef signext 3) #12
  %users = getelementptr inbounds %struct.xsk_buff_pool, ptr %call.i.i, i32 0, i32 4
  %call.i.i.i106 = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #12
  %41 = ptrtoint ptr %users to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 1, ptr %users, align 4
  %fq_tmp = getelementptr inbounds %struct.xdp_sock, ptr %xs, i32 0, i32 19
  %42 = ptrtoint ptr %fq_tmp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fq_tmp, align 8
  %fq = getelementptr inbounds %struct.xsk_buff_pool, ptr %call.i.i, i32 0, i32 10
  %44 = ptrtoint ptr %fq to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %fq, align 128
  %cq_tmp = getelementptr inbounds %struct.xdp_sock, ptr %xs, i32 0, i32 20
  %45 = ptrtoint ptr %cq_tmp to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cq_tmp, align 4
  %cq = getelementptr inbounds %struct.xsk_buff_pool, ptr %call.i.i, i32 0, i32 11
  %47 = ptrtoint ptr %cq to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %cq, align 4
  %48 = ptrtoint ptr %free_heads_cnt to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %free_heads_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp111.not = icmp eq i32 %49, 0
  br i1 %cmp111.not, label %if.end10.cleanup_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end10.for.body_crit_edge
  %i.0112 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end10.for.body_crit_edge ]
  %50 = ptrtoint ptr %heads to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %heads, align 4
  %arrayidx = getelementptr %struct.xdp_buff_xsk, ptr %51, i32 %i.0112
  %pool36 = getelementptr %struct.xdp_buff_xsk, ptr %51, i32 %i.0112, i32 3
  %52 = ptrtoint ptr %pool36 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i.i, ptr %pool36, align 4
  %53 = ptrtoint ptr %chunk_size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %chunk_size, align 4
  %55 = ptrtoint ptr %headroom to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %headroom, align 8
  %sub39 = sub i32 %54, %56
  %frame_sz = getelementptr inbounds %struct.xdp_buff, ptr %arrayidx, i32 0, i32 6
  %57 = ptrtoint ptr %frame_sz to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %sub39, ptr %frame_sz, align 8
  %free_list_node = getelementptr %struct.xdp_buff_xsk, ptr %51, i32 %i.0112, i32 5
  %58 = ptrtoint ptr %free_list_node to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %free_list_node, ptr %free_list_node, align 4
  %prev.i107 = getelementptr %struct.xdp_buff_xsk, ptr %51, i32 %i.0112, i32 5, i32 1
  %59 = ptrtoint ptr %prev.i107 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %free_list_node, ptr %prev.i107, align 4
  %60 = ptrtoint ptr %unaligned20 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %unaligned20, align 1, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool41.not = icmp eq i8 %61, 0
  br i1 %tobool41.not, label %if.else, label %if.then42

if.then42:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx43 = getelementptr %struct.xsk_buff_pool, ptr %call.i.i, i32 0, i32 29, i32 %i.0112
  %62 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %arrayidx, ptr %arrayidx43, align 4
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %chunk_size16 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %chunk_size16, align 16
  %mul = mul i32 %64, %i.0112
  %conv45 = zext i32 %mul to i64
  %orig_addr.i = getelementptr %struct.xdp_buff_xsk, ptr %51, i32 %i.0112, i32 4
  %65 = ptrtoint ptr %orig_addr.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %conv45, ptr %orig_addr.i, align 8
  %66 = ptrtoint ptr %addrs27 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %addrs27, align 64
  %add.ptr.i = getelementptr i8, ptr %67, i32 %mul
  %68 = ptrtoint ptr %headroom14 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %headroom14, align 4
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %69
  %data_hard_start.i = getelementptr inbounds %struct.xdp_buff, ptr %arrayidx, i32 0, i32 3
  %70 = ptrtoint ptr %data_hard_start.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %add.ptr1.i, ptr %data_hard_start.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then42
  %inc = add nuw i32 %i.0112, 1
  %71 = ptrtoint ptr %free_heads_cnt to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %free_heads_cnt, align 8
  %cmp = icmp ult i32 %inc, %72
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end.i:                                         ; preds = %kvcalloc.exit.if.end.i_crit_edge, %kvcalloc.exit.thread
  %heads.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %call.i.i, i32 0, i32 13
  %73 = ptrtoint ptr %heads.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %heads.i, align 4
  tail call void @kvfree(ptr noundef %74) #12
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %for.inc.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %cond.end.cleanup_crit_edge ], [ null, %if.end.i ], [ %call.i.i, %if.end10.cleanup_crit_edge ], [ %call.i.i, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xp_set_rxq_info(ptr nocapture noundef readonly %pool, ptr noundef %rxq) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %heads_cnt = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 8
  %0 = ptrtoint ptr %heads_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %heads_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5.not = icmp eq i32 %1, 0
  br i1 %cmp5.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %heads = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.06 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %heads to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %heads, align 4
  %rxq1 = getelementptr %struct.xdp_buff_xsk, ptr %3, i32 %i.06, i32 0, i32 4
  %4 = ptrtoint ptr %rxq1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %rxq, ptr %rxq1, align 8
  %inc = add nuw i32 %i.06, 1
  %5 = ptrtoint ptr %heads_cnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %heads_cnt, align 8
  %cmp = icmp ult i32 %inc, %6
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xp_assign_dev(ptr noundef %pool, ptr noundef %netdev, i16 noundef zeroext %queue_id, i16 noundef zeroext %flags) local_unnamed_addr #0 align 64 {
entry:
  %bpf = alloca %struct.netdev_bpf, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bpf) #12
  %0 = getelementptr inbounds %struct.netdev_bpf, ptr %bpf, i32 0, i32 1
  %1 = getelementptr inbounds %struct.netdev_bpf, ptr %bpf, i32 0, i32 1, i32 0, i32 1
  %2 = call ptr @memset(ptr %bpf, i32 255, i32 16)
  %call = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b150 = load i1, ptr @xp_assign_dev.__already_done, align 1
  br i1 %.b150, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !57

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @xp_assign_dev.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 135, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 135) #12
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %conv = zext i16 %flags to i32
  %and = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  %and40 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  %3 = and i32 %conv, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %.not = icmp eq i32 %3, 6
  br i1 %.not, label %if.end29.cleanup_crit_edge, label %if.end48

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end48:                                         ; preds = %if.end29
  %call49 = tail call ptr @xsk_get_pool_from_qid(ptr noundef %netdev, i16 noundef zeroext %queue_id) #12
  %tobool50.not = icmp eq ptr %call49, null
  br i1 %tobool50.not, label %if.end52, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end52:                                         ; preds = %if.end48
  %netdev53 = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 1
  %4 = ptrtoint ptr %netdev53 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %netdev, ptr %netdev53, align 4
  %queue_id54 = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 9
  %5 = ptrtoint ptr %queue_id54 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %queue_id, ptr %queue_id54, align 4
  %call55 = tail call i32 @xsk_reg_pool_at_qid(ptr noundef %netdev, ptr noundef %pool, i16 noundef zeroext %queue_id) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end58:                                         ; preds = %if.end52
  %and60 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end58.if.end63_crit_edge, label %if.then62

if.end58.if.end63_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  %uses_need_wakeup = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 24
  %6 = ptrtoint ptr %uses_need_wakeup to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %uses_need_wakeup, align 1
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end58.if.end63_crit_edge
  %cached_need_wakeup = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 23
  %7 = ptrtoint ptr %cached_need_wakeup to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %cached_need_wakeup, align 4
  %tobool.not.i = icmp eq ptr %netdev, null
  br i1 %tobool.not.i, label %if.end63.dev_hold.exit_crit_edge, label %do.body1.i

if.end63.dev_hold.exit_crit_edge:                 ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_hold.exit

do.body1.i:                                       ; preds = %if.end63
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !58
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 118
  %9 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcpu_refcnt.i, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !43) #12
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %17, %11
  %18 = inttoptr i32 %add.i to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %add13.i = add i32 %20, 1
  store i32 %add13.i, ptr %18, align 4
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !59
  %and.i.i.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !54

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #12, !srcloc !60
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %do.end30.i, %if.end63.dev_hold.exit_crit_edge
  br i1 %tobool41.not, label %if.end66, label %dev_hold.exit.cleanup_crit_edge

dev_hold.exit.cleanup_crit_edge:                  ; preds = %dev_hold.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end66:                                         ; preds = %dev_hold.exit
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 16
  %22 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %netdev_ops, align 8
  %ndo_bpf = getelementptr inbounds %struct.net_device_ops, ptr %23, i32 0, i32 76
  %24 = ptrtoint ptr %ndo_bpf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ndo_bpf, align 4
  %tobool67.not = icmp eq ptr %25, null
  br i1 %tobool67.not, label %if.end66.err_unreg_pool_crit_edge, label %lor.lhs.false

if.end66.err_unreg_pool_crit_edge:                ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_unreg_pool

lor.lhs.false:                                    ; preds = %if.end66
  %ndo_xsk_wakeup = getelementptr inbounds %struct.net_device_ops, ptr %23, i32 0, i32 79
  %26 = ptrtoint ptr %ndo_xsk_wakeup to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ndo_xsk_wakeup, align 4
  %tobool69.not = icmp eq ptr %27, null
  br i1 %tobool69.not, label %lor.lhs.false.err_unreg_pool_crit_edge, label %if.end71

lor.lhs.false.err_unreg_pool_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_unreg_pool

if.end71:                                         ; preds = %lor.lhs.false
  %28 = ptrtoint ptr %bpf to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 4, ptr %bpf, align 4
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %pool, ptr %0, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %queue_id, ptr %1, align 4
  %call76 = call i32 %25(ptr noundef %netdev, ptr noundef nonnull %bpf) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %if.end71.err_unreg_pool_crit_edge

if.end71.err_unreg_pool_crit_edge:                ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_unreg_pool

if.end79:                                         ; preds = %if.end71
  %dma_pages = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 12
  %31 = ptrtoint ptr %dma_pages to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dma_pages, align 8
  %tobool80.not = icmp eq ptr %32, null
  br i1 %tobool80.not, label %do.end94, label %if.end108

do.end94:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 181, i32 noundef 9, ptr noundef nonnull @.str.5) #12
  call fastcc void @xp_disable_drv_zc(ptr noundef %pool)
  br label %err_unreg_pool

if.end108:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  %umem = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 5
  %33 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %umem, align 64
  %zc = getelementptr inbounds %struct.xdp_umem, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %zc to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %zc, align 1
  br label %cleanup

err_unreg_pool:                                   ; preds = %do.end94, %if.end71.err_unreg_pool_crit_edge, %lor.lhs.false.err_unreg_pool_crit_edge, %if.end66.err_unreg_pool_crit_edge
  %err.0 = phi i32 [ %call76, %if.end71.err_unreg_pool_crit_edge ], [ -22, %do.end94 ], [ -95, %lor.lhs.false.err_unreg_pool_crit_edge ], [ -95, %if.end66.err_unreg_pool_crit_edge ]
  br i1 %tobool37.not, label %err_unreg_pool.cleanup_crit_edge, label %if.then113

err_unreg_pool.cleanup_crit_edge:                 ; preds = %err_unreg_pool
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then113:                                       ; preds = %err_unreg_pool
  call void @__sanitizer_cov_trace_pc() #14
  call void @xsk_clear_pool_at_qid(ptr noundef %netdev, i16 noundef zeroext %queue_id) #12
  call fastcc void @dev_put(ptr noundef %netdev)
  br label %cleanup

cleanup:                                          ; preds = %if.then113, %err_unreg_pool.cleanup_crit_edge, %if.end108, %dev_hold.exit.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %if.end29.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end108 ], [ -22, %if.end29.cleanup_crit_edge ], [ -16, %if.end48.cleanup_crit_edge ], [ %call55, %if.end52.cleanup_crit_edge ], [ 0, %dev_hold.exit.cleanup_crit_edge ], [ %err.0, %if.then113 ], [ 0, %err_unreg_pool.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bpf) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xsk_get_pool_from_qid(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xsk_reg_pool_at_qid(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xp_disable_drv_zc(ptr nocapture noundef readonly %pool) unnamed_addr #0 align 64 {
entry:
  %bpf = alloca %struct.netdev_bpf, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bpf) #12
  %0 = getelementptr inbounds %struct.netdev_bpf, ptr %bpf, i32 0, i32 1
  %1 = getelementptr inbounds %struct.netdev_bpf, ptr %bpf, i32 0, i32 1, i32 0, i32 1
  %2 = getelementptr inbounds i8, ptr %bpf, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 -1, ptr %2, align 4
  %call = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b79 = load i1, ptr @xp_disable_drv_zc.__already_done, align 1
  br i1 %.b79, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !57

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @xp_disable_drv_zc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 114, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 114) #12
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %umem = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 5
  %4 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %umem, align 64
  %zc = getelementptr inbounds %struct.xdp_umem, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %zc to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %zc, align 1, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool37.not = icmp eq i8 %7, 0
  br i1 %tobool37.not, label %if.end29.if.end72_crit_edge, label %if.then38

if.end29.if.end72_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.then38:                                        ; preds = %if.end29
  %8 = ptrtoint ptr %bpf to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %bpf, align 4
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %0, align 4
  %queue_id = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 9
  %10 = ptrtoint ptr %queue_id to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %queue_id, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %1, align 4
  %netdev = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 1
  %13 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 16
  %15 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev_ops, align 8
  %ndo_bpf = getelementptr inbounds %struct.net_device_ops, ptr %16, i32 0, i32 76
  %17 = ptrtoint ptr %ndo_bpf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ndo_bpf, align 4
  %call42 = call i32 %18(ptr noundef %14, ptr noundef nonnull %bpf) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then38.if.end72_crit_edge, label %do.end57

if.then38.if.end72_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

do.end57:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 124, i32 noundef 9, ptr noundef nonnull @.str.8) #12
  br label %if.end72

if.end72:                                         ; preds = %do.end57, %if.then38.if.end72_crit_edge, %if.end29.if.end72_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bpf) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xsk_clear_pool_at_qid(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dev_put(ptr noundef readonly %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %do.body1

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

do.body1:                                         ; preds = %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !58
  %pcpu_refcnt = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %1 = ptrtoint ptr %pcpu_refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_refcnt, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !43) #12
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %3
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add13 = add i32 %12, -1
  store i32 %add13, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !59
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool24.not, label %if.then28, label %do.body1.do.end30_crit_edge, !prof !54

do.body1.do.end30_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30

if.then28:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end30

do.end30:                                         ; preds = %if.then28, %do.body1.do.end30_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #12, !srcloc !60
  br label %if.end37

if.end37:                                         ; preds = %do.end30, %entry.if.end37_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xp_assign_dev_shared(ptr noundef %pool, ptr nocapture noundef readonly %umem, ptr noundef %dev, i16 noundef zeroext %queue_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fq = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 10
  %0 = ptrtoint ptr %fq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fq, align 128
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %cq = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 11
  %2 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cq, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %zc = getelementptr inbounds %struct.xdp_umem, ptr %umem, i32 0, i32 9
  %4 = ptrtoint ptr %zc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %zc, align 1, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  %conv = select i1 %tobool2.not, i16 2, i16 4
  %uses_need_wakeup = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 24
  %6 = ptrtoint ptr %uses_need_wakeup to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %uses_need_wakeup, align 1, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  %8 = or i16 %conv, 8
  %spec.select = select i1 %tobool3.not, i16 %conv, i16 %8
  %call = tail call i32 @xp_assign_dev(ptr noundef %pool, ptr noundef %dev, i16 noundef zeroext %queue_id, i16 noundef zeroext %spec.select)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xp_clear_dev(ptr nocapture noundef %pool) local_unnamed_addr #0 align 64 {
entry:
  %bpf.i = alloca %struct.netdev_bpf, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 1
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bpf.i) #12
  %2 = getelementptr inbounds %struct.netdev_bpf, ptr %bpf.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.netdev_bpf, ptr %bpf.i, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 -1, ptr %3, align 4
  %call.i = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end.if.end29.i_crit_edge

if.end.if.end29.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

land.rhs.i:                                       ; preds = %if.end
  %.b79.i = load i1, ptr @xp_disable_drv_zc.__already_done, align 1
  br i1 %.b79.i, label %land.rhs.i.if.end29.i_crit_edge, label %if.then.i, !prof !57

land.rhs.i.if.end29.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @xp_disable_drv_zc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 114, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 114) #12
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end29.i_crit_edge, %if.end.if.end29.i_crit_edge
  %umem.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 5
  %5 = ptrtoint ptr %umem.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %umem.i, align 64
  %zc.i = getelementptr inbounds %struct.xdp_umem, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %zc.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %zc.i, align 1, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool37.not.i = icmp eq i8 %8, 0
  br i1 %tobool37.not.i, label %if.end29.i.xp_disable_drv_zc.exit_crit_edge, label %if.then38.i

if.end29.i.xp_disable_drv_zc.exit_crit_edge:      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xp_disable_drv_zc.exit

if.then38.i:                                      ; preds = %if.end29.i
  %9 = ptrtoint ptr %bpf.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %bpf.i, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %2, align 4
  %queue_id.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 9
  %11 = ptrtoint ptr %queue_id.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %queue_id.i, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %3, align 4
  %14 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev_ops.i, align 8
  %ndo_bpf.i = getelementptr inbounds %struct.net_device_ops, ptr %17, i32 0, i32 76
  %18 = ptrtoint ptr %ndo_bpf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ndo_bpf.i, align 4
  %call42.i = call i32 %19(ptr noundef %15, ptr noundef nonnull %bpf.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %if.then38.i.xp_disable_drv_zc.exit_crit_edge, label %do.end57.i

if.then38.i.xp_disable_drv_zc.exit_crit_edge:     ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xp_disable_drv_zc.exit

do.end57.i:                                       ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 124, i32 noundef 9, ptr noundef nonnull @.str.8) #12
  br label %xp_disable_drv_zc.exit

xp_disable_drv_zc.exit:                           ; preds = %do.end57.i, %if.then38.i.xp_disable_drv_zc.exit_crit_edge, %if.end29.i.xp_disable_drv_zc.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bpf.i) #12
  %20 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev, align 4
  %queue_id = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 9
  %22 = ptrtoint ptr %queue_id to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %queue_id, align 4
  call void @xsk_clear_pool_at_qid(ptr noundef %21, i16 noundef zeroext %23) #12
  %24 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %netdev, align 4
  %tobool.not.i9 = icmp eq ptr %25, null
  br i1 %tobool.not.i9, label %xp_disable_drv_zc.exit.dev_put.exit_crit_edge, label %do.body1.i

xp_disable_drv_zc.exit.dev_put.exit_crit_edge:    ; preds = %xp_disable_drv_zc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_put.exit

do.body1.i:                                       ; preds = %xp_disable_drv_zc.exit
  %26 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !58
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 118
  %27 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pcpu_refcnt.i, align 4
  %29 = ptrtoint ptr %28 to i32
  %30 = call i32 @llvm.read_register.i32(metadata !43) #12
  %and.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %35, %29
  %36 = inttoptr i32 %add.i to ptr
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %add13.i = add i32 %38, -1
  store i32 %add13.i, ptr %36, align 4
  %39 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !59
  %and.i.i.i = and i32 %39, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !54

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @warn_bogus_irq_restore() #12
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %26) #12, !srcloc !60
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %xp_disable_drv_zc.exit.dev_put.exit_crit_edge
  %40 = ptrtoint ptr %netdev to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %netdev, align 4
  br label %return

return:                                           ; preds = %dev_put.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xp_get_pool(ptr noundef %pool) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %users = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #12, !srcloc !61
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !54

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !57

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users, i32 noundef %.sink.i.i.i) #12
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @xp_put_pool(ptr noundef %pool) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pool, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %users = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !62
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #12, !srcloc !63
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %do.body, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !57

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %users, i32 noundef 3) #12
  br label %return

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !64
  %work = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 6
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #12
  %1 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 6, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @xp_put_pool.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry5 = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry5, ptr %entry5, align 4
  %prev.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 6, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry5, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 6, i32 2
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @xp_release_deferred, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %work) #12
  br label %return

return:                                           ; preds = %do.body, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %do.body ], [ false, %entry.return_crit_edge ], [ false, %if.end5.i.i.i.return_crit_edge ], [ false, %if.then10.i.i.i ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xp_release_deferred(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -68
  tail call void @rtnl_lock() #12
  tail call void @xp_clear_dev(ptr noundef %add.ptr)
  tail call void @rtnl_unlock() #12
  %fq = getelementptr i8, ptr %work, i32 60
  %0 = ptrtoint ptr %fq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fq, align 128
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @xskq_destroy(ptr noundef nonnull %1) #12
  %2 = ptrtoint ptr %fq to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fq, align 128
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cq = getelementptr i8, ptr %work, i32 64
  %3 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cq, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @xskq_destroy(ptr noundef nonnull %4) #12
  %5 = ptrtoint ptr %cq to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %cq, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %umem = getelementptr i8, ptr %work, i32 -4
  %6 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %umem, align 64
  tail call void @xdp_put_umem(ptr noundef %7, i1 noundef zeroext false) #12
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %if.end7.xp_destroy.exit_crit_edge, label %if.end.i

if.end7.xp_destroy.exit_crit_edge:                ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %xp_destroy.exit

if.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %heads.i = getelementptr i8, ptr %work, i32 72
  %8 = ptrtoint ptr %heads.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %heads.i, align 4
  tail call void @kvfree(ptr noundef %9) #12
  tail call void @kvfree(ptr noundef nonnull %add.ptr) #12
  br label %xp_destroy.exit

xp_destroy.exit:                                  ; preds = %if.end.i, %if.end7.xp_destroy.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xp_dma_unmap(ptr nocapture noundef %pool, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_pages_cnt = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 17
  %0 = ptrtoint ptr %dma_pages_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_pages_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %umem.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 5
  %2 = ptrtoint ptr %umem.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %umem.i, align 64
  %xsk_dma_list.i = getelementptr inbounds %struct.xdp_umem, ptr %3, i32 0, i32 12
  %netdev3.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %.pn.in.i = phi ptr [ %xsk_dma_list.i, %if.end ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %xsk_dma_list.i
  br i1 %cmp.not.i, label %for.cond.i.do.end_crit_edge, label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i
  %netdev.i = getelementptr i8, ptr %.pn.i, i32 -8
  %5 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev.i, align 4
  %7 = ptrtoint ptr %netdev3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev3.i, align 4
  %cmp4.i = icmp eq ptr %6, %8
  br i1 %cmp4.i, label %xp_find_dma_map.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

xp_find_dma_map.exit:                             ; preds = %for.body.i
  %dma_map.0.le.i = getelementptr i8, ptr %.pn.i, i32 -16
  %tobool.not = icmp eq ptr %dma_map.0.le.i, null
  br i1 %tobool.not, label %xp_find_dma_map.exit.do.end_crit_edge, label %if.end19

xp_find_dma_map.exit.do.end_crit_edge:            ; preds = %xp_find_dma_map.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %xp_find_dma_map.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 338, i32 noundef 9, ptr noundef nonnull @.str.7) #12
  br label %cleanup

if.end19:                                         ; preds = %xp_find_dma_map.exit
  %users = getelementptr i8, ptr %.pn.i, i32 -4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !62
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #12
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #12, !srcloc !63
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end22, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i, !prof !57

if.end5.i.i.i.cleanup_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %users, i32 noundef 3) #12
  br label %cleanup

if.end22:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !64
  tail call fastcc void @__xp_dma_unmap(ptr noundef nonnull %dma_map.0.le.i, i32 noundef %attrs)
  %dma_pages = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 12
  %10 = ptrtoint ptr %dma_pages to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_pages, align 8
  tail call void @kvfree(ptr noundef %11) #12
  %12 = ptrtoint ptr %dma_pages_cnt to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %dma_pages_cnt, align 4
  %13 = ptrtoint ptr %pool to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %pool, align 128
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then10.i.i.i, %if.end5.i.i.i.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__xp_dma_unmap(ptr noundef %dma_map, i32 noundef %attrs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_pages_cnt = getelementptr inbounds %struct.xsk_dma_map, ptr %dma_map, i32 0, i32 5
  %0 = ptrtoint ptr %dma_pages_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_pages_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8.not = icmp eq i32 %1, 0
  br i1 %cmp8.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.xsk_dma_map, ptr %dma_map, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %dma_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_map, align 4
  %arrayidx = getelementptr i32, ptr %3, i32 %i.09
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %7, i32 noundef %5, i32 noundef 4096, i32 noundef 0, i32 noundef %attrs) #12
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.09, 1
  %9 = ptrtoint ptr %dma_pages_cnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma_pages_cnt, align 4
  %cmp = icmp ult i32 %inc, %10
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %list.i = getelementptr inbounds %struct.xsk_dma_map, ptr %dma_map, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.xp_destroy_dma_map.exit_crit_edge

for.end.xp_destroy_dma_map.exit_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %xp_destroy_dma_map.exit

if.end.i.i.i:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.xsk_dma_map, ptr %dma_map, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %xp_destroy_dma_map.exit

xp_destroy_dma_map.exit:                          ; preds = %if.end.i.i.i, %for.end.xp_destroy_dma_map.exit_crit_edge
  %17 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.xsk_dma_map, ptr %dma_map, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %dma_map to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dma_map, align 4
  tail call void @kvfree(ptr noundef %20) #12
  tail call void @kfree(ptr noundef %dma_map) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xp_dma_map(ptr nocapture noundef %pool, ptr noundef %dev, i32 noundef %attrs, ptr nocapture noundef readonly %pages, i32 noundef %nr_pages) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %umem.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 5
  %0 = ptrtoint ptr %umem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %umem.i, align 64
  %xsk_dma_list.i = getelementptr inbounds %struct.xdp_umem, ptr %1, i32 0, i32 12
  %netdev3.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %xsk_dma_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %xsk_dma_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.end4_crit_edge, label %for.body.i

for.cond.i.if.end4_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

for.body.i:                                       ; preds = %for.cond.i
  %netdev.i = getelementptr i8, ptr %.pn.i, i32 -8
  %3 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %netdev.i, align 4
  %5 = ptrtoint ptr %netdev3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev3.i, align 4
  %cmp4.i = icmp eq ptr %4, %6
  br i1 %cmp4.i, label %xp_find_dma_map.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

xp_find_dma_map.exit:                             ; preds = %for.body.i
  %dma_map.0.le.i = getelementptr i8, ptr %.pn.i, i32 -16
  %tobool.not = icmp eq ptr %dma_map.0.le.i, null
  br i1 %tobool.not, label %xp_find_dma_map.exit.if.end4_crit_edge, label %if.then

xp_find_dma_map.exit.if.end4_crit_edge:           ; preds = %xp_find_dma_map.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then:                                          ; preds = %xp_find_dma_map.exit
  %dma_pages_cnt.i = getelementptr i8, ptr %.pn.i, i32 8
  %7 = ptrtoint ptr %dma_pages_cnt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma_pages_cnt.i, align 4
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 4) #12
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %kvcalloc.exit.thread.i, label %kvcalloc.exit.i, !prof !54

kvcalloc.exit.thread.i:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %dma_pages21.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 12
  %11 = ptrtoint ptr %dma_pages21.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %dma_pages21.i, align 8
  br label %cleanup

kvcalloc.exit.i:                                  ; preds = %if.then
  %12 = extractvalue { i32, i1 } %9, 0
  %call.i.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %12, i32 noundef 3520, i32 noundef -1) #15
  %dma_pages.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 12
  %13 = ptrtoint ptr %dma_pages.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i.i.i.i, ptr %dma_pages.i, align 8
  %tobool.not.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i, label %kvcalloc.exit.i.cleanup_crit_edge, label %if.end

kvcalloc.exit.i.cleanup_crit_edge:                ; preds = %kvcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %kvcalloc.exit.i
  %dev.i = getelementptr i8, ptr %.pn.i, i32 -12
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %16 = ptrtoint ptr %pool to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %pool, align 128
  %17 = ptrtoint ptr %dma_pages_cnt.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma_pages_cnt.i, align 4
  %dma_pages_cnt4.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 17
  %19 = ptrtoint ptr %dma_pages_cnt4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %dma_pages_cnt4.i, align 4
  %dma_need_sync.i = getelementptr i8, ptr %.pn.i, i32 12
  %20 = ptrtoint ptr %dma_need_sync.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dma_need_sync.i, align 4, !range !56
  %dma_need_sync6.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 25
  %22 = ptrtoint ptr %dma_need_sync6.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %dma_need_sync6.i, align 2
  %23 = ptrtoint ptr %dma_map.0.le.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dma_map.0.le.i, align 4
  %mul.i = shl i32 %18, 2
  %25 = call ptr @memcpy(ptr %call.i.i.i.i, ptr %24, i32 %mul.i)
  %users = getelementptr i8, ptr %.pn.i, i32 -4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #12
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #12, !srcloc !61
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !54

if.end.if.end15.sink.split.i.i.i_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %27 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %.not.i.i.i = icmp sgt i32 %27, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !57

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.cleanup_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users, i32 noundef %.sink.i.i.i) #12
  br label %cleanup

if.end4:                                          ; preds = %xp_find_dma_map.exit.if.end4_crit_edge, %for.cond.i.if.end4_crit_edge
  %28 = ptrtoint ptr %netdev3.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %netdev3.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3520, i32 noundef 32) #16
  %tobool.not.i73 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i73, label %if.end4.cleanup_crit_edge, label %if.end.i74

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i74:                                       ; preds = %if.end4
  %31 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nr_pages, i32 4) #12
  %32 = extractvalue { i32, i1 } %31, 1
  br i1 %32, label %kvcalloc.exit.thread.i75, label %kvcalloc.exit.i77, !prof !54

kvcalloc.exit.thread.i75:                         ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %call7.i.i.i, align 8
  br label %if.then4.i

kvcalloc.exit.i77:                                ; preds = %if.end.i74
  %34 = extractvalue { i32, i1 } %31, 0
  %call.i.i.i.i76 = tail call noalias ptr @kvmalloc_node(i32 noundef %34, i32 noundef 3520, i32 noundef -1) #15
  %35 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i.i.i.i76, ptr %call7.i.i.i, align 8
  %tobool3.not.i = icmp eq ptr %call.i.i.i.i76, null
  br i1 %tobool3.not.i, label %kvcalloc.exit.i77.if.then4.i_crit_edge, label %if.end5.i

kvcalloc.exit.i77.if.then4.i_crit_edge:           ; preds = %kvcalloc.exit.i77
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4.i

if.then4.i:                                       ; preds = %kvcalloc.exit.i77.if.then4.i_crit_edge, %kvcalloc.exit.thread.i75
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

if.end5.i:                                        ; preds = %kvcalloc.exit.i77
  %netdev6.i = getelementptr inbounds %struct.xsk_dma_map, ptr %call7.i.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %netdev6.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %29, ptr %netdev6.i, align 8
  %dev7.i = getelementptr inbounds %struct.xsk_dma_map, ptr %call7.i.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %dev7.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %dev, ptr %dev7.i, align 4
  %dma_need_sync.i78 = getelementptr inbounds %struct.xsk_dma_map, ptr %call7.i.i.i, i32 0, i32 6
  %38 = ptrtoint ptr %dma_need_sync.i78 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %dma_need_sync.i78, align 4
  %dma_pages_cnt.i79 = getelementptr inbounds %struct.xsk_dma_map, ptr %call7.i.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %dma_pages_cnt.i79 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %nr_pages, ptr %dma_pages_cnt.i79, align 8
  %users.i = getelementptr inbounds %struct.xsk_dma_map, ptr %call7.i.i.i, i32 0, i32 3
  %call.i.i.i19.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #12
  %40 = ptrtoint ptr %users.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 1, ptr %users.i, align 4
  %list.i = getelementptr inbounds %struct.xsk_dma_map, ptr %call7.i.i.i, i32 0, i32 4
  %41 = ptrtoint ptr %xsk_dma_list.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %xsk_dma_list.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %xsk_dma_list.i, ptr noundef %42) #12
  br i1 %call.i.i.i, label %if.end.i.i20.i, label %if.end5.i.xp_create_dma_map.exit_crit_edge

if.end5.i.xp_create_dma_map.exit_crit_edge:       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xp_create_dma_map.exit

if.end.i.i20.i:                                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %list.i, ptr %prev1.i.i.i, align 4
  %44 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %42, ptr %list.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.xsk_dma_map, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %45 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %xsk_dma_list.i, ptr %prev3.i.i.i, align 4
  %46 = ptrtoint ptr %xsk_dma_list.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %list.i, ptr %xsk_dma_list.i, align 4
  br label %xp_create_dma_map.exit

xp_create_dma_map.exit:                           ; preds = %if.end.i.i20.i, %if.end5.i.xp_create_dma_map.exit_crit_edge
  %47 = ptrtoint ptr %dma_pages_cnt.i79 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dma_pages_cnt.i79, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp116.not = icmp eq i32 %48, 0
  br i1 %cmp116.not, label %for.end.thread, label %xp_create_dma_map.exit.for.body_crit_edge

xp_create_dma_map.exit.for.body_crit_edge:        ; preds = %xp_create_dma_map.exit
  br label %for.body

for.body:                                         ; preds = %if.end16.for.body_crit_edge, %xp_create_dma_map.exit.for.body_crit_edge
  %i.0117 = phi i32 [ %inc, %if.end16.for.body_crit_edge ], [ 0, %xp_create_dma_map.exit.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %pages, i32 %i.0117
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx, align 4
  %call9 = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %50, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef %attrs) #12
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %call9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9)
  %cmp.i.not = icmp eq i32 %call9, -1
  br i1 %cmp.i.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @__xp_dma_unmap(ptr noundef nonnull %call7.i.i.i, i32 noundef %attrs)
  br label %cleanup

if.end13:                                         ; preds = %for.body
  %call14 = tail call zeroext i1 @dma_need_sync(ptr noundef %dev, i32 noundef %call9) #12
  br i1 %call14, label %if.then15, label %if.end13.if.end16_crit_edge

if.end13.if.end16_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %dma_need_sync.i78 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %dma_need_sync.i78, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end13.if.end16_crit_edge
  %52 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call7.i.i.i, align 8
  %arrayidx17 = getelementptr i32, ptr %53, i32 %i.0117
  %54 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %call9, ptr %arrayidx17, align 4
  %inc = add nuw i32 %i.0117, 1
  %55 = ptrtoint ptr %dma_pages_cnt.i79 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dma_pages_cnt.i79, align 8
  %cmp = icmp ult i32 %inc, %56
  br i1 %cmp, label %if.end16.for.body_crit_edge, label %for.end

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end16
  %unaligned = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 26
  %57 = ptrtoint ptr %unaligned to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %unaligned, align 1, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool18.not = icmp eq i8 %58, 0
  br i1 %tobool18.not, label %for.end.for.cond20.preheader_crit_edge, label %if.then19

for.end.for.cond20.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond20.preheader

for.end.thread:                                   ; preds = %xp_create_dma_map.exit
  %unaligned124 = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 26
  %59 = ptrtoint ptr %unaligned124 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %unaligned124, align 1, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool18.not125 = icmp eq i8 %60, 0
  br i1 %tobool18.not125, label %for.end.thread.for.cond20.preheader_crit_edge, label %for.end.thread.for.body.i85.preheader_crit_edge

for.end.thread.for.body.i85.preheader_crit_edge:  ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i85.preheader

for.end.thread.for.cond20.preheader_crit_edge:    ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond20.preheader

for.cond20.preheader:                             ; preds = %for.end.thread.for.cond20.preheader_crit_edge, %for.end.for.cond20.preheader_crit_edge
  %heads_cnt = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 8
  %61 = ptrtoint ptr %heads_cnt to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %heads_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp21118.not = icmp eq i32 %62, 0
  br i1 %cmp21118.not, label %for.cond20.preheader.if.end28_crit_edge, label %for.body22.lr.ph

for.cond20.preheader.if.end28_crit_edge:          ; preds = %for.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

for.body22.lr.ph:                                 ; preds = %for.cond20.preheader
  %heads = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 13
  %headroom.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 19
  br label %for.body22

if.then19:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp22.not.i = icmp eq i32 %56, 1
  br i1 %cmp22.not.i, label %if.then19.if.end28_crit_edge, label %if.then19.for.body.i85.preheader_crit_edge

if.then19.for.body.i85.preheader_crit_edge:       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i85.preheader

if.then19.if.end28_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

for.body.i85.preheader:                           ; preds = %if.then19.for.body.i85.preheader_crit_edge, %for.end.thread.for.body.i85.preheader_crit_edge
  br label %for.body.i85

for.body.i85:                                     ; preds = %for.body.i85.for.body.i85_crit_edge, %for.body.i85.preheader
  %i.023.i = phi i32 [ %add2.i, %for.body.i85.for.body.i85_crit_edge ], [ 0, %for.body.i85.preheader ]
  %63 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call7.i.i.i, align 8
  %arrayidx.i = getelementptr i32, ptr %64, i32 %i.023.i
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %66, 4096
  %add2.i = add nuw i32 %i.023.i, 1
  %arrayidx3.i = getelementptr i32, ptr %64, i32 %add2.i
  %67 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %68)
  %cmp4.i83 = icmp eq i32 %add.i, %68
  %69 = and i32 %66, -2
  %masksel.i = zext i1 %cmp4.i83 to i32
  %storemerge.i = or i32 %69, %masksel.i
  %70 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %storemerge.i, ptr %arrayidx.i, align 4
  %71 = ptrtoint ptr %dma_pages_cnt.i79 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %dma_pages_cnt.i79, align 8
  %sub.i = add i32 %72, -1
  %cmp.i84 = icmp ult i32 %add2.i, %sub.i
  br i1 %cmp.i84, label %for.body.i85.for.body.i85_crit_edge, label %for.body.i85.if.end28_crit_edge

for.body.i85.if.end28_crit_edge:                  ; preds = %for.body.i85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

for.body.i85.for.body.i85_crit_edge:              ; preds = %for.body.i85
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i85

for.body22:                                       ; preds = %for.body22.for.body22_crit_edge, %for.body22.lr.ph
  %i.1119 = phi i32 [ 0, %for.body22.lr.ph ], [ %inc26, %for.body22.for.body22_crit_edge ]
  %73 = ptrtoint ptr %heads to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %heads, align 4
  %75 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %call7.i.i.i, align 8
  %orig_addr = getelementptr %struct.xdp_buff_xsk, ptr %74, i32 %i.1119, i32 4
  %77 = ptrtoint ptr %orig_addr to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %orig_addr, align 8
  %shr.i = lshr i64 %78, 12
  %idxprom.i = trunc i64 %shr.i to i32
  %arrayidx.i86 = getelementptr i32, ptr %76, i32 %idxprom.i
  %79 = ptrtoint ptr %arrayidx.i86 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.i86, align 4
  %81 = and i32 %80, -2
  %82 = trunc i64 %78 to i32
  %83 = and i32 %82, 4095
  %conv2.i = add i32 %81, %83
  %frame_dma.i = getelementptr %struct.xdp_buff_xsk, ptr %74, i32 %i.1119, i32 2
  %84 = ptrtoint ptr %frame_dma.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %conv2.i, ptr %frame_dma.i, align 8
  %85 = ptrtoint ptr %headroom.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %headroom.i, align 4
  %add4.i = add i32 %86, 256
  %add5.i = add i32 %add4.i, %conv2.i
  %dma.i = getelementptr %struct.xdp_buff_xsk, ptr %74, i32 %i.1119, i32 1
  %87 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %add5.i, ptr %dma.i, align 4
  %inc26 = add nuw i32 %i.1119, 1
  %88 = ptrtoint ptr %heads_cnt to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %heads_cnt, align 8
  %cmp21 = icmp ult i32 %inc26, %89
  br i1 %cmp21, label %for.body22.for.body22_crit_edge, label %for.body22.if.end28_crit_edge

for.body22.if.end28_crit_edge:                    ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

for.body22.for.body22_crit_edge:                  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body22

if.end28:                                         ; preds = %for.body22.if.end28_crit_edge, %for.body.i85.if.end28_crit_edge, %if.then19.if.end28_crit_edge, %for.cond20.preheader.if.end28_crit_edge
  %90 = ptrtoint ptr %dma_pages_cnt.i79 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %dma_pages_cnt.i79, align 8
  %92 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %91, i32 4) #12
  %93 = extractvalue { i32, i1 } %92, 1
  br i1 %93, label %kvcalloc.exit.thread.i89, label %kvcalloc.exit.i93, !prof !54

kvcalloc.exit.thread.i89:                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %dma_pages21.i88 = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 12
  %94 = ptrtoint ptr %dma_pages21.i88 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %dma_pages21.i88, align 8
  br label %if.then31

kvcalloc.exit.i93:                                ; preds = %if.end28
  %95 = extractvalue { i32, i1 } %92, 0
  %call.i.i.i.i90 = tail call noalias ptr @kvmalloc_node(i32 noundef %95, i32 noundef 3520, i32 noundef -1) #15
  %dma_pages.i91 = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 12
  %96 = ptrtoint ptr %dma_pages.i91 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call.i.i.i.i90, ptr %dma_pages.i91, align 8
  %tobool.not.i92 = icmp eq ptr %call.i.i.i.i90, null
  br i1 %tobool.not.i92, label %kvcalloc.exit.i93.if.then31_crit_edge, label %xp_init_dma_info.exit101

kvcalloc.exit.i93.if.then31_crit_edge:            ; preds = %kvcalloc.exit.i93
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then31

xp_init_dma_info.exit101:                         ; preds = %kvcalloc.exit.i93
  call void @__sanitizer_cov_trace_pc() #14
  %97 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev7.i, align 4
  %99 = ptrtoint ptr %pool to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %98, ptr %pool, align 128
  %100 = ptrtoint ptr %dma_pages_cnt.i79 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %dma_pages_cnt.i79, align 8
  %dma_pages_cnt4.i95 = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 17
  %102 = ptrtoint ptr %dma_pages_cnt4.i95 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %dma_pages_cnt4.i95, align 4
  %103 = ptrtoint ptr %dma_need_sync.i78 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %dma_need_sync.i78, align 4, !range !56
  %dma_need_sync6.i97 = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 25
  %105 = ptrtoint ptr %dma_need_sync6.i97 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %104, ptr %dma_need_sync6.i97, align 2
  %106 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %call7.i.i.i, align 8
  %mul.i98 = shl i32 %101, 2
  %108 = call ptr @memcpy(ptr %call.i.i.i.i90, ptr %107, i32 %mul.i98)
  br label %cleanup

if.then31:                                        ; preds = %kvcalloc.exit.i93.if.then31_crit_edge, %kvcalloc.exit.thread.i89
  tail call fastcc void @__xp_dma_unmap(ptr noundef nonnull %call7.i.i.i, i32 noundef %attrs)
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %xp_init_dma_info.exit101, %if.then12, %if.then4.i, %if.end4.cleanup_crit_edge, %if.end15.sink.split.i.i.i, %if.else.i.i.i.cleanup_crit_edge, %kvcalloc.exit.i.cleanup_crit_edge, %kvcalloc.exit.thread.i
  %retval.0 = phi i32 [ -12, %if.then12 ], [ -12, %if.then31 ], [ 0, %xp_init_dma_info.exit101 ], [ 0, %if.else.i.i.i.cleanup_crit_edge ], [ 0, %if.end15.sink.split.i.i.i ], [ -12, %kvcalloc.exit.i.cleanup_crit_edge ], [ -12, %kvcalloc.exit.thread.i ], [ -12, %if.then4.i ], [ -12, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dma_need_sync(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xp_alloc(ptr nocapture noundef %pool) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %free_list_cnt = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 16
  %0 = ptrtoint ptr %free_list_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %free_list_cnt, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %free_heads_cnt.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 18
  %2 = ptrtoint ptr %free_heads_cnt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %free_heads_cnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %for.cond.preheader.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.then
  %fq.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 10
  %unaligned.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 26
  %addrs_cnt.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 15
  %chunk_size.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 20
  %dma_pages_cnt.i.i.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 17
  %dma_pages.i.i.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 12
  %chunk_mask.i.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 14
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.then9.i, %for.cond.preheader.i
  %4 = ptrtoint ptr %fq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fq.i, align 128
  %cached_prod.i.i = getelementptr inbounds %struct.xsk_queue, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %cached_prod.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cached_prod.i.i, align 8
  %cached_cons.i.i = getelementptr inbounds %struct.xsk_queue, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %cached_cons.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cached_cons.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.i.i = icmp eq i32 %7, %9
  br i1 %cmp.i.i, label %if.then.i.i, label %for.cond.i.if.end.i.i_crit_edge

for.cond.i.if.end.i.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !65
  %10 = ptrtoint ptr %cached_cons.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cached_cons.i.i, align 4
  %ring.i.i.i.i = getelementptr inbounds %struct.xsk_queue, ptr %5, i32 0, i32 4
  %12 = ptrtoint ptr %ring.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ring.i.i.i.i, align 8
  %consumer.i.i.i.i = getelementptr inbounds %struct.xdp_ring, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %consumer.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 %11, ptr %consumer.i.i.i.i, align 128
  %15 = load ptr, ptr %ring.i.i.i.i, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !66
  %18 = ptrtoint ptr %cached_prod.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %cached_prod.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.cond.i.if.end.i.i_crit_edge
  %19 = ptrtoint ptr %cached_cons.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cached_cons.i.i, align 4
  %21 = ptrtoint ptr %cached_prod.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cached_prod.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp.not.i.i.i = icmp eq i32 %20, %22
  br i1 %cmp.not.i.i.i, label %if.then1.i, label %if.end3.i

if.then1.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %fq.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fq.i, align 128
  %queue_empty_descs.i = getelementptr inbounds %struct.xsk_queue, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %queue_empty_descs.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %queue_empty_descs.i, align 8
  %inc.i = add i64 %26, 1
  store i64 %inc.i, ptr %queue_empty_descs.i, align 8
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i.i
  %ring1.i.i.i.i = getelementptr inbounds %struct.xsk_queue, ptr %5, i32 0, i32 4
  %27 = ptrtoint ptr %ring1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ring1.i.i.i.i, align 8
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %5, align 8
  %and.i.i.i.i = and i32 %30, %20
  %arrayidx.i.i.i.i = getelementptr %struct.xdp_umem_ring, ptr %28, i32 0, i32 1, i32 %and.i.i.i.i
  %31 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx.i.i.i.i, align 8
  %33 = ptrtoint ptr %unaligned.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %unaligned.i, align 1, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.end3.i
  %and.i.i.i = and i64 %32, 281474976710655
  %35 = ptrtoint ptr %addrs_cnt.i.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %addrs_cnt.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i, i64 %36)
  %cmp.not.i.i = icmp ult i64 %and.i.i.i, %36
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %cond.true.i.if.then9.i_crit_edge

cond.true.i.if.then9.i_crit_edge:                 ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9.i

lor.lhs.false.i.i:                                ; preds = %cond.true.i
  %37 = ptrtoint ptr %chunk_size.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %chunk_size.i.i, align 16
  %conv.i.i = zext i32 %38 to i64
  %add.i.i = add nuw nsw i64 %and.i.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %36)
  %cmp2.i.i = icmp ugt i64 %add.i.i, %36
  br i1 %cmp2.i.i, label %lor.lhs.false.i.i.if.then9.i_crit_edge, label %lor.lhs.false4.i.i

lor.lhs.false.i.i.if.then9.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9.i

lor.lhs.false4.i.i:                               ; preds = %lor.lhs.false.i.i
  %and.i.i.i46.i = and i64 %32, 4095
  %add.i.i.i.i = add nuw nsw i64 %and.i.i.i46.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4097, i64 %add.i.i.i.i)
  %cmp.i.i.i.i = icmp ult i64 %add.i.i.i.i, 4097
  br i1 %cmp.i.i.i.i, label %lor.lhs.false4.i.i.if.then16.i_crit_edge, label %if.end.i.i.i.i, !prof !57

lor.lhs.false4.i.i.if.then16.i_crit_edge:         ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16.i

if.end.i.i.i.i:                                   ; preds = %lor.lhs.false4.i.i
  %39 = ptrtoint ptr %dma_pages_cnt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dma_pages_cnt.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool5.not.i.i.i.i = icmp eq i32 %40, 0
  br i1 %tobool5.not.i.i.i.i, label %if.end.i.i.i.i.if.then16.i_crit_edge, label %cond.end.i

if.end.i.i.i.i.if.then16.i_crit_edge:             ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16.i

cond.false.i:                                     ; preds = %if.end3.i
  %41 = ptrtoint ptr %chunk_mask.i.i.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %chunk_mask.i.i.i, align 16
  %and.i.i48.i = and i64 %42, %32
  %43 = ptrtoint ptr %addrs_cnt.i.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %addrs_cnt.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i48.i, i64 %44)
  %cmp.i50.i = icmp ult i64 %and.i.i48.i, %44
  br i1 %cmp.i50.i, label %if.else.i, label %cond.false.i.if.then9.i_crit_edge

cond.false.i.if.then9.i_crit_edge:                ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9.i

cond.end.i:                                       ; preds = %if.end.i.i.i.i
  %45 = ptrtoint ptr %dma_pages.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dma_pages.i.i.i.i, align 8
  %shr.i.i.i.i = lshr i64 %32, 12
  %idxprom.i.i.i.i = trunc i64 %shr.i.i.i.i to i32
  %arrayidx.i.i.i47.i = getelementptr i32, ptr %46, i32 %idxprom.i.i.i.i
  %47 = ptrtoint ptr %arrayidx.i.i.i47.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i.i.i47.i, align 4
  %49 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool9.not.i.i.i.not.i = icmp eq i32 %49, 0
  br i1 %tobool9.not.i.i.i.not.i, label %cond.end.i.if.then9.i_crit_edge, label %cond.end.i.if.then16.i_crit_edge

cond.end.i.if.then16.i_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16.i

cond.end.i.if.then9.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9.i

if.then9.i:                                       ; preds = %cond.end.i.if.then9.i_crit_edge, %cond.false.i.if.then9.i_crit_edge, %lor.lhs.false.i.i.if.then9.i_crit_edge, %cond.true.i.if.then9.i_crit_edge
  %50 = ptrtoint ptr %fq.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fq.i, align 128
  %invalid_descs.i = getelementptr inbounds %struct.xsk_queue, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %invalid_descs.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %invalid_descs.i, align 8
  %inc11.i = add i64 %53, 1
  store i64 %inc11.i, ptr %invalid_descs.i, align 8
  %54 = load ptr, ptr %fq.i, align 128
  %cached_cons.i51.i = getelementptr inbounds %struct.xsk_queue, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %cached_cons.i51.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cached_cons.i51.i, align 4
  %inc.i.i = add i32 %56, 1
  store i32 %inc.i.i, ptr %cached_cons.i51.i, align 4
  br label %for.cond.i

if.then16.i:                                      ; preds = %cond.end.i.if.then16.i_crit_edge, %if.end.i.i.i.i.if.then16.i_crit_edge, %lor.lhs.false4.i.i.if.then16.i_crit_edge
  %57 = ptrtoint ptr %free_heads_cnt.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %free_heads_cnt.i, align 8
  %dec.i = add i32 %58, -1
  store i32 %dec.i, ptr %free_heads_cnt.i, align 8
  %arrayidx.i = getelementptr %struct.xsk_buff_pool, ptr %pool, i32 0, i32 29, i32 %dec.i
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i, align 4
  %orig_addr.i.i = getelementptr inbounds %struct.xdp_buff_xsk, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %orig_addr.i.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %and.i.i.i, ptr %orig_addr.i.i, align 8
  %addrs.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 27
  %62 = ptrtoint ptr %addrs.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %addrs.i.i, align 64
  %idx.ext.i.i = trunc i64 %32 to i32
  %add.ptr.i.i = getelementptr i8, ptr %63, i32 %idx.ext.i.i
  %headroom.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 19
  %64 = ptrtoint ptr %headroom.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %headroom.i.i, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %65
  %data_hard_start.i.i = getelementptr inbounds %struct.xdp_buff, ptr %60, i32 0, i32 3
  %66 = ptrtoint ptr %data_hard_start.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %add.ptr1.i.i, ptr %data_hard_start.i.i, align 4
  %67 = ptrtoint ptr %dma_pages_cnt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dma_pages_cnt.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool18.not.i = icmp eq i32 %68, 0
  br i1 %tobool18.not.i, label %if.then16.i.__xp_alloc.exit_crit_edge, label %if.then19.i

if.then16.i.__xp_alloc.exit_crit_edge:            ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__xp_alloc.exit

if.then19.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #14
  %69 = ptrtoint ptr %dma_pages.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dma_pages.i.i.i.i, align 8
  %shr.i.i = lshr i64 %32, 12
  %idxprom.i.i = trunc i64 %shr.i.i to i32
  %arrayidx.i.i = getelementptr i32, ptr %70, i32 %idxprom.i.i
  %71 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.i.i, align 4
  %73 = and i32 %72, -2
  %74 = and i32 %idx.ext.i.i, 4095
  %conv2.i.i = add i32 %73, %74
  %frame_dma.i.i = getelementptr inbounds %struct.xdp_buff_xsk, ptr %60, i32 0, i32 2
  %75 = ptrtoint ptr %frame_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv2.i.i, ptr %frame_dma.i.i, align 8
  %76 = ptrtoint ptr %headroom.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %headroom.i.i, align 4
  %add4.i.i = add i32 %77, 256
  %add5.i.i = add i32 %add4.i.i, %conv2.i.i
  %dma.i.i = getelementptr inbounds %struct.xdp_buff_xsk, ptr %60, i32 0, i32 1
  %78 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %add5.i.i, ptr %dma.i.i, align 4
  br label %__xp_alloc.exit

if.else.i:                                        ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %heads.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 13
  %79 = ptrtoint ptr %heads.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %heads.i, align 4
  %chunk_shift.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 21
  %81 = ptrtoint ptr %chunk_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %chunk_shift.i.i, align 4
  %sh_prom.i.i = zext i32 %82 to i64
  %shr.i55.i = lshr i64 %and.i.i48.i, %sh_prom.i.i
  %conv.i56.i = trunc i64 %shr.i55.i to i32
  %arrayidx22.i = getelementptr %struct.xdp_buff_xsk, ptr %80, i32 %conv.i56.i
  br label %__xp_alloc.exit

__xp_alloc.exit:                                  ; preds = %if.else.i, %if.then19.i, %if.then16.i.__xp_alloc.exit_crit_edge
  %xskb.0.i = phi ptr [ %60, %if.then19.i ], [ %60, %if.then16.i.__xp_alloc.exit_crit_edge ], [ %arrayidx22.i, %if.else.i ]
  %83 = ptrtoint ptr %fq.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %fq.i, align 128
  %cached_cons.i57.i = getelementptr inbounds %struct.xsk_queue, ptr %84, i32 0, i32 3
  %85 = ptrtoint ptr %cached_cons.i57.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %cached_cons.i57.i, align 4
  %inc.i58.i = add i32 %86, 1
  store i32 %inc.i58.i, ptr %cached_cons.i57.i, align 4
  %tobool1.not = icmp eq ptr %xskb.0.i, null
  br i1 %tobool1.not, label %__xp_alloc.exit.cleanup_crit_edge, label %__xp_alloc.exit.if.end4_crit_edge

__xp_alloc.exit.if.end4_crit_edge:                ; preds = %__xp_alloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

__xp_alloc.exit.cleanup_crit_edge:                ; preds = %__xp_alloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %entry
  %dec = add i32 %1, -1
  %87 = ptrtoint ptr %free_list_cnt to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %dec, ptr %free_list_cnt, align 32
  %free_list = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 7
  %88 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %free_list, align 16
  %add.ptr = getelementptr i8, ptr %89, i32 -48
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %89) #12
  br i1 %call.i.i, label %if.end.i.i27, label %if.else.list_del_init.exit_crit_edge

if.else.list_del_init.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i27:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %prev.i.i, align 4
  %92 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %89, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %91, ptr %prev1.i.i.i, align 4
  %95 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %93, ptr %91, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i27, %if.else.list_del_init.exit_crit_edge
  %96 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %89, ptr %89, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %89, i32 0, i32 1
  %97 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %89, ptr %prev.i3.i, align 4
  br label %if.end4

if.end4:                                          ; preds = %list_del_init.exit, %__xp_alloc.exit.if.end4_crit_edge
  %xskb.0 = phi ptr [ %add.ptr, %list_del_init.exit ], [ %xskb.0.i, %__xp_alloc.exit.if.end4_crit_edge ]
  %data_hard_start = getelementptr inbounds %struct.xdp_buff, ptr %xskb.0, i32 0, i32 3
  %98 = ptrtoint ptr %data_hard_start to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %data_hard_start, align 4
  %add.ptr5 = getelementptr i8, ptr %99, i32 256
  %100 = ptrtoint ptr %xskb.0 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %add.ptr5, ptr %xskb.0, align 8
  %data_meta = getelementptr inbounds %struct.xdp_buff, ptr %xskb.0, i32 0, i32 2
  %101 = ptrtoint ptr %data_meta to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %add.ptr5, ptr %data_meta, align 8
  %dma_need_sync = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 25
  %102 = ptrtoint ptr %dma_need_sync to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %dma_need_sync, align 2, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool10.not = icmp eq i8 %103, 0
  br i1 %tobool10.not, label %if.end4.cleanup_crit_edge, label %if.then11

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then11:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %104 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pool, align 128
  %dma = getelementptr inbounds %struct.xdp_buff_xsk, ptr %xskb.0, i32 0, i32 1
  %106 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %dma, align 4
  %frame_len = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 22
  %108 = ptrtoint ptr %frame_len to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %frame_len, align 8
  tail call void @dma_sync_single_for_device(ptr noundef %105, i32 noundef %107, i32 noundef %109, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end4.cleanup_crit_edge, %__xp_alloc.exit.cleanup_crit_edge, %if.then1.i, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %__xp_alloc.exit.cleanup_crit_edge ], [ %xskb.0, %if.then11 ], [ %xskb.0, %if.end4.cleanup_crit_edge ], [ null, %if.then1.i ], [ null, %if.then.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xp_alloc_batch(ptr nocapture noundef %pool, ptr nocapture noundef writeonly %xdp, i32 noundef %max) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_need_sync = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 25
  %0 = ptrtoint ptr %dma_need_sync to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dma_need_sync, align 2, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !57

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call ptr @xp_alloc(ptr noundef %pool)
  %2 = ptrtoint ptr %xdp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %xdp, align 4
  %tobool3 = icmp ne ptr %call, null
  %lnot.ext7 = zext i1 %tobool3 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %free_list_cnt = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 16
  %3 = ptrtoint ptr %free_list_cnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %free_list_cnt, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool8.not = icmp eq i32 %4, 0
  br i1 %tobool8.not, label %if.end.if.end19_crit_edge, label %if.then15, !prof !57

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then15:                                        ; preds = %if.end
  %call16 = tail call fastcc i32 @xp_alloc_reused(ptr noundef %pool, ptr noundef %xdp, i32 noundef %max)
  call void @__sanitizer_cov_trace_cmp4(i32 %call16, i32 %max)
  %cmp = icmp eq i32 %call16, %max
  br i1 %cmp, label %if.then15.cleanup_crit_edge, label %if.end18

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end18:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  %sub = sub i32 %max, %call16
  %add.ptr = getelementptr ptr, ptr %xdp, i32 %call16
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end.if.end19_crit_edge
  %xdp.addr.0 = phi ptr [ %add.ptr, %if.end18 ], [ %xdp, %if.end.if.end19_crit_edge ]
  %max.addr.0 = phi i32 [ %sub, %if.end18 ], [ %max, %if.end.if.end19_crit_edge ]
  %nb_entries1.0 = phi i32 [ %call16, %if.end18 ], [ 0, %if.end.if.end19_crit_edge ]
  %free_heads_cnt.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 18
  %5 = ptrtoint ptr %free_heads_cnt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %free_heads_cnt.i, align 8
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 %max.addr.0) #12
  %fq.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 10
  %8 = ptrtoint ptr %fq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fq.i, align 128
  %cached_prod.i.i = getelementptr inbounds %struct.xsk_queue, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %cached_prod.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cached_prod.i.i, align 8
  %cached_cons.i.i = getelementptr inbounds %struct.xsk_queue, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %cached_cons.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cached_cons.i.i, align 4
  %sub.i.i = sub i32 %11, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %7)
  %cmp.not.i.i = icmp ult i32 %sub.i.i, %7
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end19.xskq_cons_nb_entries.exit.i_crit_edge

if.end19.xskq_cons_nb_entries.exit.i_crit_edge:   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %xskq_cons_nb_entries.exit.i

if.end.i.i:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %ring.i.i.i = getelementptr inbounds %struct.xsk_queue, ptr %9, i32 0, i32 4
  %14 = ptrtoint ptr %ring.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ring.i.i.i, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !66
  %18 = ptrtoint ptr %cached_prod.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %cached_prod.i.i, align 8
  %19 = ptrtoint ptr %cached_cons.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cached_cons.i.i, align 4
  %sub3.i.i = sub i32 %17, %20
  %21 = tail call i32 @llvm.umin.i32(i32 %sub3.i.i, i32 %7) #12
  br label %xskq_cons_nb_entries.exit.i

xskq_cons_nb_entries.exit.i:                      ; preds = %if.end.i.i, %if.end19.xskq_cons_nb_entries.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %21, %if.end.i.i ], [ %7, %if.end19.xskq_cons_nb_entries.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool.not89.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not89.i, label %xskq_cons_nb_entries.exit.i.if.then22_crit_edge, label %while.body.lr.ph.i

xskq_cons_nb_entries.exit.i.if.then22_crit_edge:  ; preds = %xskq_cons_nb_entries.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22

while.body.lr.ph.i:                               ; preds = %xskq_cons_nb_entries.exit.i
  %22 = ptrtoint ptr %fq.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fq.i, align 128
  %cached_cons3.i = getelementptr inbounds %struct.xsk_queue, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %cached_cons3.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cached_cons3.i, align 4
  %unaligned.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 26
  %addrs_cnt.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 15
  %chunk_size.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 20
  %dma_pages_cnt.i.i.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 17
  %dma_pages.i.i.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 12
  %addrs.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 27
  %headroom.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 19
  %chunk_mask.i.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 14
  %heads.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 13
  %chunk_shift.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 21
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dec95.in.i = phi i32 [ %retval.0.i.i, %while.body.lr.ph.i ], [ %dec95.i, %cleanup.i.while.body.i_crit_edge ]
  %nb_entries.093.i = phi i32 [ %retval.0.i.i, %while.body.lr.ph.i ], [ %nb_entries.1.i, %cleanup.i.while.body.i_crit_edge ]
  %cached_cons.092.i = phi i32 [ %25, %while.body.lr.ph.i ], [ %inc.i, %cleanup.i.while.body.i_crit_edge ]
  %xdp.addr.090.i = phi ptr [ %xdp.addr.0, %while.body.lr.ph.i ], [ %xdp.addr.1.i, %cleanup.i.while.body.i_crit_edge ]
  %dec95.i = add i32 %dec95.in.i, -1
  %26 = ptrtoint ptr %fq.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fq.i, align 128
  %inc.i = add i32 %cached_cons.092.i, 1
  %ring1.i.i = getelementptr inbounds %struct.xsk_queue, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ring1.i.i, align 8
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %27, align 8
  %and.i.i = and i32 %31, %cached_cons.092.i
  %arrayidx.i.i = getelementptr %struct.xdp_umem_ring, ptr %29, i32 0, i32 1, i32 %and.i.i
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx.i.i, align 8
  %34 = ptrtoint ptr %unaligned.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %unaligned.i, align 1, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool5.not.i = icmp eq i8 %35, 0
  br i1 %tobool5.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %while.body.i
  %and.i.i.i = and i64 %33, 281474976710655
  %36 = ptrtoint ptr %addrs_cnt.i.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %addrs_cnt.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i, i64 %37)
  %cmp.not.i63.i = icmp ult i64 %and.i.i.i, %37
  br i1 %cmp.not.i63.i, label %lor.lhs.false.i.i, label %cond.true.i.if.then14.i_crit_edge, !prof !67

cond.true.i.if.then14.i_crit_edge:                ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14.i

lor.lhs.false.i.i:                                ; preds = %cond.true.i
  %38 = ptrtoint ptr %chunk_size.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %chunk_size.i.i, align 16
  %conv.i.i = zext i32 %39 to i64
  %add.i.i = add nuw nsw i64 %and.i.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %37)
  %cmp2.i.i = icmp ugt i64 %add.i.i, %37
  br i1 %cmp2.i.i, label %lor.lhs.false.i.i.if.then14.i_crit_edge, label %lor.lhs.false4.i.i, !prof !68

lor.lhs.false.i.i.if.then14.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14.i

lor.lhs.false4.i.i:                               ; preds = %lor.lhs.false.i.i
  %and.i.i.i.i = and i64 %33, 4095
  %add.i.i.i.i = add nuw nsw i64 %and.i.i.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4097, i64 %add.i.i.i.i)
  %cmp.i.i.i.i = icmp ult i64 %add.i.i.i.i, 4097
  br i1 %cmp.i.i.i.i, label %lor.lhs.false4.i.i.if.then21.i_crit_edge, label %if.end.i.i.i.i, !prof !57

lor.lhs.false4.i.i.if.then21.i_crit_edge:         ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21.i

if.end.i.i.i.i:                                   ; preds = %lor.lhs.false4.i.i
  %40 = ptrtoint ptr %dma_pages_cnt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dma_pages_cnt.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool5.not.i.i.i.i = icmp eq i32 %41, 0
  br i1 %tobool5.not.i.i.i.i, label %if.end.i.i.i.i.if.then21.i_crit_edge, label %cond.end.i

if.end.i.i.i.i.if.then21.i_crit_edge:             ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21.i

cond.false.i:                                     ; preds = %while.body.i
  %42 = ptrtoint ptr %chunk_mask.i.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %chunk_mask.i.i.i, align 16
  %and.i.i65.i = and i64 %43, %33
  %44 = ptrtoint ptr %addrs_cnt.i.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %addrs_cnt.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i65.i, i64 %45)
  %cmp.i.i = icmp ult i64 %and.i.i65.i, %45
  br i1 %cmp.i.i, label %if.else.i, label %cond.false.i.if.then14.i_crit_edge, !prof !57

cond.false.i.if.then14.i_crit_edge:               ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14.i

cond.end.i:                                       ; preds = %if.end.i.i.i.i
  %46 = ptrtoint ptr %dma_pages.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dma_pages.i.i.i.i, align 8
  %shr.i.i.i.i = lshr i64 %33, 12
  %idxprom.i.i.i.i = trunc i64 %shr.i.i.i.i to i32
  %arrayidx.i.i.i.i = getelementptr i32, ptr %47, i32 %idxprom.i.i.i.i
  %48 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %50 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool9.not.i.i.i.not.i = icmp eq i32 %50, 0
  br i1 %tobool9.not.i.i.i.not.i, label %cond.end.i.if.then14.i_crit_edge, label %cond.end.i.if.then21.i_crit_edge, !prof !54

cond.end.i.if.then21.i_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21.i

cond.end.i.if.then14.i_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14.i

if.then14.i:                                      ; preds = %cond.end.i.if.then14.i_crit_edge, %cond.false.i.if.then14.i_crit_edge, %lor.lhs.false.i.i.if.then14.i_crit_edge, %cond.true.i.if.then14.i_crit_edge
  %invalid_descs.i = getelementptr inbounds %struct.xsk_queue, ptr %27, i32 0, i32 5
  %51 = ptrtoint ptr %invalid_descs.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %invalid_descs.i, align 8
  %inc16.i = add i64 %52, 1
  store i64 %inc16.i, ptr %invalid_descs.i, align 8
  %dec17.i = add i32 %nb_entries.093.i, -1
  br label %cleanup.i

if.then21.i:                                      ; preds = %cond.end.i.if.then21.i_crit_edge, %if.end.i.i.i.i.if.then21.i_crit_edge, %lor.lhs.false4.i.i.if.then21.i_crit_edge
  %53 = ptrtoint ptr %free_heads_cnt.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %free_heads_cnt.i, align 8
  %dec23.i = add i32 %54, -1
  store i32 %dec23.i, ptr %free_heads_cnt.i, align 8
  %arrayidx.i = getelementptr %struct.xsk_buff_pool, ptr %pool, i32 0, i32 29, i32 %dec23.i
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i, align 4
  %orig_addr.i.i = getelementptr inbounds %struct.xdp_buff_xsk, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %orig_addr.i.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %and.i.i.i, ptr %orig_addr.i.i, align 8
  %58 = ptrtoint ptr %addrs.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %addrs.i.i, align 64
  %idx.ext.i.i = trunc i64 %33 to i32
  %add.ptr.i.i = getelementptr i8, ptr %59, i32 %idx.ext.i.i
  %60 = ptrtoint ptr %headroom.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %headroom.i.i, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %61
  %data_hard_start.i.i = getelementptr inbounds %struct.xdp_buff, ptr %56, i32 0, i32 3
  %62 = ptrtoint ptr %data_hard_start.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %add.ptr1.i.i, ptr %data_hard_start.i.i, align 4
  %63 = ptrtoint ptr %dma_pages_cnt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dma_pages_cnt.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool24.not.i = icmp eq i32 %64, 0
  br i1 %tobool24.not.i, label %if.then21.i.if.end29.i_crit_edge, label %if.then25.i

if.then21.i.if.end29.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

if.then25.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %dma_pages.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dma_pages.i.i.i.i, align 8
  %shr.i.i = lshr i64 %33, 12
  %idxprom.i.i = trunc i64 %shr.i.i to i32
  %arrayidx.i67.i = getelementptr i32, ptr %66, i32 %idxprom.i.i
  %67 = ptrtoint ptr %arrayidx.i67.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i67.i, align 4
  %69 = and i32 %68, -2
  %70 = and i32 %idx.ext.i.i, 4095
  %conv2.i.i = add i32 %69, %70
  %frame_dma.i.i = getelementptr inbounds %struct.xdp_buff_xsk, ptr %56, i32 0, i32 2
  %71 = ptrtoint ptr %frame_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %conv2.i.i, ptr %frame_dma.i.i, align 8
  %72 = ptrtoint ptr %headroom.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %headroom.i.i, align 4
  %add4.i.i = add i32 %73, 256
  %add5.i.i = add i32 %add4.i.i, %conv2.i.i
  %dma.i.i = getelementptr inbounds %struct.xdp_buff_xsk, ptr %56, i32 0, i32 1
  %74 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %add5.i.i, ptr %dma.i.i, align 4
  br label %if.end29.i

if.else.i:                                        ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %75 = ptrtoint ptr %heads.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %heads.i, align 4
  %77 = ptrtoint ptr %chunk_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %chunk_shift.i.i, align 4
  %sh_prom.i.i = zext i32 %78 to i64
  %shr.i71.i = lshr i64 %and.i.i65.i, %sh_prom.i.i
  %conv.i72.i = trunc i64 %shr.i71.i to i32
  %arrayidx28.i = getelementptr %struct.xdp_buff_xsk, ptr %76, i32 %conv.i72.i
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.else.i, %if.then25.i, %if.then21.i.if.end29.i_crit_edge
  %xskb.0.i = phi ptr [ %56, %if.then25.i ], [ %56, %if.then21.i.if.end29.i_crit_edge ], [ %arrayidx28.i, %if.else.i ]
  %79 = ptrtoint ptr %xdp.addr.090.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %xskb.0.i, ptr %xdp.addr.090.i, align 4
  %incdec.ptr.i = getelementptr ptr, ptr %xdp.addr.090.i, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end29.i, %if.then14.i
  %xdp.addr.1.i = phi ptr [ %xdp.addr.090.i, %if.then14.i ], [ %incdec.ptr.i, %if.end29.i ]
  %nb_entries.1.i = phi i32 [ %dec17.i, %if.then14.i ], [ %nb_entries.093.i, %if.end29.i ]
  %tobool.not.i = icmp eq i32 %dec95.i, 0
  br i1 %tobool.not.i, label %xp_alloc_new_from_fq.exit, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

xp_alloc_new_from_fq.exit:                        ; preds = %cleanup.i
  %80 = ptrtoint ptr %fq.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %fq.i, align 128
  %cached_cons.i73.i = getelementptr inbounds %struct.xsk_queue, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %cached_cons.i73.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %cached_cons.i73.i, align 4
  %add.i74.i = add i32 %83, %retval.0.i.i
  store i32 %add.i74.i, ptr %cached_cons.i73.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nb_entries.1.i)
  %tobool21.not = icmp eq i32 %nb_entries.1.i, 0
  br i1 %tobool21.not, label %xp_alloc_new_from_fq.exit.if.then22_crit_edge, label %xp_alloc_new_from_fq.exit.if.end23_crit_edge

xp_alloc_new_from_fq.exit.if.end23_crit_edge:     ; preds = %xp_alloc_new_from_fq.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

xp_alloc_new_from_fq.exit.if.then22_crit_edge:    ; preds = %xp_alloc_new_from_fq.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22

if.then22:                                        ; preds = %xp_alloc_new_from_fq.exit.if.then22_crit_edge, %xskq_cons_nb_entries.exit.i.if.then22_crit_edge
  %84 = ptrtoint ptr %fq.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %fq.i, align 128
  %queue_empty_descs = getelementptr inbounds %struct.xsk_queue, ptr %85, i32 0, i32 6
  %86 = ptrtoint ptr %queue_empty_descs to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %queue_empty_descs, align 8
  %inc = add i64 %87, 1
  store i64 %inc, ptr %queue_empty_descs, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %xp_alloc_new_from_fq.exit.if.end23_crit_edge
  %nb_entries.0.lcssa.i46 = phi i32 [ 0, %if.then22 ], [ %nb_entries.1.i, %xp_alloc_new_from_fq.exit.if.end23_crit_edge ]
  %add = add i32 %nb_entries.0.lcssa.i46, %nb_entries1.0
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then15.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %lnot.ext7, %if.then ], [ %add, %if.end23 ], [ %max, %if.then15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xp_alloc_reused(ptr nocapture noundef %pool, ptr nocapture noundef writeonly %xdp, i32 noundef %nb_entries) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %free_list_cnt = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 16
  %0 = ptrtoint ptr %free_list_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %free_list_cnt, align 32
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 %nb_entries)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not13 = icmp eq i32 %2, 0
  br i1 %tobool.not13, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %free_list = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %list_del_init.exit.while.body_crit_edge, %while.body.lr.ph
  %xdp.addr.015 = phi ptr [ %xdp, %while.body.lr.ph ], [ %incdec.ptr, %list_del_init.exit.while.body_crit_edge ]
  %i.014 = phi i32 [ %2, %while.body.lr.ph ], [ %dec, %list_del_init.exit.while.body_crit_edge ]
  %dec = add i32 %i.014, -1
  %3 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %free_list, align 16
  %add.ptr = getelementptr i8, ptr %4, i32 -48
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #12
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %4, ptr %4, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %4, ptr %prev.i3.i, align 4
  %13 = ptrtoint ptr %xdp.addr.015 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr, ptr %xdp.addr.015, align 4
  %incdec.ptr = getelementptr ptr, ptr %xdp.addr.015, i32 1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %list_del_init.exit.while.end_crit_edge, label %list_del_init.exit.while.body_crit_edge

list_del_init.exit.while.body_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

list_del_init.exit.while.end_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %list_del_init.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %14 = ptrtoint ptr %free_list_cnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %free_list_cnt, align 32
  %sub = sub i32 %15, %2
  store i32 %sub, ptr %free_list_cnt, align 32
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @xp_can_alloc(ptr nocapture noundef readonly %pool, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %free_list_cnt = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 16
  %0 = ptrtoint ptr %free_list_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %free_list_cnt, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %count)
  %cmp.not = icmp ult i32 %1, %count
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %fq = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 10
  %2 = ptrtoint ptr %fq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fq, align 128
  %sub = sub i32 %count, %1
  %cached_prod.i.i = getelementptr inbounds %struct.xsk_queue, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %cached_prod.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cached_prod.i.i, align 8
  %cached_cons.i.i = getelementptr inbounds %struct.xsk_queue, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %cached_cons.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cached_cons.i.i, align 4
  %sub.i.i = sub i32 %5, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %sub)
  %cmp.not.i.i = icmp ult i32 %sub.i.i, %sub
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end.xskq_cons_has_entries.exit_crit_edge

if.end.xskq_cons_has_entries.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %xskq_cons_has_entries.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %ring.i.i.i = getelementptr inbounds %struct.xsk_queue, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %ring.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ring.i.i.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !66
  %12 = ptrtoint ptr %cached_prod.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %cached_prod.i.i, align 8
  %13 = ptrtoint ptr %cached_cons.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cached_cons.i.i, align 4
  %sub3.i.i = sub i32 %11, %14
  %15 = tail call i32 @llvm.umin.i32(i32 %sub3.i.i, i32 %sub) #12
  br label %xskq_cons_has_entries.exit

xskq_cons_has_entries.exit:                       ; preds = %if.end.i.i, %if.end.xskq_cons_has_entries.exit_crit_edge
  %retval.0.i.i = phi i32 [ %15, %if.end.i.i ], [ %sub, %if.end.xskq_cons_has_entries.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %sub)
  %cmp.i = icmp uge i32 %retval.0.i.i, %sub
  br label %return

return:                                           ; preds = %xskq_cons_has_entries.exit, %entry.return_crit_edge
  %retval.0 = phi i1 [ %cmp.i, %xskq_cons_has_entries.exit ], [ true, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xp_free(ptr noundef %xskb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %free_list_node = getelementptr inbounds %struct.xdp_buff_xsk, ptr %xskb, i32 0, i32 5
  %0 = ptrtoint ptr %free_list_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %free_list_node, align 4
  %cmp.i.not = icmp eq ptr %1, %free_list_node
  br i1 %cmp.i.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %pool = getelementptr inbounds %struct.xdp_buff_xsk, ptr %xskb, i32 0, i32 3
  %2 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pool, align 4
  %free_list_cnt = getelementptr inbounds %struct.xsk_buff_pool, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %free_list_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %free_list_cnt, align 32
  %inc = add i32 %5, 1
  store i32 %inc, ptr %free_list_cnt, align 32
  %6 = load ptr, ptr %pool, align 4
  %free_list = getelementptr inbounds %struct.xsk_buff_pool, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %free_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %free_list_node, ptr noundef %free_list, ptr noundef %8) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %free_list_node, ptr %prev1.i.i, align 4
  %10 = ptrtoint ptr %free_list_node to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %free_list_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.xdp_buff_xsk, ptr %xskb, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %free_list, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %free_list_node, ptr %free_list, align 4
  br label %return

return:                                           ; preds = %if.end.i.i, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @xp_raw_get_data(ptr nocapture noundef readonly %pool, i64 noundef %addr) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %unaligned = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 26
  %0 = ptrtoint ptr %unaligned to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %unaligned, align 1, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %shr.i.i = lshr i64 %addr, 48
  %add.i = select i1 %tobool.not, i64 0, i64 %shr.i.i
  %cond.off0.v = add i64 %add.i, %addr
  %cond.off0 = trunc i64 %cond.off0.v to i32
  %addrs = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 27
  %2 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addrs, align 64
  %add.ptr = getelementptr i8, ptr %3, i32 %cond.off0
  ret ptr %add.ptr
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @xp_raw_get_dma(ptr nocapture noundef readonly %pool, i64 noundef %addr) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %unaligned = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 26
  %0 = ptrtoint ptr %unaligned to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %unaligned, align 1, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %and.i.i = and i64 %addr, 281474976710655
  %shr.i.i = lshr i64 %addr, 48
  %add.i = add nuw nsw i64 %and.i.i, %shr.i.i
  %addr.sink11 = select i1 %tobool.not, i64 %addr, i64 %add.i
  %extract.t7 = trunc i64 %addr.sink11 to i32
  %extract9 = lshr i64 %addr.sink11, 12
  %extract.t10 = trunc i64 %extract9 to i32
  %dma_pages = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 12
  %2 = ptrtoint ptr %dma_pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_pages, align 8
  %arrayidx = getelementptr i32, ptr %3, i32 %extract.t10
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = and i32 %5, -2
  %7 = and i32 %extract.t7, 4095
  %conv2 = add i32 %6, %7
  ret i32 %conv2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xp_dma_sync_for_cpu_slow(ptr nocapture noundef readonly %xskb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pool = getelementptr inbounds %struct.xdp_buff_xsk, ptr %xskb, i32 0, i32 3
  %0 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pool, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %dma = getelementptr inbounds %struct.xdp_buff_xsk, ptr %xskb, i32 0, i32 1
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma, align 4
  %frame_len = getelementptr inbounds %struct.xsk_buff_pool, ptr %1, i32 0, i32 22
  %6 = ptrtoint ptr %frame_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frame_len, align 8
  tail call void @dma_sync_single_for_cpu(ptr noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef 0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xp_dma_sync_for_device_slow(ptr nocapture noundef readonly %pool, i32 noundef %dma, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pool, align 128
  tail call void @dma_sync_single_for_device(ptr noundef %1, i32 noundef %dma, i32 noundef %size, i32 noundef 0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xskq_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_put_umem(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41}
!llvm.named.register.sp = !{!43}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @xp_create_and_assign_umem.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../net/xdp/xsk_buff_pool.c", i32 75, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @xp_create_and_assign_umem.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../net/xdp/xsk_buff_pool.c", i32 76, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__ksymtab_xp_set_rxq_info, !7, !"__ksymtab_xp_set_rxq_info", i1 false, i1 false}
!7 = !{!"../net/xdp/xsk_buff_pool.c", i32 107, i32 1}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../net/xdp/xsk_buff_pool.c", i32 135, i32 2}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/xdp/xsk_buff_pool.c", i32 181, i32 3}
!14 = !{ptr @xp_put_pool.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../net/xdp/xsk_buff_pool.c", i32 261, i32 3}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/xdp/xsk_buff_pool.c", i32 338, i32 3}
!19 = !{ptr @__ksymtab_xp_dma_unmap, !20, !"__ksymtab_xp_dma_unmap", i1 false, i1 false}
!20 = !{!"../net/xdp/xsk_buff_pool.c", i32 350, i32 1}
!21 = !{ptr @__ksymtab_xp_dma_map, !22, !"__ksymtab_xp_dma_map", i1 false, i1 false}
!22 = !{!"../net/xdp/xsk_buff_pool.c", i32 430, i32 1}
!23 = !{ptr @__ksymtab_xp_alloc, !24, !"__ksymtab_xp_alloc", i1 false, i1 false}
!24 = !{!"../net/xdp/xsk_buff_pool.c", i32 517, i32 1}
!25 = !{ptr @__ksymtab_xp_alloc_batch, !26, !"__ksymtab_xp_alloc_batch", i1 false, i1 false}
!26 = !{!"../net/xdp/xsk_buff_pool.c", i32 607, i32 1}
!27 = !{ptr @__ksymtab_xp_can_alloc, !28, !"__ksymtab_xp_can_alloc", i1 false, i1 false}
!28 = !{!"../net/xdp/xsk_buff_pool.c", i32 615, i32 1}
!29 = !{ptr @__ksymtab_xp_free, !30, !"__ksymtab_xp_free", i1 false, i1 false}
!30 = !{!"../net/xdp/xsk_buff_pool.c", i32 625, i32 1}
!31 = !{ptr @__ksymtab_xp_raw_get_data, !32, !"__ksymtab_xp_raw_get_data", i1 false, i1 false}
!32 = !{!"../net/xdp/xsk_buff_pool.c", i32 632, i32 1}
!33 = !{ptr @__ksymtab_xp_raw_get_dma, !34, !"__ksymtab_xp_raw_get_dma", i1 false, i1 false}
!34 = !{!"../net/xdp/xsk_buff_pool.c", i32 641, i32 1}
!35 = !{ptr @__ksymtab_xp_dma_sync_for_cpu_slow, !36, !"__ksymtab_xp_dma_sync_for_cpu_slow", i1 false, i1 false}
!36 = !{!"../net/xdp/xsk_buff_pool.c", i32 648, i32 1}
!37 = !{ptr @__ksymtab_xp_dma_sync_for_device_slow, !38, !"__ksymtab_xp_dma_sync_for_device_slow", i1 false, i1 false}
!38 = !{!"../net/xdp/xsk_buff_pool.c", i32 656, i32 1}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../net/xdp/xsk_buff_pool.c", i32 114, i32 2}
!41 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/xdp/xsk_buff_pool.c", i32 124, i32 4}
!43 = !{!"sp"}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{i64 2149359714}
!54 = !{!"branch_weights", i32 1, i32 2000}
!55 = !{i32 0, i32 33}
!56 = !{i8 0, i8 2}
!57 = !{!"branch_weights", i32 2000, i32 1}
!58 = !{i64 924983, i64 925044}
!59 = !{i64 927715}
!60 = !{i64 928000}
!61 = !{i64 2148532255, i64 2148532287, i64 2148532316, i64 2148532350, i64 2148532381, i64 2148532404}
!62 = !{i64 2148620256}
!63 = !{i64 2148534720, i64 2148534752, i64 2148534781, i64 2148534815, i64 2148534846, i64 2148534869}
!64 = !{i64 2149642309}
!65 = !{i64 2157408975}
!66 = !{i64 2157417480}
!67 = !{!"branch_weights", i32 2146410443, i32 1073205}
!68 = !{!"branch_weights", i32 1073205, i32 2146410443}
