; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/sja1105/sja1105_ethtool.c_pt.bc'
source_filename = "../drivers/net/dsa/sja1105/sja1105_ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sja1105_port_counter = type { i32, [32 x i8], i32, i32, i32, i8 }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.sja1105_private = type { %struct.sja1105_static_config, [11 x i32], [11 x i32], [11 x i32], [11 x i8], i32, i32, i32, ptr, i32, ptr, ptr, [11 x i16], [11 x i16], %struct.sja1105_flow_block, %struct.mutex, %struct.spinlock, i8, %struct.mutex, ptr, ptr, ptr, ptr, ptr, [11 x ptr], %struct.sja1105_ptp_data, %struct.sja1105_tas_data }
%struct.sja1105_static_config = type { i64, [21 x %struct.sja1105_table] }
%struct.sja1105_table = type { ptr, i32, ptr }
%struct.sja1105_flow_block = type { %struct.list_head, [110 x i8], i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sja1105_ptp_data = type { %struct.timer_list, %struct.sk_buff_head, %struct.sk_buff_head, %struct.ptp_clock_info, ptr, %struct.sja1105_ptp_cmd, %struct.mutex, i8, i64 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sja1105_ptp_cmd = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.sja1105_tas_data = type { [11 x ptr], %struct.sja1105_gating_config, i32, i32, %struct.work_struct, i64, i64, i64, i8 }
%struct.sja1105_gating_config = type { i64, i64, i32, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sja1105_info = type { i64, i64, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i32], [5 x i64] }
%struct.sja1105_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [4 x [11 x i64]], i64, i64, [11 x i64] }

@sja1105_get_ethtool_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 578, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to read port %d counters: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sja1105_get_ethtool_stats\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/dsa/sja1105/sja1105_ethtool.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sja1105_get_ethtool_stats._entry_ptr = internal global ptr @sja1105_get_ethtool_stats._entry, section ".printk_index", align 4
@sja1105_port_counters = internal constant { [64 x %struct.sja1105_port_counter], [832 x i8] } { [64 x %struct.sja1105_port_counter] [%struct.sja1105_port_counter zeroinitializer, %struct.sja1105_port_counter { i32 0, [32 x i8] c"n_runt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 31, i32 24, i8 0 }, %struct.sja1105_port_counter { i32 0, [32 x i8] c"n_soferr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 23, i32 16, i8 0 }, %struct.sja1105_port_counter { i32 0, [32 x i8] c"n_alignerr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 15, i32 8, i8 0 }, %struct.sja1105_port_counter { i32 0, [32 x i8] c"n_miierr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 7, i32 0, i8 0 }, %struct.sja1105_port_counter { i32 0, [32 x i8] c"typeerr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 27, i32 27, i8 0 }, %struct.sja1105_port_counter { i32 0, [32 x i8] c"sizeerr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 26, i32 26, i8 0 }, %struct.sja1105_port_counter { i32 0, [32 x i8] c"tctimeout\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 25, i32 25, i8 0 }, %struct.sja1105_port_counter { i32 0, [32 x i8] c"priorerr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 24, i32 24, i8 0 }, %struct.sja1105_port_counter { i32 0, [32 x i8] c"nomaster\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 23, i32 23, i8 0 }, %struct.sja1105_port_counter { i32 0, [32 x i8] c"memov\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 22, i32 22, i8 0 }, %struct.sja1105_port_counter { i32 0, [32 x i8] c"memerr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 21, i32 21, i8 0 }, %struct.sja1105_port_counter { i32 0, [32 x i8] c"invtyp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 19, i32 19, i8 0 }, %struct.sja1105_port_counter { i32 0, [32 x i8] c"intcyov\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 18, i32 18, i8 0 }, %struct.sja1105_port_counter { i32 0, [32 x i8] c"domerr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 17, i32 17, i8 0 }, %struct.sja1105_port_counter { i32 0, [32 x i8] c"pcfbagdrop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 16, i32 16, i8 0 }, %struct.sja1105_port_counter { i32 0, [32 x i8] c"spcprior\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 15, i32 12, i8 0 }, %struct.sja1105_port_counter { i32 0, [32 x i8] c"ageprior\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 11, i32 8, i8 0 }, %struct.sja1105_port_counter { i32 0, [32 x i8] c"portdrop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 6, i32 6, i8 0 }, %struct.sja1105_port_counter { i32 0, [32 x i8] c"lendrop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 5, i32 5, i8 0 }, %struct.sja1105_port_counter { i32 0, [32 x i8] c"bagdrop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 4, i8 0 }, %struct.sja1105_port_counter { i32 0, [32 x i8] c"policeerr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 3, i32 3, i8 0 }, %struct.sja1105_port_counter { i32 0, [32 x i8] c"drpnona664err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 2, i32 2, i8 0 }, %struct.sja1105_port_counter { i32 0, [32 x i8] c"spcerr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 1, i32 1, i8 0 }, %struct.sja1105_port_counter { i32 0, [32 x i8] c"agedrp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, i32 0, i8 0 }, %struct.sja1105_port_counter { i32 1, [32 x i8] c"n_n664err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 15, i32 31, i32 0, i8 0 }, %struct.sja1105_port_counter { i32 1, [32 x i8] c"n_vlanerr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 14, i32 31, i32 0, i8 0 }, %struct.sja1105_port_counter { i32 1, [32 x i8] c"n_unreleased\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 13, i32 31, i32 0, i8 0 }, %struct.sja1105_port_counter { i32 1, [32 x i8] c"n_sizeerr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 12, i32 31, i32 0, i8 0 }, %struct.sja1105_port_counter { i32 1, [32 x i8] c"n_crcerr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 11, i32 31, i32 0, i8 0 }, %struct.sja1105_port_counter { i32 1, [32 x i8] c"n_vlnotfound\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 10, i32 31, i32 0, i8 0 }, %struct.sja1105_port_counter { i32 1, [32 x i8] c"n_ctpolerr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9, i32 31, i32 0, i8 0 }, %struct.sja1105_port_counter { i32 1, [32 x i8] c"n_polerr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 31, i32 0, i8 0 }, %struct.sja1105_port_counter { i32 1, [32 x i8] c"n_rxfrm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6, i32 31, i32 0, i8 1 }, %struct.sja1105_port_counter { i32 1, [32 x i8] c"n_rxbyte\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 31, i32 0, i8 1 }, %struct.sja1105_port_counter { i32 1, [32 x i8] c"n_txfrm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 31, i32 0, i8 1 }, %struct.sja1105_port_counter { i32 1, [32 x i8] c"n_txbyte\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 31, i32 0, i8 1 }, %struct.sja1105_port_counter { i32 2, [32 x i8] c"n_qfull\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 31, i32 0, i8 0 }, %struct.sja1105_port_counter { i32 2, [32 x i8] c"n_part_drop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 31, i32 0, i8 0 }, %struct.sja1105_port_counter { i32 2, [32 x i8] c"n_egr_disabled\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 31, i32 0, i8 0 }, %struct.sja1105_port_counter { i32 2, [32 x i8] c"n_not_reach\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 31, i32 0, i8 0 }, %struct.sja1105_port_counter { i32 3, [32 x i8] c"n_drops_nolearn\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 22, i32 31, i32 0, i8 0 }, %struct.sja1105_port_counter { i32 3, [32 x i8] c"n_drops_noroute\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 21, i32 31, i32 0, i8 0 }, %struct.sja1105_port_counter { i32 3, [32 x i8] c"n_drops_ill_dtag\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 20, i32 31, i32 0, i8 0 }, %struct.sja1105_port_counter { i32 3, [32 x i8] c"n_drops_dtag\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 19, i32 31, i32 0, i8 0 }, %struct.sja1105_port_counter { i32 3, [32 x i8] c"n_drops_sotag\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 18, i32 31, i32 0, i8 0 }, %struct.sja1105_port_counter { i32 3, [32 x i8] c"n_drops_sitag\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 17, i32 31, i32 0, i8 0 }, %struct.sja1105_port_counter { i32 3, [32 x i8] c"n_drops_utag\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, i32 31, i32 0, i8 0 }, %struct.sja1105_port_counter { i32 3, [32 x i8] c"n_tx_bytes_1024_2047\00\00\00\00\00\00\00\00\00\00\00\00", i32 15, i32 31, i32 0, i8 0 }, %struct.sja1105_port_counter { i32 3, [32 x i8] c"n_tx_bytes_512_1023\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 14, i32 31, i32 0, i8 0 }, %struct.sja1105_port_counter { i32 3, [32 x i8] c"n_tx_bytes_256_511\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 13, i32 31, i32 0, i8 0 }, %struct.sja1105_port_counter { i32 3, [32 x i8] c"n_tx_bytes_128_255\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 12, i32 31, i32 0, i8 0 }, %struct.sja1105_port_counter { i32 3, [32 x i8] c"n_tx_bytes_65_127\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 11, i32 31, i32 0, i8 0 }, %struct.sja1105_port_counter { i32 3, [32 x i8] c"n_tx_bytes_64\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 10, i32 31, i32 0, i8 0 }, %struct.sja1105_port_counter { i32 3, [32 x i8] c"n_tx_mcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9, i32 31, i32 0, i8 0 }, %struct.sja1105_port_counter { i32 3, [32 x i8] c"n_tx_bcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 31, i32 0, i8 0 }, %struct.sja1105_port_counter { i32 3, [32 x i8] c"n_rx_bytes_1024_2047\00\00\00\00\00\00\00\00\00\00\00\00", i32 7, i32 31, i32 0, i8 0 }, %struct.sja1105_port_counter { i32 3, [32 x i8] c"n_rx_bytes_512_1023\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6, i32 31, i32 0, i8 0 }, %struct.sja1105_port_counter { i32 3, [32 x i8] c"n_rx_bytes_256_511\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5, i32 31, i32 0, i8 0 }, %struct.sja1105_port_counter { i32 3, [32 x i8] c"n_rx_bytes_128_255\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 31, i32 0, i8 0 }, %struct.sja1105_port_counter { i32 3, [32 x i8] c"n_rx_bytes_65_127\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 31, i32 0, i8 0 }, %struct.sja1105_port_counter { i32 3, [32 x i8] c"n_rx_bytes_64\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 31, i32 0, i8 0 }, %struct.sja1105_port_counter { i32 3, [32 x i8] c"n_rx_mcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 31, i32 0, i8 0 }, %struct.sja1105_port_counter { i32 3, [32 x i8] c"n_rx_bcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 31, i32 0, i8 0 }], [832 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 576, i32 4 }
@___asan_gen_.23 = private unnamed_addr constant [22 x i8] c"sja1105_port_counters\00", align 1
@___asan_gen_.24 = private constant [45 x i8] c"../drivers/net/dsa/sja1105/sja1105_ethtool.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 89, i32 42 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @sja1105_get_ethtool_stats._entry, ptr @sja1105_get_ethtool_stats._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @sja1105_port_counters], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_get_ethtool_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_port_counters to i32), i32 3328, i32 4160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sja1105_get_ethtool_stats(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %buf.i = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %info = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2617245708, i64 %5)
  %switch.selectcmp.case1 = icmp eq i64 %5, 2617245708
  call void @__sanitizer_cov_trace_const_cmp8(i64 2650800910, i64 %5)
  %switch.selectcmp.case2 = icmp eq i64 %5, 2650800910
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %6 = select i1 %switch.selectcmp, i32 41, i32 64
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %k.017 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx.i = getelementptr [64 x %struct.sja1105_port_counter], ptr @sja1105_port_counters, i32 0, i32 %k.017
  %7 = add nsw i32 %k.017, -37
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %7)
  %tobool.not.i = icmp ult i32 %7, -4
  %cond.i = select i1 %tobool.not.i, i32 4, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i) #5
  %8 = ptrtoint ptr %buf.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %buf.i, align 8
  %9 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %info, align 4
  %regs1.i = getelementptr inbounds %struct.sja1105_info, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs1.i, align 4
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %arrayidx3.i = getelementptr %struct.sja1105_regs, ptr %12, i32 0, i32 28, i32 %14, i32 %port
  %15 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx3.i, align 8
  %offset.i = getelementptr [64 x %struct.sja1105_port_counter], ptr @sja1105_port_counters, i32 0, i32 %k.017, i32 2
  %17 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset.i, align 4
  %conv.i = sext i32 %18 to i64
  %add.i = add i64 %16, %conv.i
  %call.i = call i32 @sja1105_xfer_buf(ptr noundef %1, i32 noundef 0, i64 noundef %add.i, ptr noundef nonnull %buf.i, i32 noundef %cond.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %for.inc, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i) #5
  %19 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ds, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str, i32 noundef %port, i32 noundef %call.i) #8
  br label %for.end

for.inc:                                          ; preds = %for.body
  %arrayidx = getelementptr i64, ptr %data, i32 %k.017
  %start.i = getelementptr [64 x %struct.sja1105_port_counter], ptr @sja1105_port_counters, i32 0, i32 %k.017, i32 3
  %21 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %start.i, align 4
  %end.i = getelementptr [64 x %struct.sja1105_port_counter], ptr @sja1105_port_counters, i32 0, i32 %k.017, i32 4
  %23 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %end.i, align 4
  call void @sja1105_unpack(ptr noundef nonnull %buf.i, ptr noundef %arrayidx, i32 noundef %22, i32 noundef %24, i32 noundef %cond.i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i) #5
  %inc = add nuw nsw i32 %k.017, 1
  %exitcond.not = icmp eq i32 %inc, %6
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sja1105_get_strings(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %stringset, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cmp.not = icmp eq i32 %stringset, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %info = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2617245708, i64 %5)
  %switch.selectcmp.case1 = icmp eq i64 %5, 2617245708
  call void @__sanitizer_cov_trace_const_cmp8(i64 2650800910, i64 %5)
  %switch.selectcmp.case2 = icmp eq i64 %5, 2650800910
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %6 = select i1 %switch.selectcmp, i32 41, i32 64
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %p.017 = phi ptr [ %data, %if.end ], [ %add.ptr, %for.body.for.body_crit_edge ]
  %i.016 = phi i32 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %name = getelementptr [64 x %struct.sja1105_port_counter], ptr @sja1105_port_counters, i32 0, i32 %i.016, i32 1
  %call = tail call i32 @strscpy(ptr noundef %p.017, ptr noundef %name, i32 noundef 32) #5
  %add.ptr = getelementptr i8, ptr %p.017, i32 32
  %inc = add nuw nsw i32 %i.016, 1
  %exitcond.not = icmp eq i32 %inc, %6
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105_get_sset_count(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %sset) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cmp.not = icmp eq i32 %sset, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %info = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2617245708, i64 %5)
  %switch.selectcmp.case1 = icmp eq i64 %5, 2617245708
  call void @__sanitizer_cov_trace_const_cmp8(i64 2650800910, i64 %5)
  %switch.selectcmp.case2 = icmp eq i64 %5, 2650800910
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %6 = select i1 %switch.selectcmp, i32 41, i32 64
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %sset_count.020 = phi i32 [ 0, %if.end ], [ %spec.select, %for.body.for.body_crit_edge ]
  %i.019 = phi i32 [ 0, %if.end ], [ %inc11, %for.body.for.body_crit_edge ]
  %name = getelementptr [64 x %struct.sja1105_port_counter], ptr @sja1105_port_counters, i32 0, i32 %i.019, i32 1
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %7)
  %char0 = load i8, ptr %name, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool.not = icmp ne i8 %char0, 0
  %inc = zext i1 %tobool.not to i32
  %spec.select = add i32 %sset_count.020, %inc
  %inc11 = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc11, %6
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %spec.select, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_xfer_buf(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sja1105_unpack(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/sja1105/sja1105_ethtool.c", i32 576, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @sja1105_get_ethtool_stats._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @sja1105_get_ethtool_stats._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @sja1105_port_counters, !9, !"sja1105_port_counters", i1 false, i1 false}
!9 = !{!"../drivers/net/dsa/sja1105/sja1105_ethtool.c", i32 89, i32 42}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
