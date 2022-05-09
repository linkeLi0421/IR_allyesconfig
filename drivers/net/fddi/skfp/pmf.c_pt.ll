; ModuleID = '/llk/IR_all_yes/drivers/net/fddi/skfp/pmf.c_pt.bc'
source_filename = "../drivers/net/fddi/skfp/pmf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.s_p_tab = type { i16, i8, i16, [3 x i8] }
%struct.s_pcon = type { i32, i32, i32, ptr }
%struct.s_mbuf = type { ptr, i16, i32, i32, [4504 x i8] }
%struct.smt_header = type { %struct.fddi_addr, %struct.fddi_addr, i8, i8, i16, i32, %struct.smt_sid, i16, i16 }
%struct.fddi_addr = type { [6 x i8] }
%struct.smt_sid = type { [2 x i8], %struct.fddi_addr }
%struct.s_smc = type { %struct.s_smt_os, %struct.s_smt_hw, %struct.smt_config, %struct.smt_values, %struct.s_ecm, %struct.s_rmt, %struct.s_cfm, %struct.s_pcm, [2 x %struct.s_phy], %struct.s_queue, %struct.s_timer, %struct.s_srf, [14 x %struct.s_srf_evc], %struct.fddi_mib, %struct.s_ess }
%struct.s_smt_os = type { ptr, ptr, i32, [4 x i8], %struct.pci_dev, i32, [8 x i8], i32, i32, ptr, i32, i32, %struct.sk_buff_head, i32, i8, %struct.fddi_statistics, ptr, i32, i32, %struct.hw_modul, %struct.spinlock, [4 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.114, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.114 = type { ptr }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.fddi_statistics = type { %struct.net_device_stats, [8 x i8], i32, i32, i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i32, i32, i32, [6 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [6 x i8], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32] }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hw_modul = type { %struct.s_mbuf_pool, %struct.hwm_r, ptr, i16, i16, i16, i16, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.s_mbuf_pool = type { ptr, ptr }
%struct.hwm_r = type { i32, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.s_smt_hw = type { ptr, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i8, %struct.fddi_addr, %struct.fddi_addr, %struct.fddi_addr, %struct.mac_parameter, %struct.mac_counter, i16, %struct.s_smt_fp }
%struct.mac_parameter = type { i32, i32 }
%struct.mac_counter = type { i32, i32 }
%struct.s_smt_fp = type { i16, i16, i16, i16, i16, i16, i16, %struct.err_st, %struct.fddi_mac_sf, [2 x ptr], [2 x ptr], [2 x %struct.s_smt_tx_queue], [2 x %struct.s_smt_rx_queue], %struct.s_smt_fifo_conf, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.115, %struct.fddi_addr, i32, i32, i32 }
%struct.err_st = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fddi_mac_sf = type { i8, %struct.fddi_addr, %struct.fddi_addr, [32 x i8] }
%struct.s_smt_tx_queue = type { ptr, ptr, ptr, i16, i16, ptr, ptr }
%struct.s_smt_rx_queue = type { ptr, ptr, ptr, i16, i16, ptr, ptr }
%struct.s_smt_fifo_conf = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.anon.115 = type { [32 x %struct.s_fpmc] }
%struct.s_fpmc = type { %struct.fddi_addr, i8, i8 }
%struct.smt_config = type { i8, i8, i8, i8, [1 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.smt_values = type { i32, i32, i32, [5 x i32], i32, i16, i16, i32, i32, %struct.smt_timer, [1 x i32] }
%struct.smt_timer = type { ptr, ptr, i32, i32, i16, i16 }
%struct.s_ecm = type { i8, i8, i8, i8, i32, [2 x i8], %struct.smt_timer }
%struct.s_rmt = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.smt_timer, %struct.smt_timer, %struct.smt_timer, i8, i8, i8, i8 }
%struct.s_cfm = type { i8, [3 x i8] }
%struct.s_pcm = type { [3 x i8] }
%struct.s_phy = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], [10 x i8], [10 x i32], %struct.smt_timer, %struct.smt_timer, %struct.smt_timer, i8, i8, i8, [1 x i8], i32, %struct.lem_counter, %struct.s_plc }
%struct.lem_counter = type { i16, i32, i16 }
%struct.s_plc = type { i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.s_queue = type { [64 x %struct.event_queue], ptr, ptr }
%struct.event_queue = type { i16, i16 }
%struct.s_timer = type { ptr, %struct.smt_timer }
%struct.s_srf = type { i32, i8, i8, i8, i32, i16 }
%struct.s_srf_evc = type { i8, i8, i8, i16, ptr, ptr }
%struct.fddi_mib = type { [8 x i8], %struct.smt_sid, i32, i32, i32, i32, i32, i16, %struct.smt_sid, i16, i16, i16, [32 x i8], [32 x i8], i16, i8, i8, i8, i8, i16, i16, i16, i16, i8, i32, [2 x i16], i16, i8, i16, i16, i16, i8, i8, [8 x i8], [8 x i8], %struct.SetCountType, %struct.smt_sid, [1 x %struct.fddi_mib_m], [2 x %struct.fddi_mib_a], [2 x %struct.fddi_mib_p], %struct.anon.117 }
%struct.SetCountType = type { i32, [8 x i8] }
%struct.fddi_mib_m = type { i16, i32, i32, i8, i8, i8, i8, i16, %struct.fddi_addr, %struct.fddi_addr, %struct.fddi_addr, %struct.fddi_addr, i16, i16, i16, i16, %struct.fddi_addr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.fddi_mib_a = type { i16, i32, i32, i32, i32, i32, i32, i32 }
%struct.fddi_mib_p = type { i16, i16, i8, %struct.anon.116, i16, [4 x i8], i16, i8, i8, i16, i16, i16, i16, i8, i32, i32, i32, i32, i32, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8 }
%struct.anon.116 = type { i8, i8 }
%struct.anon.117 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.s_ess = type { i8, i8, i8, i8, ptr, i32, i32 }
%struct.smt_para = type { i16, i16 }
%struct.smt_p_setcount = type { %struct.smt_para, i32, [8 x i8] }
%struct.smt_p_reason = type { %struct.smt_para, i32 }
%struct.smt_p_1048 = type { i32, i32 }
%struct.smt_p_208c = type { i32, i16, i16, %struct.fddi_addr, %struct.fddi_addr }
%struct.smt_p_208d = type { i32, i32, i32, i32, i32 }
%struct.smt_p_208e = type { i32, i32, i32, i32 }
%struct.smt_p_208f = type { i32, i32, %struct.fddi_addr, %struct.fddi_addr, %struct.fddi_addr, %struct.fddi_addr, i16, %struct.fddi_addr }
%struct.smt_p_2090 = type { i32, i16, i16, i32 }
%struct.smt_p_4050 = type { i32, i8, i8, i8, i8, i32, i32 }
%struct.smt_p_4051 = type { i32, i16, i16, i16, i16 }
%struct.smt_p_4052 = type { i32, i32 }
%struct.smt_p_4053 = type { i32, i16, i16, i32, i16, i16 }

@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"I\00", [30 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"II\00", [29 x i8] zeroinitializer }, align 32
@smt_add_para._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1025, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016SMT PANIC: code: %d, msg: %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"smt_add_para\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/net/fddi/skfp/pmf.c\00", [36 x i8] zeroinitializer }, align 32
@smt_add_para._entry_ptr = internal global ptr @smt_add_para._entry, section ".printk_index", align 4
@smt_set_para._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.5, ptr @.str.4, i32 1284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"smt_set_para\00", [19 x i8] zeroinitializer }, align 32
@smt_set_para._entry_ptr = internal global ptr @smt_set_para._entry, section ".printk_index", align 4
@p_tab = internal constant { [142 x %struct.s_p_tab], [372 x i8] } { [142 x %struct.s_p_tab] [%struct.s_p_tab { i16 4106, i8 16, i16 0, [3 x i8] zeroinitializer }, %struct.s_p_tab { i16 4107, i8 1, i16 38, [3 x i8] c"8\00\00" }, %struct.s_p_tab { i16 4109, i8 1, i16 46, [3 x i8] c"S\00\00" }, %struct.s_p_tab { i16 4110, i8 1, i16 48, [3 x i8] c"S\00\00" }, %struct.s_p_tab { i16 4111, i8 1, i16 50, [3 x i8] c"S\00\00" }, %struct.s_p_tab { i16 4112, i8 1, i16 52, [3 x i8] c"D\00\00" }, %struct.s_p_tab { i16 4113, i8 2, i16 84, [3 x i8] c"D\00\00" }, %struct.s_p_tab { i16 4114, i8 1, i16 116, [3 x i8] c"S\00\00" }, %struct.s_p_tab { i16 4116, i8 16, i16 0, [3 x i8] zeroinitializer }, %struct.s_p_tab { i16 4117, i8 1, i16 118, [3 x i8] c"B\00\00" }, %struct.s_p_tab { i16 4118, i8 1, i16 119, [3 x i8] c"B\00\00" }, %struct.s_p_tab { i16 4119, i8 1, i16 120, [3 x i8] c"B\00\00" }, %struct.s_p_tab { i16 4120, i8 1, i16 121, [3 x i8] c"B\00\00" }, %struct.s_p_tab { i16 4121, i8 1, i16 122, [3 x i8] c"S\00\00" }, %struct.s_p_tab { i16 4122, i8 2, i16 124, [3 x i8] c"wS\00" }, %struct.s_p_tab { i16 4123, i8 2, i16 126, [3 x i8] c"wS\00" }, %struct.s_p_tab { i16 4125, i8 2, i16 128, [3 x i8] c"wS\00" }, %struct.s_p_tab { i16 4126, i8 2, i16 130, [3 x i8] c"bB\00" }, %struct.s_p_tab { i16 4127, i8 2, i16 132, [3 x i8] c"lL\00" }, %struct.s_p_tab { i16 4128, i8 1, i16 136, [3 x i8] c"II\00" }, %struct.s_p_tab { i16 4129, i8 1, i16 140, [3 x i8] c"I\00\00" }, %struct.s_p_tab { i16 4130, i8 1, i16 142, [3 x i8] c"F\00\00" }, %struct.s_p_tab { i16 4136, i8 16, i16 0, [3 x i8] zeroinitializer }, %struct.s_p_tab { i16 4137, i8 1, i16 144, [3 x i8] c"E\00\00" }, %struct.s_p_tab { i16 4138, i8 1, i16 146, [3 x i8] c"E\00\00" }, %struct.s_p_tab { i16 4140, i8 1, i16 150, [3 x i8] c"F\00\00" }, %struct.s_p_tab { i16 4141, i8 1, i16 148, [3 x i8] c"E\00\00" }, %struct.s_p_tab { i16 4142, i8 1, i16 151, [3 x i8] c"F\00\00" }, %struct.s_p_tab { i16 4146, i8 16, i16 0, [3 x i8] zeroinitializer }, %struct.s_p_tab { i16 4147, i8 1, i16 152, [3 x i8] c"P\00\00" }, %struct.s_p_tab { i16 4148, i8 1, i16 160, [3 x i8] c"P\00\00" }, %struct.s_p_tab { i16 4149, i8 1, i16 168, [3 x i8] c"4P\00" }, %struct.s_p_tab { i16 4150, i8 1, i16 180, [3 x i8] c"8\00\00" }, %struct.s_p_tab { i16 4156, i8 4, i16 0, [3 x i8] c"wS\00" }, %struct.s_p_tab { i16 4336, i8 2, i16 0, [3 x i8] c"8\00\00" }, %struct.s_p_tab { i16 4337, i8 2, i16 8, [3 x i8] c"8\00\00" }, %struct.s_p_tab { i16 4338, i8 2, i16 16, [3 x i8] c"lL\00" }, %struct.s_p_tab { i16 4339, i8 2, i16 20, [3 x i8] c"lL\00" }, %struct.s_p_tab { i16 4340, i8 2, i16 24, [3 x i8] c"lL\00" }, %struct.s_p_tab { i16 4341, i8 2, i16 28, [3 x i8] c"lL\00" }, %struct.s_p_tab { i16 4342, i8 2, i16 32, [3 x i8] c"lL\00" }, %struct.s_p_tab { i16 4343, i8 2, i16 36, [3 x i8] c"wS\00" }, %struct.s_p_tab { i16 8202, i8 16, i16 0, [3 x i8] zeroinitializer }, %struct.s_p_tab { i16 8203, i8 1, i16 0, [3 x i8] c"S\00\00" }, %struct.s_p_tab { i16 8205, i8 1, i16 4, [3 x i8] c"T\00\00" }, %struct.s_p_tab { i16 8206, i8 1, i16 8, [3 x i8] c"T\00\00" }, %struct.s_p_tab { i16 8212, i8 16, i16 0, [3 x i8] zeroinitializer }, %struct.s_p_tab { i16 8214, i8 1, i16 15, [3 x i8] c"B\00\00" }, %struct.s_p_tab { i16 8215, i8 1, i16 16, [3 x i8] c"S\00\00" }, %struct.s_p_tab { i16 8216, i8 1, i16 18, [3 x i8] c"A\00\00" }, %struct.s_p_tab { i16 8217, i8 1, i16 24, [3 x i8] c"A\00\00" }, %struct.s_p_tab { i16 8218, i8 1, i16 30, [3 x i8] c"A\00\00" }, %struct.s_p_tab { i16 8219, i8 1, i16 36, [3 x i8] c"A\00\00" }, %struct.s_p_tab { i16 8221, i8 1, i16 42, [3 x i8] c"E\00\00" }, %struct.s_p_tab { i16 8224, i8 2, i16 44, [3 x i8] c"wS\00" }, %struct.s_p_tab { i16 8225, i8 1, i16 46, [3 x i8] c"E\00\00" }, %struct.s_p_tab { i16 8226, i8 1, i16 48, [3 x i8] c"S\00\00" }, %struct.s_p_tab { i16 8232, i8 16, i16 0, [3 x i8] zeroinitializer }, %struct.s_p_tab { i16 8233, i8 1, i16 50, [3 x i8] c"A\00\00" }, %struct.s_p_tab { i16 8242, i8 16, i16 0, [3 x i8] zeroinitializer }, %struct.s_p_tab { i16 8243, i8 1, i16 64, [3 x i8] c"T\00\00" }, %struct.s_p_tab { i16 8244, i8 1, i16 68, [3 x i8] c"T\00\00" }, %struct.s_p_tab { i16 8245, i8 1, i16 76, [3 x i8] c"T\00\00" }, %struct.s_p_tab { i16 8246, i8 1, i16 84, [3 x i8] c"T\00\00" }, %struct.s_p_tab { i16 8248, i8 1, i16 88, [3 x i8] c"T\00\00" }, %struct.s_p_tab { i16 8249, i8 1, i16 92, [3 x i8] c"T\00\00" }, %struct.s_p_tab { i16 8250, i8 1, i16 96, [3 x i8] c"T\00\00" }, %struct.s_p_tab { i16 8251, i8 1, i16 100, [3 x i8] c"T\00\00" }, %struct.s_p_tab { i16 8252, i8 1, i16 104, [3 x i8] c"T\00\00" }, %struct.s_p_tab { i16 8253, i8 1, i16 108, [3 x i8] c"T\00\00" }, %struct.s_p_tab { i16 8254, i8 1, i16 112, [3 x i8] c"T\00\00" }, %struct.s_p_tab { i16 8262, i8 16, i16 0, [3 x i8] zeroinitializer }, %struct.s_p_tab { i16 8263, i8 1, i16 116, [3 x i8] c"C\00\00" }, %struct.s_p_tab { i16 8264, i8 1, i16 120, [3 x i8] c"C\00\00" }, %struct.s_p_tab { i16 8265, i8 1, i16 124, [3 x i8] c"C\00\00" }, %struct.s_p_tab { i16 8266, i8 1, i16 128, [3 x i8] c"C\00\00" }, %struct.s_p_tab { i16 8273, i8 1, i16 132, [3 x i8] c"C\00\00" }, %struct.s_p_tab { i16 8274, i8 1, i16 136, [3 x i8] c"C\00\00" }, %struct.s_p_tab { i16 8275, i8 1, i16 140, [3 x i8] c"C\00\00" }, %struct.s_p_tab { i16 8276, i8 1, i16 144, [3 x i8] c"C\00\00" }, %struct.s_p_tab { i16 8278, i8 1, i16 148, [3 x i8] c"C\00\00" }, %struct.s_p_tab { i16 8282, i8 16, i16 0, [3 x i8] zeroinitializer }, %struct.s_p_tab { i16 8287, i8 2, i16 180, [3 x i8] c"wS\00" }, %struct.s_p_tab { i16 8288, i8 1, i16 182, [3 x i8] c"S\00\00" }, %struct.s_p_tab { i16 8292, i8 16, i16 0, [3 x i8] zeroinitializer }, %struct.s_p_tab { i16 8295, i8 2, i16 184, [3 x i8] c"wS\00" }, %struct.s_p_tab { i16 8297, i8 1, i16 186, [3 x i8] c"S\00\00" }, %struct.s_p_tab { i16 8302, i8 16, i16 0, [3 x i8] zeroinitializer }, %struct.s_p_tab { i16 8303, i8 1, i16 188, [3 x i8] c"S\00\00" }, %struct.s_p_tab { i16 8304, i8 1, i16 190, [3 x i8] c"F\00\00" }, %struct.s_p_tab { i16 8305, i8 1, i16 191, [3 x i8] c"F\00\00" }, %struct.s_p_tab { i16 8306, i8 1, i16 192, [3 x i8] c"F\00\00" }, %struct.s_p_tab { i16 8307, i8 1, i16 193, [3 x i8] c"F\00\00" }, %struct.s_p_tab { i16 8308, i8 1, i16 194, [3 x i8] c"F\00\00" }, %struct.s_p_tab { i16 8309, i8 1, i16 195, [3 x i8] c"F\00\00" }, %struct.s_p_tab { i16 8310, i8 2, i16 196, [3 x i8] c"bF\00" }, %struct.s_p_tab { i16 8432, i8 8, i16 0, [3 x i8] zeroinitializer }, %struct.s_p_tab { i16 8433, i8 2, i16 56, [3 x i8] c"lT\00" }, %struct.s_p_tab { i16 12810, i8 16, i16 0, [3 x i8] zeroinitializer }, %struct.s_p_tab { i16 12811, i8 1, i16 0, [3 x i8] c"r\00\00" }, %struct.s_p_tab { i16 12815, i8 2, i16 4, [3 x i8] c"l4\00" }, %struct.s_p_tab { i16 12816, i8 2, i16 8, [3 x i8] c"l4\00" }, %struct.s_p_tab { i16 12818, i8 1, i16 0, [3 x i8] zeroinitializer }, %struct.s_p_tab { i16 12819, i8 2, i16 12, [3 x i8] c"lT\00" }, %struct.s_p_tab { i16 12820, i8 2, i16 16, [3 x i8] c"lL\00" }, %struct.s_p_tab { i16 12821, i8 2, i16 20, [3 x i8] c"lT\00" }, %struct.s_p_tab { i16 12822, i8 2, i16 24, [3 x i8] c"lT\00" }, %struct.s_p_tab { i16 12823, i8 2, i16 28, [3 x i8] c"lT\00" }, %struct.s_p_tab { i16 16394, i8 16, i16 0, [3 x i8] zeroinitializer }, %struct.s_p_tab { i16 16396, i8 1, i16 0, [3 x i8] c"E\00\00" }, %struct.s_p_tab { i16 16397, i8 1, i16 2, [3 x i8] c"E\00\00" }, %struct.s_p_tab { i16 16398, i8 2, i16 4, [3 x i8] c"bB\00" }, %struct.s_p_tab { i16 16399, i8 1, i16 5, [3 x i8] c"2\00\00" }, %struct.s_p_tab { i16 16400, i8 1, i16 8, [3 x i8] c"E\00\00" }, %struct.s_p_tab { i16 16401, i8 2, i16 10, [3 x i8] c"l4\00" }, %struct.s_p_tab { i16 16402, i8 1, i16 14, [3 x i8] c"S\00\00" }, %struct.s_p_tab { i16 16403, i8 1, i16 16, [3 x i8] c"B\00\00" }, %struct.s_p_tab { i16 16406, i8 1, i16 18, [3 x i8] c"E\00\00" }, %struct.s_p_tab { i16 16407, i8 1, i16 17, [3 x i8] c"B\00\00" }, %struct.s_p_tab { i16 16413, i8 1, i16 20, [3 x i8] c"R\00\00" }, %struct.s_p_tab { i16 16414, i8 16, i16 0, [3 x i8] zeroinitializer }, %struct.s_p_tab { i16 16415, i8 2, i16 22, [3 x i8] c"wE\00" }, %struct.s_p_tab { i16 16417, i8 1, i16 26, [3 x i8] c"F\00\00" }, %struct.s_p_tab { i16 16418, i8 1, i16 24, [3 x i8] c"E\00\00" }, %struct.s_p_tab { i16 16424, i8 16, i16 0, [3 x i8] zeroinitializer }, %struct.s_p_tab { i16 16425, i8 1, i16 32, [3 x i8] c"C\00\00" }, %struct.s_p_tab { i16 16426, i8 1, i16 28, [3 x i8] c"C\00\00" }, %struct.s_p_tab { i16 16434, i8 16, i16 0, [3 x i8] zeroinitializer }, %struct.s_p_tab { i16 16435, i8 1, i16 48, [3 x i8] c"F\00\00" }, %struct.s_p_tab { i16 16436, i8 1, i16 40, [3 x i8] c"C\00\00" }, %struct.s_p_tab { i16 16437, i8 1, i16 44, [3 x i8] c"C\00\00" }, %struct.s_p_tab { i16 16442, i8 2, i16 49, [3 x i8] c"bB\00" }, %struct.s_p_tab { i16 16443, i8 2, i16 50, [3 x i8] c"bB\00" }, %struct.s_p_tab { i16 16444, i8 16, i16 0, [3 x i8] zeroinitializer }, %struct.s_p_tab { i16 16445, i8 1, i16 52, [3 x i8] c"E\00\00" }, %struct.s_p_tab { i16 16446, i8 1, i16 56, [3 x i8] c"E\00\00" }, %struct.s_p_tab { i16 16447, i8 1, i16 58, [3 x i8] c"E\00\00" }, %struct.s_p_tab { i16 16448, i8 1, i16 61, [3 x i8] c"F\00\00" }, %struct.s_p_tab { i16 16449, i8 1, i16 60, [3 x i8] c"F\00\00" }, %struct.s_p_tab { i16 16454, i8 4, i16 0, [3 x i8] c"wS\00" }, %struct.s_p_tab { i16 0, i8 16, i16 0, [3 x i8] zeroinitializer }, %struct.s_p_tab zeroinitializer], [372 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 18]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 16, i64 8192, i64 12288, i64 16384]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 16, i64 8192, i64 12288, i64 16384]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.9 = internal global [11 x i64] [i64 9, i64 16, i64 4336, i64 4337, i64 4338, i64 4339, i64 4340, i64 4341, i64 4342, i64 4343, i64 8433]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.11 = internal global [20 x i64] [i64 18, i64 8, i64 0, i64 52, i64 56, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 76, i64 80, i64 82, i64 83, i64 84, i64 98, i64 108, i64 114, i64 119]
@__sancov_gen_cov_switch_values.12 = internal global [32 x i64] [i64 30, i64 16, i64 4122, i64 4123, i64 4125, i64 4126, i64 4127, i64 4156, i64 4338, i64 4339, i64 4340, i64 4341, i64 4342, i64 4343, i64 8224, i64 8287, i64 8295, i64 8310, i64 8433, i64 12815, i64 12816, i64 12819, i64 12820, i64 12821, i64 12822, i64 12823, i64 16398, i64 16401, i64 16415, i64 16442, i64 16443, i64 16454]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 16, i64 8192, i64 12288, i64 16384]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.15 = internal global [32 x i64] [i64 30, i64 16, i64 18, i64 4128, i64 4147, i64 4168, i64 4336, i64 4337, i64 4338, i64 4339, i64 4340, i64 4341, i64 4342, i64 4343, i64 8244, i64 8262, i64 8263, i64 8266, i64 8273, i64 8274, i64 8332, i64 8333, i64 8334, i64 8335, i64 8336, i64 8433, i64 12818, i64 16418, i64 16464, i64 16465, i64 16466, i64 16467]
@__sancov_gen_cov_switch_values.16 = internal global [22 x i64] [i64 20, i64 8, i64 0, i64 50, i64 52, i64 56, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 73, i64 76, i64 80, i64 82, i64 83, i64 84, i64 98, i64 108, i64 114, i64 119]
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 681, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 683, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 1025, i32 4 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 1284, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant [6 x i8] c"p_tab\00", align 1
@___asan_gen_.42 = private constant [31 x i8] c"../drivers/net/fddi/skfp/pmf.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 68, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @smt_add_para._entry, ptr @smt_add_para._entry_ptr, ptr @smt_set_para._entry, ptr @smt_set_para._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @p_tab], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smt_add_para._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smt_set_para._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p_tab to i32), i32 1420, i32 1792, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smt_pmf_received_pack(ptr noundef %smc, ptr noundef %mb, i32 noundef %local) local_unnamed_addr #0 align 64 {
entry:
  %byte_val.i.i = alloca i8, align 1
  %word_val.i.i = alloca i16, align 2
  %long_val.i.i = alloca i32, align 4
  %pcon.i = alloca %struct.s_pcon, align 4
  %set_pcon.i = alloca %struct.s_pcon, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %m_data = getelementptr inbounds %struct.s_mbuf, ptr %mb, i32 0, i32 4
  %m_off = getelementptr inbounds %struct.s_mbuf, ptr %mb, i32 0, i32 1
  %0 = ptrtoint ptr %m_off to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %m_off, align 4
  %conv = sext i16 %1 to i32
  %add.ptr = getelementptr i8, ptr %m_data, i32 %conv
  tail call void @smt_start_watchdog(ptr noundef %smc) #5
  %smt_class = getelementptr inbounds %struct.smt_header, ptr %add.ptr, i32 0, i32 2
  %2 = ptrtoint ptr %smt_class to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %smt_class, align 4
  %4 = and i8 %3, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %4)
  %switch = icmp eq i8 %4, 8
  br i1 %switch, label %if.then, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pcon.i) #5
  %5 = getelementptr inbounds %struct.s_pcon, ptr %pcon.i, i32 0, i32 1
  %6 = getelementptr inbounds %struct.s_pcon, ptr %pcon.i, i32 0, i32 2
  %7 = getelementptr inbounds %struct.s_pcon, ptr %pcon.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %set_pcon.i) #5
  %call.i = tail call ptr @smt_get_mbuf(ptr noundef %smc) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %smt_build_pmf_response.exit.thread, label %if.end.i

smt_build_pmf_response.exit.thread:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %set_pcon.i) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pcon.i) #5
  br label %if.end17

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %3)
  %cmp9 = icmp ne i8 %3, 9
  %m_data.i = getelementptr inbounds %struct.s_mbuf, ptr %call.i, i32 0, i32 4
  %m_off.i = getelementptr inbounds %struct.s_mbuf, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %m_off.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %m_off.i, align 4
  %conv.i = sext i16 %9 to i32
  %add.ptr.i = getelementptr i8, ptr %m_data.i, i32 %conv.i
  %smt_source.i = getelementptr inbounds %struct.smt_header, ptr %add.ptr, i32 0, i32 1
  %10 = call ptr @memcpy(ptr %add.ptr.i, ptr %smt_source.i, i32 6)
  %11 = ptrtoint ptr %smt_class to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %smt_class, align 4
  %smt_class1.i = getelementptr inbounds %struct.smt_header, ptr %add.ptr.i, i32 0, i32 2
  %13 = ptrtoint ptr %smt_class1.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %smt_class1.i, align 4
  %smt_type.i = getelementptr inbounds %struct.smt_header, ptr %add.ptr.i, i32 0, i32 3
  %14 = ptrtoint ptr %smt_type.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 3, ptr %smt_type.i, align 1
  %smt_version.i = getelementptr inbounds %struct.smt_header, ptr %add.ptr.i, i32 0, i32 4
  %15 = ptrtoint ptr %smt_version.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2, ptr %smt_version.i, align 2
  %smt_tid.i = getelementptr inbounds %struct.smt_header, ptr %add.ptr, i32 0, i32 5
  %16 = ptrtoint ptr %smt_tid.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %smt_tid.i, align 4
  %smt_tid2.i = getelementptr inbounds %struct.smt_header, ptr %add.ptr.i, i32 0, i32 5
  %18 = ptrtoint ptr %smt_tid2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %smt_tid2.i, align 4
  %smt_pad.i = getelementptr inbounds %struct.smt_header, ptr %add.ptr.i, i32 0, i32 7
  %19 = ptrtoint ptr %smt_pad.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %smt_pad.i, align 4
  %smt_len.i = getelementptr inbounds %struct.smt_header, ptr %add.ptr.i, i32 0, i32 8
  %20 = ptrtoint ptr %smt_len.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %smt_len.i, align 2
  %21 = ptrtoint ptr %pcon.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4332, ptr %pcon.i, align 4
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %5, align 4
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %6, align 4
  %add.ptr3.i = getelementptr %struct.smt_header, ptr %add.ptr.i, i32 1
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr3.i, ptr %7, align 4
  br i1 %cmp9, label %if.end.i.if.end16.i_crit_edge, label %if.then5.i

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %local)
  %tobool6.not.i = icmp eq i32 %local, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i, label %if.then5.i.if.else.i_crit_edge

if.then5.i.if.else.i_crit_edge:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then5.i
  %mib.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13
  %fddiPRPMFStation.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 1
  %25 = ptrtoint ptr %fddiPRPMFStation.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %fddiPRPMFStation.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %land.lhs.true.i.if.then.i.i_crit_edge

land.lhs.true.i.if.then.i.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i
  %arrayidx.1.i.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.1.i.i = icmp eq i8 %28, 0
  br i1 %tobool.not.1.i.i, label %for.inc.1.i.i, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  %arrayidx.2.i.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 1, i32 1
  %29 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.2.i.i = icmp eq i8 %30, 0
  br i1 %tobool.not.2.i.i, label %for.inc.2.i.i, label %for.inc.1.i.i.if.then.i.i_crit_edge

for.inc.1.i.i.if.then.i.i_crit_edge:              ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  %arrayidx.3.i.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 1, i32 1, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.3.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.3.i.i = icmp eq i8 %32, 0
  br i1 %tobool.not.3.i.i, label %for.inc.3.i.i, label %for.inc.2.i.i.if.then.i.i_crit_edge

for.inc.2.i.i.if.then.i.i_crit_edge:              ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

for.inc.3.i.i:                                    ; preds = %for.inc.2.i.i
  %arrayidx.4.i.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 1, i32 1, i32 0, i32 2
  %33 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.4.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.4.i.i = icmp eq i8 %34, 0
  br i1 %tobool.not.4.i.i, label %for.inc.4.i.i, label %for.inc.3.i.i.if.then.i.i_crit_edge

for.inc.3.i.i.if.then.i.i_crit_edge:              ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

for.inc.4.i.i:                                    ; preds = %for.inc.3.i.i
  %arrayidx.5.i.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 1, i32 1, i32 0, i32 3
  %35 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.5.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.5.i.i = icmp eq i8 %36, 0
  br i1 %tobool.not.5.i.i, label %for.inc.5.i.i, label %for.inc.4.i.i.if.then.i.i_crit_edge

for.inc.4.i.i.if.then.i.i_crit_edge:              ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

for.inc.5.i.i:                                    ; preds = %for.inc.4.i.i
  %arrayidx.6.i.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 1, i32 1, i32 0, i32 4
  %37 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.6.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.6.i.i = icmp eq i8 %38, 0
  br i1 %tobool.not.6.i.i, label %for.inc.6.i.i, label %for.inc.5.i.i.if.then.i.i_crit_edge

for.inc.5.i.i.if.then.i.i_crit_edge:              ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

for.inc.6.i.i:                                    ; preds = %for.inc.5.i.i
  %arrayidx.7.i.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 1, i32 1, i32 0, i32 5
  %39 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.7.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.7.i.i = icmp eq i8 %40, 0
  br i1 %tobool.not.7.i.i, label %for.inc.6.i.i.if.end6.i.i_crit_edge, label %for.inc.6.i.i.if.then.i.i_crit_edge

for.inc.6.i.i.if.then.i.i_crit_edge:              ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

for.inc.6.i.i.if.end6.i.i_crit_edge:              ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i.i

if.then.i.i:                                      ; preds = %for.inc.6.i.i.if.then.i.i_crit_edge, %for.inc.5.i.i.if.then.i.i_crit_edge, %for.inc.4.i.i.if.then.i.i_crit_edge, %for.inc.3.i.i.if.then.i.i_crit_edge, %for.inc.2.i.i.if.then.i.i_crit_edge, %for.inc.1.i.i.if.then.i.i_crit_edge, %for.inc.i.i.if.then.i.i_crit_edge, %land.lhs.true.i.if.then.i.i_crit_edge
  %smt_sid.i.i = getelementptr inbounds %struct.smt_header, ptr %add.ptr, i32 0, i32 6
  %bcmp54.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %smt_sid.i.i, ptr noundef dereferenceable(8) %fddiPRPMFStation.i.i, i32 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp54.i.i)
  %tobool4.not.i.i = icmp eq i32 %bcmp54.i.i, 0
  br i1 %tobool4.not.i.i, label %if.then.i.i.if.end6.i.i_crit_edge, label %if.then.i.i.if.end16.i_crit_edge

if.then.i.i.if.end16.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

if.then.i.i.if.end6.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then.i.i.if.end6.i.i_crit_edge, %for.inc.6.i.i.if.end6.i.i_crit_edge
  %41 = ptrtoint ptr %mib.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %mib.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool12.not.i.i = icmp eq i8 %42, 0
  br i1 %tobool12.not.i.i, label %for.inc16.i.i, label %if.end6.i.i.if.then20.i.i_crit_edge

if.end6.i.i.if.then20.i.i_crit_edge:              ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then20.i.i

for.inc16.i.i:                                    ; preds = %if.end6.i.i
  %arrayidx11.1.i.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 0, i32 1
  %43 = ptrtoint ptr %arrayidx11.1.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx11.1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool12.not.1.i.i = icmp eq i8 %44, 0
  br i1 %tobool12.not.1.i.i, label %for.inc16.1.i.i, label %for.inc16.i.i.if.then20.i.i_crit_edge

for.inc16.i.i.if.then20.i.i_crit_edge:            ; preds = %for.inc16.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then20.i.i

for.inc16.1.i.i:                                  ; preds = %for.inc16.i.i
  %arrayidx11.2.i.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 0, i32 2
  %45 = ptrtoint ptr %arrayidx11.2.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx11.2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool12.not.2.i.i = icmp eq i8 %46, 0
  br i1 %tobool12.not.2.i.i, label %for.inc16.2.i.i, label %for.inc16.1.i.i.if.then20.i.i_crit_edge

for.inc16.1.i.i.if.then20.i.i_crit_edge:          ; preds = %for.inc16.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then20.i.i

for.inc16.2.i.i:                                  ; preds = %for.inc16.1.i.i
  %arrayidx11.3.i.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 0, i32 3
  %47 = ptrtoint ptr %arrayidx11.3.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx11.3.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool12.not.3.i.i = icmp eq i8 %48, 0
  br i1 %tobool12.not.3.i.i, label %for.inc16.3.i.i, label %for.inc16.2.i.i.if.then20.i.i_crit_edge

for.inc16.2.i.i.if.then20.i.i_crit_edge:          ; preds = %for.inc16.2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then20.i.i

for.inc16.3.i.i:                                  ; preds = %for.inc16.2.i.i
  %arrayidx11.4.i.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 0, i32 4
  %49 = ptrtoint ptr %arrayidx11.4.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx11.4.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool12.not.4.i.i = icmp eq i8 %50, 0
  br i1 %tobool12.not.4.i.i, label %for.inc16.4.i.i, label %for.inc16.3.i.i.if.then20.i.i_crit_edge

for.inc16.3.i.i.if.then20.i.i_crit_edge:          ; preds = %for.inc16.3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then20.i.i

for.inc16.4.i.i:                                  ; preds = %for.inc16.3.i.i
  %arrayidx11.5.i.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 0, i32 5
  %51 = ptrtoint ptr %arrayidx11.5.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx11.5.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool12.not.5.i.i = icmp eq i8 %52, 0
  br i1 %tobool12.not.5.i.i, label %for.inc16.5.i.i, label %for.inc16.4.i.i.if.then20.i.i_crit_edge

for.inc16.4.i.i.if.then20.i.i_crit_edge:          ; preds = %for.inc16.4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then20.i.i

for.inc16.5.i.i:                                  ; preds = %for.inc16.4.i.i
  %arrayidx11.6.i.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 0, i32 6
  %53 = ptrtoint ptr %arrayidx11.6.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx11.6.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool12.not.6.i.i = icmp eq i8 %54, 0
  br i1 %tobool12.not.6.i.i, label %for.inc16.6.i.i, label %for.inc16.5.i.i.if.then20.i.i_crit_edge

for.inc16.5.i.i.if.then20.i.i_crit_edge:          ; preds = %for.inc16.5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then20.i.i

for.inc16.6.i.i:                                  ; preds = %for.inc16.5.i.i
  %arrayidx11.7.i.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 0, i32 7
  %55 = ptrtoint ptr %arrayidx11.7.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx11.7.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool12.not.7.i.i = icmp eq i8 %56, 0
  br i1 %tobool12.not.7.i.i, label %for.inc16.6.i.i.if.else.i_crit_edge, label %for.inc16.6.i.i.if.then20.i.i_crit_edge

for.inc16.6.i.i.if.then20.i.i_crit_edge:          ; preds = %for.inc16.6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then20.i.i

for.inc16.6.i.i.if.else.i_crit_edge:              ; preds = %for.inc16.6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

if.then20.i.i:                                    ; preds = %for.inc16.6.i.i.if.then20.i.i_crit_edge, %for.inc16.5.i.i.if.then20.i.i_crit_edge, %for.inc16.4.i.i.if.then20.i.i_crit_edge, %for.inc16.3.i.i.if.then20.i.i_crit_edge, %for.inc16.2.i.i.if.then20.i.i_crit_edge, %for.inc16.1.i.i.if.then20.i.i_crit_edge, %for.inc16.i.i.if.then20.i.i_crit_edge, %if.end6.i.i.if.then20.i.i_crit_edge
  %call21.i.i = tail call ptr @sm_to_para(ptr noundef %smc, ptr noundef %add.ptr, i32 noundef 33) #5
  %tobool22.not.i.i = icmp eq ptr %call21.i.i, null
  br i1 %tobool22.not.i.i, label %if.then20.i.i.if.end16.i_crit_edge, label %if.end24.i.i

if.then20.i.i.if.end16.i_crit_edge:               ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

if.end24.i.i:                                     ; preds = %if.then20.i.i
  %p_len.i.i = getelementptr inbounds %struct.smt_para, ptr %call21.i.i, i32 0, i32 1
  %57 = ptrtoint ptr %p_len.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %p_len.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %58)
  %cmp25.not.i.i = icmp eq i16 %58, 8
  br i1 %cmp25.not.i.i, label %if.end28.i.i, label %if.end24.i.i.if.end16.i_crit_edge

if.end24.i.i.if.end16.i_crit_edge:                ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

if.end28.i.i:                                     ; preds = %if.end24.i.i
  %add.ptr.i.i = getelementptr %struct.smt_para, ptr %call21.i.i, i32 1
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %add.ptr.i.i, ptr noundef dereferenceable(8) %mib.i.i, i32 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool33.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool33.not.i.i, label %if.end28.i.i.if.else.i_crit_edge, label %if.end28.i.i.if.end16.i_crit_edge

if.end28.i.i.if.end16.i_crit_edge:                ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

if.end28.i.i.if.else.i_crit_edge:                 ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

if.else.i:                                        ; preds = %if.end28.i.i.if.else.i_crit_edge, %for.inc16.6.i.i.if.else.i_crit_edge, %if.then5.i.if.else.i_crit_edge
  %call.i.i = tail call ptr @sm_to_para(ptr noundef %smc, ptr noundef %add.ptr, i32 noundef 4149) #5
  %tobool.not.i304.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i304.i, label %if.else.i.if.end16.i_crit_edge, label %if.then.i305.i

if.else.i.if.end16.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

if.then.i305.i:                                   ; preds = %if.else.i
  %fddiSMTSetCount.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 35
  %59 = ptrtoint ptr %fddiSMTSetCount.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %fddiSMTSetCount.i.i, align 4
  %count1.i.i = getelementptr inbounds %struct.smt_p_setcount, ptr %call.i.i, i32 0, i32 1
  %61 = ptrtoint ptr %count1.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %count1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp.not.i.i = icmp eq i32 %60, %62
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.then.i305.i.if.then12.i_crit_edge

if.then.i305.i.if.then12.i_crit_edge:             ; preds = %if.then.i305.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12.i

lor.lhs.false.i.i:                                ; preds = %if.then.i305.i
  %timestamp.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 35, i32 1
  %timestamp4.i.i = getelementptr inbounds %struct.smt_p_setcount, ptr %call.i.i, i32 0, i32 2
  %bcmp.i306.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %timestamp.i.i, ptr noundef dereferenceable(8) %timestamp4.i.i, i32 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i306.i)
  %tobool7.not.i.i = icmp eq i32 %bcmp.i306.i, 0
  br i1 %tobool7.not.i.i, label %lor.lhs.false.i.i.if.end16.i_crit_edge, label %lor.lhs.false.i.i.if.then12.i_crit_edge

lor.lhs.false.i.i.if.then12.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12.i

lor.lhs.false.i.i.if.end16.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

if.then12.i:                                      ; preds = %lor.lhs.false.i.i.if.then12.i_crit_edge, %if.then.i305.i.if.then12.i_crit_edge
  %63 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 4, ptr %6, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then12.i, %lor.lhs.false.i.i.if.end16.i_crit_edge, %if.else.i.if.end16.i_crit_edge, %if.end28.i.i.if.end16.i_crit_edge, %if.end24.i.i.if.end16.i_crit_edge, %if.then20.i.i.if.end16.i_crit_edge, %if.then.i.i.if.end16.i_crit_edge, %if.end.i.if.end16.i_crit_edge
  %tobool23.not349.i = phi i1 [ false, %if.end28.i.i.if.end16.i_crit_edge ], [ false, %if.end24.i.i.if.end16.i_crit_edge ], [ false, %if.then20.i.i.if.end16.i_crit_edge ], [ false, %if.then.i.i.if.end16.i_crit_edge ], [ true, %lor.lhs.false.i.i.if.end16.i_crit_edge ], [ true, %if.else.i.if.end16.i_crit_edge ], [ true, %if.then12.i ], [ true, %if.end.i.if.end16.i_crit_edge ]
  %error.0.i = phi i32 [ 9, %if.end28.i.i.if.end16.i_crit_edge ], [ 9, %if.end24.i.i.if.end16.i_crit_edge ], [ 9, %if.then20.i.i.if.end16.i_crit_edge ], [ 9, %if.then.i.i.if.end16.i_crit_edge ], [ 0, %lor.lhs.false.i.i.if.end16.i_crit_edge ], [ 0, %if.else.i.if.end16.i_crit_edge ], [ 0, %if.then12.i ], [ 0, %if.end.i.if.end16.i_crit_edge ]
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.cond.i.i.i.for.cond.i.i.i_crit_edge, %if.end16.i
  %pt.0.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.cond.i.i.i.for.cond.i.i.i_crit_edge ], [ @p_tab, %if.end16.i ]
  %64 = ptrtoint ptr %pt.0.i.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %pt.0.i.i.i, align 2
  %incdec.ptr.i.i.i = getelementptr %struct.s_p_tab, ptr %pt.0.i.i.i, i32 1
  %66 = zext i16 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values)
  switch i16 %65, label %for.cond.i.i.i.for.cond.i.i.i_crit_edge [
    i16 18, label %for.cond.i.i.i.smt_get_ptab.exit.i.i_crit_edge
    i16 0, label %for.cond.i.i.i.smt_get_ptab.exit.i.i_crit_edge28
  ]

for.cond.i.i.i.smt_get_ptab.exit.i.i_crit_edge28: ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smt_get_ptab.exit.i.i

for.cond.i.i.i.smt_get_ptab.exit.i.i_crit_edge:   ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smt_get_ptab.exit.i.i

for.cond.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i.i

smt_get_ptab.exit.i.i:                            ; preds = %for.cond.i.i.i.smt_get_ptab.exit.i.i_crit_edge, %for.cond.i.i.i.smt_get_ptab.exit.i.i_crit_edge28
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %tobool.not.i.i.i = icmp eq i16 %65, 0
  %tobool1.not.i339.i = icmp eq ptr %pt.0.i.i.i, null
  %tobool1.not.i.i = or i1 %tobool1.not.i339.i, %tobool.not.i.i.i
  br i1 %tobool1.not.i.i, label %smt_get_ptab.exit.i.i.if.end306.i.i_crit_edge, label %land.lhs.true.i.i

smt_get_ptab.exit.i.i.if.end306.i.i_crit_edge:    ; preds = %smt_get_ptab.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end306.i.i

land.lhs.true.i.i:                                ; preds = %smt_get_ptab.exit.i.i
  %p_access.i.i = getelementptr inbounds %struct.s_p_tab, ptr %pt.0.i.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %p_access.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %p_access.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %68)
  %cmp.i.i = icmp eq i8 %68, 4
  br i1 %cmp.i.i, label %land.lhs.true.i.i.smt_add_para.exit.i_crit_edge, label %land.lhs.true.i.i.if.end306.i.i_crit_edge

land.lhs.true.i.i.if.end306.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end306.i.i

land.lhs.true.i.i.smt_add_para.exit.i_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smt_add_para.exit.i

if.end306.i.i:                                    ; preds = %land.lhs.true.i.i.if.end306.i.i_crit_edge, %smt_get_ptab.exit.i.i.if.end306.i.i_crit_edge
  %add.ptr.i309.i = getelementptr i8, ptr %add.ptr3.i, i32 4
  %69 = ptrtoint ptr %add.ptr.i309.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %add.ptr.i309.i, align 4
  %add.ptr322.i.i = getelementptr i8, ptr %add.ptr.i309.i, i32 4
  %70 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 18, ptr %add.ptr3.i, align 2
  %p_len.i312.i = getelementptr inbounds %struct.smt_para, ptr %add.ptr3.i, i32 0, i32 1
  %71 = ptrtoint ptr %p_len.i312.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 4, ptr %p_len.i312.i, align 2
  %72 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %add.ptr322.i.i, ptr %7, align 4
  %73 = ptrtoint ptr %pcon.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 4324, ptr %pcon.i, align 4
  br label %smt_add_para.exit.i

smt_add_para.exit.i:                              ; preds = %if.end306.i.i, %land.lhs.true.i.i.smt_add_para.exit.i_crit_edge
  call void @smt_add_para(ptr noundef %smc, ptr noundef nonnull %pcon.i, i16 noundef zeroext 4147, i32 noundef 0, i32 noundef 0) #5
  %74 = call ptr @memcpy(ptr %set_pcon.i, ptr %pcon.i, i32 16)
  call void @smt_add_para(ptr noundef %smc, ptr noundef nonnull %pcon.i, i16 noundef zeroext 4149, i32 noundef 0, i32 noundef 0) #5
  call void @smt_add_para(ptr noundef %smc, ptr noundef nonnull %pcon.i, i16 noundef zeroext 4150, i32 noundef 0, i32 noundef 0) #5
  %75 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %error.0.i, ptr %5, align 4
  %smt_len19.i = getelementptr inbounds %struct.smt_header, ptr %add.ptr, i32 0, i32 8
  %76 = ptrtoint ptr %smt_len19.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %smt_len19.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %cmp350.i = icmp ne i16 %77, 0
  %or.cond351.i = select i1 %tobool23.not349.i, i1 %cmp350.i, i1 false
  br i1 %or.cond351.i, label %while.body.lr.ph.i, label %smt_add_para.exit.i.while.end163.i_crit_edge

smt_add_para.exit.i.while.end163.i_crit_edge:     ; preds = %smt_add_para.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end163.i

while.body.lr.ph.i:                               ; preds = %smt_add_para.exit.i
  %conv20.i = zext i16 %77 to i32
  %add.ptr21.i = getelementptr %struct.smt_header, ptr %add.ptr, i32 1
  %sas.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 1
  %tobool4.not.not296.i = xor i1 %cmp9, true
  %m.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37
  %mib3.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %local)
  %tobool.not.i318.i = icmp eq i32 %local, 0
  %ring_status.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 11, i32 5
  %please_reconnect.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 3, i32 6
  %fddiESSSynchTxMode.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 7
  %fddiESSCategory.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 6
  %fddiESSMinSegmentSize.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 5
  %fddiESSMaxTNeg.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 4
  %fddiESSPayload264.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 2
  %fddiESSOverhead.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 3
  %raf_act_timer_poll272.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 14, i32 2
  %fddiSMTTrace_MaxExpiration.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 24
  %fddiSMTStatRptPolicy.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 23
  %fddiSMTTT_Notify.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 22
  %fddiSMTConnectionPolicy.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 21
  %fddiSMTConfigPolicy.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 20
  br label %while.body.i

while.body.i:                                     ; preds = %while.end154.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %len.0354.i = phi i32 [ %conv20.i, %while.body.lr.ph.i ], [ %sub158.i, %while.end154.i.while.body.i_crit_edge ]
  %pa.0352.i = phi ptr [ %add.ptr21.i, %while.body.lr.ph.i ], [ %add.ptr162.i, %while.end154.i.while.body.i_crit_edge ]
  %conv26.i = and i32 %len.0354.i, 65535
  %p_len.i = getelementptr inbounds %struct.smt_para, ptr %pa.0352.i, i32 0, i32 1
  %78 = ptrtoint ptr %p_len.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %p_len.i, align 2
  %conv27.i = zext i16 %79 to i32
  %add.i = add nuw nsw i32 %conv27.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv26.i, i32 %add.i)
  %cmp28.i = icmp uge i32 %conv26.i, %add.i
  %and.i = and i32 %conv27.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool32.not.i = icmp eq i32 %and.i, 0
  %or.cond294.i = and i1 %cmp28.i, %tobool32.not.i
  br i1 %or.cond294.i, label %if.end35.i, label %while.body.i.while.end163.sink.split.i_crit_edge

while.body.i.while.end163.sink.split.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end163.sink.split.i

if.end35.i:                                       ; preds = %while.body.i
  %80 = ptrtoint ptr %pa.0352.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %pa.0352.i, align 2
  %82 = and i16 %81, -4096
  %83 = zext i16 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.6)
  switch i16 %82, label %if.else76.i [
    i16 8192, label %if.end35.i.if.then46.i_crit_edge
    i16 12288, label %if.end35.i.if.then46.i_crit_edge29
    i16 16384, label %if.end35.i.if.then46.i_crit_edge30
  ]

if.end35.i.if.then46.i_crit_edge30:               ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then46.i

if.end35.i.if.then46.i_crit_edge29:               ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then46.i

if.end35.i.if.then46.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then46.i

if.then46.i:                                      ; preds = %if.end35.i.if.then46.i_crit_edge, %if.end35.i.if.then46.i_crit_edge29, %if.end35.i.if.then46.i_crit_edge30
  %add.ptr48.i = getelementptr i8, ptr %pa.0352.i, i32 7
  %84 = ptrtoint ptr %add.ptr48.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %add.ptr48.i, align 1
  %conv49.i = zext i8 %85 to i32
  br i1 %cmp9, label %land.lhs.true51.i, label %if.then46.i.while.body90.lr.ph.i_crit_edge

if.then46.i.while.body90.lr.ph.i_crit_edge:       ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body90.lr.ph.i

land.lhs.true51.i:                                ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %79)
  %cmp54.not.i = icmp eq i16 %79, 4
  br i1 %cmp54.not.i, label %if.end58.i, label %land.lhs.true51.i.while.end163.sink.split.i_crit_edge

land.lhs.true51.i.while.end163.sink.split.i_crit_edge: ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end163.sink.split.i

if.end58.i:                                       ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool59.not.i = icmp eq i8 %85, 0
  br i1 %tobool59.not.i, label %if.then62.i, label %if.end58.i.while.body90.lr.ph.i_crit_edge

if.end58.i.while.body90.lr.ph.i_crit_edge:        ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body90.lr.ph.i

if.then62.i:                                      ; preds = %if.end58.i
  %86 = zext i16 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.7)
  switch i16 %82, label %if.then62.i.while.body90.lr.ph.i_crit_edge [
    i16 8192, label %sw.bb.i
    i16 12288, label %sw.bb64.i
    i16 16384, label %sw.bb67.i
  ]

if.then62.i.while.body90.lr.ph.i_crit_edge:       ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body90.lr.ph.i

sw.bb.i:                                          ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body90.lr.ph.i

sw.bb64.i:                                        ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body90.lr.ph.i

sw.bb67.i:                                        ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #7
  %87 = ptrtoint ptr %sas.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %sas.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %88)
  %cmp71.i = icmp eq i8 %88, 1
  %spec.store.select.i = select i1 %cmp71.i, i32 1, i32 2
  br label %while.body90.lr.ph.i

if.else76.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %cmp81.not.i = icmp eq i16 %79, 0
  %or.cond297.i = select i1 %tobool4.not.not296.i, i1 true, i1 %cmp81.not.i
  br i1 %or.cond297.i, label %if.else76.i.while.body90.lr.ph.i_crit_edge, label %if.else76.i.while.end163.sink.split.i_crit_edge

if.else76.i.while.end163.sink.split.i_crit_edge:  ; preds = %if.else76.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end163.sink.split.i

if.else76.i.while.body90.lr.ph.i_crit_edge:       ; preds = %if.else76.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body90.lr.ph.i

while.body90.lr.ph.i:                             ; preds = %if.else76.i.while.body90.lr.ph.i_crit_edge, %sw.bb67.i, %sw.bb64.i, %sw.bb.i, %if.then62.i.while.body90.lr.ph.i_crit_edge, %if.end58.i.while.body90.lr.ph.i_crit_edge, %if.then46.i.while.body90.lr.ph.i_crit_edge
  %index.0.i = phi i32 [ %conv49.i, %if.end58.i.while.body90.lr.ph.i_crit_edge ], [ 0, %if.then62.i.while.body90.lr.ph.i_crit_edge ], [ 1, %sw.bb67.i ], [ 1, %sw.bb64.i ], [ 1, %sw.bb.i ], [ 0, %if.else76.i.while.body90.lr.ph.i_crit_edge ], [ %conv49.i, %if.then46.i.while.body90.lr.ph.i_crit_edge ]
  %idx_end.0.i = phi i32 [ %conv49.i, %if.end58.i.while.body90.lr.ph.i_crit_edge ], [ 0, %if.then62.i.while.body90.lr.ph.i_crit_edge ], [ %spec.store.select.i, %sw.bb67.i ], [ 2, %sw.bb64.i ], [ 1, %sw.bb.i ], [ 0, %if.else76.i.while.body90.lr.ph.i_crit_edge ], [ %conv49.i, %if.then46.i.while.body90.lr.ph.i_crit_edge ]
  %add.ptr22.i.i = getelementptr %struct.smt_para, ptr %pa.0352.i, i32 2
  %add.ptr.i317.i = getelementptr %struct.smt_para, ptr %pa.0352.i, i32 1
  br label %while.body90.i

while.body90.i:                                   ; preds = %if.end149.i.while.body90.i_crit_edge, %while.body90.lr.ph.i
  %index.1345.i = phi i32 [ %index.0.i, %while.body90.lr.ph.i ], [ %inc.i, %if.end149.i.while.body90.i_crit_edge ]
  %89 = ptrtoint ptr %pa.0352.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %pa.0352.i, align 2
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %while.body90.i
  %pt.0.i.i = phi ptr [ @p_tab, %while.body90.i ], [ %incdec.ptr.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %91 = ptrtoint ptr %pt.0.i.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %pt.0.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %92)
  %tobool.not.i313.i = icmp eq i16 %92, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %92, i16 %90)
  %cmp.not.i314.i = icmp eq i16 %92, %90
  %or.cond.i.i = or i1 %tobool.not.i313.i, %cmp.not.i314.i
  %incdec.ptr.i.i = getelementptr %struct.s_p_tab, ptr %pt.0.i.i, i32 1
  br i1 %or.cond.i.i, label %smt_get_ptab.exit.i, label %for.cond.i.i.for.cond.i.i_crit_edge

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i

smt_get_ptab.exit.i:                              ; preds = %for.cond.i.i
  %spec.select.i.i = select i1 %tobool.not.i313.i, ptr null, ptr %pt.0.i.i
  %tobool93.not.i = icmp eq ptr %spec.select.i.i, null
  br i1 %tobool93.not.i, label %smt_get_ptab.exit.i.if.else112.i_crit_edge, label %land.lhs.true94.i

smt_get_ptab.exit.i.if.else112.i_crit_edge:       ; preds = %smt_get_ptab.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else112.i

land.lhs.true94.i:                                ; preds = %smt_get_ptab.exit.i
  %p_access.i = getelementptr inbounds %struct.s_p_tab, ptr %spec.select.i.i, i32 0, i32 1
  %93 = ptrtoint ptr %p_access.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %p_access.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %94)
  %cmp96.i = icmp eq i8 %94, 16
  %95 = and i1 %cmp9, %cmp96.i
  br i1 %95, label %while.cond101.preheader.i, label %land.lhs.true94.i.if.else112.i_crit_edge

land.lhs.true94.i.if.else112.i_crit_edge:         ; preds = %land.lhs.true94.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else112.i

while.cond101.preheader.i:                        ; preds = %land.lhs.true94.i
  %p_access102340.i = getelementptr %struct.s_p_tab, ptr %pt.0.i.i, i32 1, i32 1
  %96 = ptrtoint ptr %p_access102340.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %p_access102340.i, align 2
  %.off341.i = add i8 %97, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off341.i)
  %switch342.i = icmp ult i8 %.off341.i, 2
  br i1 %switch342.i, label %while.cond101.preheader.i.while.body110.i_crit_edge, label %while.cond101.preheader.i.if.end149thread-pre-split.i_crit_edge

while.cond101.preheader.i.if.end149thread-pre-split.i_crit_edge: ; preds = %while.cond101.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end149thread-pre-split.i

while.cond101.preheader.i.while.body110.i_crit_edge: ; preds = %while.cond101.preheader.i
  br label %while.body110.i

while.body110.i:                                  ; preds = %while.body110.i.while.body110.i_crit_edge, %while.cond101.preheader.i.while.body110.i_crit_edge
  %call92.pn343.i = phi ptr [ %pt.0.i, %while.body110.i.while.body110.i_crit_edge ], [ %pt.0.i.i, %while.cond101.preheader.i.while.body110.i_crit_edge ]
  %pt.0.i = getelementptr %struct.s_p_tab, ptr %call92.pn343.i, i32 1
  %98 = ptrtoint ptr %pt.0.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %pt.0.i, align 2
  call void @smt_add_para(ptr noundef %smc, ptr noundef nonnull %pcon.i, i16 noundef zeroext %99, i32 noundef %index.1345.i, i32 noundef %local) #5
  %p_access102.i = getelementptr %struct.s_p_tab, ptr %call92.pn343.i, i32 2, i32 1
  %100 = ptrtoint ptr %p_access102.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %p_access102.i, align 2
  %.off.i = add i8 %101, -1
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %while.body110.i.while.body110.i_crit_edge, label %while.body110.i.if.end149thread-pre-split.i_crit_edge

while.body110.i.if.end149thread-pre-split.i_crit_edge: ; preds = %while.body110.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end149thread-pre-split.i

while.body110.i.while.body110.i_crit_edge:        ; preds = %while.body110.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body110.i

if.else112.i:                                     ; preds = %land.lhs.true94.i.if.else112.i_crit_edge, %smt_get_ptab.exit.i.if.else112.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 33, i16 %90)
  %cmp115.not.i = icmp eq i16 %90, 33
  call void @__sanitizer_cov_trace_const_cmp2(i16 4149, i16 %90)
  %cmp122.not.i = icmp eq i16 %90, 4149
  %or.cond301.i = select i1 %tobool4.not.not296.i, i1 %cmp122.not.i, i1 false
  %or.cond355.i = or i1 %cmp115.not.i, %or.cond301.i
  br i1 %or.cond355.i, label %if.else112.i.if.end149thread-pre-split.i_crit_edge, label %if.then124.i

if.else112.i.if.end149thread-pre-split.i_crit_edge: ; preds = %if.else112.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end149thread-pre-split.i

if.then124.i:                                     ; preds = %if.else112.i
  %102 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool126.not.i = icmp eq i32 %103, 0
  br i1 %tobool126.not.i, label %if.else129.i, label %if.then124.i.if.end149thread-pre-split.sink.split.i_crit_edge

if.then124.i.if.end149thread-pre-split.sink.split.i_crit_edge: ; preds = %if.then124.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end149thread-pre-split.sink.split.i

if.else129.i:                                     ; preds = %if.then124.i
  br i1 %cmp9, label %if.else135.i, label %if.then131.i

if.then131.i:                                     ; preds = %if.else129.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte_val.i.i) #5
  %104 = ptrtoint ptr %byte_val.i.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 -1, ptr %byte_val.i.i, align 1, !annotation !25
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %word_val.i.i) #5
  %105 = ptrtoint ptr %word_val.i.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 -1, ptr %word_val.i.i, align 2, !annotation !25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %long_val.i.i) #5
  %106 = ptrtoint ptr %long_val.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 -1, ptr %long_val.i.i, align 4, !annotation !25
  %sub.i315.i = add nsw i32 %index.1345.i, -1
  %107 = ptrtoint ptr %p_len.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %p_len.i, align 2
  %conv.i.i = zext i16 %108 to i32
  %109 = and i16 %90, -4096
  %and.i.i = zext i16 %109 to i32
  %110 = add nsw i32 %and.i.i, -4096
  %111 = lshr exact i32 %110, 12
  %112 = zext i32 %111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %111, label %if.then131.i.sw.epilog.i.i_crit_edge [
    i32 3, label %sw.bb24.i.i
    i32 1, label %sw.bb5.i.i
    i32 2, label %sw.bb12.i.i
  ]

if.then131.i.sw.epilog.i.i_crit_edge:             ; preds = %if.then131.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.i

sw.bb5.i.i:                                       ; preds = %if.then131.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i315.i)
  %cmp7.not.i.i = icmp eq i32 %sub.i315.i, 0
  br i1 %cmp7.not.i.i, label %if.end.i.i, label %sw.bb5.i.i.smt_set_para.exit.i_crit_edge

sw.bb5.i.i.smt_set_para.exit.i_crit_edge:         ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smt_set_para.exit.i

if.end.i.i:                                       ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub11.i.i = add nsw i32 %conv.i.i, -4
  br label %sw.epilog.i.i

sw.bb12.i.i:                                      ; preds = %if.then131.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i315.i)
  %113 = icmp ugt i32 %sub.i315.i, 1
  br i1 %113, label %sw.bb12.i.i.smt_set_para.exit.i_crit_edge, label %if.end19.i.i

sw.bb12.i.i.smt_set_para.exit.i_crit_edge:        ; preds = %sw.bb12.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smt_set_para.exit.i

if.end19.i.i:                                     ; preds = %sw.bb12.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx21.i.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 38, i32 %sub.i315.i
  %sub23.i.i = add nsw i32 %conv.i.i, -4
  br label %sw.epilog.i.i

sw.bb24.i.i:                                      ; preds = %if.then131.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.1345.i)
  %cmp25.i.i = icmp eq i32 %index.1345.i, 0
  br i1 %cmp25.i.i, label %sw.bb24.i.i.smt_set_para.exit.i_crit_edge, label %lor.lhs.false27.i.i

sw.bb24.i.i.smt_set_para.exit.i_crit_edge:        ; preds = %sw.bb24.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smt_set_para.exit.i

lor.lhs.false27.i.i:                              ; preds = %sw.bb24.i.i
  %114 = ptrtoint ptr %sas.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %sas.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %115)
  %cmp.i.i.i = icmp eq i8 %115, 1
  %..i.i.i = select i1 %cmp.i.i.i, i32 1, i32 2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i315.i, i32 %..i.i.i)
  %cmp28.not.i.i = icmp ult i32 %sub.i315.i, %..i.i.i
  br i1 %cmp28.not.i.i, label %if.end31.i.i, label %lor.lhs.false27.i.i.smt_set_para.exit.i_crit_edge

lor.lhs.false27.i.i.smt_set_para.exit.i_crit_edge: ; preds = %lor.lhs.false27.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smt_set_para.exit.i

if.end31.i.i:                                     ; preds = %lor.lhs.false27.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %.p.i.i.i = select i1 %cmp.i.i.i, i32 0, i32 %sub.i315.i
  %arrayidx34.i.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 39, i32 %.p.i.i.i
  %sub36.i.i = add nsw i32 %conv.i.i, -4
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %if.end31.i.i, %if.end19.i.i, %if.end.i.i, %if.then131.i.sw.epilog.i.i_crit_edge
  %len.0.i.i = phi i32 [ %sub23.i.i, %if.end19.i.i ], [ %sub11.i.i, %if.end.i.i ], [ %sub36.i.i, %if.end31.i.i ], [ %conv.i.i, %if.then131.i.sw.epilog.i.i_crit_edge ]
  %from.0.i.i = phi ptr [ %add.ptr22.i.i, %if.end19.i.i ], [ %add.ptr22.i.i, %if.end.i.i ], [ %add.ptr22.i.i, %if.end31.i.i ], [ %add.ptr.i317.i, %if.then131.i.sw.epilog.i.i_crit_edge ]
  %mib_addr.0.i.i = phi ptr [ %arrayidx21.i.i, %if.end19.i.i ], [ %m.i.i, %if.end.i.i ], [ %arrayidx34.i.i, %if.end31.i.i ], [ %mib3.i.i, %if.then131.i.sw.epilog.i.i_crit_edge ]
  %mib_m.0.i.i = phi ptr [ null, %if.end19.i.i ], [ %m.i.i, %if.end.i.i ], [ null, %if.end31.i.i ], [ null, %if.then131.i.sw.epilog.i.i_crit_edge ]
  %mib_a.0.i.i = phi ptr [ %arrayidx21.i.i, %if.end19.i.i ], [ null, %if.end.i.i ], [ null, %if.end31.i.i ], [ null, %if.then131.i.sw.epilog.i.i_crit_edge ]
  %mib_p.0.i.i = phi ptr [ null, %if.end19.i.i ], [ null, %if.end.i.i ], [ %arrayidx34.i.i, %if.end31.i.i ], [ null, %if.then131.i.sw.epilog.i.i_crit_edge ]
  %116 = zext i16 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %116, ptr @__sancov_gen_cov_switch_values.9)
  switch i16 %90, label %sw.epilog.i.i.for.cond.i.i324.i.preheader_crit_edge [
    i16 4336, label %sw.epilog.i.i.sw.bb39.i.i_crit_edge
    i16 4337, label %sw.epilog.i.i.sw.bb39.i.i_crit_edge31
    i16 4338, label %sw.epilog.i.i.sw.bb39.i.i_crit_edge32
    i16 4339, label %sw.epilog.i.i.sw.bb39.i.i_crit_edge33
    i16 4340, label %sw.epilog.i.i.sw.bb39.i.i_crit_edge34
    i16 4341, label %sw.epilog.i.i.sw.bb39.i.i_crit_edge35
    i16 4342, label %sw.epilog.i.i.sw.bb39.i.i_crit_edge36
    i16 4343, label %sw.epilog.i.i.sw.bb39.i.i_crit_edge37
    i16 8433, label %sw.epilog.i.i.sw.bb39.i.i_crit_edge38
  ]

sw.epilog.i.i.sw.bb39.i.i_crit_edge38:            ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb39.i.i

sw.epilog.i.i.sw.bb39.i.i_crit_edge37:            ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb39.i.i

sw.epilog.i.i.sw.bb39.i.i_crit_edge36:            ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb39.i.i

sw.epilog.i.i.sw.bb39.i.i_crit_edge35:            ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb39.i.i

sw.epilog.i.i.sw.bb39.i.i_crit_edge34:            ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb39.i.i

sw.epilog.i.i.sw.bb39.i.i_crit_edge33:            ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb39.i.i

sw.epilog.i.i.sw.bb39.i.i_crit_edge32:            ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb39.i.i

sw.epilog.i.i.sw.bb39.i.i_crit_edge31:            ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb39.i.i

sw.epilog.i.i.sw.bb39.i.i_crit_edge:              ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb39.i.i

sw.epilog.i.i.for.cond.i.i324.i.preheader_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i324.i.preheader

sw.bb39.i.i:                                      ; preds = %sw.epilog.i.i.sw.bb39.i.i_crit_edge, %sw.epilog.i.i.sw.bb39.i.i_crit_edge31, %sw.epilog.i.i.sw.bb39.i.i_crit_edge32, %sw.epilog.i.i.sw.bb39.i.i_crit_edge33, %sw.epilog.i.i.sw.bb39.i.i_crit_edge34, %sw.epilog.i.i.sw.bb39.i.i_crit_edge35, %sw.epilog.i.i.sw.bb39.i.i_crit_edge36, %sw.epilog.i.i.sw.bb39.i.i_crit_edge37, %sw.epilog.i.i.sw.bb39.i.i_crit_edge38
  br i1 %tobool.not.i318.i, label %sw.bb39.i.i.smt_set_para.exit.i_crit_edge, label %sw.bb39.i.i.for.cond.i.i324.i.preheader_crit_edge

sw.bb39.i.i.for.cond.i.i324.i.preheader_crit_edge: ; preds = %sw.bb39.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i324.i.preheader

sw.bb39.i.i.smt_set_para.exit.i_crit_edge:        ; preds = %sw.bb39.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smt_set_para.exit.i

for.cond.i.i324.i.preheader:                      ; preds = %sw.bb39.i.i.for.cond.i.i324.i.preheader_crit_edge, %sw.epilog.i.i.for.cond.i.i324.i.preheader_crit_edge
  br label %for.cond.i.i324.i

for.cond.i.i324.i:                                ; preds = %for.cond.i.i324.i.for.cond.i.i324.i_crit_edge, %for.cond.i.i324.i.preheader
  %pt.0.i.i319.i = phi ptr [ %incdec.ptr.i.i323.i, %for.cond.i.i324.i.for.cond.i.i324.i_crit_edge ], [ @p_tab, %for.cond.i.i324.i.preheader ]
  %117 = ptrtoint ptr %pt.0.i.i319.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %pt.0.i.i319.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %118)
  %tobool.not.i.i320.i = icmp eq i16 %118, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %118, i16 %90)
  %cmp.not.i.i321.i = icmp eq i16 %118, %90
  %or.cond.i.i322.i = or i1 %tobool.not.i.i320.i, %cmp.not.i.i321.i
  %incdec.ptr.i.i323.i = getelementptr %struct.s_p_tab, ptr %pt.0.i.i319.i, i32 1
  br i1 %or.cond.i.i322.i, label %smt_get_ptab.exit.i325.i, label %for.cond.i.i324.i.for.cond.i.i324.i_crit_edge

for.cond.i.i324.i.for.cond.i.i324.i_crit_edge:    ; preds = %for.cond.i.i324.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i324.i

smt_get_ptab.exit.i325.i:                         ; preds = %for.cond.i.i324.i
  %tobool45.not16.i.i = icmp eq ptr %pt.0.i.i319.i, null
  %tobool45.not.i.i = or i1 %tobool45.not16.i.i, %tobool.not.i.i320.i
  br i1 %tobool45.not.i.i, label %if.then46.i.i, label %if.end51.i.i

if.then46.i.i:                                    ; preds = %smt_get_ptab.exit.i325.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %90)
  %tobool50.not.i.i = icmp ult i16 %90, 256
  %cond.i.i = select i1 %tobool50.not.i.i, i32 5, i32 6
  br label %smt_set_para.exit.i

if.end51.i.i:                                     ; preds = %smt_get_ptab.exit.i325.i
  %p_access.i326.i = getelementptr inbounds %struct.s_p_tab, ptr %pt.0.i.i319.i, i32 0, i32 1
  %119 = ptrtoint ptr %p_access.i326.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %p_access.i326.i, align 2
  %121 = zext i8 %120 to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %120, label %if.end51.i.i.smt_set_para.exit.i_crit_edge [
    i8 2, label %if.end51.i.i.sw.epilog55.i.i_crit_edge
    i8 4, label %if.end51.i.i.sw.epilog55.i.i_crit_edge39
  ]

if.end51.i.i.sw.epilog55.i.i_crit_edge39:         ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog55.i.i

if.end51.i.i.sw.epilog55.i.i_crit_edge:           ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog55.i.i

if.end51.i.i.smt_set_para.exit.i_crit_edge:       ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smt_set_para.exit.i

sw.epilog55.i.i:                                  ; preds = %if.end51.i.i.sw.epilog55.i.i_crit_edge, %if.end51.i.i.sw.epilog55.i.i_crit_edge39
  %p_swap.i.i = getelementptr inbounds %struct.s_p_tab, ptr %pt.0.i.i319.i, i32 0, i32 3
  %p_offset.i.i = getelementptr inbounds %struct.s_p_tab, ptr %pt.0.i.i319.i, i32 0, i32 2
  %122 = ptrtoint ptr %p_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %p_offset.i.i, align 2
  %conv56.i.i = zext i16 %123 to i32
  %add.ptr57.i.i = getelementptr i8, ptr %mib_addr.0.i.i, i32 %conv56.i.i
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %sw.epilog189.i.i.land.rhs.i.i_crit_edge, %sw.epilog55.i.i
  %swap.021.i.i = phi ptr [ %incdec.ptr.i327.i, %sw.epilog189.i.i.land.rhs.i.i_crit_edge ], [ %p_swap.i.i, %sw.epilog55.i.i ]
  %to.020.i.i = phi ptr [ %to.1.i.i, %sw.epilog189.i.i.land.rhs.i.i_crit_edge ], [ %add.ptr57.i.i, %sw.epilog55.i.i ]
  %from.119.i.i = phi ptr [ %from.3.i.i, %sw.epilog189.i.i.land.rhs.i.i_crit_edge ], [ %from.0.i.i, %sw.epilog55.i.i ]
  %len.118.i.i = phi i32 [ %len.2.i.i, %sw.epilog189.i.i.land.rhs.i.i_crit_edge ], [ %len.0.i.i, %sw.epilog55.i.i ]
  %incdec.ptr.i327.i = getelementptr i8, ptr %swap.021.i.i, i32 1
  %124 = ptrtoint ptr %swap.021.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %swap.021.i.i, align 1
  %126 = zext i8 %125 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %125, label %do.end.i.i [
    i8 0, label %land.rhs.i.i.while.end.i.i_crit_edge
    i8 98, label %land.rhs.i.i.sw.epilog189.i.i_crit_edge
    i8 119, label %sw.bb63.i.i
    i8 108, label %sw.bb64.i.i
    i8 83, label %land.rhs.i.i.sw.bb65.i.i_crit_edge
    i8 69, label %land.rhs.i.i.sw.bb65.i.i_crit_edge40
    i8 82, label %land.rhs.i.i.sw.bb65.i.i_crit_edge41
    i8 114, label %land.rhs.i.i.sw.bb65.i.i_crit_edge42
    i8 70, label %land.rhs.i.i.sw.bb84.i.i_crit_edge
    i8 66, label %land.rhs.i.i.sw.bb84.i.i_crit_edge43
    i8 67, label %land.rhs.i.i.sw.bb105.i.i_crit_edge
    i8 84, label %land.rhs.i.i.sw.bb105.i.i_crit_edge44
    i8 76, label %land.rhs.i.i.sw.bb105.i.i_crit_edge45
    i8 65, label %sw.bb120.i.i
    i8 52, label %sw.bb132.i.i
    i8 56, label %sw.bb143.i.i
    i8 68, label %sw.bb154.i.i
    i8 80, label %if.then167.i.i
  ]

land.rhs.i.i.sw.bb105.i.i_crit_edge45:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb105.i.i

land.rhs.i.i.sw.bb105.i.i_crit_edge44:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb105.i.i

land.rhs.i.i.sw.bb105.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb105.i.i

land.rhs.i.i.sw.bb84.i.i_crit_edge43:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb84.i.i

land.rhs.i.i.sw.bb84.i.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb84.i.i

land.rhs.i.i.sw.bb65.i.i_crit_edge42:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb65.i.i

land.rhs.i.i.sw.bb65.i.i_crit_edge41:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb65.i.i

land.rhs.i.i.sw.bb65.i.i_crit_edge40:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb65.i.i

land.rhs.i.i.sw.bb65.i.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb65.i.i

land.rhs.i.i.sw.epilog189.i.i_crit_edge:          ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog189.i.i

land.rhs.i.i.while.end.i.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i.i

sw.bb63.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog189.i.i

sw.bb64.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog189.i.i

sw.bb65.i.i:                                      ; preds = %land.rhs.i.i.sw.bb65.i.i_crit_edge, %land.rhs.i.i.sw.bb65.i.i_crit_edge40, %land.rhs.i.i.sw.bb65.i.i_crit_edge41, %land.rhs.i.i.sw.bb65.i.i_crit_edge42
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len.118.i.i)
  %cmp66.i.i = icmp slt i32 %len.118.i.i, 4
  br i1 %cmp66.i.i, label %sw.bb65.i.i.smt_set_para.exit.i_crit_edge, label %if.end69.i.i

sw.bb65.i.i.smt_set_para.exit.i_crit_edge:        ; preds = %sw.bb65.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smt_set_para.exit.i

if.end69.i.i:                                     ; preds = %sw.bb65.i.i
  %127 = ptrtoint ptr %from.119.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %from.119.i.i, align 1
  %arrayidx72.i.i = getelementptr i8, ptr %from.119.i.i, i32 1
  %129 = ptrtoint ptr %arrayidx72.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx72.i.i, align 1
  %or3.i.i = or i8 %130, %128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or3.i.i)
  %tobool74.not.i.i = icmp eq i8 %or3.i.i, 0
  br i1 %tobool74.not.i.i, label %if.end76.i.i, label %if.end69.i.i.val_error.i.i_crit_edge

if.end69.i.i.val_error.i.i_crit_edge:             ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %val_error.i.i

if.end76.i.i:                                     ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx77.i.i = getelementptr i8, ptr %from.119.i.i, i32 2
  %131 = ptrtoint ptr %arrayidx77.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx77.i.i, align 1
  %133 = ptrtoint ptr %to.020.i.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %132, ptr %to.020.i.i, align 1
  %arrayidx79.i.i = getelementptr i8, ptr %from.119.i.i, i32 3
  %134 = ptrtoint ptr %arrayidx79.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx79.i.i, align 1
  %arrayidx80.i.i = getelementptr i8, ptr %to.020.i.i, i32 1
  %136 = ptrtoint ptr %arrayidx80.i.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %135, ptr %arrayidx80.i.i, align 1
  %add.ptr81.i.i = getelementptr i8, ptr %from.119.i.i, i32 4
  %add.ptr82.i.i = getelementptr i8, ptr %to.020.i.i, i32 2
  %sub83.i.i = add nsw i32 %len.118.i.i, -4
  br label %sw.epilog189.i.i

sw.bb84.i.i:                                      ; preds = %land.rhs.i.i.sw.bb84.i.i_crit_edge, %land.rhs.i.i.sw.bb84.i.i_crit_edge43
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len.118.i.i)
  %cmp85.i.i = icmp slt i32 %len.118.i.i, 4
  br i1 %cmp85.i.i, label %sw.bb84.i.i.smt_set_para.exit.i_crit_edge, label %if.end88.i.i

sw.bb84.i.i.smt_set_para.exit.i_crit_edge:        ; preds = %sw.bb84.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smt_set_para.exit.i

if.end88.i.i:                                     ; preds = %sw.bb84.i.i
  %137 = ptrtoint ptr %from.119.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %from.119.i.i, align 1
  %arrayidx91.i.i = getelementptr i8, ptr %from.119.i.i, i32 1
  %139 = ptrtoint ptr %arrayidx91.i.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx91.i.i, align 1
  %or931.i.i = or i8 %140, %138
  %arrayidx94.i.i = getelementptr i8, ptr %from.119.i.i, i32 2
  %141 = ptrtoint ptr %arrayidx94.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx94.i.i, align 1
  %or962.i.i = or i8 %or931.i.i, %142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or962.i.i)
  %tobool97.not.i.i = icmp eq i8 %or962.i.i, 0
  br i1 %tobool97.not.i.i, label %if.end99.i.i, label %if.end88.i.i.val_error.i.i_crit_edge

if.end88.i.i.val_error.i.i_crit_edge:             ; preds = %if.end88.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %val_error.i.i

if.end99.i.i:                                     ; preds = %if.end88.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx100.i.i = getelementptr i8, ptr %from.119.i.i, i32 3
  %143 = ptrtoint ptr %arrayidx100.i.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx100.i.i, align 1
  %145 = ptrtoint ptr %to.020.i.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %144, ptr %to.020.i.i, align 1
  %sub102.i.i = add nsw i32 %len.118.i.i, -4
  %add.ptr103.i.i = getelementptr i8, ptr %from.119.i.i, i32 4
  %add.ptr104.i.i = getelementptr i8, ptr %to.020.i.i, i32 4
  br label %sw.epilog189.i.i

sw.bb105.i.i:                                     ; preds = %land.rhs.i.i.sw.bb105.i.i_crit_edge, %land.rhs.i.i.sw.bb105.i.i_crit_edge44, %land.rhs.i.i.sw.bb105.i.i_crit_edge45
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len.118.i.i)
  %cmp106.i.i = icmp slt i32 %len.118.i.i, 4
  br i1 %cmp106.i.i, label %sw.bb105.i.i.smt_set_para.exit.i_crit_edge, label %if.end109.i.i

sw.bb105.i.i.smt_set_para.exit.i_crit_edge:       ; preds = %sw.bb105.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smt_set_para.exit.i

if.end109.i.i:                                    ; preds = %sw.bb105.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr110.i.i = getelementptr i8, ptr %from.119.i.i, i32 1
  %146 = ptrtoint ptr %from.119.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %from.119.i.i, align 1
  %148 = ptrtoint ptr %to.020.i.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %147, ptr %to.020.i.i, align 1
  %incdec.ptr112.i.i = getelementptr i8, ptr %from.119.i.i, i32 2
  %149 = ptrtoint ptr %incdec.ptr110.i.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %incdec.ptr110.i.i, align 1
  %arrayidx113.i.i = getelementptr i8, ptr %to.020.i.i, i32 1
  %151 = ptrtoint ptr %arrayidx113.i.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %150, ptr %arrayidx113.i.i, align 1
  %incdec.ptr114.i.i = getelementptr i8, ptr %from.119.i.i, i32 3
  %152 = ptrtoint ptr %incdec.ptr112.i.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %incdec.ptr112.i.i, align 1
  %arrayidx115.i.i = getelementptr i8, ptr %to.020.i.i, i32 2
  %154 = ptrtoint ptr %arrayidx115.i.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %153, ptr %arrayidx115.i.i, align 1
  %incdec.ptr116.i.i = getelementptr i8, ptr %from.119.i.i, i32 4
  %155 = ptrtoint ptr %incdec.ptr114.i.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %incdec.ptr114.i.i, align 1
  %arrayidx117.i.i = getelementptr i8, ptr %to.020.i.i, i32 3
  %157 = ptrtoint ptr %arrayidx117.i.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %156, ptr %arrayidx117.i.i, align 1
  %sub118.i.i = add nsw i32 %len.118.i.i, -4
  %add.ptr119.i.i = getelementptr i8, ptr %to.020.i.i, i32 4
  br label %sw.epilog189.i.i

sw.bb120.i.i:                                     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %len.118.i.i)
  %cmp121.i.i = icmp slt i32 %len.118.i.i, 8
  br i1 %cmp121.i.i, label %sw.bb120.i.i.smt_set_para.exit.i_crit_edge, label %if.then126.i.i

sw.bb120.i.i.smt_set_para.exit.i_crit_edge:       ; preds = %sw.bb120.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smt_set_para.exit.i

if.then126.i.i:                                   ; preds = %sw.bb120.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr127.i.i = getelementptr i8, ptr %from.119.i.i, i32 2
  %158 = call ptr @memcpy(ptr %to.020.i.i, ptr %add.ptr127.i.i, i32 6)
  %add.ptr129.i.i = getelementptr i8, ptr %to.020.i.i, i32 8
  %add.ptr130.i.i = getelementptr i8, ptr %from.119.i.i, i32 8
  %sub131.i.i = add nsw i32 %len.118.i.i, -8
  br label %sw.epilog189.i.i

sw.bb132.i.i:                                     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len.118.i.i)
  %cmp133.i.i = icmp slt i32 %len.118.i.i, 4
  br i1 %cmp133.i.i, label %sw.bb132.i.i.smt_set_para.exit.i_crit_edge, label %if.then138.i.i

sw.bb132.i.i.smt_set_para.exit.i_crit_edge:       ; preds = %sw.bb132.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smt_set_para.exit.i

if.then138.i.i:                                   ; preds = %sw.bb132.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %159 = ptrtoint ptr %from.119.i.i to i32
  call void @__asan_loadN_noabort(i32 %159, i32 4)
  %160 = load i32, ptr %from.119.i.i, align 1
  %161 = ptrtoint ptr %to.020.i.i to i32
  call void @__asan_storeN_noabort(i32 %161, i32 4)
  store i32 %160, ptr %to.020.i.i, align 1
  %add.ptr140.i.i = getelementptr i8, ptr %to.020.i.i, i32 4
  %add.ptr141.i.i = getelementptr i8, ptr %from.119.i.i, i32 4
  %sub142.i.i = add nsw i32 %len.118.i.i, -4
  br label %sw.epilog189.i.i

sw.bb143.i.i:                                     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %len.118.i.i)
  %cmp144.i.i = icmp slt i32 %len.118.i.i, 8
  br i1 %cmp144.i.i, label %sw.bb143.i.i.smt_set_para.exit.i_crit_edge, label %if.then149.i.i

sw.bb143.i.i.smt_set_para.exit.i_crit_edge:       ; preds = %sw.bb143.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smt_set_para.exit.i

if.then149.i.i:                                   ; preds = %sw.bb143.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %162 = ptrtoint ptr %from.119.i.i to i32
  call void @__asan_loadN_noabort(i32 %162, i32 8)
  %163 = load i64, ptr %from.119.i.i, align 1
  %164 = ptrtoint ptr %to.020.i.i to i32
  call void @__asan_storeN_noabort(i32 %164, i32 8)
  store i64 %163, ptr %to.020.i.i, align 1
  %add.ptr151.i.i = getelementptr i8, ptr %to.020.i.i, i32 8
  %add.ptr152.i.i = getelementptr i8, ptr %from.119.i.i, i32 8
  %sub153.i.i = add nsw i32 %len.118.i.i, -8
  br label %sw.epilog189.i.i

sw.bb154.i.i:                                     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %len.118.i.i)
  %cmp155.i.i = icmp slt i32 %len.118.i.i, 32
  br i1 %cmp155.i.i, label %sw.bb154.i.i.smt_set_para.exit.i_crit_edge, label %if.then160.i.i

sw.bb154.i.i.smt_set_para.exit.i_crit_edge:       ; preds = %sw.bb154.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smt_set_para.exit.i

if.then160.i.i:                                   ; preds = %sw.bb154.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %165 = call ptr @memcpy(ptr %to.020.i.i, ptr %from.119.i.i, i32 32)
  %add.ptr162.i.i = getelementptr i8, ptr %to.020.i.i, i32 32
  %add.ptr163.i.i = getelementptr i8, ptr %from.119.i.i, i32 32
  %sub164.i.i = add nsw i32 %len.118.i.i, -32
  br label %sw.epilog189.i.i

if.then167.i.i:                                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr168.i.i = getelementptr i8, ptr %from.119.i.i, i32 1
  %166 = ptrtoint ptr %from.119.i.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %from.119.i.i, align 1
  %168 = ptrtoint ptr %to.020.i.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %167, ptr %to.020.i.i, align 1
  %incdec.ptr170.i.i = getelementptr i8, ptr %from.119.i.i, i32 2
  %169 = ptrtoint ptr %incdec.ptr168.i.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %incdec.ptr168.i.i, align 1
  %arrayidx171.i.i = getelementptr i8, ptr %to.020.i.i, i32 1
  %171 = ptrtoint ptr %arrayidx171.i.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %170, ptr %arrayidx171.i.i, align 1
  %incdec.ptr172.i.i = getelementptr i8, ptr %from.119.i.i, i32 3
  %172 = ptrtoint ptr %incdec.ptr170.i.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %incdec.ptr170.i.i, align 1
  %arrayidx173.i.i = getelementptr i8, ptr %to.020.i.i, i32 2
  %174 = ptrtoint ptr %arrayidx173.i.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %173, ptr %arrayidx173.i.i, align 1
  %incdec.ptr174.i.i = getelementptr i8, ptr %from.119.i.i, i32 4
  %175 = ptrtoint ptr %incdec.ptr172.i.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %incdec.ptr172.i.i, align 1
  %arrayidx175.i.i = getelementptr i8, ptr %to.020.i.i, i32 3
  %177 = ptrtoint ptr %arrayidx175.i.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %176, ptr %arrayidx175.i.i, align 1
  %incdec.ptr176.i.i = getelementptr i8, ptr %from.119.i.i, i32 5
  %178 = ptrtoint ptr %incdec.ptr174.i.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %incdec.ptr174.i.i, align 1
  %arrayidx177.i.i = getelementptr i8, ptr %to.020.i.i, i32 4
  %180 = ptrtoint ptr %arrayidx177.i.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %179, ptr %arrayidx177.i.i, align 1
  %incdec.ptr178.i.i = getelementptr i8, ptr %from.119.i.i, i32 6
  %181 = ptrtoint ptr %incdec.ptr176.i.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %incdec.ptr176.i.i, align 1
  %arrayidx179.i.i = getelementptr i8, ptr %to.020.i.i, i32 5
  %183 = ptrtoint ptr %arrayidx179.i.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %182, ptr %arrayidx179.i.i, align 1
  %incdec.ptr180.i.i = getelementptr i8, ptr %from.119.i.i, i32 7
  %184 = ptrtoint ptr %incdec.ptr178.i.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %incdec.ptr178.i.i, align 1
  %arrayidx181.i.i = getelementptr i8, ptr %to.020.i.i, i32 6
  %186 = ptrtoint ptr %arrayidx181.i.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %185, ptr %arrayidx181.i.i, align 1
  %187 = ptrtoint ptr %incdec.ptr180.i.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %incdec.ptr180.i.i, align 1
  %arrayidx183.i.i = getelementptr i8, ptr %to.020.i.i, i32 7
  %189 = ptrtoint ptr %arrayidx183.i.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %188, ptr %arrayidx183.i.i, align 1
  %incdec.ptr182.i.i = getelementptr i8, ptr %from.119.i.i, i32 8
  %add.ptr185.i.i = getelementptr i8, ptr %to.020.i.i, i32 8
  %sub186.i.i = add i32 %len.118.i.i, -8
  br label %sw.epilog189.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call188.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 120, ptr noundef nonnull @.str.5) #9
  br label %smt_set_para.exit.i

sw.epilog189.i.i:                                 ; preds = %if.then167.i.i, %if.then160.i.i, %if.then149.i.i, %if.then138.i.i, %if.then126.i.i, %if.end109.i.i, %if.end99.i.i, %if.end76.i.i, %sw.bb64.i.i, %sw.bb63.i.i, %land.rhs.i.i.sw.epilog189.i.i_crit_edge
  %len.2.i.i = phi i32 [ %sub186.i.i, %if.then167.i.i ], [ %sub164.i.i, %if.then160.i.i ], [ %sub153.i.i, %if.then149.i.i ], [ %sub142.i.i, %if.then138.i.i ], [ %sub131.i.i, %if.then126.i.i ], [ %sub118.i.i, %if.end109.i.i ], [ %sub102.i.i, %if.end99.i.i ], [ %sub83.i.i, %if.end76.i.i ], [ %len.118.i.i, %sw.bb64.i.i ], [ %len.118.i.i, %sw.bb63.i.i ], [ %len.118.i.i, %land.rhs.i.i.sw.epilog189.i.i_crit_edge ]
  %from.3.i.i = phi ptr [ %incdec.ptr182.i.i, %if.then167.i.i ], [ %add.ptr163.i.i, %if.then160.i.i ], [ %add.ptr152.i.i, %if.then149.i.i ], [ %add.ptr141.i.i, %if.then138.i.i ], [ %add.ptr130.i.i, %if.then126.i.i ], [ %incdec.ptr116.i.i, %if.end109.i.i ], [ %add.ptr103.i.i, %if.end99.i.i ], [ %add.ptr81.i.i, %if.end76.i.i ], [ %from.119.i.i, %sw.bb64.i.i ], [ %from.119.i.i, %sw.bb63.i.i ], [ %from.119.i.i, %land.rhs.i.i.sw.epilog189.i.i_crit_edge ]
  %to.1.i.i = phi ptr [ %add.ptr185.i.i, %if.then167.i.i ], [ %add.ptr162.i.i, %if.then160.i.i ], [ %add.ptr151.i.i, %if.then149.i.i ], [ %add.ptr140.i.i, %if.then138.i.i ], [ %add.ptr129.i.i, %if.then126.i.i ], [ %add.ptr119.i.i, %if.end109.i.i ], [ %add.ptr104.i.i, %if.end99.i.i ], [ %add.ptr82.i.i, %if.end76.i.i ], [ %long_val.i.i, %sw.bb64.i.i ], [ %word_val.i.i, %sw.bb63.i.i ], [ %byte_val.i.i, %land.rhs.i.i.sw.epilog189.i.i_crit_edge ]
  %tobool58.not.i.i = icmp eq ptr %incdec.ptr.i327.i, null
  br i1 %tobool58.not.i.i, label %sw.epilog189.i.i.while.end.i.i_crit_edge, label %sw.epilog189.i.i.land.rhs.i.i_crit_edge

sw.epilog189.i.i.land.rhs.i.i_crit_edge:          ; preds = %sw.epilog189.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i.i

sw.epilog189.i.i.while.end.i.i_crit_edge:         ; preds = %sw.epilog189.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %sw.epilog189.i.i.while.end.i.i_crit_edge, %land.rhs.i.i.while.end.i.i_crit_edge
  %190 = ptrtoint ptr %pa.0352.i to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %pa.0352.i, align 2
  %192 = zext i16 %191 to i64
  call void @__sanitizer_cov_trace_switch(i64 %192, ptr @__sancov_gen_cov_switch_values.12)
  switch i16 %191, label %while.end.i.i.smt_set_para.exit.i_crit_edge [
    i16 4122, label %sw.bb192.i.i
    i16 4123, label %sw.bb201.i.i
    i16 4125, label %sw.bb210.i.i
    i16 4126, label %sw.bb223.i.i
    i16 4127, label %sw.bb232.i.i
    i16 4338, label %sw.bb240.i.i
    i16 4339, label %sw.bb253.i.i
    i16 4340, label %sw.bb276.i.i
    i16 4341, label %sw.bb287.i.i
    i16 4342, label %sw.bb298.i.i
    i16 4343, label %sw.bb307.i.i
    i16 8224, label %sw.bb316.i.i
    i16 8287, label %if.then328.i.i
    i16 8295, label %if.then332.i.i
    i16 8310, label %sw.bb334.i.i
    i16 8433, label %if.then345.i.i
    i16 12815, label %sw.bb347.i.i
    i16 12816, label %sw.bb358.i.i
    i16 12819, label %if.then379.i.i
    i16 12820, label %sw.bb381.i.i
    i16 12821, label %if.then391.i.i
    i16 12822, label %if.then395.i.i
    i16 12823, label %if.then399.i.i
    i16 16398, label %sw.bb411.i.i
    i16 16401, label %if.then422.i.i
    i16 16415, label %sw.bb425.i.i
    i16 16442, label %sw.bb434.i.i
    i16 16443, label %sw.bb447.i.i
    i16 4156, label %sw.bb460.i.i
    i16 16454, label %sw.bb466.i.i
  ]

while.end.i.i.smt_set_para.exit.i_crit_edge:      ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smt_set_para.exit.i

sw.bb192.i.i:                                     ; preds = %while.end.i.i
  %193 = ptrtoint ptr %word_val.i.i to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %word_val.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %194)
  %tobool195.not.i.i = icmp ult i16 %194, 2
  br i1 %tobool195.not.i.i, label %if.then199.i.i, label %sw.bb192.i.i.val_error.i.i_crit_edge

sw.bb192.i.i.val_error.i.i_crit_edge:             ; preds = %sw.bb192.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %val_error.i.i

if.then199.i.i:                                   ; preds = %sw.bb192.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %195 = ptrtoint ptr %fddiSMTConfigPolicy.i.i to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 %194, ptr %fddiSMTConfigPolicy.i.i, align 4
  br label %smt_set_para.exit.i

sw.bb201.i.i:                                     ; preds = %while.end.i.i
  %196 = ptrtoint ptr %word_val.i.i to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %word_val.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %197)
  %tobool204.not.i.i = icmp sgt i16 %197, -1
  br i1 %tobool204.not.i.i, label %sw.bb201.i.i.val_error.i.i_crit_edge, label %if.then208.i.i

sw.bb201.i.i.val_error.i.i_crit_edge:             ; preds = %sw.bb201.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %val_error.i.i

if.then208.i.i:                                   ; preds = %sw.bb201.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %198 = ptrtoint ptr %fddiSMTConnectionPolicy.i.i to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 %197, ptr %fddiSMTConnectionPolicy.i.i, align 2
  br label %smt_set_para.exit.i

sw.bb210.i.i:                                     ; preds = %while.end.i.i
  %199 = ptrtoint ptr %word_val.i.i to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %word_val.i.i, align 2
  %201 = add i16 %200, -31
  call void @__sanitizer_cov_trace_const_cmp2(i16 -29, i16 %201)
  %202 = icmp ult i16 %201, -29
  br i1 %202, label %sw.bb210.i.i.val_error.i.i_crit_edge, label %if.then221.i.i

sw.bb210.i.i.val_error.i.i_crit_edge:             ; preds = %sw.bb210.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %val_error.i.i

if.then221.i.i:                                   ; preds = %sw.bb210.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %203 = ptrtoint ptr %fddiSMTTT_Notify.i.i to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 %200, ptr %fddiSMTTT_Notify.i.i, align 4
  br label %smt_set_para.exit.i

sw.bb223.i.i:                                     ; preds = %while.end.i.i
  %204 = ptrtoint ptr %byte_val.i.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %byte_val.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %205)
  %tobool226.not.i.i = icmp ult i8 %205, 2
  br i1 %tobool226.not.i.i, label %if.then230.i.i, label %sw.bb223.i.i.val_error.i.i_crit_edge

sw.bb223.i.i.val_error.i.i_crit_edge:             ; preds = %sw.bb223.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %val_error.i.i

if.then230.i.i:                                   ; preds = %sw.bb223.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %206 = ptrtoint ptr %fddiSMTStatRptPolicy.i.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %205, ptr %fddiSMTStatRptPolicy.i.i, align 2
  br label %smt_set_para.exit.i

sw.bb232.i.i:                                     ; preds = %while.end.i.i
  %207 = ptrtoint ptr %long_val.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %long_val.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 75022161, i32 %208)
  %cmp233.i.i = icmp ult i32 %208, 75022161
  br i1 %cmp233.i.i, label %sw.bb232.i.i.val_error.i.i_crit_edge, label %if.then238.i.i

sw.bb232.i.i.val_error.i.i_crit_edge:             ; preds = %sw.bb232.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %val_error.i.i

if.then238.i.i:                                   ; preds = %sw.bb232.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %209 = ptrtoint ptr %fddiSMTTrace_MaxExpiration.i.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %208, ptr %fddiSMTTrace_MaxExpiration.i.i, align 4
  br label %smt_set_para.exit.i

sw.bb240.i.i:                                     ; preds = %while.end.i.i
  %210 = ptrtoint ptr %long_val.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %long_val.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1562, i32 %211)
  %cmp241.i.i = icmp ugt i32 %211, 1562
  br i1 %cmp241.i.i, label %sw.bb240.i.i.val_error.i.i_crit_edge, label %land.lhs.true.i328.i

sw.bb240.i.i.val_error.i.i_crit_edge:             ; preds = %sw.bb240.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %val_error.i.i

land.lhs.true.i328.i:                             ; preds = %sw.bb240.i.i
  %212 = ptrtoint ptr %fddiESSPayload264.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %fddiESSPayload264.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %213, i32 %211)
  %cmp247.not.i.i = icmp eq i32 %213, %211
  br i1 %cmp247.not.i.i, label %land.lhs.true.i328.i.smt_set_para.exit.i_crit_edge, label %if.then249.i.i

land.lhs.true.i328.i.smt_set_para.exit.i_crit_edge: ; preds = %land.lhs.true.i328.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smt_set_para.exit.i

if.then249.i.i:                                   ; preds = %land.lhs.true.i328.i
  call void @__sanitizer_cov_trace_pc() #7
  %214 = ptrtoint ptr %raf_act_timer_poll272.i.i to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 1, ptr %raf_act_timer_poll272.i.i, align 2
  %215 = ptrtoint ptr %fddiESSPayload264.i.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %211, ptr %fddiESSPayload264.i.i, align 4
  br label %smt_set_para.exit.i

sw.bb253.i.i:                                     ; preds = %while.end.i.i
  %216 = ptrtoint ptr %long_val.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %long_val.i.i, align 4
  %218 = add i32 %217, -5001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4951, i32 %218)
  %219 = icmp ult i32 %218, -4951
  br i1 %219, label %sw.bb253.i.i.val_error.i.i_crit_edge, label %land.lhs.true262.i.i

sw.bb253.i.i.val_error.i.i_crit_edge:             ; preds = %sw.bb253.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %val_error.i.i

land.lhs.true262.i.i:                             ; preds = %sw.bb253.i.i
  %220 = ptrtoint ptr %fddiESSPayload264.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %fddiESSPayload264.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %tobool265.not.i.i = icmp eq i32 %221, 0
  br i1 %tobool265.not.i.i, label %land.lhs.true262.i.i.smt_set_para.exit.i_crit_edge, label %land.lhs.true266.i.i

land.lhs.true262.i.i.smt_set_para.exit.i_crit_edge: ; preds = %land.lhs.true262.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smt_set_para.exit.i

land.lhs.true266.i.i:                             ; preds = %land.lhs.true262.i.i
  %222 = ptrtoint ptr %fddiESSOverhead.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %fddiESSOverhead.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %223, i32 %217)
  %cmp268.not.i.i = icmp eq i32 %223, %217
  br i1 %cmp268.not.i.i, label %land.lhs.true266.i.i.smt_set_para.exit.i_crit_edge, label %if.then270.i.i

land.lhs.true266.i.i.smt_set_para.exit.i_crit_edge: ; preds = %land.lhs.true266.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smt_set_para.exit.i

if.then270.i.i:                                   ; preds = %land.lhs.true266.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %224 = ptrtoint ptr %raf_act_timer_poll272.i.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 1, ptr %raf_act_timer_poll272.i.i, align 2
  %225 = ptrtoint ptr %fddiESSOverhead.i.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %217, ptr %fddiESSOverhead.i.i, align 4
  br label %smt_set_para.exit.i

sw.bb276.i.i:                                     ; preds = %while.end.i.i
  %226 = ptrtoint ptr %long_val.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %long_val.i.i, align 4
  %228 = add i32 %227, 62499
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2000001, i32 %228)
  %229 = icmp ult i32 %228, -2000001
  br i1 %229, label %sw.bb276.i.i.val_error.i.i_crit_edge, label %if.then285.i.i

sw.bb276.i.i.val_error.i.i_crit_edge:             ; preds = %sw.bb276.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %val_error.i.i

if.then285.i.i:                                   ; preds = %sw.bb276.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %230 = ptrtoint ptr %fddiESSMaxTNeg.i.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %227, ptr %fddiESSMaxTNeg.i.i, align 4
  br label %smt_set_para.exit.i

sw.bb287.i.i:                                     ; preds = %while.end.i.i
  %231 = ptrtoint ptr %long_val.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %long_val.i.i, align 4
  %233 = add i32 %232, -4479
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4478, i32 %233)
  %234 = icmp ult i32 %233, -4478
  br i1 %234, label %sw.bb287.i.i.val_error.i.i_crit_edge, label %if.then296.i.i

sw.bb287.i.i.val_error.i.i_crit_edge:             ; preds = %sw.bb287.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %val_error.i.i

if.then296.i.i:                                   ; preds = %sw.bb287.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %235 = ptrtoint ptr %fddiESSMinSegmentSize.i.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 %232, ptr %fddiESSMinSegmentSize.i.i, align 4
  br label %smt_set_para.exit.i

sw.bb298.i.i:                                     ; preds = %while.end.i.i
  %236 = ptrtoint ptr %long_val.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %long_val.i.i, align 4
  %and299.i.i = and i32 %237, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and299.i.i)
  %cmp300.not.i.i = icmp eq i32 %and299.i.i, 1
  br i1 %cmp300.not.i.i, label %if.then305.i.i, label %sw.bb298.i.i.val_error.i.i_crit_edge

sw.bb298.i.i.val_error.i.i_crit_edge:             ; preds = %sw.bb298.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %val_error.i.i

if.then305.i.i:                                   ; preds = %sw.bb298.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %238 = ptrtoint ptr %fddiESSCategory.i.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %237, ptr %fddiESSCategory.i.i, align 4
  br label %smt_set_para.exit.i

sw.bb307.i.i:                                     ; preds = %while.end.i.i
  %239 = ptrtoint ptr %word_val.i.i to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %word_val.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %240)
  %cmp309.i.i = icmp ugt i16 %240, 1
  br i1 %cmp309.i.i, label %sw.bb307.i.i.val_error.i.i_crit_edge, label %if.then314.i.i

sw.bb307.i.i.val_error.i.i_crit_edge:             ; preds = %sw.bb307.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %val_error.i.i

if.then314.i.i:                                   ; preds = %sw.bb307.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %241 = ptrtoint ptr %fddiESSSynchTxMode.i.i to i32
  call void @__asan_store2_noabort(i32 %241)
  store i16 %240, ptr %fddiESSSynchTxMode.i.i, align 4
  br label %smt_set_para.exit.i

sw.bb316.i.i:                                     ; preds = %while.end.i.i
  %242 = ptrtoint ptr %word_val.i.i to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %word_val.i.i, align 2
  %244 = and i16 %243, 36
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %244)
  %cmp319.i.i = icmp eq i16 %244, 0
  br i1 %cmp319.i.i, label %sw.bb316.i.i.val_error.i.i_crit_edge, label %if.then324.i.i

sw.bb316.i.i.val_error.i.i_crit_edge:             ; preds = %sw.bb316.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %val_error.i.i

if.then324.i.i:                                   ; preds = %sw.bb316.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %fddiMACRequestedPaths.i.i = getelementptr inbounds %struct.fddi_mib_m, ptr %mib_m.0.i.i, i32 0, i32 13
  %245 = ptrtoint ptr %fddiMACRequestedPaths.i.i to i32
  call void @__asan_store2_noabort(i32 %245)
  store i16 %243, ptr %fddiMACRequestedPaths.i.i, align 4
  br label %smt_set_para.exit.i

if.then328.i.i:                                   ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %246 = ptrtoint ptr %word_val.i.i to i32
  call void @__asan_load2_noabort(i32 %246)
  %247 = load i16, ptr %word_val.i.i, align 2
  %fddiMACFrameErrorThreshold.i.i = getelementptr inbounds %struct.fddi_mib_m, ptr %mib_m.0.i.i, i32 0, i32 48
  %248 = ptrtoint ptr %fddiMACFrameErrorThreshold.i.i to i32
  call void @__asan_store2_noabort(i32 %248)
  store i16 %247, ptr %fddiMACFrameErrorThreshold.i.i, align 4
  br label %smt_set_para.exit.i

if.then332.i.i:                                   ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %249 = ptrtoint ptr %word_val.i.i to i32
  call void @__asan_load2_noabort(i32 %249)
  %250 = load i16, ptr %word_val.i.i, align 2
  %fddiMACNotCopiedThreshold.i.i = getelementptr inbounds %struct.fddi_mib_m, ptr %mib_m.0.i.i, i32 0, i32 50
  %251 = ptrtoint ptr %fddiMACNotCopiedThreshold.i.i to i32
  call void @__asan_store2_noabort(i32 %251)
  store i16 %250, ptr %fddiMACNotCopiedThreshold.i.i, align 4
  br label %smt_set_para.exit.i

sw.bb334.i.i:                                     ; preds = %while.end.i.i
  %252 = ptrtoint ptr %byte_val.i.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %byte_val.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %253)
  %tobool337.not.i.i = icmp ult i8 %253, 2
  br i1 %tobool337.not.i.i, label %if.then341.i.i, label %sw.bb334.i.i.val_error.i.i_crit_edge

sw.bb334.i.i.val_error.i.i_crit_edge:             ; preds = %sw.bb334.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %val_error.i.i

if.then341.i.i:                                   ; preds = %sw.bb334.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %fddiMACMA_UnitdataEnable.i.i = getelementptr inbounds %struct.fddi_mib_m, ptr %mib_m.0.i.i, i32 0, i32 59
  %254 = ptrtoint ptr %fddiMACMA_UnitdataEnable.i.i to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 %253, ptr %fddiMACMA_UnitdataEnable.i.i, align 4
  tail call void @queue_event(ptr noundef %smc, i32 noundef 3, i32 noundef 11) #5
  br label %smt_set_para.exit.i

if.then345.i.i:                                   ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %255 = ptrtoint ptr %long_val.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %long_val.i.i, align 4
  %fddiMACT_Min.i.i = getelementptr inbounds %struct.fddi_mib_m, ptr %mib_m.0.i.i, i32 0, i32 17
  %257 = ptrtoint ptr %fddiMACT_Min.i.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %256, ptr %fddiMACT_Min.i.i, align 4
  br label %smt_set_para.exit.i

sw.bb347.i.i:                                     ; preds = %while.end.i.i
  %258 = ptrtoint ptr %long_val.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %long_val.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1562, i32 %259)
  %cmp348.i.i = icmp ugt i32 %259, 1562
  br i1 %cmp348.i.i, label %sw.bb347.i.i.val_error.i.i_crit_edge, label %if.then353.i.i

sw.bb347.i.i.val_error.i.i_crit_edge:             ; preds = %sw.bb347.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %val_error.i.i

if.then353.i.i:                                   ; preds = %sw.bb347.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %fddiPATHSbaPayload.i.i = getelementptr inbounds %struct.fddi_mib_a, ptr %mib_a.0.i.i, i32 0, i32 1
  %260 = ptrtoint ptr %fddiPATHSbaPayload.i.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %259, ptr %fddiPATHSbaPayload.i.i, align 4
  tail call void @ess_para_change(ptr noundef %smc) #5
  br label %smt_set_para.exit.i

sw.bb358.i.i:                                     ; preds = %while.end.i.i
  %261 = ptrtoint ptr %long_val.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %long_val.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000, i32 %262)
  %cmp359.i.i = icmp ugt i32 %262, 5000
  br i1 %cmp359.i.i, label %sw.bb358.i.i.val_error.i.i_crit_edge, label %if.end362.i.i

sw.bb358.i.i.val_error.i.i_crit_edge:             ; preds = %sw.bb358.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %val_error.i.i

if.end362.i.i:                                    ; preds = %sw.bb358.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %262)
  %cmp363.not.i.i = icmp eq i32 %262, 0
  br i1 %cmp363.not.i.i, label %if.end362.i.i.if.then372.i.i_crit_edge, label %land.lhs.true365.i.i

if.end362.i.i.if.then372.i.i_crit_edge:           ; preds = %if.end362.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then372.i.i

land.lhs.true365.i.i:                             ; preds = %if.end362.i.i
  %fddiPATHSbaPayload366.i.i = getelementptr inbounds %struct.fddi_mib_a, ptr %mib_a.0.i.i, i32 0, i32 1
  %263 = ptrtoint ptr %fddiPATHSbaPayload366.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %fddiPATHSbaPayload366.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %264)
  %cmp367.i.i = icmp eq i32 %264, 0
  br i1 %cmp367.i.i, label %land.lhs.true365.i.i.val_error.i.i_crit_edge, label %land.lhs.true365.i.i.if.then372.i.i_crit_edge

land.lhs.true365.i.i.if.then372.i.i_crit_edge:    ; preds = %land.lhs.true365.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then372.i.i

land.lhs.true365.i.i.val_error.i.i_crit_edge:     ; preds = %land.lhs.true365.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %val_error.i.i

if.then372.i.i:                                   ; preds = %land.lhs.true365.i.i.if.then372.i.i_crit_edge, %if.end362.i.i.if.then372.i.i_crit_edge
  %fddiPATHSbaOverhead.i.i = getelementptr inbounds %struct.fddi_mib_a, ptr %mib_a.0.i.i, i32 0, i32 2
  %265 = ptrtoint ptr %fddiPATHSbaOverhead.i.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %262, ptr %fddiPATHSbaOverhead.i.i, align 4
  tail call void @ess_para_change(ptr noundef %smc) #5
  br label %smt_set_para.exit.i

if.then379.i.i:                                   ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %266 = ptrtoint ptr %long_val.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %long_val.i.i, align 4
  %fddiPATHT_Rmode.i.i = getelementptr inbounds %struct.fddi_mib_a, ptr %mib_a.0.i.i, i32 0, i32 3
  %268 = ptrtoint ptr %fddiPATHT_Rmode.i.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 %267, ptr %fddiPATHT_Rmode.i.i, align 4
  tail call void @rtm_set_timer(ptr noundef %smc) #5
  br label %smt_set_para.exit.i

sw.bb381.i.i:                                     ; preds = %while.end.i.i
  %269 = ptrtoint ptr %long_val.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %long_val.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12500000, i32 %270)
  %cmp382.i.i = icmp ugt i32 %270, 12500000
  br i1 %cmp382.i.i, label %sw.bb381.i.i.val_error.i.i_crit_edge, label %if.then387.i.i

sw.bb381.i.i.val_error.i.i_crit_edge:             ; preds = %sw.bb381.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %val_error.i.i

if.then387.i.i:                                   ; preds = %sw.bb381.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %fddiPATHSbaAvailable.i.i = getelementptr inbounds %struct.fddi_mib_a, ptr %mib_a.0.i.i, i32 0, i32 4
  %271 = ptrtoint ptr %fddiPATHSbaAvailable.i.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %270, ptr %fddiPATHSbaAvailable.i.i, align 4
  br label %smt_set_para.exit.i

if.then391.i.i:                                   ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %272 = ptrtoint ptr %long_val.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %long_val.i.i, align 4
  %fddiPATHTVXLowerBound.i.i = getelementptr inbounds %struct.fddi_mib_a, ptr %mib_a.0.i.i, i32 0, i32 5
  %274 = ptrtoint ptr %fddiPATHTVXLowerBound.i.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %273, ptr %fddiPATHTVXLowerBound.i.i, align 4
  br label %land.lhs.true402.i.i

if.then395.i.i:                                   ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %275 = ptrtoint ptr %long_val.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %long_val.i.i, align 4
  %fddiPATHT_MaxLowerBound.i.i = getelementptr inbounds %struct.fddi_mib_a, ptr %mib_a.0.i.i, i32 0, i32 6
  %277 = ptrtoint ptr %fddiPATHT_MaxLowerBound.i.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 %276, ptr %fddiPATHT_MaxLowerBound.i.i, align 4
  br label %land.lhs.true402.i.i

if.then399.i.i:                                   ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %278 = ptrtoint ptr %long_val.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %long_val.i.i, align 4
  %fddiPATHMaxT_Req.i.i = getelementptr inbounds %struct.fddi_mib_a, ptr %mib_a.0.i.i, i32 0, i32 7
  %280 = ptrtoint ptr %fddiPATHMaxT_Req.i.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 %279, ptr %fddiPATHMaxT_Req.i.i, align 4
  br label %land.lhs.true402.i.i

land.lhs.true402.i.i:                             ; preds = %if.then399.i.i, %if.then395.i.i, %if.then391.i.i
  %call403.i.i = tail call i32 @smt_set_mac_opvalues(ptr noundef %smc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call403.i.i)
  %tobool404.not.i.i = icmp eq i32 %call403.i.i, 0
  br i1 %tobool404.not.i.i, label %land.lhs.true402.i.i.smt_set_para.exit.i_crit_edge, label %if.then405.i.i

land.lhs.true402.i.i.smt_set_para.exit.i_crit_edge: ; preds = %land.lhs.true402.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smt_set_para.exit.i

if.then405.i.i:                                   ; preds = %land.lhs.true402.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %281 = ptrtoint ptr %ring_status.i.i to i32
  call void @__asan_load2_noabort(i32 %281)
  %282 = load i16, ptr %ring_status.i.i, align 4
  %283 = or i16 %282, 4
  store i16 %283, ptr %ring_status.i.i, align 4
  %conv409.i.i = zext i16 %283 to i32
  tail call void @ring_status_indication(ptr noundef %smc, i32 noundef %conv409.i.i) #5
  %284 = ptrtoint ptr %please_reconnect.i.i to i32
  call void @__asan_store2_noabort(i32 %284)
  store i16 1, ptr %please_reconnect.i.i, align 2
  tail call void @queue_event(ptr noundef %smc, i32 noundef 1, i32 noundef 2) #5
  br label %smt_set_para.exit.i

sw.bb411.i.i:                                     ; preds = %while.end.i.i
  %285 = ptrtoint ptr %byte_val.i.i to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %byte_val.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %286)
  %cmp413.i.i = icmp ugt i8 %286, 1
  br i1 %cmp413.i.i, label %sw.bb411.i.i.val_error.i.i_crit_edge, label %if.then418.i.i

sw.bb411.i.i.val_error.i.i_crit_edge:             ; preds = %sw.bb411.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %val_error.i.i

if.then418.i.i:                                   ; preds = %sw.bb411.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %fddiPORTConnectionPolicies.i.i = getelementptr inbounds %struct.fddi_mib_p, ptr %mib_p.0.i.i, i32 0, i32 2
  %287 = ptrtoint ptr %fddiPORTConnectionPolicies.i.i to i32
  call void @__asan_store1_noabort(i32 %287)
  store i8 %286, ptr %fddiPORTConnectionPolicies.i.i, align 4
  br label %smt_set_para.exit.i

if.then422.i.i:                                   ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %fddiPORTRequestedPaths.i.i = getelementptr inbounds %struct.fddi_mib_p, ptr %mib_p.0.i.i, i32 0, i32 5
  %288 = ptrtoint ptr %long_val.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %long_val.i.i, align 4
  %290 = ptrtoint ptr %fddiPORTRequestedPaths.i.i to i32
  call void @__asan_storeN_noabort(i32 %290, i32 4)
  store i32 %289, ptr %fddiPORTRequestedPaths.i.i, align 2
  br label %smt_set_para.exit.i

sw.bb425.i.i:                                     ; preds = %while.end.i.i
  %291 = ptrtoint ptr %word_val.i.i to i32
  call void @__asan_load2_noabort(i32 %291)
  %292 = load i16, ptr %word_val.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %292)
  %cmp427.i.i = icmp ugt i16 %292, 4
  br i1 %cmp427.i.i, label %sw.bb425.i.i.val_error.i.i_crit_edge, label %if.then432.i.i

sw.bb425.i.i.val_error.i.i_crit_edge:             ; preds = %sw.bb425.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %val_error.i.i

if.then432.i.i:                                   ; preds = %sw.bb425.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %fddiPORTMaint_LS.i.i = getelementptr inbounds %struct.fddi_mib_p, ptr %mib_p.0.i.i, i32 0, i32 11
  %293 = ptrtoint ptr %fddiPORTMaint_LS.i.i to i32
  call void @__asan_store2_noabort(i32 %293)
  store i16 %292, ptr %fddiPORTMaint_LS.i.i, align 2
  br label %smt_set_para.exit.i

sw.bb434.i.i:                                     ; preds = %while.end.i.i
  %294 = ptrtoint ptr %byte_val.i.i to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %byte_val.i.i, align 1
  %296 = add i8 %295, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -12, i8 %296)
  %297 = icmp ult i8 %296, -12
  br i1 %297, label %sw.bb434.i.i.val_error.i.i_crit_edge, label %if.then445.i.i

sw.bb434.i.i.val_error.i.i_crit_edge:             ; preds = %sw.bb434.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %val_error.i.i

if.then445.i.i:                                   ; preds = %sw.bb434.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %fddiPORTLer_Cutoff.i.i = getelementptr inbounds %struct.fddi_mib_p, ptr %mib_p.0.i.i, i32 0, i32 20
  %298 = ptrtoint ptr %fddiPORTLer_Cutoff.i.i to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 %295, ptr %fddiPORTLer_Cutoff.i.i, align 1
  br label %smt_set_para.exit.i

sw.bb447.i.i:                                     ; preds = %while.end.i.i
  %299 = ptrtoint ptr %byte_val.i.i to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %byte_val.i.i, align 1
  %301 = add i8 %300, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -12, i8 %301)
  %302 = icmp ult i8 %301, -12
  br i1 %302, label %sw.bb447.i.i.val_error.i.i_crit_edge, label %if.then458.i.i

sw.bb447.i.i.val_error.i.i_crit_edge:             ; preds = %sw.bb447.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %val_error.i.i

if.then458.i.i:                                   ; preds = %sw.bb447.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %fddiPORTLer_Alarm.i.i = getelementptr inbounds %struct.fddi_mib_p, ptr %mib_p.0.i.i, i32 0, i32 21
  %303 = ptrtoint ptr %fddiPORTLer_Alarm.i.i to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 %300, ptr %fddiPORTLer_Alarm.i.i, align 2
  br label %smt_set_para.exit.i

sw.bb460.i.i:                                     ; preds = %while.end.i.i
  %304 = ptrtoint ptr %word_val.i.i to i32
  call void @__asan_load2_noabort(i32 %304)
  %305 = load i16, ptr %word_val.i.i, align 2
  %conv461.i.i = zext i16 %305 to i32
  %call462.i.i = tail call i32 @smt_action(ptr noundef %smc, i32 noundef 1, i32 noundef %conv461.i.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call462.i.i)
  %tobool463.not.i.i = icmp eq i32 %call462.i.i, 0
  br i1 %tobool463.not.i.i, label %sw.bb460.i.i.smt_set_para.exit.i_crit_edge, label %sw.bb460.i.i.val_error.i.i_crit_edge

sw.bb460.i.i.val_error.i.i_crit_edge:             ; preds = %sw.bb460.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %val_error.i.i

sw.bb460.i.i.smt_set_para.exit.i_crit_edge:       ; preds = %sw.bb460.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smt_set_para.exit.i

sw.bb466.i.i:                                     ; preds = %while.end.i.i
  %306 = ptrtoint ptr %word_val.i.i to i32
  call void @__asan_load2_noabort(i32 %306)
  %307 = load i16, ptr %word_val.i.i, align 2
  %conv467.i.i = zext i16 %307 to i32
  %308 = ptrtoint ptr %sas.i to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %sas.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %309)
  %cmp.i14.i.i = icmp eq i8 %309, 1
  %.p.i15.i.i = select i1 %cmp.i14.i.i, i32 0, i32 %sub.i315.i
  %call469.i.i = tail call i32 @smt_action(ptr noundef %smc, i32 noundef 2, i32 noundef %conv467.i.i, i32 noundef %.p.i15.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call469.i.i)
  %tobool470.not.i.i = icmp eq i32 %call469.i.i, 0
  br i1 %tobool470.not.i.i, label %sw.bb466.i.i.smt_set_para.exit.i_crit_edge, label %sw.bb466.i.i.val_error.i.i_crit_edge

sw.bb466.i.i.val_error.i.i_crit_edge:             ; preds = %sw.bb466.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %val_error.i.i

sw.bb466.i.i.smt_set_para.exit.i_crit_edge:       ; preds = %sw.bb466.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smt_set_para.exit.i

val_error.i.i:                                    ; preds = %sw.bb466.i.i.val_error.i.i_crit_edge, %sw.bb460.i.i.val_error.i.i_crit_edge, %sw.bb447.i.i.val_error.i.i_crit_edge, %sw.bb434.i.i.val_error.i.i_crit_edge, %sw.bb425.i.i.val_error.i.i_crit_edge, %sw.bb411.i.i.val_error.i.i_crit_edge, %sw.bb381.i.i.val_error.i.i_crit_edge, %land.lhs.true365.i.i.val_error.i.i_crit_edge, %sw.bb358.i.i.val_error.i.i_crit_edge, %sw.bb347.i.i.val_error.i.i_crit_edge, %sw.bb334.i.i.val_error.i.i_crit_edge, %sw.bb316.i.i.val_error.i.i_crit_edge, %sw.bb307.i.i.val_error.i.i_crit_edge, %sw.bb298.i.i.val_error.i.i_crit_edge, %sw.bb287.i.i.val_error.i.i_crit_edge, %sw.bb276.i.i.val_error.i.i_crit_edge, %sw.bb253.i.i.val_error.i.i_crit_edge, %sw.bb240.i.i.val_error.i.i_crit_edge, %sw.bb232.i.i.val_error.i.i_crit_edge, %sw.bb223.i.i.val_error.i.i_crit_edge, %sw.bb210.i.i.val_error.i.i_crit_edge, %sw.bb201.i.i.val_error.i.i_crit_edge, %sw.bb192.i.i.val_error.i.i_crit_edge, %if.end88.i.i.val_error.i.i_crit_edge, %if.end69.i.i.val_error.i.i_crit_edge
  br label %smt_set_para.exit.i

smt_set_para.exit.i:                              ; preds = %val_error.i.i, %sw.bb466.i.i.smt_set_para.exit.i_crit_edge, %sw.bb460.i.i.smt_set_para.exit.i_crit_edge, %if.then458.i.i, %if.then445.i.i, %if.then432.i.i, %if.then422.i.i, %if.then418.i.i, %if.then405.i.i, %land.lhs.true402.i.i.smt_set_para.exit.i_crit_edge, %if.then387.i.i, %if.then379.i.i, %if.then372.i.i, %if.then353.i.i, %if.then345.i.i, %if.then341.i.i, %if.then332.i.i, %if.then328.i.i, %if.then324.i.i, %if.then314.i.i, %if.then305.i.i, %if.then296.i.i, %if.then285.i.i, %if.then270.i.i, %land.lhs.true266.i.i.smt_set_para.exit.i_crit_edge, %land.lhs.true262.i.i.smt_set_para.exit.i_crit_edge, %if.then249.i.i, %land.lhs.true.i328.i.smt_set_para.exit.i_crit_edge, %if.then238.i.i, %if.then230.i.i, %if.then221.i.i, %if.then208.i.i, %if.then199.i.i, %while.end.i.i.smt_set_para.exit.i_crit_edge, %do.end.i.i, %sw.bb154.i.i.smt_set_para.exit.i_crit_edge, %sw.bb143.i.i.smt_set_para.exit.i_crit_edge, %sw.bb132.i.i.smt_set_para.exit.i_crit_edge, %sw.bb120.i.i.smt_set_para.exit.i_crit_edge, %sw.bb105.i.i.smt_set_para.exit.i_crit_edge, %sw.bb84.i.i.smt_set_para.exit.i_crit_edge, %sw.bb65.i.i.smt_set_para.exit.i_crit_edge, %if.end51.i.i.smt_set_para.exit.i_crit_edge, %if.then46.i.i, %sw.bb39.i.i.smt_set_para.exit.i_crit_edge, %lor.lhs.false27.i.i.smt_set_para.exit.i_crit_edge, %sw.bb24.i.i.smt_set_para.exit.i_crit_edge, %sw.bb12.i.i.smt_set_para.exit.i_crit_edge, %sw.bb5.i.i.smt_set_para.exit.i_crit_edge
  %retval.0.i329.i = phi i32 [ 5, %do.end.i.i ], [ 8, %val_error.i.i ], [ %cond.i.i, %if.then46.i.i ], [ 6, %sw.bb5.i.i.smt_set_para.exit.i_crit_edge ], [ 6, %sw.bb12.i.i.smt_set_para.exit.i_crit_edge ], [ 6, %lor.lhs.false27.i.i.smt_set_para.exit.i_crit_edge ], [ 6, %sw.bb24.i.i.smt_set_para.exit.i_crit_edge ], [ 6, %sw.bb39.i.i.smt_set_para.exit.i_crit_edge ], [ 5, %if.end51.i.i.smt_set_para.exit.i_crit_edge ], [ 0, %while.end.i.i.smt_set_para.exit.i_crit_edge ], [ 0, %sw.bb466.i.i.smt_set_para.exit.i_crit_edge ], [ 0, %sw.bb460.i.i.smt_set_para.exit.i_crit_edge ], [ 0, %if.then458.i.i ], [ 0, %if.then445.i.i ], [ 0, %if.then432.i.i ], [ 0, %if.then422.i.i ], [ 0, %if.then418.i.i ], [ 0, %land.lhs.true402.i.i.smt_set_para.exit.i_crit_edge ], [ 0, %if.then405.i.i ], [ 0, %if.then387.i.i ], [ 0, %if.then379.i.i ], [ 0, %if.then372.i.i ], [ 0, %if.then353.i.i ], [ 0, %if.then345.i.i ], [ 0, %if.then341.i.i ], [ 0, %if.then332.i.i ], [ 0, %if.then328.i.i ], [ 0, %if.then324.i.i ], [ 0, %if.then314.i.i ], [ 0, %if.then305.i.i ], [ 0, %if.then296.i.i ], [ 0, %if.then285.i.i ], [ 0, %land.lhs.true262.i.i.smt_set_para.exit.i_crit_edge ], [ 0, %land.lhs.true266.i.i.smt_set_para.exit.i_crit_edge ], [ 0, %if.then270.i.i ], [ 0, %land.lhs.true.i328.i.smt_set_para.exit.i_crit_edge ], [ 0, %if.then249.i.i ], [ 0, %if.then238.i.i ], [ 0, %if.then230.i.i ], [ 0, %if.then221.i.i ], [ 0, %if.then208.i.i ], [ 0, %if.then199.i.i ], [ 10, %sw.bb65.i.i.smt_set_para.exit.i_crit_edge ], [ 10, %sw.bb84.i.i.smt_set_para.exit.i_crit_edge ], [ 10, %sw.bb105.i.i.smt_set_para.exit.i_crit_edge ], [ 10, %sw.bb120.i.i.smt_set_para.exit.i_crit_edge ], [ 10, %sw.bb132.i.i.smt_set_para.exit.i_crit_edge ], [ 10, %sw.bb143.i.i.smt_set_para.exit.i_crit_edge ], [ 10, %sw.bb154.i.i.smt_set_para.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %long_val.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %word_val.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte_val.i.i) #5
  %310 = ptrtoint ptr %pa.0352.i to i32
  call void @__asan_load2_noabort(i32 %310)
  %311 = load i16, ptr %pa.0352.i, align 2
  call void @smt_add_para(ptr noundef %smc, ptr noundef nonnull %pcon.i, i16 noundef zeroext %311, i32 noundef %index.1345.i, i32 noundef %local) #5
  %312 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 %retval.0.i329.i, ptr %5, align 4
  br label %if.end149.i

if.else135.i:                                     ; preds = %if.else129.i
  br i1 %tobool93.not.i, label %if.else135.i.if.end149thread-pre-split.sink.split.i_crit_edge, label %land.lhs.true137.i

if.else135.i.if.end149thread-pre-split.sink.split.i_crit_edge: ; preds = %if.else135.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end149thread-pre-split.sink.split.i

land.lhs.true137.i:                               ; preds = %if.else135.i
  %p_access138.i = getelementptr inbounds %struct.s_p_tab, ptr %spec.select.i.i, i32 0, i32 1
  %313 = ptrtoint ptr %p_access138.i to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %p_access138.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %314)
  %cmp140.i = icmp eq i8 %314, 4
  br i1 %cmp140.i, label %if.then142.i, label %land.lhs.true137.i.if.end149thread-pre-split.sink.split.i_crit_edge

land.lhs.true137.i.if.end149thread-pre-split.sink.split.i_crit_edge: ; preds = %land.lhs.true137.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end149thread-pre-split.sink.split.i

if.then142.i:                                     ; preds = %land.lhs.true137.i
  call void @__sanitizer_cov_trace_pc() #7
  %315 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 5, ptr %5, align 4
  br label %if.end149thread-pre-split.sink.split.i

if.end149thread-pre-split.sink.split.i:           ; preds = %if.then142.i, %land.lhs.true137.i.if.end149thread-pre-split.sink.split.i_crit_edge, %if.else135.i.if.end149thread-pre-split.sink.split.i_crit_edge, %if.then124.i.if.end149thread-pre-split.sink.split.i_crit_edge
  call void @smt_add_para(ptr noundef %smc, ptr noundef nonnull %pcon.i, i16 noundef zeroext %90, i32 noundef %index.1345.i, i32 noundef %local) #5
  br label %if.end149thread-pre-split.i

if.end149thread-pre-split.i:                      ; preds = %if.end149thread-pre-split.sink.split.i, %if.else112.i.if.end149thread-pre-split.i_crit_edge, %while.body110.i.if.end149thread-pre-split.i_crit_edge, %while.cond101.preheader.i.if.end149thread-pre-split.i_crit_edge
  %316 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %316)
  %.pr.i = load i32, ptr %5, align 4
  br label %if.end149.i

if.end149.i:                                      ; preds = %if.end149thread-pre-split.i, %smt_set_para.exit.i
  %317 = phi i32 [ %.pr.i, %if.end149thread-pre-split.i ], [ %retval.0.i329.i, %smt_set_para.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %317)
  %tobool151.not.i = icmp ne i32 %317, 0
  %inc.i = add nuw nsw i32 %index.1345.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %index.1345.i, i32 %idx_end.0.i)
  %cmp88.not.i = icmp uge i32 %index.1345.i, %idx_end.0.i
  %or.cond356.i = select i1 %tobool151.not.i, i1 true, i1 %cmp88.not.i
  br i1 %or.cond356.i, label %while.end154.i, label %if.end149.i.while.body90.i_crit_edge

if.end149.i.while.body90.i_crit_edge:             ; preds = %if.end149.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body90.i

while.end154.i:                                   ; preds = %if.end149.i
  %318 = ptrtoint ptr %p_len.i to i32
  call void @__asan_load2_noabort(i32 %318)
  %319 = load i16, ptr %p_len.i, align 2
  %conv156.i = zext i16 %319 to i32
  %add157.neg.i = add i32 %len.0354.i, -4
  %sub158.i = sub i32 %add157.neg.i, %conv156.i
  %add.ptr162.i = getelementptr i8, ptr %add.ptr.i317.i, i32 %conv156.i
  %320 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %321)
  %tobool23.not.i = icmp eq i32 %321, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub158.i)
  %cmp.i = icmp sgt i32 %sub158.i, 0
  %or.cond.i = select i1 %tobool23.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %while.end154.i.while.body.i_crit_edge, label %while.end154.i.while.end163.i_crit_edge

while.end154.i.while.end163.i_crit_edge:          ; preds = %while.end154.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end163.i

while.end154.i.while.body.i_crit_edge:            ; preds = %while.end154.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.end163.sink.split.i:                        ; preds = %if.else76.i.while.end163.sink.split.i_crit_edge, %land.lhs.true51.i.while.end163.sink.split.i_crit_edge, %while.body.i.while.end163.sink.split.i_crit_edge
  %322 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 10, ptr %5, align 4
  br label %while.end163.i

while.end163.i:                                   ; preds = %while.end163.sink.split.i, %while.end154.i.while.end163.i_crit_edge, %smt_add_para.exit.i.while.end163.i_crit_edge
  %323 = ptrtoint ptr %pcon.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %pcon.i, align 4
  %325 = trunc i32 %324 to i16
  %conv166.i = sub i16 4332, %325
  %326 = ptrtoint ptr %smt_len.i to i32
  call void @__asan_store2_noabort(i32 %326)
  store i16 %conv166.i, ptr %smt_len.i, align 2
  %conv169.i = zext i16 %conv166.i to i32
  %add170.i = add nuw nsw i32 %conv169.i, 32
  %m_len.i = getelementptr inbounds %struct.s_mbuf, ptr %call.i, i32 0, i32 2
  %327 = ptrtoint ptr %m_len.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 %add170.i, ptr %m_len.i, align 4
  %328 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %329)
  %tobool172.not.i = icmp eq i32 %329, 0
  br i1 %tobool172.not.i, label %cond.false.i, label %while.end163.i.cond.end179.i_crit_edge

while.end163.i.cond.end179.i_crit_edge:           ; preds = %while.end163.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end179.i

cond.false.i:                                     ; preds = %while.end163.i
  call void @__sanitizer_cov_trace_pc() #7
  %330 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %331)
  %tobool175.not.i = icmp eq i32 %331, 0
  %spec.select.i = select i1 %tobool175.not.i, i32 3, i32 %331
  br label %cond.end179.i

cond.end179.i:                                    ; preds = %cond.false.i, %while.end163.i.cond.end179.i_crit_edge
  %cond180.i = phi i32 [ %329, %while.end163.i.cond.end179.i_crit_edge ], [ %spec.select.i, %cond.false.i ]
  %rdf_reason.i = getelementptr inbounds %struct.smt_p_reason, ptr %add.ptr3.i, i32 0, i32 1
  %332 = ptrtoint ptr %rdf_reason.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 %cond180.i, ptr %rdf_reason.i, align 4
  %tobool4.not.not302.i = xor i1 %cmp9, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cond180.i)
  %cmp184.i = icmp eq i32 %cond180.i, 3
  %or.cond303.i = select i1 %tobool4.not.not302.i, i1 %cmp184.i, i1 false
  br i1 %or.cond303.i, label %if.then186.i, label %cond.end179.i.if.then11_crit_edge

cond.end179.i.if.then11_crit_edge:                ; preds = %cond.end179.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11

if.then186.i:                                     ; preds = %cond.end179.i
  call void @__sanitizer_cov_trace_pc() #7
  %fddiSMTSetCount.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 35
  %333 = ptrtoint ptr %fddiSMTSetCount.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %fddiSMTSetCount.i, align 4
  %inc187.i = add i32 %334, 1
  store i32 %inc187.i, ptr %fddiSMTSetCount.i, align 4
  %timestamp.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 35, i32 1
  tail call void @smt_set_timestamp(ptr noundef %smc, ptr noundef %timestamp.i) #5
  %fddiSMTLastSetStationId.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 36
  %smt_sid.i = getelementptr inbounds %struct.smt_header, ptr %add.ptr, i32 0, i32 6
  %335 = ptrtoint ptr %smt_sid.i to i32
  call void @__asan_loadN_noabort(i32 %335, i32 8)
  %336 = load i64, ptr %smt_sid.i, align 4
  %337 = ptrtoint ptr %fddiSMTLastSetStationId.i to i32
  call void @__asan_storeN_noabort(i32 %337, i32 8)
  store i64 %336, ptr %fddiSMTLastSetStationId.i, align 4
  call void @smt_add_para(ptr noundef %smc, ptr noundef nonnull %set_pcon.i, i16 noundef zeroext 4149, i32 noundef 0, i32 noundef 0) #5
  call void @smt_add_para(ptr noundef %smc, ptr noundef nonnull %set_pcon.i, i16 noundef zeroext 4150, i32 noundef 0, i32 noundef 0) #5
  br label %if.then11

if.then11:                                        ; preds = %if.then186.i, %cond.end179.i.if.then11_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %set_pcon.i) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pcon.i) #5
  tail call void @smt_send_frame(ptr noundef %smc, ptr noundef nonnull %call.i, i32 noundef 65, i32 noundef %local) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then11, %smt_build_pmf_response.exit.thread, %entry.if.end17_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @smt_start_watchdog(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smt_send_frame(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smt_add_para(ptr noundef %smc, ptr nocapture noundef %pcon, i16 noundef zeroext %para, i32 noundef %index, i32 noundef %local) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pc_err = getelementptr inbounds %struct.s_pcon, ptr %pcon, i32 0, i32 1
  %0 = ptrtoint ptr %pc_err to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pc_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.for.cond.i_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.for.cond.i_crit_edge:                       ; preds = %entry
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %entry.for.cond.i_crit_edge
  %pt.0.i = phi ptr [ %incdec.ptr.i, %for.cond.i.for.cond.i_crit_edge ], [ @p_tab, %entry.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %pt.0.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pt.0.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i = icmp eq i16 %3, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %para)
  %cmp.not.i = icmp eq i16 %3, %para
  %or.cond.i = or i1 %tobool.not.i, %cmp.not.i
  %incdec.ptr.i = getelementptr %struct.s_p_tab, ptr %pt.0.i, i32 1
  br i1 %or.cond.i, label %smt_get_ptab.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

smt_get_ptab.exit:                                ; preds = %for.cond.i
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %pt.0.i
  %tobool1.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool1.not, label %smt_get_ptab.exit.if.end4_crit_edge, label %land.lhs.true

smt_get_ptab.exit.if.end4_crit_edge:              ; preds = %smt_get_ptab.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

land.lhs.true:                                    ; preds = %smt_get_ptab.exit
  %p_access = getelementptr inbounds %struct.s_p_tab, ptr %spec.select.i, i32 0, i32 1
  %4 = ptrtoint ptr %p_access to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %p_access, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %5)
  %cmp = icmp eq i8 %5, 4
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end4_crit_edge

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %smt_get_ptab.exit.if.end4_crit_edge
  %pc_p = getelementptr inbounds %struct.s_pcon, ptr %pcon, i32 0, i32 3
  %6 = ptrtoint ptr %pc_p to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pc_p, align 4
  %8 = ptrtoint ptr %pcon to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pcon, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 4
  %sub = add i32 %9, -4
  %conv5 = zext i16 %para to i32
  %and = and i32 %conv5, 61440
  %trunc = trunc i32 %and to i16
  %10 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.13)
  switch i16 %trunc, label %if.end4.if.end24_crit_edge [
    i16 8192, label %if.end4.if.then13_crit_edge
    i16 12288, label %if.end4.if.then13_crit_edge638
    i16 16384, label %if.end4.if.then13_crit_edge639
  ]

if.end4.if.then13_crit_edge639:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

if.end4.if.then13_crit_edge638:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

if.end4.if.then13_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

if.end4.if.end24_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then13:                                        ; preds = %if.end4.if.then13_crit_edge, %if.end4.if.then13_crit_edge638, %if.end4.if.then13_crit_edge639
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp14 = icmp slt i32 %sub, 4
  br i1 %cmp14, label %wrong_error, label %if.end17

if.end17:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %add.ptr, align 1
  %arrayidx18 = getelementptr i8, ptr %7, i32 5
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx18, align 1
  %arrayidx19 = getelementptr i8, ptr %7, i32 6
  %13 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx19, align 1
  %conv20 = trunc i32 %index to i8
  %arrayidx21 = getelementptr i8, ptr %7, i32 7
  %14 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv20, ptr %arrayidx21, align 1
  %sub22 = add i32 %9, -8
  %add.ptr23 = getelementptr i8, ptr %7, i32 8
  br label %if.end24

if.end24:                                         ; preds = %if.end17, %if.end4.if.end24_crit_edge
  %to.0 = phi ptr [ %add.ptr23, %if.end17 ], [ %add.ptr, %if.end4.if.end24_crit_edge ]
  %len.0 = phi i32 [ %sub22, %if.end17 ], [ %sub, %if.end4.if.end24_crit_edge ]
  %sub25 = add i32 %index, -1
  %15 = add nsw i32 %and, -4096
  %16 = lshr exact i32 %15, 12
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %16, label %sw.default [
    i32 3, label %sw.bb50
    i32 1, label %sw.bb28
    i32 2, label %sw.bb39
  ]

sw.default:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %mib = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub25)
  %cmp32.not = icmp eq i32 %sub25, 0
  br i1 %cmp32.not, label %if.end36, label %if.then34

if.then34:                                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %pc_err to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 6, ptr %pc_err, align 4
  br label %cleanup

if.end36:                                         ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #7
  %m = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub25)
  %19 = icmp ugt i32 %sub25, 1
  br i1 %19, label %if.then45, label %if.end47

if.then45:                                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %pc_err to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 6, ptr %pc_err, align 4
  br label %cleanup

if.end47:                                         ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx49 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 38, i32 %sub25
  br label %sw.epilog

sw.bb50:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub25)
  %cmp51 = icmp slt i32 %sub25, 0
  br i1 %cmp51, label %sw.bb50.if.then57_crit_edge, label %lor.lhs.false53

sw.bb50.if.then57_crit_edge:                      ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then57

lor.lhs.false53:                                  ; preds = %sw.bb50
  %sas.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %sas.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %sas.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %22)
  %cmp.i = icmp eq i8 %22, 1
  %..i = select i1 %cmp.i, i32 1, i32 2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub25, i32 %..i)
  %cmp55.not = icmp ult i32 %sub25, %..i
  br i1 %cmp55.not, label %if.end59, label %lor.lhs.false53.if.then57_crit_edge

lor.lhs.false53.if.then57_crit_edge:              ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then57

if.then57:                                        ; preds = %lor.lhs.false53.if.then57_crit_edge, %sw.bb50.if.then57_crit_edge
  %23 = ptrtoint ptr %pc_err to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 6, ptr %pc_err, align 4
  br label %cleanup

if.end59:                                         ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #7
  %.p.i = select i1 %cmp.i, i32 0, i32 %sub25
  %arrayidx62 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 39, i32 %.p.i
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end59, %if.end47, %if.end36, %sw.default
  %mib_addr.0 = phi ptr [ %mib, %sw.default ], [ %arrayidx49, %if.end47 ], [ %m, %if.end36 ], [ %arrayidx62, %if.end59 ]
  %mib_p.0 = phi ptr [ null, %sw.default ], [ null, %if.end47 ], [ null, %if.end36 ], [ %arrayidx62, %if.end59 ]
  %mib_m.0 = phi ptr [ null, %sw.default ], [ null, %if.end47 ], [ %m, %if.end36 ], [ null, %if.end59 ]
  %24 = zext i16 %para to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.15)
  switch i16 %para, label %sw.epilog.sw.epilog141_crit_edge [
    i16 4336, label %sw.epilog.sw.bb64_crit_edge
    i16 4337, label %sw.epilog.sw.bb64_crit_edge640
    i16 4338, label %sw.epilog.sw.bb64_crit_edge641
    i16 4339, label %sw.epilog.sw.bb64_crit_edge642
    i16 4340, label %sw.epilog.sw.bb64_crit_edge643
    i16 4341, label %sw.epilog.sw.bb64_crit_edge644
    i16 4342, label %sw.epilog.sw.bb64_crit_edge645
    i16 4343, label %sw.epilog.sw.bb64_crit_edge646
    i16 8433, label %sw.epilog.sw.bb64_crit_edge647
    i16 8244, label %sw.epilog.sw.bb69_crit_edge
    i16 8262, label %sw.epilog.sw.bb69_crit_edge648
    i16 8263, label %sw.epilog.sw.bb69_crit_edge649
    i16 8266, label %sw.epilog.sw.bb69_crit_edge650
    i16 8273, label %sw.epilog.sw.bb69_crit_edge651
    i16 8274, label %sw.epilog.sw.bb69_crit_edge652
    i16 16418, label %sw.bb70
    i16 18, label %sw.bb75
    i16 4147, label %sw.bb76
    i16 4128, label %sw.bb78
    i16 12818, label %sw.bb84
    i16 4168, label %sw.bb86
    i16 8332, label %sw.bb91
    i16 8333, label %sw.bb103
    i16 8334, label %sw.bb107
    i16 8335, label %sw.bb111
    i16 8336, label %sw.bb118
    i16 16464, label %sw.bb124
    i16 16465, label %sw.bb127
    i16 16466, label %sw.bb130
    i16 16467, label %sw.bb133
  ]

sw.epilog.sw.bb69_crit_edge652:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb69

sw.epilog.sw.bb69_crit_edge651:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb69

sw.epilog.sw.bb69_crit_edge650:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb69

sw.epilog.sw.bb69_crit_edge649:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb69

sw.epilog.sw.bb69_crit_edge648:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb69

sw.epilog.sw.bb69_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb69

sw.epilog.sw.bb64_crit_edge647:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb64

sw.epilog.sw.bb64_crit_edge646:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb64

sw.epilog.sw.bb64_crit_edge645:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb64

sw.epilog.sw.bb64_crit_edge644:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb64

sw.epilog.sw.bb64_crit_edge643:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb64

sw.epilog.sw.bb64_crit_edge642:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb64

sw.epilog.sw.bb64_crit_edge641:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb64

sw.epilog.sw.bb64_crit_edge640:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb64

sw.epilog.sw.bb64_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb64

sw.epilog.sw.epilog141_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog141

sw.bb64:                                          ; preds = %sw.epilog.sw.bb64_crit_edge, %sw.epilog.sw.bb64_crit_edge640, %sw.epilog.sw.bb64_crit_edge641, %sw.epilog.sw.bb64_crit_edge642, %sw.epilog.sw.bb64_crit_edge643, %sw.epilog.sw.bb64_crit_edge644, %sw.epilog.sw.bb64_crit_edge645, %sw.epilog.sw.bb64_crit_edge646, %sw.epilog.sw.bb64_crit_edge647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %local)
  %tobool65.not = icmp eq i32 %local, 0
  br i1 %tobool65.not, label %if.then66, label %sw.bb64.sw.epilog141_crit_edge

sw.bb64.sw.epilog141_crit_edge:                   ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog141

if.then66:                                        ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %pc_err to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 6, ptr %pc_err, align 4
  br label %cleanup

sw.bb69:                                          ; preds = %sw.epilog.sw.bb69_crit_edge, %sw.epilog.sw.bb69_crit_edge648, %sw.epilog.sw.bb69_crit_edge649, %sw.epilog.sw.bb69_crit_edge650, %sw.epilog.sw.bb69_crit_edge651, %sw.epilog.sw.bb69_crit_edge652
  tail call void @mac_update_counter(ptr noundef %smc) #5
  br label %sw.epilog141

sw.bb70:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %sas.i623 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %sas.i623 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %sas.i623, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp.i624 = icmp eq i8 %27, 1
  %.p.i625 = select i1 %cmp.i624, i32 0, i32 %sub25
  %call72 = tail call i32 @sm_pm_get_ls(ptr noundef %smc, i32 noundef %.p.i625) #5
  %28 = trunc i32 %call72 to i16
  %conv74 = add i16 %28, -12
  %fddiPORTPC_LS = getelementptr inbounds %struct.fddi_mib_p, ptr %mib_p.0, i32 0, i32 12
  %29 = ptrtoint ptr %fddiPORTPC_LS to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv74, ptr %fddiPORTPC_LS, align 4
  br label %sw.epilog141

sw.bb75:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %to.0 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %to.0, align 4
  br label %sp_done

sw.bb76:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %fddiSMTTimeStamp = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 33
  tail call void @smt_set_timestamp(ptr noundef %smc, ptr noundef %fddiSMTTimeStamp) #5
  br label %sw.epilog141

sw.bb78:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %sas = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %sas to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %sas, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp80 = icmp eq i8 %32, 1
  %.str..str.1 = select i1 %cmp80, ptr @.str, ptr @.str.1
  br label %sw.epilog141

sw.bb84:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %call85 = tail call i32 @cem_build_path(ptr noundef %smc, ptr noundef %to.0, i32 noundef %sub25) #5
  br label %sp_done

sw.bb86:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %fddiSMTPeerWrapFlag = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 32
  %33 = ptrtoint ptr %fddiSMTPeerWrapFlag to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %fddiSMTPeerWrapFlag, align 1
  %conv88 = zext i8 %34 to i32
  %35 = ptrtoint ptr %to.0 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv88, ptr %to.0, align 4
  %fddiSMTCF_State = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 29
  %36 = ptrtoint ptr %fddiSMTCF_State to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %fddiSMTCF_State, align 2
  %conv90 = zext i16 %37 to i32
  %p1048_cf_state = getelementptr inbounds %struct.smt_p_1048, ptr %to.0, i32 0, i32 1
  %38 = ptrtoint ptr %p1048_cf_state to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv90, ptr %p1048_cf_state, align 4
  br label %sp_done

sw.bb91:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %fddiMACDuplicateAddressCond = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 5
  %39 = ptrtoint ptr %fddiMACDuplicateAddressCond to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %fddiMACDuplicateAddressCond, align 2
  %conv96 = zext i8 %40 to i32
  %41 = ptrtoint ptr %to.0 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv96, ptr %to.0, align 4
  %fddiMACDA_Flag = getelementptr inbounds %struct.fddi_mib_m, ptr %mib_m.0, i32 0, i32 53
  %42 = ptrtoint ptr %fddiMACDA_Flag to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %fddiMACDA_Flag, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool98.not = icmp ne i8 %43, 0
  %cond = zext i1 %tobool98.not to i16
  %fddiMACUNDA_Flag = getelementptr inbounds %struct.fddi_mib_m, ptr %mib_m.0, i32 0, i32 54
  %44 = ptrtoint ptr %fddiMACUNDA_Flag to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %fddiMACUNDA_Flag, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool100.not = icmp eq i8 %45, 0
  %cond101 = select i1 %tobool100.not, i16 0, i16 2
  %or = or i16 %cond101, %cond
  %p208c_dupcondition = getelementptr inbounds %struct.smt_p_208c, ptr %to.0, i32 0, i32 2
  %46 = ptrtoint ptr %p208c_dupcondition to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %or, ptr %p208c_dupcondition, align 2
  %p208c_fddilong = getelementptr inbounds %struct.smt_p_208c, ptr %to.0, i32 0, i32 3
  %fddiMACSMTAddress = getelementptr inbounds %struct.fddi_mib_m, ptr %mib_m.0, i32 0, i32 16
  %47 = call ptr @memcpy(ptr %p208c_fddilong, ptr %fddiMACSMTAddress, i32 6)
  %p208c_fddiunalong = getelementptr inbounds %struct.smt_p_208c, ptr %to.0, i32 0, i32 4
  %fddiMACUpstreamNbr = getelementptr inbounds %struct.fddi_mib_m, ptr %mib_m.0, i32 0, i32 8
  %48 = call ptr @memcpy(ptr %p208c_fddiunalong, ptr %fddiMACUpstreamNbr, i32 6)
  %p208c_pad = getelementptr inbounds %struct.smt_p_208c, ptr %to.0, i32 0, i32 1
  %49 = ptrtoint ptr %p208c_pad to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %p208c_pad, align 4
  br label %sp_done

sw.bb103:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %fddiMACFrameErrorFlag = getelementptr inbounds %struct.fddi_mib_m, ptr %mib_m.0, i32 0, i32 55
  %50 = ptrtoint ptr %fddiMACFrameErrorFlag to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %fddiMACFrameErrorFlag, align 4
  %conv105 = zext i8 %51 to i32
  %52 = ptrtoint ptr %to.0 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv105, ptr %to.0, align 4
  %fddiMACFrame_Ct = getelementptr inbounds %struct.fddi_mib_m, ptr %mib_m.0, i32 0, i32 32
  %53 = ptrtoint ptr %fddiMACFrame_Ct to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %fddiMACFrame_Ct, align 4
  %p208d_frame_ct = getelementptr inbounds %struct.smt_p_208d, ptr %to.0, i32 0, i32 1
  %55 = ptrtoint ptr %p208d_frame_ct to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %p208d_frame_ct, align 4
  %fddiMACError_Ct = getelementptr inbounds %struct.fddi_mib_m, ptr %mib_m.0, i32 0, i32 36
  %56 = ptrtoint ptr %fddiMACError_Ct to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fddiMACError_Ct, align 4
  %p208d_error_ct = getelementptr inbounds %struct.smt_p_208d, ptr %to.0, i32 0, i32 2
  %58 = ptrtoint ptr %p208d_error_ct to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %p208d_error_ct, align 4
  %fddiMACLost_Ct = getelementptr inbounds %struct.fddi_mib_m, ptr %mib_m.0, i32 0, i32 37
  %59 = ptrtoint ptr %fddiMACLost_Ct to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %fddiMACLost_Ct, align 4
  %p208d_lost_ct = getelementptr inbounds %struct.smt_p_208d, ptr %to.0, i32 0, i32 3
  %61 = ptrtoint ptr %p208d_lost_ct to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %p208d_lost_ct, align 4
  %fddiMACFrameErrorRatio = getelementptr inbounds %struct.fddi_mib_m, ptr %mib_m.0, i32 0, i32 49
  %62 = ptrtoint ptr %fddiMACFrameErrorRatio to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %fddiMACFrameErrorRatio, align 2
  %conv106 = zext i16 %63 to i32
  %p208d_ratio = getelementptr inbounds %struct.smt_p_208d, ptr %to.0, i32 0, i32 4
  %64 = ptrtoint ptr %p208d_ratio to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv106, ptr %p208d_ratio, align 4
  br label %sp_done

sw.bb107:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %fddiMACNotCopiedFlag = getelementptr inbounds %struct.fddi_mib_m, ptr %mib_m.0, i32 0, i32 56
  %65 = ptrtoint ptr %fddiMACNotCopiedFlag to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %fddiMACNotCopiedFlag, align 1
  %conv109 = zext i8 %66 to i32
  %67 = ptrtoint ptr %to.0 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv109, ptr %to.0, align 4
  %fddiMACNotCopied_Ct = getelementptr inbounds %struct.fddi_mib_m, ptr %mib_m.0, i32 0, i32 39
  %68 = ptrtoint ptr %fddiMACNotCopied_Ct to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %fddiMACNotCopied_Ct, align 4
  %p208e_not_copied = getelementptr inbounds %struct.smt_p_208e, ptr %to.0, i32 0, i32 1
  %70 = ptrtoint ptr %p208e_not_copied to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %p208e_not_copied, align 4
  %fddiMACCopied_Ct = getelementptr inbounds %struct.fddi_mib_m, ptr %mib_m.0, i32 0, i32 33
  %71 = ptrtoint ptr %fddiMACCopied_Ct to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %fddiMACCopied_Ct, align 4
  %p208e_copied = getelementptr inbounds %struct.smt_p_208e, ptr %to.0, i32 0, i32 2
  %73 = ptrtoint ptr %p208e_copied to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %p208e_copied, align 4
  %fddiMACNotCopiedRatio = getelementptr inbounds %struct.fddi_mib_m, ptr %mib_m.0, i32 0, i32 51
  %74 = ptrtoint ptr %fddiMACNotCopiedRatio to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %fddiMACNotCopiedRatio, align 2
  %conv110 = zext i16 %75 to i32
  %p208e_not_copied_ratio = getelementptr inbounds %struct.smt_p_208e, ptr %to.0, i32 0, i32 3
  %76 = ptrtoint ptr %p208e_not_copied_ratio to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %conv110, ptr %p208e_not_copied_ratio, align 4
  br label %sp_done

sw.bb111:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %fddiMACMultiple_N = getelementptr inbounds %struct.fddi_mib_m, ptr %mib_m.0, i32 0, i32 3
  %77 = ptrtoint ptr %fddiMACMultiple_N to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %fddiMACMultiple_N, align 4
  %conv113 = zext i8 %78 to i32
  %79 = ptrtoint ptr %to.0 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %conv113, ptr %to.0, align 4
  %fddiMACDuplicateAddressCond114 = getelementptr inbounds %struct.fddi_mib_m, ptr %mib_m.0, i32 0, i32 5
  %80 = ptrtoint ptr %fddiMACDuplicateAddressCond114 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %fddiMACDuplicateAddressCond114, align 2
  %conv115 = zext i8 %81 to i32
  %p208f_nacondition = getelementptr inbounds %struct.smt_p_208f, ptr %to.0, i32 0, i32 1
  %82 = ptrtoint ptr %p208f_nacondition to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %conv115, ptr %p208f_nacondition, align 4
  %p208f_old_una = getelementptr inbounds %struct.smt_p_208f, ptr %to.0, i32 0, i32 2
  %fddiMACOldUpstreamNbr = getelementptr inbounds %struct.fddi_mib_m, ptr %mib_m.0, i32 0, i32 10
  %83 = call ptr @memcpy(ptr %p208f_old_una, ptr %fddiMACOldUpstreamNbr, i32 6)
  %p208f_new_una = getelementptr inbounds %struct.smt_p_208f, ptr %to.0, i32 0, i32 3
  %fddiMACUpstreamNbr116 = getelementptr inbounds %struct.fddi_mib_m, ptr %mib_m.0, i32 0, i32 8
  %84 = call ptr @memcpy(ptr %p208f_new_una, ptr %fddiMACUpstreamNbr116, i32 6)
  %p208f_old_dna = getelementptr inbounds %struct.smt_p_208f, ptr %to.0, i32 0, i32 4
  %fddiMACOldDownstreamNbr = getelementptr inbounds %struct.fddi_mib_m, ptr %mib_m.0, i32 0, i32 11
  %85 = call ptr @memcpy(ptr %p208f_old_dna, ptr %fddiMACOldDownstreamNbr, i32 6)
  %p208f_new_dna = getelementptr inbounds %struct.smt_p_208f, ptr %to.0, i32 0, i32 5
  %fddiMACDownstreamNbr = getelementptr inbounds %struct.fddi_mib_m, ptr %mib_m.0, i32 0, i32 9
  %86 = call ptr @memcpy(ptr %p208f_new_dna, ptr %fddiMACDownstreamNbr, i32 6)
  %fddiMACCurrentPath = getelementptr inbounds %struct.fddi_mib_m, ptr %mib_m.0, i32 0, i32 7
  %87 = ptrtoint ptr %fddiMACCurrentPath to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %fddiMACCurrentPath, align 4
  %p208f_curren_path = getelementptr inbounds %struct.smt_p_208f, ptr %to.0, i32 0, i32 6
  %89 = ptrtoint ptr %p208f_curren_path to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %p208f_curren_path, align 4
  %p208f_smt_address = getelementptr inbounds %struct.smt_p_208f, ptr %to.0, i32 0, i32 7
  %fddiMACSMTAddress117 = getelementptr inbounds %struct.fddi_mib_m, ptr %mib_m.0, i32 0, i32 16
  %90 = call ptr @memcpy(ptr %p208f_smt_address, ptr %fddiMACSMTAddress117, i32 6)
  br label %sp_done

sw.bb118:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %fddiMACMultiple_P = getelementptr inbounds %struct.fddi_mib_m, ptr %mib_m.0, i32 0, i32 4
  %91 = ptrtoint ptr %fddiMACMultiple_P to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %fddiMACMultiple_P, align 1
  %conv120 = zext i8 %92 to i32
  %93 = ptrtoint ptr %to.0 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %conv120, ptr %to.0, align 4
  %fddiMACAvailablePaths = getelementptr inbounds %struct.fddi_mib_m, ptr %mib_m.0, i32 0, i32 6
  %94 = ptrtoint ptr %fddiMACAvailablePaths to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %fddiMACAvailablePaths, align 1
  %conv121 = zext i8 %95 to i16
  %p2090_availablepaths = getelementptr inbounds %struct.smt_p_2090, ptr %to.0, i32 0, i32 1
  %96 = ptrtoint ptr %p2090_availablepaths to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %conv121, ptr %p2090_availablepaths, align 4
  %fddiMACCurrentPath122 = getelementptr inbounds %struct.fddi_mib_m, ptr %mib_m.0, i32 0, i32 7
  %97 = ptrtoint ptr %fddiMACCurrentPath122 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %fddiMACCurrentPath122, align 4
  %p2090_currentpath = getelementptr inbounds %struct.smt_p_2090, ptr %to.0, i32 0, i32 2
  %99 = ptrtoint ptr %p2090_currentpath to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %98, ptr %p2090_currentpath, align 2
  %fddiMACRequestedPaths = getelementptr inbounds %struct.fddi_mib_m, ptr %mib_m.0, i32 0, i32 13
  %100 = ptrtoint ptr %fddiMACRequestedPaths to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %fddiMACRequestedPaths, align 4
  %conv123 = zext i16 %101 to i32
  %p2090_requestedpaths = getelementptr inbounds %struct.smt_p_2090, ptr %to.0, i32 0, i32 3
  %102 = ptrtoint ptr %p2090_requestedpaths to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %conv123, ptr %p2090_requestedpaths, align 4
  br label %sp_done

sw.bb124:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %fddiPORTLerFlag = getelementptr inbounds %struct.fddi_mib_p, ptr %mib_p.0, i32 0, i32 27
  %103 = ptrtoint ptr %fddiPORTLerFlag to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %fddiPORTLerFlag, align 1
  %conv126 = zext i8 %104 to i32
  %105 = ptrtoint ptr %to.0 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %conv126, ptr %to.0, align 4
  %p4050_pad = getelementptr inbounds %struct.smt_p_4050, ptr %to.0, i32 0, i32 1
  %106 = ptrtoint ptr %p4050_pad to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %p4050_pad, align 4
  %fddiPORTLer_Cutoff = getelementptr inbounds %struct.fddi_mib_p, ptr %mib_p.0, i32 0, i32 20
  %107 = ptrtoint ptr %fddiPORTLer_Cutoff to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %fddiPORTLer_Cutoff, align 1
  %p4050_cutoff = getelementptr inbounds %struct.smt_p_4050, ptr %to.0, i32 0, i32 2
  %109 = ptrtoint ptr %p4050_cutoff to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %108, ptr %p4050_cutoff, align 1
  %fddiPORTLer_Alarm = getelementptr inbounds %struct.fddi_mib_p, ptr %mib_p.0, i32 0, i32 21
  %110 = ptrtoint ptr %fddiPORTLer_Alarm to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %fddiPORTLer_Alarm, align 2
  %p4050_alarm = getelementptr inbounds %struct.smt_p_4050, ptr %to.0, i32 0, i32 3
  %112 = ptrtoint ptr %p4050_alarm to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %111, ptr %p4050_alarm, align 2
  %fddiPORTLer_Estimate = getelementptr inbounds %struct.fddi_mib_p, ptr %mib_p.0, i32 0, i32 19
  %113 = ptrtoint ptr %fddiPORTLer_Estimate to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %fddiPORTLer_Estimate, align 4
  %p4050_estimate = getelementptr inbounds %struct.smt_p_4050, ptr %to.0, i32 0, i32 4
  %115 = ptrtoint ptr %p4050_estimate to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %114, ptr %p4050_estimate, align 1
  %fddiPORTLem_Reject_Ct = getelementptr inbounds %struct.fddi_mib_p, ptr %mib_p.0, i32 0, i32 17
  %116 = ptrtoint ptr %fddiPORTLem_Reject_Ct to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %fddiPORTLem_Reject_Ct, align 4
  %p4050_reject_ct = getelementptr inbounds %struct.smt_p_4050, ptr %to.0, i32 0, i32 5
  %118 = ptrtoint ptr %p4050_reject_ct to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %p4050_reject_ct, align 4
  %fddiPORTLem_Ct = getelementptr inbounds %struct.fddi_mib_p, ptr %mib_p.0, i32 0, i32 18
  %119 = ptrtoint ptr %fddiPORTLem_Ct to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %fddiPORTLem_Ct, align 4
  %p4050_ct = getelementptr inbounds %struct.smt_p_4050, ptr %to.0, i32 0, i32 6
  %121 = ptrtoint ptr %p4050_ct to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %p4050_ct, align 4
  br label %sp_done

sw.bb127:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %fddiPORTMultiple_U = getelementptr inbounds %struct.fddi_mib_p, ptr %mib_p.0, i32 0, i32 28
  %122 = ptrtoint ptr %fddiPORTMultiple_U to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %fddiPORTMultiple_U, align 2
  %conv129 = zext i8 %123 to i32
  %124 = ptrtoint ptr %to.0 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %conv129, ptr %to.0, align 4
  %125 = ptrtoint ptr %mib_p.0 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %mib_p.0, align 4
  %p4051_porttype = getelementptr inbounds %struct.smt_p_4051, ptr %to.0, i32 0, i32 1
  %127 = ptrtoint ptr %p4051_porttype to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %126, ptr %p4051_porttype, align 4
  %fddiPORTConnectState = getelementptr inbounds %struct.fddi_mib_p, ptr %mib_p.0, i32 0, i32 22
  %128 = ptrtoint ptr %fddiPORTConnectState to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %fddiPORTConnectState, align 4
  %p4051_connectstate = getelementptr inbounds %struct.smt_p_4051, ptr %to.0, i32 0, i32 2
  %130 = ptrtoint ptr %p4051_connectstate to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %129, ptr %p4051_connectstate, align 2
  %fddiPORTNeighborType = getelementptr inbounds %struct.fddi_mib_p, ptr %mib_p.0, i32 0, i32 1
  %131 = ptrtoint ptr %fddiPORTNeighborType to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %fddiPORTNeighborType, align 2
  %p4051_pc_neighbor = getelementptr inbounds %struct.smt_p_4051, ptr %to.0, i32 0, i32 3
  %133 = ptrtoint ptr %p4051_pc_neighbor to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %132, ptr %p4051_pc_neighbor, align 4
  %fddiPORTPC_Withhold = getelementptr inbounds %struct.fddi_mib_p, ptr %mib_p.0, i32 0, i32 25
  %134 = ptrtoint ptr %fddiPORTPC_Withhold to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %fddiPORTPC_Withhold, align 2
  %p4051_pc_withhold = getelementptr inbounds %struct.smt_p_4051, ptr %to.0, i32 0, i32 4
  %136 = ptrtoint ptr %p4051_pc_withhold to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %135, ptr %p4051_pc_withhold, align 2
  br label %sp_done

sw.bb130:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %fddiPORTEB_Condition = getelementptr inbounds %struct.fddi_mib_p, ptr %mib_p.0, i32 0, i32 30
  %137 = ptrtoint ptr %fddiPORTEB_Condition to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %fddiPORTEB_Condition, align 4
  %conv132 = zext i8 %138 to i32
  %139 = ptrtoint ptr %to.0 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %conv132, ptr %to.0, align 4
  %fddiPORTEBError_Ct = getelementptr inbounds %struct.fddi_mib_p, ptr %mib_p.0, i32 0, i32 15
  %140 = ptrtoint ptr %fddiPORTEBError_Ct to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %fddiPORTEBError_Ct, align 4
  %p4052_eberrorcount = getelementptr inbounds %struct.smt_p_4052, ptr %to.0, i32 0, i32 1
  %142 = ptrtoint ptr %p4052_eberrorcount to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %p4052_eberrorcount, align 4
  br label %sp_done

sw.bb133:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %fddiPORTMultiple_P = getelementptr inbounds %struct.fddi_mib_p, ptr %mib_p.0, i32 0, i32 29
  %143 = ptrtoint ptr %fddiPORTMultiple_P to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %fddiPORTMultiple_P, align 1
  %conv135 = zext i8 %144 to i32
  %145 = ptrtoint ptr %to.0 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %conv135, ptr %to.0, align 4
  %fddiPORTAvailablePaths = getelementptr inbounds %struct.fddi_mib_p, ptr %mib_p.0, i32 0, i32 7
  %146 = ptrtoint ptr %fddiPORTAvailablePaths to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %fddiPORTAvailablePaths, align 4
  %conv136 = zext i8 %147 to i16
  %p4053_availablepaths = getelementptr inbounds %struct.smt_p_4053, ptr %to.0, i32 0, i32 1
  %148 = ptrtoint ptr %p4053_availablepaths to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %conv136, ptr %p4053_availablepaths, align 4
  %fddiPORTCurrentPath = getelementptr inbounds %struct.fddi_mib_p, ptr %mib_p.0, i32 0, i32 4
  %149 = ptrtoint ptr %fddiPORTCurrentPath to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %fddiPORTCurrentPath, align 4
  %p4053_currentpath = getelementptr inbounds %struct.smt_p_4053, ptr %to.0, i32 0, i32 2
  %151 = ptrtoint ptr %p4053_currentpath to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 %150, ptr %p4053_currentpath, align 2
  %p4053_requestedpaths = getelementptr inbounds %struct.smt_p_4053, ptr %to.0, i32 0, i32 3
  %fddiPORTRequestedPaths = getelementptr inbounds %struct.fddi_mib_p, ptr %mib_p.0, i32 0, i32 5
  %152 = ptrtoint ptr %fddiPORTRequestedPaths to i32
  call void @__asan_loadN_noabort(i32 %152, i32 4)
  %153 = load i32, ptr %fddiPORTRequestedPaths, align 2
  %154 = ptrtoint ptr %p4053_requestedpaths to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %p4053_requestedpaths, align 4
  %155 = ptrtoint ptr %mib_p.0 to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %mib_p.0, align 4
  %p4053_mytype = getelementptr inbounds %struct.smt_p_4053, ptr %to.0, i32 0, i32 4
  %157 = ptrtoint ptr %p4053_mytype to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %156, ptr %p4053_mytype, align 4
  %fddiPORTNeighborType139 = getelementptr inbounds %struct.fddi_mib_p, ptr %mib_p.0, i32 0, i32 1
  %158 = ptrtoint ptr %fddiPORTNeighborType139 to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %fddiPORTNeighborType139, align 2
  %p4053_neighbortype = getelementptr inbounds %struct.smt_p_4053, ptr %to.0, i32 0, i32 5
  %160 = ptrtoint ptr %p4053_neighbortype to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %159, ptr %p4053_neighbortype, align 2
  br label %sp_done

sw.epilog141:                                     ; preds = %sw.bb78, %sw.bb76, %sw.bb70, %sw.bb69, %sw.bb64.sw.epilog141_crit_edge, %sw.epilog.sw.epilog141_crit_edge
  %tobool158.not = phi i1 [ true, %sw.epilog.sw.epilog141_crit_edge ], [ true, %sw.bb64.sw.epilog141_crit_edge ], [ true, %sw.bb76 ], [ true, %sw.bb70 ], [ true, %sw.bb69 ], [ false, %sw.bb78 ]
  %swap.0 = phi ptr [ null, %sw.epilog.sw.epilog141_crit_edge ], [ null, %sw.bb64.sw.epilog141_crit_edge ], [ null, %sw.bb76 ], [ null, %sw.bb70 ], [ null, %sw.bb69 ], [ %.str..str.1, %sw.bb78 ]
  br i1 %tobool1.not, label %if.then143, label %if.end149

if.then143:                                       ; preds = %sw.epilog141
  call void @__sanitizer_cov_trace_pc() #7
  %and145 = and i32 %conv5, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %tobool146.not = icmp eq i32 %and145, 0
  %cond147 = select i1 %tobool146.not, i32 5, i32 6
  %161 = ptrtoint ptr %pc_err to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %cond147, ptr %pc_err, align 4
  br label %cleanup

if.end149:                                        ; preds = %sw.epilog141
  %p_access150 = getelementptr inbounds %struct.s_p_tab, ptr %spec.select.i, i32 0, i32 1
  %162 = ptrtoint ptr %p_access150 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %p_access150, align 2
  %.off = add i8 %163, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %sw.epilog155, label %sw.default153

sw.default153:                                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #7
  %164 = ptrtoint ptr %pc_err to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 5, ptr %pc_err, align 4
  br label %cleanup

sw.epilog155:                                     ; preds = %if.end149
  %p_offset = getelementptr inbounds %struct.s_p_tab, ptr %spec.select.i, i32 0, i32 2
  %165 = ptrtoint ptr %p_offset to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %p_offset, align 2
  %conv156 = zext i16 %166 to i32
  %add.ptr157 = getelementptr i8, ptr %mib_addr.0, i32 %conv156
  %p_swap = getelementptr inbounds %struct.s_p_tab, ptr %spec.select.i, i32 0, i32 3
  %spec.select = select i1 %tobool158.not, ptr %p_swap, ptr %swap.0
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %sw.epilog155
  %swap.2 = phi ptr [ %spec.select, %sw.epilog155 ], [ %incdec.ptr, %while.cond.backedge ]
  %to.1 = phi ptr [ %to.0, %sw.epilog155 ], [ %to.1.be, %while.cond.backedge ]
  %from.0 = phi ptr [ %add.ptr157, %sw.epilog155 ], [ %from.0.be, %while.cond.backedge ]
  %len.1 = phi i32 [ %len.0, %sw.epilog155 ], [ %len.1.be, %while.cond.backedge ]
  %incdec.ptr = getelementptr i8, ptr %swap.2, i32 1
  %167 = ptrtoint ptr %swap.2 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %swap.2, align 1
  %169 = zext i8 %168 to i64
  call void @__sanitizer_cov_trace_switch(i64 %169, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %168, label %do.end [
    i8 0, label %while.cond.done_crit_edge
    i8 98, label %while.cond.while.cond.backedge_crit_edge
    i8 119, label %while.cond.while.cond.backedge_crit_edge653
    i8 108, label %while.cond.while.cond.backedge_crit_edge654
    i8 83, label %while.cond.sw.bb165_crit_edge
    i8 69, label %while.cond.sw.bb165_crit_edge655
    i8 82, label %while.cond.sw.bb165_crit_edge656
    i8 114, label %while.cond.sw.bb165_crit_edge657
    i8 73, label %sw.bb178
    i8 70, label %while.cond.sw.bb189_crit_edge
    i8 66, label %while.cond.sw.bb189_crit_edge658
    i8 67, label %while.cond.sw.bb201_crit_edge
    i8 84, label %while.cond.sw.bb201_crit_edge659
    i8 76, label %while.cond.sw.bb201_crit_edge660
    i8 50, label %sw.bb216
    i8 52, label %sw.bb229
    i8 65, label %sw.bb244
    i8 56, label %sw.bb255
    i8 68, label %sw.bb263
    i8 80, label %sw.bb271
  ]

while.cond.sw.bb201_crit_edge660:                 ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb201

while.cond.sw.bb201_crit_edge659:                 ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb201

while.cond.sw.bb201_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb201

while.cond.sw.bb189_crit_edge658:                 ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb189

while.cond.sw.bb189_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb189

while.cond.sw.bb165_crit_edge657:                 ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb165

while.cond.sw.bb165_crit_edge656:                 ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb165

while.cond.sw.bb165_crit_edge655:                 ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb165

while.cond.sw.bb165_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb165

while.cond.while.cond.backedge_crit_edge654:      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

while.cond.while.cond.backedge_crit_edge653:      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

while.cond.while.cond.backedge_crit_edge:         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

while.cond.done_crit_edge:                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

while.cond.backedge:                              ; preds = %do.end, %if.end275, %if.end267, %if.end259, %if.end248, %if.end233, %if.end220, %if.end205, %if.end193, %if.end182, %if.end169, %while.cond.while.cond.backedge_crit_edge, %while.cond.while.cond.backedge_crit_edge653, %while.cond.while.cond.backedge_crit_edge654
  %to.1.be = phi ptr [ %to.1, %while.cond.while.cond.backedge_crit_edge ], [ %to.1, %while.cond.while.cond.backedge_crit_edge653 ], [ %to.1, %while.cond.while.cond.backedge_crit_edge654 ], [ %to.1, %do.end ], [ %add.ptr292, %if.end275 ], [ %add.ptr268, %if.end267 ], [ %add.ptr260, %if.end259 ], [ %add.ptr252, %if.end248 ], [ %add.ptr243, %if.end233 ], [ %add.ptr228, %if.end220 ], [ %add.ptr215, %if.end205 ], [ %add.ptr200, %if.end193 ], [ %add.ptr187, %if.end182 ], [ %add.ptr176, %if.end169 ]
  %from.0.be = phi ptr [ %from.0, %while.cond.while.cond.backedge_crit_edge ], [ %from.0, %while.cond.while.cond.backedge_crit_edge653 ], [ %from.0, %while.cond.while.cond.backedge_crit_edge654 ], [ %from.0, %do.end ], [ %incdec.ptr290, %if.end275 ], [ %add.ptr269, %if.end267 ], [ %add.ptr261, %if.end259 ], [ %add.ptr253, %if.end248 ], [ %incdec.ptr240, %if.end233 ], [ %incdec.ptr225, %if.end220 ], [ %incdec.ptr212, %if.end205 ], [ %incdec.ptr198, %if.end193 ], [ %incdec.ptr185, %if.end182 ], [ %incdec.ptr174, %if.end169 ]
  %len.1.be = phi i32 [ %len.1, %while.cond.while.cond.backedge_crit_edge ], [ %len.1, %while.cond.while.cond.backedge_crit_edge653 ], [ %len.1, %while.cond.while.cond.backedge_crit_edge654 ], [ %len.1, %do.end ], [ %sub293, %if.end275 ], [ %sub270, %if.end267 ], [ %sub262, %if.end259 ], [ %sub254, %if.end248 ], [ %sub242, %if.end233 ], [ %sub227, %if.end220 ], [ %sub214, %if.end205 ], [ %sub194, %if.end193 ], [ %sub188, %if.end182 ], [ %sub177, %if.end169 ]
  br label %while.cond

sw.bb165:                                         ; preds = %while.cond.sw.bb165_crit_edge, %while.cond.sw.bb165_crit_edge655, %while.cond.sw.bb165_crit_edge656, %while.cond.sw.bb165_crit_edge657
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len.1)
  %cmp166 = icmp slt i32 %len.1, 4
  br i1 %cmp166, label %sw.bb165.len_error_crit_edge, label %if.end169

sw.bb165.len_error_crit_edge:                     ; preds = %sw.bb165
  call void @__sanitizer_cov_trace_pc() #7
  br label %len_error

if.end169:                                        ; preds = %sw.bb165
  call void @__sanitizer_cov_trace_pc() #7
  %170 = ptrtoint ptr %to.1 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 0, ptr %to.1, align 1
  %arrayidx171 = getelementptr i8, ptr %to.1, i32 1
  %171 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 0, ptr %arrayidx171, align 1
  %incdec.ptr172 = getelementptr i8, ptr %from.0, i32 1
  %172 = ptrtoint ptr %from.0 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %from.0, align 1
  %arrayidx173 = getelementptr i8, ptr %to.1, i32 2
  %174 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %173, ptr %arrayidx173, align 1
  %incdec.ptr174 = getelementptr i8, ptr %from.0, i32 2
  %175 = ptrtoint ptr %incdec.ptr172 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %incdec.ptr172, align 1
  %arrayidx175 = getelementptr i8, ptr %to.1, i32 3
  %177 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %176, ptr %arrayidx175, align 1
  %add.ptr176 = getelementptr i8, ptr %to.1, i32 4
  %sub177 = add nsw i32 %len.1, -4
  br label %while.cond.backedge

sw.bb178:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len.1)
  %cmp179 = icmp slt i32 %len.1, 2
  br i1 %cmp179, label %sw.bb178.len_error_crit_edge, label %if.end182

sw.bb178.len_error_crit_edge:                     ; preds = %sw.bb178
  call void @__sanitizer_cov_trace_pc() #7
  br label %len_error

if.end182:                                        ; preds = %sw.bb178
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr183 = getelementptr i8, ptr %from.0, i32 1
  %178 = ptrtoint ptr %from.0 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %from.0, align 1
  %180 = ptrtoint ptr %to.1 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %179, ptr %to.1, align 1
  %incdec.ptr185 = getelementptr i8, ptr %from.0, i32 2
  %181 = ptrtoint ptr %incdec.ptr183 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %incdec.ptr183, align 1
  %arrayidx186 = getelementptr i8, ptr %to.1, i32 1
  %183 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %182, ptr %arrayidx186, align 1
  %add.ptr187 = getelementptr i8, ptr %to.1, i32 2
  %sub188 = add nsw i32 %len.1, -2
  br label %while.cond.backedge

sw.bb189:                                         ; preds = %while.cond.sw.bb189_crit_edge, %while.cond.sw.bb189_crit_edge658
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len.1)
  %cmp190 = icmp slt i32 %len.1, 4
  br i1 %cmp190, label %sw.bb189.len_error_crit_edge, label %if.end193

sw.bb189.len_error_crit_edge:                     ; preds = %sw.bb189
  call void @__sanitizer_cov_trace_pc() #7
  br label %len_error

if.end193:                                        ; preds = %sw.bb189
  call void @__sanitizer_cov_trace_pc() #7
  %sub194 = add nsw i32 %len.1, -4
  %184 = ptrtoint ptr %to.1 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 0, ptr %to.1, align 1
  %arrayidx196 = getelementptr i8, ptr %to.1, i32 1
  %185 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 0, ptr %arrayidx196, align 1
  %arrayidx197 = getelementptr i8, ptr %to.1, i32 2
  %186 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 0, ptr %arrayidx197, align 1
  %incdec.ptr198 = getelementptr i8, ptr %from.0, i32 1
  %187 = ptrtoint ptr %from.0 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %from.0, align 1
  %arrayidx199 = getelementptr i8, ptr %to.1, i32 3
  %189 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %188, ptr %arrayidx199, align 1
  %add.ptr200 = getelementptr i8, ptr %to.1, i32 4
  br label %while.cond.backedge

sw.bb201:                                         ; preds = %while.cond.sw.bb201_crit_edge, %while.cond.sw.bb201_crit_edge659, %while.cond.sw.bb201_crit_edge660
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len.1)
  %cmp202 = icmp slt i32 %len.1, 4
  br i1 %cmp202, label %sw.bb201.len_error_crit_edge, label %if.end205

sw.bb201.len_error_crit_edge:                     ; preds = %sw.bb201
  call void @__sanitizer_cov_trace_pc() #7
  br label %len_error

if.end205:                                        ; preds = %sw.bb201
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr206 = getelementptr i8, ptr %from.0, i32 1
  %190 = ptrtoint ptr %from.0 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %from.0, align 1
  %192 = ptrtoint ptr %to.1 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %191, ptr %to.1, align 1
  %incdec.ptr208 = getelementptr i8, ptr %from.0, i32 2
  %193 = ptrtoint ptr %incdec.ptr206 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %incdec.ptr206, align 1
  %arrayidx209 = getelementptr i8, ptr %to.1, i32 1
  %195 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %194, ptr %arrayidx209, align 1
  %incdec.ptr210 = getelementptr i8, ptr %from.0, i32 3
  %196 = ptrtoint ptr %incdec.ptr208 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %incdec.ptr208, align 1
  %arrayidx211 = getelementptr i8, ptr %to.1, i32 2
  %198 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %197, ptr %arrayidx211, align 1
  %incdec.ptr212 = getelementptr i8, ptr %from.0, i32 4
  %199 = ptrtoint ptr %incdec.ptr210 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %incdec.ptr210, align 1
  %arrayidx213 = getelementptr i8, ptr %to.1, i32 3
  %201 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %200, ptr %arrayidx213, align 1
  %sub214 = add nsw i32 %len.1, -4
  %add.ptr215 = getelementptr i8, ptr %to.1, i32 4
  br label %while.cond.backedge

sw.bb216:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len.1)
  %cmp217 = icmp slt i32 %len.1, 4
  br i1 %cmp217, label %sw.bb216.len_error_crit_edge, label %if.end220

sw.bb216.len_error_crit_edge:                     ; preds = %sw.bb216
  call void @__sanitizer_cov_trace_pc() #7
  br label %len_error

if.end220:                                        ; preds = %sw.bb216
  call void @__sanitizer_cov_trace_pc() #7
  %202 = ptrtoint ptr %to.1 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 0, ptr %to.1, align 1
  %arrayidx222 = getelementptr i8, ptr %to.1, i32 1
  %203 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 0, ptr %arrayidx222, align 1
  %incdec.ptr223 = getelementptr i8, ptr %from.0, i32 1
  %204 = ptrtoint ptr %from.0 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %from.0, align 1
  %arrayidx224 = getelementptr i8, ptr %to.1, i32 2
  %206 = ptrtoint ptr %arrayidx224 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %205, ptr %arrayidx224, align 1
  %incdec.ptr225 = getelementptr i8, ptr %from.0, i32 2
  %207 = ptrtoint ptr %incdec.ptr223 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %incdec.ptr223, align 1
  %arrayidx226 = getelementptr i8, ptr %to.1, i32 3
  %209 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %208, ptr %arrayidx226, align 1
  %sub227 = add nsw i32 %len.1, -4
  %add.ptr228 = getelementptr i8, ptr %to.1, i32 4
  br label %while.cond.backedge

sw.bb229:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len.1)
  %cmp230 = icmp slt i32 %len.1, 4
  br i1 %cmp230, label %sw.bb229.len_error_crit_edge, label %if.end233

sw.bb229.len_error_crit_edge:                     ; preds = %sw.bb229
  call void @__sanitizer_cov_trace_pc() #7
  br label %len_error

if.end233:                                        ; preds = %sw.bb229
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr234 = getelementptr i8, ptr %from.0, i32 1
  %210 = ptrtoint ptr %from.0 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %from.0, align 1
  %212 = ptrtoint ptr %to.1 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %211, ptr %to.1, align 1
  %incdec.ptr236 = getelementptr i8, ptr %from.0, i32 2
  %213 = ptrtoint ptr %incdec.ptr234 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %incdec.ptr234, align 1
  %arrayidx237 = getelementptr i8, ptr %to.1, i32 1
  %215 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 %214, ptr %arrayidx237, align 1
  %incdec.ptr238 = getelementptr i8, ptr %from.0, i32 3
  %216 = ptrtoint ptr %incdec.ptr236 to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %incdec.ptr236, align 1
  %arrayidx239 = getelementptr i8, ptr %to.1, i32 2
  %218 = ptrtoint ptr %arrayidx239 to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 %217, ptr %arrayidx239, align 1
  %incdec.ptr240 = getelementptr i8, ptr %from.0, i32 4
  %219 = ptrtoint ptr %incdec.ptr238 to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %incdec.ptr238, align 1
  %arrayidx241 = getelementptr i8, ptr %to.1, i32 3
  %221 = ptrtoint ptr %arrayidx241 to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 %220, ptr %arrayidx241, align 1
  %sub242 = add nsw i32 %len.1, -4
  %add.ptr243 = getelementptr i8, ptr %to.1, i32 4
  br label %while.cond.backedge

sw.bb244:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %len.1)
  %cmp245 = icmp slt i32 %len.1, 8
  br i1 %cmp245, label %sw.bb244.len_error_crit_edge, label %if.end248

sw.bb244.len_error_crit_edge:                     ; preds = %sw.bb244
  call void @__sanitizer_cov_trace_pc() #7
  br label %len_error

if.end248:                                        ; preds = %sw.bb244
  call void @__sanitizer_cov_trace_pc() #7
  %222 = ptrtoint ptr %to.1 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 0, ptr %to.1, align 1
  %arrayidx250 = getelementptr i8, ptr %to.1, i32 1
  %223 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 0, ptr %arrayidx250, align 1
  %add.ptr251 = getelementptr i8, ptr %to.1, i32 2
  %224 = call ptr @memcpy(ptr %add.ptr251, ptr %from.0, i32 6)
  %add.ptr252 = getelementptr i8, ptr %to.1, i32 8
  %add.ptr253 = getelementptr i8, ptr %from.0, i32 8
  %sub254 = add nsw i32 %len.1, -8
  br label %while.cond.backedge

sw.bb255:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %len.1)
  %cmp256 = icmp slt i32 %len.1, 8
  br i1 %cmp256, label %sw.bb255.len_error_crit_edge, label %if.end259

sw.bb255.len_error_crit_edge:                     ; preds = %sw.bb255
  call void @__sanitizer_cov_trace_pc() #7
  br label %len_error

if.end259:                                        ; preds = %sw.bb255
  call void @__sanitizer_cov_trace_pc() #7
  %225 = ptrtoint ptr %from.0 to i32
  call void @__asan_loadN_noabort(i32 %225, i32 8)
  %226 = load i64, ptr %from.0, align 1
  %227 = ptrtoint ptr %to.1 to i32
  call void @__asan_storeN_noabort(i32 %227, i32 8)
  store i64 %226, ptr %to.1, align 1
  %add.ptr260 = getelementptr i8, ptr %to.1, i32 8
  %add.ptr261 = getelementptr i8, ptr %from.0, i32 8
  %sub262 = add nsw i32 %len.1, -8
  br label %while.cond.backedge

sw.bb263:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %len.1)
  %cmp264 = icmp slt i32 %len.1, 32
  br i1 %cmp264, label %sw.bb263.len_error_crit_edge, label %if.end267

sw.bb263.len_error_crit_edge:                     ; preds = %sw.bb263
  call void @__sanitizer_cov_trace_pc() #7
  br label %len_error

if.end267:                                        ; preds = %sw.bb263
  call void @__sanitizer_cov_trace_pc() #7
  %228 = call ptr @memcpy(ptr %to.1, ptr %from.0, i32 32)
  %add.ptr268 = getelementptr i8, ptr %to.1, i32 32
  %add.ptr269 = getelementptr i8, ptr %from.0, i32 32
  %sub270 = add nsw i32 %len.1, -32
  br label %while.cond.backedge

sw.bb271:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %len.1)
  %cmp272 = icmp slt i32 %len.1, 8
  br i1 %cmp272, label %sw.bb271.len_error_crit_edge, label %if.end275

sw.bb271.len_error_crit_edge:                     ; preds = %sw.bb271
  call void @__sanitizer_cov_trace_pc() #7
  br label %len_error

if.end275:                                        ; preds = %sw.bb271
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr276 = getelementptr i8, ptr %from.0, i32 1
  %229 = ptrtoint ptr %from.0 to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %from.0, align 1
  %231 = ptrtoint ptr %to.1 to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 %230, ptr %to.1, align 1
  %incdec.ptr278 = getelementptr i8, ptr %from.0, i32 2
  %232 = ptrtoint ptr %incdec.ptr276 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %incdec.ptr276, align 1
  %arrayidx279 = getelementptr i8, ptr %to.1, i32 1
  %234 = ptrtoint ptr %arrayidx279 to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %233, ptr %arrayidx279, align 1
  %incdec.ptr280 = getelementptr i8, ptr %from.0, i32 3
  %235 = ptrtoint ptr %incdec.ptr278 to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %incdec.ptr278, align 1
  %arrayidx281 = getelementptr i8, ptr %to.1, i32 2
  %237 = ptrtoint ptr %arrayidx281 to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 %236, ptr %arrayidx281, align 1
  %incdec.ptr282 = getelementptr i8, ptr %from.0, i32 4
  %238 = ptrtoint ptr %incdec.ptr280 to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %incdec.ptr280, align 1
  %arrayidx283 = getelementptr i8, ptr %to.1, i32 3
  %240 = ptrtoint ptr %arrayidx283 to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %239, ptr %arrayidx283, align 1
  %incdec.ptr284 = getelementptr i8, ptr %from.0, i32 5
  %241 = ptrtoint ptr %incdec.ptr282 to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %incdec.ptr282, align 1
  %arrayidx285 = getelementptr i8, ptr %to.1, i32 4
  %243 = ptrtoint ptr %arrayidx285 to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %242, ptr %arrayidx285, align 1
  %incdec.ptr286 = getelementptr i8, ptr %from.0, i32 6
  %244 = ptrtoint ptr %incdec.ptr284 to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %incdec.ptr284, align 1
  %arrayidx287 = getelementptr i8, ptr %to.1, i32 5
  %246 = ptrtoint ptr %arrayidx287 to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 %245, ptr %arrayidx287, align 1
  %incdec.ptr288 = getelementptr i8, ptr %from.0, i32 7
  %247 = ptrtoint ptr %incdec.ptr286 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %incdec.ptr286, align 1
  %arrayidx289 = getelementptr i8, ptr %to.1, i32 6
  %249 = ptrtoint ptr %arrayidx289 to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 %248, ptr %arrayidx289, align 1
  %incdec.ptr290 = getelementptr i8, ptr %from.0, i32 8
  %250 = ptrtoint ptr %incdec.ptr288 to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %incdec.ptr288, align 1
  %arrayidx291 = getelementptr i8, ptr %to.1, i32 7
  %252 = ptrtoint ptr %arrayidx291 to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 %251, ptr %arrayidx291, align 1
  %add.ptr292 = getelementptr i8, ptr %to.1, i32 8
  %sub293 = add nsw i32 %len.1, -8
  br label %while.cond.backedge

do.end:                                           ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  %call295 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 119, ptr noundef nonnull @.str.3) #9
  br label %while.cond.backedge

done:                                             ; preds = %sp_done, %while.cond.done_crit_edge
  %to.3 = phi ptr [ %add.ptr322, %sp_done ], [ %to.1, %while.cond.done_crit_edge ]
  %len.3 = phi i32 [ %sub321, %sp_done ], [ %len.1, %while.cond.done_crit_edge ]
  %and297 = and i32 %len.3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and297)
  %tobool298.not = icmp eq i32 %and297, 0
  br i1 %tobool298.not, label %done.if.end306_crit_edge, label %if.then299

done.if.end306_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end306

if.then299:                                       ; preds = %done
  call void @__sanitizer_cov_trace_pc() #7
  %253 = ptrtoint ptr %to.3 to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 0, ptr %to.3, align 1
  %arrayidx301 = getelementptr i8, ptr %to.3, i32 1
  %254 = ptrtoint ptr %arrayidx301 to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 0, ptr %arrayidx301, align 1
  %sub303 = sub nuw nsw i32 4, %and297
  %add.ptr304 = getelementptr i8, ptr %to.3, i32 %sub303
  %and305 = and i32 %len.3, -4
  br label %if.end306

if.end306:                                        ; preds = %if.then299, %done.if.end306_crit_edge
  %to.4 = phi ptr [ %add.ptr304, %if.then299 ], [ %to.3, %done.if.end306_crit_edge ]
  %len.4 = phi i32 [ %and305, %if.then299 ], [ %len.3, %done.if.end306_crit_edge ]
  %255 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %255)
  store i16 %para, ptr %7, align 2
  %sub307 = sub i32 %9, %len.4
  %256 = trunc i32 %sub307 to i16
  %conv309 = add i16 %256, -4
  %p_len = getelementptr inbounds %struct.smt_para, ptr %7, i32 0, i32 1
  %257 = ptrtoint ptr %p_len to i32
  call void @__asan_store2_noabort(i32 %257)
  store i16 %conv309, ptr %p_len, align 2
  %258 = ptrtoint ptr %pc_p to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr %to.4, ptr %pc_p, align 4
  %259 = ptrtoint ptr %pcon to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %len.4, ptr %pcon, align 4
  br label %cleanup

sp_done:                                          ; preds = %sw.bb133, %sw.bb130, %sw.bb127, %sw.bb124, %sw.bb118, %sw.bb111, %sw.bb107, %sw.bb103, %sw.bb91, %sw.bb86, %sw.bb84, %sw.bb75
  %sp_len.0 = phi i32 [ 16, %sw.bb133 ], [ 8, %sw.bb130 ], [ 12, %sw.bb127 ], [ 16, %sw.bb124 ], [ 12, %sw.bb118 ], [ 40, %sw.bb111 ], [ 16, %sw.bb107 ], [ 20, %sw.bb103 ], [ 20, %sw.bb91 ], [ 8, %sw.bb86 ], [ %call85, %sw.bb84 ], [ 4, %sw.bb75 ]
  %sub321 = sub i32 %len.0, %sp_len.0
  %add.ptr322 = getelementptr i8, ptr %to.0, i32 %sp_len.0
  br label %done

len_error:                                        ; preds = %sw.bb271.len_error_crit_edge, %sw.bb263.len_error_crit_edge, %sw.bb255.len_error_crit_edge, %sw.bb244.len_error_crit_edge, %sw.bb229.len_error_crit_edge, %sw.bb216.len_error_crit_edge, %sw.bb201.len_error_crit_edge, %sw.bb189.len_error_crit_edge, %sw.bb178.len_error_crit_edge, %sw.bb165.len_error_crit_edge
  %260 = ptrtoint ptr %pc_err to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 11, ptr %pc_err, align 4
  br label %cleanup

wrong_error:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  %261 = ptrtoint ptr %pc_err to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 10, ptr %pc_err, align 4
  br label %cleanup

cleanup:                                          ; preds = %wrong_error, %len_error, %if.end306, %sw.default153, %if.then143, %if.then66, %if.then57, %if.then45, %if.then34, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mac_update_counter(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sm_pm_get_ls(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smt_set_timestamp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cem_build_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @smt_get_mbuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sm_to_para(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @queue_event(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ess_para_change(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtm_set_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smt_set_mac_opvalues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ring_status_indication(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smt_action(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin nounwind }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/fddi/skfp/pmf.c", i32 681, i32 11}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/fddi/skfp/pmf.c", i32 683, i32 11}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/fddi/skfp/pmf.c", i32 1025, i32 4}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @smt_add_para._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @smt_add_para._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/fddi/skfp/pmf.c", i32 1284, i32 4}
!12 = !{ptr @smt_set_para._entry, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @smt_set_para._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @p_tab, !15, !"p_tab", i1 false, i1 false}
!15 = !{!"../drivers/net/fddi/skfp/pmf.c", i32 68, i32 3}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{!"auto-init"}
