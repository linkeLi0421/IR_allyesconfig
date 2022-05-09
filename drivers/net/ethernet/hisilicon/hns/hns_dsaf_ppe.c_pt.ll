; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/hisilicon/hns/hns_dsaf_ppe.c_pt.bc'
source_filename = "../drivers/net/ethernet/hisilicon/hns/hns_dsaf_ppe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.hns_ppe_cb = type { ptr, ptr, ptr, %struct.hns_ppe_hw_stats, i8, ptr, i32, [256 x i32], [10 x i32] }
%struct.hns_ppe_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.dsaf_device = type { ptr, %struct.hnae_ae_dev, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, [1 x ptr], [1 x ptr], [6 x ptr], ptr, [18 x %struct.dsaf_hw_stats], %struct.dsaf_int_stat, %struct.spinlock }
%struct.hnae_ae_dev = type { %struct.device, ptr, ptr, %struct.list_head, ptr, i32, [16 x i8], %struct.list_head, %struct.spinlock }
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
%struct.list_head = type { ptr, ptr }
%struct.dsaf_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [8 x i64], [8 x i64], i64 }
%struct.dsaf_int_stat = type { [6 x %struct.dsaf_int_xge_src], [6 x %struct.dsaf_int_ppe_src], [6 x %struct.dsaf_int_rocee_src], [1 x %struct.dsaf_int_tbl_src] }
%struct.dsaf_int_xge_src = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dsaf_int_ppe_src = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dsaf_int_rocee_src = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dsaf_int_tbl_src = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ppe_common_cb = type { ptr, ptr, ptr, i32, i8, i32, [0 x %struct.hns_ppe_cb] }
%struct.dsaf_misc_op = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@hns_ppe_wait_tx_fifo_clean._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 291, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"hns ppe tx fifo clean wait timeout, still has %u pkt.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hns_ppe_wait_tx_fifo_clean\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/ethernet/hisilicon/hns/hns_dsaf_ppe.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hns_ppe_wait_tx_fifo_clean._entry_ptr = internal global ptr @hns_ppe_wait_tx_fifo_clean._entry, section ".printk_index", align 4
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ppe%d_rx_sw_pkt\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ppe%d_rx_pkt_ok\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ppe%d_rx_drop_pkt_no_bd\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ppe%d_rx_alloc_buf_fail\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ppe%d_rx_alloc_buf_wait\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ppe%d_rx_pkt_drop_no_buf\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ppe%d_rx_pkt_err_fifo_full\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ppe%d_tx_bd\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ppe%d_tx_pkt\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ppe%d_tx_pkt_ok\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ppe%d_tx_pkt_err_fifo_empty\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ppe%d_tx_pkt_err_csum_fail\00", [37 x i8] zeroinitializer }, align 32
@hns_ppe_common_init_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 244, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"get ppe queue mode failed! dsaf_mode=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hns_ppe_common_init_hw\00", [41 x i8] zeroinitializer }, align 32
@hns_ppe_common_init_hw._entry_ptr = internal global ptr @hns_ppe_common_init_hw._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [16 x i64] [i64 14, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16]
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 290, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 468, i32 25 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 469, i32 25 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 470, i32 25 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 471, i32 25 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 472, i32 25 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 473, i32 25 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 474, i32 25 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 476, i32 25 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 477, i32 25 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 478, i32 25 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 479, i32 25 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 480, i32 25 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [53 x i8] c"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_ppe.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 242, i32 4 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @hns_ppe_common_init_hw._entry, ptr @hns_ppe_common_init_hw._entry_ptr, ptr @hns_ppe_wait_tx_fifo_clean._entry, ptr @hns_ppe_wait_tx_fifo_clean._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_ppe_wait_tx_fifo_clean._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_ppe_common_init_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_ppe_set_tso_enable(ptr nocapture noundef readonly %ppe_cb, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.hns_ppe_cb, ptr %ppe_cb, i32 0, i32 5
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool = icmp ne i32 %value, 0
  %lnot.ext = zext i1 %tobool to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 160
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %3 = and i32 %2, -16777217
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %or.i = or i32 %4, %lnot.ext
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %5) #7, !srcloc !49
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_ppe_set_rss_key(ptr nocapture noundef readonly %ppe_cb, ptr nocapture noundef readonly %rss_key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.hns_ppe_cb, ptr %ppe_cb, i32 0, i32 5
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  %2 = ptrtoint ptr %rss_key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rss_key, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #7
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #7, !srcloc !49
  %5 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io_base, align 4
  %arrayidx.1 = getelementptr i32, ptr %rss_key, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  %add.ptr.i.1 = getelementptr i8, ptr %6, i32 2308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1, i32 %9) #7, !srcloc !49
  %10 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_base, align 4
  %arrayidx.2 = getelementptr i32, ptr %rss_key, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  %add.ptr.i.2 = getelementptr i8, ptr %11, i32 2312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2, i32 %14) #7, !srcloc !49
  %15 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io_base, align 4
  %arrayidx.3 = getelementptr i32, ptr %rss_key, i32 3
  %17 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  %add.ptr.i.3 = getelementptr i8, ptr %16, i32 2316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3, i32 %19) #7, !srcloc !49
  %20 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io_base, align 4
  %arrayidx.4 = getelementptr i32, ptr %rss_key, i32 4
  %22 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #7
  %add.ptr.i.4 = getelementptr i8, ptr %21, i32 2320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.4, i32 %24) #7, !srcloc !49
  %25 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io_base, align 4
  %arrayidx.5 = getelementptr i32, ptr %rss_key, i32 5
  %27 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.5, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #7
  %add.ptr.i.5 = getelementptr i8, ptr %26, i32 2324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.5, i32 %29) #7, !srcloc !49
  %30 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %io_base, align 4
  %arrayidx.6 = getelementptr i32, ptr %rss_key, i32 6
  %32 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.6, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #7
  %add.ptr.i.6 = getelementptr i8, ptr %31, i32 2328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.6, i32 %34) #7, !srcloc !49
  %35 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %io_base, align 4
  %arrayidx.7 = getelementptr i32, ptr %rss_key, i32 7
  %37 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.7, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #7
  %add.ptr.i.7 = getelementptr i8, ptr %36, i32 2332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.7, i32 %39) #7, !srcloc !49
  %40 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %io_base, align 4
  %arrayidx.8 = getelementptr i32, ptr %rss_key, i32 8
  %42 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.8, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #7
  %add.ptr.i.8 = getelementptr i8, ptr %41, i32 2336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.8, i32 %44) #7, !srcloc !49
  %45 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %io_base, align 4
  %arrayidx.9 = getelementptr i32, ptr %rss_key, i32 9
  %47 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.9, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #7
  %add.ptr.i.9 = getelementptr i8, ptr %46, i32 2340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.9, i32 %49) #7, !srcloc !49
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_ppe_set_indir_table(ptr nocapture noundef readonly %ppe_cb, ptr nocapture noundef readonly %rss_tab) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.hns_ppe_cb, ptr %ppe_cb, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.061 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  %mul = shl i32 %i.061, 2
  %add = add nuw nsw i32 %mul, 2048
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %3 = and i32 %2, -522133280
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %arrayidx = getelementptr i32, ptr %rss_tab, i32 %mul
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %and3 = and i32 %6, 31
  %or = or i32 %and3, %4
  %add8 = or i32 %mul, 1
  %arrayidx9 = getelementptr i32, ptr %rss_tab, i32 %add8
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx9, align 4
  %and10 = shl i32 %8, 8
  %shl11 = and i32 %and10, 7936
  %or13 = or i32 %or, %shl11
  %add19 = or i32 %mul, 2
  %arrayidx20 = getelementptr i32, ptr %rss_tab, i32 %add19
  %9 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx20, align 4
  %and21 = shl i32 %10, 16
  %shl22 = and i32 %and21, 2031616
  %or24 = or i32 %or13, %shl22
  %add30 = or i32 %mul, 3
  %arrayidx31 = getelementptr i32, ptr %rss_tab, i32 %add30
  %11 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx31, align 4
  %and32 = shl i32 %12, 24
  %shl33 = and i32 %and32, 520093696
  %or35 = or i32 %or24, %shl33
  %13 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io_base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %15 = tail call i32 @llvm.bswap.i32(i32 %or35) #7
  %add.ptr.i60 = getelementptr i8, ptr %14, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60, i32 %15) #7, !srcloc !49
  %inc = add nuw nsw i32 %i.061, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hns_ppe_wait_tx_fifo_clean(ptr nocapture noundef readonly %ppe_cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.hns_ppe_cb, ptr %ppe_cb, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry
  %inc8 = phi i32 [ 1, %entry ], [ %inc, %if.end.while.body_crit_edge ]
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 804
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %3 = and i32 %2, -16580608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %while.end, label %if.end

if.end:                                           ; preds = %while.body
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %inc = add nuw nsw i32 %inc8, 1
  %exitcond.not = icmp eq i32 %inc, 10001
  br i1 %exitcond.not, label %while.end.thread, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end.thread:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  br label %do.end

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %inc8)
  %cmp1 = icmp ugt i32 %inc8, 9999
  br i1 %cmp1, label %while.end.do.end_crit_edge, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.end.do.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %while.end.do.end_crit_edge, %while.end.thread
  %val.118 = phi i32 [ %4, %while.end.thread ], [ 0, %while.end.do.end_crit_edge ]
  %5 = ptrtoint ptr %ppe_cb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ppe_cb, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str, i32 noundef %val.118) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %while.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_ppe_uninit(ptr noundef %dsaf_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ppe_common = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 17
  %0 = ptrtoint ptr %ppe_common to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppe_common, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %ppe_num.i = getelementptr inbounds %struct.ppe_common_cb, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ppe_num.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ppe_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11.not.i = icmp eq i32 %3, 0
  br i1 %cmp11.not.i, label %if.then.if.end_crit_edge, label %for.body.lr.ph.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.then
  %dsaf_dev.i = getelementptr inbounds %struct.ppe_common_cb, ptr %1, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %dsaf_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dsaf_dev.i, align 4
  %arrayidx.i = getelementptr %struct.dsaf_device, ptr %5, i32 0, i32 19, i32 %i.012.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  %ppe_common_cb.i.i = getelementptr %struct.ppe_common_cb, ptr %1, i32 0, i32 6, i32 %i.012.i, i32 2
  %8 = ptrtoint ptr %ppe_common_cb.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ppe_common_cb.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %dsaf_dev2.i.i = getelementptr inbounds %struct.ppe_common_cb, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dsaf_dev2.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dsaf_dev2.i.i, align 4
  %index.i.i = getelementptr %struct.ppe_common_cb, ptr %1, i32 0, i32 6, i32 %i.012.i, i32 4
  %12 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %index.i.i, align 8
  %conv.i.i = zext i8 %13 to i32
  %misc_op.i.i = getelementptr inbounds %struct.dsaf_device, ptr %11, i32 0, i32 20
  %14 = ptrtoint ptr %misc_op.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %misc_op.i.i, align 4
  %ppe_srst.i.i = getelementptr inbounds %struct.dsaf_misc_op, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %ppe_srst.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ppe_srst.i.i, align 4
  tail call void %17(ptr noundef %11, i32 noundef %conv.i.i, i1 noundef zeroext false) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i.i, %if.then.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %arrayidx3.i = getelementptr %struct.ppe_common_cb, ptr %1, i32 0, i32 6, i32 %i.012.i
  %18 = call ptr @memset(ptr %arrayidx3.i, i32 0, i32 1192)
  %inc.i = add nuw i32 %i.012.i, 1
  %19 = ptrtoint ptr %ppe_num.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ppe_num.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %20
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @hns_rcb_common_free_cfg(ptr noundef %dsaf_dev, i32 noundef 0) #7
  %21 = ptrtoint ptr %ppe_common to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %ppe_common, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_rcb_common_free_cfg(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_ppe_reset_common(ptr nocapture noundef readonly %dsaf_dev, i8 noundef zeroext %ppe_common_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %ppe_common_index to i32
  %arrayidx = getelementptr %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 17, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %dsaf_dev1.i = getelementptr inbounds %struct.ppe_common_cb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dsaf_dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsaf_dev1.i, align 4
  %dsaf_mode2.i = getelementptr inbounds %struct.dsaf_device, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %dsaf_mode2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dsaf_mode2.i, align 8
  %misc_op.i = getelementptr inbounds %struct.dsaf_device, ptr %3, i32 0, i32 20
  %6 = ptrtoint ptr %misc_op.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %misc_op.i, align 4
  %ppe_comm_srst.i = getelementptr inbounds %struct.dsaf_misc_op, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %ppe_comm_srst.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ppe_comm_srst.i, align 4
  tail call void %9(ptr noundef %3, i1 noundef zeroext false) #7
  tail call void @msleep(i32 noundef 100) #7
  %10 = ptrtoint ptr %misc_op.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %misc_op.i, align 4
  %ppe_comm_srst4.i = getelementptr inbounds %struct.dsaf_misc_op, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %ppe_comm_srst4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ppe_comm_srst4.i, align 4
  tail call void %13(ptr noundef %3, i1 noundef zeroext true) #7
  tail call void @msleep(i32 noundef 100) #7
  %ppe_mode.i = getelementptr inbounds %struct.ppe_common_cb, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %ppe_mode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ppe_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.i = icmp eq i32 %15, 1
  br i1 %cmp.i, label %if.then.i, label %entry.hns_ppe_common_init_hw.exit_crit_edge

entry.hns_ppe_common_init_hw.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %hns_ppe_common_init_hw.exit

if.then.i:                                        ; preds = %entry
  %16 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %hns_ppe_common_init_hw.exit.thread [
    i32 1, label %if.then.i.sw.bb.i_crit_edge
    i32 9, label %if.then.i.sw.bb.i_crit_edge42
    i32 2, label %if.then.i.sw.epilog.i_crit_edge
    i32 12, label %if.then.i.sw.epilog.i_crit_edge43
    i32 3, label %if.then.i.sw.bb6.i_crit_edge
    i32 11, label %if.then.i.sw.bb6.i_crit_edge44
    i32 4, label %if.then.i.sw.bb7.i_crit_edge
    i32 13, label %if.then.i.sw.bb7.i_crit_edge45
    i32 5, label %if.then.i.sw.bb8.i_crit_edge
    i32 16, label %if.then.i.sw.bb8.i_crit_edge46
    i32 6, label %if.then.i.sw.bb9.i_crit_edge
    i32 15, label %if.then.i.sw.bb9.i_crit_edge47
    i32 10, label %sw.bb10.i
    i32 14, label %sw.bb11.i
  ]

if.then.i.sw.bb9.i_crit_edge47:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9.i

if.then.i.sw.bb9.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9.i

if.then.i.sw.bb8.i_crit_edge46:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i

if.then.i.sw.bb8.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i

if.then.i.sw.bb7.i_crit_edge45:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7.i

if.then.i.sw.bb7.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7.i

if.then.i.sw.bb6.i_crit_edge44:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6.i

if.then.i.sw.bb6.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6.i

if.then.i.sw.epilog.i_crit_edge43:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.then.i.sw.epilog.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.then.i.sw.bb.i_crit_edge42:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.then.i.sw.bb.i_crit_edge, %if.then.i.sw.bb.i_crit_edge42
  %io_base.i.i = getelementptr inbounds %struct.ppe_common_cb, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_base.i.i, align 8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #7, !srcloc !46
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %and.i.i = and i32 %20, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

do.body.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %and1.i.i = and i32 %20, -256
  %21 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io_base.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %23 = tail call i32 @llvm.bswap.i32(i32 %and1.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %23) #7, !srcloc !49
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %if.then.i.sw.bb6.i_crit_edge, %if.then.i.sw.bb6.i_crit_edge44
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %if.then.i.sw.bb7.i_crit_edge, %if.then.i.sw.bb7.i_crit_edge45
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %if.then.i.sw.bb8.i_crit_edge, %if.then.i.sw.bb8.i_crit_edge46
  br label %sw.epilog.i

sw.bb9.i:                                         ; preds = %if.then.i.sw.bb9.i_crit_edge, %if.then.i.sw.bb9.i_crit_edge47
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

hns_ppe_common_init_hw.exit.thread:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.17, i32 noundef %5) #10
  br label %cleanup

sw.epilog.i:                                      ; preds = %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %do.body.i.i, %sw.bb.i.sw.epilog.i_crit_edge, %if.then.i.sw.epilog.i_crit_edge, %if.then.i.sw.epilog.i_crit_edge43
  %qid_mode.0.i = phi i32 [ 1536, %sw.bb11.i ], [ 1792, %sw.bb10.i ], [ 256, %sw.bb9.i ], [ 512, %sw.bb8.i ], [ 1280, %sw.bb7.i ], [ 1024, %sw.bb6.i ], [ 768, %if.then.i.sw.epilog.i_crit_edge ], [ 768, %if.then.i.sw.epilog.i_crit_edge43 ], [ 0, %sw.bb.i.sw.epilog.i_crit_edge ], [ 0, %do.body.i.i ]
  %io_base.i24.i = getelementptr inbounds %struct.ppe_common_cb, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %io_base.i24.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io_base.i24.i, align 8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %29 = and i32 %28, -458753
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #7
  %or.i.i.i = or i32 %30, %qid_mode.0.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %31 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %31) #7, !srcloc !49
  br label %hns_ppe_common_init_hw.exit

hns_ppe_common_init_hw.exit:                      ; preds = %sw.epilog.i, %entry.hns_ppe_common_init_hw.exit_crit_edge
  %io_base.i = getelementptr inbounds %struct.ppe_common_cb, ptr %1, i32 0, i32 2
  %32 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %io_base.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %33, i32 4384
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %35 = or i32 %34, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %35) #7, !srcloc !49
  %ppe_num = getelementptr inbounds %struct.ppe_common_cb, ptr %1, i32 0, i32 5
  %36 = ptrtoint ptr %ppe_num to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ppe_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp39.not = icmp eq i32 %37, 0
  br i1 %cmp39.not, label %hns_ppe_common_init_hw.exit.for.end_crit_edge, label %hns_ppe_common_init_hw.exit.for.body_crit_edge

hns_ppe_common_init_hw.exit.for.body_crit_edge:   ; preds = %hns_ppe_common_init_hw.exit
  br label %for.body

hns_ppe_common_init_hw.exit.for.end_crit_edge:    ; preds = %hns_ppe_common_init_hw.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %hns_ppe_common_init_hw.exit.for.body_crit_edge
  %i.040 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %hns_ppe_common_init_hw.exit.for.body_crit_edge ]
  %arrayidx2 = getelementptr %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 19, i32 %i.040
  %38 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %39, null
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %if.then4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then4:                                         ; preds = %for.body
  %arrayidx5 = getelementptr %struct.ppe_common_cb, ptr %1, i32 0, i32 6, i32 %i.040
  %ppe_common_cb1.i = getelementptr %struct.ppe_common_cb, ptr %1, i32 0, i32 6, i32 %i.040, i32 2
  %40 = ptrtoint ptr %ppe_common_cb1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ppe_common_cb1.i, align 8
  %index.i = getelementptr %struct.ppe_common_cb, ptr %1, i32 0, i32 6, i32 %i.040, i32 4
  %42 = ptrtoint ptr %index.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %index.i, align 8
  %conv.i = zext i8 %43 to i32
  %dsaf_dev2.i = getelementptr inbounds %struct.ppe_common_cb, ptr %41, i32 0, i32 1
  %44 = ptrtoint ptr %dsaf_dev2.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dsaf_dev2.i, align 4
  %rss_key.i = getelementptr %struct.ppe_common_cb, ptr %1, i32 0, i32 6, i32 %i.040, i32 8
  tail call void @netdev_rss_key_fill(ptr noundef %rss_key.i, i32 noundef 40) #7
  %misc_op.i29 = getelementptr inbounds %struct.dsaf_device, ptr %45, i32 0, i32 20
  %46 = ptrtoint ptr %misc_op.i29 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %misc_op.i29, align 4
  %ppe_srst.i = getelementptr inbounds %struct.dsaf_misc_op, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %ppe_srst.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ppe_srst.i, align 4
  tail call void %49(ptr noundef %45, i32 noundef %conv.i, i1 noundef zeroext false) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748000) #7
  %60 = ptrtoint ptr %misc_op.i29 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %misc_op.i29, align 4
  %ppe_srst4.i = getelementptr inbounds %struct.dsaf_misc_op, ptr %61, i32 0, i32 6
  %62 = ptrtoint ptr %ppe_srst4.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ppe_srst4.i, align 4
  tail call void %63(ptr noundef %45, i32 noundef %conv.i, i1 noundef zeroext true) #7
  %io_base.i.i30 = getelementptr %struct.ppe_common_cb, ptr %1, i32 0, i32 6, i32 %i.040, i32 5
  %64 = ptrtoint ptr %io_base.i.i30 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %io_base.i.i30, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i.i31 = getelementptr i8, ptr %65, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i31, i32 -1) #7, !srcloc !49
  %66 = ptrtoint ptr %io_base.i.i30 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %io_base.i.i30, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %add.ptr.i1.i.i = getelementptr i8, ptr %67, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i.i, i32 0) #7, !srcloc !49
  %ppe_mode.i32 = getelementptr inbounds %struct.ppe_common_cb, ptr %41, i32 0, i32 3
  %68 = ptrtoint ptr %ppe_mode.i32 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ppe_mode.i32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp.i33 = icmp eq i32 %69, 0
  %70 = ptrtoint ptr %io_base.i.i30 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %io_base.i.i30, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i42.i = getelementptr i8, ptr %71, i32 128
  br i1 %cmp.i33, label %if.then.i34, label %if.else.i

if.then.i34:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i42.i, i32 0) #7, !srcloc !49
  %72 = ptrtoint ptr %io_base.i.i30 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %io_base.i.i30, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i = getelementptr i8, ptr %73, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !49
  br label %if.end.i36

if.else.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i42.i, i32 16777216) #7, !srcloc !49
  br label %if.end.i36

if.end.i36:                                       ; preds = %if.else.i, %if.then.i34
  %74 = ptrtoint ptr %io_base.i.i30 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %io_base.i.i30, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %75, i32 152
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #7, !srcloc !46
  %77 = shl i32 %76, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %or.i.i.i35 = or i32 %77, 268435455
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %78 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i35) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %78) #7, !srcloc !49
  %79 = ptrtoint ptr %io_base.i.i30 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %io_base.i.i30, align 4
  %add.ptr.i.i.i47.i = getelementptr i8, ptr %80, i32 768
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i47.i) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %82 = or i32 %81, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i47.i, i32 %82) #7, !srcloc !49
  %dsaf_ver.i = getelementptr inbounds %struct.dsaf_device, ptr %45, i32 0, i32 15
  %83 = ptrtoint ptr %dsaf_ver.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %dsaf_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %84)
  %cmp6.i = icmp eq i32 %84, 3552816
  br i1 %cmp6.i, label %if.end.i36.for.inc_crit_edge, label %if.then8.i

if.end.i36.for.inc_crit_edge:                     ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then8.i:                                       ; preds = %if.end.i36
  %85 = ptrtoint ptr %io_base.i.i30 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %io_base.i.i30, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i49.i = getelementptr i8, ptr %86, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i49.i, i32 0) #7, !srcloc !49
  %87 = ptrtoint ptr %io_base.i.i30 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %io_base.i.i30, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %add.ptr.i50.i = getelementptr i8, ptr %88, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50.i, i32 -2146893824) #7, !srcloc !49
  tail call void @hns_ppe_set_rss_key(ptr noundef %arrayidx5, ptr noundef %rss_key.i) #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then8.i
  %i.054.i = phi i32 [ 0, %if.then8.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ppe_common_cb, ptr %1, i32 0, i32 6, i32 %i.040, i32 7, i32 %i.054.i
  %89 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %i.054.i, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.054.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %rss_indir_table14.i = getelementptr %struct.ppe_common_cb, ptr %1, i32 0, i32 6, i32 %i.040, i32 7
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.end.i
  %i.061.i.i = phi i32 [ 0, %for.end.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %90 = ptrtoint ptr %io_base.i.i30 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %io_base.i.i30, align 4
  %mul.i.i = shl i32 %i.061.i.i, 2
  %add.i.i = add nuw nsw i32 %mul.i.i, 2048
  %add.ptr.i.i52.i = getelementptr i8, ptr %91, i32 %add.i.i
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i52.i) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %93 = and i32 %92, -522133280
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #7
  %arrayidx.i.i = getelementptr i32, ptr %rss_indir_table14.i, i32 %mul.i.i
  %95 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx.i.i, align 4
  %and3.i.i = and i32 %96, 31
  %or.i.i = or i32 %and3.i.i, %94
  %add8.i.i = or i32 %mul.i.i, 1
  %arrayidx9.i.i = getelementptr i32, ptr %rss_indir_table14.i, i32 %add8.i.i
  %97 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx9.i.i, align 4
  %and10.i.i = shl i32 %98, 8
  %shl11.i.i = and i32 %and10.i.i, 7936
  %or13.i.i = or i32 %or.i.i, %shl11.i.i
  %add19.i.i = or i32 %mul.i.i, 2
  %arrayidx20.i.i = getelementptr i32, ptr %rss_indir_table14.i, i32 %add19.i.i
  %99 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx20.i.i, align 4
  %and21.i.i = shl i32 %100, 16
  %shl22.i.i = and i32 %and21.i.i, 2031616
  %or24.i.i = or i32 %or13.i.i, %shl22.i.i
  %add30.i.i = or i32 %mul.i.i, 3
  %arrayidx31.i.i = getelementptr i32, ptr %rss_indir_table14.i, i32 %add30.i.i
  %101 = ptrtoint ptr %arrayidx31.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx31.i.i, align 4
  %and32.i.i = shl i32 %102, 24
  %shl33.i.i = and i32 %and32.i.i, 520093696
  %or35.i.i = or i32 %or24.i.i, %shl33.i.i
  %103 = ptrtoint ptr %io_base.i.i30 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %io_base.i.i30, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %105 = tail call i32 @llvm.bswap.i32(i32 %or35.i.i) #7
  %add.ptr.i60.i.i = getelementptr i8, ptr %104, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60.i.i, i32 %105) #7, !srcloc !49
  %inc.i.i = add nuw nsw i32 %i.061.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 64
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.inc_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i.for.inc_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %for.body.i.i.for.inc_crit_edge, %if.end.i36.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.040, 1
  %106 = ptrtoint ptr %ppe_num to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %ppe_num, align 4
  %cmp = icmp ult i32 %inc, %107
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %hns_ppe_common_init_hw.exit.for.end_crit_edge
  %arrayidx8 = getelementptr %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 18, i32 %idxprom
  %108 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx8, align 4
  %call9 = tail call i32 @hns_rcb_common_init_hw(ptr noundef %109) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %110 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx8, align 4
  tail call void @hns_rcb_common_init_commit_hw(ptr noundef %111) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %for.end.cleanup_crit_edge, %hns_ppe_common_init_hw.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_rcb_common_init_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_rcb_common_init_commit_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_ppe_update_stats(ptr nocapture noundef %ppe_cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_stats1 = getelementptr inbounds %struct.hns_ppe_cb, ptr %ppe_cb, i32 0, i32 3
  %io_base = getelementptr inbounds %struct.hns_ppe_cb, ptr %ppe_cb, i32 0, i32 5
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 512
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !46
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %conv = zext i32 %3 to i64
  %4 = ptrtoint ptr %hw_stats1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %hw_stats1, align 8
  %add = add i64 %5, %conv
  store i64 %add, ptr %hw_stats1, align 8
  %6 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base, align 4
  %add.ptr.i69 = getelementptr i8, ptr %7, i32 516
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i69) #7, !srcloc !46
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %conv4 = zext i32 %9 to i64
  %rx_pkts = getelementptr inbounds %struct.hns_ppe_cb, ptr %ppe_cb, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %rx_pkts to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %rx_pkts, align 8
  %add5 = add i64 %11, %conv4
  store i64 %add5, ptr %rx_pkts, align 8
  %12 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io_base, align 4
  %add.ptr.i70 = getelementptr i8, ptr %13, i32 520
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i70) #7, !srcloc !46
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %conv8 = zext i32 %15 to i64
  %rx_drop_no_bd = getelementptr inbounds %struct.hns_ppe_cb, ptr %ppe_cb, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %rx_drop_no_bd to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %rx_drop_no_bd, align 8
  %add9 = add i64 %17, %conv8
  store i64 %add9, ptr %rx_drop_no_bd, align 8
  %18 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io_base, align 4
  %add.ptr.i71 = getelementptr i8, ptr %19, i32 544
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i71) #7, !srcloc !46
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %conv12 = zext i32 %21 to i64
  %rx_alloc_buf_fail = getelementptr inbounds %struct.hns_ppe_cb, ptr %ppe_cb, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %rx_alloc_buf_fail to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %rx_alloc_buf_fail, align 8
  %add13 = add i64 %23, %conv12
  store i64 %add13, ptr %rx_alloc_buf_fail, align 8
  %24 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %io_base, align 4
  %add.ptr.i72 = getelementptr i8, ptr %25, i32 548
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i72) #7, !srcloc !46
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %conv16 = zext i32 %27 to i64
  %rx_alloc_buf_wait = getelementptr inbounds %struct.hns_ppe_cb, ptr %ppe_cb, i32 0, i32 3, i32 4
  %28 = ptrtoint ptr %rx_alloc_buf_wait to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %rx_alloc_buf_wait, align 8
  %add17 = add i64 %29, %conv16
  store i64 %add17, ptr %rx_alloc_buf_wait, align 8
  %30 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %io_base, align 4
  %add.ptr.i73 = getelementptr i8, ptr %31, i32 552
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i73) #7, !srcloc !46
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %conv20 = zext i32 %33 to i64
  %rx_drop_no_buf = getelementptr inbounds %struct.hns_ppe_cb, ptr %ppe_cb, i32 0, i32 3, i32 5
  %34 = ptrtoint ptr %rx_drop_no_buf to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %rx_drop_no_buf, align 8
  %add21 = add i64 %35, %conv20
  store i64 %add21, ptr %rx_drop_no_buf, align 8
  %36 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %io_base, align 4
  %add.ptr.i74 = getelementptr i8, ptr %37, i32 556
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i74) #7, !srcloc !46
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %conv24 = zext i32 %39 to i64
  %rx_err_fifo_full = getelementptr inbounds %struct.hns_ppe_cb, ptr %ppe_cb, i32 0, i32 3, i32 6
  %40 = ptrtoint ptr %rx_err_fifo_full to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %rx_err_fifo_full, align 8
  %add25 = add i64 %41, %conv24
  store i64 %add25, ptr %rx_err_fifo_full, align 8
  %42 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %io_base, align 4
  %add.ptr.i75 = getelementptr i8, ptr %43, i32 524
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i75) #7, !srcloc !46
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %conv28 = zext i32 %45 to i64
  %tx_bd_form_rcb = getelementptr inbounds %struct.hns_ppe_cb, ptr %ppe_cb, i32 0, i32 3, i32 7
  %46 = ptrtoint ptr %tx_bd_form_rcb to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %tx_bd_form_rcb, align 8
  %add29 = add i64 %47, %conv28
  store i64 %add29, ptr %tx_bd_form_rcb, align 8
  %48 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %io_base, align 4
  %add.ptr.i76 = getelementptr i8, ptr %49, i32 528
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i76) #7, !srcloc !46
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %conv32 = zext i32 %51 to i64
  %tx_pkts_from_rcb = getelementptr inbounds %struct.hns_ppe_cb, ptr %ppe_cb, i32 0, i32 3, i32 8
  %52 = ptrtoint ptr %tx_pkts_from_rcb to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %tx_pkts_from_rcb, align 8
  %add33 = add i64 %53, %conv32
  store i64 %add33, ptr %tx_pkts_from_rcb, align 8
  %54 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %io_base, align 4
  %add.ptr.i77 = getelementptr i8, ptr %55, i32 532
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i77) #7, !srcloc !46
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %conv36 = zext i32 %57 to i64
  %tx_pkts = getelementptr inbounds %struct.hns_ppe_cb, ptr %ppe_cb, i32 0, i32 3, i32 9
  %58 = ptrtoint ptr %tx_pkts to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %tx_pkts, align 8
  %add37 = add i64 %59, %conv36
  store i64 %add37, ptr %tx_pkts, align 8
  %60 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %io_base, align 4
  %add.ptr.i78 = getelementptr i8, ptr %61, i32 536
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i78) #7, !srcloc !46
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %conv40 = zext i32 %63 to i64
  %tx_err_fifo_empty = getelementptr inbounds %struct.hns_ppe_cb, ptr %ppe_cb, i32 0, i32 3, i32 10
  %64 = ptrtoint ptr %tx_err_fifo_empty to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %tx_err_fifo_empty, align 8
  %add41 = add i64 %65, %conv40
  store i64 %add41, ptr %tx_err_fifo_empty, align 8
  %66 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %io_base, align 4
  %add.ptr.i79 = getelementptr i8, ptr %67, i32 540
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i79) #7, !srcloc !46
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %conv44 = zext i32 %69 to i64
  %tx_err_checksum = getelementptr inbounds %struct.hns_ppe_cb, ptr %ppe_cb, i32 0, i32 3, i32 11
  %70 = ptrtoint ptr %tx_err_checksum to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %tx_err_checksum, align 8
  %add45 = add i64 %71, %conv44
  store i64 %add45, ptr %tx_err_checksum, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @hns_ppe_get_sset_count(i32 noundef %stringset) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cmp = icmp eq i32 %stringset, 1
  %. = select i1 %cmp, i32 12, i32 0
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @hns_ppe_get_regs_count() local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 576
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_ppe_get_strings(ptr nocapture noundef readonly %ppe_cb, i32 noundef %stringset, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %buff = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %index1 = getelementptr inbounds %struct.hns_ppe_cb, ptr %ppe_cb, i32 0, i32 4
  %0 = ptrtoint ptr %index1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index1, align 8
  %conv = zext i8 %1 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buff) #7
  %2 = ptrtoint ptr %buff to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %data, ptr %buff, align 4
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.5, i32 noundef %conv) #7
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.6, i32 noundef %conv) #7
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.7, i32 noundef %conv) #7
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.8, i32 noundef %conv) #7
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.9, i32 noundef %conv) #7
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.10, i32 noundef %conv) #7
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.11, i32 noundef %conv) #7
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.12, i32 noundef %conv) #7
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.13, i32 noundef %conv) #7
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.14, i32 noundef %conv) #7
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.15, i32 noundef %conv) #7
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.16, i32 noundef %conv) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buff) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_sprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @hns_ppe_get_stats(ptr nocapture noundef readonly %ppe_cb, ptr nocapture noundef writeonly %data) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_stats1 = getelementptr inbounds %struct.hns_ppe_cb, ptr %ppe_cb, i32 0, i32 3
  %0 = ptrtoint ptr %hw_stats1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %hw_stats1, align 8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %data, align 8
  %rx_pkts = getelementptr inbounds %struct.hns_ppe_cb, ptr %ppe_cb, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %rx_pkts to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %rx_pkts, align 8
  %arrayidx2 = getelementptr i64, ptr %data, i32 1
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %arrayidx2, align 8
  %rx_drop_no_bd = getelementptr inbounds %struct.hns_ppe_cb, ptr %ppe_cb, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %rx_drop_no_bd to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %rx_drop_no_bd, align 8
  %arrayidx3 = getelementptr i64, ptr %data, i32 2
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %arrayidx3, align 8
  %rx_alloc_buf_fail = getelementptr inbounds %struct.hns_ppe_cb, ptr %ppe_cb, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %rx_alloc_buf_fail to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %rx_alloc_buf_fail, align 8
  %arrayidx4 = getelementptr i64, ptr %data, i32 3
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %arrayidx4, align 8
  %rx_alloc_buf_wait = getelementptr inbounds %struct.hns_ppe_cb, ptr %ppe_cb, i32 0, i32 3, i32 4
  %12 = ptrtoint ptr %rx_alloc_buf_wait to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %rx_alloc_buf_wait, align 8
  %arrayidx5 = getelementptr i64, ptr %data, i32 4
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %arrayidx5, align 8
  %rx_drop_no_buf = getelementptr inbounds %struct.hns_ppe_cb, ptr %ppe_cb, i32 0, i32 3, i32 5
  %15 = ptrtoint ptr %rx_drop_no_buf to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %rx_drop_no_buf, align 8
  %arrayidx6 = getelementptr i64, ptr %data, i32 5
  %17 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %arrayidx6, align 8
  %rx_err_fifo_full = getelementptr inbounds %struct.hns_ppe_cb, ptr %ppe_cb, i32 0, i32 3, i32 6
  %18 = ptrtoint ptr %rx_err_fifo_full to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %rx_err_fifo_full, align 8
  %arrayidx7 = getelementptr i64, ptr %data, i32 6
  %20 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %arrayidx7, align 8
  %tx_bd_form_rcb = getelementptr inbounds %struct.hns_ppe_cb, ptr %ppe_cb, i32 0, i32 3, i32 7
  %21 = ptrtoint ptr %tx_bd_form_rcb to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %tx_bd_form_rcb, align 8
  %arrayidx8 = getelementptr i64, ptr %data, i32 7
  %23 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %arrayidx8, align 8
  %tx_pkts_from_rcb = getelementptr inbounds %struct.hns_ppe_cb, ptr %ppe_cb, i32 0, i32 3, i32 8
  %24 = ptrtoint ptr %tx_pkts_from_rcb to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %tx_pkts_from_rcb, align 8
  %arrayidx9 = getelementptr i64, ptr %data, i32 8
  %26 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %arrayidx9, align 8
  %tx_pkts = getelementptr inbounds %struct.hns_ppe_cb, ptr %ppe_cb, i32 0, i32 3, i32 9
  %27 = ptrtoint ptr %tx_pkts to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %tx_pkts, align 8
  %arrayidx10 = getelementptr i64, ptr %data, i32 9
  %29 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %arrayidx10, align 8
  %tx_err_fifo_empty = getelementptr inbounds %struct.hns_ppe_cb, ptr %ppe_cb, i32 0, i32 3, i32 10
  %30 = ptrtoint ptr %tx_err_fifo_empty to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %tx_err_fifo_empty, align 8
  %arrayidx11 = getelementptr i64, ptr %data, i32 10
  %32 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %arrayidx11, align 8
  %tx_err_checksum = getelementptr inbounds %struct.hns_ppe_cb, ptr %ppe_cb, i32 0, i32 3, i32 11
  %33 = ptrtoint ptr %tx_err_checksum to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %tx_err_checksum, align 8
  %arrayidx12 = getelementptr i64, ptr %data, i32 11
  %35 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %arrayidx12, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hns_ppe_init(ptr noundef %dsaf_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dsaf_mode.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 12
  %0 = ptrtoint ptr %dsaf_mode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dsaf_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp.i = icmp eq i32 %1, 8
  %..i = select i1 %cmp.i, i32 1, i32 6
  %2 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsaf_dev, align 8
  %4 = mul nuw nsw i32 %..i, 1192
  %5 = add nuw nsw i32 %4, 24
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %5, i32 noundef 3520) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.get_cfg_fail_crit_edge, label %if.end

entry.get_cfg_fail_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_cfg_fail

if.end:                                           ; preds = %entry
  %ppe_num4.i = getelementptr inbounds %struct.ppe_common_cb, ptr %call.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %ppe_num4.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %..i, ptr %ppe_num4.i, align 4
  %dsaf_dev5.i = getelementptr inbounds %struct.ppe_common_cb, ptr %call.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %dsaf_dev5.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dsaf_dev, ptr %dsaf_dev5.i, align 4
  %comm_index6.i = getelementptr inbounds %struct.ppe_common_cb, ptr %call.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %comm_index6.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %comm_index6.i, align 8
  %9 = ptrtoint ptr %dsaf_mode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dsaf_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %10)
  %cmp8.i = icmp ne i32 %10, 8
  %spec.select.i = zext i1 %cmp8.i to i32
  %11 = getelementptr inbounds %struct.ppe_common_cb, ptr %call.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %spec.select.i, ptr %11, align 4
  %13 = ptrtoint ptr %dsaf_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dsaf_dev, align 8
  %15 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %call.i.i, align 8
  %ppe_base.i.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 4
  %16 = ptrtoint ptr %ppe_base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ppe_base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 458752
  %io_base.i = getelementptr inbounds %struct.ppe_common_cb, ptr %call.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %io_base.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr.i.i, ptr %io_base.i, align 8
  %ppe_common17.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 17
  %19 = ptrtoint ptr %ppe_common17.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i.i, ptr %ppe_common17.i, align 4
  %call1 = tail call i32 @hns_rcb_common_get_cfg(ptr noundef %dsaf_dev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.get_cfg_fail_crit_edge

if.end.get_cfg_fail_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_cfg_fail

if.end4:                                          ; preds = %if.end
  %20 = ptrtoint ptr %ppe_common17.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ppe_common17.i, align 4
  %ppe_num1.i = getelementptr inbounds %struct.ppe_common_cb, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %ppe_num1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ppe_num1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp17.not.i = icmp eq i32 %23, 0
  br i1 %cmp17.not.i, label %if.end4.hns_ppe_get_cfg.exit_crit_edge, label %for.body.lr.ph.i

if.end4.hns_ppe_get_cfg.exit_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %hns_ppe_get_cfg.exit

for.body.lr.ph.i:                                 ; preds = %if.end4
  %dsaf_dev.i.i = getelementptr inbounds %struct.ppe_common_cb, ptr %21, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.018.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ppe_common_cb, ptr %21, i32 0, i32 6, i32 %i.018.i
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 8
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %arrayidx.i, align 8
  %next.i = getelementptr %struct.ppe_common_cb, ptr %21, i32 0, i32 6, i32 %i.018.i, i32 1
  %27 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %next.i, align 4
  %ppe_common_cb.i = getelementptr %struct.ppe_common_cb, ptr %21, i32 0, i32 6, i32 %i.018.i, i32 2
  %28 = ptrtoint ptr %ppe_common_cb.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %21, ptr %ppe_common_cb.i, align 8
  %conv.i = trunc i32 %i.018.i to i8
  %index.i = getelementptr %struct.ppe_common_cb, ptr %21, i32 0, i32 6, i32 %i.018.i, i32 4
  %29 = ptrtoint ptr %index.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv.i, ptr %index.i, align 8
  %30 = ptrtoint ptr %dsaf_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dsaf_dev.i.i, align 4
  %ppe_base.i.i45 = getelementptr inbounds %struct.dsaf_device, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %ppe_base.i.i45 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ppe_base.i.i45, align 8
  %mul.i.i = shl i32 %i.018.i, 16
  %add.ptr.i.i46 = getelementptr i8, ptr %33, i32 %mul.i.i
  %io_base.i47 = getelementptr %struct.ppe_common_cb, ptr %21, i32 0, i32 6, i32 %i.018.i, i32 5
  %34 = ptrtoint ptr %io_base.i47 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr.i.i46, ptr %io_base.i47, align 4
  %virq.i = getelementptr %struct.ppe_common_cb, ptr %21, i32 0, i32 6, i32 %i.018.i, i32 6
  %35 = ptrtoint ptr %virq.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %virq.i, align 8
  %inc.i = add nuw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %23
  br i1 %exitcond.not.i, label %for.body.i.hns_ppe_get_cfg.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.hns_ppe_get_cfg.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hns_ppe_get_cfg.exit

hns_ppe_get_cfg.exit:                             ; preds = %for.body.i.hns_ppe_get_cfg.exit_crit_edge, %if.end4.hns_ppe_get_cfg.exit_crit_edge
  %rcb_common = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 18
  %36 = ptrtoint ptr %rcb_common to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rcb_common, align 4
  %call6 = tail call i32 @hns_rcb_get_cfg(ptr noundef %37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %for.body12, label %hns_ppe_get_cfg.exit.get_cfg_fail_crit_edge

hns_ppe_get_cfg.exit.get_cfg_fail_crit_edge:      ; preds = %hns_ppe_get_cfg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_cfg_fail

for.body12:                                       ; preds = %hns_ppe_get_cfg.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @hns_ppe_reset_common(ptr noundef %dsaf_dev, i8 noundef zeroext 0)
  br label %cleanup

get_cfg_fail:                                     ; preds = %hns_ppe_get_cfg.exit.get_cfg_fail_crit_edge, %if.end.get_cfg_fail_crit_edge, %entry.get_cfg_fail_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.get_cfg_fail_crit_edge ], [ %call6, %hns_ppe_get_cfg.exit.get_cfg_fail_crit_edge ], [ -12, %entry.get_cfg_fail_crit_edge ]
  tail call void @hns_rcb_common_free_cfg(ptr noundef %dsaf_dev, i32 noundef 0) #7
  %ppe_common.i = getelementptr inbounds %struct.dsaf_device, ptr %dsaf_dev, i32 0, i32 17
  %38 = ptrtoint ptr %ppe_common.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %ppe_common.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %get_cfg_fail, %for.body12
  %retval.0 = phi i32 [ %ret.0, %get_cfg_fail ], [ 0, %for.body12 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_rcb_common_get_cfg(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hns_rcb_get_cfg(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_ppe_get_regs(ptr noundef readonly %ppe_cb, ptr noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ppe_common_cb = getelementptr inbounds %struct.hns_ppe_cb, ptr %ppe_cb, i32 0, i32 2
  %0 = ptrtoint ptr %ppe_common_cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppe_common_cb, align 8
  %io_base = getelementptr inbounds %struct.ppe_common_cb, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_base, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !46
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %data, align 4
  %7 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io_base, align 8
  %add.ptr.i = getelementptr i8, ptr %8, i32 272
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !46
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx3 = getelementptr i32, ptr %data, i32 1
  %11 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx3, align 4
  %12 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io_base, align 8
  %add.ptr.i323 = getelementptr i8, ptr %13, i32 276
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i323) #7, !srcloc !46
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx6 = getelementptr i32, ptr %data, i32 2
  %16 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx6, align 4
  %17 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_base, align 8
  %add.ptr.i324 = getelementptr i8, ptr %18, i32 280
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i324) #7, !srcloc !46
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx9 = getelementptr i32, ptr %data, i32 3
  %21 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx9, align 4
  %22 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io_base, align 8
  %add.ptr.i325 = getelementptr i8, ptr %23, i32 4384
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i325) #7, !srcloc !46
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx12 = getelementptr i32, ptr %data, i32 4
  %26 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx12, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0376 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = shl nuw nsw i32 %i.0376, 2
  %add = add nuw nsw i32 %mul, 768
  %27 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %io_base, align 8
  %add.ptr.i326 = getelementptr i8, ptr %28, i32 %add
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i326) #7, !srcloc !46
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %add15 = add nuw nsw i32 %i.0376, 5
  %arrayidx16 = getelementptr i32, ptr %data, i32 %add15
  %31 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx16, align 4
  %add18 = add nuw nsw i32 %mul, 1536
  %32 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %io_base, align 8
  %add.ptr.i327 = getelementptr i8, ptr %33, i32 %add18
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i327) #7, !srcloc !46
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %add22 = add nuw nsw i32 %i.0376, 134
  %arrayidx23 = getelementptr i32, ptr %data, i32 %add22
  %36 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx23, align 4
  %add25 = add nuw nsw i32 %mul, 2304
  %37 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %io_base, align 8
  %add.ptr.i328 = getelementptr i8, ptr %38, i32 %add25
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i328) #7, !srcloc !46
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %add29 = add nuw nsw i32 %i.0376, 263
  %arrayidx30 = getelementptr i32, ptr %data, i32 %add29
  %41 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx30, align 4
  %add32 = add nuw nsw i32 %mul, 3072
  %42 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %io_base, align 8
  %add.ptr.i329 = getelementptr i8, ptr %43, i32 %add32
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i329) #7, !srcloc !46
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %add36 = add nuw nsw i32 %i.0376, 392
  %arrayidx37 = getelementptr i32, ptr %data, i32 %add36
  %46 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx37, align 4
  %inc = add nuw nsw i32 %i.0376, 1
  %exitcond.not = icmp eq i32 %inc, 129
  br i1 %exitcond.not, label %for.body40.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body40.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %uglygep = getelementptr i8, ptr %data, i32 2084
  %47 = call ptr @memset(ptr %uglygep, i32 238, i32 12)
  %io_base45 = getelementptr inbounds %struct.hns_ppe_cb, ptr %ppe_cb, i32 0, i32 5
  %48 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %io_base45, align 4
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #7, !srcloc !46
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx47 = getelementptr i32, ptr %data, i32 525
  %52 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %arrayidx47, align 4
  %53 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %io_base45, align 4
  %add.ptr.i330 = getelementptr i8, ptr %54, i32 4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i330) #7, !srcloc !46
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx50 = getelementptr i32, ptr %data, i32 526
  %57 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %arrayidx50, align 4
  %58 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %io_base45, align 4
  %add.ptr.i331 = getelementptr i8, ptr %59, i32 8
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i331) #7, !srcloc !46
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx53 = getelementptr i32, ptr %data, i32 527
  %62 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %arrayidx53, align 4
  %63 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %io_base45, align 4
  %add.ptr.i332 = getelementptr i8, ptr %64, i32 12
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i332) #7, !srcloc !46
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx56 = getelementptr i32, ptr %data, i32 528
  %67 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %arrayidx56, align 4
  %68 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %io_base45, align 4
  %add.ptr.i333 = getelementptr i8, ptr %69, i32 16
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i333) #7, !srcloc !46
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx59 = getelementptr i32, ptr %data, i32 529
  %72 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %arrayidx59, align 4
  %73 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %io_base45, align 4
  %add.ptr.i334 = getelementptr i8, ptr %74, i32 64
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i334) #7, !srcloc !46
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx62 = getelementptr i32, ptr %data, i32 530
  %77 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %arrayidx62, align 4
  %78 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %io_base45, align 4
  %add.ptr.i335 = getelementptr i8, ptr %79, i32 72
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i335) #7, !srcloc !46
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx65 = getelementptr i32, ptr %data, i32 531
  %82 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %arrayidx65, align 4
  %83 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %io_base45, align 4
  %add.ptr.i336 = getelementptr i8, ptr %84, i32 76
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i336) #7, !srcloc !46
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx68 = getelementptr i32, ptr %data, i32 532
  %87 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %arrayidx68, align 4
  %88 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %io_base45, align 4
  %add.ptr.i337 = getelementptr i8, ptr %89, i32 128
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i337) #7, !srcloc !46
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx71 = getelementptr i32, ptr %data, i32 533
  %92 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %arrayidx71, align 4
  %93 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %io_base45, align 4
  %add.ptr.i338 = getelementptr i8, ptr %94, i32 132
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i338) #7, !srcloc !46
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx74 = getelementptr i32, ptr %data, i32 534
  %97 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %arrayidx74, align 4
  %98 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %io_base45, align 4
  %add.ptr.i339 = getelementptr i8, ptr %99, i32 136
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i339) #7, !srcloc !46
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx77 = getelementptr i32, ptr %data, i32 535
  %102 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %arrayidx77, align 4
  %103 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %io_base45, align 4
  %add.ptr.i340 = getelementptr i8, ptr %104, i32 140
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i340) #7, !srcloc !46
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx80 = getelementptr i32, ptr %data, i32 536
  %107 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %arrayidx80, align 4
  %108 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %io_base45, align 4
  %add.ptr.i341 = getelementptr i8, ptr %109, i32 144
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i341) #7, !srcloc !46
  %111 = tail call i32 @llvm.bswap.i32(i32 %110) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx83 = getelementptr i32, ptr %data, i32 537
  %112 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %arrayidx83, align 4
  %113 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %io_base45, align 4
  %add.ptr.i342 = getelementptr i8, ptr %114, i32 148
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i342) #7, !srcloc !46
  %116 = tail call i32 @llvm.bswap.i32(i32 %115) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx86 = getelementptr i32, ptr %data, i32 538
  %117 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %arrayidx86, align 4
  %118 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %io_base45, align 4
  %add.ptr.i343 = getelementptr i8, ptr %119, i32 152
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i343) #7, !srcloc !46
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx89 = getelementptr i32, ptr %data, i32 539
  %122 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %arrayidx89, align 4
  %123 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %io_base45, align 4
  %add.ptr.i344 = getelementptr i8, ptr %124, i32 256
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i344) #7, !srcloc !46
  %126 = tail call i32 @llvm.bswap.i32(i32 %125) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx92 = getelementptr i32, ptr %data, i32 540
  %127 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %arrayidx92, align 4
  %128 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %io_base45, align 4
  %add.ptr.i345 = getelementptr i8, ptr %129, i32 260
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i345) #7, !srcloc !46
  %131 = tail call i32 @llvm.bswap.i32(i32 %130) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx95 = getelementptr i32, ptr %data, i32 541
  %132 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %arrayidx95, align 4
  %133 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %io_base45, align 4
  %add.ptr.i346 = getelementptr i8, ptr %134, i32 264
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i346) #7, !srcloc !46
  %136 = tail call i32 @llvm.bswap.i32(i32 %135) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx98 = getelementptr i32, ptr %data, i32 542
  %137 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %arrayidx98, align 4
  %138 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %io_base45, align 4
  %add.ptr.i347 = getelementptr i8, ptr %139, i32 320
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i347) #7, !srcloc !46
  %141 = tail call i32 @llvm.bswap.i32(i32 %140) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx101 = getelementptr i32, ptr %data, i32 543
  %142 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %arrayidx101, align 4
  %143 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %io_base45, align 4
  %add.ptr.i348 = getelementptr i8, ptr %144, i32 324
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i348) #7, !srcloc !46
  %146 = tail call i32 @llvm.bswap.i32(i32 %145) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx104 = getelementptr i32, ptr %data, i32 544
  %147 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %arrayidx104, align 4
  %148 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %io_base45, align 4
  %add.ptr.i349 = getelementptr i8, ptr %149, i32 328
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i349) #7, !srcloc !46
  %151 = tail call i32 @llvm.bswap.i32(i32 %150) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx107 = getelementptr i32, ptr %data, i32 545
  %152 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %arrayidx107, align 4
  %153 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %io_base45, align 4
  %add.ptr.i350 = getelementptr i8, ptr %154, i32 512
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i350) #7, !srcloc !46
  %156 = tail call i32 @llvm.bswap.i32(i32 %155) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx110 = getelementptr i32, ptr %data, i32 546
  %157 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %arrayidx110, align 4
  %158 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %io_base45, align 4
  %add.ptr.i351 = getelementptr i8, ptr %159, i32 516
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i351) #7, !srcloc !46
  %161 = tail call i32 @llvm.bswap.i32(i32 %160) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx113 = getelementptr i32, ptr %data, i32 547
  %162 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %161, ptr %arrayidx113, align 4
  %163 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %io_base45, align 4
  %add.ptr.i352 = getelementptr i8, ptr %164, i32 520
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i352) #7, !srcloc !46
  %166 = tail call i32 @llvm.bswap.i32(i32 %165) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx116 = getelementptr i32, ptr %data, i32 548
  %167 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %arrayidx116, align 4
  %168 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %io_base45, align 4
  %add.ptr.i353 = getelementptr i8, ptr %169, i32 524
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i353) #7, !srcloc !46
  %171 = tail call i32 @llvm.bswap.i32(i32 %170) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx119 = getelementptr i32, ptr %data, i32 549
  %172 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %arrayidx119, align 4
  %173 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %io_base45, align 4
  %add.ptr.i354 = getelementptr i8, ptr %174, i32 528
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i354) #7, !srcloc !46
  %176 = tail call i32 @llvm.bswap.i32(i32 %175) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx122 = getelementptr i32, ptr %data, i32 550
  %177 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %176, ptr %arrayidx122, align 4
  %178 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %io_base45, align 4
  %add.ptr.i355 = getelementptr i8, ptr %179, i32 532
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i355) #7, !srcloc !46
  %181 = tail call i32 @llvm.bswap.i32(i32 %180) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx125 = getelementptr i32, ptr %data, i32 551
  %182 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %181, ptr %arrayidx125, align 4
  %183 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %io_base45, align 4
  %add.ptr.i356 = getelementptr i8, ptr %184, i32 536
  %185 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i356) #7, !srcloc !46
  %186 = tail call i32 @llvm.bswap.i32(i32 %185) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx128 = getelementptr i32, ptr %data, i32 552
  %187 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %186, ptr %arrayidx128, align 4
  %188 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %io_base45, align 4
  %add.ptr.i357 = getelementptr i8, ptr %189, i32 540
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i357) #7, !srcloc !46
  %191 = tail call i32 @llvm.bswap.i32(i32 %190) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx131 = getelementptr i32, ptr %data, i32 553
  %192 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %191, ptr %arrayidx131, align 4
  %193 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %io_base45, align 4
  %add.ptr.i358 = getelementptr i8, ptr %194, i32 544
  %195 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i358) #7, !srcloc !46
  %196 = tail call i32 @llvm.bswap.i32(i32 %195) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx134 = getelementptr i32, ptr %data, i32 554
  %197 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %196, ptr %arrayidx134, align 4
  %198 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %io_base45, align 4
  %add.ptr.i359 = getelementptr i8, ptr %199, i32 548
  %200 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i359) #7, !srcloc !46
  %201 = tail call i32 @llvm.bswap.i32(i32 %200) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx137 = getelementptr i32, ptr %data, i32 555
  %202 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %201, ptr %arrayidx137, align 4
  %203 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %io_base45, align 4
  %add.ptr.i360 = getelementptr i8, ptr %204, i32 552
  %205 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i360) #7, !srcloc !46
  %206 = tail call i32 @llvm.bswap.i32(i32 %205) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx140 = getelementptr i32, ptr %data, i32 556
  %207 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %206, ptr %arrayidx140, align 4
  %208 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %io_base45, align 4
  %add.ptr.i361 = getelementptr i8, ptr %209, i32 556
  %210 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i361) #7, !srcloc !46
  %211 = tail call i32 @llvm.bswap.i32(i32 %210) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx143 = getelementptr i32, ptr %data, i32 557
  %212 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %211, ptr %arrayidx143, align 4
  %213 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %io_base45, align 4
  %add.ptr.i362 = getelementptr i8, ptr %214, i32 768
  %215 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i362) #7, !srcloc !46
  %216 = tail call i32 @llvm.bswap.i32(i32 %215) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx146 = getelementptr i32, ptr %data, i32 558
  %217 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %216, ptr %arrayidx146, align 4
  %218 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %io_base45, align 4
  %add.ptr.i363 = getelementptr i8, ptr %219, i32 772
  %220 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i363) #7, !srcloc !46
  %221 = tail call i32 @llvm.bswap.i32(i32 %220) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx149 = getelementptr i32, ptr %data, i32 559
  %222 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %221, ptr %arrayidx149, align 4
  %223 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %io_base45, align 4
  %add.ptr.i364 = getelementptr i8, ptr %224, i32 776
  %225 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i364) #7, !srcloc !46
  %226 = tail call i32 @llvm.bswap.i32(i32 %225) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx152 = getelementptr i32, ptr %data, i32 560
  %227 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %226, ptr %arrayidx152, align 4
  %228 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %io_base45, align 4
  %add.ptr.i365 = getelementptr i8, ptr %229, i32 780
  %230 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i365) #7, !srcloc !46
  %231 = tail call i32 @llvm.bswap.i32(i32 %230) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx155 = getelementptr i32, ptr %data, i32 561
  %232 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %231, ptr %arrayidx155, align 4
  %233 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %io_base45, align 4
  %add.ptr.i366 = getelementptr i8, ptr %234, i32 784
  %235 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i366) #7, !srcloc !46
  %236 = tail call i32 @llvm.bswap.i32(i32 %235) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx158 = getelementptr i32, ptr %data, i32 562
  %237 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %236, ptr %arrayidx158, align 4
  %238 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %io_base45, align 4
  %add.ptr.i367 = getelementptr i8, ptr %239, i32 788
  %240 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i367) #7, !srcloc !46
  %241 = tail call i32 @llvm.bswap.i32(i32 %240) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx161 = getelementptr i32, ptr %data, i32 563
  %242 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %241, ptr %arrayidx161, align 4
  %243 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %io_base45, align 4
  %add.ptr.i368 = getelementptr i8, ptr %244, i32 792
  %245 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i368) #7, !srcloc !46
  %246 = tail call i32 @llvm.bswap.i32(i32 %245) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx164 = getelementptr i32, ptr %data, i32 564
  %247 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %246, ptr %arrayidx164, align 4
  %248 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %io_base45, align 4
  %add.ptr.i369 = getelementptr i8, ptr %249, i32 796
  %250 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i369) #7, !srcloc !46
  %251 = tail call i32 @llvm.bswap.i32(i32 %250) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx167 = getelementptr i32, ptr %data, i32 565
  %252 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %251, ptr %arrayidx167, align 4
  %253 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %io_base45, align 4
  %add.ptr.i370 = getelementptr i8, ptr %254, i32 800
  %255 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i370) #7, !srcloc !46
  %256 = tail call i32 @llvm.bswap.i32(i32 %255) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx170 = getelementptr i32, ptr %data, i32 566
  %257 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %256, ptr %arrayidx170, align 4
  %258 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %io_base45, align 4
  %add.ptr.i371 = getelementptr i8, ptr %259, i32 804
  %260 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i371) #7, !srcloc !46
  %261 = tail call i32 @llvm.bswap.i32(i32 %260) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx173 = getelementptr i32, ptr %data, i32 567
  %262 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %261, ptr %arrayidx173, align 4
  %263 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %io_base45, align 4
  %add.ptr.i372 = getelementptr i8, ptr %264, i32 808
  %265 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i372) #7, !srcloc !46
  %266 = tail call i32 @llvm.bswap.i32(i32 %265) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx176 = getelementptr i32, ptr %data, i32 568
  %267 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 %266, ptr %arrayidx176, align 4
  %268 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %io_base45, align 4
  %add.ptr.i373 = getelementptr i8, ptr %269, i32 812
  %270 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i373) #7, !srcloc !46
  %271 = tail call i32 @llvm.bswap.i32(i32 %270) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx179 = getelementptr i32, ptr %data, i32 569
  %272 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 %271, ptr %arrayidx179, align 4
  %273 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %io_base45, align 4
  %add.ptr.i374 = getelementptr i8, ptr %274, i32 816
  %275 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i374) #7, !srcloc !46
  %276 = tail call i32 @llvm.bswap.i32(i32 %275) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx182 = getelementptr i32, ptr %data, i32 570
  %277 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 %276, ptr %arrayidx182, align 4
  %278 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %io_base45, align 4
  %add.ptr.i375 = getelementptr i8, ptr %279, i32 820
  %280 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i375) #7, !srcloc !46
  %281 = tail call i32 @llvm.bswap.i32(i32 %280) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %arrayidx185 = getelementptr i32, ptr %data, i32 571
  %282 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %281, ptr %arrayidx185, align 4
  %uglygep379 = getelementptr i8, ptr %data, i32 2288
  %283 = call ptr @memset(ptr %uglygep379, i32 238, i32 16)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_rss_key_fill(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_ppe.c", i32 290, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @hns_ppe_wait_tx_fifo_clean._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @hns_ppe_wait_tx_fifo_clean._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_ppe.c", i32 468, i32 25}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_ppe.c", i32 469, i32 25}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_ppe.c", i32 470, i32 25}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_ppe.c", i32 471, i32 25}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_ppe.c", i32 472, i32 25}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_ppe.c", i32 473, i32 25}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_ppe.c", i32 474, i32 25}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_ppe.c", i32 476, i32 25}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_ppe.c", i32 477, i32 25}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_ppe.c", i32 478, i32 25}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_ppe.c", i32 479, i32 25}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_ppe.c", i32 480, i32 25}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_dsaf_ppe.c", i32 242, i32 4}
!34 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @hns_ppe_common_init_hw._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @hns_ppe_common_init_hw._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i64 6725859}
!47 = !{i64 2157236911}
!48 = !{i64 2157236110}
!49 = !{i64 6725441}
