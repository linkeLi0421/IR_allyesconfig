; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/b43/phy_lp.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/b43/phy_lp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.b43_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.b2062_freqdata = type { i16, [6 x i8] }
%struct.lpphy_stx_table_entry = type { i16, i16, i16, i16, i16 }
%struct.b206x_channel = type { i8, i16, [12 x i8] }
%struct.lpphy_rx_iq_comp = type { i8, i8, i8 }
%struct.b43_wldev = type { ptr, ptr, %struct.completion, %struct.atomic_t, i8, i8, i8, i8, i8, i8, %struct.b43_phy, %union.anon.137, i8, %struct.b43_stats, i32, [6 x i32], i32, %struct.b43_noise_calculation, i32, %struct.delayed_work, i32, %struct.work_struct, i16, [58 x %struct.b43_key], %struct.b43_firmware, %struct.list_head, ptr, i32, [32 x i32], i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.b43_phy = type { ptr, %struct.anon.135, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i32, i8, i32, ptr, i32, %struct.atomic_t, i8, i8 }
%struct.anon.135 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.137 = type { %struct.b43_dma }
%struct.b43_dma = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.b43_stats = type { i8 }
%struct.b43_noise_calculation = type { i8, i8, [8 x [4 x i8]] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.b43_key = type { ptr, i8 }
%struct.b43_firmware = type { %struct.b43_firmware_file, %struct.b43_firmware_file, %struct.b43_firmware_file, %struct.b43_firmware_file, i16, i16, i32, i8, i8 }
%struct.b43_firmware_file = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.b43_phy_lp = type { i32, i8, i8, i8, i16, i16, i16, [15 x i16], [15 x i16], [15 x i16], [3 x i16], [3 x i16], [3 x i16], i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, [11 x i8], [9 x i16], i8, i8, i32, i8, i32, i32 }
%struct.lpphy_iq_est = type { i32, i32, i32 }
%struct.b43_bus_dev = type { i32, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, i32, i16, i16, i16, i16, i8, i8, ptr, i16, i8 }
%union.anon = type { ptr }
%struct.b43_wl = type { ptr, ptr, %struct.mutex, %struct.spinlock, i8, ptr, [6 x i8], [6 x i8], i32, i8, i32, %struct.ieee80211_low_level_stats, %struct.hwrng, i8, [31 x i8], i8, i8, ptr, i8, i8, i8, %struct.work_struct, %struct.spinlock, [4 x %struct.b43_qos_params], %struct.work_struct, %struct.work_struct, [4 x %struct.sk_buff_head], [4 x i8], %struct.work_struct, %struct.b43_leds, [118 x i8], [2 x i8], [4 x i8], [4 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.b43_qos_params = type { %struct.ieee80211_tx_queue_params }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.b43_leds = type { %struct.b43_led, %struct.b43_led, %struct.b43_led, %struct.b43_led, i8, %struct.work_struct }
%struct.b43_led = type { ptr, %struct.led_classdev, i8, i8, [32 x i8], %struct.atomic_t, i8 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.102, %struct.anon.103, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.102 = type { i8, i8, i8, i8 }
%struct.anon.103 = type { %struct.anon.104, %struct.anon.105 }
%struct.anon.104 = type { i8, i8, i8, i8, i8 }
%struct.anon.105 = type { i8, i8, i8, i8, i8 }
%struct.ssb_device = type { ptr, ptr, ptr, ptr, %struct.ssb_device_id, i8, i32, ptr, ptr }
%struct.ssb_device_id = type { i16, i16, i8, i8 }
%struct.ssb_bus = type { ptr, ptr, ptr, %union.anon.138, %struct.spinlock, i32, %union.anon.139, i32, %struct.mutex, i16, i8, i16, i16, i8, [16 x %struct.ssb_device], i8, i32, %struct.ssb_chipcommon, %struct.ssb_pcicore, %struct.ssb_mipscore, %struct.ssb_extif, %struct.ssb_boardinfo, %struct.ssb_sprom, i8, %struct.gpio_chip, ptr, %struct.list_head, i8, i32 }
%union.anon.138 = type { i32 }
%union.anon.139 = type { ptr }
%struct.ssb_chipcommon = type { ptr, i32, i32, i16, %struct.spinlock, %struct.ssb_chipcommon_pmu, i32, i32 }
%struct.ssb_chipcommon_pmu = type { i8, i32 }
%struct.ssb_pcicore = type { ptr, i8 }
%struct.ssb_mipscore = type {}
%struct.ssb_extif = type {}
%struct.ssb_boardinfo = type { i16, i16 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.101, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.101 = type { ptr }

@b43_phyops_lp = dso_local constant { %struct.b43_phy_operations, [40 x i8] } { %struct.b43_phy_operations { ptr @b43_lpphy_op_allocate, ptr @b43_lpphy_op_free, ptr @b43_lpphy_op_prepare_structs, ptr null, ptr @b43_lpphy_op_init, ptr null, ptr null, ptr null, ptr @b43_lpphy_op_maskset, ptr @b43_lpphy_op_radio_read, ptr @b43_lpphy_op_radio_write, ptr null, ptr @b43_lpphy_op_software_rfkill, ptr @b43_lpphy_op_switch_analog, ptr @b43_lpphy_op_switch_channel, ptr @b43_lpphy_op_get_default_chan, ptr @b43_lpphy_op_set_rx_antenna, ptr null, ptr @b43_lpphy_op_recalc_txpower, ptr @b43_lpphy_op_adjust_txpower, ptr @b43_lpphy_op_pwork_15sec, ptr @lpphy_calibration }, [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"LP-PHY is supported only on SSB!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Switch to channel 7 failed, error = %d.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/wireless/broadcom/b43/phy_lp.c\00", [53 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@lpphy_2062_init.freqdata_tab = internal constant { [6 x %struct.b2062_freqdata], [48 x i8] } { [6 x %struct.b2062_freqdata] [%struct.b2062_freqdata { i16 12000, [6 x i8] c"\06\06\06\06\0A\06" }, %struct.b2062_freqdata { i16 13000, [6 x i8] c"\04\04\04\04\0B\07" }, %struct.b2062_freqdata { i16 14400, [6 x i8] c"\03\03\03\03\0C\07" }, %struct.b2062_freqdata { i16 16200, [6 x i8] c"\03\03\03\03\0D\08" }, %struct.b2062_freqdata { i16 18000, [6 x i8] c"\02\02\02\02\0E\08" }, %struct.b2062_freqdata { i16 19200, [6 x i8] c"\01\01\01\01\0E\09" }], [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"b2062: Using crystal tab entry %u kHz.\0A\00", [56 x i8] zeroinitializer }, align 32
@lpphy_stx_table = internal constant { [29 x %struct.lpphy_stx_table_entry], [94 x i8] } { [29 x %struct.lpphy_stx_table_entry] [%struct.lpphy_stx_table_entry { i16 2, i16 6, i16 61, i16 3, i16 1 }, %struct.lpphy_stx_table_entry { i16 1, i16 12, i16 76, i16 1, i16 1 }, %struct.lpphy_stx_table_entry { i16 1, i16 8, i16 80, i16 0, i16 127 }, %struct.lpphy_stx_table_entry { i16 0, i16 8, i16 68, i16 0, i16 255 }, %struct.lpphy_stx_table_entry { i16 1, i16 0, i16 74, i16 0, i16 255 }, %struct.lpphy_stx_table_entry { i16 0, i16 4, i16 77, i16 0, i16 255 }, %struct.lpphy_stx_table_entry { i16 1, i16 4, i16 78, i16 0, i16 255 }, %struct.lpphy_stx_table_entry { i16 0, i16 12, i16 79, i16 0, i16 15 }, %struct.lpphy_stx_table_entry { i16 1, i16 0, i16 79, i16 4, i16 15 }, %struct.lpphy_stx_table_entry { i16 3, i16 0, i16 73, i16 0, i16 15 }, %struct.lpphy_stx_table_entry { i16 4, i16 3, i16 70, i16 4, i16 7 }, %struct.lpphy_stx_table_entry { i16 3, i16 15, i16 70, i16 0, i16 1 }, %struct.lpphy_stx_table_entry { i16 4, i16 0, i16 70, i16 1, i16 7 }, %struct.lpphy_stx_table_entry { i16 3, i16 8, i16 72, i16 4, i16 7 }, %struct.lpphy_stx_table_entry { i16 3, i16 11, i16 72, i16 0, i16 15 }, %struct.lpphy_stx_table_entry { i16 3, i16 4, i16 73, i16 4, i16 15 }, %struct.lpphy_stx_table_entry { i16 2, i16 15, i16 69, i16 0, i16 1 }, %struct.lpphy_stx_table_entry { i16 5, i16 13, i16 82, i16 4, i16 7 }, %struct.lpphy_stx_table_entry { i16 6, i16 0, i16 82, i16 7, i16 1 }, %struct.lpphy_stx_table_entry { i16 5, i16 3, i16 65, i16 5, i16 7 }, %struct.lpphy_stx_table_entry { i16 5, i16 6, i16 65, i16 0, i16 15 }, %struct.lpphy_stx_table_entry { i16 5, i16 10, i16 66, i16 5, i16 7 }, %struct.lpphy_stx_table_entry { i16 4, i16 15, i16 66, i16 0, i16 1 }, %struct.lpphy_stx_table_entry { i16 5, i16 0, i16 66, i16 1, i16 7 }, %struct.lpphy_stx_table_entry { i16 4, i16 11, i16 67, i16 4, i16 15 }, %struct.lpphy_stx_table_entry { i16 4, i16 7, i16 67, i16 0, i16 15 }, %struct.lpphy_stx_table_entry { i16 4, i16 6, i16 69, i16 1, i16 1 }, %struct.lpphy_stx_table_entry { i16 2, i16 7, i16 64, i16 4, i16 15 }, %struct.lpphy_stx_table_entry { i16 2, i16 11, i16 64, i16 0, i16 15 }], [94 x i8] zeroinitializer }, align 32
@lpphy_rev0_1_rc_calib.ideal_pwr_table = internal constant { [21 x i32], [44 x i8] } { [21 x i32] [i32 65536, i32 66903, i32 69165, i32 70624, i32 69410, i32 65380, i32 60834, i32 58836, i32 61393, i32 64488, i32 47032, i32 19253, i32 6750, i32 2571, i32 1092, i32 509, i32 255, i32 136, i32 76, i32 44, i32 26], [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"RC calib: Failed to switch to channel 7, error = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@lpphy_b2063_tune.chandata = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@b2063_chantbl = internal constant { [51 x %struct.b206x_channel], [208 x i8] } { [51 x %struct.b206x_channel] [%struct.b206x_channel { i8 1, i16 2412, [12 x i8] c"o<<\04\05\05\05\05w\80\80p" }, %struct.b206x_channel { i8 2, i16 2417, [12 x i8] c"o<<\04\05\05\05\05w\80\80p" }, %struct.b206x_channel { i8 3, i16 2422, [12 x i8] c"o<<\04\05\05\05\05w\80\80p" }, %struct.b206x_channel { i8 4, i16 2427, [12 x i8] c"o,,\04\05\05\05\05w\80\80p" }, %struct.b206x_channel { i8 5, i16 2432, [12 x i8] c"o,,\04\05\05\05\05w\80\80p" }, %struct.b206x_channel { i8 6, i16 2437, [12 x i8] c"o,,\04\05\05\05\05w\80\80p" }, %struct.b206x_channel { i8 7, i16 2442, [12 x i8] c"o,,\04\05\05\05\05w\80\80p" }, %struct.b206x_channel { i8 8, i16 2447, [12 x i8] c"o,,\04\05\05\05\05w\80\80p" }, %struct.b206x_channel { i8 9, i16 2452, [12 x i8] c"o\1C\1C\04\05\05\05\05w\80\80p" }, %struct.b206x_channel { i8 10, i16 2457, [12 x i8] c"o\1C\1C\04\05\05\05\05w\80\80p" }, %struct.b206x_channel { i8 11, i16 2462, [12 x i8] c"n\1C\1C\04\05\05\05\05w\80\80p" }, %struct.b206x_channel { i8 12, i16 2467, [12 x i8] c"n\1C\1C\04\05\05\05\05w\80\80p" }, %struct.b206x_channel { i8 13, i16 2472, [12 x i8] c"n\1C\1C\04\05\05\05\05w\80\80p" }, %struct.b206x_channel { i8 14, i16 2484, [12 x i8] c"n\0C\0C\04\05\05\05\05w\80\80p" }, %struct.b206x_channel { i8 34, i16 5170, [12 x i8] c"j\0C\0C\00\02\05\0D\0Dw\80 \00" }, %struct.b206x_channel { i8 36, i16 5180, [12 x i8] c"j\0C\0C\00\01\05\0D\0Cw\80 \00" }, %struct.b206x_channel { i8 38, i16 5190, [12 x i8] c"j\0C\0C\00\01\04\0C\0Cw\80 \00" }, %struct.b206x_channel { i8 40, i16 5200, [12 x i8] c"i\0C\0C\00\01\04\0C\0Cwp \00" }, %struct.b206x_channel { i8 42, i16 5210, [12 x i8] c"i\0C\0C\00\01\04\0B\0Cwp \00" }, %struct.b206x_channel { i8 44, i16 5220, [12 x i8] c"i\0C\0C\00\00\04\0B\0Bw` \00" }, %struct.b206x_channel { i8 46, i16 5230, [12 x i8] c"i\0C\0C\00\00\03\0A\0Bw` \00" }, %struct.b206x_channel { i8 48, i16 5240, [12 x i8] c"i\0C\0C\00\00\03\0A\0Aw` \00" }, %struct.b206x_channel { i8 52, i16 5260, [12 x i8] c"h\0C\0C\00\00\02\09\09w` \00" }, %struct.b206x_channel { i8 56, i16 5280, [12 x i8] c"h\0C\0C\00\00\01\08\08wP\10\00" }, %struct.b206x_channel { i8 60, i16 5300, [12 x i8] c"h\0C\0C\00\00\01\08\08wP\10\00" }, %struct.b206x_channel { i8 64, i16 5320, [12 x i8] c"g\0C\0C\00\00\00\08\08wP\10\00" }, %struct.b206x_channel { i8 100, i16 5500, [12 x i8] c"d\0C\0C\00\00\00\02\01w \00\00" }, %struct.b206x_channel { i8 104, i16 5520, [12 x i8] c"d\0C\0C\00\00\00\01\01w \00\00" }, %struct.b206x_channel { i8 108, i16 5540, [12 x i8] c"c\0C\0C\00\00\00\01\00w\10\00\00" }, %struct.b206x_channel { i8 112, i16 5560, [12 x i8] c"c\0C\0C\00\00\00\00\00w\10\00\00" }, %struct.b206x_channel { i8 116, i16 5580, [12 x i8] c"b\0C\0C\00\00\00\00\00w\10\00\00" }, %struct.b206x_channel { i8 120, i16 5600, [12 x i8] c"b\0C\0C\00\00\00\00\00w\00\00\00" }, %struct.b206x_channel { i8 124, i16 5620, [12 x i8] c"b\0C\0C\00\00\00\00\00w\00\00\00" }, %struct.b206x_channel { i8 -128, i16 5640, [12 x i8] c"a\0C\0C\00\00\00\00\00w\00\00\00" }, %struct.b206x_channel { i8 -124, i16 5660, [12 x i8] c"a\0C\0C\00\00\00\00\00w\00\00\00" }, %struct.b206x_channel { i8 -120, i16 5680, [12 x i8] c"a\0C\0C\00\00\00\00\00w\00\00\00" }, %struct.b206x_channel { i8 -116, i16 5700, [12 x i8] c"`\0C\0C\00\00\00\00\00w\00\00\00" }, %struct.b206x_channel { i8 -107, i16 5745, [12 x i8] c"`\0C\0C\00\00\00\00\00w\00\00\00" }, %struct.b206x_channel { i8 -103, i16 5765, [12 x i8] c"`\0C\0C\00\00\00\00\00w\00\00\00" }, %struct.b206x_channel { i8 -99, i16 5785, [12 x i8] c"`\0C\0C\00\00\00\00\00w\00\00\00" }, %struct.b206x_channel { i8 -95, i16 5805, [12 x i8] c"`\0C\0C\00\00\00\00\00w\00\00\00" }, %struct.b206x_channel { i8 -91, i16 5825, [12 x i8] c"`\0C\0C\00\00\00\00\00w\00\00\00" }, %struct.b206x_channel { i8 -72, i16 4920, [12 x i8] c"n\0C\0C\00\09\0E\0F\0Fw\C0P\00" }, %struct.b206x_channel { i8 -68, i16 4940, [12 x i8] c"n\0C\0C\00\09\0D\0F\0Fw\B0P\00" }, %struct.b206x_channel { i8 -64, i16 4960, [12 x i8] c"n\0C\0C\00\08\0C\0F\0Fw\B0P\00" }, %struct.b206x_channel { i8 -60, i16 4980, [12 x i8] c"m\0C\0C\00\08\0C\0F\0Fw\A0@\00" }, %struct.b206x_channel { i8 -56, i16 5000, [12 x i8] c"m\0C\0C\00\08\0B\0F\0Fw\A0@\00" }, %struct.b206x_channel { i8 -52, i16 5020, [12 x i8] c"m\0C\0C\00\08\0A\0F\0Fw\A0@\00" }, %struct.b206x_channel { i8 -48, i16 5040, [12 x i8] c"l\0C\0C\00\07\09\0F\0Fw\90@\00" }, %struct.b206x_channel { i8 -44, i16 5060, [12 x i8] c"l\0C\0C\00\06\08\0F\0Fw\90@\00" }, %struct.b206x_channel { i8 -40, i16 5080, [12 x i8] c"l\0C\0C\00\05\08\0F\0Fw\90@\00" }], [208 x i8] zeroinitializer }, align 32
@b2062_chantbl = internal constant { [51 x %struct.b206x_channel], [208 x i8] } { [51 x %struct.b206x_channel] [%struct.b206x_channel { i8 1, i16 2412, [12 x i8] c"\FF\FF\B5\1B$22\88\88\00\00\00" }, %struct.b206x_channel { i8 2, i16 2417, [12 x i8] c"\FF\FF\B5\1B$22\88\88\00\00\00" }, %struct.b206x_channel { i8 3, i16 2422, [12 x i8] c"\FF\FF\B5\1B$22\88\88\00\00\00" }, %struct.b206x_channel { i8 4, i16 2427, [12 x i8] c"\FF\FF\B5\1B$22\88\88\00\00\00" }, %struct.b206x_channel { i8 5, i16 2432, [12 x i8] c"\FF\FF\B5\1B$22\88\88\00\00\00" }, %struct.b206x_channel { i8 6, i16 2437, [12 x i8] c"\FF\FF\B5\1B$22\88\88\00\00\00" }, %struct.b206x_channel { i8 7, i16 2442, [12 x i8] c"\FF\FF\B5\1B$22\88\88\00\00\00" }, %struct.b206x_channel { i8 8, i16 2447, [12 x i8] c"\FF\FF\B5\1B$22\88\88\00\00\00" }, %struct.b206x_channel { i8 9, i16 2452, [12 x i8] c"\FF\FF\B5\1B$22\88\88\00\00\00" }, %struct.b206x_channel { i8 10, i16 2457, [12 x i8] c"\FF\FF\B5\1B$22\88\88\00\00\00" }, %struct.b206x_channel { i8 11, i16 2462, [12 x i8] c"\FF\FF\B5\1B$22\88\88\00\00\00" }, %struct.b206x_channel { i8 12, i16 2467, [12 x i8] c"\FF\FF\B5\1B$22\88\88\00\00\00" }, %struct.b206x_channel { i8 13, i16 2472, [12 x i8] c"\FF\FF\B5\1B$22\88\88\00\00\00" }, %struct.b206x_channel { i8 14, i16 2484, [12 x i8] c"\FF\FF\B5\1B$22\88\88\00\00\00" }, %struct.b206x_channel { i8 34, i16 5170, [12 x i8] c"\00\22 \84<w5\FF\88\00\00\00" }, %struct.b206x_channel { i8 38, i16 5190, [12 x i8] c"\00\11\10\83<w5\FF\88\00\00\00" }, %struct.b206x_channel { i8 42, i16 5210, [12 x i8] c"\00\11\10\83<w5\FF\88\00\00\00" }, %struct.b206x_channel { i8 46, i16 5230, [12 x i8] c"\00\00\00\83<w5\FF\88\00\00\00" }, %struct.b206x_channel { i8 36, i16 5180, [12 x i8] c"\00\11 \83<w5\FF\88\00\00\00" }, %struct.b206x_channel { i8 40, i16 5200, [12 x i8] c"\00\11\10\84<w5\FF\88\00\00\00" }, %struct.b206x_channel { i8 44, i16 5220, [12 x i8] c"\00\11\00\83<w5\FF\88\00\00\00" }, %struct.b206x_channel { i8 48, i16 5240, [12 x i8] c"\00\00\00\83<w5\FF\88\00\00\00" }, %struct.b206x_channel { i8 52, i16 5260, [12 x i8] c"\00\00\00\83<w5\FF\88\00\00\00" }, %struct.b206x_channel { i8 56, i16 5280, [12 x i8] c"\00\00\00\83<w5\FF\88\00\00\00" }, %struct.b206x_channel { i8 60, i16 5300, [12 x i8] c"\00\00\00c<w5\FF\88\00\00\00" }, %struct.b206x_channel { i8 64, i16 5320, [12 x i8] c"\00\00\00b<w5\FF\88\00\00\00" }, %struct.b206x_channel { i8 100, i16 5500, [12 x i8] c"\00\00\000<w7\FF\88\00\00\00" }, %struct.b206x_channel { i8 104, i16 5520, [12 x i8] c"\00\00\00 <w7\FF\88\00\00\00" }, %struct.b206x_channel { i8 108, i16 5540, [12 x i8] c"\00\00\00 <w7\FF\88\00\00\00" }, %struct.b206x_channel { i8 112, i16 5560, [12 x i8] c"\00\00\00 <w7\FF\88\00\00\00" }, %struct.b206x_channel { i8 116, i16 5580, [12 x i8] c"\00\00\00\10<w7\FF\88\00\00\00" }, %struct.b206x_channel { i8 120, i16 5600, [12 x i8] c"\00\00\00\00<w7\FF\88\00\00\00" }, %struct.b206x_channel { i8 124, i16 5620, [12 x i8] c"\00\00\00\00<w7\FF\88\00\00\00" }, %struct.b206x_channel { i8 -128, i16 5640, [12 x i8] c"\00\00\00\00<w7\FF\88\00\00\00" }, %struct.b206x_channel { i8 -124, i16 5660, [12 x i8] c"\00\00\00\00<w7\FF\88\00\00\00" }, %struct.b206x_channel { i8 -120, i16 5680, [12 x i8] c"\00\00\00\00<w7\FF\88\00\00\00" }, %struct.b206x_channel { i8 -116, i16 5700, [12 x i8] c"\00\00\00\00<w7\FF\88\00\00\00" }, %struct.b206x_channel { i8 -107, i16 5745, [12 x i8] c"\00\00\00\00<w7\FF\88\00\00\00" }, %struct.b206x_channel { i8 -103, i16 5765, [12 x i8] c"\00\00\00\00<w7\FF\88\00\00\00" }, %struct.b206x_channel { i8 -99, i16 5785, [12 x i8] c"\00\00\00\00<w7\FF\88\00\00\00" }, %struct.b206x_channel { i8 -95, i16 5805, [12 x i8] c"\00\00\00\00<w7\FF\88\00\00\00" }, %struct.b206x_channel { i8 -91, i16 5825, [12 x i8] c"\00\00\00\00<w7\FF\88\00\00\00" }, %struct.b206x_channel { i8 -72, i16 4920, [12 x i8] c"Uw\90\F7<w5\FF\FF\00\00\00" }, %struct.b206x_channel { i8 -68, i16 4940, [12 x i8] c"Dw\80\E7<w5\FF\FF\00\00\00" }, %struct.b206x_channel { i8 -64, i16 4960, [12 x i8] c"Df\80\E7<w5\FF\FF\00\00\00" }, %struct.b206x_channel { i8 -60, i16 4980, [12 x i8] c"3fp\C7<w5\FF\FF\00\00\00" }, %struct.b206x_channel { i8 -56, i16 5000, [12 x i8] c"\22U`\D7<w5\FF\FF\00\00\00" }, %struct.b206x_channel { i8 -52, i16 5020, [12 x i8] c"\22U`\C7<w5\FF\FF\00\00\00" }, %struct.b206x_channel { i8 -48, i16 5040, [12 x i8] c"\22DP\C7<w5\FF\FF\00\00\00" }, %struct.b206x_channel { i8 -44, i16 5060, [12 x i8] c"\11DP\A5<w5\FF\88\00\00\00" }, %struct.b206x_channel { i8 -40, i16 5080, [12 x i8] c"\00D@\B6<w5\FF\88\00\00\00" }], [208 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"PR41573 failed. Out of memory!\0A\00", [32 x i8] zeroinitializer }, align 32
@lpphy_5354_iq_table = internal constant { [14 x %struct.lpphy_rx_iq_comp], [54 x i8] } { [14 x %struct.lpphy_rx_iq_comp] [%struct.lpphy_rx_iq_comp { i8 1, i8 -66, i8 15 }, %struct.lpphy_rx_iq_comp { i8 2, i8 -66, i8 15 }, %struct.lpphy_rx_iq_comp { i8 3, i8 -66, i8 15 }, %struct.lpphy_rx_iq_comp { i8 4, i8 -66, i8 15 }, %struct.lpphy_rx_iq_comp { i8 5, i8 -66, i8 15 }, %struct.lpphy_rx_iq_comp { i8 6, i8 -66, i8 15 }, %struct.lpphy_rx_iq_comp { i8 7, i8 -66, i8 14 }, %struct.lpphy_rx_iq_comp { i8 8, i8 -66, i8 14 }, %struct.lpphy_rx_iq_comp { i8 9, i8 -66, i8 14 }, %struct.lpphy_rx_iq_comp { i8 10, i8 -66, i8 14 }, %struct.lpphy_rx_iq_comp { i8 11, i8 -66, i8 14 }, %struct.lpphy_rx_iq_comp { i8 12, i8 -66, i8 13 }, %struct.lpphy_rx_iq_comp { i8 13, i8 -66, i8 13 }, %struct.lpphy_rx_iq_comp { i8 14, i8 -66, i8 13 }], [54 x i8] zeroinitializer }, align 32
@lpphy_rev2plus_iq_comp = internal constant { %struct.lpphy_rx_iq_comp, [29 x i8] } { %struct.lpphy_rx_iq_comp { i8 0, i8 -64, i8 0 }, [29 x i8] zeroinitializer }, align 32
@lpphy_rev0_1_iq_table = internal constant { [51 x %struct.lpphy_rx_iq_comp], [39 x i8] } { [51 x %struct.lpphy_rx_iq_comp] [%struct.lpphy_rx_iq_comp { i8 1, i8 -64, i8 13 }, %struct.lpphy_rx_iq_comp { i8 2, i8 -64, i8 13 }, %struct.lpphy_rx_iq_comp { i8 3, i8 -64, i8 13 }, %struct.lpphy_rx_iq_comp { i8 4, i8 -64, i8 13 }, %struct.lpphy_rx_iq_comp { i8 5, i8 -64, i8 12 }, %struct.lpphy_rx_iq_comp { i8 6, i8 -64, i8 12 }, %struct.lpphy_rx_iq_comp { i8 7, i8 -64, i8 12 }, %struct.lpphy_rx_iq_comp { i8 8, i8 -64, i8 12 }, %struct.lpphy_rx_iq_comp { i8 9, i8 -64, i8 12 }, %struct.lpphy_rx_iq_comp { i8 10, i8 -64, i8 11 }, %struct.lpphy_rx_iq_comp { i8 11, i8 -64, i8 11 }, %struct.lpphy_rx_iq_comp { i8 12, i8 -64, i8 11 }, %struct.lpphy_rx_iq_comp { i8 13, i8 -64, i8 11 }, %struct.lpphy_rx_iq_comp { i8 14, i8 -64, i8 10 }, %struct.lpphy_rx_iq_comp { i8 34, i8 -62, i8 24 }, %struct.lpphy_rx_iq_comp { i8 38, i8 -62, i8 24 }, %struct.lpphy_rx_iq_comp { i8 42, i8 -62, i8 24 }, %struct.lpphy_rx_iq_comp { i8 46, i8 -62, i8 23 }, %struct.lpphy_rx_iq_comp { i8 36, i8 -62, i8 24 }, %struct.lpphy_rx_iq_comp { i8 40, i8 -62, i8 24 }, %struct.lpphy_rx_iq_comp { i8 44, i8 -62, i8 23 }, %struct.lpphy_rx_iq_comp { i8 48, i8 -62, i8 23 }, %struct.lpphy_rx_iq_comp { i8 52, i8 -62, i8 23 }, %struct.lpphy_rx_iq_comp { i8 56, i8 -62, i8 22 }, %struct.lpphy_rx_iq_comp { i8 60, i8 -62, i8 22 }, %struct.lpphy_rx_iq_comp { i8 64, i8 -62, i8 22 }, %struct.lpphy_rx_iq_comp { i8 100, i8 -62, i8 16 }, %struct.lpphy_rx_iq_comp { i8 104, i8 -62, i8 16 }, %struct.lpphy_rx_iq_comp { i8 108, i8 -62, i8 15 }, %struct.lpphy_rx_iq_comp { i8 112, i8 -62, i8 14 }, %struct.lpphy_rx_iq_comp { i8 116, i8 -62, i8 14 }, %struct.lpphy_rx_iq_comp { i8 120, i8 -62, i8 13 }, %struct.lpphy_rx_iq_comp { i8 124, i8 -62, i8 12 }, %struct.lpphy_rx_iq_comp { i8 -128, i8 -62, i8 12 }, %struct.lpphy_rx_iq_comp { i8 -124, i8 -62, i8 12 }, %struct.lpphy_rx_iq_comp { i8 -120, i8 -62, i8 11 }, %struct.lpphy_rx_iq_comp { i8 -116, i8 -62, i8 10 }, %struct.lpphy_rx_iq_comp { i8 -107, i8 -61, i8 9 }, %struct.lpphy_rx_iq_comp { i8 -103, i8 -61, i8 9 }, %struct.lpphy_rx_iq_comp { i8 -99, i8 -61, i8 9 }, %struct.lpphy_rx_iq_comp { i8 -95, i8 -61, i8 8 }, %struct.lpphy_rx_iq_comp { i8 -91, i8 -61, i8 8 }, %struct.lpphy_rx_iq_comp { i8 -72, i8 -62, i8 25 }, %struct.lpphy_rx_iq_comp { i8 -68, i8 -62, i8 25 }, %struct.lpphy_rx_iq_comp { i8 -64, i8 -62, i8 25 }, %struct.lpphy_rx_iq_comp { i8 -60, i8 -62, i8 25 }, %struct.lpphy_rx_iq_comp { i8 -56, i8 -62, i8 25 }, %struct.lpphy_rx_iq_comp { i8 -52, i8 -62, i8 25 }, %struct.lpphy_rx_iq_comp { i8 -48, i8 -62, i8 25 }, %struct.lpphy_rx_iq_comp { i8 -44, i8 -62, i8 25 }, %struct.lpphy_rx_iq_comp { i8 -40, i8 -62, i8 26 }], [39 x i8] zeroinitializer }, align 32
@switch.table.lpphy_set_tx_power_control = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 0, i16 -32768, i16 -8192], [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 32768, i64 57344]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 32768, i64 57344]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 32768, i64 57344]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 32768, i64 57344]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 32768, i64 57344]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 32768, i64 57344]
@___asan_gen_.11 = private unnamed_addr constant [14 x i8] c"b43_phyops_lp\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 2676, i32 33 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 2629, i32 19 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 2639, i32 19 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 163, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [13 x i8] c"freqdata_tab\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 509, i32 37 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 579, i32 18 }
@___asan_gen_.29 = private unnamed_addr constant [16 x i8] c"lpphy_stx_table\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 619, i32 43 }
@___asan_gen_.32 = private unnamed_addr constant [16 x i8] c"ideal_pwr_table\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 1177, i32 19 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 1196, i32 10 }
@___asan_gen_.38 = private unnamed_addr constant [9 x i8] c"chandata\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 2482, i32 37 }
@___asan_gen_.41 = private unnamed_addr constant [14 x i8] c"b2063_chantbl\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 2159, i32 35 }
@___asan_gen_.44 = private unnamed_addr constant [14 x i8] c"b2062_chantbl\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 2003, i32 35 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 1575, i32 19 }
@___asan_gen_.50 = private unnamed_addr constant [20 x i8] c"lpphy_5354_iq_table\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 1620, i32 38 }
@___asan_gen_.53 = private unnamed_addr constant [23 x i8] c"lpphy_rev2plus_iq_comp\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 1691, i32 38 }
@___asan_gen_.56 = private unnamed_addr constant [22 x i8] c"lpphy_rev0_1_iq_table\00", align 1
@___asan_gen_.57 = private constant [46 x i8] c"../drivers/net/wireless/broadcom/b43/phy_lp.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 1637, i32 38 }
@___asan_gen_.59 = private unnamed_addr constant [40 x i8] c"switch.table.lpphy_set_tx_power_control\00", align 1
@llvm.compiler.used = appending global [17 x ptr] [ptr @b43_phyops_lp, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @lpphy_2062_init.freqdata_tab, ptr @.str.3, ptr @lpphy_stx_table, ptr @lpphy_rev0_1_rc_calib.ideal_pwr_table, ptr @.str.4, ptr @lpphy_b2063_tune.chandata, ptr @b2063_chantbl, ptr @b2062_chantbl, ptr @.str.5, ptr @lpphy_5354_iq_table, ptr @lpphy_rev2plus_iq_comp, ptr @lpphy_rev0_1_iq_table, ptr @switch.table.lpphy_set_tx_power_control], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_phyops_lp to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpphy_2062_init.freqdata_tab to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpphy_stx_table to i32), i32 290, i32 384, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpphy_rev0_1_rc_calib.ideal_pwr_table to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpphy_b2063_tune.chandata to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b2063_chantbl to i32), i32 816, i32 1024, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b2062_chantbl to i32), i32 816, i32 1024, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpphy_5354_iq_table to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpphy_rev2plus_iq_comp to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpphy_rev0_1_iq_table to i32), i32 153, i32 192, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.lpphy_set_tx_power_control to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b43_lpphy_op_allocate(ptr nocapture noundef writeonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 188) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %lp = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 1, i32 2
  %1 = ptrtoint ptr %lp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %lp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b43_lpphy_op_free(ptr nocapture noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lp = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 1, i32 2
  %0 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lp, align 4
  tail call void @kfree(ptr noundef %1) #8
  %2 = ptrtoint ptr %lp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %lp, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @b43_lpphy_op_prepare_structs(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lp = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 1, i32 2
  %0 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lp, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 188)
  %antenna = getelementptr inbounds %struct.b43_phy_lp, ptr %1, i32 0, i32 32
  %3 = ptrtoint ptr %antenna to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %antenna, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b43_lpphy_op_init(ptr noundef %dev) #0 align 64 {
entry:
  %iq_est.i.i.i = alloca %struct.lpphy_iq_est, align 4
  %iq_est.i.i = alloca %struct.lpphy_iq_est, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %wl = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wl, align 4
  tail call void (ptr, ptr, ...) @b43err(ptr noundef %5, ptr noundef nonnull @.str) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %bus_sprom.i = getelementptr inbounds %struct.b43_bus_dev, ptr %1, i32 0, i32 23
  %6 = ptrtoint ptr %bus_sprom.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_sprom.i, align 4
  %lp.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 1, i32 2
  %8 = ptrtoint ptr %lp.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lp.i, align 4
  %wl.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %10 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wl.i, align 4
  %hw.i.i = getelementptr inbounds %struct.b43_wl, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw.i.i, align 4
  %chandef.i.i = getelementptr inbounds %struct.ieee80211_conf, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %chandef.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chandef.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i = icmp eq i32 %17, 0
  br i1 %cmp.i, label %if.then.i, label %if.else51.i

if.then.i:                                        ; preds = %if.end
  %tri2g.i = getelementptr inbounds %struct.ssb_sprom, ptr %7, i32 0, i32 44
  %18 = ptrtoint ptr %tri2g.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tri2g.i, align 2
  %tx_isolation_med_band.i = getelementptr inbounds %struct.b43_phy_lp, ptr %9, i32 0, i32 1
  %20 = ptrtoint ptr %tx_isolation_med_band.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %tx_isolation_med_band.i, align 4
  %bxa2g.i = getelementptr inbounds %struct.ssb_sprom, ptr %7, i32 0, i32 57
  %21 = ptrtoint ptr %bxa2g.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bxa2g.i, align 1
  %bx_arch.i = getelementptr inbounds %struct.b43_phy_lp, ptr %9, i32 0, i32 23
  %23 = ptrtoint ptr %bx_arch.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %bx_arch.i, align 1
  %rxpo2g.i = getelementptr inbounds %struct.ssb_sprom, ptr %7, i32 0, i32 52
  %24 = ptrtoint ptr %rxpo2g.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %rxpo2g.i, align 2
  %rx_pwr_offset.i = getelementptr inbounds %struct.b43_phy_lp, ptr %9, i32 0, i32 13
  %26 = ptrtoint ptr %rx_pwr_offset.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %rx_pwr_offset.i, align 2
  %rssismf2g.i = getelementptr inbounds %struct.ssb_sprom, ptr %7, i32 0, i32 56
  %27 = ptrtoint ptr %rssismf2g.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %rssismf2g.i, align 2
  %rssi_vf.i = getelementptr inbounds %struct.b43_phy_lp, ptr %9, i32 0, i32 19
  %29 = ptrtoint ptr %rssi_vf.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %rssi_vf.i, align 1
  %rssismc2g.i = getelementptr inbounds %struct.ssb_sprom, ptr %7, i32 0, i32 55
  %30 = ptrtoint ptr %rssismc2g.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %rssismc2g.i, align 1
  %rssi_vc.i = getelementptr inbounds %struct.b43_phy_lp, ptr %9, i32 0, i32 20
  %32 = ptrtoint ptr %rssi_vc.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %rssi_vc.i, align 2
  %rssisav2g.i = getelementptr inbounds %struct.ssb_sprom, ptr %7, i32 0, i32 54
  %33 = ptrtoint ptr %rssisav2g.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %rssisav2g.i, align 4
  %rssi_gs.i = getelementptr inbounds %struct.b43_phy_lp, ptr %9, i32 0, i32 21
  %35 = ptrtoint ptr %rssi_gs.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %rssi_gs.i, align 1
  %pa0b0.i = getelementptr inbounds %struct.ssb_sprom, ptr %7, i32 0, i32 22
  %36 = ptrtoint ptr %pa0b0.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %pa0b0.i, align 4
  %txpa.i = getelementptr inbounds %struct.b43_phy_lp, ptr %9, i32 0, i32 10
  %38 = ptrtoint ptr %txpa.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %txpa.i, align 4
  %pa0b1.i = getelementptr inbounds %struct.ssb_sprom, ptr %7, i32 0, i32 23
  %39 = ptrtoint ptr %pa0b1.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %pa0b1.i, align 2
  %arrayidx3.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 10, i32 1
  %41 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %arrayidx3.i, align 2
  %pa0b2.i = getelementptr inbounds %struct.ssb_sprom, ptr %7, i32 0, i32 24
  %42 = ptrtoint ptr %pa0b2.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %pa0b2.i, align 4
  %arrayidx5.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 10, i32 2
  %44 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %arrayidx5.i, align 4
  %maxpwr_bg.i = getelementptr inbounds %struct.ssb_sprom, ptr %7, i32 0, i32 38
  %45 = ptrtoint ptr %maxpwr_bg.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %maxpwr_bg.i, align 4
  %conv.i = zext i8 %46 to i16
  %max_tx_pwr_med_band.i = getelementptr inbounds %struct.b43_phy_lp, ptr %9, i32 0, i32 4
  %47 = ptrtoint ptr %max_tx_pwr_med_band.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv.i, ptr %max_tx_pwr_med_band.i, align 4
  %cck2gpo.i = getelementptr inbounds %struct.ssb_sprom, ptr %7, i32 0, i32 62
  %48 = ptrtoint ptr %cck2gpo.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %cck2gpo.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool.not.i = icmp eq i16 %49, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %ofdm2gpo.i = getelementptr inbounds %struct.ssb_sprom, ptr %7, i32 0, i32 63
  %50 = ptrtoint ptr %ofdm2gpo.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ofdm2gpo.i, align 4
  %conv9.i = zext i8 %46 to i32
  %and.i = shl i32 %51, 1
  %mul.i = and i32 %and.i, 30
  %sub.i = sub nsw i32 %conv9.i, %mul.i
  %conv10.i = trunc i32 %sub.i to i16
  %arrayidx11.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 7, i32 0
  %52 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv10.i, ptr %arrayidx11.i, align 2
  %53 = lshr i32 %51, 3
  %mul.1.i = and i32 %53, 30
  %sub.1.i = sub nsw i32 %conv9.i, %mul.1.i
  %conv10.1.i = trunc i32 %sub.1.i to i16
  %arrayidx11.1.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 7, i32 1
  %54 = ptrtoint ptr %arrayidx11.1.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv10.1.i, ptr %arrayidx11.1.i, align 2
  %55 = lshr i32 %51, 7
  %mul.2.i = and i32 %55, 30
  %sub.2.i = sub nsw i32 %conv9.i, %mul.2.i
  %conv10.2.i = trunc i32 %sub.2.i to i16
  %arrayidx11.2.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 7, i32 2
  %56 = ptrtoint ptr %arrayidx11.2.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv10.2.i, ptr %arrayidx11.2.i, align 2
  %57 = lshr i32 %51, 11
  %mul.3.i = and i32 %57, 30
  %sub.3.i = sub nsw i32 %conv9.i, %mul.3.i
  %conv10.3.i = trunc i32 %sub.3.i to i16
  %arrayidx11.3.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 7, i32 3
  %58 = ptrtoint ptr %arrayidx11.3.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv10.3.i, ptr %arrayidx11.3.i, align 2
  %59 = load i32, ptr %ofdm2gpo.i, align 4
  %and18.i = shl i32 %59, 1
  %mul19.i = and i32 %and18.i, 30
  %sub20.i = sub nsw i32 %conv9.i, %mul19.i
  %conv21.i = trunc i32 %sub20.i to i16
  %arrayidx23.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 7, i32 4
  %60 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv21.i, ptr %arrayidx23.i, align 2
  %61 = lshr i32 %59, 3
  %mul19.1.i = and i32 %61, 30
  %sub20.1.i = sub nsw i32 %conv9.i, %mul19.1.i
  %conv21.1.i = trunc i32 %sub20.1.i to i16
  %arrayidx23.1.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 7, i32 5
  %62 = ptrtoint ptr %arrayidx23.1.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv21.1.i, ptr %arrayidx23.1.i, align 2
  %63 = lshr i32 %59, 7
  %mul19.2.i = and i32 %63, 30
  %sub20.2.i = sub nsw i32 %conv9.i, %mul19.2.i
  %conv21.2.i = trunc i32 %sub20.2.i to i16
  %arrayidx23.2.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 7, i32 6
  %64 = ptrtoint ptr %arrayidx23.2.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv21.2.i, ptr %arrayidx23.2.i, align 2
  %65 = lshr i32 %59, 11
  %mul19.3.i = and i32 %65, 30
  %sub20.3.i = sub nsw i32 %conv9.i, %mul19.3.i
  %conv21.3.i = trunc i32 %sub20.3.i to i16
  %arrayidx23.3.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 7, i32 7
  %66 = ptrtoint ptr %arrayidx23.3.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv21.3.i, ptr %arrayidx23.3.i, align 2
  %67 = lshr i32 %59, 15
  %mul19.4.i = and i32 %67, 30
  %sub20.4.i = sub nsw i32 %conv9.i, %mul19.4.i
  %conv21.4.i = trunc i32 %sub20.4.i to i16
  %arrayidx23.4.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 7, i32 8
  %68 = ptrtoint ptr %arrayidx23.4.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv21.4.i, ptr %arrayidx23.4.i, align 2
  %69 = lshr i32 %59, 19
  %mul19.5.i = and i32 %69, 30
  %sub20.5.i = sub nsw i32 %conv9.i, %mul19.5.i
  %conv21.5.i = trunc i32 %sub20.5.i to i16
  %arrayidx23.5.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 7, i32 9
  %70 = ptrtoint ptr %arrayidx23.5.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv21.5.i, ptr %arrayidx23.5.i, align 2
  %71 = lshr i32 %59, 23
  %mul19.6.i = and i32 %71, 30
  %sub20.6.i = sub nsw i32 %conv9.i, %mul19.6.i
  %conv21.6.i = trunc i32 %sub20.6.i to i16
  %arrayidx23.6.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 7, i32 10
  %72 = ptrtoint ptr %arrayidx23.6.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv21.6.i, ptr %arrayidx23.6.i, align 2
  %73 = lshr i32 %59, 27
  %and18.7.i = and i32 %73, 30
  %sub20.7.i = sub nsw i32 %conv9.i, %and18.7.i
  %conv21.7.i = trunc i32 %sub20.7.i to i16
  %arrayidx23.7.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 7, i32 11
  %74 = ptrtoint ptr %arrayidx23.7.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv21.7.i, ptr %arrayidx23.7.i, align 2
  %arrayidx23.8.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 7, i32 12
  %75 = ptrtoint ptr %arrayidx23.8.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv.i, ptr %arrayidx23.8.i, align 2
  %arrayidx23.9.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 7, i32 13
  %76 = ptrtoint ptr %arrayidx23.9.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv.i, ptr %arrayidx23.9.i, align 2
  %arrayidx23.10.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 7, i32 14
  %77 = ptrtoint ptr %arrayidx23.10.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv.i, ptr %arrayidx23.10.i, align 2
  br label %lpphy_read_band_sprom.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %opo28.i = getelementptr inbounds %struct.ssb_sprom, ptr %7, i32 0, i32 81
  %78 = ptrtoint ptr %opo28.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %opo28.i, align 2
  %arrayidx34.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 7, i32 0
  %80 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %conv.i, ptr %arrayidx34.i, align 2
  %arrayidx34.1.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 7, i32 1
  %81 = ptrtoint ptr %arrayidx34.1.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv.i, ptr %arrayidx34.1.i, align 2
  %arrayidx34.2.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 7, i32 2
  %82 = ptrtoint ptr %arrayidx34.2.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv.i, ptr %arrayidx34.2.i, align 2
  %arrayidx34.3.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 7, i32 3
  %83 = ptrtoint ptr %arrayidx34.3.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %conv.i, ptr %arrayidx34.3.i, align 2
  %conv43.i = zext i8 %79 to i16
  %sub44.i = sub nsw i16 %conv.i, %conv43.i
  %arrayidx47.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 7, i32 4
  %84 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %sub44.i, ptr %arrayidx47.i, align 2
  %arrayidx47.1.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 7, i32 5
  %85 = ptrtoint ptr %arrayidx47.1.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %sub44.i, ptr %arrayidx47.1.i, align 2
  %arrayidx47.2.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 7, i32 6
  %86 = ptrtoint ptr %arrayidx47.2.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %sub44.i, ptr %arrayidx47.2.i, align 2
  %arrayidx47.3.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 7, i32 7
  %87 = ptrtoint ptr %arrayidx47.3.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %sub44.i, ptr %arrayidx47.3.i, align 2
  %arrayidx47.4.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 7, i32 8
  %88 = ptrtoint ptr %arrayidx47.4.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %sub44.i, ptr %arrayidx47.4.i, align 2
  %arrayidx47.5.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 7, i32 9
  %89 = ptrtoint ptr %arrayidx47.5.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %sub44.i, ptr %arrayidx47.5.i, align 2
  %arrayidx47.6.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 7, i32 10
  %90 = ptrtoint ptr %arrayidx47.6.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %sub44.i, ptr %arrayidx47.6.i, align 2
  %arrayidx47.7.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 7, i32 11
  %91 = ptrtoint ptr %arrayidx47.7.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %sub44.i, ptr %arrayidx47.7.i, align 2
  %arrayidx47.8.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 7, i32 12
  %92 = ptrtoint ptr %arrayidx47.8.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %sub44.i, ptr %arrayidx47.8.i, align 2
  %arrayidx47.9.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 7, i32 13
  %93 = ptrtoint ptr %arrayidx47.9.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %sub44.i, ptr %arrayidx47.9.i, align 2
  %arrayidx47.10.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 7, i32 14
  %94 = ptrtoint ptr %arrayidx47.10.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %sub44.i, ptr %arrayidx47.10.i, align 2
  br label %lpphy_read_band_sprom.exit

if.else51.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %tri5gl.i = getelementptr inbounds %struct.ssb_sprom, ptr %7, i32 0, i32 45
  %95 = ptrtoint ptr %tri5gl.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %tri5gl.i, align 1
  %tx_isolation_low_band.i = getelementptr inbounds %struct.b43_phy_lp, ptr %9, i32 0, i32 2
  %97 = ptrtoint ptr %tx_isolation_low_band.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %tx_isolation_low_band.i, align 1
  %tri5g.i = getelementptr inbounds %struct.ssb_sprom, ptr %7, i32 0, i32 46
  %98 = ptrtoint ptr %tri5g.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %tri5g.i, align 4
  %tx_isolation_med_band52.i = getelementptr inbounds %struct.b43_phy_lp, ptr %9, i32 0, i32 1
  %100 = ptrtoint ptr %tx_isolation_med_band52.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %tx_isolation_med_band52.i, align 4
  %tri5gh.i = getelementptr inbounds %struct.ssb_sprom, ptr %7, i32 0, i32 47
  %101 = ptrtoint ptr %tri5gh.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %tri5gh.i, align 1
  %tx_isolation_hi_band.i = getelementptr inbounds %struct.b43_phy_lp, ptr %9, i32 0, i32 3
  %103 = ptrtoint ptr %tx_isolation_hi_band.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %tx_isolation_hi_band.i, align 2
  %bxa5g.i = getelementptr inbounds %struct.ssb_sprom, ptr %7, i32 0, i32 61
  %104 = ptrtoint ptr %bxa5g.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %bxa5g.i, align 1
  %bx_arch53.i = getelementptr inbounds %struct.b43_phy_lp, ptr %9, i32 0, i32 23
  %106 = ptrtoint ptr %bx_arch53.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %bx_arch53.i, align 1
  %rxpo5g.i = getelementptr inbounds %struct.ssb_sprom, ptr %7, i32 0, i32 53
  %107 = ptrtoint ptr %rxpo5g.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %rxpo5g.i, align 1
  %rx_pwr_offset54.i = getelementptr inbounds %struct.b43_phy_lp, ptr %9, i32 0, i32 13
  %109 = ptrtoint ptr %rx_pwr_offset54.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %108, ptr %rx_pwr_offset54.i, align 2
  %rssismf5g.i = getelementptr inbounds %struct.ssb_sprom, ptr %7, i32 0, i32 60
  %110 = ptrtoint ptr %rssismf5g.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %rssismf5g.i, align 2
  %rssi_vf55.i = getelementptr inbounds %struct.b43_phy_lp, ptr %9, i32 0, i32 19
  %112 = ptrtoint ptr %rssi_vf55.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %111, ptr %rssi_vf55.i, align 1
  %rssismc5g.i = getelementptr inbounds %struct.ssb_sprom, ptr %7, i32 0, i32 59
  %113 = ptrtoint ptr %rssismc5g.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %rssismc5g.i, align 1
  %rssi_vc56.i = getelementptr inbounds %struct.b43_phy_lp, ptr %9, i32 0, i32 20
  %115 = ptrtoint ptr %rssi_vc56.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %114, ptr %rssi_vc56.i, align 2
  %rssisav5g.i = getelementptr inbounds %struct.ssb_sprom, ptr %7, i32 0, i32 58
  %116 = ptrtoint ptr %rssisav5g.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %rssisav5g.i, align 4
  %rssi_gs57.i = getelementptr inbounds %struct.b43_phy_lp, ptr %9, i32 0, i32 21
  %118 = ptrtoint ptr %rssi_gs57.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %117, ptr %rssi_gs57.i, align 1
  %pa1b0.i = getelementptr inbounds %struct.ssb_sprom, ptr %7, i32 0, i32 25
  %119 = ptrtoint ptr %pa1b0.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %pa1b0.i, align 2
  %txpa58.i = getelementptr inbounds %struct.b43_phy_lp, ptr %9, i32 0, i32 10
  %121 = ptrtoint ptr %txpa58.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %120, ptr %txpa58.i, align 4
  %pa1b1.i = getelementptr inbounds %struct.ssb_sprom, ptr %7, i32 0, i32 26
  %122 = ptrtoint ptr %pa1b1.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %pa1b1.i, align 4
  %arrayidx61.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 10, i32 1
  %124 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %123, ptr %arrayidx61.i, align 2
  %pa1b2.i = getelementptr inbounds %struct.ssb_sprom, ptr %7, i32 0, i32 27
  %125 = ptrtoint ptr %pa1b2.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %pa1b2.i, align 2
  %arrayidx63.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 10, i32 2
  %127 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %126, ptr %arrayidx63.i, align 4
  %pa1lob0.i = getelementptr inbounds %struct.ssb_sprom, ptr %7, i32 0, i32 28
  %128 = ptrtoint ptr %pa1lob0.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %pa1lob0.i, align 4
  %txpal.i = getelementptr inbounds %struct.b43_phy_lp, ptr %9, i32 0, i32 11
  %130 = ptrtoint ptr %txpal.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %129, ptr %txpal.i, align 2
  %pa1lob1.i = getelementptr inbounds %struct.ssb_sprom, ptr %7, i32 0, i32 29
  %131 = ptrtoint ptr %pa1lob1.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %pa1lob1.i, align 2
  %arrayidx66.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 11, i32 1
  %133 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %132, ptr %arrayidx66.i, align 2
  %pa1lob2.i = getelementptr inbounds %struct.ssb_sprom, ptr %7, i32 0, i32 30
  %134 = ptrtoint ptr %pa1lob2.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %pa1lob2.i, align 4
  %arrayidx68.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 11, i32 2
  %136 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %135, ptr %arrayidx68.i, align 2
  %pa1hib0.i = getelementptr inbounds %struct.ssb_sprom, ptr %7, i32 0, i32 31
  %137 = ptrtoint ptr %pa1hib0.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %pa1hib0.i, align 2
  %txpah.i = getelementptr inbounds %struct.b43_phy_lp, ptr %9, i32 0, i32 12
  %139 = ptrtoint ptr %txpah.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %138, ptr %txpah.i, align 4
  %pa1hib1.i = getelementptr inbounds %struct.ssb_sprom, ptr %7, i32 0, i32 32
  %140 = ptrtoint ptr %pa1hib1.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %pa1hib1.i, align 4
  %arrayidx71.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 12, i32 1
  %142 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %141, ptr %arrayidx71.i, align 2
  %pa1hib2.i = getelementptr inbounds %struct.ssb_sprom, ptr %7, i32 0, i32 33
  %143 = ptrtoint ptr %pa1hib2.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %pa1hib2.i, align 2
  %arrayidx73.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 12, i32 2
  %145 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %144, ptr %arrayidx73.i, align 4
  %maxpwr_al.i = getelementptr inbounds %struct.ssb_sprom, ptr %7, i32 0, i32 39
  %146 = ptrtoint ptr %maxpwr_al.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %maxpwr_al.i, align 1
  %conv74.i = zext i8 %147 to i16
  %ofdm5glpo.i = getelementptr inbounds %struct.ssb_sprom, ptr %7, i32 0, i32 64
  %148 = ptrtoint ptr %ofdm5glpo.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %ofdm5glpo.i, align 4
  %max_tx_pwr_low_band.i = getelementptr inbounds %struct.b43_phy_lp, ptr %9, i32 0, i32 5
  %150 = ptrtoint ptr %max_tx_pwr_low_band.i to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %conv74.i, ptr %max_tx_pwr_low_band.i, align 2
  %conv79.i = zext i8 %147 to i32
  %and80.i = shl i32 %149, 1
  %mul81.i = and i32 %and80.i, 30
  %sub82.i = sub nsw i32 %conv79.i, %mul81.i
  %conv83.i = trunc i32 %sub82.i to i16
  %arrayidx84.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 8, i32 4
  %151 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 %conv83.i, ptr %arrayidx84.i, align 2
  %152 = lshr i32 %149, 3
  %mul81.1.i = and i32 %152, 30
  %sub82.1.i = sub nsw i32 %conv79.i, %mul81.1.i
  %conv83.1.i = trunc i32 %sub82.1.i to i16
  %arrayidx84.1.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 8, i32 5
  %153 = ptrtoint ptr %arrayidx84.1.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %conv83.1.i, ptr %arrayidx84.1.i, align 2
  %154 = lshr i32 %149, 7
  %mul81.2.i = and i32 %154, 30
  %sub82.2.i = sub nsw i32 %conv79.i, %mul81.2.i
  %conv83.2.i = trunc i32 %sub82.2.i to i16
  %arrayidx84.2.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 8, i32 6
  %155 = ptrtoint ptr %arrayidx84.2.i to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %conv83.2.i, ptr %arrayidx84.2.i, align 2
  %156 = lshr i32 %149, 11
  %mul81.3.i = and i32 %156, 30
  %sub82.3.i = sub nsw i32 %conv79.i, %mul81.3.i
  %conv83.3.i = trunc i32 %sub82.3.i to i16
  %arrayidx84.3.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 8, i32 7
  %157 = ptrtoint ptr %arrayidx84.3.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %conv83.3.i, ptr %arrayidx84.3.i, align 2
  %158 = lshr i32 %149, 15
  %mul81.4.i = and i32 %158, 30
  %sub82.4.i = sub nsw i32 %conv79.i, %mul81.4.i
  %conv83.4.i = trunc i32 %sub82.4.i to i16
  %arrayidx84.4.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 8, i32 8
  %159 = ptrtoint ptr %arrayidx84.4.i to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %conv83.4.i, ptr %arrayidx84.4.i, align 2
  %160 = lshr i32 %149, 19
  %mul81.5.i = and i32 %160, 30
  %sub82.5.i = sub nsw i32 %conv79.i, %mul81.5.i
  %conv83.5.i = trunc i32 %sub82.5.i to i16
  %arrayidx84.5.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 8, i32 9
  %161 = ptrtoint ptr %arrayidx84.5.i to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 %conv83.5.i, ptr %arrayidx84.5.i, align 2
  %162 = lshr i32 %149, 23
  %mul81.6.i = and i32 %162, 30
  %sub82.6.i = sub nsw i32 %conv79.i, %mul81.6.i
  %conv83.6.i = trunc i32 %sub82.6.i to i16
  %arrayidx84.6.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 8, i32 10
  %163 = ptrtoint ptr %arrayidx84.6.i to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 %conv83.6.i, ptr %arrayidx84.6.i, align 2
  %164 = lshr i32 %149, 27
  %and80.7.i = and i32 %164, 30
  %sub82.7.i = sub nsw i32 %conv79.i, %and80.7.i
  %conv83.7.i = trunc i32 %sub82.7.i to i16
  %arrayidx84.7.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 8, i32 11
  %165 = ptrtoint ptr %arrayidx84.7.i to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 %conv83.7.i, ptr %arrayidx84.7.i, align 2
  %maxpwr_a.i = getelementptr inbounds %struct.ssb_sprom, ptr %7, i32 0, i32 40
  %166 = ptrtoint ptr %maxpwr_a.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %maxpwr_a.i, align 2
  %conv89.i = zext i8 %167 to i16
  %ofdm5gpo.i = getelementptr inbounds %struct.ssb_sprom, ptr %7, i32 0, i32 65
  %168 = ptrtoint ptr %ofdm5gpo.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %ofdm5gpo.i, align 4
  %max_tx_pwr_med_band90.i = getelementptr inbounds %struct.b43_phy_lp, ptr %9, i32 0, i32 4
  %170 = ptrtoint ptr %max_tx_pwr_med_band90.i to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %conv89.i, ptr %max_tx_pwr_med_band90.i, align 4
  %conv95.i = zext i8 %167 to i32
  %and96.i = shl i32 %169, 1
  %mul97.i = and i32 %and96.i, 30
  %sub98.i = sub nsw i32 %conv95.i, %mul97.i
  %conv99.i = trunc i32 %sub98.i to i16
  %arrayidx101.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 7, i32 4
  %171 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 %conv99.i, ptr %arrayidx101.i, align 2
  %172 = lshr i32 %169, 3
  %mul97.1.i = and i32 %172, 30
  %sub98.1.i = sub nsw i32 %conv95.i, %mul97.1.i
  %conv99.1.i = trunc i32 %sub98.1.i to i16
  %arrayidx101.1.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 7, i32 5
  %173 = ptrtoint ptr %arrayidx101.1.i to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 %conv99.1.i, ptr %arrayidx101.1.i, align 2
  %174 = lshr i32 %169, 7
  %mul97.2.i = and i32 %174, 30
  %sub98.2.i = sub nsw i32 %conv95.i, %mul97.2.i
  %conv99.2.i = trunc i32 %sub98.2.i to i16
  %arrayidx101.2.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 7, i32 6
  %175 = ptrtoint ptr %arrayidx101.2.i to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 %conv99.2.i, ptr %arrayidx101.2.i, align 2
  %176 = lshr i32 %169, 11
  %mul97.3.i = and i32 %176, 30
  %sub98.3.i = sub nsw i32 %conv95.i, %mul97.3.i
  %conv99.3.i = trunc i32 %sub98.3.i to i16
  %arrayidx101.3.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 7, i32 7
  %177 = ptrtoint ptr %arrayidx101.3.i to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 %conv99.3.i, ptr %arrayidx101.3.i, align 2
  %178 = lshr i32 %169, 15
  %mul97.4.i = and i32 %178, 30
  %sub98.4.i = sub nsw i32 %conv95.i, %mul97.4.i
  %conv99.4.i = trunc i32 %sub98.4.i to i16
  %arrayidx101.4.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 7, i32 8
  %179 = ptrtoint ptr %arrayidx101.4.i to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 %conv99.4.i, ptr %arrayidx101.4.i, align 2
  %180 = lshr i32 %169, 19
  %mul97.5.i = and i32 %180, 30
  %sub98.5.i = sub nsw i32 %conv95.i, %mul97.5.i
  %conv99.5.i = trunc i32 %sub98.5.i to i16
  %arrayidx101.5.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 7, i32 9
  %181 = ptrtoint ptr %arrayidx101.5.i to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 %conv99.5.i, ptr %arrayidx101.5.i, align 2
  %182 = lshr i32 %169, 23
  %mul97.6.i = and i32 %182, 30
  %sub98.6.i = sub nsw i32 %conv95.i, %mul97.6.i
  %conv99.6.i = trunc i32 %sub98.6.i to i16
  %arrayidx101.6.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 7, i32 10
  %183 = ptrtoint ptr %arrayidx101.6.i to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 %conv99.6.i, ptr %arrayidx101.6.i, align 2
  %184 = lshr i32 %169, 27
  %and96.7.i = and i32 %184, 30
  %sub98.7.i = sub nsw i32 %conv95.i, %and96.7.i
  %conv99.7.i = trunc i32 %sub98.7.i to i16
  %arrayidx101.7.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 7, i32 11
  %185 = ptrtoint ptr %arrayidx101.7.i to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 %conv99.7.i, ptr %arrayidx101.7.i, align 2
  %maxpwr_ah.i = getelementptr inbounds %struct.ssb_sprom, ptr %7, i32 0, i32 41
  %186 = ptrtoint ptr %maxpwr_ah.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %maxpwr_ah.i, align 1
  %conv106.i = zext i8 %187 to i16
  %ofdm5ghpo.i = getelementptr inbounds %struct.ssb_sprom, ptr %7, i32 0, i32 66
  %188 = ptrtoint ptr %ofdm5ghpo.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %ofdm5ghpo.i, align 4
  %max_tx_pwr_hi_band.i = getelementptr inbounds %struct.b43_phy_lp, ptr %9, i32 0, i32 6
  %190 = ptrtoint ptr %max_tx_pwr_hi_band.i to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 %conv106.i, ptr %max_tx_pwr_hi_band.i, align 4
  %conv111.i = zext i8 %187 to i32
  %and112.i = shl i32 %189, 1
  %mul113.i = and i32 %and112.i, 30
  %sub114.i = sub nsw i32 %conv111.i, %mul113.i
  %conv115.i = trunc i32 %sub114.i to i16
  %arrayidx116.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 9, i32 4
  %191 = ptrtoint ptr %arrayidx116.i to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 %conv115.i, ptr %arrayidx116.i, align 2
  %192 = lshr i32 %189, 3
  %mul113.1.i = and i32 %192, 30
  %sub114.1.i = sub nsw i32 %conv111.i, %mul113.1.i
  %conv115.1.i = trunc i32 %sub114.1.i to i16
  %arrayidx116.1.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 9, i32 5
  %193 = ptrtoint ptr %arrayidx116.1.i to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 %conv115.1.i, ptr %arrayidx116.1.i, align 2
  %194 = lshr i32 %189, 7
  %mul113.2.i = and i32 %194, 30
  %sub114.2.i = sub nsw i32 %conv111.i, %mul113.2.i
  %conv115.2.i = trunc i32 %sub114.2.i to i16
  %arrayidx116.2.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 9, i32 6
  %195 = ptrtoint ptr %arrayidx116.2.i to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 %conv115.2.i, ptr %arrayidx116.2.i, align 2
  %196 = lshr i32 %189, 11
  %mul113.3.i = and i32 %196, 30
  %sub114.3.i = sub nsw i32 %conv111.i, %mul113.3.i
  %conv115.3.i = trunc i32 %sub114.3.i to i16
  %arrayidx116.3.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 9, i32 7
  %197 = ptrtoint ptr %arrayidx116.3.i to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 %conv115.3.i, ptr %arrayidx116.3.i, align 2
  %198 = lshr i32 %189, 15
  %mul113.4.i = and i32 %198, 30
  %sub114.4.i = sub nsw i32 %conv111.i, %mul113.4.i
  %conv115.4.i = trunc i32 %sub114.4.i to i16
  %arrayidx116.4.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 9, i32 8
  %199 = ptrtoint ptr %arrayidx116.4.i to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 %conv115.4.i, ptr %arrayidx116.4.i, align 2
  %200 = lshr i32 %189, 19
  %mul113.5.i = and i32 %200, 30
  %sub114.5.i = sub nsw i32 %conv111.i, %mul113.5.i
  %conv115.5.i = trunc i32 %sub114.5.i to i16
  %arrayidx116.5.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 9, i32 9
  %201 = ptrtoint ptr %arrayidx116.5.i to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 %conv115.5.i, ptr %arrayidx116.5.i, align 2
  %202 = lshr i32 %189, 23
  %mul113.6.i = and i32 %202, 30
  %sub114.6.i = sub nsw i32 %conv111.i, %mul113.6.i
  %conv115.6.i = trunc i32 %sub114.6.i to i16
  %arrayidx116.6.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 9, i32 10
  %203 = ptrtoint ptr %arrayidx116.6.i to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 %conv115.6.i, ptr %arrayidx116.6.i, align 2
  %204 = lshr i32 %189, 27
  %and112.7.i = and i32 %204, 30
  %sub114.7.i = sub nsw i32 %conv111.i, %and112.7.i
  %conv115.7.i = trunc i32 %sub114.7.i to i16
  %arrayidx116.7.i = getelementptr %struct.b43_phy_lp, ptr %9, i32 0, i32 9, i32 11
  %205 = ptrtoint ptr %arrayidx116.7.i to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 %conv115.7.i, ptr %arrayidx116.7.i, align 2
  br label %lpphy_read_band_sprom.exit

lpphy_read_band_sprom.exit:                       ; preds = %if.else51.i, %if.else.i, %if.then6.i
  tail call fastcc void @lpphy_baseband_init(ptr noundef %dev)
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1186, i16 noundef zeroext 2) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %206 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %206(i32 noundef 214748) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1186, i16 noundef zeroext -3) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %207 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %207(i32 noundef 214748) #8
  %radio_ver.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 11
  %208 = ptrtoint ptr %radio_ver.i to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %radio_ver.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8290, i16 %209)
  %cmp.i15 = icmp eq i16 %209, 8290
  br i1 %cmp.i15, label %if.then.i16, label %if.else.i17

if.then.i16:                                      ; preds = %lpphy_read_band_sprom.exit
  %210 = ptrtoint ptr %lp.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %lp.i, align 4
  %212 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %dev, align 4
  %214 = getelementptr inbounds %struct.b43_bus_dev, ptr %213, i32 0, i32 1
  %215 = ptrtoint ptr %214 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %214, align 4
  %bus2.i.i = getelementptr inbounds %struct.ssb_device, ptr %216, i32 0, i32 3
  %217 = ptrtoint ptr %bus2.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %bus2.i.i, align 4
  tail call void @b2062_upload_init_table(ptr noundef %dev) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 72, i16 noundef zeroext 0) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 73, i16 noundef zeroext 0) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 74, i16 noundef zeroext 0) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 75, i16 noundef zeroext 0) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 16, i16 noundef zeroext 64) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 16, i16 noundef zeroext 0) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 93, i16 noundef zeroext 16) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 93, i16 noundef zeroext 0) #8
  %rev.i.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 8
  %219 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %rev.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %220)
  %cmp.not.i.i = icmp eq i8 %220, 0
  br i1 %cmp.not.i.i, label %if.then.i16.if.end.i.i_crit_edge, label %if.then.i.i

if.then.i16.if.end.i.i_crit_edge:                 ; preds = %if.then.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i16
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call zeroext i16 @b43_radio_read(ptr noundef %dev, i16 noundef zeroext 2) #8
  %221 = lshr i16 %call.i.i, 1
  %222 = or i16 %221, 128
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 16405, i16 noundef zeroext %222) #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i16.if.end.i.i_crit_edge
  %223 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %wl.i, align 4
  %hw.i.i.i = getelementptr inbounds %struct.b43_wl, ptr %224, i32 0, i32 1
  %225 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %hw.i.i.i, align 4
  %chandef.i.i.i = getelementptr inbounds %struct.ieee80211_conf, ptr %226, i32 0, i32 7
  %227 = ptrtoint ptr %chandef.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %chandef.i.i.i, align 4
  %229 = ptrtoint ptr %228 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %228, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %230)
  %cmp8.i.i = icmp eq i32 %230, 0
  br i1 %cmp8.i.i, label %if.then10.i.i, label %if.else.i.i

if.then10.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_radio_set(ptr noundef %dev, i16 noundef zeroext 87, i16 noundef zeroext 1) #8
  br label %if.end11.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_radio_mask(ptr noundef %dev, i16 noundef zeroext 87, i16 noundef zeroext -2) #8
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.else.i.i, %if.then10.i.i
  %crystalfreq12.i.i = getelementptr inbounds %struct.ssb_bus, ptr %218, i32 0, i32 17, i32 5, i32 1
  %231 = ptrtoint ptr %crystalfreq12.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %crystalfreq12.i.i, align 4
  %mul.i.i = mul i32 %232, 1000
  %capabilities.i.i = getelementptr inbounds %struct.ssb_bus, ptr %218, i32 0, i32 17, i32 1
  %233 = ptrtoint ptr %capabilities.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %capabilities.i.i, align 4
  %and.i.i = and i32 %234, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end11.i.i.if.end29.i.i_crit_edge, !prof !47

if.end11.i.i.if.end29.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i.i

do.end.i.i:                                       ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 546, i32 noundef 9, ptr noundef null) #8
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %do.end.i.i, %if.end11.i.i.if.end29.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i)
  %cmp38.i.i = icmp eq i32 %mul.i.i, 0
  br i1 %cmp38.i.i, label %if.end61.thread.i.i, label %if.end61.i.i, !prof !47

if.end61.thread.i.i:                              ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 547, i32 noundef 9, ptr noundef null) #8
  br label %if.then71.i.i

if.end61.i.i:                                     ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000001, i32 %mul.i.i)
  %cmp69.i.i = icmp ult i32 %mul.i.i, 30000001
  br i1 %cmp69.i.i, label %if.end61.i.i.if.then71.i.i_crit_edge, label %if.else72.i.i

if.end61.i.i.if.then71.i.i_crit_edge:             ; preds = %if.end61.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then71.i.i

if.then71.i.i:                                    ; preds = %if.end61.i.i.if.then71.i.i_crit_edge, %if.end61.thread.i.i
  %pdiv.i.i = getelementptr inbounds %struct.b43_phy_lp, ptr %211, i32 0, i32 30
  %235 = ptrtoint ptr %pdiv.i.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 1, ptr %pdiv.i.i, align 4
  tail call void @b43_radio_mask(ptr noundef %dev, i16 noundef zeroext 16437, i16 noundef zeroext -5) #8
  br label %if.end74.i.i

if.else72.i.i:                                    ; preds = %if.end61.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %pdiv73.i.i = getelementptr inbounds %struct.b43_phy_lp, ptr %211, i32 0, i32 30
  %236 = ptrtoint ptr %pdiv73.i.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 2, ptr %pdiv73.i.i, align 4
  tail call void @b43_radio_set(ptr noundef %dev, i16 noundef zeroext 16437, i16 noundef zeroext 4) #8
  br label %if.end74.i.i

if.end74.i.i:                                     ; preds = %if.else72.i.i, %if.then71.i.i
  %pdiv75.i.i = getelementptr inbounds %struct.b43_phy_lp, ptr %211, i32 0, i32 30
  %237 = ptrtoint ptr %pdiv75.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %pdiv75.i.i, align 4
  %mul76.i.i = mul i32 %238, 800000000
  %add.i.i = add i32 %mul76.i.i, %mul.i.i
  %mul77.i.i = mul i32 %232, 2000
  %div.i.i = udiv i32 %add.i.i, %mul77.i.i
  %239 = trunc i32 %div.i.i to i16
  %240 = add i16 %239, 248
  %conv79.i.i = and i16 %240, 255
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 16443, i16 noundef zeroext %conv79.i.i) #8
  %mul80.i.i = mul i32 %232, 100000
  %241 = ptrtoint ptr %pdiv75.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %pdiv75.i.i, align 4
  %mul82.i.i = mul i32 %242, 16000000
  %add83.i.i = add i32 %mul82.i.i, %mul80.i.i
  %mul85.i.i = mul i32 %242, 32000000
  %div86.i.i = udiv i32 %add83.i.i, %mul85.i.i
  %243 = trunc i32 %div86.i.i to i16
  %244 = add i16 %243, 255
  %conv89.i.i = and i16 %244, 255
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 16454, i16 noundef zeroext %conv89.i.i) #8
  %245 = ptrtoint ptr %pdiv75.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %pdiv75.i.i, align 4
  %mul92.i.i = mul i32 %246, 1000000
  %add93.i.i = add i32 %mul92.i.i, %mul77.i.i
  %mul95.i.i = mul i32 %246, 2000000
  %div96.i.i = udiv i32 %add93.i.i, %mul95.i.i
  %247 = trunc i32 %div96.i.i to i16
  %248 = add i16 %247, 255
  %conv99.i.i = and i16 %248, 255
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 16455, i16 noundef zeroext %conv99.i.i) #8
  %249 = ptrtoint ptr %pdiv75.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %pdiv75.i.i, align 4
  %mul101.i.i = mul i32 %250, 1000
  %add103.i.i = add i32 %mul101.i.i, %mul77.i.i
  %mul105.i.i = mul i32 %250, 2000
  %div106.i.i = udiv i32 %add103.i.i, %mul105.i.i
  %251 = trunc i32 %div106.i.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 12000, i16 %251)
  %cmp111.i.i = icmp ult i16 %251, 12000
  br i1 %cmp111.i.i, label %if.end74.i.i.lpphy_2062_init.exit.i_crit_edge, label %for.cond.i.i

if.end74.i.i.lpphy_2062_init.exit.i_crit_edge:    ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpphy_2062_init.exit.i

for.cond.i.i:                                     ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 13000, i16 %251)
  %cmp111.1.i.i = icmp ult i16 %251, 13000
  br i1 %cmp111.1.i.i, label %for.cond.i.i.lpphy_2062_init.exit.i_crit_edge, label %for.cond.1.i.i

for.cond.i.i.lpphy_2062_init.exit.i_crit_edge:    ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpphy_2062_init.exit.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 14400, i16 %251)
  %cmp111.2.i.i = icmp ult i16 %251, 14400
  br i1 %cmp111.2.i.i, label %for.cond.1.i.i.lpphy_2062_init.exit.i_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.lpphy_2062_init.exit.i_crit_edge:  ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpphy_2062_init.exit.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 16200, i16 %251)
  %cmp111.3.i.i = icmp ult i16 %251, 16200
  br i1 %cmp111.3.i.i, label %for.cond.2.i.i.lpphy_2062_init.exit.i_crit_edge, label %for.cond.3.i.i

for.cond.2.i.i.lpphy_2062_init.exit.i_crit_edge:  ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpphy_2062_init.exit.i

for.cond.3.i.i:                                   ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 18000, i16 %251)
  %cmp111.4.i.i = icmp ult i16 %251, 18000
  %spec.select.i.i = select i1 %cmp111.4.i.i, ptr getelementptr inbounds ([6 x %struct.b2062_freqdata], ptr @lpphy_2062_init.freqdata_tab, i32 0, i32 4), ptr getelementptr inbounds ([6 x %struct.b2062_freqdata], ptr @lpphy_2062_init.freqdata_tab, i32 0, i32 5)
  br label %lpphy_2062_init.exit.i

lpphy_2062_init.exit.i:                           ; preds = %for.cond.3.i.i, %for.cond.2.i.i.lpphy_2062_init.exit.i_crit_edge, %for.cond.1.i.i.lpphy_2062_init.exit.i_crit_edge, %for.cond.i.i.lpphy_2062_init.exit.i_crit_edge, %if.end74.i.i.lpphy_2062_init.exit.i_crit_edge
  %tobool116.not.i.i = phi ptr [ getelementptr inbounds ([6 x %struct.b2062_freqdata], ptr @lpphy_2062_init.freqdata_tab, i32 0, i32 3), %for.cond.2.i.i.lpphy_2062_init.exit.i_crit_edge ], [ getelementptr inbounds ([6 x %struct.b2062_freqdata], ptr @lpphy_2062_init.freqdata_tab, i32 0, i32 2), %for.cond.1.i.i.lpphy_2062_init.exit.i_crit_edge ], [ getelementptr inbounds ([6 x %struct.b2062_freqdata], ptr @lpphy_2062_init.freqdata_tab, i32 0, i32 1), %for.cond.i.i.lpphy_2062_init.exit.i_crit_edge ], [ @lpphy_2062_init.freqdata_tab, %if.end74.i.i.lpphy_2062_init.exit.i_crit_edge ], [ %spec.select.i.i, %for.cond.3.i.i ]
  %252 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %wl.i, align 4
  %254 = ptrtoint ptr %tobool116.not.i.i to i32
  call void @__asan_load2_noabort(i32 %254)
  %255 = load i16, ptr %tobool116.not.i.i, align 2
  %conv121.i.i = zext i16 %255 to i32
  tail call void (ptr, ptr, ...) @b43dbg(ptr noundef %253, ptr noundef nonnull @.str.3, i32 noundef %conv121.i.i) #8
  %data.i.i = getelementptr inbounds %struct.b2062_freqdata, ptr %tobool116.not.i.i, i32 0, i32 1
  %arrayidx122.i.i = getelementptr %struct.b2062_freqdata, ptr %tobool116.not.i.i, i32 0, i32 1, i32 1
  %256 = ptrtoint ptr %arrayidx122.i.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %arrayidx122.i.i, align 1
  %conv124.i.i = zext i8 %257 to i16
  %shl.i.i = shl nuw nsw i16 %conv124.i.i, 4
  %258 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %data.i.i, align 2
  %conv127.i.i = zext i8 %259 to i16
  %or128.i.i = or i16 %shl.i.i, %conv127.i.i
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 16444, i16 noundef zeroext %or128.i.i) #8
  %arrayidx131.i.i = getelementptr %struct.b2062_freqdata, ptr %tobool116.not.i.i, i32 0, i32 1, i32 3
  %260 = ptrtoint ptr %arrayidx131.i.i to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %arrayidx131.i.i, align 1
  %conv133.i.i = zext i8 %261 to i16
  %shl134.i.i = shl nuw nsw i16 %conv133.i.i, 4
  %arrayidx136.i.i = getelementptr %struct.b2062_freqdata, ptr %tobool116.not.i.i, i32 0, i32 1, i32 2
  %262 = ptrtoint ptr %arrayidx136.i.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %arrayidx136.i.i, align 2
  %conv137.i.i = zext i8 %263 to i16
  %or138.i.i = or i16 %shl134.i.i, %conv137.i.i
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 16445, i16 noundef zeroext %or138.i.i) #8
  %arrayidx141.i.i = getelementptr %struct.b2062_freqdata, ptr %tobool116.not.i.i, i32 0, i32 1, i32 4
  %264 = ptrtoint ptr %arrayidx141.i.i to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %arrayidx141.i.i, align 2
  %conv142.i.i = zext i8 %265 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 16446, i16 noundef zeroext %conv142.i.i) #8
  %arrayidx144.i.i = getelementptr %struct.b2062_freqdata, ptr %tobool116.not.i.i, i32 0, i32 1, i32 5
  %266 = ptrtoint ptr %arrayidx144.i.i to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %arrayidx144.i.i, align 1
  %conv145.i.i = zext i8 %267 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 16447, i16 noundef zeroext %conv145.i.i) #8
  br label %lpphy_radio_init.exit

if.else.i17:                                      ; preds = %lpphy_read_band_sprom.exit
  tail call void @b2063_upload_init_table(ptr noundef %dev) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 32, i16 noundef zeroext 0) #8
  tail call void @b43_radio_set(ptr noundef %dev, i16 noundef zeroext 8, i16 noundef zeroext 56) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 86, i16 noundef zeroext 86) #8
  tail call void @b43_radio_mask(ptr noundef %dev, i16 noundef zeroext 243, i16 noundef zeroext -3) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 82, i16 noundef zeroext 0) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 64, i16 noundef zeroext 32) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 67, i16 noundef zeroext 64) #8
  %rev.i16.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 8
  %268 = ptrtoint ptr %rev.i16.i to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %rev.i16.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %269)
  %cmp.i.i = icmp eq i8 %269, 2
  br i1 %cmp.i.i, label %if.then.i17.i, label %if.else.i18.i

if.then.i17.i:                                    ; preds = %if.else.i17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 78, i16 noundef zeroext 160) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 79, i16 noundef zeroext 160) #8
  br label %lpphy_2063_init.exit.i

if.else.i18.i:                                    ; preds = %if.else.i17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 78, i16 noundef zeroext 32) #8
  br label %lpphy_2063_init.exit.i

lpphy_2063_init.exit.i:                           ; preds = %if.else.i18.i, %if.then.i17.i
  %.sink.i.i = phi i16 [ 32, %if.else.i18.i ], [ 24, %if.then.i17.i ]
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 77, i16 noundef zeroext %.sink.i.i) #8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %lpphy_2063_init.exit.i
  %i.023.i.i = phi i32 [ 0, %lpphy_2063_init.exit.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [29 x %struct.lpphy_stx_table_entry], ptr @lpphy_stx_table, i32 0, i32 %i.023.i.i
  %rf_addr.i.i = getelementptr [29 x %struct.lpphy_stx_table_entry], ptr @lpphy_stx_table, i32 0, i32 %i.023.i.i, i32 2
  %270 = ptrtoint ptr %rf_addr.i.i to i32
  call void @__asan_load2_noabort(i32 %270)
  %271 = load i16, ptr %rf_addr.i.i, align 2
  %call.i20.i = tail call zeroext i16 @b43_radio_read(ptr noundef %dev, i16 noundef zeroext %271) #8
  %rf_shift.i.i = getelementptr [29 x %struct.lpphy_stx_table_entry], ptr @lpphy_stx_table, i32 0, i32 %i.023.i.i, i32 3
  %272 = ptrtoint ptr %rf_shift.i.i to i32
  call void @__asan_load2_noabort(i32 %272)
  %273 = load i16, ptr %rf_shift.i.i, align 2
  %conv.i.i = zext i16 %273 to i32
  %conv1.i.i = zext i16 %call.i20.i to i32
  %shr.i.i = lshr i32 %conv1.i.i, %conv.i.i
  %phy_shift.i.i = getelementptr [29 x %struct.lpphy_stx_table_entry], ptr @lpphy_stx_table, i32 0, i32 %i.023.i.i, i32 1
  %274 = ptrtoint ptr %phy_shift.i.i to i32
  call void @__asan_load2_noabort(i32 %274)
  %275 = load i16, ptr %phy_shift.i.i, align 2
  %conv3.i.i = zext i16 %275 to i32
  %shl.i21.i = shl i32 %shr.i.i, %conv3.i.i
  %conv5.i.i = trunc i32 %shl.i21.i to i16
  %276 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %276)
  %277 = load i16, ptr %arrayidx.i.i, align 2
  %add.i22.i = add i16 %277, 242
  %or.i.i = or i16 %add.i22.i, 1024
  %mask.i.i = getelementptr [29 x %struct.lpphy_stx_table_entry], ptr @lpphy_stx_table, i32 0, i32 %i.023.i.i, i32 4
  %278 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load2_noabort(i32 %278)
  %279 = load i16, ptr %mask.i.i, align 2
  %conv8.i.i = zext i16 %279 to i32
  %shl11.i.i = shl i32 %conv8.i.i, %conv3.i.i
  %280 = trunc i32 %shl11.i.i to i16
  %conv12.i.i = xor i16 %280, -1
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext %or.i.i, i16 noundef zeroext %conv12.i.i, i16 noundef zeroext %conv5.i.i) #8
  %inc.i.i = add nuw nsw i32 %i.023.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 29
  br i1 %exitcond.not.i.i, label %lpphy_sync_stx.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

lpphy_sync_stx.exit.i:                            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1264, i16 noundef zeroext 24448) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1265, i16 noundef zeroext 0) #8
  br label %lpphy_radio_init.exit

lpphy_radio_init.exit:                            ; preds = %lpphy_sync_stx.exit.i, %lpphy_2062_init.exit.i
  %rev.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 8
  %281 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %rev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %282)
  %cmp.i18 = icmp ugt i8 %282, 1
  br i1 %cmp.i18, label %if.then.i22, label %if.else.i30

if.then.i22:                                      ; preds = %lpphy_radio_init.exit
  %283 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %dev, align 4
  %285 = getelementptr inbounds %struct.b43_bus_dev, ptr %284, i32 0, i32 1
  %286 = ptrtoint ptr %285 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %285, align 4
  %bus2.i.i19 = getelementptr inbounds %struct.ssb_device, ptr %287, i32 0, i32 3
  %288 = ptrtoint ptr %bus2.i.i19 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %bus2.i.i19, align 4
  %crystalfreq.i.i = getelementptr inbounds %struct.ssb_bus, ptr %289, i32 0, i32 17, i32 5, i32 1
  %290 = ptrtoint ptr %crystalfreq.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %crystalfreq.i.i, align 4
  %mul.i.i20 = mul i32 %291, 1000
  %call.i.i21 = tail call zeroext i16 @b43_radio_read(ptr noundef %dev, i16 noundef zeroext 58) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 58, i16 noundef zeroext 0) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 90, i16 noundef zeroext 126) #8
  tail call void @b43_radio_mask(ptr noundef %dev, i16 noundef zeroext 26, i16 noundef zeroext 247) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 90, i16 noundef zeroext 124) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 91, i16 noundef zeroext 21) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 92, i16 noundef zeroext 112) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 93, i16 noundef zeroext 82) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 94, i16 noundef zeroext 1) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 90, i16 noundef zeroext 125) #8
  br label %for.body.i.i24

for.body.i.i24:                                   ; preds = %if.end.i.i27.for.body.i.i24_crit_edge, %if.then.i22
  %i.075.i.i = phi i32 [ 0, %if.then.i22 ], [ %inc.i.i25, %if.end.i.i27.for.body.i.i24_crit_edge ]
  %call5.i.i = tail call zeroext i16 @b43_radio_read(ptr noundef %dev, i16 noundef zeroext 95) #8
  %292 = and i16 %call5.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %292)
  %tobool.not.i.i23 = icmp eq i16 %292, 0
  br i1 %tobool.not.i.i23, label %if.end.i.i27, label %for.body.i.i24.for.end.i.i_crit_edge

for.body.i.i24.for.end.i.i_crit_edge:             ; preds = %for.body.i.i24
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.end.i.i27:                                     ; preds = %for.body.i.i24
  tail call void @msleep(i32 noundef 1) #8
  %inc.i.i25 = add nuw nsw i32 %i.075.i.i, 1
  %exitcond.not.i.i26 = icmp eq i32 %inc.i.i25, 10000
  br i1 %exitcond.not.i.i26, label %if.end.i.i27.for.end.i.i_crit_edge, label %if.end.i.i27.for.body.i.i24_crit_edge

if.end.i.i27.for.body.i.i24_crit_edge:            ; preds = %if.end.i.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i24

if.end.i.i27.for.end.i.i_crit_edge:               ; preds = %if.end.i.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %if.end.i.i27.for.end.i.i_crit_edge, %for.body.i.i24.for.end.i.i_crit_edge
  %call8.i.i = tail call zeroext i16 @b43_radio_read(ptr noundef %dev, i16 noundef zeroext 95) #8
  %293 = and i16 %call8.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %293)
  %tobool11.not.i.i = icmp eq i16 %293, 0
  br i1 %tobool11.not.i.i, label %if.then12.i.i, label %for.end.i.i.if.end14.i.i_crit_edge

for.end.i.i.if.end14.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i.i

if.then12.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv13.i.i = and i16 %call.i.i21, 255
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 58, i16 noundef zeroext %conv13.i.i) #8
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then12.i.i, %for.end.i.i.if.end14.i.i_crit_edge
  %call15.i.i = tail call zeroext i16 @b43_radio_read(ptr noundef %dev, i16 noundef zeroext 85) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 85, i16 noundef zeroext 0) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 90, i16 noundef zeroext 126) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 90, i16 noundef zeroext 124) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 91, i16 noundef zeroext 85) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 92, i16 noundef zeroext 118) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000000, i32 %mul.i.i20)
  %cmp19.i.i = icmp eq i32 %mul.i.i20, 24000000
  %..i.i = select i1 %cmp19.i.i, i16 252, i16 19
  %not.cmp19.i.i = xor i1 %cmp19.i.i, true
  %.79.i.i = zext i1 %not.cmp19.i.i to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 93, i16 noundef zeroext %..i.i) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 94, i16 noundef zeroext %.79.i.i) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 82, i16 noundef zeroext 125) #8
  br label %for.body26.i.i

for.body26.i.i:                                   ; preds = %if.end32.i.i.for.body26.i.i_crit_edge, %if.end14.i.i
  %i.176.i.i = phi i32 [ 0, %if.end14.i.i ], [ %inc34.i.i, %if.end32.i.i.for.body26.i.i_crit_edge ]
  %call27.i.i = tail call zeroext i16 @b43_radio_read(ptr noundef %dev, i16 noundef zeroext 95) #8
  %294 = and i16 %call27.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %294)
  %tobool30.not.i.i = icmp eq i16 %294, 0
  br i1 %tobool30.not.i.i, label %if.end32.i.i, label %for.body26.i.i.for.end35.i.i_crit_edge

for.body26.i.i.for.end35.i.i_crit_edge:           ; preds = %for.body26.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end35.i.i

if.end32.i.i:                                     ; preds = %for.body26.i.i
  tail call void @msleep(i32 noundef 1) #8
  %inc34.i.i = add nuw nsw i32 %i.176.i.i, 1
  %exitcond77.not.i.i = icmp eq i32 %inc34.i.i, 10000
  br i1 %exitcond77.not.i.i, label %if.end32.i.i.for.end35.i.i_crit_edge, label %if.end32.i.i.for.body26.i.i_crit_edge

if.end32.i.i.for.body26.i.i_crit_edge:            ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body26.i.i

if.end32.i.i.for.end35.i.i_crit_edge:             ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end35.i.i

for.end35.i.i:                                    ; preds = %if.end32.i.i.for.end35.i.i_crit_edge, %for.body26.i.i.for.end35.i.i_crit_edge
  %call36.i.i = tail call zeroext i16 @b43_radio_read(ptr noundef %dev, i16 noundef zeroext 95) #8
  %295 = and i16 %call36.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %295)
  %tobool39.not.i.i = icmp eq i16 %295, 0
  br i1 %tobool39.not.i.i, label %if.then40.i.i, label %for.end35.i.i.lpphy_rev2plus_rc_calib.exit.i_crit_edge

for.end35.i.i.lpphy_rev2plus_rc_calib.exit.i_crit_edge: ; preds = %for.end35.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpphy_rev2plus_rc_calib.exit.i

if.then40.i.i:                                    ; preds = %for.end35.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv41.i.i = and i16 %call15.i.i, 255
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 85, i16 noundef zeroext %conv41.i.i) #8
  br label %lpphy_rev2plus_rc_calib.exit.i

lpphy_rev2plus_rc_calib.exit.i:                   ; preds = %if.then40.i.i, %for.end35.i.i.lpphy_rev2plus_rc_calib.exit.i_crit_edge
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 90, i16 noundef zeroext 126) #8
  br label %lpphy_calibrate_rc.exit

if.else.i30:                                      ; preds = %lpphy_radio_init.exit
  %296 = ptrtoint ptr %lp.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %lp.i, align 4
  %rc_cap.i = getelementptr inbounds %struct.b43_phy_lp, ptr %297, i32 0, i32 22
  %298 = ptrtoint ptr %rc_cap.i to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %rc_cap.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %299)
  %tobool.not.i29 = icmp eq i8 %299, 0
  br i1 %tobool.not.i29, label %if.then3.i, label %if.else7.i

if.then3.i:                                       ; preds = %if.else.i30
  %300 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %wl.i, align 4
  %hw.i.i32 = getelementptr inbounds %struct.b43_wl, ptr %301, i32 0, i32 1
  %302 = ptrtoint ptr %hw.i.i32 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %hw.i.i32, align 4
  %chandef.i.i33 = getelementptr inbounds %struct.ieee80211_conf, ptr %303, i32 0, i32 7
  %304 = ptrtoint ptr %chandef.i.i33 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %chandef.i.i33, align 4
  %306 = ptrtoint ptr %305 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %305, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %307)
  %cmp4.i = icmp eq i32 %307, 0
  br i1 %cmp4.i, label %if.then6.i34, label %if.then3.i.lpphy_calibrate_rc.exit_crit_edge

if.then3.i.lpphy_calibrate_rc.exit_crit_edge:     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpphy_calibrate_rc.exit

if.then6.i34:                                     ; preds = %if.then3.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iq_est.i.i) #8
  %308 = getelementptr inbounds %struct.lpphy_iq_est, ptr %iq_est.i.i, i32 0, i32 1
  %309 = getelementptr inbounds %struct.lpphy_iq_est, ptr %iq_est.i.i, i32 0, i32 2
  %310 = call ptr @memset(ptr %iq_est.i.i, i32 0, i32 12)
  %call.i15.i = tail call i32 @b43_lpphy_op_switch_channel(ptr noundef %dev, i32 noundef 7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i)
  %tobool.not.i16.i = icmp eq i32 %call.i15.i, 0
  br i1 %tobool.not.i16.i, label %if.then6.i34.if.end.i17.i_crit_edge, label %if.then.i.i35

if.then6.i34.if.end.i17.i_crit_edge:              ; preds = %if.then6.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i17.i

if.then.i.i35:                                    ; preds = %if.then6.i34
  call void @__sanitizer_cov_trace_pc() #10
  %311 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %wl.i, align 4
  tail call void (ptr, ptr, ...) @b43dbg(ptr noundef %312, ptr noundef nonnull @.str.4, i32 noundef %call.i15.i) #8
  br label %if.end.i17.i

if.end.i17.i:                                     ; preds = %if.then.i.i35, %if.then6.i34.if.end.i17.i_crit_edge
  %call1.i.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1083) #8
  %313 = and i16 %call1.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %313)
  %tobool2.not.i.i = icmp eq i16 %313, 0
  %call.i.i.i = tail call i32 @b43_lptab_read(ptr noundef %dev, i32 noundef 536870999) #8
  br i1 %tobool2.not.i.i, label %if.end.i17.i.if.end8.i.i_crit_edge, label %if.then6.i.i

if.end.i17.i.if.end8.i.i_crit_edge:               ; preds = %if.end.i17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i

if.then6.i.i:                                     ; preds = %if.end.i17.i
  %call.i115.i.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1081) #8, !noalias !48
  %314 = lshr i16 %call.i115.i.i, 7
  %315 = and i16 %314, 7
  %tmp7.sroa.8.6.insert.ext.i.i = zext i16 %315 to i32
  %316 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %rev.i, align 2, !noalias !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %317)
  %cmp.i.i.i = icmp ult i8 %317, 2
  %call4.i.i.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1205) #8, !noalias !48
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %and9.i.i.i = and i16 %call4.i.i.i, 7
  %and12.i.i.i = lshr i16 %call4.i.i.i, 3
  %318 = and i16 %and12.i.i.i, 15
  %319 = lshr i16 %call4.i.i.i, 7
  %320 = and i16 %319, 15
  br label %lpphy_get_tx_gains.exit.i.i

if.else.i.i.i:                                    ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call20.i.i.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1275) #8, !noalias !48
  %321 = and i16 %call20.i.i.i, 255
  %and26.i.i.i = and i16 %call4.i.i.i, 255
  %322 = lshr i16 %call4.i.i.i, 8
  br label %lpphy_get_tx_gains.exit.i.i

lpphy_get_tx_gains.exit.i.i:                      ; preds = %if.else.i.i.i, %if.then.i.i.i
  %tmp7.sroa.0.sroa.0.0.i.i = phi i16 [ %and9.i.i.i, %if.then.i.i.i ], [ %and26.i.i.i, %if.else.i.i.i ]
  %tmp7.sroa.0.sroa.6.0.i.i = phi i16 [ %318, %if.then.i.i.i ], [ %322, %if.else.i.i.i ]
  %tmp7.sroa.8.4.insert.shift132.pn.in.in.i.i = phi i16 [ %320, %if.then.i.i.i ], [ %321, %if.else.i.i.i ]
  %tmp7.sroa.8.4.insert.shift132.pn.in.i.i = zext i16 %tmp7.sroa.8.4.insert.shift132.pn.in.in.i.i to i32
  %tmp7.sroa.8.4.insert.shift132.pn.i.i = shl nuw nsw i32 %tmp7.sroa.8.4.insert.shift132.pn.in.i.i, 16
  %tmp7.sroa.8.0.i.i = or i32 %tmp7.sroa.8.4.insert.shift132.pn.i.i, %tmp7.sroa.8.6.insert.ext.i.i
  %tmp7.sroa.0.sroa.6.0.insert.ext.i.i = zext i16 %tmp7.sroa.0.sroa.6.0.i.i to i32
  %tmp7.sroa.0.sroa.0.0.insert.ext.i.i = zext i16 %tmp7.sroa.0.sroa.0.0.i.i to i32
  %tmp7.sroa.0.sroa.0.0.insert.shift.i.i = shl nuw nsw i32 %tmp7.sroa.0.sroa.0.0.insert.ext.i.i, 16
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %lpphy_get_tx_gains.exit.i.i, %if.end.i17.i.if.end8.i.i_crit_edge
  %tx_gains.sroa.0.sroa.5.0.i.i = phi i32 [ %tmp7.sroa.0.sroa.6.0.insert.ext.i.i, %lpphy_get_tx_gains.exit.i.i ], [ 65535, %if.end.i17.i.if.end8.i.i_crit_edge ]
  %tx_gains.sroa.0.sroa.0.0.i.i = phi i32 [ %tmp7.sroa.0.sroa.0.0.insert.shift.i.i, %lpphy_get_tx_gains.exit.i.i ], [ -65536, %if.end.i17.i.if.end8.i.i_crit_edge ]
  %tx_gains.sroa.6.0.i.i = phi i32 [ %tmp7.sroa.8.0.i.i, %lpphy_get_tx_gains.exit.i.i ], [ -1, %if.end.i17.i.if.end8.i.i_crit_edge ]
  %call9.i.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1100) #8
  %call10.i.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1101) #8
  %call11.i.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1083) #8
  %call12.i.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1084) #8
  %call13.i.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1200) #8
  %call14.i.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1201) #8
  %call15.i18.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1096) #8
  %323 = ptrtoint ptr %lp.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %lp.i, align 4
  %call.i116.i.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1188) #8
  %325 = and i16 %call.i116.i.i, -8192
  %326 = zext i16 %325 to i64
  call void @__sanitizer_cov_trace_switch(i64 %326, ptr @__sancov_gen_cov_switch_values)
  switch i16 %325, label %sw.default.i.i.i [
    i16 0, label %sw.bb.i.i.i
    i16 -32768, label %sw.bb1.i.i.i
    i16 -8192, label %sw.bb3.i.i.i
  ]

sw.bb.i.i.i:                                      ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %327 = ptrtoint ptr %324 to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 1, ptr %324, align 4
  br label %lpphy_read_tx_pctl_mode_from_hardware.exit.i.i

sw.bb1.i.i.i:                                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %328 = ptrtoint ptr %324 to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 2, ptr %324, align 4
  br label %lpphy_read_tx_pctl_mode_from_hardware.exit.i.i

sw.bb3.i.i.i:                                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %329 = ptrtoint ptr %324 to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 3, ptr %324, align 4
  br label %lpphy_read_tx_pctl_mode_from_hardware.exit.i.i

sw.default.i.i.i:                                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %330 = ptrtoint ptr %324 to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 0, ptr %324, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1104, i32 noundef 9, ptr noundef null) #8
  br label %lpphy_read_tx_pctl_mode_from_hardware.exit.i.i

lpphy_read_tx_pctl_mode_from_hardware.exit.i.i:   ; preds = %sw.default.i.i.i, %sw.bb3.i.i.i, %sw.bb1.i.i.i, %sw.bb.i.i.i
  %331 = ptrtoint ptr %297 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %297, align 4
  tail call fastcc void @lpphy_set_tx_power_control(ptr noundef %dev, i32 noundef 1) #8
  %333 = ptrtoint ptr %lp.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %lp.i, align 4
  %crs_usr_disable.i.i.i.i = getelementptr inbounds %struct.b43_phy_lp, ptr %334, i32 0, i32 28
  %335 = ptrtoint ptr %crs_usr_disable.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %335)
  store i8 1, ptr %crs_usr_disable.i.i.i.i, align 2
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1040, i16 noundef zeroext -225, i16 noundef zeroext 128) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1101, i16 noundef zeroext -4, i16 noundef zeroext 1) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1100, i16 noundef zeroext 3) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1101, i16 noundef zeroext -5) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1100, i16 noundef zeroext 4) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1101, i16 noundef zeroext -9) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1100, i16 noundef zeroext 8) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1101, i16 noundef zeroext 16) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1100, i16 noundef zeroext 16) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1101, i16 noundef zeroext -33) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1100, i16 noundef zeroext 32) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1101, i16 noundef zeroext -65) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1100, i16 noundef zeroext 64) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1201, i16 noundef zeroext 7) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1201, i16 noundef zeroext 56) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1201, i16 noundef zeroext -193) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1201, i16 noundef zeroext 256) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1201, i16 noundef zeroext -513) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1202, i16 noundef zeroext 0) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1203, i16 noundef zeroext 1) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1204, i16 noundef zeroext 32) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1201, i16 noundef zeroext -1025) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1201, i16 noundef zeroext -2049) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1205, i16 noundef zeroext 0) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1206, i16 noundef zeroext 17839) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1200, i16 noundef zeroext 1023) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iq_est.i.i.i) #8
  %336 = getelementptr inbounds %struct.lpphy_iq_est, ptr %iq_est.i.i.i, i32 0, i32 1
  %337 = getelementptr inbounds %struct.lpphy_iq_est, ptr %iq_est.i.i.i, i32 0, i32 2
  %338 = call ptr @memset(ptr %iq_est.i.i.i, i32 0, i32 12)
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1101, i16 noundef zeroext -4, i16 noundef zeroext 3) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1100, i16 noundef zeroext 3) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1083, i16 noundef zeroext 1) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1084, i16 noundef zeroext -2) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1100, i16 noundef zeroext 2048) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1101, i16 noundef zeroext 2048) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1100, i16 noundef zeroext 8) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1101, i16 noundef zeroext 8) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 79, i16 noundef zeroext 128) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1100, i16 noundef zeroext 128) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1101, i16 noundef zeroext 128) #8
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %lpphy_read_tx_pctl_mode_from_hardware.exit.i.i
  %i.024.i.i.i = phi i32 [ 0, %lpphy_read_tx_pctl_mode_from_hardware.exit.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %or.i.i.i.i = and i32 %i.024.i.i.i, 53247
  %or1.i.i.i.i = or i32 %or.i.i.i.i, 536883200
  %call.i.i.i.i = tail call i32 @b43_lptab_read(ptr noundef %dev, i32 noundef %or1.i.i.i.i) #8
  tail call fastcc void @lpphy_set_rx_gain(ptr noundef %dev, i32 noundef %call.i.i.i.i) #8
  tail call fastcc void @lpphy_run_ddfs(ptr noundef %dev, i32 noundef 5, i32 noundef 5) #8
  %call.i117.i.i = call fastcc zeroext i1 @lpphy_rx_iq_est(ptr noundef %dev, i16 noundef zeroext 1000, ptr noundef nonnull %iq_est.i.i.i) #8
  br i1 %call.i117.i.i, label %if.end.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i
  %339 = ptrtoint ptr %336 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %336, align 4
  %341 = ptrtoint ptr %337 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %337, align 4
  %add.i.i.i = add i32 %340, -4001000
  %343 = add i32 %add.i.i.i, %342
  call void @__sanitizer_cov_trace_const_cmp4(i32 5999000, i32 %343)
  %344 = icmp ult i32 %343, 5999000
  br i1 %344, label %if.end.i.i.i.lpphy_loopback.exit.i.i_crit_edge, label %if.end.i.i.i.for.inc.i.i.i_crit_edge

if.end.i.i.i.for.inc.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i

if.end.i.i.i.lpphy_loopback.exit.i.i_crit_edge:   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpphy_loopback.exit.i.i

for.inc.i.i.i:                                    ; preds = %if.end.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw nsw i32 %i.024.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 32
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.lpphy_loopback.exit.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.inc.i.i.i.lpphy_loopback.exit.i.i_crit_edge:  ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpphy_loopback.exit.i.i

lpphy_loopback.exit.i.i:                          ; preds = %for.inc.i.i.i.lpphy_loopback.exit.i.i_crit_edge, %if.end.i.i.i.lpphy_loopback.exit.i.i_crit_edge
  %index.0.i.i.i = phi i32 [ -1, %for.inc.i.i.i.lpphy_loopback.exit.i.i_crit_edge ], [ %i.024.i.i.i, %if.end.i.i.i.lpphy_loopback.exit.i.i_crit_edge ]
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1207, i16 noundef zeroext -3) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1096, i16 noundef zeroext -33) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iq_est.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %index.0.i.i.i)
  %cmp.i.i36 = icmp eq i32 %index.0.i.i.i, -1
  br i1 %cmp.i.i36, label %lpphy_loopback.exit.i.i.finish.i.i_crit_edge, label %if.end19.i.i

lpphy_loopback.exit.i.i.finish.i.i_crit_edge:     ; preds = %lpphy_loopback.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %finish.i.i

if.end19.i.i:                                     ; preds = %lpphy_loopback.exit.i.i
  %or.i.i.i = and i32 %index.0.i.i.i, 53247
  %or1.i.i.i = or i32 %or.i.i.i, 536883200
  %call.i118.i.i = tail call i32 @b43_lptab_read(ptr noundef %dev, i32 noundef %or1.i.i.i) #8
  tail call fastcc void @lpphy_set_rx_gain(ptr noundef %dev, i32 noundef %call.i118.i.i) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1096, i16 noundef zeroext -65, i16 noundef zeroext 64) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1201, i16 noundef zeroext -8, i16 noundef zeroext 1) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1201, i16 noundef zeroext -57, i16 noundef zeroext 8) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1201, i16 noundef zeroext -193, i16 noundef zeroext 192) #8
  br label %for.body.i19.i

for.body.i19.i:                                   ; preds = %for.inc47.i.i.for.body.i19.i_crit_edge, %if.end19.i.i
  %i.0143.i.i = phi i32 [ 128, %if.end19.i.i ], [ %inc48.i.i, %for.inc47.i.i.for.body.i19.i_crit_edge ]
  %mean_sq_pwr_min.0142.i.i = phi i32 [ 0, %if.end19.i.i ], [ %mean_sq_pwr_min.2.i.i, %for.inc47.i.i.for.body.i19.i_crit_edge ]
  %tmp.0141.i.i = phi i32 [ 0, %if.end19.i.i ], [ %spec.select.i.i38, %for.inc47.i.i.for.body.i19.i_crit_edge ]
  %conv23.i.i = trunc i32 %i.0143.i.i to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 58, i16 noundef zeroext %conv23.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %i.0143.i.i)
  %cmp40.i.i = icmp eq i32 %i.0143.i.i, 128
  %conv45.i.i = trunc i32 %i.0143.i.i to i8
  br label %for.body27.i.i

for.body27.i.i:                                   ; preds = %for.inc.i.i.for.body27.i.i_crit_edge, %for.body.i19.i
  %inner_sum.0140.i.i = phi i32 [ 0, %for.body.i19.i ], [ %add39.i.i, %for.inc.i.i.for.body27.i.i_crit_edge ]
  %j.0139.i.i = phi i32 [ 5, %for.body.i19.i ], [ %inc.i21.i, %for.inc.i.i.for.body27.i.i_crit_edge ]
  %mean_sq_pwr_min.1138.i.i = phi i32 [ %mean_sq_pwr_min.0142.i.i, %for.body.i19.i ], [ %mean_sq_pwr_min.2.i.i, %for.inc.i.i.for.body27.i.i_crit_edge ]
  %tmp.1137.i.i = phi i32 [ %tmp.0141.i.i, %for.body.i19.i ], [ %spec.select.i.i38, %for.inc.i.i.for.body27.i.i_crit_edge ]
  tail call fastcc void @lpphy_run_ddfs(ptr noundef %dev, i32 noundef %j.0139.i.i, i32 noundef %j.0139.i.i) #8
  %call28.i.i = call fastcc zeroext i1 @lpphy_rx_iq_est(ptr noundef %dev, i16 noundef zeroext 1000, ptr noundef nonnull %iq_est.i.i) #8
  br i1 %call28.i.i, label %if.end30.i.i, label %for.body27.i.i.finish.i.i_crit_edge

for.body27.i.i.finish.i.i_crit_edge:              ; preds = %for.body27.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %finish.i.i

if.end30.i.i:                                     ; preds = %for.body27.i.i
  %345 = ptrtoint ptr %308 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %308, align 4
  %347 = ptrtoint ptr %309 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %309, align 4
  %add.i.i37 = add i32 %348, %346
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %j.0139.i.i)
  %cmp31.i.i = icmp eq i32 %j.0139.i.i, 5
  %spec.select.i.i38 = select i1 %cmp31.i.i, i32 %add.i.i37, i32 %tmp.1137.i.i
  %sub.i.i = add nsw i32 %j.0139.i.i, -5
  %arrayidx.i.i39 = getelementptr [21 x i32], ptr @lpphy_rev0_1_rc_calib.ideal_pwr_table, i32 0, i32 %sub.i.i
  %349 = ptrtoint ptr %arrayidx.i.i39 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %arrayidx.i.i39, align 4
  %shr.i.i40 = lshr i32 %350, 3
  %add35.i.i = add nuw nsw i32 %shr.i.i40, 1
  %shr36.i.i = lshr i32 %add35.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i38)
  %cmp.i119.i.i = icmp eq i32 %spec.select.i.i38, 0
  br i1 %cmp.i119.i.i, label %if.end30.i.i.lpphy_qdiv_roundup.exit.i.i_crit_edge, label %if.end.i120.i.i

if.end30.i.i.lpphy_qdiv_roundup.exit.i.i_crit_edge: ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpphy_qdiv_roundup.exit.i.i

if.end.i120.i.i:                                  ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i37.frozen = freeze i32 %add.i.i37
  %spec.select.i.i38.frozen = freeze i32 %spec.select.i.i38
  %div.i.i.i = udiv i32 %add.i.i37.frozen, %spec.select.i.i38.frozen
  %351 = mul i32 %div.i.i.i, %spec.select.i.i38.frozen
  %rem.i.i.i.decomposed = sub i32 %add.i.i37.frozen, %351
  %shl3.i.i.i = shl i32 %rem.i.i.i.decomposed, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i.i.i, i32 %spec.select.i.i38)
  %cmp4.not.i.i.i = icmp ult i32 %shl3.i.i.i, %spec.select.i.i38
  %sub.i.i.i = sub i32 %shl3.i.i.i, %spec.select.i.i38
  %remainder.1.i.i.i = select i1 %cmp4.not.i.i.i, i32 %rem.i.i.i.decomposed, i32 %sub.i.i.i
  %.neg.i.i = mul i32 %div.i.i.i, 1073741820
  %.neg145.i.i = select i1 %cmp4.not.i.i.i, i32 0, i32 1073741822
  %shl.i.1.neg.i.i = add i32 %.neg145.i.i, %.neg.i.i
  %shl3.i.1.i.i = shl i32 %remainder.1.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i.1.i.i, i32 %spec.select.i.i38)
  %cmp4.not.i.1.i.i = icmp ult i32 %shl3.i.1.i.i, %spec.select.i.i38
  %sub.i.1.i.i = sub i32 %shl3.i.1.i.i, %spec.select.i.i38
  %not.cmp4.not.i.1.i.i = xor i1 %cmp4.not.i.1.i.i, true
  %inc.i121.1.neg.i.i = sext i1 %not.cmp4.not.i.1.i.i to i32
  %quotient.1.i.1.neg.i.i = add i32 %shl.i.1.neg.i.i, %inc.i121.1.neg.i.i
  %remainder.1.i.1.i.i = select i1 %cmp4.not.i.1.i.i, i32 %remainder.1.i.i.i, i32 %sub.i.1.i.i
  %shl3.i.2.i.i = shl i32 %remainder.1.i.1.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i.2.i.i, i32 %spec.select.i.i38)
  %cmp4.not.i.2.i.i = icmp ult i32 %shl3.i.2.i.i, %spec.select.i.i38
  %sub.i.2.i.i = sub i32 %shl3.i.2.i.i, %spec.select.i.i38
  %remainder.1.i.2.i.i = select i1 %cmp4.not.i.2.i.i, i32 %remainder.1.i.1.i.i, i32 %sub.i.2.i.i
  %.neg146.i.i = shl i32 %quotient.1.i.1.neg.i.i, 2
  %.neg147.i.i = select i1 %cmp4.not.i.2.i.i, i32 0, i32 1073741822
  %shl.i.3.neg.i.i = add i32 %.neg147.i.i, %.neg146.i.i
  %shl3.i.3.i.i = shl i32 %remainder.1.i.2.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i.3.i.i, i32 %spec.select.i.i38)
  %cmp4.not.i.3.i.i = icmp ult i32 %shl3.i.3.i.i, %spec.select.i.i38
  %sub.i.3.i.i = sub i32 %shl3.i.3.i.i, %spec.select.i.i38
  %not.cmp4.not.i.3.i.i = xor i1 %cmp4.not.i.3.i.i, true
  %inc.i121.3.neg.i.i = sext i1 %not.cmp4.not.i.3.i.i to i32
  %quotient.1.i.3.neg.i.i = add i32 %shl.i.3.neg.i.i, %inc.i121.3.neg.i.i
  %remainder.1.i.3.i.i = select i1 %cmp4.not.i.3.i.i, i32 %remainder.1.i.2.i.i, i32 %sub.i.3.i.i
  %shl3.i.4.i.i = shl i32 %remainder.1.i.3.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i.4.i.i, i32 %spec.select.i.i38)
  %cmp4.not.i.4.i.i = icmp ult i32 %shl3.i.4.i.i, %spec.select.i.i38
  %sub.i.4.i.i = sub i32 %shl3.i.4.i.i, %spec.select.i.i38
  %remainder.1.i.4.i.i = select i1 %cmp4.not.i.4.i.i, i32 %remainder.1.i.3.i.i, i32 %sub.i.4.i.i
  %.neg148.i.i = shl i32 %quotient.1.i.3.neg.i.i, 2
  %.neg149.i.i = select i1 %cmp4.not.i.4.i.i, i32 0, i32 1073741822
  %shl.i.5.neg.i.i = add i32 %.neg149.i.i, %.neg148.i.i
  %shl3.i.5.i.i = shl i32 %remainder.1.i.4.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i.5.i.i, i32 %spec.select.i.i38)
  %cmp4.not.i.5.i.i = icmp ult i32 %shl3.i.5.i.i, %spec.select.i.i38
  %sub.i.5.i.i = sub i32 %shl3.i.5.i.i, %spec.select.i.i38
  %not.cmp4.not.i.5.i.i = xor i1 %cmp4.not.i.5.i.i, true
  %inc.i121.5.neg.i.i = sext i1 %not.cmp4.not.i.5.i.i to i32
  %quotient.1.i.5.neg.i.i = add i32 %shl.i.5.neg.i.i, %inc.i121.5.neg.i.i
  %remainder.1.i.5.i.i = select i1 %cmp4.not.i.5.i.i, i32 %remainder.1.i.4.i.i, i32 %sub.i.5.i.i
  %shl3.i.6.i.i = shl i32 %remainder.1.i.5.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i.6.i.i, i32 %spec.select.i.i38)
  %cmp4.not.i.6.i.i = icmp ult i32 %shl3.i.6.i.i, %spec.select.i.i38
  %sub.i.6.i.i = sub i32 %shl3.i.6.i.i, %spec.select.i.i38
  %remainder.1.i.6.i.i = select i1 %cmp4.not.i.6.i.i, i32 %remainder.1.i.5.i.i, i32 %sub.i.6.i.i
  %.neg150.i.i = shl i32 %quotient.1.i.5.neg.i.i, 2
  %.neg151.i.i = select i1 %cmp4.not.i.6.i.i, i32 0, i32 1073741822
  %shl.i.7.neg.i.i = add i32 %.neg151.i.i, %.neg150.i.i
  %shl3.i.7.i.i = shl i32 %remainder.1.i.6.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i.7.i.i, i32 %spec.select.i.i38)
  %cmp4.not.i.7.i.i = icmp ult i32 %shl3.i.7.i.i, %spec.select.i.i38
  %sub.i.7.i.i = sub i32 %shl3.i.7.i.i, %spec.select.i.i38
  %not.cmp4.not.i.7.i.i = xor i1 %cmp4.not.i.7.i.i, true
  %inc.i121.7.neg.i.i = sext i1 %not.cmp4.not.i.7.i.i to i32
  %quotient.1.i.7.neg.i.i = add i32 %shl.i.7.neg.i.i, %inc.i121.7.neg.i.i
  %remainder.1.i.7.i.i = select i1 %cmp4.not.i.7.i.i, i32 %remainder.1.i.6.i.i, i32 %sub.i.7.i.i
  %shl3.i.8.i.i = shl i32 %remainder.1.i.7.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i.8.i.i, i32 %spec.select.i.i38)
  %cmp4.not.i.8.i.i = icmp ult i32 %shl3.i.8.i.i, %spec.select.i.i38
  %sub.i.8.i.i = sub i32 %shl3.i.8.i.i, %spec.select.i.i38
  %remainder.1.i.8.i.i = select i1 %cmp4.not.i.8.i.i, i32 %remainder.1.i.7.i.i, i32 %sub.i.8.i.i
  %.neg152.i.i = shl i32 %quotient.1.i.7.neg.i.i, 2
  %.neg153.i.i = select i1 %cmp4.not.i.8.i.i, i32 0, i32 1073741822
  %shl.i.9.neg.i.i = add i32 %.neg153.i.i, %.neg152.i.i
  %shl3.i.9.i.i = shl i32 %remainder.1.i.8.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i.9.i.i, i32 %spec.select.i.i38)
  %cmp4.not.i.9.i.i = icmp ult i32 %shl3.i.9.i.i, %spec.select.i.i38
  %sub.i.9.i.i = sub i32 %shl3.i.9.i.i, %spec.select.i.i38
  %not.cmp4.not.i.9.i.i = xor i1 %cmp4.not.i.9.i.i, true
  %inc.i121.9.neg.i.i = sext i1 %not.cmp4.not.i.9.i.i to i32
  %quotient.1.i.9.neg.i.i = add i32 %shl.i.9.neg.i.i, %inc.i121.9.neg.i.i
  %remainder.1.i.9.i.i = select i1 %cmp4.not.i.9.i.i, i32 %remainder.1.i.8.i.i, i32 %sub.i.9.i.i
  %shl3.i.10.i.i = shl i32 %remainder.1.i.9.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i.10.i.i, i32 %spec.select.i.i38)
  %cmp4.not.i.10.i.i = icmp ult i32 %shl3.i.10.i.i, %spec.select.i.i38
  %sub.i.10.i.i = sub i32 %shl3.i.10.i.i, %spec.select.i.i38
  %remainder.1.i.10.i.i = select i1 %cmp4.not.i.10.i.i, i32 %remainder.1.i.9.i.i, i32 %sub.i.10.i.i
  %.neg154.i.i = shl i32 %quotient.1.i.9.neg.i.i, 2
  %.neg155.i.i = select i1 %cmp4.not.i.10.i.i, i32 0, i32 -2
  %shl.i.11.neg.i.i = add i32 %.neg155.i.i, %.neg154.i.i
  %shl3.i.11.i.i = shl i32 %remainder.1.i.10.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i.11.i.i, i32 %spec.select.i.i38)
  %cmp4.not.i.11.i.i = icmp ult i32 %shl3.i.11.i.i, %spec.select.i.i38
  %sub.i.11.i.i = sub i32 %shl3.i.11.i.i, %spec.select.i.i38
  %not.cmp4.not.i.11.i.i = xor i1 %cmp4.not.i.11.i.i, true
  %inc.i121.11.neg.i.i = sext i1 %not.cmp4.not.i.11.i.i to i32
  %quotient.1.i.11.neg.i.i = add i32 %shl.i.11.neg.i.i, %inc.i121.11.neg.i.i
  %remainder.1.i.11.i.i = select i1 %cmp4.not.i.11.i.i, i32 %remainder.1.i.10.i.i, i32 %sub.i.11.i.i
  %shl9.i.i.i = shl i32 %remainder.1.i.11.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl9.i.i.i, i32 %spec.select.i.i38)
  %cmp10.not.i.i.i = icmp uge i32 %shl9.i.i.i, %spec.select.i.i38
  %inc13.i.neg.i.i = sext i1 %cmp10.not.i.i.i to i32
  %spec.select.i.neg.i.i = add i32 %quotient.1.i.11.neg.i.i, %inc13.i.neg.i.i
  br label %lpphy_qdiv_roundup.exit.i.i

lpphy_qdiv_roundup.exit.i.i:                      ; preds = %if.end.i120.i.i, %if.end30.i.i.lpphy_qdiv_roundup.exit.i.i_crit_edge
  %retval.0.i.neg.i.i = phi i32 [ %spec.select.i.neg.i.i, %if.end.i120.i.i ], [ 0, %if.end30.i.i.lpphy_qdiv_roundup.exit.i.i_crit_edge ]
  %sub38.i.i = add i32 %retval.0.i.neg.i.i, %shr36.i.i
  %mul.i20.i = mul i32 %sub38.i.i, %sub38.i.i
  %add39.i.i = add i32 %mul.i20.i, %inner_sum.0140.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add39.i.i, i32 %mean_sq_pwr_min.1138.i.i)
  %cmp42.i.i = icmp ult i32 %add39.i.i, %mean_sq_pwr_min.1138.i.i
  %or.cond.i.i = select i1 %cmp40.i.i, i1 true, i1 %cmp42.i.i
  br i1 %or.cond.i.i, label %if.then44.i.i, label %lpphy_qdiv_roundup.exit.i.i.for.inc.i.i_crit_edge

lpphy_qdiv_roundup.exit.i.i.for.inc.i.i_crit_edge: ; preds = %lpphy_qdiv_roundup.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then44.i.i:                                    ; preds = %lpphy_qdiv_roundup.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %352 = ptrtoint ptr %rc_cap.i to i32
  call void @__asan_store1_noabort(i32 %352)
  store i8 %conv45.i.i, ptr %rc_cap.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then44.i.i, %lpphy_qdiv_roundup.exit.i.i.for.inc.i.i_crit_edge
  %mean_sq_pwr_min.2.i.i = phi i32 [ %add39.i.i, %if.then44.i.i ], [ %mean_sq_pwr_min.1138.i.i, %lpphy_qdiv_roundup.exit.i.i.for.inc.i.i_crit_edge ]
  %inc.i21.i = add nuw nsw i32 %j.0139.i.i, 1
  %exitcond.not.i22.i = icmp eq i32 %inc.i21.i, 26
  br i1 %exitcond.not.i22.i, label %for.inc47.i.i, label %for.inc.i.i.for.body27.i.i_crit_edge

for.inc.i.i.for.body27.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body27.i.i

for.inc47.i.i:                                    ; preds = %for.inc.i.i
  %inc48.i.i = add nuw nsw i32 %i.0143.i.i, 1
  %exitcond144.not.i.i = icmp eq i32 %inc48.i.i, 160
  br i1 %exitcond144.not.i.i, label %for.end49.i.i, label %for.inc47.i.i.for.body.i19.i_crit_edge

for.inc47.i.i.for.body.i19.i_crit_edge:           ; preds = %for.inc47.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i19.i

for.end49.i.i:                                    ; preds = %for.inc47.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1207, i16 noundef zeroext -3) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1096, i16 noundef zeroext -33) #8
  br label %finish.i.i

finish.i.i:                                       ; preds = %for.end49.i.i, %for.body27.i.i.finish.i.i_crit_edge, %lpphy_loopback.exit.i.i.finish.i.i_crit_edge
  %353 = ptrtoint ptr %lp.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %lp.i, align 4
  %crs_usr_disable.i.i123.i.i = getelementptr inbounds %struct.b43_phy_lp, ptr %354, i32 0, i32 28
  %355 = ptrtoint ptr %crs_usr_disable.i.i123.i.i to i32
  call void @__asan_store1_noabort(i32 %355)
  store i8 0, ptr %crs_usr_disable.i.i123.i.i, align 2
  %crs_sys_disable3.i.i.i.i = getelementptr inbounds %struct.b43_phy_lp, ptr %354, i32 0, i32 29
  %356 = ptrtoint ptr %crs_sys_disable3.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %crs_sys_disable3.i.i.i.i, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %357)
  %tobool4.not.i.i.i.i = icmp eq i8 %357, 0
  br i1 %tobool4.not.i.i.i.i, label %if.then5.i.i.i.i, label %finish.i.i.lpphy_restore_crs.exit.i.i_crit_edge

finish.i.i.lpphy_restore_crs.exit.i.i_crit_edge:  ; preds = %finish.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpphy_restore_crs.exit.i.i

if.then5.i.i.i.i:                                 ; preds = %finish.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %358 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %wl.i, align 4
  %hw.i.i.i.i.i = getelementptr inbounds %struct.b43_wl, ptr %359, i32 0, i32 1
  %360 = ptrtoint ptr %hw.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %hw.i.i.i.i.i, align 4
  %chandef.i.i.i.i.i = getelementptr inbounds %struct.ieee80211_conf, ptr %361, i32 0, i32 7
  %362 = ptrtoint ptr %chandef.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %chandef.i.i.i.i.i, align 4
  %364 = ptrtoint ptr %363 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %363, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %365)
  %cmp.i.i.i.i = icmp eq i32 %365, 0
  %..i.i.i.i = select i1 %cmp.i.i.i.i, i16 96, i16 32
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1040, i16 noundef zeroext -225, i16 noundef zeroext %..i.i.i.i) #8
  br label %lpphy_restore_crs.exit.i.i

lpphy_restore_crs.exit.i.i:                       ; preds = %if.then5.i.i.i.i, %finish.i.i.lpphy_restore_crs.exit.i.i_crit_edge
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1100, i16 noundef zeroext -128) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1200, i16 noundef zeroext -1024) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1101, i16 noundef zeroext %call10.i.i) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1100, i16 noundef zeroext %call9.i.i) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1084, i16 noundef zeroext %call12.i.i) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1083, i16 noundef zeroext %call11.i.i) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1201, i16 noundef zeroext %call14.i.i) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1200, i16 noundef zeroext %call13.i.i) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1096, i16 noundef zeroext %call15.i18.i) #8
  %conv1.i.i.i = and i32 %call.i.i.i, 65280
  tail call void @b43_lptab_write(ptr noundef %dev, i32 noundef 536870999, i32 noundef %conv1.i.i.i) #8
  br i1 %tobool2.not.i.i, label %lpphy_restore_crs.exit.i.i.if.end52.i.i_crit_edge, label %if.then51.i.i

lpphy_restore_crs.exit.i.i.if.end52.i.i_crit_edge: ; preds = %lpphy_restore_crs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52.i.i

if.then51.i.i:                                    ; preds = %lpphy_restore_crs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %tx_gains.sroa.0.sroa.0.0.insert.insert.i.i = or i32 %tx_gains.sroa.0.sroa.0.0.i.i, %tx_gains.sroa.0.sroa.5.0.i.i
  %.fca.0.insert.i.i = insertvalue [2 x i32] poison, i32 %tx_gains.sroa.0.sroa.0.0.insert.insert.i.i, 0
  %.fca.1.insert.i.i = insertvalue [2 x i32] %.fca.0.insert.i.i, i32 %tx_gains.sroa.6.0.i.i, 1
  tail call fastcc void @lpphy_set_tx_gains(ptr noundef %dev, [2 x i32] %.fca.1.insert.i.i) #8
  br label %if.end52.i.i

if.end52.i.i:                                     ; preds = %if.then51.i.i, %lpphy_restore_crs.exit.i.i.if.end52.i.i_crit_edge
  tail call fastcc void @lpphy_set_tx_power_control(ptr noundef %dev, i32 noundef %332) #8
  %366 = ptrtoint ptr %rc_cap.i to i32
  call void @__asan_load1_noabort(i32 %366)
  %367 = load i8, ptr %rc_cap.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %367)
  %tobool54.not.i.i = icmp eq i8 %367, 0
  br i1 %tobool54.not.i.i, label %if.end52.i.i.lpphy_rev0_1_rc_calib.exit.i_crit_edge, label %if.then55.i.i

if.end52.i.i.lpphy_rev0_1_rc_calib.exit.i_crit_edge: ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpphy_rev0_1_rc_calib.exit.i

if.then55.i.i:                                    ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %368 = ptrtoint ptr %lp.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %lp.i, align 4
  %rc_cap1.i.i.i = getelementptr inbounds %struct.b43_phy_lp, ptr %369, i32 0, i32 22
  %370 = ptrtoint ptr %rc_cap1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %370)
  %371 = load i8, ptr %rc_cap1.i.i.i, align 4
  %372 = lshr i8 %371, 1
  %373 = and i8 %372, 15
  %374 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %374)
  %375 = load i8, ptr %rev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %375)
  %cmp.i127.i.i = icmp eq i8 %375, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %373)
  %cmp10.i.i.i = icmp ult i8 %373, 10
  %narrow.i.i.i = add nuw nsw i8 %373, 5
  %cond.i.i.i = select i1 %cmp10.i.i.i, i8 %narrow.i.i.i, i8 15
  %rc_cap.0.i.i.i = select i1 %cmp.i127.i.i, i8 %cond.i.i.i, i8 %373
  %sub.i128.i.i = add i8 %371, -4
  %376 = tail call i8 @llvm.umax.i8(i8 %sub.i128.i.i, i8 -128) #8
  %cond28.i.i.i = zext i8 %376 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 58, i16 noundef zeroext %cond28.i.i.i) #8
  %377 = or i8 %rc_cap.0.i.i.i, -128
  %conv31.i.i.i = zext i8 %377 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 79, i16 noundef zeroext %conv31.i.i.i) #8
  %378 = ptrtoint ptr %rc_cap1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %378)
  %379 = load i8, ptr %rc_cap1.i.i.i, align 4
  %380 = lshr i8 %379, 2
  %381 = and i8 %380, 7
  %382 = or i8 %381, -128
  %conv37.i.i.i = zext i8 %382 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 16487, i16 noundef zeroext %conv37.i.i.i) #8
  br label %lpphy_rev0_1_rc_calib.exit.i

lpphy_rev0_1_rc_calib.exit.i:                     ; preds = %if.then55.i.i, %if.end52.i.i.lpphy_rev0_1_rc_calib.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iq_est.i.i) #8
  br label %lpphy_calibrate_rc.exit

if.else7.i:                                       ; preds = %if.else.i30
  call void @__sanitizer_cov_trace_pc() #10
  %383 = lshr i8 %299, 1
  %384 = and i8 %383, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %282)
  %cmp.i24.i = icmp eq i8 %282, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %384)
  %cmp10.i.i = icmp ult i8 %384, 10
  %narrow.i.i = add nuw nsw i8 %384, 5
  %cond.i.i = select i1 %cmp10.i.i, i8 %narrow.i.i, i8 15
  %rc_cap.0.i.i = select i1 %cmp.i24.i, i8 %cond.i.i, i8 %384
  %sub.i25.i = add i8 %299, -4
  %385 = tail call i8 @llvm.umax.i8(i8 %sub.i25.i, i8 -128) #8
  %cond28.i.i = zext i8 %385 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 58, i16 noundef zeroext %cond28.i.i) #8
  %386 = or i8 %rc_cap.0.i.i, -128
  %conv31.i.i = zext i8 %386 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 79, i16 noundef zeroext %conv31.i.i) #8
  %387 = ptrtoint ptr %rc_cap.i to i32
  call void @__asan_load1_noabort(i32 %387)
  %388 = load i8, ptr %rc_cap.i, align 4
  %389 = lshr i8 %388, 2
  %390 = and i8 %389, 7
  %391 = or i8 %390, -128
  %conv37.i.i = zext i8 %391 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 16487, i16 noundef zeroext %conv37.i.i) #8
  br label %lpphy_calibrate_rc.exit

lpphy_calibrate_rc.exit:                          ; preds = %if.else7.i, %lpphy_rev0_1_rc_calib.exit.i, %if.then3.i.lpphy_calibrate_rc.exit_crit_edge, %lpphy_rev2plus_rc_calib.exit.i
  %call = tail call i32 @b43_lpphy_op_switch_channel(ptr noundef %dev, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lpphy_calibrate_rc.exit.if.end4_crit_edge, label %if.then2

lpphy_calibrate_rc.exit.if.end4_crit_edge:        ; preds = %lpphy_calibrate_rc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then2:                                         ; preds = %lpphy_calibrate_rc.exit
  call void @__sanitizer_cov_trace_pc() #10
  %392 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %wl.i, align 4
  tail call void (ptr, ptr, ...) @b43dbg(ptr noundef %393, ptr noundef nonnull @.str.1, i32 noundef %call) #8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %lpphy_calibrate_rc.exit.if.end4_crit_edge
  %394 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %wl.i, align 4
  %hw.i.i.i42 = getelementptr inbounds %struct.b43_wl, ptr %395, i32 0, i32 1
  %396 = ptrtoint ptr %hw.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %hw.i.i.i42, align 4
  %chandef.i.i.i43 = getelementptr inbounds %struct.ieee80211_conf, ptr %397, i32 0, i32 7
  %398 = ptrtoint ptr %chandef.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %chandef.i.i.i43, align 4
  %400 = ptrtoint ptr %399 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %399, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %401)
  %cmp.i.i44 = icmp eq i32 %401, 0
  %..i.i45 = select i1 %cmp.i.i44, i32 786432, i32 917504
  %.19.i.i = select i1 %cmp.i.i44, i32 262156, i32 458767
  %.fca.0.insert.i.i46 = insertvalue [2 x i32] poison, i32 %.19.i.i, 0
  %.fca.1.insert.i.i47 = insertvalue [2 x i32] %.fca.0.insert.i.i46, i32 %..i.i45, 1
  tail call fastcc void @lpphy_set_tx_gains(ptr noundef %dev, [2 x i32] %.fca.1.insert.i.i47) #8
  tail call void @b43_lptab_write(ptr noundef %dev, i32 noundef 536870999, i32 noundef 38400) #8
  tail call void @lpphy_calibration(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then
  %retval.0 = phi i32 [ -95, %if.then ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b43_lpphy_op_maskset(ptr nocapture noundef readonly %dev, i16 noundef zeroext %reg, i16 noundef zeroext %mask, i16 noundef zeroext %set) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %write16.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write16.i.i, align 4
  tail call void %3(ptr noundef %1, i16 noundef zeroext 1020, i16 noundef zeroext %reg) #8
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %read16.i = getelementptr inbounds %struct.b43_bus_dev, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %read16.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read16.i, align 4
  %call.i = tail call zeroext i16 %7(ptr noundef %5, i16 noundef zeroext 1022) #8
  %and6 = and i16 %call.i, %mask
  %or7 = or i16 %and6, %set
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %write16.i = getelementptr inbounds %struct.b43_bus_dev, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write16.i, align 4
  tail call void %11(ptr noundef %9, i16 noundef zeroext 1022, i16 noundef zeroext %or7) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @b43_lpphy_op_radio_read(ptr nocapture noundef readonly %dev, i16 noundef zeroext %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %reg)
  %cmp = icmp eq i16 %reg, 1
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !47

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1976, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %rev = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 8
  %0 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp21 = icmp ult i8 %1, 2
  %or32 = or i16 %reg, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 16385, i16 %reg)
  %cmp25.not = icmp eq i16 %reg, 16385
  %2 = or i16 %reg, 256
  %spec.select = select i1 %cmp25.not, i16 16385, i16 %2
  %reg.addr.0 = select i1 %cmp21, i16 %spec.select, i16 %or32
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %write16.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write16.i.i, align 4
  tail call void %6(ptr noundef %4, i16 noundef zeroext 1014, i16 noundef zeroext %reg.addr.0) #8
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %read16.i = getelementptr inbounds %struct.b43_bus_dev, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %read16.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read16.i, align 4
  %call.i = tail call zeroext i16 %10(ptr noundef %8, i16 noundef zeroext 1018) #8
  ret i16 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b43_lpphy_op_radio_write(ptr nocapture noundef readonly %dev, i16 noundef zeroext %reg, i16 noundef zeroext %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %reg)
  %cmp = icmp eq i16 %reg, 1
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !47

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1991, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %write16.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write16.i.i, align 4
  tail call void %3(ptr noundef %1, i16 noundef zeroext 1014, i16 noundef zeroext %reg) #8
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %write16.i = getelementptr inbounds %struct.b43_bus_dev, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write16.i, align 4
  tail call void %7(ptr noundef %5, i16 noundef zeroext 1018, i16 noundef zeroext %value) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b43_lpphy_op_software_rfkill(ptr noundef %dev, i1 noundef zeroext %blocked) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %blocked, label %if.then, label %if.else3

if.then:                                          ; preds = %entry
  %rev = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 8
  %0 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp ugt i8 %1, 1
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1101, i16 noundef zeroext -31745) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1100, i16 noundef zeroext 7936) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1207, i16 noundef zeroext -32513) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1201, i16 noundef zeroext -8193) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1200, i16 noundef zeroext 2056) #8
  br label %if.end12

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1101, i16 noundef zeroext -7937) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1100, i16 noundef zeroext 7936) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1201, i16 noundef zeroext -769) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1200, i16 noundef zeroext 24) #8
  br label %if.end12

if.else3:                                         ; preds = %entry
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1100, i16 noundef zeroext -7937) #8
  %rev5 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 8
  %2 = ptrtoint ptr %rev5 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rev5, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp7 = icmp ugt i8 %3, 1
  br i1 %cmp7, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1200, i16 noundef zeroext -2057) #8
  br label %if.end12

if.else10:                                        ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1200, i16 noundef zeroext -25) #8
  br label %if.end12

if.end12:                                         ; preds = %if.else10, %if.then9, %if.else, %if.then2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b43_lpphy_op_switch_analog(ptr noundef %dev, i1 noundef zeroext %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %on, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1083, i16 noundef zeroext -8) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1084, i16 noundef zeroext 7) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1083, i16 noundef zeroext 7) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b43_lpphy_op_switch_channel(ptr noundef %dev, i32 noundef %new_channel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lp = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 1, i32 2
  %0 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lp, align 4
  %radio_ver = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 11
  %2 = ptrtoint ptr %radio_ver to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %radio_ver, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8291, i16 %3)
  %cmp = icmp eq i16 %3, 8291
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %6 = getelementptr inbounds %struct.b43_bus_dev, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %bus2.i = getelementptr inbounds %struct.ssb_device, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %bus2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus2.i, align 4
  %crystalfreq.i = getelementptr inbounds %struct.ssb_bus, ptr %10, i32 0, i32 17, i32 5, i32 1
  %11 = ptrtoint ptr %crystalfreq.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %crystalfreq.i, align 4
  %mul.i = mul i32 %12, 1000
  br i1 %cmp, label %if.then, label %entry.for.body.i34_crit_edge

entry.for.body.i34_crit_edge:                     ; preds = %entry
  br label %for.body.i34

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 26000001, i32 %mul.i)
  %cmp.i = icmp ult i32 %mul.i, 26000001
  %cond.i = select i1 %cmp.i, i32 1, i32 2
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.0398.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 51
  br i1 %exitcond.not.i, label %for.endthread-pre-split.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.then
  %i.0398.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [51 x %struct.b206x_channel], ptr @b2063_chantbl, i32 0, i32 %i.0398.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i, align 2
  %conv.i = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %new_channel)
  %cmp5.i = icmp eq i32 %conv.i, %new_channel
  br i1 %cmp5.i, label %if.then.i, label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %arrayidx.i, ptr @lpphy_b2063_tune.chandata, align 4
  br label %for.end.i

for.endthread-pre-split.i:                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  %.pr.i = load ptr, ptr @lpphy_b2063_tune.chandata, align 4
  br label %for.end.i

for.end.i:                                        ; preds = %for.endthread-pre-split.i, %if.then.i
  %15 = phi ptr [ %.pr.i, %for.endthread-pre-split.i ], [ %arrayidx.i, %if.then.i ]
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %lpphy_b2063_tune.exit, label %if.end32.i, !prof !47

if.end32.i:                                       ; preds = %for.end.i
  %data.i = getelementptr inbounds %struct.b206x_channel, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %data.i, align 2
  %conv34.i = zext i8 %17 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 162, i16 noundef zeroext %conv34.i) #8
  %18 = load ptr, ptr @lpphy_b2063_tune.chandata, align 4
  %arrayidx36.i = getelementptr %struct.b206x_channel, ptr %18, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx36.i, align 1
  %conv37.i = zext i8 %20 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 164, i16 noundef zeroext %conv37.i) #8
  %21 = load ptr, ptr @lpphy_b2063_tune.chandata, align 4
  %arrayidx39.i = getelementptr %struct.b206x_channel, ptr %21, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx39.i, align 2
  %conv40.i = zext i8 %23 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 166, i16 noundef zeroext %conv40.i) #8
  %24 = load ptr, ptr @lpphy_b2063_tune.chandata, align 4
  %arrayidx42.i = getelementptr %struct.b206x_channel, ptr %24, i32 0, i32 2, i32 3
  %25 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx42.i, align 1
  %conv43.i = zext i8 %26 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 161, i16 noundef zeroext %conv43.i) #8
  %27 = load ptr, ptr @lpphy_b2063_tune.chandata, align 4
  %arrayidx45.i = getelementptr %struct.b206x_channel, ptr %27, i32 0, i32 2, i32 4
  %28 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx45.i, align 2
  %conv46.i = zext i8 %29 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 208, i16 noundef zeroext %conv46.i) #8
  %30 = load ptr, ptr @lpphy_b2063_tune.chandata, align 4
  %arrayidx48.i = getelementptr %struct.b206x_channel, ptr %30, i32 0, i32 2, i32 5
  %31 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx48.i, align 1
  %conv49.i = zext i8 %32 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 211, i16 noundef zeroext %conv49.i) #8
  %33 = load ptr, ptr @lpphy_b2063_tune.chandata, align 4
  %arrayidx51.i = getelementptr %struct.b206x_channel, ptr %33, i32 0, i32 2, i32 6
  %34 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx51.i, align 2
  %conv52.i = zext i8 %35 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 214, i16 noundef zeroext %conv52.i) #8
  %36 = load ptr, ptr @lpphy_b2063_tune.chandata, align 4
  %arrayidx54.i = getelementptr %struct.b206x_channel, ptr %36, i32 0, i32 2, i32 7
  %37 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx54.i, align 1
  %conv55.i = zext i8 %38 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 217, i16 noundef zeroext %conv55.i) #8
  %39 = load ptr, ptr @lpphy_b2063_tune.chandata, align 4
  %arrayidx57.i = getelementptr %struct.b206x_channel, ptr %39, i32 0, i32 2, i32 8
  %40 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx57.i, align 2
  %conv58.i = zext i8 %41 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 223, i16 noundef zeroext %conv58.i) #8
  %42 = load ptr, ptr @lpphy_b2063_tune.chandata, align 4
  %arrayidx60.i = getelementptr %struct.b206x_channel, ptr %42, i32 0, i32 2, i32 9
  %43 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx60.i, align 1
  %conv61.i = zext i8 %44 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 256, i16 noundef zeroext %conv61.i) #8
  %45 = load ptr, ptr @lpphy_b2063_tune.chandata, align 4
  %arrayidx63.i = getelementptr %struct.b206x_channel, ptr %45, i32 0, i32 2, i32 10
  %46 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx63.i, align 2
  %conv64.i = zext i8 %47 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 259, i16 noundef zeroext %conv64.i) #8
  %48 = load ptr, ptr @lpphy_b2063_tune.chandata, align 4
  %arrayidx66.i = getelementptr %struct.b206x_channel, ptr %48, i32 0, i32 2, i32 11
  %49 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx66.i, align 1
  %conv67.i = zext i8 %50 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 277, i16 noundef zeroext %conv67.i) #8
  %call.i = tail call zeroext i16 @b43_radio_read(ptr noundef %dev, i16 noundef zeroext 15) #8
  tail call void @b43_radio_set(ptr noundef %dev, i16 noundef zeroext 15, i16 noundef zeroext 30) #8
  %51 = load ptr, ptr @lpphy_b2063_tune.chandata, align 4
  %freq.i = getelementptr inbounds %struct.b206x_channel, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %freq.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %freq.i, align 2
  %conv68.i = zext i16 %53 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4000, i16 %53)
  %cmp69.i = icmp ugt i16 %53, 4000
  %vco_freq.0.v.i = select i1 %cmp69.i, i32 1, i32 2
  %vco_freq.0.i = shl nuw nsw i32 %conv68.i, %vco_freq.0.v.i
  %mul.i.frozen = freeze i32 %mul.i
  %div.i.i = udiv i32 %mul.i.frozen, 1000000
  %54 = mul i32 %div.i.i, 1000000
  %rem.i.i.decomposed = sub i32 %mul.i.frozen, %54
  %shl3.i.i = shl nuw nsw i32 %rem.i.i.decomposed, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %rem.i.i.decomposed)
  %cmp4.not.i.i = icmp ult i32 %rem.i.i.decomposed, 500000
  %sub.i.i = add nsw i32 %shl3.i.i, -1000000
  %remainder.1.i.i = select i1 %cmp4.not.i.i, i32 %rem.i.i.decomposed, i32 %sub.i.i
  %shl3.i.1.i = shl nsw i32 %remainder.1.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %shl3.i.1.i)
  %cmp4.not.i.1.i = icmp ult i32 %shl3.i.1.i, 1000000
  %sub.i.1.i = add nsw i32 %shl3.i.1.i, -1000000
  %not.cmp4.not.i.1.i = xor i1 %cmp4.not.i.1.i, true
  %inc.i.1.i = zext i1 %not.cmp4.not.i.1.i to i32
  %remainder.1.i.1.i = select i1 %cmp4.not.i.1.i, i32 %remainder.1.i.i, i32 %sub.i.1.i
  %shl3.i.2.i = shl i32 %remainder.1.i.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %shl3.i.2.i)
  %cmp4.not.i.2.i = icmp ult i32 %shl3.i.2.i, 1000000
  %sub.i.2.i = add i32 %shl3.i.2.i, -1000000
  %remainder.1.i.2.i = select i1 %cmp4.not.i.2.i, i32 %remainder.1.i.1.i, i32 %sub.i.2.i
  %shl3.i.3.i = shl i32 %remainder.1.i.2.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %shl3.i.3.i)
  %cmp4.not.i.3.i = icmp ult i32 %shl3.i.3.i, 1000000
  %sub.i.3.i = add i32 %shl3.i.3.i, -1000000
  %not.cmp4.not.i.3.i = xor i1 %cmp4.not.i.3.i, true
  %inc.i.3.i = zext i1 %not.cmp4.not.i.3.i to i32
  %remainder.1.i.3.i = select i1 %cmp4.not.i.3.i, i32 %remainder.1.i.2.i, i32 %sub.i.3.i
  %shl3.i.4.i = shl i32 %remainder.1.i.3.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %shl3.i.4.i)
  %cmp4.not.i.4.i = icmp ult i32 %shl3.i.4.i, 1000000
  %sub.i.4.i = add i32 %shl3.i.4.i, -1000000
  %remainder.1.i.4.i = select i1 %cmp4.not.i.4.i, i32 %remainder.1.i.3.i, i32 %sub.i.4.i
  %shl3.i.5.i = shl i32 %remainder.1.i.4.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %shl3.i.5.i)
  %cmp4.not.i.5.i = icmp ult i32 %shl3.i.5.i, 1000000
  %sub.i.5.i = add i32 %shl3.i.5.i, -1000000
  %not.cmp4.not.i.5.i = xor i1 %cmp4.not.i.5.i, true
  %inc.i.5.i = zext i1 %not.cmp4.not.i.5.i to i32
  %remainder.1.i.5.i = select i1 %cmp4.not.i.5.i, i32 %remainder.1.i.4.i, i32 %sub.i.5.i
  %shl3.i.6.i = shl i32 %remainder.1.i.5.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %shl3.i.6.i)
  %cmp4.not.i.6.i = icmp ult i32 %shl3.i.6.i, 1000000
  %sub.i.6.i = add i32 %shl3.i.6.i, -1000000
  %remainder.1.i.6.i = select i1 %cmp4.not.i.6.i, i32 %remainder.1.i.5.i, i32 %sub.i.6.i
  %shl3.i.7.i = shl i32 %remainder.1.i.6.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %shl3.i.7.i)
  %cmp4.not.i.7.i = icmp ult i32 %shl3.i.7.i, 1000000
  %sub.i.7.i = add i32 %shl3.i.7.i, -1000000
  %not.cmp4.not.i.7.i = xor i1 %cmp4.not.i.7.i, true
  %inc.i.7.i = zext i1 %not.cmp4.not.i.7.i to i32
  %remainder.1.i.7.i = select i1 %cmp4.not.i.7.i, i32 %remainder.1.i.6.i, i32 %sub.i.7.i
  %shl3.i.8.i = shl i32 %remainder.1.i.7.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %shl3.i.8.i)
  %cmp4.not.i.8.i = icmp ult i32 %shl3.i.8.i, 1000000
  %sub.i.8.i = add i32 %shl3.i.8.i, -1000000
  %remainder.1.i.8.i = select i1 %cmp4.not.i.8.i, i32 %remainder.1.i.7.i, i32 %sub.i.8.i
  %shl3.i.9.i = shl i32 %remainder.1.i.8.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %shl3.i.9.i)
  %cmp4.not.i.9.i = icmp ult i32 %shl3.i.9.i, 1000000
  %sub.i.9.i = add i32 %shl3.i.9.i, -1000000
  %not.cmp4.not.i.9.i = xor i1 %cmp4.not.i.9.i, true
  %inc.i.9.i = zext i1 %not.cmp4.not.i.9.i to i32
  %remainder.1.i.9.i = select i1 %cmp4.not.i.9.i, i32 %remainder.1.i.8.i, i32 %sub.i.9.i
  %shl3.i.10.i = shl i32 %remainder.1.i.9.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %shl3.i.10.i)
  %cmp4.not.i.10.i = icmp ult i32 %shl3.i.10.i, 1000000
  %sub.i.10.i = add i32 %shl3.i.10.i, -1000000
  %remainder.1.i.10.i = select i1 %cmp4.not.i.10.i, i32 %remainder.1.i.9.i, i32 %sub.i.10.i
  %shl3.i.11.i = shl i32 %remainder.1.i.10.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %shl3.i.11.i)
  %cmp4.not.i.11.i = icmp ult i32 %shl3.i.11.i, 1000000
  %sub.i.11.i = add i32 %shl3.i.11.i, -1000000
  %not.cmp4.not.i.11.i = xor i1 %cmp4.not.i.11.i, true
  %inc.i.11.i = zext i1 %not.cmp4.not.i.11.i to i32
  %remainder.1.i.11.i = select i1 %cmp4.not.i.11.i, i32 %remainder.1.i.10.i, i32 %sub.i.11.i
  %shl3.i.12.i = shl i32 %remainder.1.i.11.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %shl3.i.12.i)
  %cmp4.not.i.12.i = icmp ult i32 %shl3.i.12.i, 1000000
  %sub.i.12.i = add i32 %shl3.i.12.i, -1000000
  %remainder.1.i.12.i = select i1 %cmp4.not.i.12.i, i32 %remainder.1.i.11.i, i32 %sub.i.12.i
  %shl3.i.13.i = shl i32 %remainder.1.i.12.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %shl3.i.13.i)
  %cmp4.not.i.13.i = icmp ult i32 %shl3.i.13.i, 1000000
  %sub.i.13.i = add i32 %shl3.i.13.i, -1000000
  %not.cmp4.not.i.13.i = xor i1 %cmp4.not.i.13.i, true
  %inc.i.13.i = zext i1 %not.cmp4.not.i.13.i to i32
  %remainder.1.i.13.i = select i1 %cmp4.not.i.13.i, i32 %remainder.1.i.12.i, i32 %sub.i.13.i
  %shl3.i.14.i = shl i32 %remainder.1.i.13.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %shl3.i.14.i)
  %cmp4.not.i.14.i = icmp ult i32 %shl3.i.14.i, 1000000
  %sub.i.14.i = add i32 %shl3.i.14.i, -1000000
  %remainder.1.i.14.i = select i1 %cmp4.not.i.14.i, i32 %remainder.1.i.13.i, i32 %sub.i.14.i
  %shl3.i.15.i = shl i32 %remainder.1.i.14.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %shl3.i.15.i)
  %cmp4.not.i.15.i = icmp ult i32 %shl3.i.15.i, 1000000
  %sub.i.15.i = add i32 %shl3.i.15.i, 2146483648
  %not.cmp4.not.i.15.i = xor i1 %cmp4.not.i.15.i, true
  %inc.i.15.i = zext i1 %not.cmp4.not.i.15.i to i32
  %remainder.1.i.15.i = select i1 %cmp4.not.i.15.i, i32 %remainder.1.i.14.i, i32 %sub.i.15.i
  %shl9.i.i = shl i32 %remainder.1.i.15.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999, i32 %shl9.i.i)
  %cmp10.not.i.i = icmp ugt i32 %shl9.i.i, 999999
  %inc13.i.i = zext i1 %cmp10.not.i.i to i32
  %mul80.i = mul nuw nsw i32 %cond.i, 1000000
  %mul.i.frozen83 = freeze i32 %mul.i
  %mul80.i.frozen = freeze i32 %mul80.i
  %div.i286.i = udiv i32 %mul.i.frozen83, %mul80.i.frozen
  %55 = mul i32 %div.i286.i, %mul80.i.frozen
  %rem.i287.i.decomposed = sub i32 %mul.i.frozen83, %55
  %shl3.i292.i = shl nuw nsw i32 %rem.i287.i.decomposed, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i292.i, i32 %mul80.i)
  %cmp4.not.i293.i = icmp ult i32 %shl3.i292.i, %mul80.i
  %sub.i294.i = sub nsw i32 %shl3.i292.i, %mul80.i
  %remainder.1.i298.i = select i1 %cmp4.not.i293.i, i32 %rem.i287.i.decomposed, i32 %sub.i294.i
  %shl3.i292.1.i = shl nsw i32 %remainder.1.i298.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i292.1.i, i32 %mul80.i)
  %cmp4.not.i293.1.i = icmp ult i32 %shl3.i292.1.i, %mul80.i
  %sub.i294.1.i = sub i32 %shl3.i292.1.i, %mul80.i
  %not.cmp4.not.i295.1.i = xor i1 %cmp4.not.i293.1.i, true
  %inc.i296.1.i = zext i1 %not.cmp4.not.i295.1.i to i32
  %remainder.1.i298.1.i = select i1 %cmp4.not.i293.1.i, i32 %remainder.1.i298.i, i32 %sub.i294.1.i
  %shl3.i292.2.i = shl i32 %remainder.1.i298.1.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i292.2.i, i32 %mul80.i)
  %cmp4.not.i293.2.i = icmp ult i32 %shl3.i292.2.i, %mul80.i
  %sub.i294.2.i = sub i32 %shl3.i292.2.i, %mul80.i
  %remainder.1.i298.2.i = select i1 %cmp4.not.i293.2.i, i32 %remainder.1.i298.1.i, i32 %sub.i294.2.i
  %shl3.i292.3.i = shl i32 %remainder.1.i298.2.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i292.3.i, i32 %mul80.i)
  %cmp4.not.i293.3.i = icmp ult i32 %shl3.i292.3.i, %mul80.i
  %sub.i294.3.i = sub i32 %shl3.i292.3.i, %mul80.i
  %not.cmp4.not.i295.3.i = xor i1 %cmp4.not.i293.3.i, true
  %inc.i296.3.i = zext i1 %not.cmp4.not.i295.3.i to i32
  %remainder.1.i298.3.i = select i1 %cmp4.not.i293.3.i, i32 %remainder.1.i298.2.i, i32 %sub.i294.3.i
  %shl3.i292.4.i = shl i32 %remainder.1.i298.3.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i292.4.i, i32 %mul80.i)
  %cmp4.not.i293.4.i = icmp ult i32 %shl3.i292.4.i, %mul80.i
  %sub.i294.4.i = sub i32 %shl3.i292.4.i, %mul80.i
  %remainder.1.i298.4.i = select i1 %cmp4.not.i293.4.i, i32 %remainder.1.i298.3.i, i32 %sub.i294.4.i
  %shl3.i292.5.i = shl i32 %remainder.1.i298.4.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i292.5.i, i32 %mul80.i)
  %cmp4.not.i293.5.i = icmp ult i32 %shl3.i292.5.i, %mul80.i
  %sub.i294.5.i = sub i32 %shl3.i292.5.i, %mul80.i
  %not.cmp4.not.i295.5.i = xor i1 %cmp4.not.i293.5.i, true
  %inc.i296.5.i = zext i1 %not.cmp4.not.i295.5.i to i32
  %remainder.1.i298.5.i = select i1 %cmp4.not.i293.5.i, i32 %remainder.1.i298.4.i, i32 %sub.i294.5.i
  %shl3.i292.6.i = shl i32 %remainder.1.i298.5.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i292.6.i, i32 %mul80.i)
  %cmp4.not.i293.6.i = icmp ult i32 %shl3.i292.6.i, %mul80.i
  %sub.i294.6.i = sub i32 %shl3.i292.6.i, %mul80.i
  %remainder.1.i298.6.i = select i1 %cmp4.not.i293.6.i, i32 %remainder.1.i298.5.i, i32 %sub.i294.6.i
  %shl3.i292.7.i = shl i32 %remainder.1.i298.6.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i292.7.i, i32 %mul80.i)
  %cmp4.not.i293.7.i = icmp ult i32 %shl3.i292.7.i, %mul80.i
  %sub.i294.7.i = sub i32 %shl3.i292.7.i, %mul80.i
  %not.cmp4.not.i295.7.i = xor i1 %cmp4.not.i293.7.i, true
  %inc.i296.7.i = zext i1 %not.cmp4.not.i295.7.i to i32
  %remainder.1.i298.7.i = select i1 %cmp4.not.i293.7.i, i32 %remainder.1.i298.6.i, i32 %sub.i294.7.i
  %shl3.i292.8.i = shl i32 %remainder.1.i298.7.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i292.8.i, i32 %mul80.i)
  %cmp4.not.i293.8.i = icmp ult i32 %shl3.i292.8.i, %mul80.i
  %sub.i294.8.i = sub i32 %shl3.i292.8.i, %mul80.i
  %remainder.1.i298.8.i = select i1 %cmp4.not.i293.8.i, i32 %remainder.1.i298.7.i, i32 %sub.i294.8.i
  %shl3.i292.9.i = shl i32 %remainder.1.i298.8.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i292.9.i, i32 %mul80.i)
  %cmp4.not.i293.9.i = icmp ult i32 %shl3.i292.9.i, %mul80.i
  %sub.i294.9.i = sub i32 %shl3.i292.9.i, %mul80.i
  %not.cmp4.not.i295.9.i = xor i1 %cmp4.not.i293.9.i, true
  %inc.i296.9.i = zext i1 %not.cmp4.not.i295.9.i to i32
  %remainder.1.i298.9.i = select i1 %cmp4.not.i293.9.i, i32 %remainder.1.i298.8.i, i32 %sub.i294.9.i
  %shl3.i292.10.i = shl i32 %remainder.1.i298.9.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i292.10.i, i32 %mul80.i)
  %cmp4.not.i293.10.i = icmp ult i32 %shl3.i292.10.i, %mul80.i
  %sub.i294.10.i = sub i32 %shl3.i292.10.i, %mul80.i
  %remainder.1.i298.10.i = select i1 %cmp4.not.i293.10.i, i32 %remainder.1.i298.9.i, i32 %sub.i294.10.i
  %shl3.i292.11.i = shl i32 %remainder.1.i298.10.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i292.11.i, i32 %mul80.i)
  %cmp4.not.i293.11.i = icmp ult i32 %shl3.i292.11.i, %mul80.i
  %sub.i294.11.i = sub i32 %shl3.i292.11.i, %mul80.i
  %not.cmp4.not.i295.11.i = xor i1 %cmp4.not.i293.11.i, true
  %inc.i296.11.i = zext i1 %not.cmp4.not.i295.11.i to i32
  %remainder.1.i298.11.i = select i1 %cmp4.not.i293.11.i, i32 %remainder.1.i298.10.i, i32 %sub.i294.11.i
  %shl3.i292.12.i = shl i32 %remainder.1.i298.11.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i292.12.i, i32 %mul80.i)
  %cmp4.not.i293.12.i = icmp ult i32 %shl3.i292.12.i, %mul80.i
  %sub.i294.12.i = sub i32 %shl3.i292.12.i, %mul80.i
  %remainder.1.i298.12.i = select i1 %cmp4.not.i293.12.i, i32 %remainder.1.i298.11.i, i32 %sub.i294.12.i
  %shl3.i292.13.i = shl i32 %remainder.1.i298.12.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i292.13.i, i32 %mul80.i)
  %cmp4.not.i293.13.i = icmp ult i32 %shl3.i292.13.i, %mul80.i
  %sub.i294.13.i = sub i32 %shl3.i292.13.i, %mul80.i
  %not.cmp4.not.i295.13.i = xor i1 %cmp4.not.i293.13.i, true
  %inc.i296.13.i = zext i1 %not.cmp4.not.i295.13.i to i32
  %remainder.1.i298.13.i = select i1 %cmp4.not.i293.13.i, i32 %remainder.1.i298.12.i, i32 %sub.i294.13.i
  %shl3.i292.14.i = shl i32 %remainder.1.i298.13.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i292.14.i, i32 %mul80.i)
  %cmp4.not.i293.14.i = icmp ult i32 %shl3.i292.14.i, %mul80.i
  %sub.i294.14.i = sub i32 %shl3.i292.14.i, %mul80.i
  %remainder.1.i298.14.i = select i1 %cmp4.not.i293.14.i, i32 %remainder.1.i298.13.i, i32 %sub.i294.14.i
  %shl3.i292.15.i = shl i32 %remainder.1.i298.14.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i292.15.i, i32 %mul80.i)
  %cmp4.not.i293.15.i = icmp ult i32 %shl3.i292.15.i, %mul80.i
  %sub.i294.15.i = sub i32 %shl3.i292.15.i, %mul80.i
  %not.cmp4.not.i295.15.i = xor i1 %cmp4.not.i293.15.i, true
  %inc.i296.15.i = zext i1 %not.cmp4.not.i295.15.i to i32
  %remainder.1.i298.15.i = select i1 %cmp4.not.i293.15.i, i32 %remainder.1.i298.14.i, i32 %sub.i294.15.i
  %56 = shl nuw nsw i32 %div.i.i, 2
  %57 = select i1 %cmp4.not.i.i, i32 0, i32 2
  %shl.i.1.i = or i32 %57, %56
  %quotient.1.i.1.i = or i32 %shl.i.1.i, %inc.i.1.i
  %58 = shl nuw nsw i32 %quotient.1.i.1.i, 2
  %59 = select i1 %cmp4.not.i.2.i, i32 0, i32 2
  %shl.i.3.i = or i32 %59, %58
  %quotient.1.i.3.i = or i32 %shl.i.3.i, %inc.i.3.i
  %60 = shl i32 %quotient.1.i.3.i, 2
  %61 = select i1 %cmp4.not.i.4.i, i32 0, i32 2
  %shl.i.5.i = or i32 %61, %60
  %quotient.1.i.5.i = or i32 %shl.i.5.i, %inc.i.5.i
  %62 = shl i32 %quotient.1.i.5.i, 2
  %63 = select i1 %cmp4.not.i.6.i, i32 0, i32 2
  %shl.i.7.i = or i32 %63, %62
  %quotient.1.i.7.i = or i32 %shl.i.7.i, %inc.i.7.i
  %64 = shl i32 %quotient.1.i.7.i, 2
  %65 = select i1 %cmp4.not.i.8.i, i32 0, i32 2
  %shl.i.9.i = or i32 %65, %64
  %quotient.1.i.9.i = or i32 %shl.i.9.i, %inc.i.9.i
  %66 = shl i32 %quotient.1.i.9.i, 2
  %67 = select i1 %cmp4.not.i.10.i, i32 0, i32 2
  %shl.i.11.i = or i32 %67, %66
  %quotient.1.i.11.i = or i32 %shl.i.11.i, %inc.i.11.i
  %68 = shl i32 %quotient.1.i.11.i, 2
  %69 = select i1 %cmp4.not.i.12.i, i32 0, i32 2
  %shl.i.13.i = or i32 %69, %68
  %quotient.1.i.13.i = or i32 %shl.i.13.i, %inc.i.13.i
  %70 = shl i32 %quotient.1.i.13.i, 2
  %71 = select i1 %cmp4.not.i.14.i, i32 0, i32 2
  %shl.i.15.i = or i32 %71, %70
  %mul78.i = mul i32 %12, 3000
  %shl9.i302.i = shl i32 %remainder.1.i298.15.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl9.i302.i, i32 %mul80.i)
  %cmp10.not.i303.i = icmp uge i32 %shl9.i302.i, %mul80.i
  %vco_freq.0.i.frozen = freeze i32 %vco_freq.0.i
  %div.i307.i = udiv i32 %vco_freq.0.i.frozen, 3
  %72 = mul i32 %div.i307.i, 3
  %rem.i308.i.decomposed = sub i32 %vco_freq.0.i.frozen, %72
  %shl3.i313.i = shl nuw nsw i32 %rem.i308.i.decomposed, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %rem.i308.i.decomposed)
  %cmp4.not.i314.i = icmp ult i32 %rem.i308.i.decomposed, 2
  %sub.i315.i = add nsw i32 %shl3.i313.i, -3
  %remainder.1.i319.i = select i1 %cmp4.not.i314.i, i32 %rem.i308.i.decomposed, i32 %sub.i315.i
  %73 = shl nuw nsw i32 %div.i307.i, 2
  %74 = select i1 %cmp4.not.i314.i, i32 0, i32 2
  %shl.i312.1.i = or i32 %74, %73
  %shl3.i313.1.i = shl nsw i32 %remainder.1.i319.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shl3.i313.1.i)
  %cmp4.not.i314.1.i = icmp ult i32 %shl3.i313.1.i, 3
  %sub.i315.1.i = add nsw i32 %shl3.i313.1.i, -3
  %not.cmp4.not.i316.1.i = xor i1 %cmp4.not.i314.1.i, true
  %inc.i317.1.i = zext i1 %not.cmp4.not.i316.1.i to i32
  %quotient.1.i318.1.i = or i32 %shl.i312.1.i, %inc.i317.1.i
  %remainder.1.i319.1.i = select i1 %cmp4.not.i314.1.i, i32 %remainder.1.i319.i, i32 %sub.i315.1.i
  %shl3.i313.2.i = shl i32 %remainder.1.i319.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shl3.i313.2.i)
  %cmp4.not.i314.2.i = icmp ult i32 %shl3.i313.2.i, 3
  %sub.i315.2.i = add i32 %shl3.i313.2.i, -3
  %remainder.1.i319.2.i = select i1 %cmp4.not.i314.2.i, i32 %remainder.1.i319.1.i, i32 %sub.i315.2.i
  %75 = shl nuw nsw i32 %quotient.1.i318.1.i, 2
  %76 = select i1 %cmp4.not.i314.2.i, i32 0, i32 2
  %shl.i312.3.i = or i32 %76, %75
  %shl3.i313.3.i = shl i32 %remainder.1.i319.2.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shl3.i313.3.i)
  %cmp4.not.i314.3.i = icmp ult i32 %shl3.i313.3.i, 3
  %sub.i315.3.i = add i32 %shl3.i313.3.i, -3
  %not.cmp4.not.i316.3.i = xor i1 %cmp4.not.i314.3.i, true
  %inc.i317.3.i = zext i1 %not.cmp4.not.i316.3.i to i32
  %quotient.1.i318.3.i = or i32 %shl.i312.3.i, %inc.i317.3.i
  %remainder.1.i319.3.i = select i1 %cmp4.not.i314.3.i, i32 %remainder.1.i319.2.i, i32 %sub.i315.3.i
  %shl3.i313.4.i = shl i32 %remainder.1.i319.3.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shl3.i313.4.i)
  %cmp4.not.i314.4.i = icmp ult i32 %shl3.i313.4.i, 3
  %sub.i315.4.i = add i32 %shl3.i313.4.i, -3
  %remainder.1.i319.4.i = select i1 %cmp4.not.i314.4.i, i32 %remainder.1.i319.3.i, i32 %sub.i315.4.i
  %77 = shl i32 %quotient.1.i318.3.i, 2
  %78 = select i1 %cmp4.not.i314.4.i, i32 0, i32 2
  %shl.i312.5.i = or i32 %78, %77
  %shl3.i313.5.i = shl i32 %remainder.1.i319.4.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shl3.i313.5.i)
  %cmp4.not.i314.5.i = icmp ult i32 %shl3.i313.5.i, 3
  %sub.i315.5.i = add i32 %shl3.i313.5.i, -3
  %not.cmp4.not.i316.5.i = xor i1 %cmp4.not.i314.5.i, true
  %inc.i317.5.i = zext i1 %not.cmp4.not.i316.5.i to i32
  %quotient.1.i318.5.i = or i32 %shl.i312.5.i, %inc.i317.5.i
  %remainder.1.i319.5.i = select i1 %cmp4.not.i314.5.i, i32 %remainder.1.i319.4.i, i32 %sub.i315.5.i
  %shl3.i313.6.i = shl i32 %remainder.1.i319.5.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shl3.i313.6.i)
  %cmp4.not.i314.6.i = icmp ult i32 %shl3.i313.6.i, 3
  %sub.i315.6.i = add i32 %shl3.i313.6.i, -3
  %remainder.1.i319.6.i = select i1 %cmp4.not.i314.6.i, i32 %remainder.1.i319.5.i, i32 %sub.i315.6.i
  %79 = shl i32 %quotient.1.i318.5.i, 2
  %80 = select i1 %cmp4.not.i314.6.i, i32 0, i32 2
  %shl.i312.7.i = or i32 %80, %79
  %shl3.i313.7.i = shl i32 %remainder.1.i319.6.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shl3.i313.7.i)
  %cmp4.not.i314.7.i = icmp ult i32 %shl3.i313.7.i, 3
  %sub.i315.7.i = add i32 %shl3.i313.7.i, -3
  %not.cmp4.not.i316.7.i = xor i1 %cmp4.not.i314.7.i, true
  %inc.i317.7.i = zext i1 %not.cmp4.not.i316.7.i to i32
  %quotient.1.i318.7.i = or i32 %shl.i312.7.i, %inc.i317.7.i
  %remainder.1.i319.7.i = select i1 %cmp4.not.i314.7.i, i32 %remainder.1.i319.6.i, i32 %sub.i315.7.i
  %shl3.i313.8.i = shl i32 %remainder.1.i319.7.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shl3.i313.8.i)
  %cmp4.not.i314.8.i = icmp ult i32 %shl3.i313.8.i, 3
  %sub.i315.8.i = add i32 %shl3.i313.8.i, -3
  %remainder.1.i319.8.i = select i1 %cmp4.not.i314.8.i, i32 %remainder.1.i319.7.i, i32 %sub.i315.8.i
  %81 = shl i32 %quotient.1.i318.7.i, 2
  %82 = select i1 %cmp4.not.i314.8.i, i32 0, i32 2
  %shl.i312.9.i = or i32 %82, %81
  %shl3.i313.9.i = shl i32 %remainder.1.i319.8.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shl3.i313.9.i)
  %cmp4.not.i314.9.i = icmp ult i32 %shl3.i313.9.i, 3
  %sub.i315.9.i = add i32 %shl3.i313.9.i, -3
  %not.cmp4.not.i316.9.i = xor i1 %cmp4.not.i314.9.i, true
  %inc.i317.9.i = zext i1 %not.cmp4.not.i316.9.i to i32
  %quotient.1.i318.9.i = or i32 %shl.i312.9.i, %inc.i317.9.i
  %remainder.1.i319.9.i = select i1 %cmp4.not.i314.9.i, i32 %remainder.1.i319.8.i, i32 %sub.i315.9.i
  %shl3.i313.10.i = shl i32 %remainder.1.i319.9.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shl3.i313.10.i)
  %cmp4.not.i314.10.i = icmp ult i32 %shl3.i313.10.i, 3
  %sub.i315.10.i = add i32 %shl3.i313.10.i, -3
  %remainder.1.i319.10.i = select i1 %cmp4.not.i314.10.i, i32 %remainder.1.i319.9.i, i32 %sub.i315.10.i
  %83 = shl i32 %quotient.1.i318.9.i, 2
  %84 = select i1 %cmp4.not.i314.10.i, i32 0, i32 2
  %shl.i312.11.i = or i32 %84, %83
  %shl3.i313.11.i = shl i32 %remainder.1.i319.10.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shl3.i313.11.i)
  %cmp4.not.i314.11.i = icmp ult i32 %shl3.i313.11.i, 3
  %sub.i315.11.i = add i32 %shl3.i313.11.i, -3
  %not.cmp4.not.i316.11.i = xor i1 %cmp4.not.i314.11.i, true
  %inc.i317.11.i = zext i1 %not.cmp4.not.i316.11.i to i32
  %quotient.1.i318.11.i = or i32 %shl.i312.11.i, %inc.i317.11.i
  %remainder.1.i319.11.i = select i1 %cmp4.not.i314.11.i, i32 %remainder.1.i319.10.i, i32 %sub.i315.11.i
  %shl3.i313.12.i = shl i32 %remainder.1.i319.11.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shl3.i313.12.i)
  %cmp4.not.i314.12.i = icmp ult i32 %shl3.i313.12.i, 3
  %sub.i315.12.i = add i32 %shl3.i313.12.i, -3
  %remainder.1.i319.12.i = select i1 %cmp4.not.i314.12.i, i32 %remainder.1.i319.11.i, i32 %sub.i315.12.i
  %85 = shl i32 %quotient.1.i318.11.i, 2
  %86 = select i1 %cmp4.not.i314.12.i, i32 0, i32 2
  %shl.i312.13.i = or i32 %86, %85
  %shl3.i313.13.i = shl i32 %remainder.1.i319.12.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shl3.i313.13.i)
  %cmp4.not.i314.13.i = icmp ult i32 %shl3.i313.13.i, 3
  %sub.i315.13.i = add i32 %shl3.i313.13.i, -3
  %not.cmp4.not.i316.13.i = xor i1 %cmp4.not.i314.13.i, true
  %inc.i317.13.i = zext i1 %not.cmp4.not.i316.13.i to i32
  %quotient.1.i318.13.i = or i32 %shl.i312.13.i, %inc.i317.13.i
  %remainder.1.i319.13.i = select i1 %cmp4.not.i314.13.i, i32 %remainder.1.i319.12.i, i32 %sub.i315.13.i
  %shl3.i313.14.i = shl i32 %remainder.1.i319.13.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shl3.i313.14.i)
  %cmp4.not.i314.14.i = icmp ult i32 %shl3.i313.14.i, 3
  %sub.i315.14.i = add i32 %shl3.i313.14.i, -3
  %remainder.1.i319.14.i = select i1 %cmp4.not.i314.14.i, i32 %remainder.1.i319.13.i, i32 %sub.i315.14.i
  %87 = shl i32 %quotient.1.i318.13.i, 2
  %88 = select i1 %cmp4.not.i314.14.i, i32 0, i32 2
  %shl.i312.15.i = or i32 %88, %87
  %shl3.i313.15.i = shl i32 %remainder.1.i319.14.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shl3.i313.15.i)
  %cmp4.not.i314.15.i = icmp ult i32 %shl3.i313.15.i, 3
  %sub.i315.15.i = add i32 %shl3.i313.15.i, 2147483645
  %not.cmp4.not.i316.15.i = xor i1 %cmp4.not.i314.15.i, true
  %inc.i317.15.i = zext i1 %not.cmp4.not.i316.15.i to i32
  %quotient.1.i318.15.i = or i32 %shl.i312.15.i, %inc.i317.15.i
  %remainder.1.i319.15.i = select i1 %cmp4.not.i314.15.i, i32 %remainder.1.i319.14.i, i32 %sub.i315.15.i
  %89 = shl i32 %div.i286.i, 2
  %90 = select i1 %cmp4.not.i293.i, i32 0, i32 2
  %shl.i291.1.i = or i32 %90, %89
  %quotient.1.i297.1.i = or i32 %shl.i291.1.i, %inc.i296.1.i
  %91 = shl i32 %quotient.1.i297.1.i, 2
  %92 = select i1 %cmp4.not.i293.2.i, i32 0, i32 2
  %shl.i291.3.i = or i32 %92, %91
  %quotient.1.i297.3.i = or i32 %shl.i291.3.i, %inc.i296.3.i
  %93 = shl i32 %quotient.1.i297.3.i, 2
  %94 = select i1 %cmp4.not.i293.4.i, i32 0, i32 2
  %shl.i291.5.i = or i32 %94, %93
  %quotient.1.i297.5.i = or i32 %shl.i291.5.i, %inc.i296.5.i
  %95 = shl i32 %quotient.1.i297.5.i, 2
  %96 = select i1 %cmp4.not.i293.6.i, i32 0, i32 2
  %shl.i291.7.i = or i32 %96, %95
  %quotient.1.i297.7.i = or i32 %shl.i291.7.i, %inc.i296.7.i
  %97 = shl i32 %quotient.1.i297.7.i, 2
  %98 = select i1 %cmp4.not.i293.8.i, i32 0, i32 2
  %shl.i291.9.i = or i32 %98, %97
  %quotient.1.i297.9.i = or i32 %shl.i291.9.i, %inc.i296.9.i
  %99 = shl i32 %quotient.1.i297.9.i, 2
  %100 = select i1 %cmp4.not.i293.10.i, i32 0, i32 2
  %shl.i291.11.i = or i32 %100, %99
  %quotient.1.i297.11.i = or i32 %shl.i291.11.i, %inc.i296.11.i
  %101 = shl i32 %quotient.1.i297.11.i, 2
  %102 = select i1 %cmp4.not.i293.12.i, i32 0, i32 2
  %shl.i291.13.i = or i32 %102, %101
  %quotient.1.i297.13.i = or i32 %shl.i291.13.i, %inc.i296.13.i
  %103 = shl i32 %quotient.1.i297.13.i, 2
  %104 = select i1 %cmp4.not.i293.14.i, i32 0, i32 2
  %quotient.1.i.15.i = or i32 %shl.i.15.i, %inc.i.15.i
  %spec.select.i.i = add i32 %quotient.1.i.15.i, %inc13.i.i
  %inc13.i304.i = zext i1 %cmp10.not.i303.i to i32
  %shl9.i323.i = shl i32 %remainder.1.i319.15.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shl9.i323.i)
  %cmp10.not.i324.i = icmp ugt i32 %shl9.i323.i, 2
  %inc13.i325.i = zext i1 %cmp10.not.i324.i to i32
  %spec.select.i326.i = add i32 %quotient.1.i318.15.i, %inc13.i325.i
  %mul83.i = mul i32 %12, 8000
  %mul84.i = mul nuw nsw i32 %cond.i, 5000000
  %div85.i = udiv i32 %mul83.i, %mul84.i
  %add.i = add i32 %div85.i, 1
  %shr.i = lshr i32 %add.i, 1
  %sub.i = add nsw i32 %shr.i, -1
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 121, i16 noundef zeroext 2) #8
  %shr86.i = lshr i32 %sub.i, 2
  %conv87.i = trunc i32 %shr86.i to i16
  tail call void @b43_radio_maskset(ptr noundef %dev, i16 noundef zeroext 124, i16 noundef zeroext -8, i16 noundef zeroext %conv87.i) #8
  %sub.tr.i = trunc i32 %sub.i to i16
  %conv89.i = shl i16 %sub.tr.i, 5
  tail call void @b43_radio_maskset(ptr noundef %dev, i16 noundef zeroext 125, i16 noundef zeroext -97, i16 noundef zeroext %conv89.i) #8
  %mul92.i = mul i32 %shr.i, %cond.i
  %div93.i = udiv i32 %mul83.i, %mul92.i
  %add94.i = add i32 %div93.i, 999999
  %div95.i = udiv i32 %add94.i, 1000000
  %105 = trunc i32 %div95.i to i16
  %conv97.i = add nuw nsw i16 %105, 1
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 123, i16 noundef zeroext %conv97.i) #8
  %shl.i291.15.i = add i32 %103, 16
  %quotient.1.i297.15.i = or i32 %shl.i291.15.i, %104
  %spec.select.i305.i = or i32 %quotient.1.i297.15.i, %inc.i296.15.i
  %add98.i = add i32 %spec.select.i305.i, %inc13.i304.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add98.i)
  %cmp.i.i = icmp eq i32 %add98.i, 0
  br i1 %cmp.i.i, label %if.end32.i.lpphy_qdiv_roundup.exit348.i_crit_edge, label %if.end.i.i

if.end32.i.lpphy_qdiv_roundup.exit348.i_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpphy_qdiv_roundup.exit348.i

if.end.i.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  %spec.select.i326.i.frozen = freeze i32 %spec.select.i326.i
  %add98.i.frozen = freeze i32 %add98.i
  %div.i328.i = udiv i32 %spec.select.i326.i.frozen, %add98.i.frozen
  %106 = mul i32 %div.i328.i, %add98.i.frozen
  %rem.i329.i.decomposed = sub i32 %spec.select.i326.i.frozen, %106
  %shl3.i334.i = shl i32 %rem.i329.i.decomposed, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i334.i, i32 %add98.i)
  %cmp4.not.i335.i = icmp ult i32 %shl3.i334.i, %add98.i
  %sub.i336.i = sub i32 %shl3.i334.i, %add98.i
  %remainder.1.i340.i = select i1 %cmp4.not.i335.i, i32 %rem.i329.i.decomposed, i32 %sub.i336.i
  %107 = shl i32 %div.i328.i, 2
  %108 = select i1 %cmp4.not.i335.i, i32 0, i32 2
  %shl.i333.1.i = or i32 %108, %107
  %shl3.i334.1.i = shl i32 %remainder.1.i340.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i334.1.i, i32 %add98.i)
  %cmp4.not.i335.1.i = icmp ult i32 %shl3.i334.1.i, %add98.i
  %sub.i336.1.i = sub i32 %shl3.i334.1.i, %add98.i
  %not.cmp4.not.i337.1.i = xor i1 %cmp4.not.i335.1.i, true
  %inc.i338.1.i = zext i1 %not.cmp4.not.i337.1.i to i32
  %quotient.1.i339.1.i = or i32 %shl.i333.1.i, %inc.i338.1.i
  %remainder.1.i340.1.i = select i1 %cmp4.not.i335.1.i, i32 %remainder.1.i340.i, i32 %sub.i336.1.i
  %shl3.i334.2.i = shl i32 %remainder.1.i340.1.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i334.2.i, i32 %add98.i)
  %cmp4.not.i335.2.i = icmp ult i32 %shl3.i334.2.i, %add98.i
  %sub.i336.2.i = sub i32 %shl3.i334.2.i, %add98.i
  %remainder.1.i340.2.i = select i1 %cmp4.not.i335.2.i, i32 %remainder.1.i340.1.i, i32 %sub.i336.2.i
  %109 = shl i32 %quotient.1.i339.1.i, 2
  %110 = select i1 %cmp4.not.i335.2.i, i32 0, i32 2
  %shl.i333.3.i = or i32 %110, %109
  %shl3.i334.3.i = shl i32 %remainder.1.i340.2.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i334.3.i, i32 %add98.i)
  %cmp4.not.i335.3.i = icmp ult i32 %shl3.i334.3.i, %add98.i
  %sub.i336.3.i = sub i32 %shl3.i334.3.i, %add98.i
  %not.cmp4.not.i337.3.i = xor i1 %cmp4.not.i335.3.i, true
  %inc.i338.3.i = zext i1 %not.cmp4.not.i337.3.i to i32
  %quotient.1.i339.3.i = or i32 %shl.i333.3.i, %inc.i338.3.i
  %remainder.1.i340.3.i = select i1 %cmp4.not.i335.3.i, i32 %remainder.1.i340.2.i, i32 %sub.i336.3.i
  %shl3.i334.4.i = shl i32 %remainder.1.i340.3.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i334.4.i, i32 %add98.i)
  %cmp4.not.i335.4.i = icmp ult i32 %shl3.i334.4.i, %add98.i
  %sub.i336.4.i = sub i32 %shl3.i334.4.i, %add98.i
  %remainder.1.i340.4.i = select i1 %cmp4.not.i335.4.i, i32 %remainder.1.i340.3.i, i32 %sub.i336.4.i
  %111 = shl i32 %quotient.1.i339.3.i, 2
  %112 = select i1 %cmp4.not.i335.4.i, i32 0, i32 2
  %shl.i333.5.i = or i32 %112, %111
  %shl3.i334.5.i = shl i32 %remainder.1.i340.4.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i334.5.i, i32 %add98.i)
  %cmp4.not.i335.5.i = icmp ult i32 %shl3.i334.5.i, %add98.i
  %sub.i336.5.i = sub i32 %shl3.i334.5.i, %add98.i
  %not.cmp4.not.i337.5.i = xor i1 %cmp4.not.i335.5.i, true
  %inc.i338.5.i = zext i1 %not.cmp4.not.i337.5.i to i32
  %quotient.1.i339.5.i = or i32 %shl.i333.5.i, %inc.i338.5.i
  %remainder.1.i340.5.i = select i1 %cmp4.not.i335.5.i, i32 %remainder.1.i340.4.i, i32 %sub.i336.5.i
  %shl3.i334.6.i = shl i32 %remainder.1.i340.5.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i334.6.i, i32 %add98.i)
  %cmp4.not.i335.6.i = icmp ult i32 %shl3.i334.6.i, %add98.i
  %sub.i336.6.i = sub i32 %shl3.i334.6.i, %add98.i
  %remainder.1.i340.6.i = select i1 %cmp4.not.i335.6.i, i32 %remainder.1.i340.5.i, i32 %sub.i336.6.i
  %113 = shl i32 %quotient.1.i339.5.i, 2
  %114 = select i1 %cmp4.not.i335.6.i, i32 0, i32 2
  %shl.i333.7.i = or i32 %114, %113
  %shl3.i334.7.i = shl i32 %remainder.1.i340.6.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i334.7.i, i32 %add98.i)
  %cmp4.not.i335.7.i = icmp ult i32 %shl3.i334.7.i, %add98.i
  %sub.i336.7.i = sub i32 %shl3.i334.7.i, %add98.i
  %not.cmp4.not.i337.7.i = xor i1 %cmp4.not.i335.7.i, true
  %inc.i338.7.i = zext i1 %not.cmp4.not.i337.7.i to i32
  %quotient.1.i339.7.i = or i32 %shl.i333.7.i, %inc.i338.7.i
  %remainder.1.i340.7.i = select i1 %cmp4.not.i335.7.i, i32 %remainder.1.i340.6.i, i32 %sub.i336.7.i
  %shl3.i334.8.i = shl i32 %remainder.1.i340.7.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i334.8.i, i32 %add98.i)
  %cmp4.not.i335.8.i = icmp ult i32 %shl3.i334.8.i, %add98.i
  %sub.i336.8.i = sub i32 %shl3.i334.8.i, %add98.i
  %remainder.1.i340.8.i = select i1 %cmp4.not.i335.8.i, i32 %remainder.1.i340.7.i, i32 %sub.i336.8.i
  %115 = shl i32 %quotient.1.i339.7.i, 2
  %116 = select i1 %cmp4.not.i335.8.i, i32 0, i32 2
  %shl.i333.9.i = or i32 %116, %115
  %shl3.i334.9.i = shl i32 %remainder.1.i340.8.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i334.9.i, i32 %add98.i)
  %cmp4.not.i335.9.i = icmp ult i32 %shl3.i334.9.i, %add98.i
  %sub.i336.9.i = sub i32 %shl3.i334.9.i, %add98.i
  %not.cmp4.not.i337.9.i = xor i1 %cmp4.not.i335.9.i, true
  %inc.i338.9.i = zext i1 %not.cmp4.not.i337.9.i to i32
  %quotient.1.i339.9.i = or i32 %shl.i333.9.i, %inc.i338.9.i
  %remainder.1.i340.9.i = select i1 %cmp4.not.i335.9.i, i32 %remainder.1.i340.8.i, i32 %sub.i336.9.i
  %shl3.i334.10.i = shl i32 %remainder.1.i340.9.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i334.10.i, i32 %add98.i)
  %cmp4.not.i335.10.i = icmp ult i32 %shl3.i334.10.i, %add98.i
  %sub.i336.10.i = sub i32 %shl3.i334.10.i, %add98.i
  %remainder.1.i340.10.i = select i1 %cmp4.not.i335.10.i, i32 %remainder.1.i340.9.i, i32 %sub.i336.10.i
  %117 = shl i32 %quotient.1.i339.9.i, 2
  %118 = select i1 %cmp4.not.i335.10.i, i32 0, i32 2
  %shl.i333.11.i = or i32 %118, %117
  %shl3.i334.11.i = shl i32 %remainder.1.i340.10.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i334.11.i, i32 %add98.i)
  %cmp4.not.i335.11.i = icmp ult i32 %shl3.i334.11.i, %add98.i
  %sub.i336.11.i = sub i32 %shl3.i334.11.i, %add98.i
  %not.cmp4.not.i337.11.i = xor i1 %cmp4.not.i335.11.i, true
  %inc.i338.11.i = zext i1 %not.cmp4.not.i337.11.i to i32
  %quotient.1.i339.11.i = or i32 %shl.i333.11.i, %inc.i338.11.i
  %remainder.1.i340.11.i = select i1 %cmp4.not.i335.11.i, i32 %remainder.1.i340.10.i, i32 %sub.i336.11.i
  %shl3.i334.12.i = shl i32 %remainder.1.i340.11.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i334.12.i, i32 %add98.i)
  %cmp4.not.i335.12.i = icmp ult i32 %shl3.i334.12.i, %add98.i
  %sub.i336.12.i = sub i32 %shl3.i334.12.i, %add98.i
  %remainder.1.i340.12.i = select i1 %cmp4.not.i335.12.i, i32 %remainder.1.i340.11.i, i32 %sub.i336.12.i
  %119 = shl i32 %quotient.1.i339.11.i, 2
  %120 = select i1 %cmp4.not.i335.12.i, i32 0, i32 2
  %shl.i333.13.i = or i32 %120, %119
  %shl3.i334.13.i = shl i32 %remainder.1.i340.12.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i334.13.i, i32 %add98.i)
  %cmp4.not.i335.13.i = icmp ult i32 %shl3.i334.13.i, %add98.i
  %sub.i336.13.i = sub i32 %shl3.i334.13.i, %add98.i
  %not.cmp4.not.i337.13.i = xor i1 %cmp4.not.i335.13.i, true
  %inc.i338.13.i = zext i1 %not.cmp4.not.i337.13.i to i32
  %quotient.1.i339.13.i = or i32 %shl.i333.13.i, %inc.i338.13.i
  %remainder.1.i340.13.i = select i1 %cmp4.not.i335.13.i, i32 %remainder.1.i340.12.i, i32 %sub.i336.13.i
  %shl3.i334.14.i = shl i32 %remainder.1.i340.13.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i334.14.i, i32 %add98.i)
  %cmp4.not.i335.14.i = icmp ult i32 %shl3.i334.14.i, %add98.i
  %sub.i336.14.i = sub i32 %shl3.i334.14.i, %add98.i
  %remainder.1.i340.14.i = select i1 %cmp4.not.i335.14.i, i32 %remainder.1.i340.13.i, i32 %sub.i336.14.i
  %121 = shl i32 %quotient.1.i339.13.i, 2
  %122 = select i1 %cmp4.not.i335.14.i, i32 0, i32 2
  %shl.i333.15.i = or i32 %122, %121
  %shl3.i334.15.i = shl i32 %remainder.1.i340.14.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i334.15.i, i32 %add98.i)
  %cmp4.not.i335.15.i = icmp ult i32 %shl3.i334.15.i, %add98.i
  %sub.i336.15.i = sub i32 %shl3.i334.15.i, %add98.i
  %not.cmp4.not.i337.15.i = xor i1 %cmp4.not.i335.15.i, true
  %inc.i338.15.i = zext i1 %not.cmp4.not.i337.15.i to i32
  %quotient.1.i339.15.i = or i32 %shl.i333.15.i, %inc.i338.15.i
  %remainder.1.i340.15.i = select i1 %cmp4.not.i335.15.i, i32 %remainder.1.i340.14.i, i32 %sub.i336.15.i
  %shl9.i344.i = shl i32 %remainder.1.i340.15.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl9.i344.i, i32 %add98.i)
  %cmp10.not.i345.i = icmp uge i32 %shl9.i344.i, %add98.i
  %inc13.i346.i = zext i1 %cmp10.not.i345.i to i32
  %spec.select.i347.i = add i32 %quotient.1.i339.15.i, %inc13.i346.i
  br label %lpphy_qdiv_roundup.exit348.i

lpphy_qdiv_roundup.exit348.i:                     ; preds = %if.end.i.i, %if.end32.i.lpphy_qdiv_roundup.exit348.i_crit_edge
  %retval.0.i.i = phi i32 [ %spec.select.i347.i, %if.end.i.i ], [ 0, %if.end32.i.lpphy_qdiv_roundup.exit348.i_crit_edge ]
  %add101.i = add nuw nsw i32 %div95.i, 2
  %mul102.i = mul i32 %add101.i, %shr.i
  %mul103.i = mul i32 %mul102.i, %retval.0.i.i
  %dec.i = add i32 %mul103.i, -1
  %shr104.i = lshr i32 %dec.i, 8
  %conv105.i = trunc i32 %shr104.i to i16
  tail call void @b43_radio_maskset(ptr noundef %dev, i16 noundef zeroext 125, i16 noundef zeroext 240, i16 noundef zeroext %conv105.i) #8
  %123 = trunc i32 %dec.i to i16
  %conv106.i = and i16 %123, 255
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 126, i16 noundef zeroext %conv106.i) #8
  %mul107.i = mul i32 %spec.select.i326.i, 62500
  %mul107.i.frozen = freeze i32 %mul107.i
  %mul78.i.frozen = freeze i32 %mul78.i
  %div108.i = udiv i32 %mul107.i.frozen, %mul78.i.frozen
  %shl109.i = shl i32 %div108.i, 4
  %124 = mul i32 %div108.i, %mul78.i.frozen
  %rem.i.decomposed = sub i32 %mul107.i.frozen, %124
  %shl111.i = shl i32 %rem.i.decomposed, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl111.i, i32 %mul78.i)
  %cmp112.not399.i = icmp ult i32 %shl111.i, %mul78.i
  br i1 %cmp112.not399.i, label %lpphy_qdiv_roundup.exit348.i.while.end.i_crit_edge, label %lpphy_qdiv_roundup.exit348.i.while.body.i_crit_edge

lpphy_qdiv_roundup.exit348.i.while.body.i_crit_edge: ; preds = %lpphy_qdiv_roundup.exit348.i
  br label %while.body.i

lpphy_qdiv_roundup.exit348.i.while.end.i_crit_edge: ; preds = %lpphy_qdiv_roundup.exit348.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %lpphy_qdiv_roundup.exit348.i.while.body.i_crit_edge
  %tmp2.0401.i = phi i32 [ %sub115.i, %while.body.i.while.body.i_crit_edge ], [ %shl111.i, %lpphy_qdiv_roundup.exit348.i.while.body.i_crit_edge ]
  %tmp1.0400.i = phi i32 [ %inc114.i, %while.body.i.while.body.i_crit_edge ], [ %shl109.i, %lpphy_qdiv_roundup.exit348.i.while.body.i_crit_edge ]
  %inc114.i = add i32 %tmp1.0400.i, 1
  %sub115.i = sub i32 %tmp2.0401.i, %mul78.i
  %cmp112.not.i = icmp ult i32 %sub115.i, %mul78.i
  br i1 %cmp112.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %lpphy_qdiv_roundup.exit348.i.while.end.i_crit_edge
  %tmp1.0.lcssa.i = phi i32 [ %shl109.i, %lpphy_qdiv_roundup.exit348.i.while.end.i_crit_edge ], [ %inc114.i, %while.body.i.while.end.i_crit_edge ]
  %tmp2.0.lcssa.i = phi i32 [ %shl111.i, %lpphy_qdiv_roundup.exit348.i.while.end.i_crit_edge ], [ %sub115.i, %while.body.i.while.end.i_crit_edge ]
  %shr116.i = lshr i32 %tmp1.0.lcssa.i, 4
  %conv117.i = trunc i32 %shr116.i to i16
  tail call void @b43_radio_maskset(ptr noundef %dev, i16 noundef zeroext 112, i16 noundef zeroext -32, i16 noundef zeroext %conv117.i) #8
  %tmp1.0.tr.i = trunc i32 %tmp1.0.lcssa.i to i16
  %conv119.i = shl i16 %tmp1.0.tr.i, 4
  tail call void @b43_radio_maskset(ptr noundef %dev, i16 noundef zeroext 113, i16 noundef zeroext -497, i16 noundef zeroext %conv119.i) #8
  %shr120.i = lshr i32 %tmp1.0.lcssa.i, 16
  %conv121.i = trunc i32 %shr120.i to i16
  tail call void @b43_radio_maskset(ptr noundef %dev, i16 noundef zeroext 113, i16 noundef zeroext -16, i16 noundef zeroext %conv121.i) #8
  %125 = trunc i32 %tmp2.0.lcssa.i to i16
  %126 = lshr i16 %125, 8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext %126) #8
  %conv126.i = and i16 %125, 248
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv126.i) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 108, i16 noundef zeroext 185) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 109, i16 noundef zeroext 136) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 110, i16 noundef zeroext 40) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 111, i16 noundef zeroext 99) #8
  %127 = mul i32 %spec.select.i326.i, 41
  %mul128.i = add i32 %127, -123000
  %div129.i = udiv i32 %mul128.i, 1200
  %mul131.i = mul i32 %tmp1.0.lcssa.i, 132000
  %mul131.i.frozen = freeze i32 %mul131.i
  %div.i349.i = udiv i32 %mul131.i.frozen, 8451
  %128 = mul i32 %div.i349.i, 8451
  %rem.i350.i.decomposed = sub i32 %mul131.i.frozen, %128
  %shl3.i356.i = shl nuw nsw i32 %rem.i350.i.decomposed, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4226, i32 %rem.i350.i.decomposed)
  %cmp4.not.i357.i = icmp ult i32 %rem.i350.i.decomposed, 4226
  %sub.i358.i = add nsw i32 %shl3.i356.i, -8451
  %remainder.1.i362.i = select i1 %cmp4.not.i357.i, i32 %rem.i350.i.decomposed, i32 %sub.i358.i
  %129 = shl nuw nsw i32 %div.i349.i, 2
  %130 = select i1 %cmp4.not.i357.i, i32 0, i32 2
  %shl.i355.1.i = or i32 %130, %129
  %shl3.i356.1.i = shl nsw i32 %remainder.1.i362.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8451, i32 %shl3.i356.1.i)
  %cmp4.not.i357.1.i = icmp ult i32 %shl3.i356.1.i, 8451
  %sub.i358.1.i = add nsw i32 %shl3.i356.1.i, -8451
  %not.cmp4.not.i359.1.i = xor i1 %cmp4.not.i357.1.i, true
  %inc.i360.1.i = zext i1 %not.cmp4.not.i359.1.i to i32
  %quotient.1.i361.1.i = or i32 %shl.i355.1.i, %inc.i360.1.i
  %remainder.1.i362.1.i = select i1 %cmp4.not.i357.1.i, i32 %remainder.1.i362.i, i32 %sub.i358.1.i
  %shl3.i356.2.i = shl i32 %remainder.1.i362.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8451, i32 %shl3.i356.2.i)
  %cmp4.not.i357.2.i = icmp ult i32 %shl3.i356.2.i, 8451
  %sub.i358.2.i = add i32 %shl3.i356.2.i, -8451
  %remainder.1.i362.2.i = select i1 %cmp4.not.i357.2.i, i32 %remainder.1.i362.1.i, i32 %sub.i358.2.i
  %131 = shl nuw nsw i32 %quotient.1.i361.1.i, 2
  %132 = select i1 %cmp4.not.i357.2.i, i32 0, i32 2
  %shl.i355.3.i = or i32 %132, %131
  %shl3.i356.3.i = shl i32 %remainder.1.i362.2.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8451, i32 %shl3.i356.3.i)
  %cmp4.not.i357.3.i = icmp ult i32 %shl3.i356.3.i, 8451
  %sub.i358.3.i = add i32 %shl3.i356.3.i, -8451
  %not.cmp4.not.i359.3.i = xor i1 %cmp4.not.i357.3.i, true
  %inc.i360.3.i = zext i1 %not.cmp4.not.i359.3.i to i32
  %quotient.1.i361.3.i = or i32 %shl.i355.3.i, %inc.i360.3.i
  %remainder.1.i362.3.i = select i1 %cmp4.not.i357.3.i, i32 %remainder.1.i362.2.i, i32 %sub.i358.3.i
  %shl3.i356.4.i = shl i32 %remainder.1.i362.3.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8451, i32 %shl3.i356.4.i)
  %cmp4.not.i357.4.i = icmp ult i32 %shl3.i356.4.i, 8451
  %sub.i358.4.i = add i32 %shl3.i356.4.i, -8451
  %remainder.1.i362.4.i = select i1 %cmp4.not.i357.4.i, i32 %remainder.1.i362.3.i, i32 %sub.i358.4.i
  %133 = shl i32 %quotient.1.i361.3.i, 2
  %134 = select i1 %cmp4.not.i357.4.i, i32 0, i32 2
  %shl.i355.5.i = or i32 %134, %133
  %shl3.i356.5.i = shl i32 %remainder.1.i362.4.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8451, i32 %shl3.i356.5.i)
  %cmp4.not.i357.5.i = icmp ult i32 %shl3.i356.5.i, 8451
  %sub.i358.5.i = add i32 %shl3.i356.5.i, -8451
  %not.cmp4.not.i359.5.i = xor i1 %cmp4.not.i357.5.i, true
  %inc.i360.5.i = zext i1 %not.cmp4.not.i359.5.i to i32
  %quotient.1.i361.5.i = or i32 %shl.i355.5.i, %inc.i360.5.i
  %remainder.1.i362.5.i = select i1 %cmp4.not.i357.5.i, i32 %remainder.1.i362.4.i, i32 %sub.i358.5.i
  %shl3.i356.6.i = shl i32 %remainder.1.i362.5.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8451, i32 %shl3.i356.6.i)
  %cmp4.not.i357.6.i = icmp ult i32 %shl3.i356.6.i, 8451
  %sub.i358.6.i = add i32 %shl3.i356.6.i, -8451
  %remainder.1.i362.6.i = select i1 %cmp4.not.i357.6.i, i32 %remainder.1.i362.5.i, i32 %sub.i358.6.i
  %135 = shl i32 %quotient.1.i361.5.i, 2
  %136 = select i1 %cmp4.not.i357.6.i, i32 0, i32 2
  %shl.i355.7.i = or i32 %136, %135
  %shl3.i356.7.i = shl i32 %remainder.1.i362.6.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8451, i32 %shl3.i356.7.i)
  %cmp4.not.i357.7.i = icmp ult i32 %shl3.i356.7.i, 8451
  %sub.i358.7.i = add i32 %shl3.i356.7.i, -8451
  %not.cmp4.not.i359.7.i = xor i1 %cmp4.not.i357.7.i, true
  %inc.i360.7.i = zext i1 %not.cmp4.not.i359.7.i to i32
  %quotient.1.i361.7.i = or i32 %shl.i355.7.i, %inc.i360.7.i
  %remainder.1.i362.7.i = select i1 %cmp4.not.i357.7.i, i32 %remainder.1.i362.6.i, i32 %sub.i358.7.i
  %shl3.i356.8.i = shl i32 %remainder.1.i362.7.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8451, i32 %shl3.i356.8.i)
  %cmp4.not.i357.8.i = icmp ult i32 %shl3.i356.8.i, 8451
  %sub.i358.8.i = add i32 %shl3.i356.8.i, -8451
  %remainder.1.i362.8.i = select i1 %cmp4.not.i357.8.i, i32 %remainder.1.i362.7.i, i32 %sub.i358.8.i
  %137 = shl i32 %quotient.1.i361.7.i, 2
  %138 = select i1 %cmp4.not.i357.8.i, i32 0, i32 2
  %shl.i355.9.i = or i32 %138, %137
  %shl3.i356.9.i = shl i32 %remainder.1.i362.8.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8451, i32 %shl3.i356.9.i)
  %cmp4.not.i357.9.i = icmp ult i32 %shl3.i356.9.i, 8451
  %sub.i358.9.i = add i32 %shl3.i356.9.i, -8451
  %not.cmp4.not.i359.9.i = xor i1 %cmp4.not.i357.9.i, true
  %inc.i360.9.i = zext i1 %not.cmp4.not.i359.9.i to i32
  %quotient.1.i361.9.i = or i32 %shl.i355.9.i, %inc.i360.9.i
  %remainder.1.i362.9.i = select i1 %cmp4.not.i357.9.i, i32 %remainder.1.i362.8.i, i32 %sub.i358.9.i
  %shl3.i356.10.i = shl i32 %remainder.1.i362.9.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8451, i32 %shl3.i356.10.i)
  %cmp4.not.i357.10.i = icmp ult i32 %shl3.i356.10.i, 8451
  %sub.i358.10.i = add i32 %shl3.i356.10.i, -8451
  %remainder.1.i362.10.i = select i1 %cmp4.not.i357.10.i, i32 %remainder.1.i362.9.i, i32 %sub.i358.10.i
  %139 = shl i32 %quotient.1.i361.9.i, 2
  %140 = select i1 %cmp4.not.i357.10.i, i32 0, i32 2
  %shl.i355.11.i = or i32 %140, %139
  %shl3.i356.11.i = shl i32 %remainder.1.i362.10.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8451, i32 %shl3.i356.11.i)
  %cmp4.not.i357.11.i = icmp ult i32 %shl3.i356.11.i, 8451
  %sub.i358.11.i = add i32 %shl3.i356.11.i, -8451
  %not.cmp4.not.i359.11.i = xor i1 %cmp4.not.i357.11.i, true
  %inc.i360.11.i = zext i1 %not.cmp4.not.i359.11.i to i32
  %quotient.1.i361.11.i = or i32 %shl.i355.11.i, %inc.i360.11.i
  %remainder.1.i362.11.i = select i1 %cmp4.not.i357.11.i, i32 %remainder.1.i362.10.i, i32 %sub.i358.11.i
  %shl3.i356.12.i = shl i32 %remainder.1.i362.11.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8451, i32 %shl3.i356.12.i)
  %cmp4.not.i357.12.i = icmp ult i32 %shl3.i356.12.i, 8451
  %sub.i358.12.i = add i32 %shl3.i356.12.i, -8451
  %remainder.1.i362.12.i = select i1 %cmp4.not.i357.12.i, i32 %remainder.1.i362.11.i, i32 %sub.i358.12.i
  %141 = shl i32 %quotient.1.i361.11.i, 2
  %142 = select i1 %cmp4.not.i357.12.i, i32 0, i32 2
  %shl.i355.13.i = or i32 %142, %141
  %shl3.i356.13.i = shl i32 %remainder.1.i362.12.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8451, i32 %shl3.i356.13.i)
  %cmp4.not.i357.13.i = icmp ult i32 %shl3.i356.13.i, 8451
  %sub.i358.13.i = add i32 %shl3.i356.13.i, -8451
  %not.cmp4.not.i359.13.i = xor i1 %cmp4.not.i357.13.i, true
  %inc.i360.13.i = zext i1 %not.cmp4.not.i359.13.i to i32
  %quotient.1.i361.13.i = or i32 %shl.i355.13.i, %inc.i360.13.i
  %remainder.1.i362.13.i = select i1 %cmp4.not.i357.13.i, i32 %remainder.1.i362.12.i, i32 %sub.i358.13.i
  %shl3.i356.14.i = shl i32 %remainder.1.i362.13.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8451, i32 %shl3.i356.14.i)
  %cmp4.not.i357.14.i = icmp ult i32 %shl3.i356.14.i, 8451
  %sub.i358.14.i = add i32 %shl3.i356.14.i, -8451
  %remainder.1.i362.14.i = select i1 %cmp4.not.i357.14.i, i32 %remainder.1.i362.13.i, i32 %sub.i358.14.i
  %143 = shl i32 %quotient.1.i361.13.i, 2
  %144 = select i1 %cmp4.not.i357.14.i, i32 0, i32 2
  %shl.i355.15.i = or i32 %144, %143
  %shl3.i356.15.i = shl i32 %remainder.1.i362.14.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8451, i32 %shl3.i356.15.i)
  %cmp4.not.i357.15.i = icmp ult i32 %shl3.i356.15.i, 8451
  %sub.i358.15.i = add i32 %shl3.i356.15.i, 2147475197
  %not.cmp4.not.i359.15.i = xor i1 %cmp4.not.i357.15.i, true
  %inc.i360.15.i = zext i1 %not.cmp4.not.i359.15.i to i32
  %quotient.1.i361.15.i = or i32 %shl.i355.15.i, %inc.i360.15.i
  %remainder.1.i362.15.i = select i1 %cmp4.not.i357.15.i, i32 %remainder.1.i362.14.i, i32 %sub.i358.15.i
  %add130.i = add nuw nsw i32 %div129.i, 27
  %shl9.i366.i = shl i32 %remainder.1.i362.15.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8450, i32 %shl9.i366.i)
  %cmp10.not.i367.i = icmp ugt i32 %shl9.i366.i, 8450
  %inc13.i368.i = zext i1 %cmp10.not.i367.i to i32
  %spec.select.i369.i = add i32 %quotient.1.i361.15.i, %inc13.i368.i
  %add133.i = add i32 %spec.select.i369.i, %add130.i
  %sub134.i = add i32 %add133.i, -1
  %div135.i = udiv i32 %sub134.i, %add130.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %div135.i)
  %cmp136.i = icmp ugt i32 %div135.i, 60
  br i1 %cmp136.i, label %if.then138.i, label %if.else143.i

if.then138.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl140.i = shl nuw nsw i32 %add130.i, 1
  %div141.i = udiv i32 %add133.i, %shl140.i
  br label %if.end148.i

if.else143.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr144.i = lshr i32 %add130.i, 1
  %add145.i = add i32 %spec.select.i369.i, %shr144.i
  %div146.i = udiv i32 %add145.i, %add130.i
  br label %if.end148.i

if.end148.i:                                      ; preds = %if.else143.i, %if.then138.i
  %scale.0.i = phi i32 [ 1, %if.then138.i ], [ 0, %if.else143.i ]
  %tmp5.0.in.i = phi i32 [ %div141.i, %if.then138.i ], [ %div146.i, %if.else143.i ]
  %tmp5.0.i = add nsw i32 %tmp5.0.in.i, -8
  %conv149.i = trunc i32 %tmp5.0.i to i16
  tail call void @b43_radio_maskset(ptr noundef %dev, i16 noundef zeroext 104, i16 noundef zeroext -64, i16 noundef zeroext %conv149.i) #8
  %scale.0.tr.i = trunc i32 %scale.0.i to i16
  %conv152.i = shl nuw nsw i16 %scale.0.tr.i, 6
  tail call void @b43_radio_maskset(ptr noundef %dev, i16 noundef zeroext 104, i16 noundef zeroext -65, i16 noundef zeroext %conv152.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i326.i)
  %cmp.i373.i = icmp eq i32 %spec.select.i326.i, 0
  br i1 %cmp.i373.i, label %if.end148.i.lpphy_qdiv_roundup.exit397.i_crit_edge, label %if.end.i376.i

if.end148.i.lpphy_qdiv_roundup.exit397.i_crit_edge: ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpphy_qdiv_roundup.exit397.i

if.end.i376.i:                                    ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul153.i = mul i32 %spec.select.i.i, 100
  %mul153.i.frozen = freeze i32 %mul153.i
  %spec.select.i326.i.frozen84 = freeze i32 %spec.select.i326.i
  %div.i374.i = udiv i32 %mul153.i.frozen, %spec.select.i326.i.frozen84
  %145 = mul i32 %div.i374.i, %spec.select.i326.i.frozen84
  %rem.i375.i.decomposed = sub i32 %mul153.i.frozen, %145
  %shl3.i381.i = shl i32 %rem.i375.i.decomposed, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i381.i, i32 %spec.select.i326.i)
  %cmp4.not.i382.i = icmp ult i32 %shl3.i381.i, %spec.select.i326.i
  %sub.i383.i = sub i32 %shl3.i381.i, %spec.select.i326.i
  %remainder.1.i387.i = select i1 %cmp4.not.i382.i, i32 %rem.i375.i.decomposed, i32 %sub.i383.i
  %146 = shl i32 %div.i374.i, 2
  %147 = select i1 %cmp4.not.i382.i, i32 0, i32 2
  %shl.i380.1.i = or i32 %147, %146
  %shl3.i381.1.i = shl i32 %remainder.1.i387.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i381.1.i, i32 %spec.select.i326.i)
  %cmp4.not.i382.1.i = icmp ult i32 %shl3.i381.1.i, %spec.select.i326.i
  %sub.i383.1.i = sub i32 %shl3.i381.1.i, %spec.select.i326.i
  %not.cmp4.not.i384.1.i = xor i1 %cmp4.not.i382.1.i, true
  %inc.i385.1.i = zext i1 %not.cmp4.not.i384.1.i to i32
  %quotient.1.i386.1.i = or i32 %shl.i380.1.i, %inc.i385.1.i
  %remainder.1.i387.1.i = select i1 %cmp4.not.i382.1.i, i32 %remainder.1.i387.i, i32 %sub.i383.1.i
  %shl3.i381.2.i = shl i32 %remainder.1.i387.1.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i381.2.i, i32 %spec.select.i326.i)
  %cmp4.not.i382.2.i = icmp ult i32 %shl3.i381.2.i, %spec.select.i326.i
  %sub.i383.2.i = sub i32 %shl3.i381.2.i, %spec.select.i326.i
  %remainder.1.i387.2.i = select i1 %cmp4.not.i382.2.i, i32 %remainder.1.i387.1.i, i32 %sub.i383.2.i
  %148 = shl i32 %quotient.1.i386.1.i, 2
  %149 = select i1 %cmp4.not.i382.2.i, i32 0, i32 2
  %shl.i380.3.i = or i32 %149, %148
  %shl3.i381.3.i = shl i32 %remainder.1.i387.2.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i381.3.i, i32 %spec.select.i326.i)
  %cmp4.not.i382.3.i = icmp ult i32 %shl3.i381.3.i, %spec.select.i326.i
  %sub.i383.3.i = sub i32 %shl3.i381.3.i, %spec.select.i326.i
  %not.cmp4.not.i384.3.i = xor i1 %cmp4.not.i382.3.i, true
  %inc.i385.3.i = zext i1 %not.cmp4.not.i384.3.i to i32
  %quotient.1.i386.3.i = or i32 %shl.i380.3.i, %inc.i385.3.i
  %remainder.1.i387.3.i = select i1 %cmp4.not.i382.3.i, i32 %remainder.1.i387.2.i, i32 %sub.i383.3.i
  %shl3.i381.4.i = shl i32 %remainder.1.i387.3.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i381.4.i, i32 %spec.select.i326.i)
  %cmp4.not.i382.4.i = icmp ult i32 %shl3.i381.4.i, %spec.select.i326.i
  %sub.i383.4.i = sub i32 %shl3.i381.4.i, %spec.select.i326.i
  %remainder.1.i387.4.i = select i1 %cmp4.not.i382.4.i, i32 %remainder.1.i387.3.i, i32 %sub.i383.4.i
  %150 = shl i32 %quotient.1.i386.3.i, 2
  %151 = select i1 %cmp4.not.i382.4.i, i32 0, i32 2
  %shl.i380.5.i = or i32 %151, %150
  %shl3.i381.5.i = shl i32 %remainder.1.i387.4.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i381.5.i, i32 %spec.select.i326.i)
  %cmp4.not.i382.5.i = icmp ult i32 %shl3.i381.5.i, %spec.select.i326.i
  %sub.i383.5.i = sub i32 %shl3.i381.5.i, %spec.select.i326.i
  %not.cmp4.not.i384.5.i = xor i1 %cmp4.not.i382.5.i, true
  %inc.i385.5.i = zext i1 %not.cmp4.not.i384.5.i to i32
  %quotient.1.i386.5.i = or i32 %shl.i380.5.i, %inc.i385.5.i
  %remainder.1.i387.5.i = select i1 %cmp4.not.i382.5.i, i32 %remainder.1.i387.4.i, i32 %sub.i383.5.i
  %shl3.i381.6.i = shl i32 %remainder.1.i387.5.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i381.6.i, i32 %spec.select.i326.i)
  %cmp4.not.i382.6.i = icmp ult i32 %shl3.i381.6.i, %spec.select.i326.i
  %sub.i383.6.i = sub i32 %shl3.i381.6.i, %spec.select.i326.i
  %remainder.1.i387.6.i = select i1 %cmp4.not.i382.6.i, i32 %remainder.1.i387.5.i, i32 %sub.i383.6.i
  %152 = shl i32 %quotient.1.i386.5.i, 2
  %153 = select i1 %cmp4.not.i382.6.i, i32 0, i32 2
  %shl.i380.7.i = or i32 %153, %152
  %shl3.i381.7.i = shl i32 %remainder.1.i387.6.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i381.7.i, i32 %spec.select.i326.i)
  %cmp4.not.i382.7.i = icmp ult i32 %shl3.i381.7.i, %spec.select.i326.i
  %sub.i383.7.i = sub i32 %shl3.i381.7.i, %spec.select.i326.i
  %not.cmp4.not.i384.7.i = xor i1 %cmp4.not.i382.7.i, true
  %inc.i385.7.i = zext i1 %not.cmp4.not.i384.7.i to i32
  %quotient.1.i386.7.i = or i32 %shl.i380.7.i, %inc.i385.7.i
  %remainder.1.i387.7.i = select i1 %cmp4.not.i382.7.i, i32 %remainder.1.i387.6.i, i32 %sub.i383.7.i
  %shl3.i381.8.i = shl i32 %remainder.1.i387.7.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i381.8.i, i32 %spec.select.i326.i)
  %cmp4.not.i382.8.i = icmp ult i32 %shl3.i381.8.i, %spec.select.i326.i
  %sub.i383.8.i = sub i32 %shl3.i381.8.i, %spec.select.i326.i
  %remainder.1.i387.8.i = select i1 %cmp4.not.i382.8.i, i32 %remainder.1.i387.7.i, i32 %sub.i383.8.i
  %154 = shl i32 %quotient.1.i386.7.i, 2
  %155 = select i1 %cmp4.not.i382.8.i, i32 0, i32 2
  %shl.i380.9.i = or i32 %155, %154
  %shl3.i381.9.i = shl i32 %remainder.1.i387.8.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i381.9.i, i32 %spec.select.i326.i)
  %cmp4.not.i382.9.i = icmp ult i32 %shl3.i381.9.i, %spec.select.i326.i
  %sub.i383.9.i = sub i32 %shl3.i381.9.i, %spec.select.i326.i
  %not.cmp4.not.i384.9.i = xor i1 %cmp4.not.i382.9.i, true
  %inc.i385.9.i = zext i1 %not.cmp4.not.i384.9.i to i32
  %quotient.1.i386.9.i = or i32 %shl.i380.9.i, %inc.i385.9.i
  %remainder.1.i387.9.i = select i1 %cmp4.not.i382.9.i, i32 %remainder.1.i387.8.i, i32 %sub.i383.9.i
  %shl3.i381.10.i = shl i32 %remainder.1.i387.9.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i381.10.i, i32 %spec.select.i326.i)
  %cmp4.not.i382.10.i = icmp ult i32 %shl3.i381.10.i, %spec.select.i326.i
  %sub.i383.10.i = sub i32 %shl3.i381.10.i, %spec.select.i326.i
  %remainder.1.i387.10.i = select i1 %cmp4.not.i382.10.i, i32 %remainder.1.i387.9.i, i32 %sub.i383.10.i
  %156 = shl i32 %quotient.1.i386.9.i, 2
  %157 = select i1 %cmp4.not.i382.10.i, i32 0, i32 2
  %shl.i380.11.i = or i32 %157, %156
  %shl3.i381.11.i = shl i32 %remainder.1.i387.10.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i381.11.i, i32 %spec.select.i326.i)
  %cmp4.not.i382.11.i = icmp ult i32 %shl3.i381.11.i, %spec.select.i326.i
  %sub.i383.11.i = sub i32 %shl3.i381.11.i, %spec.select.i326.i
  %not.cmp4.not.i384.11.i = xor i1 %cmp4.not.i382.11.i, true
  %inc.i385.11.i = zext i1 %not.cmp4.not.i384.11.i to i32
  %quotient.1.i386.11.i = or i32 %shl.i380.11.i, %inc.i385.11.i
  %remainder.1.i387.11.i = select i1 %cmp4.not.i382.11.i, i32 %remainder.1.i387.10.i, i32 %sub.i383.11.i
  %shl3.i381.12.i = shl i32 %remainder.1.i387.11.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i381.12.i, i32 %spec.select.i326.i)
  %cmp4.not.i382.12.i = icmp ult i32 %shl3.i381.12.i, %spec.select.i326.i
  %sub.i383.12.i = sub i32 %shl3.i381.12.i, %spec.select.i326.i
  %remainder.1.i387.12.i = select i1 %cmp4.not.i382.12.i, i32 %remainder.1.i387.11.i, i32 %sub.i383.12.i
  %158 = shl i32 %quotient.1.i386.11.i, 2
  %159 = select i1 %cmp4.not.i382.12.i, i32 0, i32 2
  %shl.i380.13.i = or i32 %159, %158
  %shl3.i381.13.i = shl i32 %remainder.1.i387.12.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i381.13.i, i32 %spec.select.i326.i)
  %cmp4.not.i382.13.i = icmp ult i32 %shl3.i381.13.i, %spec.select.i326.i
  %sub.i383.13.i = sub i32 %shl3.i381.13.i, %spec.select.i326.i
  %not.cmp4.not.i384.13.i = xor i1 %cmp4.not.i382.13.i, true
  %inc.i385.13.i = zext i1 %not.cmp4.not.i384.13.i to i32
  %quotient.1.i386.13.i = or i32 %shl.i380.13.i, %inc.i385.13.i
  %remainder.1.i387.13.i = select i1 %cmp4.not.i382.13.i, i32 %remainder.1.i387.12.i, i32 %sub.i383.13.i
  %shl3.i381.14.i = shl i32 %remainder.1.i387.13.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i381.14.i, i32 %spec.select.i326.i)
  %cmp4.not.i382.14.i = icmp ult i32 %shl3.i381.14.i, %spec.select.i326.i
  %sub.i383.14.i = sub i32 %shl3.i381.14.i, %spec.select.i326.i
  %remainder.1.i387.14.i = select i1 %cmp4.not.i382.14.i, i32 %remainder.1.i387.13.i, i32 %sub.i383.14.i
  %160 = shl i32 %quotient.1.i386.13.i, 2
  %161 = select i1 %cmp4.not.i382.14.i, i32 0, i32 2
  %shl.i380.15.i = or i32 %161, %160
  %shl3.i381.15.i = shl i32 %remainder.1.i387.14.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i381.15.i, i32 %spec.select.i326.i)
  %cmp4.not.i382.15.i = icmp ult i32 %shl3.i381.15.i, %spec.select.i326.i
  %sub.i383.15.i = sub i32 %shl3.i381.15.i, %spec.select.i326.i
  %not.cmp4.not.i384.15.i = xor i1 %cmp4.not.i382.15.i, true
  %inc.i385.15.i = zext i1 %not.cmp4.not.i384.15.i to i32
  %quotient.1.i386.15.i = or i32 %shl.i380.15.i, %inc.i385.15.i
  %remainder.1.i387.15.i = select i1 %cmp4.not.i382.15.i, i32 %remainder.1.i387.14.i, i32 %sub.i383.15.i
  %shl9.i391.i = shl i32 %remainder.1.i387.15.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl9.i391.i, i32 %spec.select.i326.i)
  %cmp10.not.i392.i = icmp uge i32 %shl9.i391.i, %spec.select.i326.i
  %inc13.i393.i = zext i1 %cmp10.not.i392.i to i32
  %spec.select.i394.i = add i32 %quotient.1.i386.15.i, %inc13.i393.i
  br label %lpphy_qdiv_roundup.exit397.i

lpphy_qdiv_roundup.exit397.i:                     ; preds = %if.end.i376.i, %if.end148.i.lpphy_qdiv_roundup.exit397.i_crit_edge
  %retval.0.i396.i = phi i32 [ %spec.select.i394.i, %if.end.i376.i ], [ 0, %if.end148.i.lpphy_qdiv_roundup.exit397.i_crit_edge ]
  %add157.i = shl nuw nsw i32 %scale.0.i, 3
  %mul155.i = add nuw nsw i32 %add157.i, 8
  %mul158.i = mul i32 %mul155.i, %tmp5.0.i
  %mul159.i = mul i32 %mul158.i, %retval.0.i396.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 150, i32 %mul159.i)
  %cmp160.i = icmp ugt i32 %mul159.i, 150
  %162 = trunc i32 %mul159.i to i16
  %conv164.i = select i1 %cmp160.i, i16 0, i16 %162
  tail call void @b43_radio_maskset(ptr noundef %dev, i16 noundef zeroext 105, i16 noundef zeroext -32, i16 noundef zeroext %conv164.i) #8
  %conv167.i = shl nuw nsw i16 %scale.0.tr.i, 5
  tail call void @b43_radio_maskset(ptr noundef %dev, i16 noundef zeroext 105, i16 noundef zeroext -33, i16 noundef zeroext %conv167.i) #8
  tail call void @b43_radio_maskset(ptr noundef %dev, i16 noundef zeroext 129, i16 noundef zeroext -5, i16 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 26000000, i32 %mul.i)
  %cmp168.i = icmp ugt i32 %mul.i, 26000000
  br i1 %cmp168.i, label %if.then170.i, label %if.else171.i

if.then170.i:                                     ; preds = %lpphy_qdiv_roundup.exit397.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_radio_set(ptr noundef %dev, i16 noundef zeroext 129, i16 noundef zeroext 2) #8
  br label %if.end172.i

if.else171.i:                                     ; preds = %lpphy_qdiv_roundup.exit397.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_radio_mask(ptr noundef %dev, i16 noundef zeroext 129, i16 noundef zeroext 253) #8
  br label %if.end172.i

if.end172.i:                                      ; preds = %if.else171.i, %if.then170.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 45, i32 %spec.select.i.i)
  %cmp173.i = icmp eq i32 %spec.select.i.i, 45
  br i1 %cmp173.i, label %if.then175.i, label %if.else176.i

if.then175.i:                                     ; preds = %if.end172.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_radio_set(ptr noundef %dev, i16 noundef zeroext 117, i16 noundef zeroext 2) #8
  br label %lpphy_b2063_tune.exit.thread

if.else176.i:                                     ; preds = %if.end172.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_radio_mask(ptr noundef %dev, i16 noundef zeroext 117, i16 noundef zeroext 253) #8
  br label %lpphy_b2063_tune.exit.thread

lpphy_b2063_tune.exit.thread:                     ; preds = %if.else176.i, %if.then175.i
  tail call void @b43_radio_set(ptr noundef %dev, i16 noundef zeroext 27, i16 noundef zeroext 3) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %163 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %163(i32 noundef 214748) #8
  tail call void @b43_radio_mask(ptr noundef %dev, i16 noundef zeroext 27, i16 noundef zeroext -4) #8
  tail call void @b43_radio_mask(ptr noundef %dev, i16 noundef zeroext 26, i16 noundef zeroext -65) #8
  %call.i.i = tail call zeroext i16 @b43_radio_read(ptr noundef %dev, i16 noundef zeroext 100) #8
  %164 = and i16 %call.i.i, 248
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 100, i16 noundef zeroext %164) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %165 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %165(i32 noundef 214748) #8
  %or.i.i = or i16 %164, 4
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 100, i16 noundef zeroext %or.i.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %166 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %166(i32 noundef 214748) #8
  %or5.i.i = or i16 %164, 6
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 100, i16 noundef zeroext %or5.i.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %167 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %167(i32 noundef 214748) #8
  %168 = or i16 %164, 7
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 100, i16 noundef zeroext %168) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %169 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %169(i32 noundef 64424400) #8
  tail call void @b43_radio_set(ptr noundef %dev, i16 noundef zeroext 26, i16 noundef zeroext 64) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 15, i16 noundef zeroext %call.i) #8
  %.pre = trunc i32 %new_channel to i8
  br label %if.end11

lpphy_b2063_tune.exit:                            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2496, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

for.body.i34:                                     ; preds = %for.inc.i.for.body.i34_crit_edge, %entry.for.body.i34_crit_edge
  %i.0240.i = phi i32 [ %inc.i35, %for.inc.i.for.body.i34_crit_edge ], [ 0, %entry.for.body.i34_crit_edge ]
  %arrayidx.i32 = getelementptr [51 x %struct.b206x_channel], ptr @b2062_chantbl, i32 0, i32 %i.0240.i
  %170 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %arrayidx.i32, align 2
  %conv.i33 = zext i8 %171 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i33, i32 %new_channel)
  %cmp4.i = icmp eq i32 %conv.i33, %new_channel
  br i1 %cmp4.i, label %for.end.i38, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i34
  %inc.i35 = add nuw nsw i32 %i.0240.i, 1
  %exitcond.not.i36 = icmp eq i32 %inc.i35, 51
  br i1 %exitcond.not.i36, label %for.inc.i.lpphy_b2062_tune.exit.thread_crit_edge, label %for.inc.i.for.body.i34_crit_edge

for.inc.i.for.body.i34_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i34

for.inc.i.lpphy_b2062_tune.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpphy_b2062_tune.exit.thread

for.end.i38:                                      ; preds = %for.body.i34
  %tobool.not.i37 = icmp eq ptr %arrayidx.i32, null
  br i1 %tobool.not.i37, label %for.end.i38.lpphy_b2062_tune.exit.thread_crit_edge, label %if.end31.i, !prof !47

for.end.i38.lpphy_b2062_tune.exit.thread_crit_edge: ; preds = %for.end.i38
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpphy_b2062_tune.exit.thread

lpphy_b2062_tune.exit.thread:                     ; preds = %for.end.i38.lpphy_b2062_tune.exit.thread_crit_edge, %for.inc.i.lpphy_b2062_tune.exit.thread_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2403, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end31.i:                                       ; preds = %for.end.i38
  tail call void @b43_radio_set(ptr noundef %dev, i16 noundef zeroext 16450, i16 noundef zeroext 4) #8
  %data.i40 = getelementptr [51 x %struct.b206x_channel], ptr @b2062_chantbl, i32 0, i32 %i.0240.i, i32 2
  %172 = ptrtoint ptr %data.i40 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %data.i40, align 2
  %conv33.i = zext i8 %173 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 30, i16 noundef zeroext %conv33.i) #8
  %arrayidx35.i = getelementptr [51 x %struct.b206x_channel], ptr @b2062_chantbl, i32 0, i32 %i.0240.i, i32 2, i32 1
  %174 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx35.i, align 1
  %conv36.i = zext i8 %175 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 32, i16 noundef zeroext %conv36.i) #8
  %arrayidx38.i = getelementptr [51 x %struct.b206x_channel], ptr @b2062_chantbl, i32 0, i32 %i.0240.i, i32 2, i32 2
  %176 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %arrayidx38.i, align 2
  %conv39.i = zext i8 %177 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 33, i16 noundef zeroext %conv39.i) #8
  %arrayidx41.i = getelementptr [51 x %struct.b206x_channel], ptr @b2062_chantbl, i32 0, i32 %i.0240.i, i32 2, i32 3
  %178 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %arrayidx41.i, align 1
  %conv42.i = zext i8 %179 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 82, i16 noundef zeroext %conv42.i) #8
  %arrayidx44.i = getelementptr [51 x %struct.b206x_channel], ptr @b2062_chantbl, i32 0, i32 %i.0240.i, i32 2, i32 4
  %180 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %arrayidx44.i, align 2
  %conv45.i = zext i8 %181 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 16408, i16 noundef zeroext %conv45.i) #8
  %arrayidx47.i = getelementptr [51 x %struct.b206x_channel], ptr @b2062_chantbl, i32 0, i32 %i.0240.i, i32 2, i32 5
  %182 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx47.i, align 1
  %conv48.i = zext i8 %183 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 36, i16 noundef zeroext %conv48.i) #8
  %arrayidx50.i = getelementptr [51 x %struct.b206x_channel], ptr @b2062_chantbl, i32 0, i32 %i.0240.i, i32 2, i32 6
  %184 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx50.i, align 2
  %conv51.i = zext i8 %185 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 37, i16 noundef zeroext %conv51.i) #8
  %arrayidx53.i = getelementptr [51 x %struct.b206x_channel], ptr @b2062_chantbl, i32 0, i32 %i.0240.i, i32 2, i32 7
  %186 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %arrayidx53.i, align 1
  %conv54.i = zext i8 %187 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 84, i16 noundef zeroext %conv54.i) #8
  %arrayidx56.i = getelementptr [51 x %struct.b206x_channel], ptr @b2062_chantbl, i32 0, i32 %i.0240.i, i32 2, i32 8
  %188 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %arrayidx56.i, align 2
  %conv57.i = zext i8 %189 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 83, i16 noundef zeroext %conv57.i) #8
  %div.i = udiv i32 %mul.i, 1000
  %pdiv.i = getelementptr inbounds %struct.b43_phy_lp, ptr %1, i32 0, i32 30
  %190 = ptrtoint ptr %pdiv.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %pdiv.i, align 4
  %mul58.i = mul i32 %191, 1000
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 16469, i16 noundef zeroext 204) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 16470, i16 noundef zeroext 7) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 16438, i16 noundef zeroext 255) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %192 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %192(i32 noundef 4294960) #8
  %193 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %dev, align 4
  %chip_id.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %194, i32 0, i32 20
  %195 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %chip_id.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21332, i16 %196)
  %cmp.i.i41 = icmp eq i16 %196, 21332
  br i1 %cmp.i.i41, label %if.then.i.i, label %if.end31.i.lpphy_b2062_reset_pll_bias.exit.i_crit_edge

if.end31.i.lpphy_b2062_reset_pll_bias.exit.i_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpphy_b2062_reset_pll_bias.exit.i

if.then.i.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 0, i16 noundef zeroext 4) #8
  br label %lpphy_b2062_reset_pll_bias.exit.i

lpphy_b2062_reset_pll_bias.exit.i:                ; preds = %if.then.i.i, %if.end31.i.lpphy_b2062_reset_pll_bias.exit.i_crit_edge
  %.sink.i.i = phi i16 [ 4, %if.then.i.i ], [ 0, %if.end31.i.lpphy_b2062_reset_pll_bias.exit.i_crit_edge ]
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 16438, i16 noundef zeroext %.sink.i.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %197 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %197(i32 noundef 1073740) #8
  %conv59.i = trunc i32 %new_channel to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %conv59.i)
  %cmp.i195.i = icmp ult i8 %conv59.i, 14
  br i1 %cmp.i195.i, label %if.then.i201.i, label %if.else.i.i

if.else.i.i:                                      ; preds = %lpphy_b2062_reset_pll_bias.exit.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %conv59.i)
  %cmp5.i.i = icmp eq i8 %conv59.i, 14
  br i1 %cmp5.i.i, label %if.else.i203.i, label %if.else8.i.i

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -72, i8 %conv59.i)
  %cmp10.i.i = icmp ult i8 %conv59.i, -72
  %198 = and i32 %new_channel, 255
  %199 = mul nuw nsw i32 %198, 5
  %conv60220225230.pn.in.v.i = select i1 %cmp10.i.i, i32 5000, i32 4000
  %conv60220225230.pn.in.i = add nuw nsw i32 %conv60220225230.pn.in.v.i, %199
  %mul61222.i = mul i32 %mul58.i, %conv60220225230.pn.in.i
  br label %201

if.then.i201.i:                                   ; preds = %lpphy_b2062_reset_pll_bias.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i = and i32 %new_channel, 255
  %mul.i.i = mul nuw nsw i32 %conv.i.i, 5
  %add.i.i = add nuw nsw i32 %mul.i.i, 2407
  %mul61.i = mul i32 %mul58.i, %add.i.i
  br label %200

if.else.i203.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul61221.i = mul i32 %191, 2484000
  br label %200

200:                                              ; preds = %if.else.i203.i, %if.then.i201.i
  %mul61222.ph.i = phi i32 [ %mul61221.i, %if.else.i203.i ], [ %mul61.i, %if.then.i201.i ]
  %mul68237.i = shl i32 %mul61222.ph.i, 1
  br label %201

201:                                              ; preds = %200, %if.else8.i.i
  %202 = phi i32 [ %mul68237.i, %200 ], [ %mul61222.i, %if.else8.i.i ]
  %mul70.i = mul nuw nsw i32 %div.i, 48
  %.frozen = freeze i32 %202
  %mul70.i.frozen = freeze i32 %mul70.i
  %div71.i = udiv i32 %.frozen, %mul70.i.frozen
  %203 = mul i32 %div71.i, %mul70.i.frozen
  %rem.i42.decomposed = sub i32 %.frozen, %203
  %conv72.i = trunc i32 %div71.i to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 16462, i16 noundef zeroext %conv72.i) #8
  %mul73.i = shl i32 %rem.i42.decomposed, 8
  %mul70.i.frozen85 = freeze i32 %mul70.i
  %div74.i = udiv i32 %mul73.i, %mul70.i.frozen85
  %204 = mul i32 %div74.i, %mul70.i.frozen85
  %rem75.i.decomposed = sub i32 %mul73.i, %204
  %conv76.i = trunc i32 %div74.i to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 16463, i16 noundef zeroext %conv76.i) #8
  %mul77.i = shl i32 %rem75.i.decomposed, 8
  %mul77.i.frozen = freeze i32 %mul77.i
  %mul70.i.frozen86 = freeze i32 %mul70.i
  %div78.i = udiv i32 %mul77.i.frozen, %mul70.i.frozen86
  %205 = mul i32 %div78.i, %mul70.i.frozen86
  %rem79.i.decomposed = sub i32 %mul77.i.frozen, %205
  %conv80.i = trunc i32 %div78.i to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 16464, i16 noundef zeroext %conv80.i) #8
  %mul81.i = shl i32 %rem79.i.decomposed, 8
  %mul70.i.frozen87 = freeze i32 %mul70.i
  %div82.i = udiv i32 %mul81.i, %mul70.i.frozen87
  %206 = mul i32 %div82.i, %mul70.i.frozen87
  %rem83.i.decomposed = sub i32 %mul81.i, %206
  %mul84.i43 = shl nuw nsw i32 %rem83.i.decomposed, 1
  %div85.i44 = udiv i32 %mul84.i43, %mul70.i
  %add.i45 = add i32 %div85.i44, %div82.i
  %conv86.i = trunc i32 %add.i45 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 16465, i16 noundef zeroext %conv86.i) #8
  %call87.i = tail call zeroext i16 @b43_radio_read(ptr noundef %dev, i16 noundef zeroext 16455) #8
  %conv88.i = zext i16 %call87.i to i32
  %mul89.i = shl i32 %202, 1
  %add90.i = add nuw nsw i32 %conv88.i, 1
  %mul91.i = mul i32 %mul89.i, %add90.i
  %mul92.i46 = mul nuw nsw i32 %div.i, 3
  %add93.i = add i32 %mul91.i, %mul92.i46
  %mul94.i = mul nuw nsw i32 %div.i, 6
  %div95.i47 = udiv i32 %add93.i, %mul94.i
  %shr.i48 = lshr i32 %div95.i47, 8
  %207 = trunc i32 %shr.i48 to i16
  %conv97.i49 = add i16 %207, 16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 16459, i16 noundef zeroext %conv97.i49) #8
  %208 = trunc i32 %div95.i47 to i16
  %conv98.i = and i16 %208, 255
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 16460, i16 noundef zeroext %conv98.i) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 16457, i16 noundef zeroext 66) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 16457, i16 noundef zeroext 98) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %209 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %209(i32 noundef 42949600) #8
  %call99.i = tail call zeroext i16 @b43_radio_read(ptr noundef %dev, i16 noundef zeroext 16439) #8
  %210 = and i16 %call99.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %210)
  %tobool102.not.i = icmp eq i16 %210, 0
  br i1 %tobool102.not.i, label %.if.end7_crit_edge, label %if.then103.i

.if.end7_crit_edge:                               ; preds = %201
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then103.i:                                     ; preds = %201
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 16469, i16 noundef zeroext 252) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 16470, i16 noundef zeroext 0) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 16438, i16 noundef zeroext 255) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %211 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %211(i32 noundef 4294960) #8
  %212 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %dev, align 4
  %chip_id.i212.i = getelementptr inbounds %struct.b43_bus_dev, ptr %213, i32 0, i32 20
  %214 = ptrtoint ptr %chip_id.i212.i to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %chip_id.i212.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21332, i16 %215)
  %cmp.i213.i = icmp eq i16 %215, 21332
  br i1 %cmp.i213.i, label %if.then.i214.i, label %if.then103.i.lpphy_b2062_reset_pll_bias.exit216.i_crit_edge

if.then103.i.lpphy_b2062_reset_pll_bias.exit216.i_crit_edge: ; preds = %if.then103.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpphy_b2062_reset_pll_bias.exit216.i

if.then.i214.i:                                   ; preds = %if.then103.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 0, i16 noundef zeroext 4) #8
  br label %lpphy_b2062_reset_pll_bias.exit216.i

lpphy_b2062_reset_pll_bias.exit216.i:             ; preds = %if.then.i214.i, %if.then103.i.lpphy_b2062_reset_pll_bias.exit216.i_crit_edge
  %.sink.i215.i = phi i16 [ 4, %if.then.i214.i ], [ 0, %if.then103.i.lpphy_b2062_reset_pll_bias.exit216.i_crit_edge ]
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 16438, i16 noundef zeroext %.sink.i215.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %216 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %216(i32 noundef 1073740) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 16457, i16 noundef zeroext 66) #8
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 16457, i16 noundef zeroext 98) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %217 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %217(i32 noundef 42949600) #8
  %call104.i = tail call zeroext i16 @b43_radio_read(ptr noundef %dev, i16 noundef zeroext 16439) #8
  %218 = and i16 %call104.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %218)
  %tobool107.not.i = icmp eq i16 %218, 0
  br i1 %tobool107.not.i, label %lpphy_b2062_reset_pll_bias.exit216.i.if.end7_crit_edge, label %lpphy_b2062_tune.exit

lpphy_b2062_reset_pll_bias.exit216.i.if.end7_crit_edge: ; preds = %lpphy_b2062_reset_pll_bias.exit216.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

lpphy_b2062_tune.exit:                            ; preds = %lpphy_b2062_reset_pll_bias.exit216.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_radio_mask(ptr noundef %dev, i16 noundef zeroext 16450, i16 noundef zeroext -5) #8
  br label %cleanup

if.end7:                                          ; preds = %lpphy_b2062_reset_pll_bias.exit216.i.if.end7_crit_edge, %.if.end7_crit_edge
  tail call void @b43_radio_mask(ptr noundef %dev, i16 noundef zeroext 16450, i16 noundef zeroext -5) #8
  tail call fastcc void @lpphy_set_analog_filter(ptr noundef %dev, i32 noundef %new_channel)
  br i1 %cmp.i195.i, label %if.then.i55, label %if.else.i

if.then.i55:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %219 = trunc i32 %new_channel to i16
  %conv.i52 = and i16 %219, 255
  %mul.i53 = mul nuw nsw i16 %conv.i52, 5
  %add.i54 = add nuw nsw i16 %mul.i53, 2407
  br label %channel2freq_lp.exit

if.else.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %conv59.i)
  %cmp5.i56 = icmp eq i8 %conv59.i, 14
  br i1 %cmp5.i56, label %if.else.i.channel2freq_lp.exit_crit_edge, label %if.else8.i

if.else.i.channel2freq_lp.exit_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %channel2freq_lp.exit

if.else8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -72, i8 %conv59.i)
  %cmp10.i = icmp ult i8 %conv59.i, -72
  %220 = trunc i32 %new_channel to i16
  %221 = and i16 %220, 255
  %222 = mul nuw nsw i16 %221, 5
  br i1 %cmp10.i, label %if.then12.i, label %if.else17.i

if.then12.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv16.i = add nuw nsw i16 %222, 5000
  br label %channel2freq_lp.exit

if.else17.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv21.i = add nuw nsw i16 %222, 4000
  br label %channel2freq_lp.exit

channel2freq_lp.exit:                             ; preds = %if.else17.i, %if.then12.i, %if.else.i.channel2freq_lp.exit_crit_edge, %if.then.i55
  %retval.0.i57 = phi i16 [ %add.i54, %if.then.i55 ], [ %conv16.i, %if.then12.i ], [ %conv21.i, %if.else17.i ], [ 2484, %if.else.i.channel2freq_lp.exit_crit_edge ]
  %conv10 = zext i16 %retval.0.i57 to i32
  tail call fastcc void @lpphy_adjust_gain_table(ptr noundef %dev, i32 noundef %conv10)
  br label %if.end11

if.end11:                                         ; preds = %channel2freq_lp.exit, %lpphy_b2063_tune.exit.thread
  %conv12.pre-phi = phi i8 [ %.pre, %lpphy_b2063_tune.exit.thread ], [ %conv59.i, %channel2freq_lp.exit ]
  %channel = getelementptr inbounds %struct.b43_phy_lp, ptr %1, i32 0, i32 31
  %223 = ptrtoint ptr %channel to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %conv12.pre-phi, ptr %channel, align 4
  %conv13 = trunc i32 %new_channel to i16
  %224 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %dev, align 4
  %write16.i = getelementptr inbounds %struct.b43_bus_dev, ptr %225, i32 0, i32 9
  %226 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %write16.i, align 4
  tail call void %227(ptr noundef %225, i16 noundef zeroext 1008, i16 noundef zeroext %conv13) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %lpphy_b2062_tune.exit, %lpphy_b2062_tune.exit.thread, %lpphy_b2063_tune.exit
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -22, %lpphy_b2063_tune.exit ], [ -5, %lpphy_b2062_tune.exit ], [ -22, %lpphy_b2062_tune.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @b43_lpphy_op_get_default_chan(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wl = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wl, align 4
  %hw.i = getelementptr inbounds %struct.b43_wl, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw.i, align 4
  %chandef.i = getelementptr inbounds %struct.ieee80211_conf, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chandef.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  %. = select i1 %cmp, i32 1, i32 36
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b43_lpphy_op_set_rx_antenna(ptr noundef %dev, i32 noundef %antenna) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rev = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 8
  %0 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp ugt i8 %1, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %antenna)
  %cmp2 = icmp sgt i32 %antenna, 3
  br i1 %cmp2, label %do.end, label %if.end26.critedge, !prof !47

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1347, i32 noundef 9, ptr noundef null) #8
  br label %return

if.end26.critedge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i64 @b43_hf_read(ptr noundef %dev) #8
  %and = and i64 %call, -2
  tail call void @b43_hf_write(ptr noundef %dev, i64 noundef %and) #8
  %2 = trunc i32 %antenna to i16
  %conv28 = and i16 %2, 2
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1040, i16 noundef zeroext -3, i16 noundef zeroext %conv28) #8
  %conv30 = and i16 %2, 1
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1040, i16 noundef zeroext -2, i16 noundef zeroext %conv30) #8
  %call31 = tail call i64 @b43_hf_read(ptr noundef %dev) #8
  %or = or i64 %call31, 1
  tail call void @b43_hf_write(ptr noundef %dev, i64 noundef %or) #8
  %lp = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 1, i32 2
  %3 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lp, align 4
  %antenna33 = getelementptr inbounds %struct.b43_phy_lp, ptr %4, i32 0, i32 32
  %5 = ptrtoint ptr %antenna33 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %antenna, ptr %antenna33, align 4
  br label %return

return:                                           ; preds = %if.end26.critedge, %do.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @b43_lpphy_op_recalc_txpower(ptr nocapture noundef readnone %dev, i1 noundef zeroext %ignore_tssi) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @b43_lpphy_op_adjust_txpower(ptr nocapture noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @b43_lpphy_op_pwork_15sec(ptr nocapture noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpphy_calibration(ptr noundef %dev) #0 align 64 {
entry:
  %iq_est.i.i = alloca %struct.lpphy_iq_est, align 4
  %tmp.i.i.i = alloca [2 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lp = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 1, i32 2
  %0 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lp, align 4
  %full_calib_chan = getelementptr inbounds %struct.b43_phy_lp, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %full_calib_chan to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %full_calib_chan, align 2
  %channel = getelementptr inbounds %struct.b43_phy_lp, ptr %1, i32 0, i32 31
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %channel, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %5)
  %cmp.not = icmp eq i8 %3, %5
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %full_calib_chan to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %full_calib_chan, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @b43_mac_suspend(ptr noundef %dev) #8
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %write16.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write16.i.i, align 4
  tail call void %10(ptr noundef %8, i16 noundef zeroext 1716, i16 noundef zeroext 3) #8
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %write16.i2.i = getelementptr inbounds %struct.b43_bus_dev, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %write16.i2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write16.i2.i, align 4
  tail call void %14(ptr noundef %12, i16 noundef zeroext 1720, i16 noundef zeroext 255) #8
  %rev = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 8
  %15 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp7 = icmp ugt i8 %16, 1
  br i1 %cmp7, label %if.then9, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @lpphy_save_dig_flt_state(ptr noundef %dev)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end.if.end10_crit_edge
  %17 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lp, align 4
  %call.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1188) #8
  %19 = and i16 %call.i, -8192
  %20 = zext i16 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.6)
  switch i16 %19, label %sw.default.i [
    i16 0, label %sw.bb.i
    i16 -32768, label %sw.bb1.i
    i16 -8192, label %sw.bb3.i
  ]

sw.bb.i:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %18, align 4
  br label %lpphy_read_tx_pctl_mode_from_hardware.exit

sw.bb1.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %18, align 4
  br label %lpphy_read_tx_pctl_mode_from_hardware.exit

sw.bb3.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %18, align 4
  br label %lpphy_read_tx_pctl_mode_from_hardware.exit

sw.default.i:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %18, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1104, i32 noundef 9, ptr noundef null) #8
  br label %lpphy_read_tx_pctl_mode_from_hardware.exit

lpphy_read_tx_pctl_mode_from_hardware.exit:       ; preds = %sw.default.i, %sw.bb3.i, %sw.bb1.i, %sw.bb.i
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %1, align 4
  tail call fastcc void @lpphy_set_tx_power_control(ptr noundef %dev, i32 noundef 1)
  %27 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp14 = icmp ne i8 %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp16.not = icmp eq i32 %26, 1
  %or.cond = select i1 %cmp14, i1 true, i1 %cmp16.not
  br i1 %or.cond, label %lpphy_read_tx_pctl_mode_from_hardware.exit.if.end19_crit_edge, label %if.then18

lpphy_read_tx_pctl_mode_from_hardware.exit.if.end19_crit_edge: ; preds = %lpphy_read_tx_pctl_mode_from_hardware.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then18:                                        ; preds = %lpphy_read_tx_pctl_mode_from_hardware.exit
  %29 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lp, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 1024) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  %wl.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %32 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wl.i, align 4
  tail call void (ptr, ptr, ...) @b43err(ptr noundef %33, ptr noundef nonnull @.str.5) #8
  br label %if.end19

if.end.i:                                         ; preds = %if.then18
  %34 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lp, align 4
  %call.i.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1188) #8
  %36 = and i16 %call.i.i, -8192
  %37 = zext i16 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.7)
  switch i16 %36, label %sw.default.i.i [
    i16 0, label %sw.bb.i.i
    i16 -32768, label %sw.bb1.i.i
    i16 -8192, label %sw.bb3.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %35, align 4
  br label %lpphy_read_tx_pctl_mode_from_hardware.exit.i

sw.bb1.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %35, align 4
  br label %lpphy_read_tx_pctl_mode_from_hardware.exit.i

sw.bb3.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 3, ptr %35, align 4
  br label %lpphy_read_tx_pctl_mode_from_hardware.exit.i

sw.default.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %35, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1104, i32 noundef 9, ptr noundef null) #8
  br label %lpphy_read_tx_pctl_mode_from_hardware.exit.i

lpphy_read_tx_pctl_mode_from_hardware.exit.i:     ; preds = %sw.default.i.i, %sw.bb3.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %42 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %30, align 4
  %tx_pwr_idx_over2.i = getelementptr inbounds %struct.b43_phy_lp, ptr %30, i32 0, i32 18
  %44 = ptrtoint ptr %tx_pwr_idx_over2.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %tx_pwr_idx_over2.i, align 4
  %tssi_npt3.i = getelementptr inbounds %struct.b43_phy_lp, ptr %30, i32 0, i32 16
  %46 = ptrtoint ptr %tssi_npt3.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %tssi_npt3.i, align 4
  %tssi_idx4.i = getelementptr inbounds %struct.b43_phy_lp, ptr %30, i32 0, i32 15
  %48 = ptrtoint ptr %tssi_idx4.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %tssi_idx4.i, align 2
  %50 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %51)
  %cmp.i = icmp ult i8 %51, 2
  %..i = select i1 %cmp.i, i32 805316928, i32 805313856
  tail call void @b43_lptab_read_bulk(ptr noundef %dev, i32 noundef %..i, i32 noundef 256, ptr noundef nonnull %call7.i.i.i.i) #8
  %wl.i.i.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %52 = ptrtoint ptr %wl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %wl.i.i.i, align 4
  %hw.i.i.i.i = getelementptr inbounds %struct.b43_wl, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %hw.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw.i.i.i.i, align 4
  %chandef.i.i.i.i = getelementptr inbounds %struct.ieee80211_conf, ptr %55, i32 0, i32 7
  %56 = ptrtoint ptr %chandef.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %chandef.i.i.i.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp.i.i.i = icmp eq i32 %59, 0
  %add.i.i.i = select i1 %cmp.i.i.i, i32 2412, i32 5180
  %60 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %61)
  %cmp.i.i = icmp ult i8 %61, 2
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %lpphy_read_tx_pctl_mode_from_hardware.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lpphy_rev0_1_table_init(ptr noundef %dev) #8
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %lpphy_read_tx_pctl_mode_from_hardware.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lpphy_rev2plus_table_init(ptr noundef %dev) #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  tail call void @lpphy_init_tx_gain_table(ptr noundef %dev) #8
  %62 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %63)
  %cmp8.i.i = icmp ult i8 %63, 2
  br i1 %cmp8.i.i, label %if.then10.i.i, label %if.end.i.i.lpphy_table_init.exit.i_crit_edge

if.end.i.i.lpphy_table_init.exit.i_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpphy_table_init.exit.i

if.then10.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @lpphy_adjust_gain_table(ptr noundef %dev, i32 noundef %add.i.i.i) #8
  br label %lpphy_table_init.exit.i

lpphy_table_init.exit.i:                          ; preds = %if.then10.i.i, %if.end.i.i.lpphy_table_init.exit.i_crit_edge
  tail call fastcc void @lpphy_baseband_init(ptr noundef %dev) #8
  %64 = ptrtoint ptr %wl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %wl.i.i.i, align 4
  %hw.i.i.i71.i = getelementptr inbounds %struct.b43_wl, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %hw.i.i.i71.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hw.i.i.i71.i, align 4
  %chandef.i.i.i72.i = getelementptr inbounds %struct.ieee80211_conf, ptr %67, i32 0, i32 7
  %68 = ptrtoint ptr %chandef.i.i.i72.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %chandef.i.i.i72.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp.i.i73.i = icmp eq i32 %71, 0
  %..i.i.i = select i1 %cmp.i.i73.i, i32 786432, i32 917504
  %.19.i.i.i = select i1 %cmp.i.i73.i, i32 262156, i32 458767
  %.fca.0.insert.i.i.i = insertvalue [2 x i32] poison, i32 %.19.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue [2 x i32] %.fca.0.insert.i.i.i, i32 %..i.i.i, 1
  tail call fastcc void @lpphy_set_tx_gains(ptr noundef %dev, [2 x i32] %.fca.1.insert.i.i.i) #8
  tail call void @b43_lptab_write(ptr noundef %dev, i32 noundef 536870999, i32 noundef 38400) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1100, i16 noundef zeroext -7937) #8
  %72 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %73)
  %cmp7.i.i = icmp ugt i8 %73, 1
  %.86.i = select i1 %cmp7.i.i, i16 -2057, i16 -25
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1200, i16 noundef zeroext %.86.i) #8
  tail call fastcc void @lpphy_set_tx_power_control(ptr noundef %dev, i32 noundef 1) #8
  %74 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %75)
  %cmp12.i = icmp ult i8 %75, 2
  %.sink85.i = select i1 %cmp12.i, i32 805316928, i32 805313856
  tail call void @b43_lptab_write_bulk(ptr noundef %dev, i32 noundef %.sink85.i, i32 noundef 256, ptr noundef nonnull %call7.i.i.i.i) #8
  %channel.i = getelementptr inbounds %struct.b43_phy_lp, ptr %30, i32 0, i32 31
  %76 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %channel.i, align 4
  %conv17.i = zext i8 %77 to i16
  %78 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev, align 4
  %write16.i.i57 = getelementptr inbounds %struct.b43_bus_dev, ptr %79, i32 0, i32 9
  %80 = ptrtoint ptr %write16.i.i57 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %write16.i.i57, align 4
  tail call void %81(ptr noundef %79, i16 noundef zeroext 1008, i16 noundef zeroext %conv17.i) #8
  %82 = ptrtoint ptr %tssi_npt3.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %47, ptr %tssi_npt3.i, align 4
  %83 = ptrtoint ptr %tssi_idx4.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %49, ptr %tssi_idx4.i, align 2
  %84 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %channel.i, align 4
  %conv21.i = zext i8 %85 to i32
  tail call fastcc void @lpphy_set_analog_filter(ptr noundef %dev, i32 noundef %conv21.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %45)
  %cmp23.not.i = icmp eq i8 %45, -1
  br i1 %cmp23.not.i, label %lpphy_table_init.exit.i.if.end26.i_crit_edge, label %if.then25.i

lpphy_table_init.exit.i.if.end26.i_crit_edge:     ; preds = %lpphy_table_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

if.then25.i:                                      ; preds = %lpphy_table_init.exit.i
  %86 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %lp, align 4
  %tx_pwr_idx_over.i.i = getelementptr inbounds %struct.b43_phy_lp, ptr %87, i32 0, i32 18
  %88 = ptrtoint ptr %tx_pwr_idx_over.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %45, ptr %tx_pwr_idx_over.i.i, align 4
  %89 = load ptr, ptr %lp, align 4
  %call.i.i.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1188) #8
  %90 = and i16 %call.i.i.i, -8192
  %91 = zext i16 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.8)
  switch i16 %90, label %sw.default.i.i.i [
    i16 0, label %sw.bb.i.i.i
    i16 -32768, label %sw.bb1.i.i.i
    i16 -8192, label %sw.bb3.i.i.i
  ]

sw.bb.i.i.i:                                      ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 1, ptr %89, align 4
  br label %lpphy_read_tx_pctl_mode_from_hardware.exit.i.i

sw.bb1.i.i.i:                                     ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 2, ptr %89, align 4
  br label %lpphy_read_tx_pctl_mode_from_hardware.exit.i.i

sw.bb3.i.i.i:                                     ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #10
  %94 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 3, ptr %89, align 4
  br label %lpphy_read_tx_pctl_mode_from_hardware.exit.i.i

sw.default.i.i.i:                                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %89, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1104, i32 noundef 9, ptr noundef null) #8
  br label %lpphy_read_tx_pctl_mode_from_hardware.exit.i.i

lpphy_read_tx_pctl_mode_from_hardware.exit.i.i:   ; preds = %sw.default.i.i.i, %sw.bb3.i.i.i, %sw.bb1.i.i.i, %sw.bb.i.i.i
  %96 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %97)
  %cmp.not.i.i = icmp eq i32 %97, 1
  br i1 %cmp.not.i.i, label %lpphy_read_tx_pctl_mode_from_hardware.exit.i.i.if.end.i77.i_crit_edge, label %if.then.i75.i

lpphy_read_tx_pctl_mode_from_hardware.exit.i.i.if.end.i77.i_crit_edge: ; preds = %lpphy_read_tx_pctl_mode_from_hardware.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i77.i

if.then.i75.i:                                    ; preds = %lpphy_read_tx_pctl_mode_from_hardware.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @lpphy_set_tx_power_control(ptr noundef %dev, i32 noundef 2) #8
  br label %if.end.i77.i

if.end.i77.i:                                     ; preds = %if.then.i75.i, %lpphy_read_tx_pctl_mode_from_hardware.exit.i.i.if.end.i77.i_crit_edge
  %98 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %99)
  %cmp2.i.i = icmp ugt i8 %99, 1
  %conv5.i.i = zext i8 %45 to i32
  br i1 %cmp2.i.i, label %if.then4.i.i, label %if.else.i79.i

if.then4.i.i:                                     ; preds = %if.end.i77.i
  call void @__sanitizer_cov_trace_pc() #10
  %or6.i.i = add nuw nsw i32 %conv5.i.i, 805313856
  %call.i78.i = tail call i32 @b43_lptab_read(ptr noundef %dev, i32 noundef %or6.i.i) #8
  %or10.i.i = add nuw nsw i32 %conv5.i.i, 805313728
  %call11.i.i = tail call i32 @b43_lptab_read(ptr noundef %dev, i32 noundef %or10.i.i) #8
  %conv12.i.i = and i32 %call11.i.i, 16711680
  %100 = lshr i32 %call11.i.i, 8
  %shr18.i.i = lshr i32 %call.i78.i, 28
  %gains.sroa.7.6.insert.insert94.i.i = or i32 %conv12.i.i, %shr18.i.i
  %gains.sroa.0.sroa.5.0.insert.ext.i.i = and i32 %100, 255
  %conv14.i.i = shl i32 %call11.i.i, 16
  %gains.sroa.0.sroa.0.0.insert.shift.i.i = and i32 %conv14.i.i, 16711680
  %gains.sroa.0.sroa.0.0.insert.insert.i.i = or i32 %gains.sroa.0.sroa.5.0.insert.ext.i.i, %gains.sroa.0.sroa.0.0.insert.shift.i.i
  %.fca.0.insert.i.i = insertvalue [2 x i32] poison, i32 %gains.sroa.0.sroa.0.0.insert.insert.i.i, 0
  %.fca.1.insert.i.i = insertvalue [2 x i32] %.fca.0.insert.i.i, i32 %gains.sroa.7.6.insert.insert94.i.i, 1
  tail call fastcc void @lpphy_set_tx_gains(ptr noundef %dev, [2 x i32] %.fca.1.insert.i.i) #8
  br label %if.end39.i.i

if.else.i79.i:                                    ; preds = %if.end.i77.i
  call void @__sanitizer_cov_trace_pc() #10
  %or24.i.i = add nuw nsw i32 %conv5.i.i, 805316928
  %call25.i.i = tail call i32 @b43_lptab_read(ptr noundef %dev, i32 noundef %or24.i.i) #8
  %or29.i.i = add nuw nsw i32 %conv5.i.i, 805316800
  %call30.i.i = tail call i32 @b43_lptab_read(ptr noundef %dev, i32 noundef %or29.i.i) #8
  %shr31.i.i = lshr i32 %call30.i.i, 4
  %101 = trunc i32 %shr31.i.i to i16
  %conv33.i.i = and i16 %101, 32767
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1205, i16 noundef zeroext -2048, i16 noundef zeroext %conv33.i.i) #8
  %102 = trunc i32 %call30.i.i to i16
  %call.i124.i.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1081) #8
  %103 = and i16 %call.i124.i.i, 3199
  %conv35.i.i = shl i16 %102, 7
  %shl.i.i.i = and i16 %conv35.i.i, 896
  %or.i.i.i = or i16 %103, %shl.i.i.i
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1081, i16 noundef zeroext -4096, i16 noundef zeroext %or.i.i.i) #8
  %shr36.i.i = lshr i32 %call30.i.i, 24
  %104 = trunc i32 %shr36.i.i to i16
  %conv38.i.i = and i16 %104, 127
  %shl.i125.i.i = shl nuw nsw i16 %conv38.i.i, 6
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1275, i16 noundef zeroext -8129, i16 noundef zeroext %shl.i125.i.i) #8
  %shl3.i.i.i = shl nuw nsw i16 %conv38.i.i, 8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1277, i16 noundef zeroext -32513, i16 noundef zeroext %shl3.i.i.i) #8
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %if.else.i79.i, %if.then4.i.i
  %iq_comp.0.i.i = phi i32 [ %call.i78.i, %if.then4.i.i ], [ %call25.i.i, %if.else.i79.i ]
  %105 = lshr i32 %iq_comp.0.i.i, 12
  %shl.i126.i.i = and i32 %105, 65280
  tail call void @b43_lptab_write(ptr noundef %dev, i32 noundef 536870999, i32 noundef %shl.i126.i.i) #8
  %shr43.i.i = lshr i32 %iq_comp.0.i.i, 10
  %106 = trunc i32 %shr43.i.i to i16
  %conv45.i.i = and i16 %106, 1023
  %107 = trunc i32 %iq_comp.0.i.i to i16
  %conv47.i.i = and i16 %107, 1023
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i) #8
  %108 = getelementptr inbounds [2 x i16], ptr %tmp.i.i.i, i32 0, i32 1
  %109 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %conv45.i.i, ptr %tmp.i.i.i, align 2
  %110 = ptrtoint ptr %108 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %conv47.i.i, ptr %108, align 2
  call void @b43_lptab_write_bulk(ptr noundef %dev, i32 noundef 536870992, i32 noundef 2, ptr noundef nonnull %tmp.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #8
  %111 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %112)
  %cmp51.i.i = icmp ugt i8 %112, 1
  %..i.i = select i1 %cmp51.i.i, i32 805313984, i32 805317056
  %or63.i.i = add nuw nsw i32 %..i.i, %conv5.i.i
  %call64.i.i = call i32 @b43_lptab_read(ptr noundef %dev, i32 noundef %or63.i.i) #8
  %and66.i.i = and i32 %call64.i.i, 65535
  call void @b43_lptab_write(ptr noundef %dev, i32 noundef 536870997, i32 noundef %and66.i.i) #8
  %113 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %114)
  %cmp70.i.i = icmp ugt i8 %114, 1
  br i1 %cmp70.i.i, label %if.end80.i.i, label %if.end39.i.i.lpphy_set_tx_power_by_index.exit.i_crit_edge

if.end39.i.i.lpphy_set_tx_power_by_index.exit.i_crit_edge: ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpphy_set_tx_power_by_index.exit.i

if.end80.i.i:                                     ; preds = %if.end39.i.i
  %or76.i.i = add nuw nsw i32 %conv5.i.i, 805314112
  %call77.i.i = call i32 @b43_lptab_read(ptr noundef %dev, i32 noundef %or76.i.i) #8
  %conv79.i.i = trunc i32 %call77.i.i to i16
  call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1235, i16 noundef zeroext -256, i16 noundef zeroext %conv79.i.i) #8
  %115 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %115)
  %.pr.i.i = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.pr.i.i)
  %cmp.i.i80.i = icmp ult i8 %.pr.i.i, 2
  br i1 %cmp.i.i80.i, label %if.end80.i.i.lpphy_set_tx_power_by_index.exit.i_crit_edge, label %if.else.i.i.i

if.end80.i.i.lpphy_set_tx_power_by_index.exit.i_crit_edge: ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpphy_set_tx_power_by_index.exit.i

if.else.i.i.i:                                    ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1200, i16 noundef zeroext 128) #8
  br label %lpphy_set_tx_power_by_index.exit.i

lpphy_set_tx_power_by_index.exit.i:               ; preds = %if.else.i.i.i, %if.end80.i.i.lpphy_set_tx_power_by_index.exit.i_crit_edge, %if.end39.i.i.lpphy_set_tx_power_by_index.exit.i_crit_edge
  %.sink.i.i.i = phi i16 [ 16384, %if.else.i.i.i ], [ 256, %if.end80.i.i.lpphy_set_tx_power_by_index.exit.i_crit_edge ], [ 256, %if.end39.i.i.lpphy_set_tx_power_by_index.exit.i_crit_edge ]
  call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1200, i16 noundef zeroext %.sink.i.i.i) #8
  call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1083, i16 noundef zeroext 64) #8
  br label %if.end26.i

if.end26.i:                                       ; preds = %lpphy_set_tx_power_by_index.exit.i, %lpphy_table_init.exit.i.if.end26.i_crit_edge
  %rc_cap.i = getelementptr inbounds %struct.b43_phy_lp, ptr %30, i32 0, i32 22
  %116 = ptrtoint ptr %rc_cap.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %rc_cap.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool27.not.i = icmp eq i8 %117, 0
  br i1 %tobool27.not.i, label %if.end26.i.if.end29.i_crit_edge, label %if.then28.i

if.end26.i.if.end29.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

if.then28.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  %118 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %lp, align 4
  %rc_cap1.i.i = getelementptr inbounds %struct.b43_phy_lp, ptr %119, i32 0, i32 22
  %120 = ptrtoint ptr %rc_cap1.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %rc_cap1.i.i, align 4
  %122 = lshr i8 %121, 1
  %123 = and i8 %122, 15
  %124 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %125)
  %cmp.i83.i = icmp eq i8 %125, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %123)
  %cmp10.i.i = icmp ult i8 %123, 10
  %narrow.i.i = add nuw nsw i8 %123, 5
  %cond.i.i = select i1 %cmp10.i.i, i8 %narrow.i.i, i8 15
  %rc_cap.0.i.i = select i1 %cmp.i83.i, i8 %cond.i.i, i8 %123
  %sub.i.i = add i8 %121, -4
  %126 = call i8 @llvm.umax.i8(i8 %sub.i.i, i8 -128) #8
  %cond28.i.i = zext i8 %126 to i16
  call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 58, i16 noundef zeroext %cond28.i.i) #8
  %127 = or i8 %rc_cap.0.i.i, -128
  %conv31.i.i = zext i8 %127 to i16
  call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 79, i16 noundef zeroext %conv31.i.i) #8
  %128 = ptrtoint ptr %rc_cap1.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %rc_cap1.i.i, align 4
  %130 = lshr i8 %129, 2
  %131 = and i8 %130, 7
  %132 = or i8 %131, -128
  %conv37.i.i = zext i8 %132 to i16
  call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 16487, i16 noundef zeroext %conv37.i.i) #8
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then28.i, %if.end26.i.if.end29.i_crit_edge
  %antenna.i = getelementptr inbounds %struct.b43_phy_lp, ptr %30, i32 0, i32 32
  %133 = ptrtoint ptr %antenna.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %antenna.i, align 4
  call void @b43_lpphy_op_set_rx_antenna(ptr noundef %dev, i32 noundef %134) #8
  call fastcc void @lpphy_set_tx_power_control(ptr noundef %dev, i32 noundef %43) #8
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #8
  br label %if.end19

if.end19:                                         ; preds = %if.end29.i, %if.then.i, %lpphy_read_tx_pctl_mode_from_hardware.exit.if.end19_crit_edge
  %135 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %136)
  %cmp23 = icmp ult i8 %136, 2
  %brmerge = select i1 %cmp23, i1 true, i1 %cmp.not
  br i1 %brmerge, label %if.end19.if.end28_crit_edge, label %if.then27

if.end19.if.end28_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then27:                                        ; preds = %if.end19
  %137 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %lp, align 4
  %call.i.i59 = call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1188) #8
  %139 = and i16 %call.i.i59, -8192
  %140 = zext i16 %139 to i64
  call void @__sanitizer_cov_trace_switch(i64 %140, ptr @__sancov_gen_cov_switch_values.9)
  switch i16 %139, label %sw.default.i.i63 [
    i16 0, label %sw.bb.i.i60
    i16 -32768, label %sw.bb1.i.i61
    i16 -8192, label %sw.bb3.i.i62
  ]

sw.bb.i.i60:                                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  %141 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 1, ptr %138, align 4
  br label %lpphy_read_tx_pctl_mode_from_hardware.exit.i66

sw.bb1.i.i61:                                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  %142 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 2, ptr %138, align 4
  br label %lpphy_read_tx_pctl_mode_from_hardware.exit.i66

sw.bb3.i.i62:                                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  %143 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 3, ptr %138, align 4
  br label %lpphy_read_tx_pctl_mode_from_hardware.exit.i66

sw.default.i.i63:                                 ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  %144 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 0, ptr %138, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1104, i32 noundef 9, ptr noundef null) #8
  br label %lpphy_read_tx_pctl_mode_from_hardware.exit.i66

lpphy_read_tx_pctl_mode_from_hardware.exit.i66:   ; preds = %sw.default.i.i63, %sw.bb3.i.i62, %sw.bb1.i.i61, %sw.bb.i.i60
  %145 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %138, align 4
  %call.i64 = call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1083) #8
  %147 = and i16 %call.i64, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %147)
  %tobool.not.i65 = icmp eq i16 %147, 0
  br i1 %tobool.not.i65, label %lpphy_read_tx_pctl_mode_from_hardware.exit.i66.if.end.i71_crit_edge, label %if.then.i68

lpphy_read_tx_pctl_mode_from_hardware.exit.i66.if.end.i71_crit_edge: ; preds = %lpphy_read_tx_pctl_mode_from_hardware.exit.i66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i71

if.then.i68:                                      ; preds = %lpphy_read_tx_pctl_mode_from_hardware.exit.i66
  %call.i23.i = call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1081) #8, !noalias !52
  %148 = lshr i16 %call.i23.i, 7
  %149 = and i16 %148, 7
  %tmp.sroa.8.6.insert.ext.i = zext i16 %149 to i32
  %150 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %rev, align 2, !noalias !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %151)
  %cmp.i.i67 = icmp ult i8 %151, 2
  %call4.i.i = call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1205) #8, !noalias !52
  br i1 %cmp.i.i67, label %if.then.i.i69, label %if.else.i.i70

if.then.i.i69:                                    ; preds = %if.then.i68
  call void @__sanitizer_cov_trace_pc() #10
  %and9.i.i = and i16 %call4.i.i, 7
  %and12.i.i = lshr i16 %call4.i.i, 3
  %152 = and i16 %and12.i.i, 15
  %153 = lshr i16 %call4.i.i, 7
  %154 = and i16 %153, 15
  br label %lpphy_get_tx_gains.exit.i

if.else.i.i70:                                    ; preds = %if.then.i68
  call void @__sanitizer_cov_trace_pc() #10
  %call20.i.i = call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1275) #8, !noalias !52
  %155 = and i16 %call20.i.i, 255
  %and26.i.i = and i16 %call4.i.i, 255
  %156 = lshr i16 %call4.i.i, 8
  br label %lpphy_get_tx_gains.exit.i

lpphy_get_tx_gains.exit.i:                        ; preds = %if.else.i.i70, %if.then.i.i69
  %tmp.sroa.0.sroa.0.0.i = phi i16 [ %and9.i.i, %if.then.i.i69 ], [ %and26.i.i, %if.else.i.i70 ]
  %tmp.sroa.0.sroa.6.0.i = phi i16 [ %152, %if.then.i.i69 ], [ %156, %if.else.i.i70 ]
  %tmp.sroa.8.4.insert.shift28.pn.in.in.i = phi i16 [ %154, %if.then.i.i69 ], [ %155, %if.else.i.i70 ]
  %tmp.sroa.8.4.insert.shift28.pn.in.i = zext i16 %tmp.sroa.8.4.insert.shift28.pn.in.in.i to i32
  %tmp.sroa.8.4.insert.shift28.pn.i = shl nuw nsw i32 %tmp.sroa.8.4.insert.shift28.pn.in.i, 16
  %tmp.sroa.8.0.i = or i32 %tmp.sroa.8.4.insert.shift28.pn.i, %tmp.sroa.8.6.insert.ext.i
  %tmp.sroa.0.sroa.6.0.insert.ext.i = zext i16 %tmp.sroa.0.sroa.6.0.i to i32
  %tmp.sroa.0.sroa.0.0.insert.ext.i = zext i16 %tmp.sroa.0.sroa.0.0.i to i32
  %tmp.sroa.0.sroa.0.0.insert.shift.i = shl nuw nsw i32 %tmp.sroa.0.sroa.0.0.insert.ext.i, 16
  br label %if.end.i71

if.end.i71:                                       ; preds = %lpphy_get_tx_gains.exit.i, %lpphy_read_tx_pctl_mode_from_hardware.exit.i66.if.end.i71_crit_edge
  %oldgains.sroa.0.sroa.5.0.i = phi i32 [ %tmp.sroa.0.sroa.6.0.insert.ext.i, %lpphy_get_tx_gains.exit.i ], [ 65535, %lpphy_read_tx_pctl_mode_from_hardware.exit.i66.if.end.i71_crit_edge ]
  %oldgains.sroa.0.sroa.0.0.i = phi i32 [ %tmp.sroa.0.sroa.0.0.insert.shift.i, %lpphy_get_tx_gains.exit.i ], [ -65536, %lpphy_read_tx_pctl_mode_from_hardware.exit.i66.if.end.i71_crit_edge ]
  %oldgains.sroa.6.0.i = phi i32 [ %tmp.sroa.8.0.i, %lpphy_get_tx_gains.exit.i ], [ -1, %lpphy_read_tx_pctl_mode_from_hardware.exit.i66.if.end.i71_crit_edge ]
  %call1.i = call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1235) #8
  %call.i24.i = call i32 @b43_lptab_read(ptr noundef %dev, i32 noundef 536870999) #8
  call fastcc void @lpphy_set_tx_power_control(ptr noundef %dev, i32 noundef 1) #8
  br i1 %tobool.not.i65, label %if.end.i71.lpphy_papd_cal_txpwr.exit_crit_edge, label %if.then7.i

if.end.i71.lpphy_papd_cal_txpwr.exit_crit_edge:   ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpphy_papd_cal_txpwr.exit

if.then7.i:                                       ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #10
  %oldgains.sroa.0.sroa.0.0.insert.insert.i = or i32 %oldgains.sroa.0.sroa.0.0.i, %oldgains.sroa.0.sroa.5.0.i
  %.fca.0.insert.i = insertvalue [2 x i32] poison, i32 %oldgains.sroa.0.sroa.0.0.insert.insert.i, 0
  %.fca.1.insert.i = insertvalue [2 x i32] %.fca.0.insert.i, i32 %oldgains.sroa.6.0.i, 1
  call fastcc void @lpphy_set_tx_gains(ptr noundef %dev, [2 x i32] %.fca.1.insert.i) #8
  br label %lpphy_papd_cal_txpwr.exit

lpphy_papd_cal_txpwr.exit:                        ; preds = %if.then7.i, %if.end.i71.lpphy_papd_cal_txpwr.exit_crit_edge
  %157 = and i16 %call1.i, 255
  %conv1.i.i = and i32 %call.i24.i, 65280
  call void @b43_lptab_write(ptr noundef %dev, i32 noundef 536870999, i32 noundef %conv1.i.i) #8
  call fastcc void @lpphy_set_tx_power_control(ptr noundef %dev, i32 noundef %146) #8
  call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1235, i16 noundef zeroext -256, i16 noundef zeroext %157) #8
  br label %if.end28

if.end28:                                         ; preds = %lpphy_papd_cal_txpwr.exit, %if.end19.if.end28_crit_edge
  call fastcc void @lpphy_set_tx_power_control(ptr noundef %dev, i32 noundef %26)
  %158 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %159)
  %cmp32 = icmp ugt i8 %159, 1
  br i1 %cmp32, label %if.then34, label %if.end28.if.end35_crit_edge

if.end28.if.end35_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then34:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %160 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %lp, align 4
  %arrayidx1.i = getelementptr %struct.b43_phy_lp, ptr %161, i32 0, i32 27, i32 0
  %162 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %arrayidx1.i, align 2
  call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1217, i16 noundef zeroext %163) #8
  %arrayidx1.1.i = getelementptr %struct.b43_phy_lp, ptr %161, i32 0, i32 27, i32 1
  %164 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %arrayidx1.1.i, align 2
  call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1218, i16 noundef zeroext %165) #8
  %arrayidx1.2.i = getelementptr %struct.b43_phy_lp, ptr %161, i32 0, i32 27, i32 2
  %166 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %arrayidx1.2.i, align 2
  call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1219, i16 noundef zeroext %167) #8
  %arrayidx1.3.i = getelementptr %struct.b43_phy_lp, ptr %161, i32 0, i32 27, i32 3
  %168 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %arrayidx1.3.i, align 2
  call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1220, i16 noundef zeroext %169) #8
  %arrayidx1.4.i = getelementptr %struct.b43_phy_lp, ptr %161, i32 0, i32 27, i32 4
  %170 = ptrtoint ptr %arrayidx1.4.i to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %arrayidx1.4.i, align 2
  call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1221, i16 noundef zeroext %171) #8
  %arrayidx1.5.i = getelementptr %struct.b43_phy_lp, ptr %161, i32 0, i32 27, i32 5
  %172 = ptrtoint ptr %arrayidx1.5.i to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %arrayidx1.5.i, align 2
  call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1222, i16 noundef zeroext %173) #8
  %arrayidx1.6.i = getelementptr %struct.b43_phy_lp, ptr %161, i32 0, i32 27, i32 6
  %174 = ptrtoint ptr %arrayidx1.6.i to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %arrayidx1.6.i, align 2
  call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1223, i16 noundef zeroext %175) #8
  %arrayidx1.7.i = getelementptr %struct.b43_phy_lp, ptr %161, i32 0, i32 27, i32 7
  %176 = ptrtoint ptr %arrayidx1.7.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %arrayidx1.7.i, align 2
  call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1224, i16 noundef zeroext %177) #8
  %arrayidx1.8.i = getelementptr %struct.b43_phy_lp, ptr %161, i32 0, i32 27, i32 8
  %178 = ptrtoint ptr %arrayidx1.8.i to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %arrayidx1.8.i, align 2
  call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1231, i16 noundef zeroext %179) #8
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end28.if.end35_crit_edge
  %180 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %lp, align 4
  %182 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %dev, align 4
  %chip_id.i = getelementptr inbounds %struct.b43_bus_dev, ptr %183, i32 0, i32 20
  %184 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %chip_id.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21332, i16 %185)
  %cmp.i74 = icmp eq i16 %185, 21332
  br i1 %cmp.i74, label %for.cond.preheader.i, label %if.else.i

for.cond.preheader.i:                             ; preds = %if.end35
  %channel.i75 = getelementptr inbounds %struct.b43_phy_lp, ptr %181, i32 0, i32 31
  %186 = ptrtoint ptr %channel.i75 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %channel.i75, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %187)
  %cmp10.i = icmp eq i8 %187, 1
  %spec.select.i = select i1 %cmp10.i, ptr @lpphy_5354_iq_table, ptr null
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %187)
  %cmp10.1.i = icmp eq i8 %187, 2
  %spec.select.1.i = select i1 %cmp10.1.i, ptr getelementptr inbounds ([14 x %struct.lpphy_rx_iq_comp], ptr @lpphy_5354_iq_table, i32 0, i32 1), ptr %spec.select.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %187)
  %cmp10.2.i = icmp eq i8 %187, 3
  %spec.select.2.i = select i1 %cmp10.2.i, ptr getelementptr inbounds ([14 x %struct.lpphy_rx_iq_comp], ptr @lpphy_5354_iq_table, i32 0, i32 2), ptr %spec.select.1.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %187)
  %cmp10.3.i = icmp eq i8 %187, 4
  %spec.select.3.i = select i1 %cmp10.3.i, ptr getelementptr inbounds ([14 x %struct.lpphy_rx_iq_comp], ptr @lpphy_5354_iq_table, i32 0, i32 3), ptr %spec.select.2.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %187)
  %cmp10.4.i = icmp eq i8 %187, 5
  %spec.select.4.i = select i1 %cmp10.4.i, ptr getelementptr inbounds ([14 x %struct.lpphy_rx_iq_comp], ptr @lpphy_5354_iq_table, i32 0, i32 4), ptr %spec.select.3.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %187)
  %cmp10.5.i = icmp eq i8 %187, 6
  %spec.select.5.i = select i1 %cmp10.5.i, ptr getelementptr inbounds ([14 x %struct.lpphy_rx_iq_comp], ptr @lpphy_5354_iq_table, i32 0, i32 5), ptr %spec.select.4.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %187)
  %cmp10.6.i = icmp eq i8 %187, 7
  %spec.select.6.i = select i1 %cmp10.6.i, ptr getelementptr inbounds ([14 x %struct.lpphy_rx_iq_comp], ptr @lpphy_5354_iq_table, i32 0, i32 6), ptr %spec.select.5.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %187)
  %cmp10.7.i = icmp eq i8 %187, 8
  %spec.select.7.i = select i1 %cmp10.7.i, ptr getelementptr inbounds ([14 x %struct.lpphy_rx_iq_comp], ptr @lpphy_5354_iq_table, i32 0, i32 7), ptr %spec.select.6.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %187)
  %cmp10.8.i = icmp eq i8 %187, 9
  %spec.select.8.i = select i1 %cmp10.8.i, ptr getelementptr inbounds ([14 x %struct.lpphy_rx_iq_comp], ptr @lpphy_5354_iq_table, i32 0, i32 8), ptr %spec.select.7.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %187)
  %cmp10.9.i = icmp eq i8 %187, 10
  %spec.select.9.i = select i1 %cmp10.9.i, ptr getelementptr inbounds ([14 x %struct.lpphy_rx_iq_comp], ptr @lpphy_5354_iq_table, i32 0, i32 9), ptr %spec.select.8.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %187)
  %cmp10.10.i = icmp eq i8 %187, 11
  %spec.select.10.i = select i1 %cmp10.10.i, ptr getelementptr inbounds ([14 x %struct.lpphy_rx_iq_comp], ptr @lpphy_5354_iq_table, i32 0, i32 10), ptr %spec.select.9.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %187)
  %cmp10.11.i = icmp eq i8 %187, 12
  %spec.select.11.i = select i1 %cmp10.11.i, ptr getelementptr inbounds ([14 x %struct.lpphy_rx_iq_comp], ptr @lpphy_5354_iq_table, i32 0, i32 11), ptr %spec.select.10.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %187)
  %cmp10.12.i = icmp eq i8 %187, 13
  %spec.select.12.i = select i1 %cmp10.12.i, ptr getelementptr inbounds ([14 x %struct.lpphy_rx_iq_comp], ptr @lpphy_5354_iq_table, i32 0, i32 12), ptr %spec.select.11.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %187)
  %cmp10.13.i = icmp eq i8 %187, 14
  br i1 %cmp10.13.i, label %for.cond.preheader.i.if.end64.i_crit_edge, label %for.cond.preheader.i.if.end38.i_crit_edge

for.cond.preheader.i.if.end38.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i

for.cond.preheader.i.if.end64.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64.i

if.else.i:                                        ; preds = %if.end35
  %188 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %189)
  %cmp16.i = icmp ugt i8 %189, 1
  br i1 %cmp16.i, label %if.else.i.if.end64.i_crit_edge, label %for.cond20.preheader.i

if.else.i.if.end64.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64.i

for.cond20.preheader.i:                           ; preds = %if.else.i
  %channel27.i = getelementptr inbounds %struct.b43_phy_lp, ptr %181, i32 0, i32 31
  %190 = ptrtoint ptr %channel27.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %channel27.i, align 4
  br label %for.body23.i

for.body23.i:                                     ; preds = %for.body23.i.for.body23.i_crit_edge, %for.cond20.preheader.i
  %i.118.i = phi i32 [ 0, %for.cond20.preheader.i ], [ %inc35.i, %for.body23.i.for.body23.i_crit_edge ]
  %iqcomp.217.i = phi ptr [ null, %for.cond20.preheader.i ], [ %spec.select2.i, %for.body23.i.for.body23.i_crit_edge ]
  %arrayidx24.i = getelementptr [51 x %struct.lpphy_rx_iq_comp], ptr @lpphy_rev0_1_iq_table, i32 0, i32 %i.118.i
  %192 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %arrayidx24.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %193, i8 %191)
  %cmp29.i = icmp eq i8 %193, %191
  %spec.select2.i = select i1 %cmp29.i, ptr %arrayidx24.i, ptr %iqcomp.217.i
  %inc35.i = add nuw nsw i32 %i.118.i, 1
  %exitcond.not.i = icmp eq i32 %inc35.i, 51
  br i1 %exitcond.not.i, label %for.body23.i.if.end38.i_crit_edge, label %for.body23.i.for.body23.i_crit_edge

for.body23.i.for.body23.i_crit_edge:              ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body23.i

for.body23.i.if.end38.i_crit_edge:                ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i

if.end38.i:                                       ; preds = %for.body23.i.if.end38.i_crit_edge, %for.cond.preheader.i.if.end38.i_crit_edge
  %iqcomp.4.i = phi ptr [ %spec.select.12.i, %for.cond.preheader.i.if.end38.i_crit_edge ], [ %spec.select2.i, %for.body23.i.if.end38.i_crit_edge ]
  %tobool.not.i77 = icmp eq ptr %iqcomp.4.i, null
  br i1 %tobool.not.i77, label %do.end.i, label %if.end38.i.if.end64.i_crit_edge, !prof !47

if.end38.i.if.end64.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64.i

do.end.i:                                         ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1867, i32 noundef 9, ptr noundef null) #8
  br label %lpphy_rx_iq_cal.exit

if.end64.i:                                       ; preds = %if.end38.i.if.end64.i_crit_edge, %if.else.i.if.end64.i_crit_edge, %for.cond.preheader.i.if.end64.i_crit_edge
  %iqcomp.415.i = phi ptr [ %iqcomp.4.i, %if.end38.i.if.end64.i_crit_edge ], [ @lpphy_rev2plus_iq_comp, %if.else.i.if.end64.i_crit_edge ], [ getelementptr inbounds ([14 x %struct.lpphy_rx_iq_comp], ptr @lpphy_5354_iq_table, i32 0, i32 13), %for.cond.preheader.i.if.end64.i_crit_edge ]
  %c1.i = getelementptr inbounds %struct.lpphy_rx_iq_comp, ptr %iqcomp.415.i, i32 0, i32 1
  %194 = ptrtoint ptr %c1.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %c1.i, align 1
  %conv65.i = sext i8 %195 to i16
  call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1182, i16 noundef zeroext -256, i16 noundef zeroext %conv65.i) #8
  %c0.i = getelementptr inbounds %struct.lpphy_rx_iq_comp, ptr %iqcomp.415.i, i32 0, i32 2
  %196 = ptrtoint ptr %c0.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %c0.i, align 1
  %conv661.i = zext i8 %197 to i16
  %shl.i = shl nuw i16 %conv661.i, 8
  call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1182, i16 noundef zeroext 255, i16 noundef zeroext %shl.i) #8
  call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1101, i16 noundef zeroext -4, i16 noundef zeroext 2) #8
  call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1100, i16 noundef zeroext 3) #8
  %wl.i78 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %198 = ptrtoint ptr %wl.i78 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %wl.i78, align 4
  %hw.i.i = getelementptr inbounds %struct.b43_wl, ptr %199, i32 0, i32 1
  %200 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %hw.i.i, align 4
  %chandef.i.i = getelementptr inbounds %struct.ieee80211_conf, ptr %201, i32 0, i32 7
  %202 = ptrtoint ptr %chandef.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %chandef.i.i, align 4
  %204 = ptrtoint ptr %203 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %203, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %cmp73.i = icmp eq i32 %205, 0
  %..i79 = select i1 %cmp73.i, i16 8, i16 32
  %.26.i = select i1 %cmp73.i, i16 -9, i16 -33
  call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1100, i16 noundef zeroext %..i79) #8
  call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1101, i16 noundef zeroext %.26.i, i16 noundef zeroext 0) #8
  %call86.i = call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1083) #8
  call fastcc void @lpphy_set_rx_gain(ptr noundef %dev, i32 noundef 11613) #8
  call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1083, i16 noundef zeroext -2) #8
  call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1084, i16 noundef zeroext -2) #8
  call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1100, i16 noundef zeroext 2048) #8
  call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1101, i16 noundef zeroext 2048) #8
  %206 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %lp, align 4
  %crs_sys_disable.i.i = getelementptr inbounds %struct.b43_phy_lp, ptr %207, i32 0, i32 29
  %208 = ptrtoint ptr %crs_sys_disable.i.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 1, ptr %crs_sys_disable.i.i, align 1
  call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1040, i16 noundef zeroext -225, i16 noundef zeroext 128) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iq_est.i.i) #8
  %209 = ptrtoint ptr %iq_est.i.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 -1, ptr %iq_est.i.i, align 4, !annotation !55
  %210 = getelementptr inbounds %struct.lpphy_iq_est, ptr %iq_est.i.i, i32 0, i32 1
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 -1, ptr %210, align 4, !annotation !55
  %212 = getelementptr inbounds %struct.lpphy_iq_est, ptr %iq_est.i.i, i32 0, i32 2
  %213 = ptrtoint ptr %212 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 -1, ptr %212, align 4, !annotation !55
  %call.i.i80 = call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1182) #8
  %214 = lshr i16 %call.i.i80, 8
  %215 = or i16 %call.i.i80, 255
  call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1182, i16 noundef zeroext -256, i16 noundef zeroext 192) #8
  call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1182, i16 noundef zeroext 255) #8
  %call4.i.i81 = call fastcc zeroext i1 @lpphy_rx_iq_est(ptr noundef %dev, i16 noundef zeroext -16, ptr noundef nonnull %iq_est.i.i) #8
  br i1 %call4.i.i81, label %if.end.i.i83, label %if.end64.i.lpphy_calc_rx_iq_comp.exit.i_crit_edge

if.end64.i.lpphy_calc_rx_iq_comp.exit.i_crit_edge: ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpphy_calc_rx_iq_comp.exit.i

if.end.i.i83:                                     ; preds = %if.end64.i
  %216 = ptrtoint ptr %iq_est.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %iq_est.i.i, align 4
  %218 = ptrtoint ptr %210 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %210, align 4
  %220 = ptrtoint ptr %212 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %212, align 4
  %add.i.i = add i32 %221, %219
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add.i.i)
  %cmp.i.i82 = icmp slt i32 %add.i.i, 2
  br i1 %cmp.i.i82, label %if.end.i.i83.lpphy_calc_rx_iq_comp.exit.i_crit_edge, label %if.end8.i.i

if.end.i.i83.lpphy_calc_rx_iq_comp.exit.i_crit_edge: ; preds = %if.end.i.i83
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpphy_calc_rx_iq_comp.exit.i

if.end8.i.i:                                      ; preds = %if.end.i.i83
  %222 = call i32 @llvm.abs.i32(i32 %217, i1 false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %tobool.not.i.i.i = icmp eq i32 %217, 0
  %223 = call i32 @llvm.ctlz.i32(i32 %222, i1 true) #8, !range !56
  %sub.i.i.i = sub nuw nsw i32 32, %223
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i
  %224 = call i32 @llvm.abs.i32(i32 %221, i1 false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %tobool.not.i1.i.i = icmp eq i32 %221, 0
  %225 = call i32 @llvm.ctlz.i32(i32 %224, i1 true) #8, !range !56
  %sub.i2.i.i = sub nuw nsw i32 32, %225
  %cond.i3.i.i = select i1 %tobool.not.i1.i.i, i32 0, i32 %sub.i2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %cond.i.i.i)
  %cmp23.i.i = icmp ugt i32 %cond.i.i.i, 19
  br i1 %cmp23.i.i, label %if.then25.i.i, label %if.else.i.i84

if.then25.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub22.i.i = add nsw i32 %cond.i.i.i, -20
  %sub26.i.i = sub nsw i32 30, %cond.i.i.i
  %shl.i.i = shl i32 %217, %sub26.i.i
  %add27.i.i = add nsw i32 %cond.i.i.i, -19
  %shr28.i.i = ashr i32 %219, %add27.i.i
  %add29.i.i = add i32 %shl.i.i, %shr28.i.i
  %shr30.i.i = ashr i32 %219, %sub22.i.i
  %div.i.i = sdiv i32 %add29.i.i, %shr30.i.i
  br label %if.end39.i.i85

if.else.i.i84:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub31.i.i = sub nuw nsw i32 30, %cond.i.i.i
  %shl32.i.i = shl i32 %217, %sub31.i.i
  %sub33.i.i = sub nuw nsw i32 19, %cond.i.i.i
  %shl34.i.i = shl i32 %219, %sub33.i.i
  %add35.i.i = add i32 %shl32.i.i, %shl34.i.i
  %sub36.i.i = sub nuw nsw i32 20, %cond.i.i.i
  %shl37.i.i = shl i32 %219, %sub36.i.i
  %div38.i.i = sdiv i32 %add35.i.i, %shl37.i.i
  br label %if.end39.i.i85

if.end39.i.i85:                                   ; preds = %if.else.i.i84, %if.then25.i.i
  %tmp3.0.i.i = phi i32 [ %div.i.i, %if.then25.i.i ], [ %div38.i.i, %if.else.i.i84 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %cond.i3.i.i)
  %cmp41.i.i = icmp ugt i32 %cond.i3.i.i, 10
  br i1 %cmp41.i.i, label %if.then43.i.i, label %if.else48.i.i

if.then43.i.i:                                    ; preds = %if.end39.i.i85
  call void @__sanitizer_cov_trace_pc() #10
  %sub40.i.i = add nsw i32 %cond.i3.i.i, -11
  %sub44.i.i = sub nsw i32 31, %cond.i3.i.i
  %shl45.i.i = shl i32 %221, %sub44.i.i
  %shr46.i.i = ashr i32 %219, %sub40.i.i
  %div47.i.i = sdiv i32 %shl45.i.i, %shr46.i.i
  br label %if.end54.i.i

if.else48.i.i:                                    ; preds = %if.end39.i.i85
  call void @__sanitizer_cov_trace_pc() #10
  %sub49.i.i = sub nuw nsw i32 31, %cond.i3.i.i
  %shl50.i.i = shl i32 %221, %sub49.i.i
  %sub51.i.i = sub nuw nsw i32 11, %cond.i3.i.i
  %shl52.i.i = shl i32 %219, %sub51.i.i
  %div53.i.i = sdiv i32 %shl50.i.i, %shl52.i.i
  br label %if.end54.i.i

if.end54.i.i:                                     ; preds = %if.else48.i.i, %if.then43.i.i
  %tmp4.0.i.i = phi i32 [ %div47.i.i, %if.then43.i.i ], [ %div53.i.i, %if.else48.i.i ]
  %mul.i.i = mul i32 %tmp3.0.i.i, %tmp3.0.i.i
  %sub55.i.i = sub i32 %tmp4.0.i.i, %mul.i.i
  %call56.i.i = call i32 @int_sqrt(i32 noundef %sub55.i.i) #8
  %sub57.i.i = sub i32 0, %call56.i.i
  %226 = lshr i32 %tmp3.0.i.i, 3
  %conv59.i.i = trunc i32 %226 to i16
  %227 = lshr i32 %sub57.i.i, 4
  %conv61.i.i = trunc i32 %227 to i16
  br label %lpphy_calc_rx_iq_comp.exit.i

lpphy_calc_rx_iq_comp.exit.i:                     ; preds = %if.end54.i.i, %if.end.i.i83.lpphy_calc_rx_iq_comp.exit.i_crit_edge, %if.end64.i.lpphy_calc_rx_iq_comp.exit.i_crit_edge
  %c1.0.i.i = phi i16 [ %conv61.i.i, %if.end54.i.i ], [ %215, %if.end64.i.lpphy_calc_rx_iq_comp.exit.i_crit_edge ], [ %215, %if.end.i.i83.lpphy_calc_rx_iq_comp.exit.i_crit_edge ]
  %c0.0.i.i = phi i16 [ %conv59.i.i, %if.end54.i.i ], [ %214, %if.end64.i.lpphy_calc_rx_iq_comp.exit.i_crit_edge ], [ %214, %if.end.i.i83.lpphy_calc_rx_iq_comp.exit.i_crit_edge ]
  call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1182, i16 noundef zeroext -256, i16 noundef zeroext %c1.0.i.i) #8
  %shl63.i.i = shl i16 %c0.0.i.i, 8
  call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1182, i16 noundef zeroext 255, i16 noundef zeroext %shl63.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iq_est.i.i) #8
  %228 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %lp, align 4
  %crs_sys_disable.i4.i = getelementptr inbounds %struct.b43_phy_lp, ptr %229, i32 0, i32 29
  %230 = ptrtoint ptr %crs_sys_disable.i4.i to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 0, ptr %crs_sys_disable.i4.i, align 1
  %crs_usr_disable1.i.i = getelementptr inbounds %struct.b43_phy_lp, ptr %229, i32 0, i32 28
  %231 = ptrtoint ptr %crs_usr_disable1.i.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %crs_usr_disable1.i.i, align 2, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %232)
  %tobool2.not.i.i = icmp eq i8 %232, 0
  br i1 %tobool2.not.i.i, label %if.then5.i.i, label %lpphy_calc_rx_iq_comp.exit.i.lpphy_clear_deaf.exit.i_crit_edge

lpphy_calc_rx_iq_comp.exit.i.lpphy_clear_deaf.exit.i_crit_edge: ; preds = %lpphy_calc_rx_iq_comp.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpphy_clear_deaf.exit.i

if.then5.i.i:                                     ; preds = %lpphy_calc_rx_iq_comp.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %233 = ptrtoint ptr %wl.i78 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %wl.i78, align 4
  %hw.i.i.i = getelementptr inbounds %struct.b43_wl, ptr %234, i32 0, i32 1
  %235 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %hw.i.i.i, align 4
  %chandef.i.i.i = getelementptr inbounds %struct.ieee80211_conf, ptr %236, i32 0, i32 7
  %237 = ptrtoint ptr %chandef.i.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %chandef.i.i.i, align 4
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %238, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %240)
  %cmp.i7.i = icmp eq i32 %240, 0
  %..i.i86 = select i1 %cmp.i7.i, i16 96, i16 32
  call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1040, i16 noundef zeroext -225, i16 noundef zeroext %..i.i86) #8
  br label %lpphy_clear_deaf.exit.i

lpphy_clear_deaf.exit.i:                          ; preds = %if.then5.i.i, %lpphy_calc_rx_iq_comp.exit.i.lpphy_clear_deaf.exit.i_crit_edge
  call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1100, i16 noundef zeroext -4) #8
  call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1100, i16 noundef zeroext -9) #8
  call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1100, i16 noundef zeroext -33) #8
  call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1100, i16 noundef zeroext -2) #8
  call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1100, i16 noundef zeroext -17) #8
  call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1100, i16 noundef zeroext -65) #8
  %241 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %242)
  %cmp.i8.i = icmp ugt i8 %242, 1
  br i1 %cmp.i8.i, label %if.then.i.i89, label %if.else.i12.i

if.then.i.i89:                                    ; preds = %lpphy_clear_deaf.exit.i
  call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1200, i16 noundef zeroext -257) #8
  %243 = ptrtoint ptr %wl.i78 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %wl.i78, align 4
  %hw.i.i10.i = getelementptr inbounds %struct.b43_wl, ptr %244, i32 0, i32 1
  %245 = ptrtoint ptr %hw.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %hw.i.i10.i, align 4
  %chandef.i.i11.i = getelementptr inbounds %struct.ieee80211_conf, ptr %246, i32 0, i32 7
  %247 = ptrtoint ptr %chandef.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %chandef.i.i11.i, align 4
  %249 = ptrtoint ptr %248 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %248, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %250)
  %cmp2.i.i88 = icmp eq i32 %250, 0
  br i1 %cmp2.i.i88, label %if.then4.i.i90, label %if.then.i.i89.lpphy_disable_rx_gain_override.exit.i_crit_edge

if.then.i.i89.lpphy_disable_rx_gain_override.exit.i_crit_edge: ; preds = %if.then.i.i89
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpphy_disable_rx_gain_override.exit.i

if.then4.i.i90:                                   ; preds = %if.then.i.i89
  call void @__sanitizer_cov_trace_pc() #10
  call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1200, i16 noundef zeroext -1025) #8
  call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1253, i16 noundef zeroext -9) #8
  br label %lpphy_disable_rx_gain_override.exit.i

if.else.i12.i:                                    ; preds = %lpphy_clear_deaf.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1200, i16 noundef zeroext -513) #8
  br label %lpphy_disable_rx_gain_override.exit.i

lpphy_disable_rx_gain_override.exit.i:            ; preds = %if.else.i12.i, %if.then4.i.i90, %if.then.i.i89.lpphy_disable_rx_gain_override.exit.i_crit_edge
  call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1083, i16 noundef zeroext -2) #8
  call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1084, i16 noundef zeroext -2049) #8
  br label %lpphy_rx_iq_cal.exit

lpphy_rx_iq_cal.exit:                             ; preds = %lpphy_disable_rx_gain_override.exit.i, %do.end.i
  call void @b43_mac_enable(ptr noundef %dev) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpphy_baseband_init(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wl.i.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %wl.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wl.i.i, align 4
  %hw.i.i.i = getelementptr inbounds %struct.b43_wl, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw.i.i.i, align 4
  %chandef.i.i.i = getelementptr inbounds %struct.ieee80211_conf, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %chandef.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chandef.i.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 0
  %add.i.i = select i1 %cmp.i.i, i32 2412, i32 5180
  %rev.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 8
  %8 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp.i = icmp ult i8 %9, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lpphy_rev0_1_table_init(ptr noundef %dev) #8
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lpphy_rev2plus_table_init(ptr noundef %dev) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  tail call void @lpphy_init_tx_gain_table(ptr noundef %dev) #8
  %10 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp8.i = icmp ult i8 %11, 2
  br i1 %cmp8.i, label %lpphy_table_init.exit, label %if.end.i.if.then_crit_edge

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lpphy_table_init.exit:                            ; preds = %if.end.i
  tail call fastcc void @lpphy_adjust_gain_table(ptr noundef %dev, i32 noundef %add.i.i) #8
  %12 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %.pr = load i8, ptr %rev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %.pr)
  %cmp = icmp ugt i8 %.pr, 1
  br i1 %cmp, label %lpphy_table_init.exit.if.then_crit_edge, label %if.else

lpphy_table_init.exit.if.then_crit_edge:          ; preds = %lpphy_table_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lpphy_table_init.exit.if.then_crit_edge, %if.end.i.if.then_crit_edge
  %lp.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 1, i32 2
  %13 = ptrtoint ptr %lp.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lp.i, align 4
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1081, i16 noundef zeroext 80) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1082, i16 noundef zeroext -30720) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1083, i16 noundef zeroext 0) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1084, i16 noundef zeroext 0) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1100, i16 noundef zeroext 0) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1200, i16 noundef zeroext 0) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1273, i16 noundef zeroext 0) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1102, i16 noundef zeroext 0) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1136, i16 noundef zeroext 16) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1047, i16 noundef zeroext -256, i16 noundef zeroext 180) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1052, i16 noundef zeroext -1793, i16 noundef zeroext 512) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1052, i16 noundef zeroext -256, i16 noundef zeroext 127) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1063, i16 noundef zeroext -241, i16 noundef zeroext 64) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1054, i16 noundef zeroext -256, i16 noundef zeroext 2) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1040, i16 noundef zeroext -16385) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1040, i16 noundef zeroext -8193) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1290, i16 noundef zeroext 1) #8
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %board_rev.i = getelementptr inbounds %struct.b43_bus_dev, ptr %16, i32 0, i32 19
  %17 = ptrtoint ptr %board_rev.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %board_rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 23, i16 %18)
  %cmp.i5 = icmp ugt i16 %18, 23
  br i1 %cmp.i5, label %if.then.i6, label %if.then.if.end.i7_crit_edge

if.then.if.end.i7_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i7

if.then.i6:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_lptab_write(ptr noundef %dev, i32 noundef 805323841, i32 noundef 236) #8
  br label %if.end.i7

if.end.i7:                                        ; preds = %if.then.i6, %if.then.if.end.i7_crit_edge
  %.sink.i = phi i16 [ 20, %if.then.i6 ], [ 16, %if.then.if.end.i7_crit_edge ]
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1290, i16 noundef zeroext -255, i16 noundef zeroext %.sink.i) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1247, i16 noundef zeroext -256, i16 noundef zeroext 244) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1247, i16 noundef zeroext 255, i16 noundef zeroext -3840) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1055, i16 noundef zeroext 72) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1059, i16 noundef zeroext -256, i16 noundef zeroext 70) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1252, i16 noundef zeroext -256, i16 noundef zeroext 16) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1065, i16 noundef zeroext -16, i16 noundef zeroext 9) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1063, i16 noundef zeroext -16) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1061, i16 noundef zeroext 255, i16 noundef zeroext 21760) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1056, i16 noundef zeroext -993, i16 noundef zeroext 160) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1063, i16 noundef zeroext -7937, i16 noundef zeroext 768) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1059, i16 noundef zeroext 255, i16 noundef zeroext 10752) #8
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %chip_id.i = getelementptr inbounds %struct.b43_bus_dev, ptr %20, i32 0, i32 20
  %21 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %chip_id.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 17189, i16 %22)
  %cmp5.i = icmp eq i16 %22, 17189
  br i1 %cmp5.i, label %land.lhs.true.i, label %if.end.i7.if.else12.i_crit_edge

if.end.i7.if.else12.i_crit_edge:                  ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else12.i

land.lhs.true.i:                                  ; preds = %if.end.i7
  %chip_rev.i = getelementptr inbounds %struct.b43_bus_dev, ptr %20, i32 0, i32 21
  %23 = ptrtoint ptr %chip_rev.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %chip_rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp9.i = icmp eq i8 %24, 0
  br i1 %cmp9.i, label %land.lhs.true.i.if.end13.i_crit_edge, label %land.lhs.true.i.if.else12.i_crit_edge

land.lhs.true.i.if.else12.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else12.i

land.lhs.true.i.if.end13.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.else12.i:                                      ; preds = %land.lhs.true.i.if.else12.i_crit_edge, %if.end.i7.if.else12.i_crit_edge
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else12.i, %land.lhs.true.i.if.end13.i_crit_edge
  %.sink132.i = phi i16 [ 7680, %if.else12.i ], [ 8448, %land.lhs.true.i.if.end13.i_crit_edge ]
  %.sink131.i = phi i16 [ 13, %if.else12.i ], [ 10, %land.lhs.true.i.if.end13.i_crit_edge ]
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1060, i16 noundef zeroext 255, i16 noundef zeroext %.sink132.i) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1061, i16 noundef zeroext -256, i16 noundef zeroext %.sink131.i) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1278, i16 noundef zeroext -32, i16 noundef zeroext 31) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1279, i16 noundef zeroext -32, i16 noundef zeroext 12) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1280, i16 noundef zeroext -256, i16 noundef zeroext 25) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1279, i16 noundef zeroext 1023, i16 noundef zeroext 15360) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1278, i16 noundef zeroext -993, i16 noundef zeroext 992) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1279, i16 noundef zeroext -32, i16 noundef zeroext 12) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1280, i16 noundef zeroext 255, i16 noundef zeroext 6400) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1056, i16 noundef zeroext -31745, i16 noundef zeroext 22528) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1056, i16 noundef zeroext -32, i16 noundef zeroext 18) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1062, i16 noundef zeroext 4095, i16 noundef zeroext -28672) #8
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %chip_id15.i = getelementptr inbounds %struct.b43_bus_dev, ptr %26, i32 0, i32 20
  %27 = ptrtoint ptr %chip_id15.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %chip_id15.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 17189, i16 %28)
  %cmp17.i = icmp eq i16 %28, 17189
  br i1 %cmp17.i, label %land.lhs.true19.i, label %if.end13.i.if.end26.i_crit_edge

if.end13.i.if.end26.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

land.lhs.true19.i:                                ; preds = %if.end13.i
  %chip_rev21.i = getelementptr inbounds %struct.b43_bus_dev, ptr %26, i32 0, i32 21
  %29 = ptrtoint ptr %chip_rev21.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %chip_rev21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp23.i = icmp eq i8 %30, 0
  br i1 %cmp23.i, label %if.then25.i, label %land.lhs.true19.i.if.end26.i_crit_edge

land.lhs.true19.i.if.end26.i_crit_edge:           ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

if.then25.i:                                      ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_lptab_write(ptr noundef %dev, i32 noundef 536879124, i32 noundef 0) #8
  tail call void @b43_lptab_write(ptr noundef %dev, i32 noundef 536879122, i32 noundef 64) #8
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then25.i, %land.lhs.true19.i.if.end26.i_crit_edge, %if.end13.i.if.end26.i_crit_edge
  %31 = ptrtoint ptr %wl.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wl.i.i, align 4
  %hw.i.i = getelementptr inbounds %struct.b43_wl, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw.i.i, align 4
  %chandef.i.i = getelementptr inbounds %struct.ieee80211_conf, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %chandef.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chandef.i.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp27.i = icmp eq i32 %38, 0
  br i1 %cmp27.i, label %if.then29.i, label %if.else30.i

if.then29.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1040, i16 noundef zeroext 64) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1040, i16 noundef zeroext -3841, i16 noundef zeroext 2816) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 48, i16 noundef zeroext -8, i16 noundef zeroext 6) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1046, i16 noundef zeroext 255, i16 noundef zeroext -25344) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1046, i16 noundef zeroext -256, i16 noundef zeroext 161) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1050, i16 noundef zeroext 255) #8
  br label %if.end31.i

if.else30.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1040, i16 noundef zeroext -65) #8
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.else30.i, %if.then29.i
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1074, i16 noundef zeroext -256, i16 noundef zeroext 179) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1074, i16 noundef zeroext 255, i16 noundef zeroext -21248) #8
  %rx_pwr_offset.i = getelementptr inbounds %struct.b43_phy_lp, ptr %14, i32 0, i32 13
  %39 = ptrtoint ptr %rx_pwr_offset.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %rx_pwr_offset.i, align 2
  %conv32.i = zext i8 %40 to i16
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1076, i16 noundef zeroext -256, i16 noundef zeroext %conv32.i) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1098, i16 noundef zeroext 68) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1098, i16 noundef zeroext 128) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1085, i16 noundef zeroext -22188) #8
  %rssi_gs.i = getelementptr inbounds %struct.b43_phy_lp, ptr %14, i32 0, i32 21
  %41 = ptrtoint ptr %rssi_gs.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %rssi_gs.i, align 1
  %conv34.i = zext i8 %42 to i16
  %shl.i = shl i16 %conv34.i, 10
  %rssi_vc.i = getelementptr inbounds %struct.b43_phy_lp, ptr %14, i32 0, i32 20
  %43 = ptrtoint ptr %rssi_vc.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %rssi_vc.i, align 2
  %conv36.i = zext i8 %44 to i16
  %shl37.i = shl nuw nsw i16 %conv36.i, 4
  %rssi_vf.i = getelementptr inbounds %struct.b43_phy_lp, ptr %14, i32 0, i32 19
  %45 = ptrtoint ptr %rssi_vf.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %rssi_vf.i, align 1
  %conv39.i = zext i8 %46 to i16
  %or.i = or i16 %shl.i, %shl37.i
  %or38.i = or i16 %or.i, %conv39.i
  %or40.i = or i16 %or38.i, 8192
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1086, i16 noundef zeroext %or40.i) #8
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  %chip_id43.i = getelementptr inbounds %struct.b43_bus_dev, ptr %48, i32 0, i32 20
  %49 = ptrtoint ptr %chip_id43.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %chip_id43.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 17189, i16 %50)
  %cmp45.i = icmp eq i16 %50, 17189
  br i1 %cmp45.i, label %land.lhs.true47.i, label %if.end31.i.lpphy_baseband_rev2plus_init.exit_crit_edge

if.end31.i.lpphy_baseband_rev2plus_init.exit_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpphy_baseband_rev2plus_init.exit

land.lhs.true47.i:                                ; preds = %if.end31.i
  %chip_rev49.i = getelementptr inbounds %struct.b43_bus_dev, ptr %48, i32 0, i32 21
  %51 = ptrtoint ptr %chip_rev49.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %chip_rev49.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %cmp51.i = icmp eq i8 %52, 0
  br i1 %cmp51.i, label %if.then53.i, label %land.lhs.true47.i.lpphy_baseband_rev2plus_init.exit_crit_edge

land.lhs.true47.i.lpphy_baseband_rev2plus_init.exit_crit_edge: ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpphy_baseband_rev2plus_init.exit

if.then53.i:                                      ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1078, i16 noundef zeroext 28) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1082, i16 noundef zeroext 255, i16 noundef zeroext -30720) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1079, i16 noundef zeroext -964, i16 noundef zeroext 1024) #8
  br label %lpphy_baseband_rev2plus_init.exit

lpphy_baseband_rev2plus_init.exit:                ; preds = %if.then53.i, %land.lhs.true47.i.lpphy_baseband_rev2plus_init.exit_crit_edge, %if.end31.i.lpphy_baseband_rev2plus_init.exit_crit_edge
  tail call fastcc void @lpphy_save_dig_flt_state(ptr noundef %dev) #8
  br label %if.end

if.else:                                          ; preds = %lpphy_table_init.exit
  %53 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev, align 4
  %55 = getelementptr inbounds %struct.b43_bus_dev, ptr %54, i32 0, i32 1
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %bus2.i = getelementptr inbounds %struct.ssb_device, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %bus2.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bus2.i, align 4
  %bus_sprom.i = getelementptr inbounds %struct.b43_bus_dev, ptr %54, i32 0, i32 23
  %60 = ptrtoint ptr %bus_sprom.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bus_sprom.i, align 4
  %lp.i8 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 1, i32 2
  %62 = ptrtoint ptr %lp.i8 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %lp.i8, align 4
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1081, i16 noundef zeroext -2049) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1082, i16 noundef zeroext 0) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1083, i16 noundef zeroext 0) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1100, i16 noundef zeroext 0) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1200, i16 noundef zeroext 0) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1081, i16 noundef zeroext 4) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1047, i16 noundef zeroext -256, i16 noundef zeroext 120) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1056, i16 noundef zeroext -31745, i16 noundef zeroext 22528) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1136, i16 noundef zeroext 22) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1078, i16 noundef zeroext -8, i16 noundef zeroext 4) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1061, i16 noundef zeroext 255, i16 noundef zeroext 21504) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1059, i16 noundef zeroext 255, i16 noundef zeroext 9216) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1060, i16 noundef zeroext 255, i16 noundef zeroext 8448) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1061, i16 noundef zeroext -256, i16 noundef zeroext 6) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1198, i16 noundef zeroext -2) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1056, i16 noundef zeroext -32, i16 noundef zeroext 5) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1056, i16 noundef zeroext -993, i16 noundef zeroext 384) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1056, i16 noundef zeroext -31745, i16 noundef zeroext 15360) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1063, i16 noundef zeroext -16, i16 noundef zeroext 5) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1073, i16 noundef zeroext -64, i16 noundef zeroext 26) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1074, i16 noundef zeroext -256, i16 noundef zeroext 179) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1074, i16 noundef zeroext 255, i16 noundef zeroext -21248) #8
  %rx_pwr_offset.i9 = getelementptr inbounds %struct.b43_phy_lp, ptr %63, i32 0, i32 13
  %64 = ptrtoint ptr %rx_pwr_offset.i9 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %rx_pwr_offset.i9, align 2
  %conv.i = zext i8 %65 to i16
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1076, i16 noundef zeroext -256, i16 noundef zeroext %conv.i) #8
  %boardflags_lo.i = getelementptr inbounds %struct.ssb_sprom, ptr %61, i32 0, i32 70
  %66 = ptrtoint ptr %boardflags_lo.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %boardflags_lo.i, align 4
  %68 = and i16 %67, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool.not.i = icmp eq i16 %68, 0
  br i1 %tobool.not.i, label %if.else.if.else.i17_crit_edge, label %land.lhs.true.i14

if.else.if.else.i17_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i17

land.lhs.true.i14:                                ; preds = %if.else
  %69 = ptrtoint ptr %wl.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %wl.i.i, align 4
  %hw.i.i11 = getelementptr inbounds %struct.b43_wl, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %hw.i.i11 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hw.i.i11, align 4
  %chandef.i.i12 = getelementptr inbounds %struct.ieee80211_conf, ptr %72, i32 0, i32 7
  %73 = ptrtoint ptr %chandef.i.i12 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %chandef.i.i12, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %76)
  %cmp.i13 = icmp eq i32 %76, 1
  br i1 %cmp.i13, label %land.lhs.true.i14.if.then.i16_crit_edge, label %lor.lhs.false.i

land.lhs.true.i14.if.then.i16_crit_edge:          ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i16

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i14
  %boardflags_hi.i = getelementptr inbounds %struct.ssb_sprom, ptr %61, i32 0, i32 71
  %77 = ptrtoint ptr %boardflags_hi.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %boardflags_hi.i, align 2
  %79 = and i16 %78, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %tobool8.not.i = icmp eq i16 %79, 0
  br i1 %tobool8.not.i, label %lor.lhs.false.i.if.else.i17_crit_edge, label %lor.lhs.false.i.if.then.i16_crit_edge

lor.lhs.false.i.if.then.i16_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i16

lor.lhs.false.i.if.else.i17_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i17

if.then.i16:                                      ; preds = %lor.lhs.false.i.if.then.i16_crit_edge, %land.lhs.true.i14.if.then.i16_crit_edge
  %chipco.i = getelementptr inbounds %struct.ssb_bus, ptr %59, i32 0, i32 17
  tail call void @ssb_pmu_set_ldo_voltage(ptr noundef %chipco.i, i32 noundef 0, i32 noundef 40) #8
  tail call void @ssb_pmu_set_ldo_paref(ptr noundef %chipco.i, i1 noundef zeroext true) #8
  %80 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %rev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %cmp12.i = icmp eq i8 %81, 0
  br i1 %cmp12.i, label %if.then.i16.if.end16.sink.split.i_crit_edge, label %if.then.i16.if.end16.i_crit_edge

if.then.i16.if.end16.i_crit_edge:                 ; preds = %if.then.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.then.i16.if.end16.sink.split.i_crit_edge:      ; preds = %if.then.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.sink.split.i

if.else.i17:                                      ; preds = %lor.lhs.false.i.if.else.i17_crit_edge, %if.else.if.else.i17_crit_edge
  %chipco15.i = getelementptr inbounds %struct.ssb_bus, ptr %59, i32 0, i32 17
  tail call void @ssb_pmu_set_ldo_paref(ptr noundef %chipco15.i, i1 noundef zeroext false) #8
  br label %if.end16.sink.split.i

if.end16.sink.split.i:                            ; preds = %if.else.i17, %if.then.i16.if.end16.sink.split.i_crit_edge
  %.sink291.i = phi i16 [ 32, %if.else.i17 ], [ 16, %if.then.i16.if.end16.sink.split.i_crit_edge ]
  %.sink.ph.i = phi i32 [ 100, %if.else.i17 ], [ 60, %if.then.i16.if.end16.sink.split.i_crit_edge ]
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1196, i16 noundef zeroext -49, i16 noundef zeroext %.sink291.i) #8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.end16.sink.split.i, %if.then.i16.if.end16.i_crit_edge
  %.sink.i18 = phi i32 [ 60, %if.then.i16.if.end16.i_crit_edge ], [ %.sink.ph.i, %if.end16.sink.split.i ]
  tail call void @b43_lptab_write(ptr noundef %dev, i32 noundef 536882183, i32 noundef %.sink.i18) #8
  %rssi_vf.i19 = getelementptr inbounds %struct.b43_phy_lp, ptr %63, i32 0, i32 19
  %82 = ptrtoint ptr %rssi_vf.i19 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %rssi_vf.i19, align 1
  %conv17.i = zext i8 %83 to i16
  %rssi_vc.i20 = getelementptr inbounds %struct.b43_phy_lp, ptr %63, i32 0, i32 20
  %84 = ptrtoint ptr %rssi_vc.i20 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %rssi_vc.i20, align 2
  %conv18.i = zext i8 %85 to i16
  %shl.i21 = shl nuw nsw i16 %conv18.i, 4
  %or.i22 = or i16 %shl.i21, %conv17.i
  %or19.i = or i16 %or.i22, -24576
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1085, i16 noundef zeroext %or19.i) #8
  %boardflags_hi21.i = getelementptr inbounds %struct.ssb_sprom, ptr %61, i32 0, i32 71
  %86 = ptrtoint ptr %boardflags_hi21.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %boardflags_hi21.i, align 2
  %88 = and i16 %87, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %tobool24.not.i = icmp eq i16 %88, 0
  %.sink290.i = select i1 %tobool24.not.i, i16 682, i16 2730
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1086, i16 noundef zeroext -4096, i16 noundef zeroext %.sink290.i) #8
  tail call void @b43_lptab_write(ptr noundef %dev, i32 noundef 536882177, i32 noundef 24) #8
  %bx_arch.i = getelementptr inbounds %struct.b43_phy_lp, ptr %63, i32 0, i32 23
  %89 = ptrtoint ptr %bx_arch.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %bx_arch.i, align 1
  %conv28.i = zext i8 %90 to i16
  %shl29.i = shl nuw nsw i16 %conv28.i, 1
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1198, i16 noundef zeroext -7, i16 noundef zeroext %shl29.i) #8
  %91 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %rev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %92)
  %cmp34.i = icmp eq i8 %92, 1
  br i1 %cmp34.i, label %land.lhs.true36.i, label %if.end16.i.if.else42.i_crit_edge

if.end16.i.if.else42.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else42.i

land.lhs.true36.i:                                ; preds = %if.end16.i
  %93 = ptrtoint ptr %boardflags_hi21.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %boardflags_hi21.i, align 2
  %95 = and i16 %94, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %tobool40.not.i = icmp eq i16 %95, 0
  br i1 %tobool40.not.i, label %land.lhs.true36.i.if.else42.i_crit_edge, label %if.then41.i

land.lhs.true36.i.if.else42.i_crit_edge:          ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else42.i

if.then41.i:                                      ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1102, i16 noundef zeroext -64, i16 noundef zeroext 10) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1102, i16 noundef zeroext 16128, i16 noundef zeroext 2304) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1103, i16 noundef zeroext -64, i16 noundef zeroext 10) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1103, i16 noundef zeroext -16129, i16 noundef zeroext 2816) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1211, i16 noundef zeroext -64, i16 noundef zeroext 10) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1211, i16 noundef zeroext -16129, i16 noundef zeroext 1024) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1212, i16 noundef zeroext -64, i16 noundef zeroext 10) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1212, i16 noundef zeroext -16129, i16 noundef zeroext 2816) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1223, i16 noundef zeroext -64, i16 noundef zeroext 10) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1223, i16 noundef zeroext -16129, i16 noundef zeroext 2304) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1224, i16 noundef zeroext -64, i16 noundef zeroext 10) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1224, i16 noundef zeroext -16129, i16 noundef zeroext 2816) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1225, i16 noundef zeroext -64, i16 noundef zeroext 10) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1225, i16 noundef zeroext -16129, i16 noundef zeroext 2304) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1226, i16 noundef zeroext -64, i16 noundef zeroext 10) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1226, i16 noundef zeroext -16129, i16 noundef zeroext 2816) #8
  br label %if.end79.i

if.else42.i:                                      ; preds = %land.lhs.true36.i.if.else42.i_crit_edge, %if.end16.i.if.else42.i_crit_edge
  %96 = ptrtoint ptr %wl.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %wl.i.i, align 4
  %hw.i286.i = getelementptr inbounds %struct.b43_wl, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %hw.i286.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %hw.i286.i, align 4
  %chandef.i287.i = getelementptr inbounds %struct.ieee80211_conf, ptr %99, i32 0, i32 7
  %100 = ptrtoint ptr %chandef.i287.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %chandef.i287.i, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %103)
  %cmp45.i23 = icmp eq i32 %103, 1
  br i1 %cmp45.i23, label %if.else42.i.if.then63.i_crit_edge, label %lor.lhs.false47.i

if.else42.i.if.then63.i_crit_edge:                ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then63.i

lor.lhs.false47.i:                                ; preds = %if.else42.i
  %104 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev, align 4
  %board_type.i = getelementptr inbounds %struct.b43_bus_dev, ptr %105, i32 0, i32 18
  %106 = ptrtoint ptr %board_type.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %board_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1162, i16 %107)
  %cmp50.i = icmp eq i16 %107, 1162
  br i1 %cmp50.i, label %lor.lhs.false47.i.if.then63.i_crit_edge, label %lor.lhs.false52.i

lor.lhs.false47.i.if.then63.i_crit_edge:          ; preds = %lor.lhs.false47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then63.i

lor.lhs.false52.i:                                ; preds = %lor.lhs.false47.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %cmp56.i = icmp eq i8 %92, 0
  br i1 %cmp56.i, label %land.lhs.true58.i, label %lor.lhs.false52.i.if.else64.i_crit_edge

lor.lhs.false52.i.if.else64.i_crit_edge:          ; preds = %lor.lhs.false52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else64.i

land.lhs.true58.i:                                ; preds = %lor.lhs.false52.i
  %108 = ptrtoint ptr %boardflags_lo.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %boardflags_lo.i, align 4
  %110 = and i16 %109, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %110)
  %tobool62.not.i = icmp eq i16 %110, 0
  br i1 %tobool62.not.i, label %land.lhs.true58.i.if.else64.i_crit_edge, label %land.lhs.true58.i.if.then63.i_crit_edge

land.lhs.true58.i.if.then63.i_crit_edge:          ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then63.i

land.lhs.true58.i.if.else64.i_crit_edge:          ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else64.i

if.then63.i:                                      ; preds = %land.lhs.true58.i.if.then63.i_crit_edge, %lor.lhs.false47.i.if.then63.i_crit_edge, %if.else42.i.if.then63.i_crit_edge
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1102, i16 noundef zeroext -64, i16 noundef zeroext 1) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1102, i16 noundef zeroext -16129, i16 noundef zeroext 1024) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1103, i16 noundef zeroext -64, i16 noundef zeroext 1) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1103, i16 noundef zeroext -16129, i16 noundef zeroext 1280) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1211, i16 noundef zeroext -64, i16 noundef zeroext 2) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1211, i16 noundef zeroext -16129, i16 noundef zeroext 2048) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1212, i16 noundef zeroext -64, i16 noundef zeroext 2) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1212, i16 noundef zeroext -16129, i16 noundef zeroext 2560) #8
  br label %if.end79.i

if.else64.i:                                      ; preds = %land.lhs.true58.i.if.else64.i_crit_edge, %lor.lhs.false52.i.if.else64.i_crit_edge
  br i1 %cmp34.i, label %if.else64.i.if.then75.i_crit_edge, label %lor.lhs.false70.i

if.else64.i.if.then75.i_crit_edge:                ; preds = %if.else64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then75.i

lor.lhs.false70.i:                                ; preds = %if.else64.i
  %111 = ptrtoint ptr %boardflags_lo.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %boardflags_lo.i, align 4
  %113 = and i16 %112, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %113)
  %tobool74.not.i = icmp eq i16 %113, 0
  br i1 %tobool74.not.i, label %if.else76.i, label %lor.lhs.false70.i.if.then75.i_crit_edge

lor.lhs.false70.i.if.then75.i_crit_edge:          ; preds = %lor.lhs.false70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then75.i

if.then75.i:                                      ; preds = %lor.lhs.false70.i.if.then75.i_crit_edge, %if.else64.i.if.then75.i_crit_edge
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1102, i16 noundef zeroext -64, i16 noundef zeroext 4) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1102, i16 noundef zeroext -16129, i16 noundef zeroext 2048) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1103, i16 noundef zeroext -64, i16 noundef zeroext 4) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1103, i16 noundef zeroext -16129, i16 noundef zeroext 3072) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1211, i16 noundef zeroext -64, i16 noundef zeroext 2) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1211, i16 noundef zeroext -16129, i16 noundef zeroext 256) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1212, i16 noundef zeroext -64, i16 noundef zeroext 2) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1212, i16 noundef zeroext -16129, i16 noundef zeroext 768) #8
  br label %if.end79.i

if.else76.i:                                      ; preds = %lor.lhs.false70.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1102, i16 noundef zeroext -64, i16 noundef zeroext 10) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1102, i16 noundef zeroext -16129, i16 noundef zeroext 2304) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1103, i16 noundef zeroext -64, i16 noundef zeroext 10) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1103, i16 noundef zeroext -16129, i16 noundef zeroext 2816) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1211, i16 noundef zeroext -64, i16 noundef zeroext 6) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1211, i16 noundef zeroext -16129, i16 noundef zeroext 1280) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1212, i16 noundef zeroext -64, i16 noundef zeroext 6) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1212, i16 noundef zeroext -16129, i16 noundef zeroext 1792) #8
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.else76.i, %if.then75.i, %if.then63.i, %if.then41.i
  %114 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %rev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %115)
  %cmp83.i = icmp eq i8 %115, 1
  br i1 %cmp83.i, label %land.lhs.true85.i, label %if.end79.i.if.end91.i_crit_edge

if.end79.i.if.end91.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91.i

land.lhs.true85.i:                                ; preds = %if.end79.i
  %116 = ptrtoint ptr %boardflags_hi21.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %boardflags_hi21.i, align 2
  %118 = and i16 %117, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %118)
  %tobool89.not.i = icmp eq i16 %118, 0
  br i1 %tobool89.not.i, label %land.lhs.true85.i.if.end91.i_crit_edge, label %if.then90.i

land.lhs.true85.i.if.end91.i_crit_edge:           ; preds = %land.lhs.true85.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91.i

if.then90.i:                                      ; preds = %land.lhs.true85.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_phy_copy(ptr noundef %dev, i16 noundef zeroext 1223, i16 noundef zeroext 1102) #8
  tail call void @b43_phy_copy(ptr noundef %dev, i16 noundef zeroext 1224, i16 noundef zeroext 1103) #8
  tail call void @b43_phy_copy(ptr noundef %dev, i16 noundef zeroext 1225, i16 noundef zeroext 1211) #8
  tail call void @b43_phy_copy(ptr noundef %dev, i16 noundef zeroext 1226, i16 noundef zeroext 1212) #8
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.then90.i, %land.lhs.true85.i.if.end91.i_crit_edge, %if.end79.i.if.end91.i_crit_edge
  %119 = ptrtoint ptr %boardflags_hi21.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %boardflags_hi21.i, align 2
  %121 = and i16 %120, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %121)
  %tobool95.not.i = icmp eq i16 %121, 0
  br i1 %tobool95.not.i, label %if.end91.i.if.end109.i_crit_edge, label %land.lhs.true96.i

if.end91.i.if.end109.i_crit_edge:                 ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109.i

land.lhs.true96.i:                                ; preds = %if.end91.i
  %122 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev, align 4
  %chip_id.i24 = getelementptr inbounds %struct.b43_bus_dev, ptr %123, i32 0, i32 20
  %124 = ptrtoint ptr %chip_id.i24 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %chip_id.i24, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21332, i16 %125)
  %cmp99.i = icmp eq i16 %125, 21332
  br i1 %cmp99.i, label %land.lhs.true101.i, label %land.lhs.true96.i.if.end109.i_crit_edge

land.lhs.true96.i.if.end109.i_crit_edge:          ; preds = %land.lhs.true96.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109.i

land.lhs.true101.i:                               ; preds = %land.lhs.true96.i
  %chip_pkg.i = getelementptr inbounds %struct.b43_bus_dev, ptr %123, i32 0, i32 22
  %126 = ptrtoint ptr %chip_pkg.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %chip_pkg.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %127)
  %cmp104.i = icmp eq i8 %127, 1
  br i1 %cmp104.i, label %if.then106.i, label %land.lhs.true101.i.if.end109.i_crit_edge

land.lhs.true101.i.if.end109.i_crit_edge:         ; preds = %land.lhs.true101.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109.i

if.then106.i:                                     ; preds = %land.lhs.true101.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1040, i16 noundef zeroext 6) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1215, i16 noundef zeroext 5) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1214, i16 noundef zeroext -1) #8
  %call107.i = tail call i64 @b43_hf_read(ptr noundef %dev) #8
  %or108.i = or i64 %call107.i, 8796093022208
  tail call void @b43_hf_write(ptr noundef %dev, i64 noundef %or108.i) #8
  br label %if.end109.i

if.end109.i:                                      ; preds = %if.then106.i, %land.lhs.true101.i.if.end109.i_crit_edge, %land.lhs.true96.i.if.end109.i_crit_edge, %if.end91.i.if.end109.i_crit_edge
  %128 = ptrtoint ptr %wl.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %wl.i.i, align 4
  %hw.i288.i = getelementptr inbounds %struct.b43_wl, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %hw.i288.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %hw.i288.i, align 4
  %chandef.i289.i = getelementptr inbounds %struct.ieee80211_conf, ptr %131, i32 0, i32 7
  %132 = ptrtoint ptr %chandef.i289.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %chandef.i289.i, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %133, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %cmp112.i = icmp eq i32 %135, 0
  br i1 %cmp112.i, label %if.then114.i, label %if.else115.i

if.then114.i:                                     ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1096, i16 noundef zeroext -32768) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1040, i16 noundef zeroext 64) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1046, i16 noundef zeroext 255, i16 noundef zeroext -23552) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1040, i16 noundef zeroext -3841, i16 noundef zeroext 2816) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 48, i16 noundef zeroext -8, i16 noundef zeroext 7) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1071, i16 noundef zeroext -8, i16 noundef zeroext 3) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1071, i16 noundef zeroext -57, i16 noundef zeroext 32) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1050, i16 noundef zeroext 255) #8
  br label %if.end116.i

if.else115.i:                                     ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1096, i16 noundef zeroext 32767) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1040, i16 noundef zeroext -65) #8
  br label %if.end116.i

if.end116.i:                                      ; preds = %if.else115.i, %if.then114.i
  %136 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %rev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %137)
  %cmp120.i = icmp eq i8 %137, 1
  br i1 %cmp120.i, label %if.then122.i, label %if.end116.i.if.end_crit_edge

if.end116.i.if.end_crit_edge:                     ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then122.i:                                     ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #10
  %call123.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1056) #8
  %138 = lshr i16 %call123.i, 5
  %139 = and i16 %138, 31
  %or130.i = mul nuw nsw i16 %139, 33
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1219, i16 noundef zeroext %or130.i) #8
  %call132.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1063) #8
  %140 = lshr i16 %call132.i, 8
  %141 = and i16 %140, 31
  %or140.i = mul nuw nsw i16 %141, 33
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1220, i16 noundef zeroext %or140.i) #8
  %call142.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1061) #8
  %and144.i = and i16 %call142.i, 255
  %shl147.i = shl i16 %call142.i, 8
  %or149.i = or i16 %shl147.i, %and144.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1221, i16 noundef zeroext %or149.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then122.i, %if.end116.i.if.end_crit_edge, %lpphy_baseband_rev2plus_init.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43dbg(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpphy_rev0_1_table_init(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpphy_rev2plus_table_init(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lpphy_init_tx_gain_table(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpphy_adjust_gain_table(ptr noundef %dev, i32 noundef %freq) unnamed_addr #0 align 64 {
entry:
  %temp = alloca [3 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lp = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 1, i32 2
  %0 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lp, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %temp) #8
  %rev = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 8
  %2 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp ugt i8 %3, 1
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !47

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 163, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %wl = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wl, align 4
  %hw.i = getelementptr inbounds %struct.b43_wl, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw.i, align 4
  %chandef.i = getelementptr inbounds %struct.ieee80211_conf, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chandef.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp21 = icmp eq i32 %11, 0
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %tx_isolation_med_band = getelementptr inbounds %struct.b43_phy_lp, ptr %1, i32 0, i32 1
  br label %if.end39

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 5321, i32 %freq)
  %cmp25 = icmp ult i32 %freq, 5321
  br i1 %cmp25, label %if.then27, label %if.else29

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %tx_isolation_low_band = getelementptr inbounds %struct.b43_phy_lp, ptr %1, i32 0, i32 2
  br label %if.end39

if.else29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 5701, i32 %freq)
  %cmp30 = icmp ult i32 %freq, 5701
  br i1 %cmp30, label %if.then32, label %if.else35

if.then32:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #10
  %tx_isolation_med_band33 = getelementptr inbounds %struct.b43_phy_lp, ptr %1, i32 0, i32 1
  br label %if.end39

if.else35:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #10
  %tx_isolation_hi_band = getelementptr inbounds %struct.b43_phy_lp, ptr %1, i32 0, i32 3
  br label %if.end39

if.end39:                                         ; preds = %if.else35, %if.then32, %if.then27, %if.then23
  %isolation.0.in.in = phi ptr [ %tx_isolation_med_band, %if.then23 ], [ %tx_isolation_low_band, %if.then27 ], [ %tx_isolation_med_band33, %if.then32 ], [ %tx_isolation_hi_band, %if.else35 ]
  %12 = getelementptr inbounds [3 x i16], ptr %temp, i32 0, i32 2
  %13 = getelementptr inbounds [3 x i16], ptr %temp, i32 0, i32 1
  %14 = ptrtoint ptr %isolation.0.in.in to i32
  call void @__asan_load1_noabort(i32 %14)
  %isolation.0.in = load i8, ptr %isolation.0.in.in, align 1
  %conv40 = zext i8 %isolation.0.in to i16
  %sub = add nsw i16 %conv40, -26
  %div61 = sdiv i16 %sub, 12
  %conv41 = shl i16 %div61, 12
  %15 = ptrtoint ptr %temp to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv41, ptr %temp, align 2
  %add = add i16 %conv41, 4096
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %add, ptr %13, align 2
  %add48 = add i16 %conv41, 8192
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %add48, ptr %12, align 2
  call void @b43_lptab_write_bulk(ptr noundef %dev, i32 noundef 536884224, i32 noundef 3, ptr noundef nonnull %temp) #8
  call void @b43_lptab_write_bulk(ptr noundef %dev, i32 noundef 536883200, i32 noundef 3, ptr noundef nonnull %temp) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %temp) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_lptab_write_bulk(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_phy_write(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_phy_set(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_phy_maskset(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_phy_mask(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_lptab_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpphy_save_dig_flt_state(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lp = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 1, i32 2
  %0 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lp, align 4
  %call = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1217) #8
  %arrayidx1 = getelementptr %struct.b43_phy_lp, ptr %1, i32 0, i32 27, i32 0
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %call, ptr %arrayidx1, align 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1217, i16 noundef zeroext -8610) #8
  %call.1 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1218) #8
  %arrayidx1.1 = getelementptr %struct.b43_phy_lp, ptr %1, i32 0, i32 27, i32 1
  %3 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %call.1, ptr %arrayidx1.1, align 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1218, i16 noundef zeroext -6094) #8
  %call.2 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1219) #8
  %arrayidx1.2 = getelementptr %struct.b43_phy_lp, ptr %1, i32 0, i32 27, i32 2
  %4 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %call.2, ptr %arrayidx1.2, align 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1219, i16 noundef zeroext -7375) #8
  %call.3 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1220) #8
  %arrayidx1.3 = getelementptr %struct.b43_phy_lp, ptr %1, i32 0, i32 27, i32 3
  %5 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %call.3, ptr %arrayidx1.3, align 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1220, i16 noundef zeroext 19750) #8
  %call.4 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1221) #8
  %arrayidx1.4 = getelementptr %struct.b43_phy_lp, ptr %1, i32 0, i32 27, i32 4
  %6 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %call.4, ptr %arrayidx1.4, align 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1221, i16 noundef zeroext 38) #8
  %call.5 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1222) #8
  %arrayidx1.5 = getelementptr %struct.b43_phy_lp, ptr %1, i32 0, i32 27, i32 5
  %7 = ptrtoint ptr %arrayidx1.5 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %call.5, ptr %arrayidx1.5, align 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1222, i16 noundef zeroext 5152) #8
  %call.6 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1223) #8
  %arrayidx1.6 = getelementptr %struct.b43_phy_lp, ptr %1, i32 0, i32 27, i32 6
  %8 = ptrtoint ptr %arrayidx1.6 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %call.6, ptr %arrayidx1.6, align 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1223, i16 noundef zeroext 32) #8
  %call.7 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1224) #8
  %arrayidx1.7 = getelementptr %struct.b43_phy_lp, ptr %1, i32 0, i32 27, i32 7
  %9 = ptrtoint ptr %arrayidx1.7 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %call.7, ptr %arrayidx1.7, align 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1224, i16 noundef zeroext -504) #8
  %call.8 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1231) #8
  %arrayidx1.8 = getelementptr %struct.b43_phy_lp, ptr %1, i32 0, i32 27, i32 8
  %10 = ptrtoint ptr %arrayidx1.8 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %call.8, ptr %arrayidx1.8, align 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1231, i16 noundef zeroext 8) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @b43_phy_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @ssb_pmu_set_ldo_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @ssb_pmu_set_ldo_paref(ptr noundef, i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_phy_copy(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_hf_write(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @b43_hf_read(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @b2062_upload_init_table(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_radio_write(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @b43_radio_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_radio_set(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_radio_mask(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @b2063_upload_init_table(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpphy_set_tx_power_control(ptr noundef %dev, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lp = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 1, i32 2
  %0 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lp, align 4
  %call.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1188) #8
  %2 = and i16 %call.i, -8192
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.10)
  switch i16 %2, label %sw.default.i [
    i16 0, label %sw.bb.i
    i16 -32768, label %sw.bb1.i
    i16 -8192, label %sw.bb3.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %1, align 4
  br label %lpphy_read_tx_pctl_mode_from_hardware.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %1, align 4
  br label %lpphy_read_tx_pctl_mode_from_hardware.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %1, align 4
  br label %lpphy_read_tx_pctl_mode_from_hardware.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %1, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1104, i32 noundef 9, ptr noundef null) #8
  br label %lpphy_read_tx_pctl_mode_from_hardware.exit

lpphy_read_tx_pctl_mode_from_hardware.exit:       ; preds = %sw.default.i, %sw.bb3.i, %sw.bb1.i, %sw.bb.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %mode)
  %cmp = icmp eq i32 %9, %mode
  br i1 %cmp, label %lpphy_read_tx_pctl_mode_from_hardware.exit.cleanup_crit_edge, label %if.end

lpphy_read_tx_pctl_mode_from_hardware.exit.cleanup_crit_edge: ; preds = %lpphy_read_tx_pctl_mode_from_hardware.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lpphy_read_tx_pctl_mode_from_hardware.exit
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mode, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp2 = icmp ne i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mode)
  %cmp4 = icmp eq i32 %mode, 3
  %or.cond = and i1 %cmp4, %cmp2
  br i1 %or.cond, label %if.then5, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then5:                                         ; preds = %if.end
  %tssi_idx = getelementptr inbounds %struct.b43_phy_lp, ptr %1, i32 0, i32 15
  %11 = ptrtoint ptr %tssi_idx to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %tssi_idx, align 2
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1188, i16 noundef zeroext -128, i16 noundef zeroext %12) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1189, i16 noundef zeroext -28673, i16 noundef zeroext 0) #8
  %rev.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 8
  %13 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %cmp.i = icmp ult i8 %14, 2
  br i1 %cmp.i, label %if.then5.lpphy_disable_tx_gain_override.exit_crit_edge, label %if.else.i

if.then5.lpphy_disable_tx_gain_override.exit_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpphy_disable_tx_gain_override.exit

if.else.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1200, i16 noundef zeroext -129) #8
  br label %lpphy_disable_tx_gain_override.exit

lpphy_disable_tx_gain_override.exit:              ; preds = %if.else.i, %if.then5.lpphy_disable_tx_gain_override.exit_crit_edge
  %.sink.i = phi i16 [ -16385, %if.else.i ], [ -257, %if.then5.lpphy_disable_tx_gain_override.exit_crit_edge ]
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1200, i16 noundef zeroext %.sink.i) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1083, i16 noundef zeroext -65) #8
  %tx_pwr_idx_over = getelementptr inbounds %struct.b43_phy_lp, ptr %1, i32 0, i32 18
  %15 = ptrtoint ptr %tx_pwr_idx_over to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %tx_pwr_idx_over, align 4
  br label %if.end8

if.end8:                                          ; preds = %lpphy_disable_tx_gain_override.exit, %if.end.if.end8_crit_edge
  %rev = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 8
  %16 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp11 = icmp ugt i8 %17, 1
  br i1 %cmp11, label %if.then13, label %if.end8.if.end19_crit_edge

if.end8.if.end19_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then13:                                        ; preds = %if.end8
  br i1 %cmp4, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1232, i16 noundef zeroext 2) #8
  br label %if.end19

if.else17:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1232, i16 noundef zeroext -3) #8
  br label %if.end19

if.end19:                                         ; preds = %if.else17, %if.then16, %if.end8.if.end19_crit_edge
  %18 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lp, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %switch.tableidx = add i32 %21, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %22 = icmp ult i32 %switch.tableidx, 3
  br i1 %22, label %switch.lookup, label %do.end.i

do.end.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1127, i32 noundef 9, ptr noundef null) #8
  br label %lpphy_write_tx_pctl_mode_to_hardware.exit

switch.lookup:                                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [3 x i16], ptr @switch.table.lpphy_set_tx_power_control, i32 0, i32 %switch.tableidx
  %23 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %23)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %lpphy_write_tx_pctl_mode_to_hardware.exit

lpphy_write_tx_pctl_mode_to_hardware.exit:        ; preds = %switch.lookup, %do.end.i
  %ctl.0.i = phi i16 [ 0, %do.end.i ], [ %switch.load, %switch.lookup ]
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1188, i16 noundef zeroext 8191, i16 noundef zeroext %ctl.0.i) #8
  br label %cleanup

cleanup:                                          ; preds = %lpphy_write_tx_pctl_mode_to_hardware.exit, %lpphy_read_tx_pctl_mode_from_hardware.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpphy_run_ddfs(ptr noundef %dev, i32 noundef %incr1, i32 noundef %incr2) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1207, i16 noundef zeroext -3) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1096, i16 noundef zeroext -33) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1208, i16 noundef zeroext -128) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1208, i16 noundef zeroext -32513) #8
  %conv = trunc i32 %incr1 to i16
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1209, i16 noundef zeroext -128, i16 noundef zeroext %conv) #8
  %incr2.tr = trunc i32 %incr2 to i16
  %conv1 = shl i16 %incr2.tr, 8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1209, i16 noundef zeroext -32513, i16 noundef zeroext %conv1) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1207, i16 noundef zeroext -9, i16 noundef zeroext 8) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1207, i16 noundef zeroext -17, i16 noundef zeroext 16) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1207, i16 noundef zeroext -97, i16 noundef zeroext 0) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1207, i16 noundef zeroext -5) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1207, i16 noundef zeroext 2) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1096, i16 noundef zeroext 32) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @lpphy_rx_iq_est(ptr noundef %dev, i16 noundef zeroext %samples, ptr nocapture noundef %iq_est) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1040, i16 noundef zeroext -9) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1154, i16 noundef zeroext %samples) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1153, i16 noundef zeroext -256, i16 noundef zeroext 32) #8
  tail call void @b43_phy_mask(ptr noundef %dev, i16 noundef zeroext 1153, i16 noundef zeroext -257) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1153, i16 noundef zeroext 512) #8
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.01 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %call = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1153) #8
  %0 = and i16 %call, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %tobool.not = icmp eq i16 %0, 0
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end:                                           ; preds = %for.body
  tail call void @msleep(i32 noundef 1) #8
  %inc = add nuw nsw i32 %i.01, 1
  %exitcond.not = icmp eq i32 %inc, 500
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge
  %call3 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1153) #8
  %1 = and i16 %call3, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool6.not = icmp eq i16 %1, 0
  br i1 %tobool6.not, label %if.end8, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1155) #8
  %conv10 = zext i16 %call9 to i32
  %shl = shl nuw i32 %conv10, 16
  %2 = ptrtoint ptr %iq_est to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %shl, ptr %iq_est, align 4
  %call12 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1156) #8
  %conv13 = zext i16 %call12 to i32
  %3 = ptrtoint ptr %iq_est to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iq_est, align 4
  %or = or i32 %4, %conv13
  store i32 %or, ptr %iq_est, align 4
  %call15 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1157) #8
  %conv16 = zext i16 %call15 to i32
  %i_pwr = getelementptr inbounds %struct.lpphy_iq_est, ptr %iq_est, i32 0, i32 1
  %shl18 = shl nuw i32 %conv16, 16
  %5 = ptrtoint ptr %i_pwr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shl18, ptr %i_pwr, align 4
  %call19 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1158) #8
  %conv20 = zext i16 %call19 to i32
  %6 = ptrtoint ptr %i_pwr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_pwr, align 4
  %or22 = or i32 %7, %conv20
  store i32 %or22, ptr %i_pwr, align 4
  %call23 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1159) #8
  %conv24 = zext i16 %call23 to i32
  %q_pwr = getelementptr inbounds %struct.lpphy_iq_est, ptr %iq_est, i32 0, i32 2
  %shl26 = shl nuw i32 %conv24, 16
  %8 = ptrtoint ptr %q_pwr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shl26, ptr %q_pwr, align 4
  %call27 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1160) #8
  %conv28 = zext i16 %call27 to i32
  %9 = ptrtoint ptr %q_pwr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %q_pwr, align 4
  %or30 = or i32 %10, %conv28
  store i32 %or30, ptr %q_pwr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %for.end.cleanup_crit_edge
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1040, i16 noundef zeroext 8) #8
  ret i1 %tobool6.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpphy_set_tx_gains(ptr noundef %dev, [2 x i32] %gains.coerce) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %gains.coerce.fca.0.extract = extractvalue [2 x i32] %gains.coerce, 0
  %gains.sroa.0.0.extract.shift = lshr i32 %gains.coerce.fca.0.extract, 16
  %gains.coerce.fca.1.extract = extractvalue [2 x i32] %gains.coerce, 1
  %gains.sroa.7.4.extract.shift = lshr i32 %gains.coerce.fca.1.extract, 16
  %rev = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 8
  %0 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp ult i8 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %shl = shl nuw nsw i32 %gains.sroa.7.4.extract.shift, 7
  %conv3 = shl i32 %gains.coerce.fca.0.extract, 3
  %or = or i32 %gains.sroa.0.0.extract.shift, %conv3
  %or6 = or i32 %or, %shl
  %conv7 = trunc i32 %or6 to i16
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1205, i16 noundef zeroext -2048, i16 noundef zeroext %conv7) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1275) #8
  %2 = and i16 %call.i, 127
  %conv9 = shl i32 %gains.coerce.fca.0.extract, 8
  %or13 = or i32 %conv9, %gains.sroa.0.0.extract.shift
  %conv14 = trunc i32 %or13 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1205, i16 noundef zeroext %conv14) #8
  %conv17 = zext i16 %2 to i32
  %shl18 = shl nuw nsw i32 %conv17, 6
  %or19 = or i32 %shl18, %gains.sroa.7.4.extract.shift
  %conv20 = trunc i32 %or19 to i16
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1275, i16 noundef zeroext -32768, i16 noundef zeroext %conv20) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1276, i16 noundef zeroext %conv14) #8
  %shl31 = shl nuw nsw i32 %conv17, 8
  %or32 = or i32 %shl31, %gains.sroa.7.4.extract.shift
  %conv33 = trunc i32 %or32 to i16
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1277, i16 noundef zeroext -32768, i16 noundef zeroext %conv33) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %gains.sroa.11.4.extract.trunc = trunc i32 %gains.coerce.fca.1.extract to i16
  %call.i49 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1081) #8
  %3 = and i16 %call.i49, 3199
  %shl.i = shl i16 %gains.sroa.11.4.extract.trunc, 7
  %or.i = or i16 %3, %shl.i
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1081, i16 noundef zeroext -4096, i16 noundef zeroext %or.i) #8
  %4 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp.i = icmp ult i8 %5, 2
  br i1 %cmp.i, label %if.end.lpphy_enable_tx_gain_override.exit_crit_edge, label %if.else.i

if.end.lpphy_enable_tx_gain_override.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpphy_enable_tx_gain_override.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1200, i16 noundef zeroext 128) #8
  br label %lpphy_enable_tx_gain_override.exit

lpphy_enable_tx_gain_override.exit:               ; preds = %if.else.i, %if.end.lpphy_enable_tx_gain_override.exit_crit_edge
  %.sink.i = phi i16 [ 16384, %if.else.i ], [ 256, %if.end.lpphy_enable_tx_gain_override.exit_crit_edge ]
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1200, i16 noundef zeroext %.sink.i) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1083, i16 noundef zeroext 64) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b43_lptab_read(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpphy_set_rx_gain(ptr noundef %dev, i32 noundef %gain) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rev = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 8
  %0 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp ult i8 %1, 2
  %2 = trunc i32 %gain to i16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = and i16 %2, 1
  %and1.i = and i32 %gain, 65532
  %and2.i = lshr i32 %gain, 2
  %shr.i = and i32 %and2.i, 3
  %or.i = or i32 %shr.i, %and1.i
  %conv3.i = trunc i32 %or.i to i16
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1101, i16 noundef zeroext -2, i16 noundef zeroext %conv.i) #8
  %3 = lshr i16 %2, 1
  %conv6.tr.i = and i16 %3, 1
  %conv8.i = shl nuw nsw i16 %conv6.tr.i, 10
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1201, i16 noundef zeroext -1025, i16 noundef zeroext %conv8.i) #8
  %conv11.i = shl nuw nsw i16 %conv6.tr.i, 11
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1201, i16 noundef zeroext -2049, i16 noundef zeroext %conv11.i) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1206, i16 noundef zeroext %conv3.i) #8
  br label %if.end

if.else:                                          ; preds = %entry
  %shr.i7 = lshr i32 %gain, 16
  %4 = trunc i32 %shr.i7 to i16
  %conv2.i = and i16 %4, 15
  %shr3.i = lshr i32 %gain, 21
  %shr6.i = lshr i32 %gain, 20
  %5 = trunc i32 %shr6.i to i16
  %6 = and i16 %5, 1
  %conv8.i8 = xor i16 %6, 1
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1101, i16 noundef zeroext -2, i16 noundef zeroext %conv8.i8) #8
  %7 = trunc i32 %shr3.i to i16
  %conv5.tr.i = and i16 %7, 1
  %conv10.i = shl nuw nsw i16 %conv5.tr.i, 9
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1201, i16 noundef zeroext -513, i16 noundef zeroext %conv10.i) #8
  %conv13.i = shl nuw nsw i16 %conv5.tr.i, 10
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1201, i16 noundef zeroext -1025, i16 noundef zeroext %conv13.i) #8
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1206, i16 noundef zeroext %2) #8
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1207, i16 noundef zeroext -16, i16 noundef zeroext %conv2.i) #8
  %wl.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %8 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wl.i, align 4
  %hw.i.i = getelementptr inbounds %struct.b43_wl, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw.i.i, align 4
  %chandef.i.i = getelementptr inbounds %struct.ieee80211_conf, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %chandef.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chandef.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i = icmp eq i32 %15, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %16 = lshr i16 %2, 2
  %conv17.tr.i = and i16 %16, 3
  %conv20.i = shl nuw nsw i16 %conv17.tr.i, 11
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1201, i16 noundef zeroext -6145, i16 noundef zeroext %conv20.i) #8
  %conv23.i = shl nuw nsw i16 %conv17.tr.i, 3
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1254, i16 noundef zeroext -25, i16 noundef zeroext %conv23.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.else.if.end_crit_edge, %if.then
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1100, i16 noundef zeroext 1) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1100, i16 noundef zeroext 16) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1100, i16 noundef zeroext 64) #8
  %17 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp.i9 = icmp ugt i8 %18, 1
  br i1 %cmp.i9, label %if.then.i13, label %if.else.i

if.then.i13:                                      ; preds = %if.end
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1200, i16 noundef zeroext 256) #8
  %wl.i10 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %19 = ptrtoint ptr %wl.i10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wl.i10, align 4
  %hw.i.i11 = getelementptr inbounds %struct.b43_wl, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %hw.i.i11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw.i.i11, align 4
  %chandef.i.i12 = getelementptr inbounds %struct.ieee80211_conf, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %chandef.i.i12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chandef.i.i12, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp2.i = icmp eq i32 %26, 0
  br i1 %cmp2.i, label %if.then4.i, label %if.then.i13.lpphy_enable_rx_gain_override.exit_crit_edge

if.then.i13.lpphy_enable_rx_gain_override.exit_crit_edge: ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpphy_enable_rx_gain_override.exit

if.then4.i:                                       ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1200, i16 noundef zeroext 1024) #8
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1253, i16 noundef zeroext 8) #8
  br label %lpphy_enable_rx_gain_override.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_phy_set(ptr noundef %dev, i16 noundef zeroext 1200, i16 noundef zeroext 512) #8
  br label %lpphy_enable_rx_gain_override.exit

lpphy_enable_rx_gain_override.exit:               ; preds = %if.else.i, %if.then4.i, %if.then.i13.lpphy_enable_rx_gain_override.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpphy_set_analog_filter(ptr noundef %dev, i32 noundef %channel) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lp = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 1, i32 2
  %0 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lp, align 4
  %rev = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 8
  %2 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp4 = icmp ult i8 %3, 2
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %channel)
  %cmp = icmp eq i32 %channel, 14
  %conv7 = select i1 %cmp, i16 512, i16 0
  tail call void @b43_phy_maskset(ptr noundef %dev, i16 noundef zeroext 1096, i16 noundef zeroext -769, i16 noundef zeroext %conv7) #8
  %4 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp11 = icmp eq i8 %5, 1
  br i1 %cmp11, label %land.lhs.true, label %if.then.if.end15_crit_edge

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

land.lhs.true:                                    ; preds = %if.then
  %rc_cap = getelementptr inbounds %struct.b43_phy_lp, ptr %1, i32 0, i32 22
  %6 = ptrtoint ptr %rc_cap to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rc_cap, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %land.lhs.true.if.end15_crit_edge, label %if.then14

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lp, align 4
  %rc_cap1.i = getelementptr inbounds %struct.b43_phy_lp, ptr %9, i32 0, i32 22
  %10 = ptrtoint ptr %rc_cap1.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rc_cap1.i, align 4
  %12 = lshr i8 %11, 1
  %13 = and i8 %12, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %13)
  %cmp10.i = icmp ult i8 %13, 10
  %sub.i = add i8 %11, -4
  %14 = tail call i8 @llvm.umax.i8(i8 %sub.i, i8 -128) #8
  %cond28.i = zext i8 %14 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 58, i16 noundef zeroext %cond28.i) #8
  %narrow.i.op = add nuw nsw i8 %13, -123
  %15 = select i1 %cmp10.i, i8 %narrow.i.op, i8 -113
  %conv31.i = zext i8 %15 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 79, i16 noundef zeroext %conv31.i) #8
  %16 = ptrtoint ptr %rc_cap1.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rc_cap1.i, align 4
  %18 = lshr i8 %17, 2
  %19 = and i8 %18, 7
  %20 = or i8 %19, -128
  %conv37.i = zext i8 %20 to i16
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 16487, i16 noundef zeroext %conv37.i) #8
  br label %if.end15

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext 85, i16 noundef zeroext 63) #8
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then14, %land.lhs.true.if.end15_crit_edge, %if.then.if.end15_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_radio_maskset(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_mac_suspend(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_mac_enable(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_lptab_read_bulk(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @int_sqrt(i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @b43_phyops_lp, !1, !"b43_phyops_lp", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/b43/phy_lp.c", i32 2676, i32 33}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/b43/phy_lp.c", i32 2629, i32 19}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/broadcom/b43/phy_lp.c", i32 2639, i32 19}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/broadcom/b43/phy_lp.c", i32 163, i32 2}
!8 = distinct !{null, !9, !"addr", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/broadcom/b43/phy_lp.c", i32 348, i32 19}
!10 = distinct !{null, !11, !"coefs", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/broadcom/b43/phy_lp.c", i32 360, i32 19}
!12 = !{ptr @lpphy_2062_init.freqdata_tab, !13, !"freqdata_tab", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/broadcom/b43/phy_lp.c", i32 509, i32 37}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/broadcom/b43/phy_lp.c", i32 579, i32 18}
!16 = !{ptr @lpphy_stx_table, !17, !"lpphy_stx_table", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/broadcom/b43/phy_lp.c", i32 619, i32 43}
!18 = !{ptr @lpphy_rev0_1_rc_calib.ideal_pwr_table, !19, !"ideal_pwr_table", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/broadcom/b43/phy_lp.c", i32 1177, i32 19}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/broadcom/b43/phy_lp.c", i32 1196, i32 10}
!22 = !{ptr @lpphy_b2063_tune.chandata, !23, !"chandata", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/broadcom/b43/phy_lp.c", i32 2482, i32 37}
!24 = !{ptr @b2063_chantbl, !25, !"b2063_chantbl", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/broadcom/b43/phy_lp.c", i32 2159, i32 35}
!26 = !{ptr @b2062_chantbl, !27, !"b2062_chantbl", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/broadcom/b43/phy_lp.c", i32 2003, i32 35}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/broadcom/b43/phy_lp.c", i32 1575, i32 19}
!30 = distinct !{null, !31, !"addr", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/broadcom/b43/phy_lp.c", i32 377, i32 19}
!32 = !{ptr @lpphy_5354_iq_table, !33, !"lpphy_5354_iq_table", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/broadcom/b43/phy_lp.c", i32 1620, i32 38}
!34 = !{ptr @lpphy_rev2plus_iq_comp, !35, !"lpphy_rev2plus_iq_comp", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/broadcom/b43/phy_lp.c", i32 1691, i32 38}
!36 = !{ptr @lpphy_rev0_1_iq_table, !37, !"lpphy_rev0_1_iq_table", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/broadcom/b43/phy_lp.c", i32 1637, i32 38}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"branch_weights", i32 1, i32 2000}
!48 = !{!49}
!49 = distinct !{!49, !50, !"lpphy_get_tx_gains: %agg.result"}
!50 = distinct !{!50, !"lpphy_get_tx_gains"}
!51 = !{i8 0, i8 2}
!52 = !{!53}
!53 = distinct !{!53, !54, !"lpphy_get_tx_gains: %agg.result"}
!54 = distinct !{!54, !"lpphy_get_tx_gains"}
!55 = !{!"auto-init"}
!56 = !{i32 0, i32 33}
