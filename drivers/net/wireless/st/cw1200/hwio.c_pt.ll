; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/st/cw1200/hwio.c_pt.bc'
source_filename = "../drivers/net/wireless/st/cw1200/hwio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cw1200_common = type <{ ptr, ptr, ptr, %struct.ieee80211_low_level_stats, [6 x i8], [2 x i8], ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr, ptr, %struct.mutex, [4 x %struct.cw1200_queue], %struct.cw1200_queue_stats, i32, i32, i32, ptr, ptr, ptr, %struct.wsm_edca_params, %struct.wsm_tx_queue_params, %struct.wsm_mib_association_mode, %struct.wsm_set_bss_params, %struct.cw1200_ht_info, %struct.wsm_set_pm, %struct.wsm_set_pm, i32, i32, i8, [3 x i8], i32, i32, %struct.wait_queue_head, i8, i8, [2 x i8], i32, i8, [3 x i8], i32, i8, %struct.wsm_rx_filter, %struct.wsm_mib_multicast_filter, i8, i8, i8, %struct.work_struct, %struct.work_struct, i8, i8, [2 x i8], %struct.cw1200_pm_state, %struct.wsm_p2p_ps_modeinfo, %struct.wsm_uapsd_info, i8, i8, i8, i8, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, %struct.work_struct, i32, %struct.wait_queue_head, %struct.wait_queue_head, i8, i8, i8, i8, i32, i8, i8, [2 x i8], %struct.cw1200_scan, %struct.atomic_t, %struct.delayed_work, %struct.wsm_startup_ind, %struct.mutex, %struct.wsm_buf, %struct.wsm_cmd, %struct.wait_queue_head, %struct.wait_queue_head, i32, %struct.atomic_t, i32, i32, i32, i8, [3 x i8], %struct.delayed_work, %struct.work_struct, %struct.work_struct, i32, i32, i8, i8, [2 x i8], %struct.work_struct, i32, [11 x %struct.wsm_add_key], i32, [5 x %struct.cw1200_link_entry], %struct.work_struct, %struct.delayed_work, i32, i32, i8, [3 x i8], %struct.spinlock, i8, i8, [2 x i8], %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.spinlock, %struct.list_head, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i32, i32, i32, %struct.work_struct, %struct.tx_policy_cache, %struct.work_struct, i32, %struct.wait_queue_head, %struct.work_struct, [6 x i8], i8, i8 }>
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.cw1200_queue = type { ptr, i32, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, i8, %struct.spinlock, i8, i8, %struct.timer_list, i32 }
%struct.cw1200_queue_stats = type { %struct.spinlock, ptr, i32, i32, %struct.wait_queue_head, ptr, ptr }
%struct.wsm_edca_params = type { [4 x %struct.wsm_edca_queue_params], [4 x i8] }
%struct.wsm_edca_queue_params = type { i16, i16, i16, i16, i32 }
%struct.wsm_tx_queue_params = type { [4 x %struct.wsm_set_tx_queue_params] }
%struct.wsm_set_tx_queue_params = type { i8, i16, i32 }
%struct.wsm_mib_association_mode = type { i8, i8, i8, i8, i32 }
%struct.wsm_set_bss_params = type { i8, i8, i16, i32 }
%struct.cw1200_ht_info = type { %struct.ieee80211_sta_ht_cap, i32, i16 }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.wsm_set_pm = type { i8, i8, i8, i8 }
%struct.wsm_rx_filter = type { i8, i8, i8, i8 }
%struct.wsm_mib_multicast_filter = type { i32, i32, [8 x [6 x i8]] }
%struct.cw1200_pm_state = type { ptr, %struct.timer_list, ptr, %struct.spinlock }
%struct.wsm_p2p_ps_modeinfo = type { i8, i8, i8, i8, i32, i32, i32 }
%struct.wsm_uapsd_info = type { i16, i16, i16, i16 }
%struct.cw1200_scan = type { %struct.semaphore, %struct.work_struct, %struct.delayed_work, ptr, ptr, ptr, ptr, [2 x %struct.wsm_ssid], i32, i32, i32, %struct.atomic_t, %struct.delayed_work, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wsm_ssid = type { [32 x i8], i32 }
%struct.wsm_startup_ind = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [128 x i8], [4 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wsm_buf = type { ptr, ptr, ptr }
%struct.wsm_cmd = type { %struct.spinlock, i32, ptr, i32, ptr, i32, i16 }
%struct.atomic_t = type { i32 }
%struct.wsm_add_key = type { i8, i8, i16, %union.anon.132 }
%union.anon.132 = type { %struct.anon.135 }
%struct.anon.135 = type { [6 x i8], i16, [16 x i8], [8 x i8], [8 x i8] }
%struct.cw1200_link_entry = type { i32, i32, i32, [6 x i8], [8 x i8], %struct.sk_buff_head }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.tx_policy_cache = type { [8 x %struct.tx_policy_cache_entry], %struct.list_head, %struct.list_head, %struct.spinlock }
%struct.tx_policy_cache_entry = type { %struct.tx_policy, %struct.list_head }
%struct.tx_policy = type { %union.anon.141, i8, i8, i8, i8 }
%union.anon.141 = type { [3 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hwbus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cw1200_data_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\013error :[%d]\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cw1200_data_read\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/st/cw1200/hwio.c\00", [58 x i8] zeroinitializer }, align 32
@cw1200_data_read._entry_ptr = internal global ptr @cw1200_data_read._entry, section ".printk_index", align 4
@cw1200_data_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cw1200_data_write\00", [46 x i8] zeroinitializer }, align 32
@cw1200_data_write._entry_ptr = internal global ptr @cw1200_data_write._entry, section ".printk_index", align 4
@cw1200_indirect_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013Can't read more than 0xfff words.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cw1200_indirect_read\00", [43 x i8] zeroinitializer }, align 32
@cw1200_indirect_read._entry_ptr = internal global ptr @cw1200_indirect_read._entry, section ".printk_index", align 4
@cw1200_indirect_read._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013Can't write address register.\0A\00", [63 x i8] zeroinitializer }, align 32
@cw1200_indirect_read._entry_ptr.8 = internal global ptr @cw1200_indirect_read._entry.6, section ".printk_index", align 4
@cw1200_indirect_read._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.2, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013Can't read config register.\0A\00", [33 x i8] zeroinitializer }, align 32
@cw1200_indirect_read._entry_ptr.11 = internal global ptr @cw1200_indirect_read._entry.9, section ".printk_index", align 4
@cw1200_indirect_read._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013Can't write prefetch bit.\0A\00", [35 x i8] zeroinitializer }, align 32
@cw1200_indirect_read._entry_ptr.14 = internal global ptr @cw1200_indirect_read._entry.12, section ".printk_index", align 4
@cw1200_indirect_read._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.2, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013Can't check prefetch bit.\0A\00", [35 x i8] zeroinitializer }, align 32
@cw1200_indirect_read._entry_ptr.17 = internal global ptr @cw1200_indirect_read._entry.15, section ".printk_index", align 4
@cw1200_indirect_read._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.2, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Prefetch bit is not cleared.\0A\00", [32 x i8] zeroinitializer }, align 32
@cw1200_indirect_read._entry_ptr.20 = internal global ptr @cw1200_indirect_read._entry.18, section ".printk_index", align 4
@cw1200_indirect_read._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.5, ptr @.str.2, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013Can't read data port.\0A\00", [39 x i8] zeroinitializer }, align 32
@cw1200_indirect_read._entry_ptr.23 = internal global ptr @cw1200_indirect_read._entry.21, section ".printk_index", align 4
@cw1200_apb_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013Can't write more than 0xfff words.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cw1200_apb_write\00", [47 x i8] zeroinitializer }, align 32
@cw1200_apb_write._entry_ptr = internal global ptr @cw1200_apb_write._entry, section ".printk_index", align 4
@cw1200_apb_write._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.25, ptr @.str.2, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cw1200_apb_write._entry_ptr.27 = internal global ptr @cw1200_apb_write._entry.26, section ".printk_index", align 4
@cw1200_apb_write._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.25, ptr @.str.2, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013Can't write data port.\0A\00", [38 x i8] zeroinitializer }, align 32
@cw1200_apb_write._entry_ptr.30 = internal global ptr @cw1200_apb_write._entry.28, section ".printk_index", align 4
@__cw1200_irq_enable._entry = internal constant %struct.pi_entry { ptr @.str.10, ptr @.str.31, ptr @.str.2, i32 276, ptr null, ptr null }, align 1
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__cw1200_irq_enable\00", [44 x i8] zeroinitializer }, align 32
@__cw1200_irq_enable._entry_ptr = internal global ptr @__cw1200_irq_enable._entry, section ".printk_index", align 4
@__cw1200_irq_enable._entry.32 = internal constant %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 287, ptr null, ptr null }, align 1
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Can't write config register.\0A\00", [32 x i8] zeroinitializer }, align 32
@__cw1200_irq_enable._entry_ptr.34 = internal global ptr @__cw1200_irq_enable._entry.32, section ".printk_index", align 4
@__cw1200_irq_enable._entry.35 = internal constant %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.2, i32 293, ptr null, ptr null }, align 1
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Can't read control register.\0A\00", [32 x i8] zeroinitializer }, align 32
@__cw1200_irq_enable._entry_ptr.37 = internal global ptr @__cw1200_irq_enable._entry.35, section ".printk_index", align 4
@__cw1200_irq_enable._entry.38 = internal constant %struct.pi_entry { ptr @.str.39, ptr @.str.31, ptr @.str.2, i32 304, ptr null, ptr null }, align 1
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013Can't write control register.\0A\00", [63 x i8] zeroinitializer }, align 32
@__cw1200_irq_enable._entry_ptr.40 = internal global ptr @__cw1200_irq_enable._entry.38, section ".printk_index", align 4
@__cw1200_reg_read._entry = internal constant %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 38, ptr null, ptr null }, align 1
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013buffer is not aligned.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__cw1200_reg_read\00", [46 x i8] zeroinitializer }, align 32
@__cw1200_reg_read._entry_ptr = internal global ptr @__cw1200_reg_read._entry, section ".printk_index", align 4
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 136, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 163, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 178, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 186, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 193, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 201, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 209, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 219, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 226, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 241, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 250, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 258, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 276, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 287, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 293, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 304, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.140 = private constant [41 x i8] c"../drivers/net/wireless/st/cw1200/hwio.c\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 38, i32 3 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__cw1200_irq_enable._entry, ptr @__cw1200_irq_enable._entry.32, ptr @__cw1200_irq_enable._entry.35, ptr @__cw1200_irq_enable._entry.38, ptr @__cw1200_irq_enable._entry_ptr, ptr @__cw1200_irq_enable._entry_ptr.34, ptr @__cw1200_irq_enable._entry_ptr.37, ptr @__cw1200_irq_enable._entry_ptr.40, ptr @__cw1200_reg_read._entry, ptr @__cw1200_reg_read._entry_ptr, ptr @cw1200_apb_write._entry, ptr @cw1200_apb_write._entry.26, ptr @cw1200_apb_write._entry.28, ptr @cw1200_apb_write._entry_ptr, ptr @cw1200_apb_write._entry_ptr.27, ptr @cw1200_apb_write._entry_ptr.30, ptr @cw1200_data_read._entry, ptr @cw1200_data_read._entry_ptr, ptr @cw1200_data_write._entry, ptr @cw1200_data_write._entry_ptr, ptr @cw1200_indirect_read._entry, ptr @cw1200_indirect_read._entry.12, ptr @cw1200_indirect_read._entry.15, ptr @cw1200_indirect_read._entry.18, ptr @cw1200_indirect_read._entry.21, ptr @cw1200_indirect_read._entry.6, ptr @cw1200_indirect_read._entry.9, ptr @cw1200_indirect_read._entry_ptr, ptr @cw1200_indirect_read._entry_ptr.11, ptr @cw1200_indirect_read._entry_ptr.14, ptr @cw1200_indirect_read._entry_ptr.17, ptr @cw1200_indirect_read._entry_ptr.20, ptr @cw1200_indirect_read._entry_ptr.23, ptr @cw1200_indirect_read._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_data_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_data_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_indirect_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_indirect_read._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_indirect_read._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_indirect_read._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_indirect_read._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_indirect_read._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_indirect_read._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_apb_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_apb_write._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_apb_write._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_reg_read(ptr nocapture noundef readonly %priv, i16 noundef zeroext %addr, ptr noundef %buf, i32 noundef %buf_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hwbus_ops = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwbus_ops, align 4
  %lock = getelementptr inbounds %struct.hwbus_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %hwbus_priv = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 7
  %4 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwbus_priv, align 4
  tail call void %3(ptr noundef %5) #5
  %6 = ptrtoint ptr %buf to i32
  %and.i = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %buf_len)
  %cmp.i = icmp ugt i32 %buf_len, 4
  %spec.select.i = and i1 %cmp.i, %tobool.not.i
  br i1 %spec.select.i, label %do.end.i, label %if.end26.i, !prof !81

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 37, i32 noundef 9, ptr noundef null) #5
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #8
  br label %__cw1200_reg_read.exit

if.end26.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %shl.i = shl i16 %addr, 2
  %7 = and i16 %shl.i, 28
  %and32.i = zext i16 %7 to i32
  %8 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hwbus_ops, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hwbus_priv, align 4
  %call35.i = tail call i32 %11(ptr noundef %13, i32 noundef %and32.i, ptr noundef %buf, i32 noundef %buf_len) #5
  br label %__cw1200_reg_read.exit

__cw1200_reg_read.exit:                           ; preds = %if.end26.i, %do.end.i
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ %call35.i, %if.end26.i ]
  %14 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hwbus_ops, align 4
  %unlock = getelementptr inbounds %struct.hwbus_ops, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %unlock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %unlock, align 4
  %18 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hwbus_priv, align 4
  tail call void %17(ptr noundef %19) #5
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_reg_write(ptr nocapture noundef readonly %priv, i16 noundef zeroext %addr, ptr noundef %buf, i32 noundef %buf_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hwbus_ops = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwbus_ops, align 4
  %lock = getelementptr inbounds %struct.hwbus_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %hwbus_priv = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 7
  %4 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwbus_priv, align 4
  tail call void %3(ptr noundef %5) #5
  %shl.i = shl i16 %addr, 2
  %6 = and i16 %shl.i, 28
  %and5.i = zext i16 %6 to i32
  %7 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hwbus_ops, align 4
  %hwbus_memcpy_toio.i = getelementptr inbounds %struct.hwbus_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %hwbus_memcpy_toio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hwbus_memcpy_toio.i, align 4
  %11 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hwbus_priv, align 4
  %call.i = tail call i32 %10(ptr noundef %12, i32 noundef %and5.i, ptr noundef %buf, i32 noundef %buf_len) #5
  %13 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hwbus_ops, align 4
  %unlock = getelementptr inbounds %struct.hwbus_ops, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %unlock to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %unlock, align 4
  %17 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hwbus_priv, align 4
  tail call void %16(ptr noundef %18) #5
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_data_read(ptr nocapture noundef %priv, ptr noundef %buf, i32 noundef %buf_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %buf_id_rx1 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 78
  %0 = ptrtoint ptr %buf_id_rx1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf_id_rx1, align 1
  %conv = zext i8 %1 to i32
  %hwbus_ops = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 6
  %2 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwbus_ops, align 4
  %lock = getelementptr inbounds %struct.hwbus_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lock, align 4
  %hwbus_priv = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 7
  %6 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwbus_priv, align 4
  tail call void %5(ptr noundef %7) #5
  %add = add nuw nsw i32 %conv, 1
  %8 = ptrtoint ptr %buf to i32
  %and.i = and i32 %8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %buf_len)
  %cmp.i = icmp ugt i32 %buf_len, 4
  %spec.select.i = and i1 %cmp.i, %tobool.not.i
  %and28.i = shl nuw nsw i32 %add, 7
  %shl29.i = and i32 %and28.i, 3968
  %or34.i = or i32 %shl29.i, 8
  br i1 %spec.select.i, label %__cw1200_reg_read.exit.thread, label %__cw1200_reg_read.exit, !prof !81

__cw1200_reg_read.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 37, i32 noundef 9, ptr noundef null) #5
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #5
  %call6.c = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef -22) #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 37, i32 noundef 9, ptr noundef null) #5
  %call.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #5
  %call6.1.c = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef -22) #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 37, i32 noundef 9, ptr noundef null) #5
  %call.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #8
  br label %if.else.2

__cw1200_reg_read.exit:                           ; preds = %entry
  %11 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hwbus_ops, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %15 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hwbus_priv, align 4
  %call35.i = tail call i32 %14(ptr noundef %16, i32 noundef %or34.i, ptr noundef %buf, i32 noundef %buf_len) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool.not = icmp eq i32 %call35.i, 0
  br i1 %tobool.not, label %__cw1200_reg_read.exit.if.then_crit_edge, label %__cw1200_reg_read.exit.1.critedge

__cw1200_reg_read.exit.if.then_crit_edge:         ; preds = %__cw1200_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %__cw1200_reg_read.exit.2.critedge.if.then_crit_edge, %__cw1200_reg_read.exit.1.critedge.if.then_crit_edge, %__cw1200_reg_read.exit.if.then_crit_edge
  %17 = trunc i32 %add to i8
  %conv4 = and i8 %17, 3
  %18 = ptrtoint ptr %buf_id_rx1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv4, ptr %buf_id_rx1, align 1
  br label %while.end

__cw1200_reg_read.exit.1.critedge:                ; preds = %__cw1200_reg_read.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #5
  %call6.c25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call35.i) #8
  %20 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hwbus_ops, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %24 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hwbus_priv, align 4
  %call35.i.1 = tail call i32 %23(ptr noundef %25, i32 noundef %or34.i, ptr noundef %buf, i32 noundef %buf_len) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i.1)
  %tobool.not.1 = icmp eq i32 %call35.i.1, 0
  br i1 %tobool.not.1, label %__cw1200_reg_read.exit.1.critedge.if.then_crit_edge, label %__cw1200_reg_read.exit.2.critedge

__cw1200_reg_read.exit.1.critedge.if.then_crit_edge: ; preds = %__cw1200_reg_read.exit.1.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

__cw1200_reg_read.exit.2.critedge:                ; preds = %__cw1200_reg_read.exit.1.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #5
  %call6.1.c26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call35.i.1) #8
  %27 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hwbus_ops, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %31 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hwbus_priv, align 4
  %call35.i.2 = tail call i32 %30(ptr noundef %32, i32 noundef %or34.i, ptr noundef %buf, i32 noundef %buf_len) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i.2)
  %tobool.not.2 = icmp eq i32 %call35.i.2, 0
  br i1 %tobool.not.2, label %__cw1200_reg_read.exit.2.critedge.if.then_crit_edge, label %__cw1200_reg_read.exit.2.critedge.if.else.2_crit_edge

__cw1200_reg_read.exit.2.critedge.if.else.2_crit_edge: ; preds = %__cw1200_reg_read.exit.2.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.2

__cw1200_reg_read.exit.2.critedge.if.then_crit_edge: ; preds = %__cw1200_reg_read.exit.2.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.else.2:                                        ; preds = %__cw1200_reg_read.exit.2.critedge.if.else.2_crit_edge, %__cw1200_reg_read.exit.thread
  %retval.0.i22.2 = phi i32 [ -22, %__cw1200_reg_read.exit.thread ], [ %call35.i.2, %__cw1200_reg_read.exit.2.critedge.if.else.2_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #5
  %call6.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %retval.0.i22.2) #8
  br label %while.end

while.end:                                        ; preds = %if.else.2, %if.then
  %ret.1 = phi i32 [ 0, %if.then ], [ %retval.0.i22.2, %if.else.2 ]
  %34 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hwbus_ops, align 4
  %unlock = getelementptr inbounds %struct.hwbus_ops, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %unlock to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %unlock, align 4
  %38 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hwbus_priv, align 4
  tail call void %37(ptr noundef %39) #5
  ret i32 %ret.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_data_write(ptr nocapture noundef %priv, ptr noundef %buf, i32 noundef %buf_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %buf_id_tx1 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 77
  %0 = ptrtoint ptr %buf_id_tx1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf_id_tx1, align 4
  %conv = zext i8 %1 to i32
  %hwbus_ops = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 6
  %2 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwbus_ops, align 4
  %lock = getelementptr inbounds %struct.hwbus_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lock, align 4
  %hwbus_priv = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 7
  %6 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwbus_priv, align 4
  tail call void %5(ptr noundef %7) #5
  %and.i = shl nuw nsw i32 %conv, 7
  %shl2.i = and i32 %and.i, 3968
  %or7.i = or i32 %shl2.i, 8
  %8 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hwbus_ops, align 4
  %hwbus_memcpy_toio.i = getelementptr inbounds %struct.hwbus_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %hwbus_memcpy_toio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hwbus_memcpy_toio.i, align 4
  %12 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hwbus_priv, align 4
  %call.i = tail call i32 %11(ptr noundef %13, i32 noundef %or7.i, ptr noundef %buf, i32 noundef %buf_len) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %if.else

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %if.else.1.if.then_crit_edge, %if.else.if.then_crit_edge, %entry.if.then_crit_edge
  %add = add i8 %1, 1
  %and = and i8 %add, 31
  %14 = ptrtoint ptr %buf_id_tx1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %and, ptr %buf_id_tx1, align 4
  br label %while.end

if.else:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #5
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call.i) #8
  %16 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hwbus_ops, align 4
  %hwbus_memcpy_toio.i.1 = getelementptr inbounds %struct.hwbus_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %hwbus_memcpy_toio.i.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hwbus_memcpy_toio.i.1, align 4
  %20 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hwbus_priv, align 4
  %call.i.1 = tail call i32 %19(ptr noundef %21, i32 noundef %or7.i, ptr noundef %buf, i32 noundef %buf_len) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.1, label %if.else.if.then_crit_edge, label %if.else.1

if.else.if.then_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.else.1:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #5
  %call5.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call.i.1) #8
  %23 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hwbus_ops, align 4
  %hwbus_memcpy_toio.i.2 = getelementptr inbounds %struct.hwbus_ops, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %hwbus_memcpy_toio.i.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hwbus_memcpy_toio.i.2, align 4
  %27 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hwbus_priv, align 4
  %call.i.2 = tail call i32 %26(ptr noundef %28, i32 noundef %or7.i, ptr noundef %buf, i32 noundef %buf_len) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool.not.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool.not.2, label %if.else.1.if.then_crit_edge, label %if.else.2

if.else.1.if.then_crit_edge:                      ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.else.2:                                        ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #5
  %call5.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call.i.2) #8
  br label %while.end

while.end:                                        ; preds = %if.else.2, %if.then
  %ret.1 = phi i32 [ 0, %if.then ], [ %call.i.2, %if.else.2 ]
  %30 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hwbus_ops, align 4
  %unlock = getelementptr inbounds %struct.hwbus_ops, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %unlock to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %unlock, align 4
  %34 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hwbus_priv, align 4
  tail call void %33(ptr noundef %35) #5
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_indirect_read(ptr nocapture noundef readonly %priv, i32 noundef %addr, ptr noundef %buf, i32 noundef %buf_len, i32 noundef %prefetch, i16 noundef zeroext %port_addr) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i108 = alloca i32, align 4
  %tmp.i103 = alloca i32, align 4
  %tmp.i100 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %buf_len)
  %cmp = icmp ugt i32 %buf_len, 8191
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %hwbus_ops = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwbus_ops, align 4
  %lock = getelementptr inbounds %struct.hwbus_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %hwbus_priv = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 7
  %4 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwbus_priv, align 4
  tail call void %3(ptr noundef %5) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #5
  %6 = tail call i32 @llvm.bswap.i32(i32 %addr) #5
  %7 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tmp.i, align 4
  %8 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hwbus_ops, align 4
  %hwbus_memcpy_toio.i.i = getelementptr inbounds %struct.hwbus_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %hwbus_memcpy_toio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hwbus_memcpy_toio.i.i, align 4
  %12 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hwbus_priv, align 4
  %call.i.i = call i32 %11(ptr noundef %13, i32 noundef 16, ptr noundef nonnull %tmp.i, i32 noundef 4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2 = icmp slt i32 %call.i.i, 0
  br i1 %cmp2, label %if.end.out.sink.split_crit_edge, label %if.end9

if.end.out.sink.split_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

if.end9:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i100) #5
  %14 = ptrtoint ptr %tmp.i100 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %tmp.i100, align 4, !annotation !82
  %15 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hwbus_ops, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %19 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hwbus_priv, align 4
  %call35.i.i = call i32 %18(ptr noundef %20, i32 noundef 0, ptr noundef nonnull %tmp.i100, i32 noundef 4) #5
  %21 = ptrtoint ptr %tmp.i100 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tmp.i100, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i.i)
  %cmp11 = icmp slt i32 %call35.i.i, 0
  br i1 %cmp11, label %if.end9.out.sink.split_crit_edge, label %if.end18

if.end9.out.sink.split_crit_edge:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

if.end18:                                         ; preds = %if.end9
  %23 = call i32 @llvm.bswap.i32(i32 %22) #5
  %or = or i32 %23, %prefetch
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i103) #5
  %24 = call i32 @llvm.bswap.i32(i32 %or) #5
  %25 = ptrtoint ptr %tmp.i103 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %tmp.i103, align 4
  %26 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hwbus_ops, align 4
  %hwbus_memcpy_toio.i.i105 = getelementptr inbounds %struct.hwbus_ops, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %hwbus_memcpy_toio.i.i105 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hwbus_memcpy_toio.i.i105, align 4
  %30 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hwbus_priv, align 4
  %call.i.i107 = call i32 %29(ptr noundef %31, i32 noundef 0, ptr noundef nonnull %tmp.i103, i32 noundef 4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i103) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i107)
  %cmp20 = icmp slt i32 %call.i.i107, 0
  br i1 %cmp20, label %if.end18.out.sink.split_crit_edge, label %if.end18.for.body_crit_edge

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  br label %for.body

if.end18.out.sink.split_crit_edge:                ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end18.for.body_crit_edge
  %i.0119 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end18.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i108) #5
  %32 = ptrtoint ptr %tmp.i108 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %tmp.i108, align 4, !annotation !82
  %33 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hwbus_ops, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %37 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hwbus_priv, align 4
  %call35.i.i111 = call i32 %36(ptr noundef %38, i32 noundef 0, ptr noundef nonnull %tmp.i108, i32 noundef 4) #5
  %39 = ptrtoint ptr %tmp.i108 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tmp.i108, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i108) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i.i111)
  %cmp30 = icmp slt i32 %call35.i.i111, 0
  br i1 %cmp30, label %for.body.out.sink.split_crit_edge, label %if.end37

for.body.out.sink.split_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

if.end37:                                         ; preds = %for.body
  %41 = call i32 @llvm.bswap.i32(i32 %40) #5
  %and = and i32 %41, %prefetch
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end37.if.end61_crit_edge, label %while.cond.preheader

if.end37.if.end61_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

while.cond.preheader:                             ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0119)
  %tobool51.not117 = icmp eq i32 %i.0119, 0
  br i1 %tobool51.not117, label %while.cond.preheader.for.inc_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.for.inc_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %__ms.0118 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %i.0119, %while.cond.preheader.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.0118, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %42(i32 noundef 214748000) #5
  %tobool51.not = icmp eq i32 %dec, 0
  br i1 %tobool51.not, label %while.body.for.inc_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.for.inc_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %while.body.for.inc_crit_edge, %while.cond.preheader.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0119, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  br i1 %tobool.not, label %for.end.if.end61_crit_edge, label %for.end.out.sink.split_crit_edge

for.end.out.sink.split_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

for.end.if.end61_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

if.end61:                                         ; preds = %for.end.if.end61_crit_edge, %if.end37.if.end61_crit_edge
  %43 = ptrtoint ptr %buf to i32
  %and.i = and i32 %43, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %buf_len)
  %cmp.i = icmp ugt i32 %buf_len, 4
  %spec.select.i = and i1 %cmp.i, %tobool.not.i
  br i1 %spec.select.i, label %__cw1200_reg_read.exit.thread, label %__cw1200_reg_read.exit, !prof !81

__cw1200_reg_read.exit.thread:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 37, i32 noundef 9, ptr noundef null) #5
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #8
  br label %out.sink.split

__cw1200_reg_read.exit:                           ; preds = %if.end61
  %shl.i = shl i16 %port_addr, 2
  %44 = and i16 %shl.i, 28
  %and32.i = zext i16 %44 to i32
  %45 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hwbus_ops, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %49 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hwbus_priv, align 4
  %call35.i = call i32 %48(ptr noundef %50, i32 noundef %and32.i, ptr noundef %buf, i32 noundef %buf_len) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %cmp63 = icmp slt i32 %call35.i, 0
  br i1 %cmp63, label %__cw1200_reg_read.exit.out.sink.split_crit_edge, label %__cw1200_reg_read.exit.out_crit_edge

__cw1200_reg_read.exit.out_crit_edge:             ; preds = %__cw1200_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

__cw1200_reg_read.exit.out.sink.split_crit_edge:  ; preds = %__cw1200_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

out.sink.split:                                   ; preds = %__cw1200_reg_read.exit.out.sink.split_crit_edge, %__cw1200_reg_read.exit.thread, %for.end.out.sink.split_crit_edge, %for.body.out.sink.split_crit_edge, %if.end18.out.sink.split_crit_edge, %if.end9.out.sink.split_crit_edge, %if.end.out.sink.split_crit_edge
  %.str.22.sink = phi ptr [ @.str.7, %if.end.out.sink.split_crit_edge ], [ @.str.10, %if.end9.out.sink.split_crit_edge ], [ @.str.13, %if.end18.out.sink.split_crit_edge ], [ @.str.19, %for.end.out.sink.split_crit_edge ], [ @.str.22, %__cw1200_reg_read.exit.thread ], [ @.str.22, %__cw1200_reg_read.exit.out.sink.split_crit_edge ], [ @.str.16, %for.body.out.sink.split_crit_edge ]
  %ret.2.ph = phi i32 [ %call.i.i, %if.end.out.sink.split_crit_edge ], [ %call35.i.i, %if.end9.out.sink.split_crit_edge ], [ %call.i.i107, %if.end18.out.sink.split_crit_edge ], [ %call35.i.i111, %for.end.out.sink.split_crit_edge ], [ -22, %__cw1200_reg_read.exit.thread ], [ %call35.i, %__cw1200_reg_read.exit.out.sink.split_crit_edge ], [ %call35.i.i111, %for.body.out.sink.split_crit_edge ]
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.22.sink) #8
  br label %out

out:                                              ; preds = %out.sink.split, %__cw1200_reg_read.exit.out_crit_edge
  %ret.2 = phi i32 [ %call35.i, %__cw1200_reg_read.exit.out_crit_edge ], [ %ret.2.ph, %out.sink.split ]
  %51 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hwbus_ops, align 4
  %unlock = getelementptr inbounds %struct.hwbus_ops, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %unlock to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %unlock, align 4
  %55 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hwbus_priv, align 4
  call void %54(ptr noundef %56) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.2, %out ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_apb_write(ptr nocapture noundef readonly %priv, i32 noundef %addr, ptr noundef %buf, i32 noundef %buf_len) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %buf_len)
  %cmp = icmp ugt i32 %buf_len, 8191
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %hwbus_ops = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwbus_ops, align 4
  %lock = getelementptr inbounds %struct.hwbus_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %hwbus_priv = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 7
  %4 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwbus_priv, align 4
  tail call void %3(ptr noundef %5) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #5
  %6 = tail call i32 @llvm.bswap.i32(i32 %addr) #5
  %7 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tmp.i, align 4
  %8 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hwbus_ops, align 4
  %hwbus_memcpy_toio.i.i = getelementptr inbounds %struct.hwbus_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %hwbus_memcpy_toio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hwbus_memcpy_toio.i.i, align 4
  %12 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hwbus_priv, align 4
  %call.i.i = call i32 %11(ptr noundef %13, i32 noundef 16, ptr noundef nonnull %tmp.i, i32 noundef 4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2 = icmp slt i32 %call.i.i, 0
  br i1 %cmp2, label %if.end.out.sink.split_crit_edge, label %if.end9

if.end.out.sink.split_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

if.end9:                                          ; preds = %if.end
  %14 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hwbus_ops, align 4
  %hwbus_memcpy_toio.i = getelementptr inbounds %struct.hwbus_ops, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %hwbus_memcpy_toio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hwbus_memcpy_toio.i, align 4
  %18 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hwbus_priv, align 4
  %call.i = call i32 %17(ptr noundef %19, i32 noundef 20, ptr noundef %buf, i32 noundef %buf_len) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp11 = icmp slt i32 %call.i, 0
  br i1 %cmp11, label %if.end9.out.sink.split_crit_edge, label %if.end9.out_crit_edge

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end9.out.sink.split_crit_edge:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.end9.out.sink.split_crit_edge, %if.end.out.sink.split_crit_edge
  %.str.29.sink = phi ptr [ @.str.7, %if.end.out.sink.split_crit_edge ], [ @.str.29, %if.end9.out.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call.i.i, %if.end.out.sink.split_crit_edge ], [ %call.i, %if.end9.out.sink.split_crit_edge ]
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.29.sink) #8
  br label %out

out:                                              ; preds = %out.sink.split, %if.end9.out_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end9.out_crit_edge ], [ %ret.0.ph, %out.sink.split ]
  %20 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hwbus_ops, align 4
  %unlock = getelementptr inbounds %struct.hwbus_ops, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %unlock to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %unlock, align 4
  %24 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hwbus_priv, align 4
  call void %23(ptr noundef %25) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.0, %out ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__cw1200_irq_enable(ptr nocapture noundef readonly %priv, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i67 = alloca i16, align 2
  %tmp.i63 = alloca i16, align 2
  %tmp.i60 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_type = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %hw_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else15

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #5
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp.i, align 4, !annotation !82
  %hwbus_ops.i.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 6
  %3 = ptrtoint ptr %hwbus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hwbus_ops.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %hwbus_priv.i.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 7
  %7 = ptrtoint ptr %hwbus_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hwbus_priv.i.i, align 4
  %call35.i.i = call i32 %6(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %tmp.i, i32 noundef 4) #5
  %9 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i.i)
  %cmp1 = icmp slt i32 %call35.i.i, 0
  br i1 %cmp1, label %if.then.cleanup.sink.split_crit_edge, label %if.end

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %11 = and i32 %10, -769
  %12 = call i32 @llvm.bswap.i32(i32 %11)
  %masksel74 = select i1 %tobool.not, i32 0, i32 196608
  %storemerge59 = or i32 %12, %masksel74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i60) #5
  %13 = call i32 @llvm.bswap.i32(i32 %storemerge59) #5
  %14 = ptrtoint ptr %tmp.i60 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tmp.i60, align 4
  %15 = ptrtoint ptr %hwbus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hwbus_ops.i.i, align 4
  %hwbus_memcpy_toio.i.i = getelementptr inbounds %struct.hwbus_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %hwbus_memcpy_toio.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hwbus_memcpy_toio.i.i, align 4
  %19 = ptrtoint ptr %hwbus_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hwbus_priv.i.i, align 4
  %call.i.i = call i32 %18(ptr noundef %20, i32 noundef 0, ptr noundef nonnull %tmp.i60, i32 noundef 4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i60) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp7 = icmp slt i32 %call.i.i, 0
  br i1 %cmp7, label %if.end.cleanup.sink.split_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.else15:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i63) #5
  %21 = ptrtoint ptr %tmp.i63 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -1, ptr %tmp.i63, align 2, !annotation !82
  %hwbus_ops.i.i64 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 6
  %22 = ptrtoint ptr %hwbus_ops.i.i64 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hwbus_ops.i.i64, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %hwbus_priv.i.i65 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 7
  %26 = ptrtoint ptr %hwbus_priv.i.i65 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hwbus_priv.i.i65, align 4
  %call35.i.i66 = call i32 %25(ptr noundef %27, i32 noundef 0, ptr noundef nonnull %tmp.i63, i32 noundef 2) #5
  %28 = ptrtoint ptr %tmp.i63 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %tmp.i63, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i63) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i.i66)
  %cmp17 = icmp slt i32 %call35.i.i66, 0
  br i1 %cmp17, label %if.else15.cleanup.sink.split_crit_edge, label %if.end24

if.else15.cleanup.sink.split_crit_edge:           ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end24:                                         ; preds = %if.else15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool25.not = icmp eq i32 %enable, 0
  %30 = and i16 %29, -193
  %31 = call i16 @llvm.bswap.i16(i16 %30)
  %masksel = select i1 %tobool25.not, i16 0, i16 -16384
  %storemerge = or i16 %31, %masksel
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i67) #5
  %32 = call i16 @llvm.bswap.i16(i16 %storemerge) #5
  %33 = ptrtoint ptr %tmp.i67 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %tmp.i67, align 2
  %34 = ptrtoint ptr %hwbus_ops.i.i64 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hwbus_ops.i.i64, align 4
  %hwbus_memcpy_toio.i.i69 = getelementptr inbounds %struct.hwbus_ops, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %hwbus_memcpy_toio.i.i69 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hwbus_memcpy_toio.i.i69, align 4
  %38 = ptrtoint ptr %hwbus_priv.i.i65 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hwbus_priv.i.i65, align 4
  %call.i.i71 = call i32 %37(ptr noundef %39, i32 noundef 0, ptr noundef nonnull %tmp.i67, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i67) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i71)
  %cmp35 = icmp slt i32 %call.i.i71, 0
  br i1 %cmp35, label %if.end24.cleanup.sink.split_crit_edge, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end24.cleanup.sink.split_crit_edge:            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end24.cleanup.sink.split_crit_edge, %if.else15.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %.str.39.sink = phi ptr [ @.str.10, %if.then.cleanup.sink.split_crit_edge ], [ @.str.33, %if.end.cleanup.sink.split_crit_edge ], [ @.str.36, %if.else15.cleanup.sink.split_crit_edge ], [ @.str.39, %if.end24.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call35.i.i, %if.then.cleanup.sink.split_crit_edge ], [ %call.i.i, %if.end.cleanup.sink.split_crit_edge ], [ %call35.i.i66, %if.else15.cleanup.sink.split_crit_edge ], [ %call.i.i71, %if.end24.cleanup.sink.split_crit_edge ]
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.39.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end24.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/st/cw1200/hwio.c", i32 136, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @cw1200_data_read._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @cw1200_data_read._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/st/cw1200/hwio.c", i32 163, i32 4}
!8 = !{ptr @cw1200_data_write._entry, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @cw1200_data_write._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/st/cw1200/hwio.c", i32 178, i32 3}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @cw1200_indirect_read._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @cw1200_indirect_read._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/st/cw1200/hwio.c", i32 186, i32 3}
!17 = !{ptr @cw1200_indirect_read._entry.6, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @cw1200_indirect_read._entry_ptr.8, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/st/cw1200/hwio.c", i32 193, i32 3}
!21 = !{ptr @cw1200_indirect_read._entry.9, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @cw1200_indirect_read._entry_ptr.11, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/st/cw1200/hwio.c", i32 201, i32 3}
!25 = !{ptr @cw1200_indirect_read._entry.12, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @cw1200_indirect_read._entry_ptr.14, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/st/cw1200/hwio.c", i32 209, i32 4}
!29 = !{ptr @cw1200_indirect_read._entry.15, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @cw1200_indirect_read._entry_ptr.17, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/st/cw1200/hwio.c", i32 219, i32 3}
!33 = !{ptr @cw1200_indirect_read._entry.18, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @cw1200_indirect_read._entry_ptr.20, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/st/cw1200/hwio.c", i32 226, i32 3}
!37 = !{ptr @cw1200_indirect_read._entry.21, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @cw1200_indirect_read._entry_ptr.23, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/st/cw1200/hwio.c", i32 241, i32 3}
!41 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @cw1200_apb_write._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @cw1200_apb_write._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @cw1200_apb_write._entry.26, !45, !"_entry", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/st/cw1200/hwio.c", i32 250, i32 3}
!46 = !{ptr @cw1200_apb_write._entry_ptr.27, !45, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.29, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/st/cw1200/hwio.c", i32 258, i32 3}
!49 = !{ptr @cw1200_apb_write._entry.28, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @cw1200_apb_write._entry_ptr.30, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.31, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/st/cw1200/hwio.c", i32 276, i32 4}
!53 = !{ptr @__cw1200_irq_enable._entry, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @__cw1200_irq_enable._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.33, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/st/cw1200/hwio.c", i32 287, i32 4}
!57 = !{ptr @__cw1200_irq_enable._entry.32, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @__cw1200_irq_enable._entry_ptr.34, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.36, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/st/cw1200/hwio.c", i32 293, i32 4}
!61 = !{ptr @__cw1200_irq_enable._entry.35, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @__cw1200_irq_enable._entry_ptr.37, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.39, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/st/cw1200/hwio.c", i32 304, i32 4}
!65 = !{ptr @__cw1200_irq_enable._entry.38, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @__cw1200_irq_enable._entry_ptr.40, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.41, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/st/cw1200/hwio.c", i32 38, i32 3}
!69 = !{ptr @.str.42, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @__cw1200_reg_read._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @__cw1200_reg_read._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{!"branch_weights", i32 1, i32 2000}
!82 = !{!"auto-init"}
