; ModuleID = '/llk/IR_all_yes/drivers/staging/vt6656/usbpipe.c_pt.bc'
source_filename = "../drivers/staging/vt6656/usbpipe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.vnt_private = type { ptr, ptr, i8, ptr, ptr, i64, i32, i32, %struct.spinlock, %struct.mutex, i32, ptr, i32, [128 x ptr], i32, [128 x ptr], %struct.usb_anchor, i32, %struct.vnt_interrupt_buffer, i16, i8, i8, i8, %struct.vnt_cmd_card_init, %struct.vnt_rsp_card_init, i8, [6 x i8], [6 x i8], i8, i64, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i8, i8, [256 x i8], i8, i8, i8, i8, i8, [14 x i8], [14 x i8], [42 x i8], i16, i16, i32, i32, i16, i16, i32, i32, [32 x i32], i32, i32, i32, i32, i32, i8, [4 x i8], i8, i8, %struct.delayed_work, %struct.ieee80211_low_level_stats }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vnt_interrupt_buffer = type { ptr }
%struct.vnt_cmd_card_init = type { i8, i8, [6 x i8], i8, i8 }
%struct.vnt_rsp_card_init = type { i8, [6 x i8], i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.vnt_rcb = type { ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
%union.anon.43 = type { ptr }
%union.anon.44 = type { i64 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { i32, ptr }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.49, i32, i32, i32, i16, i16, %union.anon.51, i32, %union.anon.52, %union.anon.53, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.49 = type { i32 }
%union.anon.51 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i16 }
%struct.vnt_tx_usb_header = type { i8, i8, i16 }
%struct.vnt_usb_send_context = type { ptr, ptr, ptr, i32, i16, i16, i8, i8, i8, i8 }
%struct.vnt_interrupt_data = type { i8, i8, i16, i8, i8, i16, i8, i8, i16, i8, i8, i16, i64, i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.vnt_rx_header = type { i32, i8, i8, i16 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.134, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.134 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.133, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.possible_net_t = type { ptr }
%struct.anon.133 = type { i64, i64, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.vnt_rx_tail = type <{ i64, i8, i8, i8, i8, i8 }>
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }

@vnt_start_interrupt_urb.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vt6656_stage\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vnt_start_interrupt_urb\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/staging/vt6656/usbpipe.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"---->Interrupt Polling Thread\0A\00", [33 x i8] zeroinitializer }, align 32
@vnt_start_interrupt_urb.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Submit int URB failed %d\0A\00", [38 x i8] zeroinitializer }, align 32
@vnt_submit_rx_urb.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vnt_submit_rx_urb\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rcb->skb is null\0A\00", [46 x i8] zeroinitializer }, align 32
@vnt_submit_rx_urb.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.7, i8 0, i8 104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Submit Rx URB failed %d\0A\00", [39 x i8] zeroinitializer }, align 32
@vnt_tx_context.__UNIQUE_ID_ddebug400 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vnt_tx_context\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Submit Tx URB failed %d\0A\00", [39 x i8] zeroinitializer }, align 32
@vnt_start_interrupt_urb_complete.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"vnt_start_interrupt_urb_complete\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s status = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@vnt_start_interrupt_urb_complete.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.4, i8 0, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@vnt_int_process_data.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vnt_int_process_data\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"---->s_nsInterruptProcessData\0A\00", [33 x i8] zeroinitializer }, align 32
@vnt_submit_rx_urb_complete.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 93, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vnt_submit_rx_urb_complete\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"BULK In failed %d\0A\00", [45 x i8] zeroinitializer }, align 32
@vnt_submit_rx_urb_complete.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.16, i8 0, i8 98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to re submit rx skb\0A\00", [36 x i8] zeroinitializer }, align 32
@vnt_rx_data.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vnt_rx_data\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"------- WRONG Length 1\0A\00", [40 x i8] zeroinitializer }, align 32
@vnt_rx_data.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.19, i8 0, i8 72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"------ WRONG Length 2\0A\00", [41 x i8] zeroinitializer }, align 32
@vnt_rx_data.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.20, i8 0, i8 76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Wrong PLCP Length %x\0A\00", [42 x i8] zeroinitializer }, align 32
@vnt_rx_data.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.21, i8 0, i8 79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Wrong Rx Bit Rate %d\0A\00", [42 x i8] zeroinitializer }, align 32
@vnt_tx_context_complete.__UNIQUE_ID_ddebug398 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vnt_tx_context_complete\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Write %d bytes\0A\00", [16 x i8] zeroinitializer }, align 32
@vnt_tx_context_complete.__UNIQUE_ID_ddebug399 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.24, i8 0, i8 109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"BULK Out failed %d\0A\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.25 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.26 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 242, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 255, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 402, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 417, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 496, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 229, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 181, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 374, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 393, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 284, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 290, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 303, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 319, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 429, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.100 = private constant [36 x i8] c"../drivers/staging/vt6656/usbpipe.c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 439, i32 3 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext %request, i16 noundef zeroext %value, i16 noundef zeroext %index, i16 noundef zeroext %length, ptr noundef %buffer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.end:                                           ; preds = %entry
  %usb_lock = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %usb_lock, i32 noundef 0) #5
  %conv = zext i16 %length to i32
  %call1 = tail call ptr @kmemdup(ptr noundef %buffer, i32 noundef %conv, i32 noundef 3264) #5
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.end_unlock_crit_edge, label %if.end4

if.end.end_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %end_unlock

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %usb = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 3
  %3 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %usb, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i = shl i32 %6, 8
  %or = or i32 %shl.i, -2147483648
  %call7 = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or, i8 noundef zeroext %request, i8 noundef zeroext 64, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef nonnull %call1, i16 noundef zeroext %length, i32 noundef 500) #5
  tail call void @kfree(ptr noundef nonnull %call1) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call7, i32 %conv)
  %cmp = icmp eq i32 %call7, %conv
  %. = select i1 %cmp, i32 0, i32 -5
  br label %end_unlock

end_unlock:                                       ; preds = %if.end4, %if.end.end_unlock_crit_edge
  %ret.0 = phi i32 [ -12, %if.end.end_unlock_crit_edge ], [ %., %if.end4 ]
  tail call void @mutex_unlock(ptr noundef %usb_lock) #5
  br label %end

end:                                              ; preds = %end_unlock, %entry.end_crit_edge
  %ret.1 = phi i32 [ %ret.0, %end_unlock ], [ -22, %entry.end_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_control_out_u8(ptr noundef %priv, i8 noundef zeroext %reg, i8 noundef zeroext %reg_off, i8 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  %data.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %data, ptr %data.addr, align 1
  %conv = zext i8 %reg_off to i16
  %conv1 = zext i8 %reg to i16
  %call = call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 0, i16 noundef zeroext %conv, i16 noundef zeroext %conv1, i16 noundef zeroext 1, ptr noundef nonnull %data.addr)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_control_out_blocks(ptr noundef %priv, i16 noundef zeroext %block, i8 noundef zeroext %reg, i16 noundef zeroext %length, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %length to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %length)
  %cmp21.not = icmp eq i16 %length, 0
  br i1 %cmp21.not, label %entry.cleanup10_crit_edge, label %for.body.lr.ph

entry.cleanup10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup10

for.body.lr.ph:                                   ; preds = %entry
  %conv3 = zext i16 %block to i32
  %conv8 = zext i8 %reg to i16
  br label %for.body

for.cond:                                         ; preds = %for.body
  %add = add i32 %i.022, %conv3
  %cmp = icmp slt i32 %add, %conv
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup10_crit_edge

for.cond.cleanup10_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup10

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.cond.for.body_crit_edge ]
  %sub = sub i32 %conv, %i.022
  %0 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %conv3)
  %conv6 = trunc i32 %0 to i16
  %conv7 = trunc i32 %i.022 to i16
  %add.ptr = getelementptr i8, ptr %data, i32 %i.022
  %call = tail call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 0, i16 noundef zeroext %conv7, i16 noundef zeroext %conv8, i16 noundef zeroext %conv6, ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup10_crit_edge

for.body.cleanup10_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup10

cleanup10:                                        ; preds = %for.body.cleanup10_crit_edge, %for.cond.cleanup10_crit_edge, %entry.cleanup10_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup10_crit_edge ], [ %call, %for.body.cleanup10_crit_edge ], [ 0, %for.cond.cleanup10_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_control_in(ptr noundef %priv, i8 noundef zeroext %request, i16 noundef zeroext %value, i16 noundef zeroext %index, i16 noundef zeroext %length, ptr nocapture noundef writeonly %buffer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.end:                                           ; preds = %entry
  %usb_lock = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %usb_lock, i32 noundef 0) #5
  %conv = zext i16 %length to i32
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv, i32 noundef 3264) #8
  %tobool2.not = icmp eq ptr %call9.i, null
  br i1 %tobool2.not, label %if.end.end_unlock_crit_edge, label %if.end4

if.end.end_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %end_unlock

if.end4:                                          ; preds = %if.end
  %usb = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 3
  %3 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %usb, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i = shl i32 %6, 8
  %or7 = or i32 %shl.i, -2147483520
  %call8 = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or7, i8 noundef zeroext %request, i8 noundef zeroext -64, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef nonnull %call9.i, i16 noundef zeroext %length, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call8, i32 %conv)
  %cmp = icmp eq i32 %call8, %conv
  br i1 %cmp, label %if.then11, label %if.end4.if.end13_crit_edge

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then11:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %7 = call ptr @memcpy(ptr %buffer, ptr %call9.i, i32 %conv)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end4.if.end13_crit_edge
  %. = phi i32 [ 0, %if.then11 ], [ -5, %if.end4.if.end13_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #5
  br label %end_unlock

end_unlock:                                       ; preds = %if.end13, %if.end.end_unlock_crit_edge
  %ret.0 = phi i32 [ -12, %if.end.end_unlock_crit_edge ], [ %., %if.end13 ]
  tail call void @mutex_unlock(ptr noundef %usb_lock) #5
  br label %end

end:                                              ; preds = %end_unlock, %entry.end_crit_edge
  %ret.1 = phi i32 [ %ret.0, %end_unlock ], [ -22, %entry.end_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_control_in_u8(ptr noundef %priv, i8 noundef zeroext %reg, i8 noundef zeroext %reg_off, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %reg_off to i16
  %conv1 = zext i8 %reg to i16
  %call = tail call i32 @vnt_control_in(ptr noundef %priv, i8 noundef zeroext 1, i16 noundef zeroext %conv, i16 noundef zeroext %conv1, i16 noundef zeroext 1, ptr noundef %data)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_start_interrupt_urb(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_start_interrupt_urb.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_start_interrupt_urb, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !66

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %usb = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_start_interrupt_urb.__UNIQUE_ID_ddebug388, ptr noundef %dev, ptr noundef nonnull @.str.3) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %interrupt_urb = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 11
  %2 = ptrtoint ptr %interrupt_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interrupt_urb, align 4
  %usb3 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 3
  %4 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i = shl i32 %7, 8
  %or6 = or i32 %shl.i, 1073774720
  %int_buf = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 18
  %8 = ptrtoint ptr %int_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %int_buf, align 4
  %int_interval = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 12
  %10 = ptrtoint ptr %int_interval to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %int_interval, align 8
  %dev1.i = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %5, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 10
  %13 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or6, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 14
  %14 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %9, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 19
  %15 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 32, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 28
  %16 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @vnt_start_interrupt_urb_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 27
  %17 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %priv, ptr %context4.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 4
  %18 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp.i = icmp eq i32 %19, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %cmp6.i = icmp ugt i32 %19, 4
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  br i1 %or.cond.i, label %if.then.i, label %do.end.usb_fill_int_urb.exit_crit_edge

do.end.usb_fill_int_urb.exit_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %usb_fill_int_urb.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %20 = tail call i32 @llvm.smax.i32(i32 %11, i32 1) #5
  %21 = tail call i32 @llvm.umin.i32(i32 %20, i32 16) #5
  %sub.i = add nsw i32 %21, -1
  %shl.i43 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i, %do.end.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i43, %if.then.i ], [ %11, %do.end.usb_fill_int_urb.exit_crit_edge ]
  %22 = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 25
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %interval.sink.i, ptr %22, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 23
  %24 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %start_frame.i, align 4
  %25 = ptrtoint ptr %interrupt_urb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %interrupt_urb, align 4
  %call8 = tail call i32 @usb_submit_urb(ptr noundef %26, i32 noundef 2592) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %usb_fill_int_urb.exit.if.end29_crit_edge, label %do.body11

usb_fill_int_urb.exit.if.end29_crit_edge:         ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

do.body11:                                        ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_start_interrupt_urb.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_start_interrupt_urb, %if.then23)) #5
          to label %if.end29 [label %if.then23], !srcloc !66

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %usb3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %usb3, align 4
  %dev25 = getelementptr inbounds %struct.usb_device, ptr %28, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_start_interrupt_urb.__UNIQUE_ID_ddebug389, ptr noundef %dev25, ptr noundef nonnull @.str.4, i32 noundef %call8) #5
  br label %if.end29

if.end29:                                         ; preds = %if.then23, %do.body11, %usb_fill_int_urb.exit.if.end29_crit_edge
  ret i32 %call8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vnt_start_interrupt_urb_complete(ptr nocapture noundef readonly %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.body [
    i32 -108, label %entry.cleanup_crit_edge
    i32 -2, label %entry.cleanup_crit_edge44
    i32 -104, label %entry.cleanup_crit_edge45
    i32 0, label %if.else
  ]

entry.cleanup_crit_edge45:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge44:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_start_interrupt_urb_complete.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_start_interrupt_urb_complete, %if.then6)) #5
          to label %if.end7 [label %if.then6], !srcloc !66

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %usb = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %usb, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_start_interrupt_urb_complete.__UNIQUE_ID_ddebug386, ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef %3) #5
  br label %if.end7

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @vnt_int_process_data(ptr noundef %1)
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6, %do.body
  %interrupt_urb = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %interrupt_urb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %interrupt_urb, align 4
  %call8 = tail call i32 @usb_submit_urb(ptr noundef %8, i32 noundef 2592) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %do.body11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_start_interrupt_urb_complete.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_start_interrupt_urb_complete, %if.then23)) #5
          to label %cleanup [label %if.then23], !srcloc !66

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #7
  %usb24 = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %usb24 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usb24, align 4
  %dev25 = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_start_interrupt_urb_complete.__UNIQUE_ID_ddebug387, ptr noundef %dev25, ptr noundef nonnull @.str.4, i32 noundef %call8) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %do.body11, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge44, %entry.cleanup_crit_edge45
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_submit_rx_urb(ptr nocapture noundef readonly %priv, ptr noundef %rcb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %skb = getelementptr inbounds %struct.vnt_rcb, ptr %rcb, i32 0, i32 2
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_submit_rx_urb.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_submit_rx_urb, %if.then5)) #5
          to label %end [label %if.then5], !srcloc !66

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %usb = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 3
  %2 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_submit_rx_urb.__UNIQUE_ID_ddebug396, ptr noundef %dev, ptr noundef nonnull @.str.6) #5
  br label %end

if.end6:                                          ; preds = %entry
  %urb1 = getelementptr inbounds %struct.vnt_rcb, ptr %rcb, i32 0, i32 1
  %4 = ptrtoint ptr %urb1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %urb1, align 4
  %usb7 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 3
  %6 = ptrtoint ptr %usb7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb7, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i = shl i32 %9, 8
  %or10 = or i32 %shl.i, -1073676160
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %if.end6.skb_tailroom.exit_crit_edge

if.end6.skb_tailroom.exit_crit_edge:              ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %12 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %14 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %if.end6.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %if.end6.skb_tailroom.exit_crit_edge ]
  %call14 = tail call ptr @skb_put(ptr noundef nonnull %1, i32 noundef %cond.i) #5
  %dev1.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 8
  %16 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %7, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 10
  %17 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or10, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 14
  %18 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call14, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 19
  %19 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2900, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 28
  %20 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @vnt_submit_rx_urb_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 27
  %21 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %rcb, ptr %context4.i, align 4
  %call15 = tail call i32 @usb_submit_urb(ptr noundef %5, i32 noundef 2592) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %skb_tailroom.exit.end_crit_edge, label %do.body18

skb_tailroom.exit.end_crit_edge:                  ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

do.body18:                                        ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_submit_rx_urb.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_submit_rx_urb, %if.then30)) #5
          to label %end [label %if.then30], !srcloc !66

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %usb7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %usb7, align 4
  %dev32 = getelementptr inbounds %struct.usb_device, ptr %23, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_submit_rx_urb.__UNIQUE_ID_ddebug397, ptr noundef %dev32, ptr noundef nonnull @.str.7, i32 noundef %call15) #5
  br label %end

end:                                              ; preds = %if.then30, %do.body18, %skb_tailroom.exit.end_crit_edge, %if.then5, %do.body
  %ret.0 = phi i32 [ %call15, %if.then30 ], [ 0, %skb_tailroom.exit.end_crit_edge ], [ -22, %if.then5 ], [ -22, %do.body ], [ %call15, %do.body18 ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vnt_submit_rx_urb_complete(ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %5, label %do.body [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 -104, label %entry.cleanup_crit_edge
    i32 -2, label %entry.cleanup_crit_edge76
    i32 -108, label %entry.cleanup_crit_edge77
  ]

entry.cleanup_crit_edge77:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge76:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_submit_rx_urb_complete.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_submit_rx_urb_complete, %if.then)) #5
          to label %sw.epilog [label %if.then], !srcloc !66

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %usb = getelementptr inbounds %struct.vnt_private, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %usb, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_submit_rx_urb_complete.__UNIQUE_ID_ddebug394, ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %10) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %do.body, %entry.sw.epilog_crit_edge
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %11 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool6.not = icmp eq i32 %12, 0
  br i1 %tobool6.not, label %sw.epilog.if.end27_crit_edge, label %if.then7

sw.epilog.if.end27_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then7:                                         ; preds = %sw.epilog
  %call9 = tail call fastcc i32 @vnt_rx_data(ptr noundef %3, ptr noundef %1, i32 noundef %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.then7
  %rx_buf_sz = getelementptr inbounds %struct.vnt_private, ptr %3, i32 0, i32 6
  %13 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_buf_sz, align 8
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %14, i32 noundef 2592) #5
  %skb = getelementptr inbounds %struct.vnt_rcb, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.i, ptr %skb, align 4
  %tobool14.not = icmp eq ptr %call.i.i, null
  br i1 %tobool14.not, label %if.then11.cleanup_crit_edge, label %if.then11.if.end22_crit_edge

if.then11.if.end22_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  %skb17 = getelementptr inbounds %struct.vnt_rcb, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %skb17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %skb17, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 19
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 18
  %20 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %19 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %call20 = tail call ptr @skb_push(ptr noundef %17, i32 noundef %sub.ptr.sub.i) #5
  %22 = ptrtoint ptr %skb17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skb17, align 4
  tail call void @skb_trim(ptr noundef %23, i32 noundef 0) #5
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then11.if.end22_crit_edge
  %skb23 = getelementptr inbounds %struct.vnt_rcb, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %skb23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %skb23, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.i.not.i = icmp eq i32 %27, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %if.end22.skb_tailroom.exit_crit_edge

if.end22.skb_tailroom.exit_crit_edge:             ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 17
  %28 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 16
  %30 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i71 = ptrtoint ptr %29 to i32
  %sub.ptr.rhs.cast.i72 = ptrtoint ptr %31 to i32
  %sub.ptr.sub.i73 = sub i32 %sub.ptr.lhs.cast.i71, %sub.ptr.rhs.cast.i72
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %if.end22.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i73, %cond.false.i ], [ 0, %if.end22.skb_tailroom.exit_crit_edge ]
  %call26 = tail call ptr @skb_put(ptr noundef %25, i32 noundef %cond.i) #5
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %32 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call26, ptr %transfer_buffer, align 4
  br label %if.end27

if.end27:                                         ; preds = %skb_tailroom.exit, %sw.epilog.if.end27_crit_edge
  %call28 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end27.cleanup_crit_edge, label %do.body31

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_submit_rx_urb_complete.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_submit_rx_urb_complete, %if.then43)) #5
          to label %cleanup [label %if.then43], !srcloc !66

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #7
  %usb44 = getelementptr inbounds %struct.vnt_private, ptr %3, i32 0, i32 3
  %33 = ptrtoint ptr %usb44 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %usb44, align 4
  %dev45 = getelementptr inbounds %struct.usb_device, ptr %34, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_submit_rx_urb_complete.__UNIQUE_ID_ddebug395, ptr noundef %dev45, ptr noundef nonnull @.str.16) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then43, %do.body31, %if.end27.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge76, %entry.cleanup_crit_edge77
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_tx_context(ptr noundef %priv, ptr noundef %context, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %conv = trunc i32 %1 to i16
  %call = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 4) #5
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %tx_byte_count = getelementptr inbounds %struct.vnt_tx_usb_header, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %tx_byte_count to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 %2, ptr %tx_byte_count, align 1
  %pkt_no = getelementptr inbounds %struct.vnt_usb_send_context, ptr %context, i32 0, i32 7
  %4 = ptrtoint ptr %pkt_no to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pkt_no, align 1
  %pkt_no1 = getelementptr inbounds %struct.vnt_tx_usb_header, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %pkt_no1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %pkt_no1, align 1
  %type = getelementptr inbounds %struct.vnt_usb_send_context, ptr %context, i32 0, i32 6
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %type, align 4
  %9 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %call, align 1
  %flags = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 10
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %in_use = getelementptr inbounds %struct.vnt_usb_send_context, ptr %context, i32 0, i32 9
  %13 = ptrtoint ptr %in_use to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %in_use, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2900, i32 %15)
  %cmp = icmp ugt i32 %15, 2900
  br i1 %cmp, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %in_use7 = getelementptr inbounds %struct.vnt_usb_send_context, ptr %context, i32 0, i32 9
  %16 = ptrtoint ptr %in_use7 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %in_use7, align 1
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #5
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %in_use12 = getelementptr inbounds %struct.vnt_usb_send_context, ptr %context, i32 0, i32 9
  %17 = ptrtoint ptr %in_use12 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %in_use12, align 1
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %usb14 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 3
  %18 = ptrtoint ptr %usb14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usb14, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %shl.i = shl i32 %21, 8
  %or = or i32 %shl.i, -1073643520
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call9, i32 0, i32 8
  %26 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %19, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call9, i32 0, i32 10
  %27 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call9, i32 0, i32 14
  %28 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %23, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call9, i32 0, i32 19
  %29 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %25, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call9, i32 0, i32 28
  %30 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @vnt_tx_context_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call9, i32 0, i32 27
  %31 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %context, ptr %context4.i, align 4
  %tx_submitted = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 16
  tail call void @usb_anchor_urb(ptr noundef nonnull %call9, ptr noundef %tx_submitted) #5
  %call18 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call9, i32 noundef 2592) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end13.if.end29_crit_edge, label %do.body

if.end13.if.end29_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

do.body:                                          ; preds = %if.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_tx_context.__UNIQUE_ID_ddebug400, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_tx_context, %if.then25)) #5
          to label %do.end [label %if.then25], !srcloc !66

if.then25:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %usb14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %usb14, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %33, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_tx_context.__UNIQUE_ID_ddebug400, ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call18) #5
  br label %do.end

do.end:                                           ; preds = %if.then25, %do.body
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call9) #5
  %in_use28 = getelementptr inbounds %struct.vnt_usb_send_context, ptr %context, i32 0, i32 9
  %34 = ptrtoint ptr %in_use28 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %in_use28, align 1
  br label %if.end29

if.end29:                                         ; preds = %do.end, %if.end13.if.end29_crit_edge
  tail call void @usb_free_urb(ptr noundef nonnull %call9) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then11, %if.then6, %if.then
  %retval.0 = phi i32 [ -19, %if.then ], [ -7, %if.then6 ], [ %call18, %if.end29 ], [ -12, %if.then11 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vnt_tx_context_complete(ptr nocapture noundef readonly %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %context1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %5, label %do.body7 [
    i32 0, label %do.body
    i32 -104, label %entry.cleanup.sink.split_crit_edge
    i32 -2, label %entry.cleanup.sink.split_crit_edge62
    i32 -108, label %entry.cleanup.sink.split_crit_edge63
  ]

entry.cleanup.sink.split_crit_edge63:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

entry.cleanup.sink.split_crit_edge62:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_tx_context_complete.__UNIQUE_ID_ddebug398, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_tx_context_complete, %if.then)) #5
          to label %sw.epilog [label %if.then], !srcloc !66

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %usb = getelementptr inbounds %struct.vnt_private, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %usb, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %9 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %actual_length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_tx_context_complete.__UNIQUE_ID_ddebug398, ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %10) #5
  br label %sw.epilog

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_tx_context_complete.__UNIQUE_ID_ddebug399, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_tx_context_complete, %if.then19)) #5
          to label %sw.epilog [label %if.then19], !srcloc !66

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #7
  %usb20 = getelementptr inbounds %struct.vnt_private, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %usb20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usb20, align 4
  %dev21 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_tx_context_complete.__UNIQUE_ID_ddebug399, ptr noundef %dev21, ptr noundef nonnull @.str.24, i32 noundef %14) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then19, %do.body7, %if.then, %do.body
  %type = getelementptr inbounds %struct.vnt_usb_send_context, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp = icmp eq i8 %16, 0
  br i1 %cmp, label %if.then27, label %sw.epilog.if.end28_crit_edge

sw.epilog.if.end28_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then27:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 8
  tail call void @ieee80211_wake_queues(ptr noundef %18) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %sw.epilog.if.end28_crit_edge
  %19 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool30.not = icmp eq i32 %20, 0
  br i1 %tobool30.not, label %lor.lhs.false, label %if.end28.if.then35_crit_edge

if.end28.if.then35_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then35

lor.lhs.false:                                    ; preds = %if.end28
  %21 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %22)
  %cmp33 = icmp eq i8 %22, 1
  br i1 %cmp33, label %lor.lhs.false.if.then35_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.if.then35_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then35

if.then35:                                        ; preds = %lor.lhs.false.if.then35_crit_edge, %if.end28.if.then35_crit_edge
  %skb = getelementptr inbounds %struct.vnt_usb_send_context, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %skb, align 4
  %tobool36.not = icmp eq ptr %24, null
  br i1 %tobool36.not, label %if.then35.cleanup.sink.split_crit_edge, label %if.then37

if.then35.cleanup.sink.split_crit_edge:           ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.then37:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 8
  tail call void @ieee80211_free_txskb(ptr noundef %26, ptr noundef nonnull %24) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then37, %if.then35.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge62, %entry.cleanup.sink.split_crit_edge63
  %in_use41 = getelementptr inbounds %struct.vnt_usb_send_context, ptr %1, i32 0, i32 9
  %27 = ptrtoint ptr %in_use41 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %in_use41, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_anchor_urb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unanchor_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vnt_int_process_data(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %low_stats1 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 73
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_int_process_data.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_int_process_data, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !66

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %usb = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_int_process_data.__UNIQUE_ID_ddebug385, ptr noundef %dev, ptr noundef nonnull @.str.13) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %int_buf = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 18
  %2 = ptrtoint ptr %int_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %int_buf, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not = icmp eq i8 %6, 0
  br i1 %tobool4.not, label %do.end.if.end8_crit_edge, label %if.then5

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then5:                                         ; preds = %do.end
  %pkt0 = getelementptr inbounds %struct.vnt_interrupt_data, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %pkt0 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pkt0, align 1
  %9 = lshr i8 %5, 4
  %conv2.i = zext i8 %8 to i32
  %num_tx_context.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 17
  %10 = ptrtoint ptr %num_tx_context.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_tx_context.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv2.i)
  %cmp.not.i = icmp ugt i32 %11, %conv2.i
  br i1 %cmp.not.i, label %if.end.i, label %if.then5.if.end8_crit_edge

if.then5.if.end8_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.end.i:                                         ; preds = %if.then5
  %arrayidx.i = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 15, i32 %conv2.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %skb.i = getelementptr inbounds %struct.vnt_usb_send_context, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skb.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.i.if.end8_crit_edge, label %if.end5.i

if.end.i.if.end8_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.end5.i:                                        ; preds = %if.end.i
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 3
  %count.i.i = getelementptr %struct.sk_buff, ptr %15, i32 0, i32 3, i32 9
  %16 = ptrtoint ptr %count.i.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %bf.load.i.i = load i16, ptr %count.i.i, align 1
  %bf.clear.i.i = and i16 %bf.load.i.i, 2047
  %count.1.i.i = getelementptr %struct.sk_buff, ptr %15, i32 0, i32 3, i32 12
  %17 = ptrtoint ptr %count.1.i.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %bf.load.1.i.i = load i16, ptr %count.1.i.i, align 1
  %bf.clear.1.i.i = and i16 %bf.load.1.i.i, 2047
  store i16 %bf.clear.1.i.i, ptr %count.1.i.i, align 1
  %count.2.i.i = getelementptr %struct.sk_buff, ptr %15, i32 0, i32 3, i32 15
  %18 = ptrtoint ptr %count.2.i.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %bf.load.2.i.i = load i16, ptr %count.2.i.i, align 1
  %bf.clear.2.i.i = and i16 %bf.load.2.i.i, 2047
  store i16 %bf.clear.2.i.i, ptr %count.2.i.i, align 1
  %count.3.i.i = getelementptr %struct.sk_buff, ptr %15, i32 0, i32 3, i32 18
  %19 = ptrtoint ptr %count.3.i.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %bf.load.3.i.i = load i16, ptr %count.3.i.i, align 1
  %bf.clear.3.i.i = and i16 %bf.load.3.i.i, 2047
  store i16 %bf.clear.3.i.i, ptr %count.3.i.i, align 1
  %add.ptr.i.i = getelementptr %struct.sk_buff, ptr %15, i32 0, i32 3, i32 20
  %20 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 28)
  %conv9.i = zext i8 %9 to i16
  %bf.shl.i = shl nuw nsw i16 %conv9.i, 11
  %bf.set.i = or i16 %bf.clear.i.i, %bf.shl.i
  store i16 %bf.set.i, ptr %count.i.i, align 1
  %21 = and i8 %5, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool14.not.i = icmp eq i8 %21, 0
  br i1 %tobool14.not.i, label %if.then15.i, label %if.end5.i.if.end24.i_crit_edge

if.end5.i.if.end24.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i

if.then15.i:                                      ; preds = %if.end5.i
  %22 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cb.i.i, align 8
  %and19.i = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.then21.i, label %if.then15.i.if.end24.i_crit_edge

if.then15.i.if.end24.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i

if.then21.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #7
  %or.i = or i32 %23, 512
  %24 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or.i, ptr %cb.i.i, align 8
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then21.i, %if.then15.i.if.end24.i_crit_edge, %if.end5.i.if.end24.i_crit_edge
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv, align 8
  %27 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %skb.i, align 4
  tail call void @ieee80211_tx_status_irqsafe(ptr noundef %26, ptr noundef %28) #5
  %in_use.i = getelementptr inbounds %struct.vnt_usb_send_context, ptr %13, i32 0, i32 9
  %29 = ptrtoint ptr %in_use.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %in_use.i, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.end24.i, %if.end.i.if.end8_crit_edge, %if.then5.if.end8_crit_edge, %do.end.if.end8_crit_edge
  %tsr1 = getelementptr inbounds %struct.vnt_interrupt_data, ptr %3, i32 0, i32 3
  %30 = ptrtoint ptr %tsr1 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %tsr1, align 1
  %32 = and i8 %31, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool11.not = icmp eq i8 %32, 0
  br i1 %tobool11.not, label %if.end8.if.end15_crit_edge, label %if.then12

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then12:                                        ; preds = %if.end8
  %pkt1 = getelementptr inbounds %struct.vnt_interrupt_data, ptr %3, i32 0, i32 4
  %33 = ptrtoint ptr %pkt1 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %pkt1, align 1
  %35 = lshr i8 %31, 4
  %conv2.i79 = zext i8 %34 to i32
  %num_tx_context.i80 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 17
  %36 = ptrtoint ptr %num_tx_context.i80 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_tx_context.i80, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %conv2.i79)
  %cmp.not.i81 = icmp ugt i32 %37, %conv2.i79
  br i1 %cmp.not.i81, label %if.end.i85, label %if.then12.if.end15_crit_edge

if.then12.if.end15_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.end.i85:                                       ; preds = %if.then12
  %arrayidx.i82 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 15, i32 %conv2.i79
  %38 = ptrtoint ptr %arrayidx.i82 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i82, align 4
  %skb.i83 = getelementptr inbounds %struct.vnt_usb_send_context, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %skb.i83 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %skb.i83, align 4
  %tobool.not.i84 = icmp eq ptr %41, null
  br i1 %tobool.not.i84, label %if.end.i85.if.end15_crit_edge, label %if.end5.i104

if.end.i85.if.end15_crit_edge:                    ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.end5.i104:                                     ; preds = %if.end.i85
  %cb.i.i86 = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 3
  %count.i.i87 = getelementptr %struct.sk_buff, ptr %41, i32 0, i32 3, i32 9
  %42 = ptrtoint ptr %count.i.i87 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %bf.load.i.i88 = load i16, ptr %count.i.i87, align 1
  %bf.clear.i.i89 = and i16 %bf.load.i.i88, 2047
  %count.1.i.i90 = getelementptr %struct.sk_buff, ptr %41, i32 0, i32 3, i32 12
  %43 = ptrtoint ptr %count.1.i.i90 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %bf.load.1.i.i91 = load i16, ptr %count.1.i.i90, align 1
  %bf.clear.1.i.i92 = and i16 %bf.load.1.i.i91, 2047
  store i16 %bf.clear.1.i.i92, ptr %count.1.i.i90, align 1
  %count.2.i.i93 = getelementptr %struct.sk_buff, ptr %41, i32 0, i32 3, i32 15
  %44 = ptrtoint ptr %count.2.i.i93 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %bf.load.2.i.i94 = load i16, ptr %count.2.i.i93, align 1
  %bf.clear.2.i.i95 = and i16 %bf.load.2.i.i94, 2047
  store i16 %bf.clear.2.i.i95, ptr %count.2.i.i93, align 1
  %count.3.i.i96 = getelementptr %struct.sk_buff, ptr %41, i32 0, i32 3, i32 18
  %45 = ptrtoint ptr %count.3.i.i96 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %bf.load.3.i.i97 = load i16, ptr %count.3.i.i96, align 1
  %bf.clear.3.i.i98 = and i16 %bf.load.3.i.i97, 2047
  store i16 %bf.clear.3.i.i98, ptr %count.3.i.i96, align 1
  %add.ptr.i.i99 = getelementptr %struct.sk_buff, ptr %41, i32 0, i32 3, i32 20
  %46 = call ptr @memset(ptr %add.ptr.i.i99, i32 0, i32 28)
  %conv9.i100 = zext i8 %35 to i16
  %bf.shl.i101 = shl nuw nsw i16 %conv9.i100, 11
  %bf.set.i102 = or i16 %bf.clear.i.i89, %bf.shl.i101
  store i16 %bf.set.i102, ptr %count.i.i87, align 1
  %47 = and i8 %31, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool14.not.i103 = icmp eq i8 %47, 0
  br i1 %tobool14.not.i103, label %if.then15.i107, label %if.end5.i104.if.end24.i111_crit_edge

if.end5.i104.if.end24.i111_crit_edge:             ; preds = %if.end5.i104
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i111

if.then15.i107:                                   ; preds = %if.end5.i104
  %48 = ptrtoint ptr %cb.i.i86 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cb.i.i86, align 8
  %and19.i105 = and i32 %49, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i105)
  %tobool20.not.i106 = icmp eq i32 %and19.i105, 0
  br i1 %tobool20.not.i106, label %if.then21.i109, label %if.then15.i107.if.end24.i111_crit_edge

if.then15.i107.if.end24.i111_crit_edge:           ; preds = %if.then15.i107
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i111

if.then21.i109:                                   ; preds = %if.then15.i107
  call void @__sanitizer_cov_trace_pc() #7
  %or.i108 = or i32 %49, 512
  %50 = ptrtoint ptr %cb.i.i86 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or.i108, ptr %cb.i.i86, align 8
  br label %if.end24.i111

if.end24.i111:                                    ; preds = %if.then21.i109, %if.then15.i107.if.end24.i111_crit_edge, %if.end5.i104.if.end24.i111_crit_edge
  %51 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %priv, align 8
  %53 = ptrtoint ptr %skb.i83 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %skb.i83, align 4
  tail call void @ieee80211_tx_status_irqsafe(ptr noundef %52, ptr noundef %54) #5
  %in_use.i110 = getelementptr inbounds %struct.vnt_usb_send_context, ptr %39, i32 0, i32 9
  %55 = ptrtoint ptr %in_use.i110 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %in_use.i110, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.end24.i111, %if.end.i85.if.end15_crit_edge, %if.then12.if.end15_crit_edge, %if.end8.if.end15_crit_edge
  %tsr2 = getelementptr inbounds %struct.vnt_interrupt_data, ptr %3, i32 0, i32 6
  %56 = ptrtoint ptr %tsr2 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %tsr2, align 1
  %58 = and i8 %57, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool18.not = icmp eq i8 %58, 0
  br i1 %tobool18.not, label %if.end15.if.end22_crit_edge, label %if.then19

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then19:                                        ; preds = %if.end15
  %pkt2 = getelementptr inbounds %struct.vnt_interrupt_data, ptr %3, i32 0, i32 7
  %59 = ptrtoint ptr %pkt2 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %pkt2, align 1
  %61 = lshr i8 %57, 4
  %conv2.i113 = zext i8 %60 to i32
  %num_tx_context.i114 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 17
  %62 = ptrtoint ptr %num_tx_context.i114 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_tx_context.i114, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %conv2.i113)
  %cmp.not.i115 = icmp ugt i32 %63, %conv2.i113
  br i1 %cmp.not.i115, label %if.end.i119, label %if.then19.if.end22_crit_edge

if.then19.if.end22_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.end.i119:                                      ; preds = %if.then19
  %arrayidx.i116 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 15, i32 %conv2.i113
  %64 = ptrtoint ptr %arrayidx.i116 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i116, align 4
  %skb.i117 = getelementptr inbounds %struct.vnt_usb_send_context, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %skb.i117 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %skb.i117, align 4
  %tobool.not.i118 = icmp eq ptr %67, null
  br i1 %tobool.not.i118, label %if.end.i119.if.end22_crit_edge, label %if.end5.i138

if.end.i119.if.end22_crit_edge:                   ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.end5.i138:                                     ; preds = %if.end.i119
  %cb.i.i120 = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 3
  %count.i.i121 = getelementptr %struct.sk_buff, ptr %67, i32 0, i32 3, i32 9
  %68 = ptrtoint ptr %count.i.i121 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 2)
  %bf.load.i.i122 = load i16, ptr %count.i.i121, align 1
  %bf.clear.i.i123 = and i16 %bf.load.i.i122, 2047
  %count.1.i.i124 = getelementptr %struct.sk_buff, ptr %67, i32 0, i32 3, i32 12
  %69 = ptrtoint ptr %count.1.i.i124 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 2)
  %bf.load.1.i.i125 = load i16, ptr %count.1.i.i124, align 1
  %bf.clear.1.i.i126 = and i16 %bf.load.1.i.i125, 2047
  store i16 %bf.clear.1.i.i126, ptr %count.1.i.i124, align 1
  %count.2.i.i127 = getelementptr %struct.sk_buff, ptr %67, i32 0, i32 3, i32 15
  %70 = ptrtoint ptr %count.2.i.i127 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 2)
  %bf.load.2.i.i128 = load i16, ptr %count.2.i.i127, align 1
  %bf.clear.2.i.i129 = and i16 %bf.load.2.i.i128, 2047
  store i16 %bf.clear.2.i.i129, ptr %count.2.i.i127, align 1
  %count.3.i.i130 = getelementptr %struct.sk_buff, ptr %67, i32 0, i32 3, i32 18
  %71 = ptrtoint ptr %count.3.i.i130 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 2)
  %bf.load.3.i.i131 = load i16, ptr %count.3.i.i130, align 1
  %bf.clear.3.i.i132 = and i16 %bf.load.3.i.i131, 2047
  store i16 %bf.clear.3.i.i132, ptr %count.3.i.i130, align 1
  %add.ptr.i.i133 = getelementptr %struct.sk_buff, ptr %67, i32 0, i32 3, i32 20
  %72 = call ptr @memset(ptr %add.ptr.i.i133, i32 0, i32 28)
  %conv9.i134 = zext i8 %61 to i16
  %bf.shl.i135 = shl nuw nsw i16 %conv9.i134, 11
  %bf.set.i136 = or i16 %bf.clear.i.i123, %bf.shl.i135
  store i16 %bf.set.i136, ptr %count.i.i121, align 1
  %73 = and i8 %57, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool14.not.i137 = icmp eq i8 %73, 0
  br i1 %tobool14.not.i137, label %if.then15.i141, label %if.end5.i138.if.end24.i145_crit_edge

if.end5.i138.if.end24.i145_crit_edge:             ; preds = %if.end5.i138
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i145

if.then15.i141:                                   ; preds = %if.end5.i138
  %74 = ptrtoint ptr %cb.i.i120 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cb.i.i120, align 8
  %and19.i139 = and i32 %75, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i139)
  %tobool20.not.i140 = icmp eq i32 %and19.i139, 0
  br i1 %tobool20.not.i140, label %if.then21.i143, label %if.then15.i141.if.end24.i145_crit_edge

if.then15.i141.if.end24.i145_crit_edge:           ; preds = %if.then15.i141
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i145

if.then21.i143:                                   ; preds = %if.then15.i141
  call void @__sanitizer_cov_trace_pc() #7
  %or.i142 = or i32 %75, 512
  %76 = ptrtoint ptr %cb.i.i120 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %or.i142, ptr %cb.i.i120, align 8
  br label %if.end24.i145

if.end24.i145:                                    ; preds = %if.then21.i143, %if.then15.i141.if.end24.i145_crit_edge, %if.end5.i138.if.end24.i145_crit_edge
  %77 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %priv, align 8
  %79 = ptrtoint ptr %skb.i117 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %skb.i117, align 4
  tail call void @ieee80211_tx_status_irqsafe(ptr noundef %78, ptr noundef %80) #5
  %in_use.i144 = getelementptr inbounds %struct.vnt_usb_send_context, ptr %65, i32 0, i32 9
  %81 = ptrtoint ptr %in_use.i144 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %in_use.i144, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.end24.i145, %if.end.i119.if.end22_crit_edge, %if.then19.if.end22_crit_edge, %if.end15.if.end22_crit_edge
  %tsr3 = getelementptr inbounds %struct.vnt_interrupt_data, ptr %3, i32 0, i32 9
  %82 = ptrtoint ptr %tsr3 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %tsr3, align 1
  %84 = and i8 %83, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool25.not = icmp eq i8 %84, 0
  br i1 %tobool25.not, label %if.end22.if.end29_crit_edge, label %if.then26

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then26:                                        ; preds = %if.end22
  %pkt3 = getelementptr inbounds %struct.vnt_interrupt_data, ptr %3, i32 0, i32 10
  %85 = ptrtoint ptr %pkt3 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %pkt3, align 1
  %87 = lshr i8 %83, 4
  %conv2.i147 = zext i8 %86 to i32
  %num_tx_context.i148 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 17
  %88 = ptrtoint ptr %num_tx_context.i148 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %num_tx_context.i148, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %conv2.i147)
  %cmp.not.i149 = icmp ugt i32 %89, %conv2.i147
  br i1 %cmp.not.i149, label %if.end.i153, label %if.then26.if.end29_crit_edge

if.then26.if.end29_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.end.i153:                                      ; preds = %if.then26
  %arrayidx.i150 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 15, i32 %conv2.i147
  %90 = ptrtoint ptr %arrayidx.i150 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx.i150, align 4
  %skb.i151 = getelementptr inbounds %struct.vnt_usb_send_context, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %skb.i151 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %skb.i151, align 4
  %tobool.not.i152 = icmp eq ptr %93, null
  br i1 %tobool.not.i152, label %if.end.i153.if.end29_crit_edge, label %if.end5.i172

if.end.i153.if.end29_crit_edge:                   ; preds = %if.end.i153
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.end5.i172:                                     ; preds = %if.end.i153
  %cb.i.i154 = getelementptr inbounds %struct.sk_buff, ptr %93, i32 0, i32 3
  %count.i.i155 = getelementptr %struct.sk_buff, ptr %93, i32 0, i32 3, i32 9
  %94 = ptrtoint ptr %count.i.i155 to i32
  call void @__asan_loadN_noabort(i32 %94, i32 2)
  %bf.load.i.i156 = load i16, ptr %count.i.i155, align 1
  %bf.clear.i.i157 = and i16 %bf.load.i.i156, 2047
  %count.1.i.i158 = getelementptr %struct.sk_buff, ptr %93, i32 0, i32 3, i32 12
  %95 = ptrtoint ptr %count.1.i.i158 to i32
  call void @__asan_loadN_noabort(i32 %95, i32 2)
  %bf.load.1.i.i159 = load i16, ptr %count.1.i.i158, align 1
  %bf.clear.1.i.i160 = and i16 %bf.load.1.i.i159, 2047
  store i16 %bf.clear.1.i.i160, ptr %count.1.i.i158, align 1
  %count.2.i.i161 = getelementptr %struct.sk_buff, ptr %93, i32 0, i32 3, i32 15
  %96 = ptrtoint ptr %count.2.i.i161 to i32
  call void @__asan_loadN_noabort(i32 %96, i32 2)
  %bf.load.2.i.i162 = load i16, ptr %count.2.i.i161, align 1
  %bf.clear.2.i.i163 = and i16 %bf.load.2.i.i162, 2047
  store i16 %bf.clear.2.i.i163, ptr %count.2.i.i161, align 1
  %count.3.i.i164 = getelementptr %struct.sk_buff, ptr %93, i32 0, i32 3, i32 18
  %97 = ptrtoint ptr %count.3.i.i164 to i32
  call void @__asan_loadN_noabort(i32 %97, i32 2)
  %bf.load.3.i.i165 = load i16, ptr %count.3.i.i164, align 1
  %bf.clear.3.i.i166 = and i16 %bf.load.3.i.i165, 2047
  store i16 %bf.clear.3.i.i166, ptr %count.3.i.i164, align 1
  %add.ptr.i.i167 = getelementptr %struct.sk_buff, ptr %93, i32 0, i32 3, i32 20
  %98 = call ptr @memset(ptr %add.ptr.i.i167, i32 0, i32 28)
  %conv9.i168 = zext i8 %87 to i16
  %bf.shl.i169 = shl nuw nsw i16 %conv9.i168, 11
  %bf.set.i170 = or i16 %bf.clear.i.i157, %bf.shl.i169
  store i16 %bf.set.i170, ptr %count.i.i155, align 1
  %99 = and i8 %83, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool14.not.i171 = icmp eq i8 %99, 0
  br i1 %tobool14.not.i171, label %if.then15.i175, label %if.end5.i172.if.end24.i179_crit_edge

if.end5.i172.if.end24.i179_crit_edge:             ; preds = %if.end5.i172
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i179

if.then15.i175:                                   ; preds = %if.end5.i172
  %100 = ptrtoint ptr %cb.i.i154 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %cb.i.i154, align 8
  %and19.i173 = and i32 %101, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i173)
  %tobool20.not.i174 = icmp eq i32 %and19.i173, 0
  br i1 %tobool20.not.i174, label %if.then21.i177, label %if.then15.i175.if.end24.i179_crit_edge

if.then15.i175.if.end24.i179_crit_edge:           ; preds = %if.then15.i175
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i179

if.then21.i177:                                   ; preds = %if.then15.i175
  call void @__sanitizer_cov_trace_pc() #7
  %or.i176 = or i32 %101, 512
  %102 = ptrtoint ptr %cb.i.i154 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %or.i176, ptr %cb.i.i154, align 8
  br label %if.end24.i179

if.end24.i179:                                    ; preds = %if.then21.i177, %if.then15.i175.if.end24.i179_crit_edge, %if.end5.i172.if.end24.i179_crit_edge
  %103 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %priv, align 8
  %105 = ptrtoint ptr %skb.i151 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %skb.i151, align 4
  tail call void @ieee80211_tx_status_irqsafe(ptr noundef %104, ptr noundef %106) #5
  %in_use.i178 = getelementptr inbounds %struct.vnt_usb_send_context, ptr %91, i32 0, i32 9
  %107 = ptrtoint ptr %in_use.i178 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %in_use.i178, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.end24.i179, %if.end.i153.if.end29_crit_edge, %if.then26.if.end29_crit_edge, %if.end22.if.end29_crit_edge
  %isr0 = getelementptr inbounds %struct.vnt_interrupt_data, ptr %3, i32 0, i32 13
  %108 = ptrtoint ptr %isr0 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %isr0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool30.not = icmp eq i8 %109, 0
  br i1 %tobool30.not, label %if.end29.cleanup_crit_edge, label %if.end32

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end32:                                         ; preds = %if.end29
  %110 = and i8 %109, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool36.not = icmp eq i8 %110, 0
  br i1 %tobool36.not, label %if.end32.if.end40_crit_edge, label %land.lhs.true

if.end32.if.end40_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

land.lhs.true:                                    ; preds = %if.end32
  %op_mode = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 56
  %111 = ptrtoint ptr %op_mode to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %op_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %112)
  %cmp = icmp eq i32 %112, 3
  br i1 %cmp, label %if.then38, label %land.lhs.true.if.end40_crit_edge

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then38:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call39 = tail call i32 @vnt_schedule_command(ptr noundef %priv, i32 noundef 3) #5
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %land.lhs.true.if.end40_crit_edge, %if.end32.if.end40_crit_edge
  %tsf = getelementptr inbounds %struct.vnt_interrupt_data, ptr %3, i32 0, i32 12
  %113 = ptrtoint ptr %tsf to i32
  call void @__asan_loadN_noabort(i32 %113, i32 8)
  %114 = load i64, ptr %tsf, align 1
  %115 = tail call i64 @llvm.bswap.i64(i64 %114)
  %current_tsf = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 29
  %116 = ptrtoint ptr %current_tsf to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %115, ptr %current_tsf, align 8
  %rts_success = getelementptr inbounds %struct.vnt_interrupt_data, ptr %3, i32 0, i32 15
  %117 = ptrtoint ptr %rts_success to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %rts_success, align 1
  %conv41 = zext i8 %118 to i32
  %dot11RTSSuccessCount = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 73, i32 3
  %119 = ptrtoint ptr %dot11RTSSuccessCount to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %dot11RTSSuccessCount, align 4
  %add = add i32 %120, %conv41
  store i32 %add, ptr %dot11RTSSuccessCount, align 4
  %rts_fail = getelementptr inbounds %struct.vnt_interrupt_data, ptr %3, i32 0, i32 16
  %121 = ptrtoint ptr %rts_fail to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %rts_fail, align 1
  %conv42 = zext i8 %122 to i32
  %dot11RTSFailureCount = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 73, i32 1
  %123 = ptrtoint ptr %dot11RTSFailureCount to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %dot11RTSFailureCount, align 4
  %add43 = add i32 %124, %conv42
  store i32 %add43, ptr %dot11RTSFailureCount, align 4
  %ack_fail = getelementptr inbounds %struct.vnt_interrupt_data, ptr %3, i32 0, i32 17
  %125 = ptrtoint ptr %ack_fail to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %ack_fail, align 1
  %conv44 = zext i8 %126 to i32
  %127 = ptrtoint ptr %low_stats1 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %low_stats1, align 4
  %add45 = add i32 %128, %conv44
  store i32 %add45, ptr %low_stats1, align 4
  %fcs_err = getelementptr inbounds %struct.vnt_interrupt_data, ptr %3, i32 0, i32 18
  %129 = ptrtoint ptr %fcs_err to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %fcs_err, align 1
  %conv46 = zext i8 %130 to i32
  %dot11FCSErrorCount = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 73, i32 2
  %131 = ptrtoint ptr %dot11FCSErrorCount to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %dot11FCSErrorCount, align 4
  %add47 = add i32 %132, %conv46
  store i32 %add47, ptr %dot11FCSErrorCount, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.end29.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_schedule_command(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_status_irqsafe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vnt_rx_data(ptr noundef %priv, ptr nocapture noundef readonly %ptr_rcb, i32 noundef %bytes_received) unnamed_addr #0 align 64 {
entry:
  %rx_dbm = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_dbm) #5
  %2 = ptrtoint ptr %rx_dbm to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %rx_dbm, align 4, !annotation !67
  %skb2 = getelementptr inbounds %struct.vnt_rcb, ptr %ptr_rcb, i32 0, i32 2
  %3 = ptrtoint ptr %skb2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skb2, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 3
  %data = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %6, align 1
  %shr = lshr i32 %8, 16
  %add = add nuw nsw i32 %shr, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %bytes_received)
  %cmp.not = icmp eq i32 %add, %bytes_received
  br i1 %cmp.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_rx_data.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_rx_data, %if.then6)) #5
          to label %cleanup [label %if.then6], !srcloc !66

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %usb = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 3
  %9 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usb, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_rx_data.__UNIQUE_ID_ddebug390, ptr noundef %dev, ptr noundef nonnull @.str.18) #5
  br label %cleanup

if.end7:                                          ; preds = %entry
  %11 = add i32 %bytes_received, -2373
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2332, i32 %11)
  %12 = icmp ult i32 %11, -2332
  br i1 %12, label %do.body11, label %if.end29

do.body11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_rx_data.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_rx_data, %if.then23)) #5
          to label %cleanup [label %if.then23], !srcloc !66

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #7
  %usb24 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 3
  %13 = ptrtoint ptr %usb24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usb24, align 4
  %dev25 = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_rx_data.__UNIQUE_ID_ddebug391, ptr noundef %dev25, ptr noundef nonnull @.str.19) #5
  br label %cleanup

if.end29:                                         ; preds = %if.end7
  %pay_load_len = getelementptr inbounds %struct.vnt_rx_header, ptr %6, i32 0, i32 3
  %15 = ptrtoint ptr %pay_load_len to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %pay_load_len, align 1
  %conv = zext i16 %16 to i32
  %sub = add nsw i32 %bytes_received, -28
  %17 = sub nsw i32 %sub, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %17)
  %18 = icmp ult i32 %17, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %bytes_received)
  %cmp41 = icmp ugt i32 %conv, %bytes_received
  %or.cond221 = or i1 %18, %cmp41
  br i1 %or.cond221, label %do.body44, label %if.end64

do.body44:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_rx_data.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_rx_data, %if.then56)) #5
          to label %cleanup [label %if.then56], !srcloc !66

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #7
  %usb57 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 3
  %19 = ptrtoint ptr %usb57 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %usb57, align 4
  %dev58 = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 15
  %21 = ptrtoint ptr %pay_load_len to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %pay_load_len, align 1
  %conv60 = zext i16 %22 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_rx_data.__UNIQUE_ID_ddebug392, ptr noundef %dev58, ptr noundef nonnull @.str.20, i32 noundef %conv60) #5
  br label %cleanup

if.end64:                                         ; preds = %if.end29
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wiphy, align 8
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %1, i32 0, i32 7
  %25 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chandef, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %arrayidx = getelementptr %struct.wiphy, ptr %24, i32 0, i32 53, i32 %28
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  %rx_rate = getelementptr inbounds %struct.vnt_rx_header, ptr %6, i32 0, i32 2
  %31 = ptrtoint ptr %rx_rate to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %rx_rate, align 1
  %conv65 = zext i8 %32 to i16
  %mul = mul nuw nsw i16 %conv65, 5
  %n_bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %30, i32 0, i32 4
  %33 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %n_bitrates, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp67238 = icmp sgt i32 %34, 0
  br i1 %cmp67238, label %for.body.lr.ph, label %if.end64.for.end_crit_edge

if.end64.for.end_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end64
  %bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %30, i32 0, i32 1
  %35 = ptrtoint ptr %bitrates to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bitrates, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ii.0239 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %bitrate = getelementptr %struct.ieee80211_rate, ptr %36, i32 %ii.0239, i32 1
  %37 = ptrtoint ptr %bitrate to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %bitrate, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %mul)
  %cmp72 = icmp eq i16 %38, %mul
  br i1 %cmp72, label %if.then74, label %for.inc

if.then74:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %conv75 = trunc i32 %ii.0239 to i8
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %ii.0239, 1
  %exitcond.not = icmp eq i32 %inc, %34
  br i1 %exitcond.not, label %for.inc.do.body81_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.do.body81_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body81

for.end:                                          ; preds = %if.then74, %if.end64.for.end_crit_edge
  %ii.0237 = phi i32 [ %ii.0239, %if.then74 ], [ 0, %if.end64.for.end_crit_edge ]
  %rate_idx.0 = phi i8 [ %conv75, %if.then74 ], [ 0, %if.end64.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %ii.0237, i32 %34)
  %cmp78 = icmp eq i32 %ii.0237, %34
  br i1 %cmp78, label %for.end.do.body81_crit_edge, label %if.end100

for.end.do.body81_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body81

do.body81:                                        ; preds = %for.end.do.body81_crit_edge, %for.inc.do.body81_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_rx_data.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_rx_data, %if.then93)) #5
          to label %cleanup [label %if.then93], !srcloc !66

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #7
  %usb94 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 3
  %39 = ptrtoint ptr %usb94 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %usb94, align 4
  %dev95 = getelementptr inbounds %struct.usb_device, ptr %40, i32 0, i32 15
  %conv96 = zext i16 %mul to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_rx_data.__UNIQUE_ID_ddebug393, ptr noundef %dev95, ptr noundef nonnull @.str.21, i32 noundef %conv96) #5
  br label %cleanup

if.end100:                                        ; preds = %for.end
  %41 = and i16 %16, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool105.not.not = icmp eq i16 %41, 0
  %add106218 = select i1 %tobool105.not.not, i16 0, i16 4
  %div217219 = add i16 %add106218, %16
  %mul107 = and i16 %div217219, -4
  %add.ptr = getelementptr i8, ptr %6, i32 8
  %conv110 = zext i16 %mul107 to i32
  %add.ptr111 = getelementptr i8, ptr %add.ptr, i32 %conv110
  %42 = ptrtoint ptr %add.ptr111 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 8)
  %43 = load i64, ptr %add.ptr111, align 1
  %44 = tail call i64 @llvm.bswap.i64(i64 %43)
  %tsf_time112 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 5
  %45 = ptrtoint ptr %tsf_time112 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %tsf_time112, align 8
  %rsr = getelementptr inbounds %struct.vnt_rx_tail, ptr %add.ptr111, i32 0, i32 4
  %46 = ptrtoint ptr %rsr to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %rsr, align 1
  %48 = and i8 %47, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool114.not = icmp eq i8 %48, 0
  br i1 %tobool114.not, label %if.end116, label %if.end100.cleanup_crit_edge

if.end100.cleanup_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end116:                                        ; preds = %if.end100
  %rssi = getelementptr inbounds %struct.vnt_rx_tail, ptr %add.ptr111, i32 0, i32 3
  %49 = ptrtoint ptr %rssi to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %rssi, align 1
  call void @vnt_rf_rssi_to_dbm(ptr noundef %priv, i8 noundef zeroext %50, ptr noundef nonnull %rx_dbm) #5
  %51 = ptrtoint ptr %rx_dbm to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rx_dbm, align 4
  %53 = trunc i32 %52 to i8
  %conv121 = sub i8 1, %53
  %bb_pre_ed_rssi = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 70
  %54 = ptrtoint ptr %bb_pre_ed_rssi to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv121, ptr %bb_pre_ed_rssi, align 1
  %conv123 = zext i8 %conv121 to i32
  %current_rssi = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 30
  %55 = ptrtoint ptr %current_rssi to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv123, ptr %current_rssi, align 8
  %call124 = call ptr @skb_pull(ptr noundef %4, i32 noundef 8) #5
  %56 = ptrtoint ptr %pay_load_len to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %pay_load_len, align 1
  %conv126 = zext i16 %57 to i32
  call void @skb_trim(ptr noundef %4, i32 noundef %conv126) #5
  %58 = ptrtoint ptr %tsf_time112 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %tsf_time112, align 8
  %60 = ptrtoint ptr %cb.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %cb.i, align 8
  %61 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %chandef, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  %conv132 = trunc i32 %64 to i8
  %band133 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 3, i32 36
  %65 = ptrtoint ptr %band133 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv132, ptr %band133, align 4
  %66 = ptrtoint ptr %rx_dbm to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rx_dbm, align 4
  %conv134 = trunc i32 %67 to i8
  %signal = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 3, i32 38
  %68 = ptrtoint ptr %signal to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv134, ptr %signal, align 2
  %flag = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 3, i32 24
  %69 = ptrtoint ptr %flag to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %flag, align 8
  %70 = load ptr, ptr %chandef, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %center_freq, align 4
  %conv138 = trunc i32 %72 to i16
  %freq = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 3, i32 28
  %73 = ptrtoint ptr %freq to i32
  call void @__asan_load2_noabort(i32 %73)
  %bf.load = load i16, ptr %freq, align 4
  %bf.shl = shl i16 %conv138, 3
  %bf.clear = and i16 %bf.load, 7
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %freq, align 4
  %74 = ptrtoint ptr %rsr to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %rsr, align 1
  %76 = and i8 %75, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool142.not = icmp eq i8 %76, 0
  br i1 %tobool142.not, label %if.then143, label %if.end116.if.end145_crit_edge

if.end116.if.end145_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end145

if.then143:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #7
  %77 = ptrtoint ptr %flag to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 32, ptr %flag, align 8
  br label %if.end145

if.end145:                                        ; preds = %if.then143, %if.end116.if.end145_crit_edge
  %rate_idx146 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 3, i32 33
  %78 = ptrtoint ptr %rate_idx146 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %rate_idx.0, ptr %rate_idx146, align 1
  %new_rsr = getelementptr inbounds %struct.vnt_rx_tail, ptr %add.ptr111, i32 0, i32 2
  %79 = ptrtoint ptr %new_rsr to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %new_rsr, align 1
  %81 = and i8 %80, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool149.not = icmp eq i8 %81, 0
  br i1 %tobool149.not, label %if.end145.if.end153_crit_edge, label %if.then150

if.end145.if.end153_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end153

if.then150:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #7
  %82 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %flag, align 8
  %or152 = or i32 %83, 2
  store i32 %or152, ptr %flag, align 8
  br label %if.end153

if.end153:                                        ; preds = %if.then150, %if.end145.if.end153_crit_edge
  %84 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %priv, align 8
  call void @ieee80211_rx_irqsafe(ptr noundef %85, ptr noundef %4) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end153, %if.end100.cleanup_crit_edge, %if.then93, %do.body81, %if.then56, %do.body44, %if.then23, %do.body11, %if.then6, %do.body
  %retval.0 = phi i32 [ 1, %if.end153 ], [ 0, %if.then6 ], [ 0, %if.then23 ], [ 0, %if.then56 ], [ 0, %if.then93 ], [ 0, %if.end100.cleanup_crit_edge ], [ 0, %do.body ], [ 0, %do.body11 ], [ 0, %do.body44 ], [ 0, %do.body81 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_dbm) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vnt_rf_rssi_to_dbm(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rx_irqsafe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_txskb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !15, !16, !18, !19, !20, !22, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !54, !56}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/vt6656/usbpipe.c", i32 242, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @vnt_start_interrupt_urb.__UNIQUE_ID_ddebug388, !1, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/vt6656/usbpipe.c", i32 255, i32 3}
!8 = !{ptr @vnt_start_interrupt_urb.__UNIQUE_ID_ddebug389, !7, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/staging/vt6656/usbpipe.c", i32 402, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @vnt_submit_rx_urb.__UNIQUE_ID_ddebug396, !10, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/staging/vt6656/usbpipe.c", i32 417, i32 3}
!15 = !{ptr @vnt_submit_rx_urb.__UNIQUE_ID_ddebug397, !14, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/vt6656/usbpipe.c", i32 496, i32 3}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @vnt_tx_context.__UNIQUE_ID_ddebug400, !17, !"__UNIQUE_ID_ddebug400", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/vt6656/usbpipe.c", i32 229, i32 3}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @vnt_start_interrupt_urb_complete.__UNIQUE_ID_ddebug386, !21, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!24 = !{ptr @vnt_start_interrupt_urb_complete.__UNIQUE_ID_ddebug387, !25, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!25 = !{!"../drivers/staging/vt6656/usbpipe.c", i32 235, i32 3}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/staging/vt6656/usbpipe.c", i32 181, i32 2}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @vnt_int_process_data.__UNIQUE_ID_ddebug385, !27, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/vt6656/usbpipe.c", i32 374, i32 3}
!32 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @vnt_submit_rx_urb_complete.__UNIQUE_ID_ddebug394, !31, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/vt6656/usbpipe.c", i32 393, i32 3}
!36 = !{ptr @vnt_submit_rx_urb_complete.__UNIQUE_ID_ddebug395, !35, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/staging/vt6656/usbpipe.c", i32 284, i32 3}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @vnt_rx_data.__UNIQUE_ID_ddebug390, !38, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/staging/vt6656/usbpipe.c", i32 290, i32 3}
!43 = !{ptr @vnt_rx_data.__UNIQUE_ID_ddebug391, !42, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/vt6656/usbpipe.c", i32 303, i32 3}
!46 = !{ptr @vnt_rx_data.__UNIQUE_ID_ddebug392, !45, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/vt6656/usbpipe.c", i32 319, i32 3}
!49 = !{ptr @vnt_rx_data.__UNIQUE_ID_ddebug393, !48, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/vt6656/usbpipe.c", i32 429, i32 3}
!52 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @vnt_tx_context_complete.__UNIQUE_ID_ddebug398, !51, !"__UNIQUE_ID_ddebug398", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/vt6656/usbpipe.c", i32 439, i32 3}
!56 = !{ptr @vnt_tx_context_complete.__UNIQUE_ID_ddebug399, !55, !"__UNIQUE_ID_ddebug399", i1 false, i1 false}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{i64 2148974418, i64 2148974423, i64 2148974436, i64 2148974480, i64 2148974514, i64 2148974535}
!67 = !{!"auto-init"}
