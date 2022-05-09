; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ti/wl1251/debugfs.c_pt.bc'
source_filename = "../drivers/net/wireless/ti/wl1251/debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wl1251 = type { ptr, i8, ptr, ptr, i32, i32, i8, ptr, %struct.spinlock, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.boot_attr, ptr, i32, ptr, i32, [6 x i8], [6 x i8], i8, i8, i32, i8, i8, ptr, ptr, i32, %struct.sk_buff_head, i8, %struct.work_struct, [16 x ptr], i32, i32, i32, i32, i32, i32, %struct.work_struct, i32, [2 x i32], i8, i32, i32, i32, i32, i32, i8, %struct.delayed_work, i32, i8, i8, i16, i8, i32, i32, %struct.wl1251_stats, %struct.wl1251_debugfs, i32, i32, [8 x i8], ptr, ptr, i32, [21 x i8], i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.boot_attr = type { i32, i8, i8, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wl1251_stats = type { ptr, i32, i32, i32 }
%struct.wl1251_debugfs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.1, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.acx_statistics = type { %struct.acx_header, %struct.acx_tx_statistics, %struct.acx_rx_statistics, %struct.acx_dma_statistics, %struct.acx_isr_statistics, %struct.acx_wep_statistics, %struct.acx_pwr_statistics, %struct.acx_aes_statistics, %struct.acx_mic_statistics, %struct.acx_event_statistics, %struct.acx_ps_statistics, %struct.acx_rxpipe_statistics }
%struct.acx_header = type { %struct.wl1251_cmd_header, i16, i16 }
%struct.wl1251_cmd_header = type { i16, i16, [0 x i8] }
%struct.acx_tx_statistics = type { i32 }
%struct.acx_rx_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.acx_dma_statistics = type { i32, i32, i32, i32 }
%struct.acx_isr_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.acx_wep_statistics = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.acx_pwr_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, [10 x i32], i32 }
%struct.acx_aes_statistics = type { i32, i32, i32, i32, i32, i32 }
%struct.acx_mic_statistics = type { i32, i32 }
%struct.acx_event_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.acx_ps_statistics = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.acx_rxpipe_statistics = type { i32, i32, i32, i32, i32 }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wl1251\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fw-statistics\00", [18 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tx_internal_desc_overflow\00", [38 x i8] zeroinitializer }, align 32
@tx_internal_desc_overflow_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tx_internal_desc_overflow_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rx_out_of_mem\00", [18 x i8] zeroinitializer }, align 32
@rx_out_of_mem_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_out_of_mem_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx_hdr_overflow\00", [16 x i8] zeroinitializer }, align 32
@rx_hdr_overflow_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_hdr_overflow_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rx_hw_stuck\00", [20 x i8] zeroinitializer }, align 32
@rx_hw_stuck_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_hw_stuck_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rx_dropped\00", [21 x i8] zeroinitializer }, align 32
@rx_dropped_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_dropped_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rx_fcs_err\00", [21 x i8] zeroinitializer }, align 32
@rx_fcs_err_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_fcs_err_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_xfr_hint_trig\00", [47 x i8] zeroinitializer }, align 32
@rx_xfr_hint_trig_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_xfr_hint_trig_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rx_path_reset\00", [18 x i8] zeroinitializer }, align 32
@rx_path_reset_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_path_reset_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_reset_counter\00", [47 x i8] zeroinitializer }, align 32
@rx_reset_counter_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rx_reset_counter_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dma_rx_requested\00", [47 x i8] zeroinitializer }, align 32
@dma_rx_requested_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @dma_rx_requested_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dma_rx_errors\00", [18 x i8] zeroinitializer }, align 32
@dma_rx_errors_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @dma_rx_errors_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dma_tx_requested\00", [47 x i8] zeroinitializer }, align 32
@dma_tx_requested_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @dma_tx_requested_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dma_tx_errors\00", [18 x i8] zeroinitializer }, align 32
@dma_tx_errors_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @dma_tx_errors_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"isr_cmd_cmplt\00", [18 x i8] zeroinitializer }, align 32
@isr_cmd_cmplt_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @isr_cmd_cmplt_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"isr_fiqs\00", [23 x i8] zeroinitializer }, align 32
@isr_fiqs_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @isr_fiqs_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"isr_rx_headers\00", [17 x i8] zeroinitializer }, align 32
@isr_rx_headers_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @isr_rx_headers_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"isr_rx_mem_overflow\00", [44 x i8] zeroinitializer }, align 32
@isr_rx_mem_overflow_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @isr_rx_mem_overflow_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"isr_rx_rdys\00", [20 x i8] zeroinitializer }, align 32
@isr_rx_rdys_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @isr_rx_rdys_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"isr_irqs\00", [23 x i8] zeroinitializer }, align 32
@isr_irqs_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @isr_irqs_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"isr_tx_procs\00", [19 x i8] zeroinitializer }, align 32
@isr_tx_procs_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @isr_tx_procs_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"isr_decrypt_done\00", [47 x i8] zeroinitializer }, align 32
@isr_decrypt_done_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @isr_decrypt_done_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"isr_dma0_done\00", [18 x i8] zeroinitializer }, align 32
@isr_dma0_done_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @isr_dma0_done_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"isr_dma1_done\00", [18 x i8] zeroinitializer }, align 32
@isr_dma1_done_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @isr_dma1_done_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"isr_tx_exch_complete\00", [43 x i8] zeroinitializer }, align 32
@isr_tx_exch_complete_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @isr_tx_exch_complete_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"isr_commands\00", [19 x i8] zeroinitializer }, align 32
@isr_commands_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @isr_commands_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"isr_rx_procs\00", [19 x i8] zeroinitializer }, align 32
@isr_rx_procs_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @isr_rx_procs_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"isr_hw_pm_mode_changes\00", [41 x i8] zeroinitializer }, align 32
@isr_hw_pm_mode_changes_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @isr_hw_pm_mode_changes_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"isr_host_acknowledges\00", [42 x i8] zeroinitializer }, align 32
@isr_host_acknowledges_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @isr_host_acknowledges_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"isr_pci_pm\00", [21 x i8] zeroinitializer }, align 32
@isr_pci_pm_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @isr_pci_pm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"isr_wakeups\00", [20 x i8] zeroinitializer }, align 32
@isr_wakeups_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @isr_wakeups_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"isr_low_rssi\00", [19 x i8] zeroinitializer }, align 32
@isr_low_rssi_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @isr_low_rssi_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wep_addr_key_count\00", [45 x i8] zeroinitializer }, align 32
@wep_addr_key_count_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @wep_addr_key_count_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wep_default_key_count\00", [42 x i8] zeroinitializer }, align 32
@wep_default_key_count_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @wep_default_key_count_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wep_key_not_found\00", [46 x i8] zeroinitializer }, align 32
@wep_key_not_found_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @wep_key_not_found_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wep_decrypt_fail\00", [47 x i8] zeroinitializer }, align 32
@wep_decrypt_fail_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @wep_decrypt_fail_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wep_packets\00", [20 x i8] zeroinitializer }, align 32
@wep_packets_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @wep_packets_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wep_interrupt\00", [18 x i8] zeroinitializer }, align 32
@wep_interrupt_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @wep_interrupt_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pwr_ps_enter\00", [19 x i8] zeroinitializer }, align 32
@pwr_ps_enter_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pwr_ps_enter_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pwr_elp_enter\00", [18 x i8] zeroinitializer }, align 32
@pwr_elp_enter_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pwr_elp_enter_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pwr_missing_bcns\00", [47 x i8] zeroinitializer }, align 32
@pwr_missing_bcns_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pwr_missing_bcns_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pwr_wake_on_host\00", [47 x i8] zeroinitializer }, align 32
@pwr_wake_on_host_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pwr_wake_on_host_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwr_wake_on_timer_exp\00", [42 x i8] zeroinitializer }, align 32
@pwr_wake_on_timer_exp_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pwr_wake_on_timer_exp_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pwr_tx_with_ps\00", [17 x i8] zeroinitializer }, align 32
@pwr_tx_with_ps_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pwr_tx_with_ps_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pwr_tx_without_ps\00", [46 x i8] zeroinitializer }, align 32
@pwr_tx_without_ps_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pwr_tx_without_ps_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pwr_rcvd_beacons\00", [47 x i8] zeroinitializer }, align 32
@pwr_rcvd_beacons_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pwr_rcvd_beacons_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pwr_power_save_off\00", [45 x i8] zeroinitializer }, align 32
@pwr_power_save_off_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pwr_power_save_off_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pwr_enable_ps\00", [18 x i8] zeroinitializer }, align 32
@pwr_enable_ps_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pwr_enable_ps_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pwr_disable_ps\00", [17 x i8] zeroinitializer }, align 32
@pwr_disable_ps_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pwr_disable_ps_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pwr_fix_tsf_ps\00", [17 x i8] zeroinitializer }, align 32
@pwr_fix_tsf_ps_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pwr_fix_tsf_ps_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pwr_rcvd_awake_beacons\00", [41 x i8] zeroinitializer }, align 32
@pwr_rcvd_awake_beacons_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @pwr_rcvd_awake_beacons_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mic_rx_pkts\00", [20 x i8] zeroinitializer }, align 32
@mic_rx_pkts_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @mic_rx_pkts_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mic_calc_failure\00", [47 x i8] zeroinitializer }, align 32
@mic_calc_failure_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @mic_calc_failure_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aes_encrypt_fail\00", [47 x i8] zeroinitializer }, align 32
@aes_encrypt_fail_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @aes_encrypt_fail_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aes_decrypt_fail\00", [47 x i8] zeroinitializer }, align 32
@aes_decrypt_fail_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @aes_decrypt_fail_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"aes_encrypt_packets\00", [44 x i8] zeroinitializer }, align 32
@aes_encrypt_packets_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @aes_encrypt_packets_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"aes_decrypt_packets\00", [44 x i8] zeroinitializer }, align 32
@aes_decrypt_packets_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @aes_decrypt_packets_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"aes_encrypt_interrupt\00", [42 x i8] zeroinitializer }, align 32
@aes_encrypt_interrupt_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @aes_encrypt_interrupt_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"aes_decrypt_interrupt\00", [42 x i8] zeroinitializer }, align 32
@aes_decrypt_interrupt_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @aes_decrypt_interrupt_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"event_heart_beat\00", [47 x i8] zeroinitializer }, align 32
@event_heart_beat_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @event_heart_beat_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"event_calibration\00", [46 x i8] zeroinitializer }, align 32
@event_calibration_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @event_calibration_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"event_rx_mismatch\00", [46 x i8] zeroinitializer }, align 32
@event_rx_mismatch_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @event_rx_mismatch_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"event_rx_mem_empty\00", [45 x i8] zeroinitializer }, align 32
@event_rx_mem_empty_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @event_rx_mem_empty_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"event_rx_pool\00", [18 x i8] zeroinitializer }, align 32
@event_rx_pool_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @event_rx_pool_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"event_oom_late\00", [17 x i8] zeroinitializer }, align 32
@event_oom_late_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @event_oom_late_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"event_phy_transmit_error\00", [39 x i8] zeroinitializer }, align 32
@event_phy_transmit_error_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @event_phy_transmit_error_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"event_tx_stuck\00", [17 x i8] zeroinitializer }, align 32
@event_tx_stuck_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @event_tx_stuck_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ps_pspoll_timeouts\00", [45 x i8] zeroinitializer }, align 32
@ps_pspoll_timeouts_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ps_pspoll_timeouts_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ps_upsd_timeouts\00", [47 x i8] zeroinitializer }, align 32
@ps_upsd_timeouts_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ps_upsd_timeouts_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ps_upsd_max_sptime\00", [45 x i8] zeroinitializer }, align 32
@ps_upsd_max_sptime_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ps_upsd_max_sptime_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ps_upsd_max_apturn\00", [45 x i8] zeroinitializer }, align 32
@ps_upsd_max_apturn_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ps_upsd_max_apturn_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ps_pspoll_max_apturn\00", [43 x i8] zeroinitializer }, align 32
@ps_pspoll_max_apturn_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ps_pspoll_max_apturn_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ps_pspoll_utilization\00", [42 x i8] zeroinitializer }, align 32
@ps_pspoll_utilization_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ps_pspoll_utilization_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ps_upsd_utilization\00", [44 x i8] zeroinitializer }, align 32
@ps_upsd_utilization_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ps_upsd_utilization_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rxpipe_rx_prep_beacon_drop\00", [37 x i8] zeroinitializer }, align 32
@rxpipe_rx_prep_beacon_drop_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rxpipe_rx_prep_beacon_drop_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"rxpipe_descr_host_int_trig_rx_data\00", [61 x i8] zeroinitializer }, align 32
@rxpipe_descr_host_int_trig_rx_data_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rxpipe_descr_host_int_trig_rx_data_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"rxpipe_beacon_buffer_thres_host_int_trig_rx_data\00", [47 x i8] zeroinitializer }, align 32
@rxpipe_beacon_buffer_thres_host_int_trig_rx_data_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rxpipe_beacon_buffer_thres_host_int_trig_rx_data_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"rxpipe_missed_beacon_host_int_trig_rx_data\00", [53 x i8] zeroinitializer }, align 32
@rxpipe_missed_beacon_host_int_trig_rx_data_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rxpipe_missed_beacon_host_int_trig_rx_data_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rxpipe_tx_xfr_host_int_trig_rx_data\00", [60 x i8] zeroinitializer }, align 32
@rxpipe_tx_xfr_host_int_trig_rx_data_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rxpipe_tx_xfr_host_int_trig_rx_data_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tx_queue_len\00", [19 x i8] zeroinitializer }, align 32
@tx_queue_len_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tx_queue_len_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tx_queue_status\00", [16 x i8] zeroinitializer }, align 32
@tx_queue_status_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tx_queue_status_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"retry_count\00", [20 x i8] zeroinitializer }, align 32
@retry_count_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @retry_count_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"excessive_retries\00", [46 x i8] zeroinitializer }, align 32
@excessive_retries_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @excessive_retries_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%c\0A\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 451, i32 43 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 453, i32 49 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 340, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [30 x i8] c"tx_internal_desc_overflow_ops\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 342, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [18 x i8] c"rx_out_of_mem_ops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 103, i32 1 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 343, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [20 x i8] c"rx_hdr_overflow_ops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 104, i32 1 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 344, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant [16 x i8] c"rx_hw_stuck_ops\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 105, i32 1 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 345, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [15 x i8] c"rx_dropped_ops\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 106, i32 1 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 346, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [15 x i8] c"rx_fcs_err_ops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 107, i32 1 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 347, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant [21 x i8] c"rx_xfr_hint_trig_ops\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 108, i32 1 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 348, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [18 x i8] c"rx_path_reset_ops\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 109, i32 1 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 349, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [21 x i8] c"rx_reset_counter_ops\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 110, i32 1 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 351, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant [21 x i8] c"dma_rx_requested_ops\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 112, i32 1 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 352, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [18 x i8] c"dma_rx_errors_ops\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 113, i32 1 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 353, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant [21 x i8] c"dma_tx_requested_ops\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 114, i32 1 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 354, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant [18 x i8] c"dma_tx_errors_ops\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 115, i32 1 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 356, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant [18 x i8] c"isr_cmd_cmplt_ops\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 117, i32 1 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 357, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant [13 x i8] c"isr_fiqs_ops\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 118, i32 1 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 358, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant [19 x i8] c"isr_rx_headers_ops\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 119, i32 1 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 359, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant [24 x i8] c"isr_rx_mem_overflow_ops\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 120, i32 1 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 360, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant [16 x i8] c"isr_rx_rdys_ops\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 121, i32 1 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 361, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant [13 x i8] c"isr_irqs_ops\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 122, i32 1 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 362, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant [17 x i8] c"isr_tx_procs_ops\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 123, i32 1 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 363, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant [21 x i8] c"isr_decrypt_done_ops\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 124, i32 1 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 364, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant [18 x i8] c"isr_dma0_done_ops\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 125, i32 1 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 365, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant [18 x i8] c"isr_dma1_done_ops\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 126, i32 1 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 366, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant [25 x i8] c"isr_tx_exch_complete_ops\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 127, i32 1 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 367, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant [17 x i8] c"isr_commands_ops\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 128, i32 1 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 368, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant [17 x i8] c"isr_rx_procs_ops\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 129, i32 1 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 369, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant [27 x i8] c"isr_hw_pm_mode_changes_ops\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 130, i32 1 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 370, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant [26 x i8] c"isr_host_acknowledges_ops\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 131, i32 1 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 371, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant [15 x i8] c"isr_pci_pm_ops\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 132, i32 1 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 372, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant [16 x i8] c"isr_wakeups_ops\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 133, i32 1 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 373, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant [17 x i8] c"isr_low_rssi_ops\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 134, i32 1 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 375, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant [23 x i8] c"wep_addr_key_count_ops\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 136, i32 1 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 376, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant [26 x i8] c"wep_default_key_count_ops\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 137, i32 1 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 378, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant [22 x i8] c"wep_key_not_found_ops\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 139, i32 1 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 379, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant [21 x i8] c"wep_decrypt_fail_ops\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 140, i32 1 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 380, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant [16 x i8] c"wep_packets_ops\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 141, i32 1 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 381, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant [18 x i8] c"wep_interrupt_ops\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 142, i32 1 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 383, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant [17 x i8] c"pwr_ps_enter_ops\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 144, i32 1 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 384, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant [18 x i8] c"pwr_elp_enter_ops\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 145, i32 1 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 385, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant [21 x i8] c"pwr_missing_bcns_ops\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 146, i32 1 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 386, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant [21 x i8] c"pwr_wake_on_host_ops\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 147, i32 1 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 387, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant [26 x i8] c"pwr_wake_on_timer_exp_ops\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 148, i32 1 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 388, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant [19 x i8] c"pwr_tx_with_ps_ops\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 149, i32 1 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 389, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant [22 x i8] c"pwr_tx_without_ps_ops\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 150, i32 1 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 390, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant [21 x i8] c"pwr_rcvd_beacons_ops\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 151, i32 1 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 391, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant [23 x i8] c"pwr_power_save_off_ops\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 152, i32 1 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 392, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant [18 x i8] c"pwr_enable_ps_ops\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 153, i32 1 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 393, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant [19 x i8] c"pwr_disable_ps_ops\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 154, i32 1 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 394, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant [19 x i8] c"pwr_fix_tsf_ps_ops\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 155, i32 1 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 396, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant [27 x i8] c"pwr_rcvd_awake_beacons_ops\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 157, i32 1 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 398, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant [16 x i8] c"mic_rx_pkts_ops\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 159, i32 1 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 399, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant [21 x i8] c"mic_calc_failure_ops\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 160, i32 1 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 401, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant [21 x i8] c"aes_encrypt_fail_ops\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 162, i32 1 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 402, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant [21 x i8] c"aes_decrypt_fail_ops\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 163, i32 1 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 403, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant [24 x i8] c"aes_encrypt_packets_ops\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 164, i32 1 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 404, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant [24 x i8] c"aes_decrypt_packets_ops\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 165, i32 1 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 405, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant [26 x i8] c"aes_encrypt_interrupt_ops\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 166, i32 1 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 406, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant [26 x i8] c"aes_decrypt_interrupt_ops\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 167, i32 1 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 408, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant [21 x i8] c"event_heart_beat_ops\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 169, i32 1 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 409, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant [22 x i8] c"event_calibration_ops\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 170, i32 1 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 410, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant [22 x i8] c"event_rx_mismatch_ops\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 171, i32 1 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 411, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant [23 x i8] c"event_rx_mem_empty_ops\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 172, i32 1 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 412, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant [18 x i8] c"event_rx_pool_ops\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 173, i32 1 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 413, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant [19 x i8] c"event_oom_late_ops\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 174, i32 1 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 414, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant [29 x i8] c"event_phy_transmit_error_ops\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 175, i32 1 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 415, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant [19 x i8] c"event_tx_stuck_ops\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 176, i32 1 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 417, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant [23 x i8] c"ps_pspoll_timeouts_ops\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 178, i32 1 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 418, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant [21 x i8] c"ps_upsd_timeouts_ops\00", align 1
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 179, i32 1 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 419, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant [23 x i8] c"ps_upsd_max_sptime_ops\00", align 1
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 180, i32 1 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 420, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant [23 x i8] c"ps_upsd_max_apturn_ops\00", align 1
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 181, i32 1 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 421, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant [25 x i8] c"ps_pspoll_max_apturn_ops\00", align 1
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 182, i32 1 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 422, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant [26 x i8] c"ps_pspoll_utilization_ops\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 183, i32 1 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 423, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant [24 x i8] c"ps_upsd_utilization_ops\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 184, i32 1 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 425, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant [31 x i8] c"rxpipe_rx_prep_beacon_drop_ops\00", align 1
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 186, i32 1 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 426, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant [39 x i8] c"rxpipe_descr_host_int_trig_rx_data_ops\00", align 1
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 187, i32 1 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 427, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant [53 x i8] c"rxpipe_beacon_buffer_thres_host_int_trig_rx_data_ops\00", align 1
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 188, i32 1 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 428, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant [47 x i8] c"rxpipe_missed_beacon_host_int_trig_rx_data_ops\00", align 1
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 190, i32 1 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 429, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant [40 x i8] c"rxpipe_tx_xfr_host_int_trig_rx_data_ops\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 191, i32 1 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 431, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant [17 x i8] c"tx_queue_len_ops\00", align 1
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 211, i32 37 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 432, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant [20 x i8] c"tx_queue_status_ops\00", align 1
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 233, i32 37 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 433, i32 2 }
@___asan_gen_.575 = private unnamed_addr constant [16 x i8] c"retry_count_ops\00", align 1
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 193, i32 1 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 434, i32 2 }
@___asan_gen_.581 = private unnamed_addr constant [22 x i8] c"excessive_retries_ops\00", align 1
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 194, i32 1 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 101, i32 1 }
@___asan_gen_.587 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.588 = private constant [44 x i8] c"../drivers/net/wireless/ti/wl1251/debugfs.c\00", align 1
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 229, i32 36 }
@llvm.compiler.used = appending global [168 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @tx_internal_desc_overflow_ops, ptr @.str.3, ptr @rx_out_of_mem_ops, ptr @.str.4, ptr @rx_hdr_overflow_ops, ptr @.str.5, ptr @rx_hw_stuck_ops, ptr @.str.6, ptr @rx_dropped_ops, ptr @.str.7, ptr @rx_fcs_err_ops, ptr @.str.8, ptr @rx_xfr_hint_trig_ops, ptr @.str.9, ptr @rx_path_reset_ops, ptr @.str.10, ptr @rx_reset_counter_ops, ptr @.str.11, ptr @dma_rx_requested_ops, ptr @.str.12, ptr @dma_rx_errors_ops, ptr @.str.13, ptr @dma_tx_requested_ops, ptr @.str.14, ptr @dma_tx_errors_ops, ptr @.str.15, ptr @isr_cmd_cmplt_ops, ptr @.str.16, ptr @isr_fiqs_ops, ptr @.str.17, ptr @isr_rx_headers_ops, ptr @.str.18, ptr @isr_rx_mem_overflow_ops, ptr @.str.19, ptr @isr_rx_rdys_ops, ptr @.str.20, ptr @isr_irqs_ops, ptr @.str.21, ptr @isr_tx_procs_ops, ptr @.str.22, ptr @isr_decrypt_done_ops, ptr @.str.23, ptr @isr_dma0_done_ops, ptr @.str.24, ptr @isr_dma1_done_ops, ptr @.str.25, ptr @isr_tx_exch_complete_ops, ptr @.str.26, ptr @isr_commands_ops, ptr @.str.27, ptr @isr_rx_procs_ops, ptr @.str.28, ptr @isr_hw_pm_mode_changes_ops, ptr @.str.29, ptr @isr_host_acknowledges_ops, ptr @.str.30, ptr @isr_pci_pm_ops, ptr @.str.31, ptr @isr_wakeups_ops, ptr @.str.32, ptr @isr_low_rssi_ops, ptr @.str.33, ptr @wep_addr_key_count_ops, ptr @.str.34, ptr @wep_default_key_count_ops, ptr @.str.35, ptr @wep_key_not_found_ops, ptr @.str.36, ptr @wep_decrypt_fail_ops, ptr @.str.37, ptr @wep_packets_ops, ptr @.str.38, ptr @wep_interrupt_ops, ptr @.str.39, ptr @pwr_ps_enter_ops, ptr @.str.40, ptr @pwr_elp_enter_ops, ptr @.str.41, ptr @pwr_missing_bcns_ops, ptr @.str.42, ptr @pwr_wake_on_host_ops, ptr @.str.43, ptr @pwr_wake_on_timer_exp_ops, ptr @.str.44, ptr @pwr_tx_with_ps_ops, ptr @.str.45, ptr @pwr_tx_without_ps_ops, ptr @.str.46, ptr @pwr_rcvd_beacons_ops, ptr @.str.47, ptr @pwr_power_save_off_ops, ptr @.str.48, ptr @pwr_enable_ps_ops, ptr @.str.49, ptr @pwr_disable_ps_ops, ptr @.str.50, ptr @pwr_fix_tsf_ps_ops, ptr @.str.51, ptr @pwr_rcvd_awake_beacons_ops, ptr @.str.52, ptr @mic_rx_pkts_ops, ptr @.str.53, ptr @mic_calc_failure_ops, ptr @.str.54, ptr @aes_encrypt_fail_ops, ptr @.str.55, ptr @aes_decrypt_fail_ops, ptr @.str.56, ptr @aes_encrypt_packets_ops, ptr @.str.57, ptr @aes_decrypt_packets_ops, ptr @.str.58, ptr @aes_encrypt_interrupt_ops, ptr @.str.59, ptr @aes_decrypt_interrupt_ops, ptr @.str.60, ptr @event_heart_beat_ops, ptr @.str.61, ptr @event_calibration_ops, ptr @.str.62, ptr @event_rx_mismatch_ops, ptr @.str.63, ptr @event_rx_mem_empty_ops, ptr @.str.64, ptr @event_rx_pool_ops, ptr @.str.65, ptr @event_oom_late_ops, ptr @.str.66, ptr @event_phy_transmit_error_ops, ptr @.str.67, ptr @event_tx_stuck_ops, ptr @.str.68, ptr @ps_pspoll_timeouts_ops, ptr @.str.69, ptr @ps_upsd_timeouts_ops, ptr @.str.70, ptr @ps_upsd_max_sptime_ops, ptr @.str.71, ptr @ps_upsd_max_apturn_ops, ptr @.str.72, ptr @ps_pspoll_max_apturn_ops, ptr @.str.73, ptr @ps_pspoll_utilization_ops, ptr @.str.74, ptr @ps_upsd_utilization_ops, ptr @.str.75, ptr @rxpipe_rx_prep_beacon_drop_ops, ptr @.str.76, ptr @rxpipe_descr_host_int_trig_rx_data_ops, ptr @.str.77, ptr @rxpipe_beacon_buffer_thres_host_int_trig_rx_data_ops, ptr @.str.78, ptr @rxpipe_missed_beacon_host_int_trig_rx_data_ops, ptr @.str.79, ptr @rxpipe_tx_xfr_host_int_trig_rx_data_ops, ptr @.str.80, ptr @tx_queue_len_ops, ptr @.str.81, ptr @tx_queue_status_ops, ptr @.str.82, ptr @retry_count_ops, ptr @.str.83, ptr @excessive_retries_ops, ptr @.str.84, ptr @.str.85], section "llvm.metadata"
@0 = internal global [168 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_internal_desc_overflow_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_out_of_mem_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_hdr_overflow_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_hw_stuck_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_dropped_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_fcs_err_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_xfr_hint_trig_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_path_reset_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_reset_counter_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_rx_requested_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_rx_errors_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_tx_requested_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_tx_errors_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isr_cmd_cmplt_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isr_fiqs_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isr_rx_headers_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isr_rx_mem_overflow_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isr_rx_rdys_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isr_irqs_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isr_tx_procs_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isr_decrypt_done_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isr_dma0_done_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isr_dma1_done_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isr_tx_exch_complete_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isr_commands_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isr_rx_procs_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isr_hw_pm_mode_changes_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isr_host_acknowledges_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isr_pci_pm_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isr_wakeups_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isr_low_rssi_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wep_addr_key_count_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wep_default_key_count_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wep_key_not_found_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wep_decrypt_fail_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wep_packets_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wep_interrupt_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_ps_enter_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_elp_enter_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_missing_bcns_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_wake_on_host_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_wake_on_timer_exp_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_tx_with_ps_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_tx_without_ps_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_rcvd_beacons_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_power_save_off_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_enable_ps_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_disable_ps_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_fix_tsf_ps_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_rcvd_awake_beacons_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic_rx_pkts_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic_calc_failure_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aes_encrypt_fail_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aes_decrypt_fail_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aes_encrypt_packets_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aes_decrypt_packets_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aes_encrypt_interrupt_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aes_decrypt_interrupt_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_heart_beat_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_calibration_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rx_mismatch_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rx_mem_empty_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rx_pool_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_oom_late_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_phy_transmit_error_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tx_stuck_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_pspoll_timeouts_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_upsd_timeouts_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_upsd_max_sptime_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_upsd_max_apturn_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_pspoll_max_apturn_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_pspoll_utilization_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_upsd_utilization_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxpipe_rx_prep_beacon_drop_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxpipe_descr_host_int_trig_rx_data_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxpipe_beacon_buffer_thres_host_int_trig_rx_data_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxpipe_missed_beacon_host_int_trig_rx_data_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxpipe_tx_xfr_host_int_trig_rx_data_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_queue_len_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_queue_status_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @retry_count_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @excessive_retries_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @wl1251_debugfs_reset(ptr nocapture noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %stats = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 60
  %0 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = call ptr @memset(ptr %1, i32 0, i32 364)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %retry_count = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 60, i32 2
  %3 = ptrtoint ptr %retry_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %retry_count, align 4
  %excessive_retries = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 60, i32 3
  %4 = ptrtoint ptr %excessive_retries to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %excessive_retries, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_debugfs_init(ptr noundef %wl) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 364) #8
  %stats = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 60
  %1 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %stats, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef null) #5
  %debugfs = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61
  %2 = ptrtoint ptr %debugfs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %debugfs, align 4
  %call6 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.1, ptr noundef %call3) #5
  %fw_statistics = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 1
  %3 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call6, ptr %fw_statistics, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %fw_stats_update = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %fw_stats_update, align 4
  %call.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 256, ptr noundef %call6, ptr noundef %wl, ptr noundef nonnull @tx_internal_desc_overflow_ops) #5
  %tx_internal_desc_overflow.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 2
  %6 = ptrtoint ptr %tx_internal_desc_overflow.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %tx_internal_desc_overflow.i, align 4
  %7 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fw_statistics, align 4
  %call4.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 256, ptr noundef %8, ptr noundef %wl, ptr noundef nonnull @rx_out_of_mem_ops) #5
  %rx_out_of_mem.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 3
  %9 = ptrtoint ptr %rx_out_of_mem.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call4.i, ptr %rx_out_of_mem.i, align 4
  %10 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fw_statistics, align 4
  %call8.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 256, ptr noundef %11, ptr noundef %wl, ptr noundef nonnull @rx_hdr_overflow_ops) #5
  %rx_hdr_overflow.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 4
  %12 = ptrtoint ptr %rx_hdr_overflow.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call8.i, ptr %rx_hdr_overflow.i, align 4
  %13 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fw_statistics, align 4
  %call12.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 256, ptr noundef %14, ptr noundef %wl, ptr noundef nonnull @rx_hw_stuck_ops) #5
  %rx_hw_stuck.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 5
  %15 = ptrtoint ptr %rx_hw_stuck.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call12.i, ptr %rx_hw_stuck.i, align 4
  %16 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw_statistics, align 4
  %call16.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 256, ptr noundef %17, ptr noundef %wl, ptr noundef nonnull @rx_dropped_ops) #5
  %rx_dropped.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 6
  %18 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call16.i, ptr %rx_dropped.i, align 4
  %19 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fw_statistics, align 4
  %call20.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 256, ptr noundef %20, ptr noundef %wl, ptr noundef nonnull @rx_fcs_err_ops) #5
  %rx_fcs_err.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 7
  %21 = ptrtoint ptr %rx_fcs_err.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call20.i, ptr %rx_fcs_err.i, align 4
  %22 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fw_statistics, align 4
  %call24.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 256, ptr noundef %23, ptr noundef %wl, ptr noundef nonnull @rx_xfr_hint_trig_ops) #5
  %rx_xfr_hint_trig.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 8
  %24 = ptrtoint ptr %rx_xfr_hint_trig.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call24.i, ptr %rx_xfr_hint_trig.i, align 4
  %25 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fw_statistics, align 4
  %call28.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.9, i16 noundef zeroext 256, ptr noundef %26, ptr noundef %wl, ptr noundef nonnull @rx_path_reset_ops) #5
  %rx_path_reset.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 9
  %27 = ptrtoint ptr %rx_path_reset.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call28.i, ptr %rx_path_reset.i, align 4
  %28 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fw_statistics, align 4
  %call32.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.10, i16 noundef zeroext 256, ptr noundef %29, ptr noundef %wl, ptr noundef nonnull @rx_reset_counter_ops) #5
  %rx_reset_counter.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 10
  %30 = ptrtoint ptr %rx_reset_counter.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call32.i, ptr %rx_reset_counter.i, align 4
  %31 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fw_statistics, align 4
  %call36.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.11, i16 noundef zeroext 256, ptr noundef %32, ptr noundef %wl, ptr noundef nonnull @dma_rx_requested_ops) #5
  %dma_rx_requested.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 11
  %33 = ptrtoint ptr %dma_rx_requested.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call36.i, ptr %dma_rx_requested.i, align 4
  %34 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fw_statistics, align 4
  %call40.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.12, i16 noundef zeroext 256, ptr noundef %35, ptr noundef %wl, ptr noundef nonnull @dma_rx_errors_ops) #5
  %dma_rx_errors.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 12
  %36 = ptrtoint ptr %dma_rx_errors.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call40.i, ptr %dma_rx_errors.i, align 4
  %37 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fw_statistics, align 4
  %call44.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.13, i16 noundef zeroext 256, ptr noundef %38, ptr noundef %wl, ptr noundef nonnull @dma_tx_requested_ops) #5
  %dma_tx_requested.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 13
  %39 = ptrtoint ptr %dma_tx_requested.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call44.i, ptr %dma_tx_requested.i, align 4
  %40 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fw_statistics, align 4
  %call48.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.14, i16 noundef zeroext 256, ptr noundef %41, ptr noundef %wl, ptr noundef nonnull @dma_tx_errors_ops) #5
  %dma_tx_errors.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 14
  %42 = ptrtoint ptr %dma_tx_errors.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call48.i, ptr %dma_tx_errors.i, align 4
  %43 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fw_statistics, align 4
  %call52.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.15, i16 noundef zeroext 256, ptr noundef %44, ptr noundef %wl, ptr noundef nonnull @isr_cmd_cmplt_ops) #5
  %isr_cmd_cmplt.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 15
  %45 = ptrtoint ptr %isr_cmd_cmplt.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call52.i, ptr %isr_cmd_cmplt.i, align 4
  %46 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fw_statistics, align 4
  %call56.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.16, i16 noundef zeroext 256, ptr noundef %47, ptr noundef %wl, ptr noundef nonnull @isr_fiqs_ops) #5
  %isr_fiqs.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 16
  %48 = ptrtoint ptr %isr_fiqs.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call56.i, ptr %isr_fiqs.i, align 4
  %49 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fw_statistics, align 4
  %call60.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.17, i16 noundef zeroext 256, ptr noundef %50, ptr noundef %wl, ptr noundef nonnull @isr_rx_headers_ops) #5
  %isr_rx_headers.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 17
  %51 = ptrtoint ptr %isr_rx_headers.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call60.i, ptr %isr_rx_headers.i, align 4
  %52 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fw_statistics, align 4
  %call64.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.18, i16 noundef zeroext 256, ptr noundef %53, ptr noundef %wl, ptr noundef nonnull @isr_rx_mem_overflow_ops) #5
  %isr_rx_mem_overflow.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 18
  %54 = ptrtoint ptr %isr_rx_mem_overflow.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call64.i, ptr %isr_rx_mem_overflow.i, align 4
  %55 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fw_statistics, align 4
  %call68.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.19, i16 noundef zeroext 256, ptr noundef %56, ptr noundef %wl, ptr noundef nonnull @isr_rx_rdys_ops) #5
  %isr_rx_rdys.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 19
  %57 = ptrtoint ptr %isr_rx_rdys.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call68.i, ptr %isr_rx_rdys.i, align 4
  %58 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %fw_statistics, align 4
  %call72.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.20, i16 noundef zeroext 256, ptr noundef %59, ptr noundef %wl, ptr noundef nonnull @isr_irqs_ops) #5
  %isr_irqs.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 20
  %60 = ptrtoint ptr %isr_irqs.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call72.i, ptr %isr_irqs.i, align 4
  %61 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %fw_statistics, align 4
  %call76.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.21, i16 noundef zeroext 256, ptr noundef %62, ptr noundef %wl, ptr noundef nonnull @isr_tx_procs_ops) #5
  %isr_tx_procs.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 21
  %63 = ptrtoint ptr %isr_tx_procs.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call76.i, ptr %isr_tx_procs.i, align 4
  %64 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %fw_statistics, align 4
  %call80.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.22, i16 noundef zeroext 256, ptr noundef %65, ptr noundef %wl, ptr noundef nonnull @isr_decrypt_done_ops) #5
  %isr_decrypt_done.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 22
  %66 = ptrtoint ptr %isr_decrypt_done.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call80.i, ptr %isr_decrypt_done.i, align 4
  %67 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %fw_statistics, align 4
  %call84.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.23, i16 noundef zeroext 256, ptr noundef %68, ptr noundef %wl, ptr noundef nonnull @isr_dma0_done_ops) #5
  %isr_dma0_done.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 23
  %69 = ptrtoint ptr %isr_dma0_done.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call84.i, ptr %isr_dma0_done.i, align 4
  %70 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fw_statistics, align 4
  %call88.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.24, i16 noundef zeroext 256, ptr noundef %71, ptr noundef %wl, ptr noundef nonnull @isr_dma1_done_ops) #5
  %isr_dma1_done.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 24
  %72 = ptrtoint ptr %isr_dma1_done.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call88.i, ptr %isr_dma1_done.i, align 4
  %73 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %fw_statistics, align 4
  %call92.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.25, i16 noundef zeroext 256, ptr noundef %74, ptr noundef %wl, ptr noundef nonnull @isr_tx_exch_complete_ops) #5
  %isr_tx_exch_complete.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 25
  %75 = ptrtoint ptr %isr_tx_exch_complete.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call92.i, ptr %isr_tx_exch_complete.i, align 4
  %76 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %fw_statistics, align 4
  %call96.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.26, i16 noundef zeroext 256, ptr noundef %77, ptr noundef %wl, ptr noundef nonnull @isr_commands_ops) #5
  %isr_commands.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 26
  %78 = ptrtoint ptr %isr_commands.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call96.i, ptr %isr_commands.i, align 4
  %79 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %fw_statistics, align 4
  %call100.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.27, i16 noundef zeroext 256, ptr noundef %80, ptr noundef %wl, ptr noundef nonnull @isr_rx_procs_ops) #5
  %isr_rx_procs.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 27
  %81 = ptrtoint ptr %isr_rx_procs.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call100.i, ptr %isr_rx_procs.i, align 4
  %82 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %fw_statistics, align 4
  %call104.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.28, i16 noundef zeroext 256, ptr noundef %83, ptr noundef %wl, ptr noundef nonnull @isr_hw_pm_mode_changes_ops) #5
  %isr_hw_pm_mode_changes.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 28
  %84 = ptrtoint ptr %isr_hw_pm_mode_changes.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call104.i, ptr %isr_hw_pm_mode_changes.i, align 4
  %85 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %fw_statistics, align 4
  %call108.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.29, i16 noundef zeroext 256, ptr noundef %86, ptr noundef %wl, ptr noundef nonnull @isr_host_acknowledges_ops) #5
  %isr_host_acknowledges.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 29
  %87 = ptrtoint ptr %isr_host_acknowledges.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call108.i, ptr %isr_host_acknowledges.i, align 4
  %88 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %fw_statistics, align 4
  %call112.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.30, i16 noundef zeroext 256, ptr noundef %89, ptr noundef %wl, ptr noundef nonnull @isr_pci_pm_ops) #5
  %isr_pci_pm.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 30
  %90 = ptrtoint ptr %isr_pci_pm.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call112.i, ptr %isr_pci_pm.i, align 4
  %91 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %fw_statistics, align 4
  %call116.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.31, i16 noundef zeroext 256, ptr noundef %92, ptr noundef %wl, ptr noundef nonnull @isr_wakeups_ops) #5
  %isr_wakeups.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 31
  %93 = ptrtoint ptr %isr_wakeups.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call116.i, ptr %isr_wakeups.i, align 4
  %94 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %fw_statistics, align 4
  %call120.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.32, i16 noundef zeroext 256, ptr noundef %95, ptr noundef %wl, ptr noundef nonnull @isr_low_rssi_ops) #5
  %isr_low_rssi.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 32
  %96 = ptrtoint ptr %isr_low_rssi.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call120.i, ptr %isr_low_rssi.i, align 4
  %97 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %fw_statistics, align 4
  %call124.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.33, i16 noundef zeroext 256, ptr noundef %98, ptr noundef %wl, ptr noundef nonnull @wep_addr_key_count_ops) #5
  %wep_addr_key_count.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 33
  %99 = ptrtoint ptr %wep_addr_key_count.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call124.i, ptr %wep_addr_key_count.i, align 4
  %100 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %fw_statistics, align 4
  %call128.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.34, i16 noundef zeroext 256, ptr noundef %101, ptr noundef %wl, ptr noundef nonnull @wep_default_key_count_ops) #5
  %wep_default_key_count.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 34
  %102 = ptrtoint ptr %wep_default_key_count.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call128.i, ptr %wep_default_key_count.i, align 4
  %103 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %fw_statistics, align 4
  %call132.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.35, i16 noundef zeroext 256, ptr noundef %104, ptr noundef %wl, ptr noundef nonnull @wep_key_not_found_ops) #5
  %wep_key_not_found.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 35
  %105 = ptrtoint ptr %wep_key_not_found.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call132.i, ptr %wep_key_not_found.i, align 4
  %106 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %fw_statistics, align 4
  %call136.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.36, i16 noundef zeroext 256, ptr noundef %107, ptr noundef %wl, ptr noundef nonnull @wep_decrypt_fail_ops) #5
  %wep_decrypt_fail.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 36
  %108 = ptrtoint ptr %wep_decrypt_fail.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %call136.i, ptr %wep_decrypt_fail.i, align 4
  %109 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %fw_statistics, align 4
  %call140.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.37, i16 noundef zeroext 256, ptr noundef %110, ptr noundef %wl, ptr noundef nonnull @wep_packets_ops) #5
  %wep_packets.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 37
  %111 = ptrtoint ptr %wep_packets.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call140.i, ptr %wep_packets.i, align 4
  %112 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %fw_statistics, align 4
  %call144.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.38, i16 noundef zeroext 256, ptr noundef %113, ptr noundef %wl, ptr noundef nonnull @wep_interrupt_ops) #5
  %wep_interrupt.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 38
  %114 = ptrtoint ptr %wep_interrupt.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call144.i, ptr %wep_interrupt.i, align 4
  %115 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %fw_statistics, align 4
  %call148.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.39, i16 noundef zeroext 256, ptr noundef %116, ptr noundef %wl, ptr noundef nonnull @pwr_ps_enter_ops) #5
  %pwr_ps_enter.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 39
  %117 = ptrtoint ptr %pwr_ps_enter.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call148.i, ptr %pwr_ps_enter.i, align 4
  %118 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %fw_statistics, align 4
  %call152.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.40, i16 noundef zeroext 256, ptr noundef %119, ptr noundef %wl, ptr noundef nonnull @pwr_elp_enter_ops) #5
  %pwr_elp_enter.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 40
  %120 = ptrtoint ptr %pwr_elp_enter.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %call152.i, ptr %pwr_elp_enter.i, align 4
  %121 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %fw_statistics, align 4
  %call156.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.41, i16 noundef zeroext 256, ptr noundef %122, ptr noundef %wl, ptr noundef nonnull @pwr_missing_bcns_ops) #5
  %pwr_missing_bcns.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 41
  %123 = ptrtoint ptr %pwr_missing_bcns.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call156.i, ptr %pwr_missing_bcns.i, align 4
  %124 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %fw_statistics, align 4
  %call160.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.42, i16 noundef zeroext 256, ptr noundef %125, ptr noundef %wl, ptr noundef nonnull @pwr_wake_on_host_ops) #5
  %pwr_wake_on_host.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 42
  %126 = ptrtoint ptr %pwr_wake_on_host.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %call160.i, ptr %pwr_wake_on_host.i, align 4
  %127 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %fw_statistics, align 4
  %call164.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.43, i16 noundef zeroext 256, ptr noundef %128, ptr noundef %wl, ptr noundef nonnull @pwr_wake_on_timer_exp_ops) #5
  %pwr_wake_on_timer_exp.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 43
  %129 = ptrtoint ptr %pwr_wake_on_timer_exp.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call164.i, ptr %pwr_wake_on_timer_exp.i, align 4
  %130 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %fw_statistics, align 4
  %call168.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.44, i16 noundef zeroext 256, ptr noundef %131, ptr noundef %wl, ptr noundef nonnull @pwr_tx_with_ps_ops) #5
  %pwr_tx_with_ps.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 44
  %132 = ptrtoint ptr %pwr_tx_with_ps.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %call168.i, ptr %pwr_tx_with_ps.i, align 4
  %133 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %fw_statistics, align 4
  %call172.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.45, i16 noundef zeroext 256, ptr noundef %134, ptr noundef %wl, ptr noundef nonnull @pwr_tx_without_ps_ops) #5
  %pwr_tx_without_ps.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 45
  %135 = ptrtoint ptr %pwr_tx_without_ps.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %call172.i, ptr %pwr_tx_without_ps.i, align 4
  %136 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %fw_statistics, align 4
  %call176.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.46, i16 noundef zeroext 256, ptr noundef %137, ptr noundef %wl, ptr noundef nonnull @pwr_rcvd_beacons_ops) #5
  %pwr_rcvd_beacons.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 46
  %138 = ptrtoint ptr %pwr_rcvd_beacons.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %call176.i, ptr %pwr_rcvd_beacons.i, align 4
  %139 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %fw_statistics, align 4
  %call180.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.47, i16 noundef zeroext 256, ptr noundef %140, ptr noundef %wl, ptr noundef nonnull @pwr_power_save_off_ops) #5
  %pwr_power_save_off.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 47
  %141 = ptrtoint ptr %pwr_power_save_off.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %call180.i, ptr %pwr_power_save_off.i, align 4
  %142 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %fw_statistics, align 4
  %call184.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.48, i16 noundef zeroext 256, ptr noundef %143, ptr noundef %wl, ptr noundef nonnull @pwr_enable_ps_ops) #5
  %pwr_enable_ps.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 48
  %144 = ptrtoint ptr %pwr_enable_ps.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %call184.i, ptr %pwr_enable_ps.i, align 4
  %145 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %fw_statistics, align 4
  %call188.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.49, i16 noundef zeroext 256, ptr noundef %146, ptr noundef %wl, ptr noundef nonnull @pwr_disable_ps_ops) #5
  %pwr_disable_ps.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 49
  %147 = ptrtoint ptr %pwr_disable_ps.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %call188.i, ptr %pwr_disable_ps.i, align 4
  %148 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %fw_statistics, align 4
  %call192.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.50, i16 noundef zeroext 256, ptr noundef %149, ptr noundef %wl, ptr noundef nonnull @pwr_fix_tsf_ps_ops) #5
  %pwr_fix_tsf_ps.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 50
  %150 = ptrtoint ptr %pwr_fix_tsf_ps.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %call192.i, ptr %pwr_fix_tsf_ps.i, align 4
  %151 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %fw_statistics, align 4
  %call196.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.51, i16 noundef zeroext 256, ptr noundef %152, ptr noundef %wl, ptr noundef nonnull @pwr_rcvd_awake_beacons_ops) #5
  %pwr_rcvd_awake_beacons.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 51
  %153 = ptrtoint ptr %pwr_rcvd_awake_beacons.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %call196.i, ptr %pwr_rcvd_awake_beacons.i, align 4
  %154 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %fw_statistics, align 4
  %call200.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.52, i16 noundef zeroext 256, ptr noundef %155, ptr noundef %wl, ptr noundef nonnull @mic_rx_pkts_ops) #5
  %mic_rx_pkts.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 52
  %156 = ptrtoint ptr %mic_rx_pkts.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %call200.i, ptr %mic_rx_pkts.i, align 4
  %157 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %fw_statistics, align 4
  %call204.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.53, i16 noundef zeroext 256, ptr noundef %158, ptr noundef %wl, ptr noundef nonnull @mic_calc_failure_ops) #5
  %mic_calc_failure.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 53
  %159 = ptrtoint ptr %mic_calc_failure.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %call204.i, ptr %mic_calc_failure.i, align 4
  %160 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %fw_statistics, align 4
  %call208.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.54, i16 noundef zeroext 256, ptr noundef %161, ptr noundef %wl, ptr noundef nonnull @aes_encrypt_fail_ops) #5
  %aes_encrypt_fail.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 54
  %162 = ptrtoint ptr %aes_encrypt_fail.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %call208.i, ptr %aes_encrypt_fail.i, align 4
  %163 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %fw_statistics, align 4
  %call212.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.55, i16 noundef zeroext 256, ptr noundef %164, ptr noundef %wl, ptr noundef nonnull @aes_decrypt_fail_ops) #5
  %aes_decrypt_fail.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 55
  %165 = ptrtoint ptr %aes_decrypt_fail.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %call212.i, ptr %aes_decrypt_fail.i, align 4
  %166 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %fw_statistics, align 4
  %call216.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.56, i16 noundef zeroext 256, ptr noundef %167, ptr noundef %wl, ptr noundef nonnull @aes_encrypt_packets_ops) #5
  %aes_encrypt_packets.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 56
  %168 = ptrtoint ptr %aes_encrypt_packets.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %call216.i, ptr %aes_encrypt_packets.i, align 4
  %169 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %fw_statistics, align 4
  %call220.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.57, i16 noundef zeroext 256, ptr noundef %170, ptr noundef %wl, ptr noundef nonnull @aes_decrypt_packets_ops) #5
  %aes_decrypt_packets.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 57
  %171 = ptrtoint ptr %aes_decrypt_packets.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %call220.i, ptr %aes_decrypt_packets.i, align 4
  %172 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %fw_statistics, align 4
  %call224.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.58, i16 noundef zeroext 256, ptr noundef %173, ptr noundef %wl, ptr noundef nonnull @aes_encrypt_interrupt_ops) #5
  %aes_encrypt_interrupt.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 58
  %174 = ptrtoint ptr %aes_encrypt_interrupt.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %call224.i, ptr %aes_encrypt_interrupt.i, align 4
  %175 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %fw_statistics, align 4
  %call228.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.59, i16 noundef zeroext 256, ptr noundef %176, ptr noundef %wl, ptr noundef nonnull @aes_decrypt_interrupt_ops) #5
  %aes_decrypt_interrupt.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 59
  %177 = ptrtoint ptr %aes_decrypt_interrupt.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %call228.i, ptr %aes_decrypt_interrupt.i, align 4
  %178 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %fw_statistics, align 4
  %call232.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.60, i16 noundef zeroext 256, ptr noundef %179, ptr noundef %wl, ptr noundef nonnull @event_heart_beat_ops) #5
  %event_heart_beat.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 60
  %180 = ptrtoint ptr %event_heart_beat.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %call232.i, ptr %event_heart_beat.i, align 4
  %181 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %fw_statistics, align 4
  %call236.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.61, i16 noundef zeroext 256, ptr noundef %182, ptr noundef %wl, ptr noundef nonnull @event_calibration_ops) #5
  %event_calibration.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 61
  %183 = ptrtoint ptr %event_calibration.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %call236.i, ptr %event_calibration.i, align 4
  %184 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %fw_statistics, align 4
  %call240.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.62, i16 noundef zeroext 256, ptr noundef %185, ptr noundef %wl, ptr noundef nonnull @event_rx_mismatch_ops) #5
  %event_rx_mismatch.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 62
  %186 = ptrtoint ptr %event_rx_mismatch.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %call240.i, ptr %event_rx_mismatch.i, align 4
  %187 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %fw_statistics, align 4
  %call244.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.63, i16 noundef zeroext 256, ptr noundef %188, ptr noundef %wl, ptr noundef nonnull @event_rx_mem_empty_ops) #5
  %event_rx_mem_empty.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 63
  %189 = ptrtoint ptr %event_rx_mem_empty.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %call244.i, ptr %event_rx_mem_empty.i, align 4
  %190 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %fw_statistics, align 4
  %call248.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.64, i16 noundef zeroext 256, ptr noundef %191, ptr noundef %wl, ptr noundef nonnull @event_rx_pool_ops) #5
  %event_rx_pool.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 64
  %192 = ptrtoint ptr %event_rx_pool.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %call248.i, ptr %event_rx_pool.i, align 4
  %193 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %fw_statistics, align 4
  %call252.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.65, i16 noundef zeroext 256, ptr noundef %194, ptr noundef %wl, ptr noundef nonnull @event_oom_late_ops) #5
  %event_oom_late.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 65
  %195 = ptrtoint ptr %event_oom_late.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %call252.i, ptr %event_oom_late.i, align 4
  %196 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %fw_statistics, align 4
  %call256.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.66, i16 noundef zeroext 256, ptr noundef %197, ptr noundef %wl, ptr noundef nonnull @event_phy_transmit_error_ops) #5
  %event_phy_transmit_error.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 66
  %198 = ptrtoint ptr %event_phy_transmit_error.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %call256.i, ptr %event_phy_transmit_error.i, align 4
  %199 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %fw_statistics, align 4
  %call260.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.67, i16 noundef zeroext 256, ptr noundef %200, ptr noundef %wl, ptr noundef nonnull @event_tx_stuck_ops) #5
  %event_tx_stuck.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 67
  %201 = ptrtoint ptr %event_tx_stuck.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %call260.i, ptr %event_tx_stuck.i, align 4
  %202 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %fw_statistics, align 4
  %call264.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.68, i16 noundef zeroext 256, ptr noundef %203, ptr noundef %wl, ptr noundef nonnull @ps_pspoll_timeouts_ops) #5
  %ps_pspoll_timeouts.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 68
  %204 = ptrtoint ptr %ps_pspoll_timeouts.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %call264.i, ptr %ps_pspoll_timeouts.i, align 4
  %205 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %fw_statistics, align 4
  %call268.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.69, i16 noundef zeroext 256, ptr noundef %206, ptr noundef %wl, ptr noundef nonnull @ps_upsd_timeouts_ops) #5
  %ps_upsd_timeouts.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 69
  %207 = ptrtoint ptr %ps_upsd_timeouts.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %call268.i, ptr %ps_upsd_timeouts.i, align 4
  %208 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %fw_statistics, align 4
  %call272.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.70, i16 noundef zeroext 256, ptr noundef %209, ptr noundef %wl, ptr noundef nonnull @ps_upsd_max_sptime_ops) #5
  %ps_upsd_max_sptime.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 70
  %210 = ptrtoint ptr %ps_upsd_max_sptime.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %call272.i, ptr %ps_upsd_max_sptime.i, align 4
  %211 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %fw_statistics, align 4
  %call276.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.71, i16 noundef zeroext 256, ptr noundef %212, ptr noundef %wl, ptr noundef nonnull @ps_upsd_max_apturn_ops) #5
  %ps_upsd_max_apturn.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 71
  %213 = ptrtoint ptr %ps_upsd_max_apturn.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %call276.i, ptr %ps_upsd_max_apturn.i, align 4
  %214 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %fw_statistics, align 4
  %call280.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.72, i16 noundef zeroext 256, ptr noundef %215, ptr noundef %wl, ptr noundef nonnull @ps_pspoll_max_apturn_ops) #5
  %ps_pspoll_max_apturn.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 72
  %216 = ptrtoint ptr %ps_pspoll_max_apturn.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %call280.i, ptr %ps_pspoll_max_apturn.i, align 4
  %217 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %fw_statistics, align 4
  %call284.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.73, i16 noundef zeroext 256, ptr noundef %218, ptr noundef %wl, ptr noundef nonnull @ps_pspoll_utilization_ops) #5
  %ps_pspoll_utilization.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 73
  %219 = ptrtoint ptr %ps_pspoll_utilization.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %call284.i, ptr %ps_pspoll_utilization.i, align 4
  %220 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %fw_statistics, align 4
  %call288.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.74, i16 noundef zeroext 256, ptr noundef %221, ptr noundef %wl, ptr noundef nonnull @ps_upsd_utilization_ops) #5
  %ps_upsd_utilization.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 74
  %222 = ptrtoint ptr %ps_upsd_utilization.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %call288.i, ptr %ps_upsd_utilization.i, align 4
  %223 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %fw_statistics, align 4
  %call292.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.75, i16 noundef zeroext 256, ptr noundef %224, ptr noundef %wl, ptr noundef nonnull @rxpipe_rx_prep_beacon_drop_ops) #5
  %rxpipe_rx_prep_beacon_drop.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 75
  %225 = ptrtoint ptr %rxpipe_rx_prep_beacon_drop.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %call292.i, ptr %rxpipe_rx_prep_beacon_drop.i, align 4
  %226 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %fw_statistics, align 4
  %call296.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.76, i16 noundef zeroext 256, ptr noundef %227, ptr noundef %wl, ptr noundef nonnull @rxpipe_descr_host_int_trig_rx_data_ops) #5
  %rxpipe_descr_host_int_trig_rx_data.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 76
  %228 = ptrtoint ptr %rxpipe_descr_host_int_trig_rx_data.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr %call296.i, ptr %rxpipe_descr_host_int_trig_rx_data.i, align 4
  %229 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %fw_statistics, align 4
  %call300.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.77, i16 noundef zeroext 256, ptr noundef %230, ptr noundef %wl, ptr noundef nonnull @rxpipe_beacon_buffer_thres_host_int_trig_rx_data_ops) #5
  %rxpipe_beacon_buffer_thres_host_int_trig_rx_data.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 77
  %231 = ptrtoint ptr %rxpipe_beacon_buffer_thres_host_int_trig_rx_data.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %call300.i, ptr %rxpipe_beacon_buffer_thres_host_int_trig_rx_data.i, align 4
  %232 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %fw_statistics, align 4
  %call304.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.78, i16 noundef zeroext 256, ptr noundef %233, ptr noundef %wl, ptr noundef nonnull @rxpipe_missed_beacon_host_int_trig_rx_data_ops) #5
  %rxpipe_missed_beacon_host_int_trig_rx_data.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 78
  %234 = ptrtoint ptr %rxpipe_missed_beacon_host_int_trig_rx_data.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr %call304.i, ptr %rxpipe_missed_beacon_host_int_trig_rx_data.i, align 4
  %235 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %fw_statistics, align 4
  %call308.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.79, i16 noundef zeroext 256, ptr noundef %236, ptr noundef %wl, ptr noundef nonnull @rxpipe_tx_xfr_host_int_trig_rx_data_ops) #5
  %rxpipe_tx_xfr_host_int_trig_rx_data.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 79
  %237 = ptrtoint ptr %rxpipe_tx_xfr_host_int_trig_rx_data.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %call308.i, ptr %rxpipe_tx_xfr_host_int_trig_rx_data.i, align 4
  %238 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %debugfs, align 4
  %call311.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.80, i16 noundef zeroext 256, ptr noundef %239, ptr noundef %wl, ptr noundef nonnull @tx_queue_len_ops) #5
  %tx_queue_len.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 80
  %240 = ptrtoint ptr %tx_queue_len.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr %call311.i, ptr %tx_queue_len.i, align 4
  %241 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %debugfs, align 4
  %call315.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.81, i16 noundef zeroext 256, ptr noundef %242, ptr noundef %wl, ptr noundef nonnull @tx_queue_status_ops) #5
  %tx_queue_status.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 81
  %243 = ptrtoint ptr %tx_queue_status.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr %call315.i, ptr %tx_queue_status.i, align 4
  %244 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %debugfs, align 4
  %call319.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.82, i16 noundef zeroext 256, ptr noundef %245, ptr noundef %wl, ptr noundef nonnull @retry_count_ops) #5
  %retry_count.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 82
  %246 = ptrtoint ptr %retry_count.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %call319.i, ptr %retry_count.i, align 4
  %247 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %debugfs, align 4
  %call323.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.83, i16 noundef zeroext 256, ptr noundef %248, ptr noundef %wl, ptr noundef nonnull @excessive_retries_ops) #5
  %excessive_retries.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 83
  %249 = ptrtoint ptr %excessive_retries.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr %call323.i, ptr %excessive_retries.i, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wl1251_debugfs_exit(ptr noundef %wl) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_internal_desc_overflow.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 2
  %0 = ptrtoint ptr %tx_internal_desc_overflow.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_internal_desc_overflow.i, align 4
  tail call void @debugfs_remove(ptr noundef %1) #5
  %2 = ptrtoint ptr %tx_internal_desc_overflow.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %tx_internal_desc_overflow.i, align 4
  %rx_out_of_mem.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 3
  %3 = ptrtoint ptr %rx_out_of_mem.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rx_out_of_mem.i, align 4
  tail call void @debugfs_remove(ptr noundef %4) #5
  %5 = ptrtoint ptr %rx_out_of_mem.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %rx_out_of_mem.i, align 4
  %rx_hdr_overflow.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 4
  %6 = ptrtoint ptr %rx_hdr_overflow.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_hdr_overflow.i, align 4
  tail call void @debugfs_remove(ptr noundef %7) #5
  %8 = ptrtoint ptr %rx_hdr_overflow.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %rx_hdr_overflow.i, align 4
  %rx_hw_stuck.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 5
  %9 = ptrtoint ptr %rx_hw_stuck.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_hw_stuck.i, align 4
  tail call void @debugfs_remove(ptr noundef %10) #5
  %11 = ptrtoint ptr %rx_hw_stuck.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %rx_hw_stuck.i, align 4
  %rx_dropped.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 6
  %12 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_dropped.i, align 4
  tail call void @debugfs_remove(ptr noundef %13) #5
  %14 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %rx_dropped.i, align 4
  %rx_fcs_err.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 7
  %15 = ptrtoint ptr %rx_fcs_err.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_fcs_err.i, align 4
  tail call void @debugfs_remove(ptr noundef %16) #5
  %17 = ptrtoint ptr %rx_fcs_err.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %rx_fcs_err.i, align 4
  %rx_xfr_hint_trig.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 8
  %18 = ptrtoint ptr %rx_xfr_hint_trig.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_xfr_hint_trig.i, align 4
  tail call void @debugfs_remove(ptr noundef %19) #5
  %20 = ptrtoint ptr %rx_xfr_hint_trig.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %rx_xfr_hint_trig.i, align 4
  %rx_path_reset.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 9
  %21 = ptrtoint ptr %rx_path_reset.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_path_reset.i, align 4
  tail call void @debugfs_remove(ptr noundef %22) #5
  %23 = ptrtoint ptr %rx_path_reset.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %rx_path_reset.i, align 4
  %rx_reset_counter.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 10
  %24 = ptrtoint ptr %rx_reset_counter.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx_reset_counter.i, align 4
  tail call void @debugfs_remove(ptr noundef %25) #5
  %26 = ptrtoint ptr %rx_reset_counter.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %rx_reset_counter.i, align 4
  %dma_rx_requested.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 11
  %27 = ptrtoint ptr %dma_rx_requested.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dma_rx_requested.i, align 4
  tail call void @debugfs_remove(ptr noundef %28) #5
  %29 = ptrtoint ptr %dma_rx_requested.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %dma_rx_requested.i, align 4
  %dma_rx_errors.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 12
  %30 = ptrtoint ptr %dma_rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dma_rx_errors.i, align 4
  tail call void @debugfs_remove(ptr noundef %31) #5
  %32 = ptrtoint ptr %dma_rx_errors.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %dma_rx_errors.i, align 4
  %dma_tx_requested.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 13
  %33 = ptrtoint ptr %dma_tx_requested.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dma_tx_requested.i, align 4
  tail call void @debugfs_remove(ptr noundef %34) #5
  %35 = ptrtoint ptr %dma_tx_requested.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %dma_tx_requested.i, align 4
  %dma_tx_errors.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 14
  %36 = ptrtoint ptr %dma_tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dma_tx_errors.i, align 4
  tail call void @debugfs_remove(ptr noundef %37) #5
  %38 = ptrtoint ptr %dma_tx_errors.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %dma_tx_errors.i, align 4
  %isr_cmd_cmplt.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 15
  %39 = ptrtoint ptr %isr_cmd_cmplt.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %isr_cmd_cmplt.i, align 4
  tail call void @debugfs_remove(ptr noundef %40) #5
  %41 = ptrtoint ptr %isr_cmd_cmplt.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %isr_cmd_cmplt.i, align 4
  %isr_fiqs.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 16
  %42 = ptrtoint ptr %isr_fiqs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %isr_fiqs.i, align 4
  tail call void @debugfs_remove(ptr noundef %43) #5
  %44 = ptrtoint ptr %isr_fiqs.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %isr_fiqs.i, align 4
  %isr_rx_headers.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 17
  %45 = ptrtoint ptr %isr_rx_headers.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %isr_rx_headers.i, align 4
  tail call void @debugfs_remove(ptr noundef %46) #5
  %47 = ptrtoint ptr %isr_rx_headers.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %isr_rx_headers.i, align 4
  %isr_rx_mem_overflow.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 18
  %48 = ptrtoint ptr %isr_rx_mem_overflow.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %isr_rx_mem_overflow.i, align 4
  tail call void @debugfs_remove(ptr noundef %49) #5
  %50 = ptrtoint ptr %isr_rx_mem_overflow.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %isr_rx_mem_overflow.i, align 4
  %isr_rx_rdys.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 19
  %51 = ptrtoint ptr %isr_rx_rdys.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %isr_rx_rdys.i, align 4
  tail call void @debugfs_remove(ptr noundef %52) #5
  %53 = ptrtoint ptr %isr_rx_rdys.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %isr_rx_rdys.i, align 4
  %isr_irqs.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 20
  %54 = ptrtoint ptr %isr_irqs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %isr_irqs.i, align 4
  tail call void @debugfs_remove(ptr noundef %55) #5
  %56 = ptrtoint ptr %isr_irqs.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %isr_irqs.i, align 4
  %isr_tx_procs.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 21
  %57 = ptrtoint ptr %isr_tx_procs.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %isr_tx_procs.i, align 4
  tail call void @debugfs_remove(ptr noundef %58) #5
  %59 = ptrtoint ptr %isr_tx_procs.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %isr_tx_procs.i, align 4
  %isr_decrypt_done.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 22
  %60 = ptrtoint ptr %isr_decrypt_done.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %isr_decrypt_done.i, align 4
  tail call void @debugfs_remove(ptr noundef %61) #5
  %62 = ptrtoint ptr %isr_decrypt_done.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %isr_decrypt_done.i, align 4
  %isr_dma0_done.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 23
  %63 = ptrtoint ptr %isr_dma0_done.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %isr_dma0_done.i, align 4
  tail call void @debugfs_remove(ptr noundef %64) #5
  %65 = ptrtoint ptr %isr_dma0_done.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %isr_dma0_done.i, align 4
  %isr_dma1_done.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 24
  %66 = ptrtoint ptr %isr_dma1_done.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %isr_dma1_done.i, align 4
  tail call void @debugfs_remove(ptr noundef %67) #5
  %68 = ptrtoint ptr %isr_dma1_done.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %isr_dma1_done.i, align 4
  %isr_tx_exch_complete.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 25
  %69 = ptrtoint ptr %isr_tx_exch_complete.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %isr_tx_exch_complete.i, align 4
  tail call void @debugfs_remove(ptr noundef %70) #5
  %71 = ptrtoint ptr %isr_tx_exch_complete.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %isr_tx_exch_complete.i, align 4
  %isr_commands.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 26
  %72 = ptrtoint ptr %isr_commands.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %isr_commands.i, align 4
  tail call void @debugfs_remove(ptr noundef %73) #5
  %74 = ptrtoint ptr %isr_commands.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %isr_commands.i, align 4
  %isr_rx_procs.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 27
  %75 = ptrtoint ptr %isr_rx_procs.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %isr_rx_procs.i, align 4
  tail call void @debugfs_remove(ptr noundef %76) #5
  %77 = ptrtoint ptr %isr_rx_procs.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %isr_rx_procs.i, align 4
  %isr_hw_pm_mode_changes.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 28
  %78 = ptrtoint ptr %isr_hw_pm_mode_changes.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %isr_hw_pm_mode_changes.i, align 4
  tail call void @debugfs_remove(ptr noundef %79) #5
  %80 = ptrtoint ptr %isr_hw_pm_mode_changes.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %isr_hw_pm_mode_changes.i, align 4
  %isr_host_acknowledges.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 29
  %81 = ptrtoint ptr %isr_host_acknowledges.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %isr_host_acknowledges.i, align 4
  tail call void @debugfs_remove(ptr noundef %82) #5
  %83 = ptrtoint ptr %isr_host_acknowledges.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %isr_host_acknowledges.i, align 4
  %isr_pci_pm.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 30
  %84 = ptrtoint ptr %isr_pci_pm.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %isr_pci_pm.i, align 4
  tail call void @debugfs_remove(ptr noundef %85) #5
  %86 = ptrtoint ptr %isr_pci_pm.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %isr_pci_pm.i, align 4
  %isr_wakeups.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 31
  %87 = ptrtoint ptr %isr_wakeups.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %isr_wakeups.i, align 4
  tail call void @debugfs_remove(ptr noundef %88) #5
  %89 = ptrtoint ptr %isr_wakeups.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %isr_wakeups.i, align 4
  %isr_low_rssi.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 32
  %90 = ptrtoint ptr %isr_low_rssi.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %isr_low_rssi.i, align 4
  tail call void @debugfs_remove(ptr noundef %91) #5
  %92 = ptrtoint ptr %isr_low_rssi.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr null, ptr %isr_low_rssi.i, align 4
  %wep_addr_key_count.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 33
  %93 = ptrtoint ptr %wep_addr_key_count.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %wep_addr_key_count.i, align 4
  tail call void @debugfs_remove(ptr noundef %94) #5
  %95 = ptrtoint ptr %wep_addr_key_count.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %wep_addr_key_count.i, align 4
  %wep_default_key_count.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 34
  %96 = ptrtoint ptr %wep_default_key_count.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %wep_default_key_count.i, align 4
  tail call void @debugfs_remove(ptr noundef %97) #5
  %98 = ptrtoint ptr %wep_default_key_count.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %wep_default_key_count.i, align 4
  %wep_key_not_found.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 35
  %99 = ptrtoint ptr %wep_key_not_found.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %wep_key_not_found.i, align 4
  tail call void @debugfs_remove(ptr noundef %100) #5
  %101 = ptrtoint ptr %wep_key_not_found.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %wep_key_not_found.i, align 4
  %wep_decrypt_fail.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 36
  %102 = ptrtoint ptr %wep_decrypt_fail.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %wep_decrypt_fail.i, align 4
  tail call void @debugfs_remove(ptr noundef %103) #5
  %104 = ptrtoint ptr %wep_decrypt_fail.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %wep_decrypt_fail.i, align 4
  %wep_packets.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 37
  %105 = ptrtoint ptr %wep_packets.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %wep_packets.i, align 4
  tail call void @debugfs_remove(ptr noundef %106) #5
  %107 = ptrtoint ptr %wep_packets.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr null, ptr %wep_packets.i, align 4
  %wep_interrupt.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 38
  %108 = ptrtoint ptr %wep_interrupt.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %wep_interrupt.i, align 4
  tail call void @debugfs_remove(ptr noundef %109) #5
  %110 = ptrtoint ptr %wep_interrupt.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %wep_interrupt.i, align 4
  %pwr_ps_enter.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 39
  %111 = ptrtoint ptr %pwr_ps_enter.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %pwr_ps_enter.i, align 4
  tail call void @debugfs_remove(ptr noundef %112) #5
  %113 = ptrtoint ptr %pwr_ps_enter.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr null, ptr %pwr_ps_enter.i, align 4
  %pwr_elp_enter.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 40
  %114 = ptrtoint ptr %pwr_elp_enter.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pwr_elp_enter.i, align 4
  tail call void @debugfs_remove(ptr noundef %115) #5
  %116 = ptrtoint ptr %pwr_elp_enter.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %pwr_elp_enter.i, align 4
  %pwr_missing_bcns.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 41
  %117 = ptrtoint ptr %pwr_missing_bcns.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %pwr_missing_bcns.i, align 4
  tail call void @debugfs_remove(ptr noundef %118) #5
  %119 = ptrtoint ptr %pwr_missing_bcns.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr null, ptr %pwr_missing_bcns.i, align 4
  %pwr_wake_on_host.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 42
  %120 = ptrtoint ptr %pwr_wake_on_host.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pwr_wake_on_host.i, align 4
  tail call void @debugfs_remove(ptr noundef %121) #5
  %122 = ptrtoint ptr %pwr_wake_on_host.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr null, ptr %pwr_wake_on_host.i, align 4
  %pwr_wake_on_timer_exp.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 43
  %123 = ptrtoint ptr %pwr_wake_on_timer_exp.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %pwr_wake_on_timer_exp.i, align 4
  tail call void @debugfs_remove(ptr noundef %124) #5
  %125 = ptrtoint ptr %pwr_wake_on_timer_exp.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr null, ptr %pwr_wake_on_timer_exp.i, align 4
  %pwr_tx_with_ps.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 44
  %126 = ptrtoint ptr %pwr_tx_with_ps.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %pwr_tx_with_ps.i, align 4
  tail call void @debugfs_remove(ptr noundef %127) #5
  %128 = ptrtoint ptr %pwr_tx_with_ps.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr null, ptr %pwr_tx_with_ps.i, align 4
  %pwr_tx_without_ps.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 45
  %129 = ptrtoint ptr %pwr_tx_without_ps.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %pwr_tx_without_ps.i, align 4
  tail call void @debugfs_remove(ptr noundef %130) #5
  %131 = ptrtoint ptr %pwr_tx_without_ps.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr null, ptr %pwr_tx_without_ps.i, align 4
  %pwr_rcvd_beacons.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 46
  %132 = ptrtoint ptr %pwr_rcvd_beacons.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %pwr_rcvd_beacons.i, align 4
  tail call void @debugfs_remove(ptr noundef %133) #5
  %134 = ptrtoint ptr %pwr_rcvd_beacons.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr null, ptr %pwr_rcvd_beacons.i, align 4
  %pwr_power_save_off.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 47
  %135 = ptrtoint ptr %pwr_power_save_off.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %pwr_power_save_off.i, align 4
  tail call void @debugfs_remove(ptr noundef %136) #5
  %137 = ptrtoint ptr %pwr_power_save_off.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr null, ptr %pwr_power_save_off.i, align 4
  %pwr_enable_ps.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 48
  %138 = ptrtoint ptr %pwr_enable_ps.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %pwr_enable_ps.i, align 4
  tail call void @debugfs_remove(ptr noundef %139) #5
  %140 = ptrtoint ptr %pwr_enable_ps.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr null, ptr %pwr_enable_ps.i, align 4
  %pwr_disable_ps.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 49
  %141 = ptrtoint ptr %pwr_disable_ps.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %pwr_disable_ps.i, align 4
  tail call void @debugfs_remove(ptr noundef %142) #5
  %143 = ptrtoint ptr %pwr_disable_ps.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr null, ptr %pwr_disable_ps.i, align 4
  %pwr_fix_tsf_ps.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 50
  %144 = ptrtoint ptr %pwr_fix_tsf_ps.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %pwr_fix_tsf_ps.i, align 4
  tail call void @debugfs_remove(ptr noundef %145) #5
  %146 = ptrtoint ptr %pwr_fix_tsf_ps.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr null, ptr %pwr_fix_tsf_ps.i, align 4
  %pwr_rcvd_awake_beacons.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 51
  %147 = ptrtoint ptr %pwr_rcvd_awake_beacons.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %pwr_rcvd_awake_beacons.i, align 4
  tail call void @debugfs_remove(ptr noundef %148) #5
  %149 = ptrtoint ptr %pwr_rcvd_awake_beacons.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr null, ptr %pwr_rcvd_awake_beacons.i, align 4
  %mic_rx_pkts.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 52
  %150 = ptrtoint ptr %mic_rx_pkts.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %mic_rx_pkts.i, align 4
  tail call void @debugfs_remove(ptr noundef %151) #5
  %152 = ptrtoint ptr %mic_rx_pkts.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr null, ptr %mic_rx_pkts.i, align 4
  %mic_calc_failure.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 53
  %153 = ptrtoint ptr %mic_calc_failure.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %mic_calc_failure.i, align 4
  tail call void @debugfs_remove(ptr noundef %154) #5
  %155 = ptrtoint ptr %mic_calc_failure.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr null, ptr %mic_calc_failure.i, align 4
  %aes_encrypt_fail.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 54
  %156 = ptrtoint ptr %aes_encrypt_fail.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %aes_encrypt_fail.i, align 4
  tail call void @debugfs_remove(ptr noundef %157) #5
  %158 = ptrtoint ptr %aes_encrypt_fail.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr null, ptr %aes_encrypt_fail.i, align 4
  %aes_decrypt_fail.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 55
  %159 = ptrtoint ptr %aes_decrypt_fail.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %aes_decrypt_fail.i, align 4
  tail call void @debugfs_remove(ptr noundef %160) #5
  %161 = ptrtoint ptr %aes_decrypt_fail.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr null, ptr %aes_decrypt_fail.i, align 4
  %aes_encrypt_packets.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 56
  %162 = ptrtoint ptr %aes_encrypt_packets.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %aes_encrypt_packets.i, align 4
  tail call void @debugfs_remove(ptr noundef %163) #5
  %164 = ptrtoint ptr %aes_encrypt_packets.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr null, ptr %aes_encrypt_packets.i, align 4
  %aes_decrypt_packets.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 57
  %165 = ptrtoint ptr %aes_decrypt_packets.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %aes_decrypt_packets.i, align 4
  tail call void @debugfs_remove(ptr noundef %166) #5
  %167 = ptrtoint ptr %aes_decrypt_packets.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr null, ptr %aes_decrypt_packets.i, align 4
  %aes_encrypt_interrupt.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 58
  %168 = ptrtoint ptr %aes_encrypt_interrupt.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %aes_encrypt_interrupt.i, align 4
  tail call void @debugfs_remove(ptr noundef %169) #5
  %170 = ptrtoint ptr %aes_encrypt_interrupt.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr null, ptr %aes_encrypt_interrupt.i, align 4
  %aes_decrypt_interrupt.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 59
  %171 = ptrtoint ptr %aes_decrypt_interrupt.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %aes_decrypt_interrupt.i, align 4
  tail call void @debugfs_remove(ptr noundef %172) #5
  %173 = ptrtoint ptr %aes_decrypt_interrupt.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr null, ptr %aes_decrypt_interrupt.i, align 4
  %event_heart_beat.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 60
  %174 = ptrtoint ptr %event_heart_beat.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %event_heart_beat.i, align 4
  tail call void @debugfs_remove(ptr noundef %175) #5
  %176 = ptrtoint ptr %event_heart_beat.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr null, ptr %event_heart_beat.i, align 4
  %event_calibration.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 61
  %177 = ptrtoint ptr %event_calibration.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %event_calibration.i, align 4
  tail call void @debugfs_remove(ptr noundef %178) #5
  %179 = ptrtoint ptr %event_calibration.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr null, ptr %event_calibration.i, align 4
  %event_rx_mismatch.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 62
  %180 = ptrtoint ptr %event_rx_mismatch.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %event_rx_mismatch.i, align 4
  tail call void @debugfs_remove(ptr noundef %181) #5
  %182 = ptrtoint ptr %event_rx_mismatch.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr null, ptr %event_rx_mismatch.i, align 4
  %event_rx_mem_empty.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 63
  %183 = ptrtoint ptr %event_rx_mem_empty.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %event_rx_mem_empty.i, align 4
  tail call void @debugfs_remove(ptr noundef %184) #5
  %185 = ptrtoint ptr %event_rx_mem_empty.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr null, ptr %event_rx_mem_empty.i, align 4
  %event_rx_pool.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 64
  %186 = ptrtoint ptr %event_rx_pool.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %event_rx_pool.i, align 4
  tail call void @debugfs_remove(ptr noundef %187) #5
  %188 = ptrtoint ptr %event_rx_pool.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr null, ptr %event_rx_pool.i, align 4
  %event_oom_late.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 65
  %189 = ptrtoint ptr %event_oom_late.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %event_oom_late.i, align 4
  tail call void @debugfs_remove(ptr noundef %190) #5
  %191 = ptrtoint ptr %event_oom_late.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr null, ptr %event_oom_late.i, align 4
  %event_phy_transmit_error.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 66
  %192 = ptrtoint ptr %event_phy_transmit_error.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %event_phy_transmit_error.i, align 4
  tail call void @debugfs_remove(ptr noundef %193) #5
  %194 = ptrtoint ptr %event_phy_transmit_error.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr null, ptr %event_phy_transmit_error.i, align 4
  %event_tx_stuck.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 67
  %195 = ptrtoint ptr %event_tx_stuck.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %event_tx_stuck.i, align 4
  tail call void @debugfs_remove(ptr noundef %196) #5
  %197 = ptrtoint ptr %event_tx_stuck.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr null, ptr %event_tx_stuck.i, align 4
  %ps_pspoll_timeouts.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 68
  %198 = ptrtoint ptr %ps_pspoll_timeouts.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %ps_pspoll_timeouts.i, align 4
  tail call void @debugfs_remove(ptr noundef %199) #5
  %200 = ptrtoint ptr %ps_pspoll_timeouts.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr null, ptr %ps_pspoll_timeouts.i, align 4
  %ps_upsd_timeouts.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 69
  %201 = ptrtoint ptr %ps_upsd_timeouts.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %ps_upsd_timeouts.i, align 4
  tail call void @debugfs_remove(ptr noundef %202) #5
  %203 = ptrtoint ptr %ps_upsd_timeouts.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr null, ptr %ps_upsd_timeouts.i, align 4
  %ps_upsd_max_sptime.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 70
  %204 = ptrtoint ptr %ps_upsd_max_sptime.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %ps_upsd_max_sptime.i, align 4
  tail call void @debugfs_remove(ptr noundef %205) #5
  %206 = ptrtoint ptr %ps_upsd_max_sptime.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr null, ptr %ps_upsd_max_sptime.i, align 4
  %ps_upsd_max_apturn.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 71
  %207 = ptrtoint ptr %ps_upsd_max_apturn.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %ps_upsd_max_apturn.i, align 4
  tail call void @debugfs_remove(ptr noundef %208) #5
  %209 = ptrtoint ptr %ps_upsd_max_apturn.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr null, ptr %ps_upsd_max_apturn.i, align 4
  %ps_pspoll_max_apturn.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 72
  %210 = ptrtoint ptr %ps_pspoll_max_apturn.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %ps_pspoll_max_apturn.i, align 4
  tail call void @debugfs_remove(ptr noundef %211) #5
  %212 = ptrtoint ptr %ps_pspoll_max_apturn.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr null, ptr %ps_pspoll_max_apturn.i, align 4
  %ps_pspoll_utilization.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 73
  %213 = ptrtoint ptr %ps_pspoll_utilization.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %ps_pspoll_utilization.i, align 4
  tail call void @debugfs_remove(ptr noundef %214) #5
  %215 = ptrtoint ptr %ps_pspoll_utilization.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr null, ptr %ps_pspoll_utilization.i, align 4
  %ps_upsd_utilization.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 74
  %216 = ptrtoint ptr %ps_upsd_utilization.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %ps_upsd_utilization.i, align 4
  tail call void @debugfs_remove(ptr noundef %217) #5
  %218 = ptrtoint ptr %ps_upsd_utilization.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr null, ptr %ps_upsd_utilization.i, align 4
  %rxpipe_rx_prep_beacon_drop.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 75
  %219 = ptrtoint ptr %rxpipe_rx_prep_beacon_drop.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %rxpipe_rx_prep_beacon_drop.i, align 4
  tail call void @debugfs_remove(ptr noundef %220) #5
  %221 = ptrtoint ptr %rxpipe_rx_prep_beacon_drop.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr null, ptr %rxpipe_rx_prep_beacon_drop.i, align 4
  %rxpipe_descr_host_int_trig_rx_data.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 76
  %222 = ptrtoint ptr %rxpipe_descr_host_int_trig_rx_data.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %rxpipe_descr_host_int_trig_rx_data.i, align 4
  tail call void @debugfs_remove(ptr noundef %223) #5
  %224 = ptrtoint ptr %rxpipe_descr_host_int_trig_rx_data.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr null, ptr %rxpipe_descr_host_int_trig_rx_data.i, align 4
  %rxpipe_beacon_buffer_thres_host_int_trig_rx_data.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 77
  %225 = ptrtoint ptr %rxpipe_beacon_buffer_thres_host_int_trig_rx_data.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %rxpipe_beacon_buffer_thres_host_int_trig_rx_data.i, align 4
  tail call void @debugfs_remove(ptr noundef %226) #5
  %227 = ptrtoint ptr %rxpipe_beacon_buffer_thres_host_int_trig_rx_data.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr null, ptr %rxpipe_beacon_buffer_thres_host_int_trig_rx_data.i, align 4
  %rxpipe_missed_beacon_host_int_trig_rx_data.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 78
  %228 = ptrtoint ptr %rxpipe_missed_beacon_host_int_trig_rx_data.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %rxpipe_missed_beacon_host_int_trig_rx_data.i, align 4
  tail call void @debugfs_remove(ptr noundef %229) #5
  %230 = ptrtoint ptr %rxpipe_missed_beacon_host_int_trig_rx_data.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr null, ptr %rxpipe_missed_beacon_host_int_trig_rx_data.i, align 4
  %rxpipe_tx_xfr_host_int_trig_rx_data.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 79
  %231 = ptrtoint ptr %rxpipe_tx_xfr_host_int_trig_rx_data.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %rxpipe_tx_xfr_host_int_trig_rx_data.i, align 4
  tail call void @debugfs_remove(ptr noundef %232) #5
  %233 = ptrtoint ptr %rxpipe_tx_xfr_host_int_trig_rx_data.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr null, ptr %rxpipe_tx_xfr_host_int_trig_rx_data.i, align 4
  %tx_queue_len.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 80
  %234 = ptrtoint ptr %tx_queue_len.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %tx_queue_len.i, align 4
  tail call void @debugfs_remove(ptr noundef %235) #5
  %236 = ptrtoint ptr %tx_queue_len.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr null, ptr %tx_queue_len.i, align 4
  %tx_queue_status.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 81
  %237 = ptrtoint ptr %tx_queue_status.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %tx_queue_status.i, align 4
  tail call void @debugfs_remove(ptr noundef %238) #5
  %239 = ptrtoint ptr %tx_queue_status.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr null, ptr %tx_queue_status.i, align 4
  %retry_count.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 82
  %240 = ptrtoint ptr %retry_count.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %retry_count.i, align 4
  tail call void @debugfs_remove(ptr noundef %241) #5
  %242 = ptrtoint ptr %retry_count.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr null, ptr %retry_count.i, align 4
  %excessive_retries.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 83
  %243 = ptrtoint ptr %excessive_retries.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %excessive_retries.i, align 4
  tail call void @debugfs_remove(ptr noundef %244) #5
  %245 = ptrtoint ptr %excessive_retries.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr null, ptr %excessive_retries.i, align 4
  %stats = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 60
  %246 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %stats, align 4
  tail call void @kfree(ptr noundef %247) #5
  %248 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr null, ptr %stats, align 4
  %debugfs = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61
  %fw_statistics = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 61, i32 1
  %249 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %fw_statistics, align 4
  tail call void @debugfs_remove(ptr noundef %250) #5
  %251 = ptrtoint ptr %fw_statistics to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr null, ptr %fw_statistics, align 4
  %252 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %debugfs, align 4
  tail call void @debugfs_remove(ptr noundef %253) #5
  %254 = ptrtoint ptr %debugfs to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr null, ptr %debugfs, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_internal_desc_overflow_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %tx = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %tx to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %tx, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_ps_elp_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_statistics(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl1251_ps_elp_sleep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_out_of_mem_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %rx = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %rx to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %rx, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_hdr_overflow_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %hdr_overflow = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %hdr_overflow to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %hdr_overflow, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_hw_stuck_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %hw_stuck = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %hw_stuck to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %hw_stuck, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_dropped_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %dropped = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 2, i32 3
  %14 = ptrtoint ptr %dropped to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %dropped, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_fcs_err_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %fcs_err = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 2, i32 4
  %14 = ptrtoint ptr %fcs_err to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %fcs_err, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_xfr_hint_trig_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %xfr_hint_trig = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 2, i32 5
  %14 = ptrtoint ptr %xfr_hint_trig to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %xfr_hint_trig, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_path_reset_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %path_reset = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 2, i32 6
  %14 = ptrtoint ptr %path_reset to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %path_reset, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_reset_counter_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %reset_counter = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 2, i32 7
  %14 = ptrtoint ptr %reset_counter to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %reset_counter, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma_rx_requested_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %dma = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %dma to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %dma, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma_rx_errors_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %rx_errors = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %rx_errors to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %rx_errors, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma_tx_requested_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %tx_requested = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %tx_requested to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %tx_requested, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma_tx_errors_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %tx_errors = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %tx_errors to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %tx_errors, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isr_cmd_cmplt_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %isr = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %isr to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %isr, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isr_fiqs_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %fiqs = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %fiqs to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %fiqs, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isr_rx_headers_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %rx_headers = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 4, i32 2
  %14 = ptrtoint ptr %rx_headers to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %rx_headers, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isr_rx_mem_overflow_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %rx_mem_overflow = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 4, i32 4
  %14 = ptrtoint ptr %rx_mem_overflow to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %rx_mem_overflow, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isr_rx_rdys_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %rx_rdys = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 4, i32 5
  %14 = ptrtoint ptr %rx_rdys to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %rx_rdys, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isr_irqs_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %irqs = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 4, i32 6
  %14 = ptrtoint ptr %irqs to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %irqs, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isr_tx_procs_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %tx_procs = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 4, i32 7
  %14 = ptrtoint ptr %tx_procs to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %tx_procs, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isr_decrypt_done_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %decrypt_done = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 4, i32 8
  %14 = ptrtoint ptr %decrypt_done to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %decrypt_done, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isr_dma0_done_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %dma0_done = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 4, i32 9
  %14 = ptrtoint ptr %dma0_done to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %dma0_done, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isr_dma1_done_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %dma1_done = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 4, i32 10
  %14 = ptrtoint ptr %dma1_done to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %dma1_done, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isr_tx_exch_complete_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %tx_exch_complete = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 4, i32 11
  %14 = ptrtoint ptr %tx_exch_complete to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %tx_exch_complete, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isr_commands_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %commands = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 4, i32 12
  %14 = ptrtoint ptr %commands to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %commands, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isr_rx_procs_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %rx_procs = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 4, i32 13
  %14 = ptrtoint ptr %rx_procs to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %rx_procs, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isr_hw_pm_mode_changes_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %hw_pm_mode_changes = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 4, i32 14
  %14 = ptrtoint ptr %hw_pm_mode_changes to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %hw_pm_mode_changes, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isr_host_acknowledges_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %host_acknowledges = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 4, i32 15
  %14 = ptrtoint ptr %host_acknowledges to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %host_acknowledges, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isr_pci_pm_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %pci_pm = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 4, i32 16
  %14 = ptrtoint ptr %pci_pm to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %pci_pm, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isr_wakeups_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %wakeups = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 4, i32 17
  %14 = ptrtoint ptr %wakeups to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %wakeups, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isr_low_rssi_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %low_rssi = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 4, i32 18
  %14 = ptrtoint ptr %low_rssi to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %low_rssi, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wep_addr_key_count_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %wep = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %wep to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %wep, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wep_default_key_count_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %default_key_count = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %default_key_count to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %default_key_count, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wep_key_not_found_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %key_not_found = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 5, i32 3
  %14 = ptrtoint ptr %key_not_found to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %key_not_found, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wep_decrypt_fail_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %decrypt_fail = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 5, i32 4
  %14 = ptrtoint ptr %decrypt_fail to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %decrypt_fail, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wep_packets_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %packets = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 5, i32 5
  %14 = ptrtoint ptr %packets to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %packets, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wep_interrupt_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %interrupt = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 5, i32 6
  %14 = ptrtoint ptr %interrupt to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %interrupt, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwr_ps_enter_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %pwr = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %pwr to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %pwr, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwr_elp_enter_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %elp_enter = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %elp_enter to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %elp_enter, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwr_missing_bcns_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %missing_bcns = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 6, i32 2
  %14 = ptrtoint ptr %missing_bcns to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %missing_bcns, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwr_wake_on_host_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %wake_on_host = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 6, i32 3
  %14 = ptrtoint ptr %wake_on_host to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %wake_on_host, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwr_wake_on_timer_exp_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %wake_on_timer_exp = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 6, i32 4
  %14 = ptrtoint ptr %wake_on_timer_exp to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %wake_on_timer_exp, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwr_tx_with_ps_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %tx_with_ps = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 6, i32 5
  %14 = ptrtoint ptr %tx_with_ps to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %tx_with_ps, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwr_tx_without_ps_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %tx_without_ps = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 6, i32 6
  %14 = ptrtoint ptr %tx_without_ps to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %tx_without_ps, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwr_rcvd_beacons_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %rcvd_beacons = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 6, i32 7
  %14 = ptrtoint ptr %rcvd_beacons to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %rcvd_beacons, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwr_power_save_off_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %power_save_off = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 6, i32 8
  %14 = ptrtoint ptr %power_save_off to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %power_save_off, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwr_enable_ps_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %enable_ps = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 6, i32 9
  %14 = ptrtoint ptr %enable_ps to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %enable_ps, align 1
  %conv = zext i16 %15 to i32
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %conv) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwr_disable_ps_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %disable_ps = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 6, i32 10
  %14 = ptrtoint ptr %disable_ps to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %disable_ps, align 1
  %conv = zext i16 %15 to i32
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %conv) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwr_fix_tsf_ps_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %fix_tsf_ps = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 6, i32 11
  %14 = ptrtoint ptr %fix_tsf_ps to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %fix_tsf_ps, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwr_rcvd_awake_beacons_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %rcvd_awake_beacons = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 6, i32 13
  %14 = ptrtoint ptr %rcvd_awake_beacons to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %rcvd_awake_beacons, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mic_rx_pkts_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %mic = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %mic to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %mic, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mic_calc_failure_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %calc_failure = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %calc_failure to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %calc_failure, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aes_encrypt_fail_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %aes = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %aes to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %aes, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aes_decrypt_fail_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %decrypt_fail = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 7, i32 1
  %14 = ptrtoint ptr %decrypt_fail to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %decrypt_fail, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aes_encrypt_packets_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %encrypt_packets = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 7, i32 2
  %14 = ptrtoint ptr %encrypt_packets to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %encrypt_packets, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aes_decrypt_packets_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %decrypt_packets = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 7, i32 3
  %14 = ptrtoint ptr %decrypt_packets to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %decrypt_packets, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aes_encrypt_interrupt_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %encrypt_interrupt = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 7, i32 4
  %14 = ptrtoint ptr %encrypt_interrupt to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %encrypt_interrupt, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aes_decrypt_interrupt_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %decrypt_interrupt = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 7, i32 5
  %14 = ptrtoint ptr %decrypt_interrupt to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %decrypt_interrupt, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @event_heart_beat_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %event = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %event to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %event, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @event_calibration_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %calibration = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %calibration to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %calibration, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @event_rx_mismatch_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %rx_mismatch = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 9, i32 2
  %14 = ptrtoint ptr %rx_mismatch to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %rx_mismatch, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @event_rx_mem_empty_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %rx_mem_empty = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 9, i32 3
  %14 = ptrtoint ptr %rx_mem_empty to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %rx_mem_empty, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @event_rx_pool_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %rx_pool = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 9, i32 4
  %14 = ptrtoint ptr %rx_pool to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %rx_pool, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @event_oom_late_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %oom_late = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 9, i32 5
  %14 = ptrtoint ptr %oom_late to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %oom_late, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @event_phy_transmit_error_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %phy_transmit_error = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 9, i32 6
  %14 = ptrtoint ptr %phy_transmit_error to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %phy_transmit_error, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @event_tx_stuck_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %tx_stuck = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 9, i32 7
  %14 = ptrtoint ptr %tx_stuck to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %tx_stuck, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ps_pspoll_timeouts_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %ps = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %ps to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %ps, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ps_upsd_timeouts_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %upsd_timeouts = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %upsd_timeouts to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %upsd_timeouts, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ps_upsd_max_sptime_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %upsd_max_sptime = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 10, i32 2
  %14 = ptrtoint ptr %upsd_max_sptime to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %upsd_max_sptime, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ps_upsd_max_apturn_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %upsd_max_apturn = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 10, i32 3
  %14 = ptrtoint ptr %upsd_max_apturn to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %upsd_max_apturn, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ps_pspoll_max_apturn_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %pspoll_max_apturn = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 10, i32 4
  %14 = ptrtoint ptr %pspoll_max_apturn to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %pspoll_max_apturn, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ps_pspoll_utilization_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %pspoll_utilization = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 10, i32 5
  %14 = ptrtoint ptr %pspoll_utilization to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %pspoll_utilization, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ps_upsd_utilization_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %upsd_utilization = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 10, i32 6
  %14 = ptrtoint ptr %upsd_utilization to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %upsd_utilization, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rxpipe_rx_prep_beacon_drop_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %rxpipe = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %rxpipe to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %rxpipe, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rxpipe_descr_host_int_trig_rx_data_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %descr_host_int_trig_rx_data = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 11, i32 1
  %14 = ptrtoint ptr %descr_host_int_trig_rx_data to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %descr_host_int_trig_rx_data, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rxpipe_beacon_buffer_thres_host_int_trig_rx_data_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %beacon_buffer_thres_host_int_trig_rx_data = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 11, i32 2
  %14 = ptrtoint ptr %beacon_buffer_thres_host_int_trig_rx_data to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %beacon_buffer_thres_host_int_trig_rx_data, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rxpipe_missed_beacon_host_int_trig_rx_data_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %missed_beacon_host_int_trig_rx_data = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 11, i32 3
  %14 = ptrtoint ptr %missed_beacon_host_int_trig_rx_data to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %missed_beacon_host_int_trig_rx_data, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rxpipe_tx_xfr_host_int_trig_rx_data_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %mutex.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %call.i = tail call i32 @wl1251_ps_elp_wakeup(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_debugfs_update_stats.exit_crit_edge, label %if.end.i

entry.wl1251_debugfs_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_debugfs_update_stats.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_stats_update.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 1
  %5 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_stats_update.i, align 4
  %add.i = add i32 %6, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %stats.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats.i, align 4
  %call6.i = tail call i32 @wl1251_acx_statistics(ptr noundef %1, ptr noundef %9) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %fw_stats_update.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_stats_update.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  tail call void @wl1251_ps_elp_sleep(ptr noundef %1) #5
  br label %wl1251_debugfs_update_stats.exit

wl1251_debugfs_update_stats.exit:                 ; preds = %if.end9.i, %entry.wl1251_debugfs_update_stats.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  %stats = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %tx_xfr_host_int_trig_rx_data = getelementptr inbounds %struct.acx_statistics, ptr %13, i32 0, i32 11, i32 4
  %14 = ptrtoint ptr %tx_xfr_host_int_trig_rx_data to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %tx_xfr_host_int_trig_rx_data, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %15) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_queue_len_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %qlen.i = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 32, i32 1
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  %3 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %qlen.i, align 4
  %call1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %4) #5
  %call3 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call1) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_queue_status_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #5
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buf, align 1, !annotation !344
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !344
  %5 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !344
  %tx_queue_stopped = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 33
  %7 = ptrtoint ptr %tx_queue_stopped to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tx_queue_stopped, align 4, !range !345
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %. = select i1 %tobool.not, i32 114, i32 115
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 3, ptr noundef nonnull @.str.85, i32 noundef %.) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @retry_count_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %retry_count = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 2
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  %3 = ptrtoint ptr %retry_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %retry_count, align 4
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %4) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @excessive_retries_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #5
  %excessive_retries = getelementptr inbounds %struct.wl1251, ptr %1, i32 0, i32 60, i32 3
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  %3 = ptrtoint ptr %excessive_retries to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %excessive_retries, align 4
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.84, i32 noundef %4) #5
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 168)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 168)
  ret void
}

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333}
!llvm.module.flags = !{!335, !336, !337, !338, !339, !340, !341, !342}
!llvm.ident = !{!343}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 451, i32 43}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 453, i32 49}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 340, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 342, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 343, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 344, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 345, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 346, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 347, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 348, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 349, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 351, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 352, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 353, i32 2}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 354, i32 2}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 356, i32 2}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 357, i32 2}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 358, i32 2}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 359, i32 2}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 360, i32 2}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 361, i32 2}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 362, i32 2}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 363, i32 2}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 364, i32 2}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 365, i32 2}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 366, i32 2}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 367, i32 2}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 368, i32 2}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 369, i32 2}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 370, i32 2}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 371, i32 2}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 372, i32 2}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 373, i32 2}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 375, i32 2}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 376, i32 2}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 378, i32 2}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 379, i32 2}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 380, i32 2}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 381, i32 2}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 383, i32 2}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 384, i32 2}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 385, i32 2}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 386, i32 2}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 387, i32 2}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 388, i32 2}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 389, i32 2}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 390, i32 2}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 391, i32 2}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 392, i32 2}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 393, i32 2}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 394, i32 2}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 396, i32 2}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 398, i32 2}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 399, i32 2}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 401, i32 2}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 402, i32 2}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 403, i32 2}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 404, i32 2}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 405, i32 2}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 406, i32 2}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 408, i32 2}
!122 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 409, i32 2}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 410, i32 2}
!126 = !{ptr @.str.63, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 411, i32 2}
!128 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 412, i32 2}
!130 = !{ptr @.str.65, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 413, i32 2}
!132 = !{ptr @.str.66, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 414, i32 2}
!134 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 415, i32 2}
!136 = !{ptr @.str.68, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 417, i32 2}
!138 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 418, i32 2}
!140 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 419, i32 2}
!142 = !{ptr @.str.71, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 420, i32 2}
!144 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 421, i32 2}
!146 = !{ptr @.str.73, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 422, i32 2}
!148 = !{ptr @.str.74, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 423, i32 2}
!150 = !{ptr @.str.75, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 425, i32 2}
!152 = !{ptr @.str.76, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 426, i32 2}
!154 = !{ptr @.str.77, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 427, i32 2}
!156 = !{ptr @.str.78, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 428, i32 2}
!158 = !{ptr @.str.79, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 429, i32 2}
!160 = !{ptr @.str.80, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 431, i32 2}
!162 = !{ptr @.str.81, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 432, i32 2}
!164 = !{ptr @.str.82, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 433, i32 2}
!166 = !{ptr @.str.83, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 434, i32 2}
!168 = !{ptr @tx_internal_desc_overflow_ops, !169, !"tx_internal_desc_overflow_ops", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 101, i32 1}
!170 = !{ptr @.str.84, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @rx_out_of_mem_ops, !172, !"rx_out_of_mem_ops", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 103, i32 1}
!173 = !{ptr @rx_hdr_overflow_ops, !174, !"rx_hdr_overflow_ops", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 104, i32 1}
!175 = !{ptr @rx_hw_stuck_ops, !176, !"rx_hw_stuck_ops", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 105, i32 1}
!177 = !{ptr @rx_dropped_ops, !178, !"rx_dropped_ops", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 106, i32 1}
!179 = !{ptr @rx_fcs_err_ops, !180, !"rx_fcs_err_ops", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 107, i32 1}
!181 = !{ptr @rx_xfr_hint_trig_ops, !182, !"rx_xfr_hint_trig_ops", i1 false, i1 false}
!182 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 108, i32 1}
!183 = !{ptr @rx_path_reset_ops, !184, !"rx_path_reset_ops", i1 false, i1 false}
!184 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 109, i32 1}
!185 = !{ptr @rx_reset_counter_ops, !186, !"rx_reset_counter_ops", i1 false, i1 false}
!186 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 110, i32 1}
!187 = !{ptr @dma_rx_requested_ops, !188, !"dma_rx_requested_ops", i1 false, i1 false}
!188 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 112, i32 1}
!189 = !{ptr @dma_rx_errors_ops, !190, !"dma_rx_errors_ops", i1 false, i1 false}
!190 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 113, i32 1}
!191 = !{ptr @dma_tx_requested_ops, !192, !"dma_tx_requested_ops", i1 false, i1 false}
!192 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 114, i32 1}
!193 = !{ptr @dma_tx_errors_ops, !194, !"dma_tx_errors_ops", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 115, i32 1}
!195 = !{ptr @isr_cmd_cmplt_ops, !196, !"isr_cmd_cmplt_ops", i1 false, i1 false}
!196 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 117, i32 1}
!197 = !{ptr @isr_fiqs_ops, !198, !"isr_fiqs_ops", i1 false, i1 false}
!198 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 118, i32 1}
!199 = !{ptr @isr_rx_headers_ops, !200, !"isr_rx_headers_ops", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 119, i32 1}
!201 = !{ptr @isr_rx_mem_overflow_ops, !202, !"isr_rx_mem_overflow_ops", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 120, i32 1}
!203 = !{ptr @isr_rx_rdys_ops, !204, !"isr_rx_rdys_ops", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 121, i32 1}
!205 = !{ptr @isr_irqs_ops, !206, !"isr_irqs_ops", i1 false, i1 false}
!206 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 122, i32 1}
!207 = !{ptr @isr_tx_procs_ops, !208, !"isr_tx_procs_ops", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 123, i32 1}
!209 = !{ptr @isr_decrypt_done_ops, !210, !"isr_decrypt_done_ops", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 124, i32 1}
!211 = !{ptr @isr_dma0_done_ops, !212, !"isr_dma0_done_ops", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 125, i32 1}
!213 = !{ptr @isr_dma1_done_ops, !214, !"isr_dma1_done_ops", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 126, i32 1}
!215 = !{ptr @isr_tx_exch_complete_ops, !216, !"isr_tx_exch_complete_ops", i1 false, i1 false}
!216 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 127, i32 1}
!217 = !{ptr @isr_commands_ops, !218, !"isr_commands_ops", i1 false, i1 false}
!218 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 128, i32 1}
!219 = !{ptr @isr_rx_procs_ops, !220, !"isr_rx_procs_ops", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 129, i32 1}
!221 = !{ptr @isr_hw_pm_mode_changes_ops, !222, !"isr_hw_pm_mode_changes_ops", i1 false, i1 false}
!222 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 130, i32 1}
!223 = !{ptr @isr_host_acknowledges_ops, !224, !"isr_host_acknowledges_ops", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 131, i32 1}
!225 = !{ptr @isr_pci_pm_ops, !226, !"isr_pci_pm_ops", i1 false, i1 false}
!226 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 132, i32 1}
!227 = !{ptr @isr_wakeups_ops, !228, !"isr_wakeups_ops", i1 false, i1 false}
!228 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 133, i32 1}
!229 = !{ptr @isr_low_rssi_ops, !230, !"isr_low_rssi_ops", i1 false, i1 false}
!230 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 134, i32 1}
!231 = !{ptr @wep_addr_key_count_ops, !232, !"wep_addr_key_count_ops", i1 false, i1 false}
!232 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 136, i32 1}
!233 = !{ptr @wep_default_key_count_ops, !234, !"wep_default_key_count_ops", i1 false, i1 false}
!234 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 137, i32 1}
!235 = !{ptr @wep_key_not_found_ops, !236, !"wep_key_not_found_ops", i1 false, i1 false}
!236 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 139, i32 1}
!237 = !{ptr @wep_decrypt_fail_ops, !238, !"wep_decrypt_fail_ops", i1 false, i1 false}
!238 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 140, i32 1}
!239 = !{ptr @wep_packets_ops, !240, !"wep_packets_ops", i1 false, i1 false}
!240 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 141, i32 1}
!241 = !{ptr @wep_interrupt_ops, !242, !"wep_interrupt_ops", i1 false, i1 false}
!242 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 142, i32 1}
!243 = !{ptr @pwr_ps_enter_ops, !244, !"pwr_ps_enter_ops", i1 false, i1 false}
!244 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 144, i32 1}
!245 = !{ptr @pwr_elp_enter_ops, !246, !"pwr_elp_enter_ops", i1 false, i1 false}
!246 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 145, i32 1}
!247 = !{ptr @pwr_missing_bcns_ops, !248, !"pwr_missing_bcns_ops", i1 false, i1 false}
!248 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 146, i32 1}
!249 = !{ptr @pwr_wake_on_host_ops, !250, !"pwr_wake_on_host_ops", i1 false, i1 false}
!250 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 147, i32 1}
!251 = !{ptr @pwr_wake_on_timer_exp_ops, !252, !"pwr_wake_on_timer_exp_ops", i1 false, i1 false}
!252 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 148, i32 1}
!253 = !{ptr @pwr_tx_with_ps_ops, !254, !"pwr_tx_with_ps_ops", i1 false, i1 false}
!254 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 149, i32 1}
!255 = !{ptr @pwr_tx_without_ps_ops, !256, !"pwr_tx_without_ps_ops", i1 false, i1 false}
!256 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 150, i32 1}
!257 = !{ptr @pwr_rcvd_beacons_ops, !258, !"pwr_rcvd_beacons_ops", i1 false, i1 false}
!258 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 151, i32 1}
!259 = !{ptr @pwr_power_save_off_ops, !260, !"pwr_power_save_off_ops", i1 false, i1 false}
!260 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 152, i32 1}
!261 = !{ptr @pwr_enable_ps_ops, !262, !"pwr_enable_ps_ops", i1 false, i1 false}
!262 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 153, i32 1}
!263 = !{ptr @pwr_disable_ps_ops, !264, !"pwr_disable_ps_ops", i1 false, i1 false}
!264 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 154, i32 1}
!265 = !{ptr @pwr_fix_tsf_ps_ops, !266, !"pwr_fix_tsf_ps_ops", i1 false, i1 false}
!266 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 155, i32 1}
!267 = !{ptr @pwr_rcvd_awake_beacons_ops, !268, !"pwr_rcvd_awake_beacons_ops", i1 false, i1 false}
!268 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 157, i32 1}
!269 = !{ptr @mic_rx_pkts_ops, !270, !"mic_rx_pkts_ops", i1 false, i1 false}
!270 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 159, i32 1}
!271 = !{ptr @mic_calc_failure_ops, !272, !"mic_calc_failure_ops", i1 false, i1 false}
!272 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 160, i32 1}
!273 = !{ptr @aes_encrypt_fail_ops, !274, !"aes_encrypt_fail_ops", i1 false, i1 false}
!274 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 162, i32 1}
!275 = !{ptr @aes_decrypt_fail_ops, !276, !"aes_decrypt_fail_ops", i1 false, i1 false}
!276 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 163, i32 1}
!277 = !{ptr @aes_encrypt_packets_ops, !278, !"aes_encrypt_packets_ops", i1 false, i1 false}
!278 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 164, i32 1}
!279 = !{ptr @aes_decrypt_packets_ops, !280, !"aes_decrypt_packets_ops", i1 false, i1 false}
!280 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 165, i32 1}
!281 = !{ptr @aes_encrypt_interrupt_ops, !282, !"aes_encrypt_interrupt_ops", i1 false, i1 false}
!282 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 166, i32 1}
!283 = !{ptr @aes_decrypt_interrupt_ops, !284, !"aes_decrypt_interrupt_ops", i1 false, i1 false}
!284 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 167, i32 1}
!285 = !{ptr @event_heart_beat_ops, !286, !"event_heart_beat_ops", i1 false, i1 false}
!286 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 169, i32 1}
!287 = !{ptr @event_calibration_ops, !288, !"event_calibration_ops", i1 false, i1 false}
!288 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 170, i32 1}
!289 = !{ptr @event_rx_mismatch_ops, !290, !"event_rx_mismatch_ops", i1 false, i1 false}
!290 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 171, i32 1}
!291 = !{ptr @event_rx_mem_empty_ops, !292, !"event_rx_mem_empty_ops", i1 false, i1 false}
!292 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 172, i32 1}
!293 = !{ptr @event_rx_pool_ops, !294, !"event_rx_pool_ops", i1 false, i1 false}
!294 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 173, i32 1}
!295 = !{ptr @event_oom_late_ops, !296, !"event_oom_late_ops", i1 false, i1 false}
!296 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 174, i32 1}
!297 = !{ptr @event_phy_transmit_error_ops, !298, !"event_phy_transmit_error_ops", i1 false, i1 false}
!298 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 175, i32 1}
!299 = !{ptr @event_tx_stuck_ops, !300, !"event_tx_stuck_ops", i1 false, i1 false}
!300 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 176, i32 1}
!301 = !{ptr @ps_pspoll_timeouts_ops, !302, !"ps_pspoll_timeouts_ops", i1 false, i1 false}
!302 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 178, i32 1}
!303 = !{ptr @ps_upsd_timeouts_ops, !304, !"ps_upsd_timeouts_ops", i1 false, i1 false}
!304 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 179, i32 1}
!305 = !{ptr @ps_upsd_max_sptime_ops, !306, !"ps_upsd_max_sptime_ops", i1 false, i1 false}
!306 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 180, i32 1}
!307 = !{ptr @ps_upsd_max_apturn_ops, !308, !"ps_upsd_max_apturn_ops", i1 false, i1 false}
!308 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 181, i32 1}
!309 = !{ptr @ps_pspoll_max_apturn_ops, !310, !"ps_pspoll_max_apturn_ops", i1 false, i1 false}
!310 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 182, i32 1}
!311 = !{ptr @ps_pspoll_utilization_ops, !312, !"ps_pspoll_utilization_ops", i1 false, i1 false}
!312 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 183, i32 1}
!313 = !{ptr @ps_upsd_utilization_ops, !314, !"ps_upsd_utilization_ops", i1 false, i1 false}
!314 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 184, i32 1}
!315 = !{ptr @rxpipe_rx_prep_beacon_drop_ops, !316, !"rxpipe_rx_prep_beacon_drop_ops", i1 false, i1 false}
!316 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 186, i32 1}
!317 = !{ptr @rxpipe_descr_host_int_trig_rx_data_ops, !318, !"rxpipe_descr_host_int_trig_rx_data_ops", i1 false, i1 false}
!318 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 187, i32 1}
!319 = !{ptr @rxpipe_beacon_buffer_thres_host_int_trig_rx_data_ops, !320, !"rxpipe_beacon_buffer_thres_host_int_trig_rx_data_ops", i1 false, i1 false}
!320 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 188, i32 1}
!321 = !{ptr @rxpipe_missed_beacon_host_int_trig_rx_data_ops, !322, !"rxpipe_missed_beacon_host_int_trig_rx_data_ops", i1 false, i1 false}
!322 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 190, i32 1}
!323 = !{ptr @rxpipe_tx_xfr_host_int_trig_rx_data_ops, !324, !"rxpipe_tx_xfr_host_int_trig_rx_data_ops", i1 false, i1 false}
!324 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 191, i32 1}
!325 = !{ptr @tx_queue_len_ops, !326, !"tx_queue_len_ops", i1 false, i1 false}
!326 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 211, i32 37}
!327 = !{ptr @tx_queue_status_ops, !328, !"tx_queue_status_ops", i1 false, i1 false}
!328 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 233, i32 37}
!329 = !{ptr @.str.85, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 229, i32 36}
!331 = !{ptr @retry_count_ops, !332, !"retry_count_ops", i1 false, i1 false}
!332 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 193, i32 1}
!333 = !{ptr @excessive_retries_ops, !334, !"excessive_retries_ops", i1 false, i1 false}
!334 = !{!"../drivers/net/wireless/ti/wl1251/debugfs.c", i32 194, i32 1}
!335 = !{i32 1, !"wchar_size", i32 2}
!336 = !{i32 1, !"min_enum_size", i32 4}
!337 = !{i32 8, !"branch-target-enforcement", i32 0}
!338 = !{i32 8, !"sign-return-address", i32 0}
!339 = !{i32 8, !"sign-return-address-all", i32 0}
!340 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!341 = !{i32 7, !"uwtable", i32 1}
!342 = !{i32 7, !"frame-pointer", i32 2}
!343 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!344 = !{!"auto-init"}
!345 = !{i8 0, i8 2}
