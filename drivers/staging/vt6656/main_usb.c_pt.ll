; ModuleID = '/llk/IR_all_yes/drivers/staging/vt6656/main_usb.c_pt.bc'
source_filename = "../drivers/staging/vt6656/main_usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.vnt_private = type { ptr, ptr, i8, ptr, ptr, i64, i32, i32, %struct.spinlock, %struct.mutex, i32, ptr, i32, [128 x ptr], i32, [128 x ptr], %struct.usb_anchor, i32, %struct.vnt_interrupt_buffer, i16, i8, i8, i8, %struct.vnt_cmd_card_init, %struct.vnt_rsp_card_init, i8, [6 x i8], [6 x i8], i8, i64, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i8, i8, [256 x i8], i8, i8, i8, i8, i8, [14 x i8], [14 x i8], [42 x i8], i16, i16, i32, i32, i16, i16, i32, i32, [32 x i32], i32, i32, i32, i32, i32, i8, [4 x i8], i8, i8, %struct.delayed_work, %struct.ieee80211_low_level_stats }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vnt_interrupt_buffer = type { ptr }
%struct.vnt_cmd_card_init = type { i8, i8, [6 x i8], i8, i8 }
%struct.vnt_rsp_card_init = type { i8, [6 x i8], i8, i8, i8 }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.134, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.134 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.130, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.130 = type { i64, i64, i8 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.vnt_usb_send_context = type { ptr, ptr, ptr, i32, i16, i16, i8, i8, i8, i8 }
%struct.vnt_rcb = type { ptr, ptr, ptr }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.135, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.135 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.136] }
%struct.anon.136 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }

@__UNIQUE_ID_author383 = internal constant [68 x i8] c"author=VIA Networking Technologies, Inc., <lyndonchen@vntek.com.tw>\00", section ".modinfo", align 1
@__UNIQUE_ID_license384 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description385 = internal constant [51 x i8] c"description=VIA Networking Wireless LAN USB Driver\00", section ".modinfo", align 1
@__param_str_rx_buffers = internal constant [11 x i8] c"rx_buffers\00", align 1
@__this_module = external dso_local global %struct.module, align 128
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@vnt_rx_buffers = internal global { i32, [28 x i8] } { i32 64, [28 x i8] zeroinitializer }, align 32
@__param_rx_buffers = internal constant %struct.kernel_param { ptr @__param_str_rx_buffers, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @vnt_rx_buffers } }, section "__param", align 4
@__UNIQUE_ID_rx_bufferstype386 = internal constant [24 x i8] c"parmtype=rx_buffers:int\00", section ".modinfo", align 1
@__UNIQUE_ID_rx_buffers387 = internal constant [49 x i8] c"parm=rx_buffers:Number of receive usb rx buffers\00", section ".modinfo", align 1
@__param_str_tx_buffers = internal constant [11 x i8] c"tx_buffers\00", align 1
@vnt_tx_buffers = internal global { i32, [28 x i8] } { i32 64, [28 x i8] zeroinitializer }, align 32
@__param_tx_buffers = internal constant %struct.kernel_param { ptr @__param_str_tx_buffers, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @vnt_tx_buffers } }, section "__param", align 4
@__UNIQUE_ID_tx_bufferstype388 = internal constant [24 x i8] c"parmtype=tx_buffers:int\00", section ".modinfo", align 1
@__UNIQUE_ID_tx_buffers389 = internal constant [49 x i8] c"parm=tx_buffers:Number of receive usb tx buffers\00", section ".modinfo", align 1
@vt6656_table = internal constant [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 5642, i16 12676, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], align 4
@__UNIQUE_ID_firmware413 = internal constant [20 x i8] c"firmware=vntwusb.fw\00", section ".modinfo", align 1
@vnt_init_registers.__UNIQUE_ID_ddebug399 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vt6656_stage\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vnt_init_registers\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/staging/vt6656/main_usb.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"---->INIbInitAdapter. [%d][%d]\0A\00", [32 x i8] zeroinitializer }, align 32
@vnt_init_registers.__UNIQUE_ID_ddebug400 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Could not download firmware: %d.\0A\00", [62 x i8] zeroinitializer }, align 32
@vnt_init_registers.__UNIQUE_ID_ddebug401 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not branch to SRAM: %d.\0A\00", [33 x i8] zeroinitializer }, align 32
@vnt_init_registers.__UNIQUE_ID_ddebug402 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vnt_vt3184_init fail\0A\00", [42 x i8] zeroinitializer }, align 32
@vnt_init_registers.__UNIQUE_ID_ddebug403 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Issue Card init fail\0A\00", [42 x i8] zeroinitializer }, align 32
@vnt_init_registers.__UNIQUE_ID_ddebug404 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 0, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Cardinit request in status fail!\0A\00", [62 x i8] zeroinitializer }, align 32
@vnt_init_registers.__UNIQUE_ID_ddebug405 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 0, i8 99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Network address = %pM\0A\00", [41 x i8] zeroinitializer }, align 32
@vnt_init_registers.__UNIQUE_ID_ddebug406 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.10, i8 0, i8 108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"<----INIbInitAdapter Exit\0A\00", [37 x i8] zeroinitializer }, align 32
@vnt_check_firmware_version.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vnt_check_firmware_version\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Could not get firmware version: %d.\0A\00", [59 x i8] zeroinitializer }, align 32
@vnt_check_firmware_version.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Firmware Version [%04x]\0A\00", [39 x i8] zeroinitializer }, align 32
@vnt_check_firmware_version.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.14, i8 0, i8 39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"In Loader.\0A\00", [20 x i8] zeroinitializer }, align 32
@vnt_check_firmware_version.__UNIQUE_ID_ddebug398 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.5, i8 0, i8 41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@vnt_download_firmware.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vnt_download_firmware\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"---->Download firmware\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vntwusb.fw\00", [21 x i8] zeroinitializer }, align 32
@vnt_download_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.2, i32 112, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"firmware file %s request failed (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vnt_download_firmware._entry_ptr = internal global ptr @vnt_download_firmware._entry, section ".printk_index", align 4
@vnt_download_firmware.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.21, i8 0, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Download firmware...%d %zu\0A\00", [36 x i8] zeroinitializer }, align 32
@vnt_firmware_branch_to_sram.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"vnt_firmware_branch_to_sram\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"---->Branch to Sram\0A\00", [43 x i8] zeroinitializer }, align 32
@vt6656_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.24, ptr @vt6656_probe, ptr @vt6656_disconnect, ptr null, ptr @vt6656_suspend, ptr @vt6656_resume, ptr null, ptr null, ptr null, ptr @vt6656_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vt6656\00", [25 x i8] zeroinitializer }, align 32
@vt6656_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 1006, ptr @.str.27, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s Ver. %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vt6656_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@vt6656_probe._entry_ptr = internal global ptr @vt6656_probe._entry, section ".printk_index", align 4
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"VIA Networking Wireless LAN USB Driver\00", [57 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mac80211\00", [23 x i8] zeroinitializer }, align 32
@vt6656_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.2, i32 1008, ptr @.str.27, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Copyright (c) 2004 VIA Networking Technologies, Inc.\0A\00", [42 x i8] zeroinitializer }, align 32
@vt6656_probe._entry_ptr.32 = internal global ptr @vt6656_probe._entry.30, section ".printk_index", align 4
@vnt_mac_ops = internal constant { %struct.ieee80211_ops, [124 x i8] } { %struct.ieee80211_ops { ptr @vnt_tx_80211, ptr @vnt_start, ptr @vnt_stop, ptr null, ptr null, ptr null, ptr @vnt_add_interface, ptr null, ptr @vnt_remove_interface, ptr @vnt_config, ptr @vnt_bss_info_changed, ptr null, ptr null, ptr @vnt_prepare_multicast, ptr @vnt_configure, ptr null, ptr null, ptr @vnt_set_key, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vnt_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vnt_get_tsf, ptr @vnt_set_tsf, ptr null, ptr @vnt_reset_tsf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@vt6656_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.26, ptr @.str.2, i32 1012, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"could not register ieee80211_hw\0A\00", [63 x i8] zeroinitializer }, align 32
@vt6656_probe._entry_ptr.35 = internal global ptr @vt6656_probe._entry.33, section ".printk_index", align 4
@vt6656_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@vt6656_probe.__key.37 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&priv->usb_lock\00", [16 x i8] zeroinitializer }, align 32
@vt6656_probe.__key.39 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"(work_completion)(&(&priv->run_command_work)->work)\00", [44 x i8] zeroinitializer }, align 32
@vt6656_probe.__key.41 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&(&priv->run_command_work)->timer\00", [62 x i8] zeroinitializer }, align 32
@vt6656_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.26, ptr @.str.2, i32 1054, ptr @.str.45, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s reset fail status=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@vt6656_probe._entry_ptr.46 = internal global ptr @vt6656_probe._entry.43, section ".printk_index", align 4
@vnt_start.__UNIQUE_ID_ddebug407 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.48, i8 0, i8 -112, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vnt_start\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vnt_alloc_bufs fail...\0A\00", [40 x i8] zeroinitializer }, align 32
@vnt_start.__UNIQUE_ID_ddebug408 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.49, i8 0, i8 -110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" init register fail\0A\00", [43 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->wait\00", [18 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key.51 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->lock\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vnt_bss_info_changed.__UNIQUE_ID_ddebug409 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 0, i8 -66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vnt_bss_info_changed\00", [43 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"basic rates %x\0A\00", [16 x i8] zeroinitializer }, align 32
@vnt_bss_info_changed.__UNIQUE_ID_ddebug410 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.55, i8 0, i8 -56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Beacon enable %d\0A\00", [46 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@vnt_configure.__UNIQUE_ID_ddebug411 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.57, i8 0, i8 -38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vnt_configure\00", [18 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx mode in = %x\0A\00", [47 x i8] zeroinitializer }, align 32
@vnt_configure.__UNIQUE_ID_ddebug412 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.58, i8 0, i8 -32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx mode out= %x\0A\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 2, i64 0, i64 3]
@__sancov_gen_cov_switch_values.59 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.62 = private unnamed_addr constant [15 x i8] c"vnt_rx_buffers\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 49, i32 12 }
@___asan_gen_.65 = private unnamed_addr constant [15 x i8] c"vnt_tx_buffers\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 54, i32 12 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 190, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 197, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 204, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 212, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 228, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 236, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 395, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 435, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 148, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 153, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 157, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 107, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 109, i32 30 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 111, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 124, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 135, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [14 x i8] c"vt6656_driver\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1103, i32 26 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1104, i32 11 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1005, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1007, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant [12 x i8] c"vnt_mac_ops\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 958, i32 35 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1012, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1024, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1025, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1027, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1053, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 579, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 587, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 1367, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.234 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 1368, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 762, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 800, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 873, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.252 = private constant [37 x i8] c"../drivers/staging/vt6656/main_usb.c\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 897, i32 2 }
@llvm.compiler.used = appending global [79 x ptr] [ptr @__UNIQUE_ID_author383, ptr @__UNIQUE_ID_description385, ptr @__UNIQUE_ID_firmware413, ptr @__UNIQUE_ID_license384, ptr @__UNIQUE_ID_rx_buffers387, ptr @__UNIQUE_ID_rx_bufferstype386, ptr @__UNIQUE_ID_tx_buffers389, ptr @__UNIQUE_ID_tx_bufferstype388, ptr @__param_rx_buffers, ptr @__param_tx_buffers, ptr @vnt_download_firmware._entry, ptr @vnt_download_firmware._entry_ptr, ptr @vt6656_probe._entry, ptr @vt6656_probe._entry.30, ptr @vt6656_probe._entry.33, ptr @vt6656_probe._entry.43, ptr @vt6656_probe._entry_ptr, ptr @vt6656_probe._entry_ptr.32, ptr @vt6656_probe._entry_ptr.35, ptr @vt6656_probe._entry_ptr.46, ptr @vnt_rx_buffers, ptr @vnt_tx_buffers, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @vt6656_driver, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @vnt_mac_ops, ptr @.str.34, ptr @vt6656_probe.__key, ptr @.str.36, ptr @vt6656_probe.__key.37, ptr @.str.38, ptr @vt6656_probe.__key.39, ptr @.str.40, ptr @vt6656_probe.__key.41, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @init_usb_anchor.__key, ptr @.str.50, ptr @init_usb_anchor.__key.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnt_rx_buffers to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnt_tx_buffers to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnt_download_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt6656_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt6656_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt6656_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnt_mac_ops to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt6656_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt6656_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt6656_probe.__key.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt6656_probe.__key.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt6656_probe.__key.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt6656_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@__mod_usb__vt6656_table_device_table = dso_local alias [2 x %struct.usb_device_id], ptr @vt6656_table

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_init(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @vnt_init_registers(ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %permanent_net_addr = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 27
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy.i, align 8
  %perm_addr.i = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 1
  %4 = call ptr @memcpy(ptr %perm_addr.i, ptr %permanent_net_addr, i32 6)
  tail call void @vnt_init_bands(ptr noundef %priv) #12
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 8
  %call2 = tail call i32 @ieee80211_register_hw(ptr noundef %6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %mac_hw = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 2
  %7 = ptrtoint ptr %mac_hw to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %mac_hw, align 8
  %call6 = tail call i32 @vnt_radio_power_off(ptr noundef %priv) #12
  br label %return

return:                                           ; preds = %if.end5, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -11, %entry.return_crit_edge ], [ -19, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vnt_init_registers(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %init_command = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 23
  %init_response = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #12
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp, align 1, !annotation !158
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_init_registers.__UNIQUE_ID_ddebug399, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_init_registers, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !159

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %usb = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 3
  %1 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %usb, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 15
  %packet_type = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 41
  %3 = ptrtoint ptr %packet_type to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %packet_type, align 1
  %conv = zext i8 %4 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_init_registers.__UNIQUE_ID_ddebug399, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef %conv) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call fastcc i32 @vnt_check_firmware_version(ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.end.if.end51_crit_edge, label %if.then6

do.end.if.end51_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then6:                                         ; preds = %do.end
  %call7 = tail call fastcc i32 @vnt_download_firmware(ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end28, label %do.body10

do.body10:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_init_registers.__UNIQUE_ID_ddebug400, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_init_registers, %if.then22)) #12
          to label %end [label %if.then22], !srcloc !159

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #14
  %usb23 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 3
  %5 = ptrtoint ptr %usb23 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %usb23, align 4
  %dev24 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_init_registers.__UNIQUE_ID_ddebug400, ptr noundef %dev24, ptr noundef nonnull @.str.4, i32 noundef %call7) #12
  br label %end

if.end28:                                         ; preds = %if.then6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_firmware_branch_to_sram.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_init_registers, %if.then.i)) #12
          to label %vnt_firmware_branch_to_sram.exit [label %if.then.i], !srcloc !159

if.then.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %usb.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 3
  %7 = ptrtoint ptr %usb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %usb.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_firmware_branch_to_sram.__UNIQUE_ID_ddebug394, ptr noundef %dev.i, ptr noundef nonnull @.str.23) #12
  br label %vnt_firmware_branch_to_sram.exit

vnt_firmware_branch_to_sram.exit:                 ; preds = %if.then.i, %if.end28
  %call3.i = tail call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 1, i16 noundef zeroext 4608, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool30.not = icmp eq i32 %call3.i, 0
  br i1 %tobool30.not, label %vnt_firmware_branch_to_sram.exit.if.end51_crit_edge, label %do.body32

vnt_firmware_branch_to_sram.exit.if.end51_crit_edge: ; preds = %vnt_firmware_branch_to_sram.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

do.body32:                                        ; preds = %vnt_firmware_branch_to_sram.exit
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_init_registers.__UNIQUE_ID_ddebug401, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_init_registers, %if.then44)) #12
          to label %end [label %if.then44], !srcloc !159

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #14
  %usb45 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 3
  %9 = ptrtoint ptr %usb45 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usb45, align 4
  %dev46 = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_init_registers.__UNIQUE_ID_ddebug401, ptr noundef %dev46, ptr noundef nonnull @.str.5, i32 noundef %call3.i) #12
  br label %end

if.end51:                                         ; preds = %vnt_firmware_branch_to_sram.exit.if.end51_crit_edge, %do.end.if.end51_crit_edge
  %call52 = tail call i32 @vnt_vt3184_init(ptr noundef %priv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end73, label %do.body55

do.body55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_init_registers.__UNIQUE_ID_ddebug402, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_init_registers, %if.then67)) #12
          to label %end [label %if.then67], !srcloc !159

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #14
  %usb68 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 3
  %11 = ptrtoint ptr %usb68 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usb68, align 4
  %dev69 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_init_registers.__UNIQUE_ID_ddebug402, ptr noundef %dev69, ptr noundef nonnull @.str.6) #12
  br label %end

if.end73:                                         ; preds = %if.end51
  %13 = ptrtoint ptr %init_command to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %init_command, align 1
  %exist_sw_net_addr = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 28
  %14 = ptrtoint ptr %exist_sw_net_addr to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %exist_sw_net_addr, align 2
  %exist_sw_net_addr74 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 23, i32 1
  %16 = ptrtoint ptr %exist_sw_net_addr74 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %exist_sw_net_addr74, align 1
  %uglygep = getelementptr i8, ptr %priv, i32 1343
  %uglygep582 = getelementptr i8, ptr %priv, i32 1362
  %17 = call ptr @memcpy(ptr %uglygep, ptr %uglygep582, i32 6)
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wiphy, align 8
  %retry_short = getelementptr inbounds %struct.wiphy, ptr %21, i32 0, i32 33
  %22 = ptrtoint ptr %retry_short to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %retry_short, align 4
  %short_retry_limit = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 23, i32 3
  %24 = ptrtoint ptr %short_retry_limit to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %short_retry_limit, align 1
  %25 = load ptr, ptr %wiphy, align 8
  %retry_long = getelementptr inbounds %struct.wiphy, ptr %25, i32 0, i32 34
  %26 = ptrtoint ptr %retry_long to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %retry_long, align 1
  %long_retry_limit = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 23, i32 4
  %28 = ptrtoint ptr %long_retry_limit to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %long_retry_limit, align 1
  %call79 = tail call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 5, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 10, ptr noundef %init_command) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end100, label %do.body82

do.body82:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_init_registers.__UNIQUE_ID_ddebug403, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_init_registers, %if.then94)) #12
          to label %end [label %if.then94], !srcloc !159

if.then94:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #14
  %usb95 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 3
  %29 = ptrtoint ptr %usb95 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %usb95, align 4
  %dev96 = getelementptr inbounds %struct.usb_device, ptr %30, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_init_registers.__UNIQUE_ID_ddebug403, ptr noundef %dev96, ptr noundef nonnull @.str.7) #12
  br label %end

if.end100:                                        ; preds = %if.end73
  %call101 = tail call i32 @vnt_control_in(ptr noundef %priv, i8 noundef zeroext 6, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 10, ptr noundef %init_response) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end122, label %do.body104

do.body104:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_init_registers.__UNIQUE_ID_ddebug404, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_init_registers, %if.then116)) #12
          to label %end [label %if.then116], !srcloc !159

if.then116:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #14
  %usb117 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 3
  %31 = ptrtoint ptr %usb117 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %usb117, align 4
  %dev118 = getelementptr inbounds %struct.usb_device, ptr %32, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_init_registers.__UNIQUE_ID_ddebug404, ptr noundef %dev118, ptr noundef nonnull @.str.8) #12
  br label %end

if.end122:                                        ; preds = %if.end100
  %local_id = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 20
  %call123 = tail call i32 @vnt_control_in(ptr noundef %priv, i8 noundef zeroext 1, i16 noundef zeroext 20, i16 noundef zeroext 3, i16 noundef zeroext 1, ptr noundef %local_id) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end126, label %if.end122.end_crit_edge

if.end122.end_crit_edge:                          ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end126:                                        ; preds = %if.end122
  %top_ofdm_basic_rate = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 43
  %33 = ptrtoint ptr %top_ofdm_basic_rate to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 8, ptr %top_ofdm_basic_rate, align 8
  %top_cck_basic_rate = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 44
  %34 = ptrtoint ptr %top_cck_basic_rate to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %top_cck_basic_rate, align 1
  %power = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 50
  %35 = ptrtoint ptr %power to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -1, ptr %power, align 2
  %arrayidx127 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 45, i32 32
  %36 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx127, align 2
  %cck_pwr = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 47
  %38 = ptrtoint ptr %cck_pwr to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %cck_pwr, align 1
  %arrayidx129 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 45, i32 35
  %39 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx129, align 1
  %ofdm_pwr_g = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 48
  %41 = ptrtoint ptr %ofdm_pwr_g to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %ofdm_pwr_g, align 4
  br label %for.body133

for.cond164.preheader:                            ; preds = %for.inc161
  %arrayidx169 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 51, i32 10
  %arrayidx173 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 52, i32 10
  %42 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx169, align 1
  %arrayidx171 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 51, i32 11
  %44 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %arrayidx171, align 1
  %45 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx173, align 1
  %arrayidx175 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 52, i32 11
  %47 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %arrayidx175, align 1
  %arrayidx171.1 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 51, i32 12
  %48 = ptrtoint ptr %arrayidx171.1 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %43, ptr %arrayidx171.1, align 1
  %arrayidx175.1 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 52, i32 12
  %49 = ptrtoint ptr %arrayidx175.1 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %46, ptr %arrayidx175.1, align 1
  %arrayidx171.2 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 51, i32 13
  %50 = ptrtoint ptr %arrayidx171.2 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %43, ptr %arrayidx171.2, align 1
  %arrayidx175.2 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 52, i32 13
  %51 = ptrtoint ptr %arrayidx175.2 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %46, ptr %arrayidx175.2, align 1
  %ofdm_pwr_a = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 49
  %52 = ptrtoint ptr %ofdm_pwr_a to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 52, ptr %ofdm_pwr_a, align 1
  br label %for.body182

for.body133:                                      ; preds = %for.inc161.for.body133_crit_edge, %if.end126
  %ii.1579 = phi i32 [ 0, %if.end126 ], [ %inc162, %for.inc161.for.body133_crit_edge ]
  %add = add nuw nsw i32 %ii.1579, 48
  %arrayidx135 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 45, i32 %add
  %53 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx135, align 1
  %arrayidx136 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 51, i32 %ii.1579
  %55 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %arrayidx136, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp140 = icmp eq i8 %54, 0
  br i1 %cmp140, label %if.then142, label %for.body133.if.end146_crit_edge

for.body133.if.end146_crit_edge:                  ; preds = %for.body133
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end146

if.then142:                                       ; preds = %for.body133
  call void @__sanitizer_cov_trace_pc() #14
  %56 = ptrtoint ptr %cck_pwr to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %cck_pwr, align 1
  %58 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %arrayidx136, align 1
  br label %if.end146

if.end146:                                        ; preds = %if.then142, %for.body133.if.end146_crit_edge
  %add148 = add nuw nsw i32 %ii.1579, 64
  %arrayidx149 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 45, i32 %add148
  %59 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx149, align 1
  %arrayidx150 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 52, i32 %ii.1579
  %61 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %arrayidx150, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp154 = icmp eq i8 %60, 0
  br i1 %cmp154, label %if.then156, label %if.end146.for.inc161_crit_edge

if.end146.for.inc161_crit_edge:                   ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc161

if.then156:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %ofdm_pwr_g to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %ofdm_pwr_g, align 4
  %64 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %arrayidx150, align 1
  br label %for.inc161

for.inc161:                                       ; preds = %if.then156, %if.end146.for.inc161_crit_edge
  %inc162 = add nuw nsw i32 %ii.1579, 1
  %exitcond.not = icmp eq i32 %inc162, 14
  br i1 %exitcond.not, label %for.cond164.preheader, label %for.inc161.for.body133_crit_edge

for.inc161.for.body133_crit_edge:                 ; preds = %for.inc161
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body133

for.body182:                                      ; preds = %for.inc197.for.body182_crit_edge, %for.cond164.preheader
  %ii.3581 = phi i32 [ 0, %for.cond164.preheader ], [ %inc198, %for.inc197.for.body182_crit_edge ]
  %add184 = add nuw nsw i32 %ii.3581, 80
  %arrayidx185 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 45, i32 %add184
  %65 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx185, align 1
  %arrayidx186 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 53, i32 %ii.3581
  %67 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %arrayidx186, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %cmp190 = icmp eq i8 %66, 0
  br i1 %cmp190, label %if.then192, label %for.body182.for.inc197_crit_edge

for.body182.for.inc197_crit_edge:                 ; preds = %for.body182
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc197

if.then192:                                       ; preds = %for.body182
  call void @__sanitizer_cov_trace_pc() #14
  %68 = ptrtoint ptr %ofdm_pwr_a to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %ofdm_pwr_a, align 1
  %70 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %arrayidx186, align 1
  br label %for.inc197

for.inc197:                                       ; preds = %if.then192, %for.body182.for.inc197_crit_edge
  %inc198 = add nuw nsw i32 %ii.3581, 1
  %exitcond587.not = icmp eq i32 %inc198, 42
  br i1 %exitcond587.not, label %for.end199, label %for.inc197.for.body182_crit_edge

for.inc197.for.body182_crit_edge:                 ; preds = %for.inc197
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body182

for.end199:                                       ; preds = %for.inc197
  %arrayidx201 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 45, i32 23
  %71 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx201, align 1
  %73 = lshr i8 %72, 2
  %.lobit = and i8 %73, 1
  %74 = zext i8 %.lobit to i32
  %75 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 31
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %74, ptr %75, align 4
  %trunc = trunc i8 %72 to i2
  %77 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values)
  switch i2 %trunc, label %if.else225 [
    i2 -1, label %for.end199.if.then218_crit_edge
    i2 0, label %for.end199.if.then218_crit_edge588
  ]

for.end199.if.then218_crit_edge588:               ; preds = %for.end199
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then218

for.end199.if.then218_crit_edge:                  ; preds = %for.end199
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then218

if.then218:                                       ; preds = %for.end199.if.then218_crit_edge, %for.end199.if.then218_crit_edge588
  %tx_antenna_mode = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 34
  %78 = ptrtoint ptr %tx_antenna_mode to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %tx_antenna_mode, align 1
  %rx_antenna_sel = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 32
  %79 = ptrtoint ptr %rx_antenna_sel to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1, ptr %rx_antenna_sel, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.lobit)
  %tobool220.not = icmp eq i8 %.lobit, 0
  %rx_antenna_mode223 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 33
  br i1 %tobool220.not, label %if.else222, label %if.then221

if.then221:                                       ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %rx_antenna_mode223 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %rx_antenna_mode223, align 4
  br label %if.end249

if.else222:                                       ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #14
  %81 = ptrtoint ptr %rx_antenna_mode223 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %rx_antenna_mode223, align 4
  br label %if.end249

if.else225:                                       ; preds = %for.end199
  %rx_antenna_sel226 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 32
  %82 = ptrtoint ptr %rx_antenna_sel226 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %rx_antenna_sel226, align 8
  %83 = and i8 %72, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool229.not = icmp eq i8 %83, 0
  %tx_antenna_mode240 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 34
  br i1 %tobool229.not, label %if.else239, label %if.then230

if.then230:                                       ; preds = %if.else225
  %84 = ptrtoint ptr %tx_antenna_mode240 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %tx_antenna_mode240, align 1
  %85 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool233.not = icmp eq i32 %86, 0
  %rx_antenna_mode237 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 33
  br i1 %tobool233.not, label %if.else236, label %if.then234

if.then234:                                       ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #14
  %87 = ptrtoint ptr %rx_antenna_mode237 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %rx_antenna_mode237, align 4
  br label %if.end249

if.else236:                                       ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #14
  %88 = ptrtoint ptr %rx_antenna_mode237 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %rx_antenna_mode237, align 4
  br label %if.end249

if.else239:                                       ; preds = %if.else225
  %89 = ptrtoint ptr %tx_antenna_mode240 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %tx_antenna_mode240, align 1
  %90 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool242.not = icmp eq i32 %91, 0
  %rx_antenna_mode246 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 33
  br i1 %tobool242.not, label %if.else245, label %if.then243

if.then243:                                       ; preds = %if.else239
  call void @__sanitizer_cov_trace_pc() #14
  %92 = ptrtoint ptr %rx_antenna_mode246 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %rx_antenna_mode246, align 4
  br label %if.end249

if.else245:                                       ; preds = %if.else239
  call void @__sanitizer_cov_trace_pc() #14
  %93 = ptrtoint ptr %rx_antenna_mode246 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %rx_antenna_mode246, align 4
  br label %if.end249

if.end249:                                        ; preds = %if.else245, %if.then243, %if.else236, %if.then234, %if.else222, %if.then221
  %rx_antenna_mode250 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 33
  %94 = ptrtoint ptr %rx_antenna_mode250 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %rx_antenna_mode250, align 4
  %call251 = tail call i32 @vnt_set_antenna_mode(ptr noundef %priv, i8 noundef zeroext %95) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call251)
  %tobool252.not = icmp eq i32 %call251, 0
  br i1 %tobool252.not, label %if.end254, label %if.end249.end_crit_edge

if.end249.end_crit_edge:                          ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end254:                                        ; preds = %if.end249
  %bb_type = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 40
  %96 = ptrtoint ptr %bb_type to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 2, ptr %bb_type, align 8
  %rf_type = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 24, i32 2
  %97 = ptrtoint ptr %rf_type to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %rf_type, align 1
  %rf_type255 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 21
  %99 = ptrtoint ptr %rf_type255 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %rf_type255, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %98)
  %cmp258 = icmp eq i8 %98, 12
  br i1 %cmp258, label %if.then260, label %if.end254.if.end309_crit_edge

if.end254.if.end309_crit_edge:                    ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end309

if.then260:                                       ; preds = %if.end254
  %arrayidx262 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 45, i32 46
  %100 = ptrtoint ptr %arrayidx262 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx262, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %101)
  %cmp264 = icmp eq i8 %101, 1
  br i1 %cmp264, label %land.lhs.true, label %if.then260.if.end309_crit_edge

if.then260.if.end309_crit_edge:                   ; preds = %if.then260
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end309

land.lhs.true:                                    ; preds = %if.then260
  %arrayidx267 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 45, i32 47
  %102 = ptrtoint ptr %arrayidx267 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx267, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %103)
  %cmp269 = icmp ugt i8 %103, 3
  br i1 %cmp269, label %if.then271, label %land.lhs.true.if.end309_crit_edge

land.lhs.true.if.end309_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end309

if.then271:                                       ; preds = %land.lhs.true
  %arrayidx273 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 45, i32 36
  %104 = ptrtoint ptr %arrayidx273 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx273, align 2
  %arrayidx275 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 45, i32 37
  %106 = ptrtoint ptr %arrayidx275 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx275, align 1
  %arrayidx277 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 45, i32 38
  %108 = ptrtoint ptr %arrayidx277 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx277, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool279.not = icmp eq i8 %105, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool281.not = icmp eq i8 %107, 0
  %or.cond = select i1 %tobool279.not, i1 %tobool281.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool284.not = icmp eq i8 %109, 0
  %or.cond548 = select i1 %or.cond, i1 %tobool284.not, i1 false
  br i1 %or.cond548, label %if.else302, label %if.then285

if.then285:                                       ; preds = %if.then271
  %call286 = tail call i32 @vnt_control_out_u8(ptr noundef %priv, i8 noundef zeroext 2, i8 noundef zeroext -1, i8 noundef zeroext 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call286)
  %tobool287.not = icmp eq i32 %call286, 0
  br i1 %tobool287.not, label %if.end289, label %if.then285.end_crit_edge

if.then285.end_crit_edge:                         ; preds = %if.then285
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end289:                                        ; preds = %if.then285
  %call290 = tail call i32 @vnt_control_out_u8(ptr noundef %priv, i8 noundef zeroext 2, i8 noundef zeroext -5, i8 noundef zeroext %105) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call290)
  %tobool291.not = icmp eq i32 %call290, 0
  br i1 %tobool291.not, label %if.end293, label %if.end289.end_crit_edge

if.end289.end_crit_edge:                          ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end293:                                        ; preds = %if.end289
  %call294 = tail call i32 @vnt_control_out_u8(ptr noundef %priv, i8 noundef zeroext 2, i8 noundef zeroext -4, i8 noundef zeroext %107) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call294)
  %tobool295.not = icmp eq i32 %call294, 0
  br i1 %tobool295.not, label %if.end297, label %if.end293.end_crit_edge

if.end293.end_crit_edge:                          ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end297:                                        ; preds = %if.end293
  %call298 = tail call i32 @vnt_control_out_u8(ptr noundef %priv, i8 noundef zeroext 2, i8 noundef zeroext -3, i8 noundef zeroext %109) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call298)
  %tobool299.not = icmp eq i32 %call298, 0
  br i1 %tobool299.not, label %if.end297.if.end309_crit_edge, label %if.end297.end_crit_edge

if.end297.end_crit_edge:                          ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end297.if.end309_crit_edge:                    ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end309

if.else302:                                       ; preds = %if.then271
  %call303 = tail call i32 @vnt_control_out_u8(ptr noundef %priv, i8 noundef zeroext 2, i8 noundef zeroext -1, i8 noundef zeroext 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call303)
  %tobool304.not = icmp eq i32 %call303, 0
  br i1 %tobool304.not, label %if.else302.if.end309_crit_edge, label %if.else302.end_crit_edge

if.else302.end_crit_edge:                         ; preds = %if.else302
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.else302.if.end309_crit_edge:                   ; preds = %if.else302
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end309

if.end309:                                        ; preds = %if.else302.if.end309_crit_edge, %if.end297.if.end309_crit_edge, %land.lhs.true.if.end309_crit_edge, %if.then260.if.end309_crit_edge, %if.end254.if.end309_crit_edge
  %permanent_net_addr = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 27
  %net_addr = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 24, i32 1
  %110 = call ptr @memcpy(ptr %permanent_net_addr, ptr %net_addr, i32 6)
  %111 = ptrtoint ptr %permanent_net_addr to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %permanent_net_addr, align 4
  %113 = ptrtoint ptr %uglygep582 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %uglygep582, align 4
  %add.ptr.i = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 27, i32 4
  %114 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 26, i32 4
  %116 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %115, ptr %add.ptr1.i, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_init_registers.__UNIQUE_ID_ddebug405, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_init_registers, %if.then327)) #12
          to label %do.end334 [label %if.then327], !srcloc !159

if.then327:                                       ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #14
  %usb328 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 3
  %117 = ptrtoint ptr %usb328 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %usb328, align 4
  %dev329 = getelementptr inbounds %struct.usb_device, ptr %118, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_init_registers.__UNIQUE_ID_ddebug405, ptr noundef %dev329, ptr noundef nonnull @.str.9, ptr noundef %uglygep582) #12
  br label %do.end334

do.end334:                                        ; preds = %if.then327, %if.end309
  %arrayidx336 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 45, i32 24
  %119 = ptrtoint ptr %arrayidx336 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx336, align 2
  %radio_ctl = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 35
  %121 = ptrtoint ptr %radio_ctl to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %120, ptr %radio_ctl, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %120)
  %cmp340.not = icmp sgt i8 %120, -1
  br i1 %cmp340.not, label %do.end334.if.end359_crit_edge, label %if.then342

do.end334.if.end359_crit_edge:                    ; preds = %do.end334
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end359

if.then342:                                       ; preds = %do.end334
  %call343 = call i32 @vnt_control_in(ptr noundef %priv, i8 noundef zeroext 1, i16 noundef zeroext 123, i16 noundef zeroext 3, i16 noundef zeroext 1, ptr noundef nonnull %tmp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call343)
  %tobool344.not = icmp eq i32 %call343, 0
  br i1 %tobool344.not, label %if.end346, label %if.then342.end_crit_edge

if.then342.end_crit_edge:                         ; preds = %if.then342
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end346:                                        ; preds = %if.then342
  %122 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %tmp, align 1
  %124 = and i8 %123, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %cmp349 = icmp eq i8 %124, 0
  br i1 %cmp349, label %if.then351, label %if.else353

if.then351:                                       ; preds = %if.end346
  call void @__sanitizer_cov_trace_pc() #14
  %call352 = call i32 @vnt_mac_reg_bits_on(ptr noundef %priv, i8 noundef zeroext 123, i8 noundef zeroext -128) #12
  br label %if.end355

if.else353:                                       ; preds = %if.end346
  call void @__sanitizer_cov_trace_pc() #14
  %call354 = call i32 @vnt_mac_reg_bits_off(ptr noundef %priv, i8 noundef zeroext 123, i8 noundef zeroext -128) #12
  br label %if.end355

if.end355:                                        ; preds = %if.else353, %if.then351
  %ret.0 = phi i32 [ %call352, %if.then351 ], [ %call354, %if.else353 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool356.not = icmp eq i32 %ret.0, 0
  br i1 %tobool356.not, label %if.end355.if.end359_crit_edge, label %if.end355.end_crit_edge

if.end355.end_crit_edge:                          ; preds = %if.end355
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end355.if.end359_crit_edge:                    ; preds = %if.end355
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end359

if.end359:                                        ; preds = %if.end355.if.end359_crit_edge, %do.end334.if.end359_crit_edge
  %call360 = call i32 @vnt_mac_set_led(ptr noundef %priv, i8 noundef zeroext 120, i8 noundef zeroext 56) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call360)
  %tobool361.not = icmp eq i32 %call360, 0
  br i1 %tobool361.not, label %if.end363, label %if.end359.end_crit_edge

if.end359.end_crit_edge:                          ; preds = %if.end359
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end363:                                        ; preds = %if.end359
  %call364 = call i32 @vnt_mac_set_led(ptr noundef %priv, i8 noundef zeroext 6, i8 noundef zeroext 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call364)
  %tobool365.not = icmp eq i32 %call364, 0
  br i1 %tobool365.not, label %if.end367, label %if.end363.end_crit_edge

if.end363.end_crit_edge:                          ; preds = %if.end363
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end367:                                        ; preds = %if.end363
  %call368 = call i32 @vnt_mac_reg_bits_on(ptr noundef %priv, i8 noundef zeroext 122, i8 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call368)
  %tobool369.not = icmp eq i32 %call368, 0
  br i1 %tobool369.not, label %if.end371, label %if.end367.end_crit_edge

if.end367.end_crit_edge:                          ; preds = %if.end367
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end371:                                        ; preds = %if.end367
  %call372 = call i32 @vnt_radio_power_on(ptr noundef %priv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call372)
  %tobool373.not = icmp eq i32 %call372, 0
  br i1 %tobool373.not, label %do.body376, label %if.end371.end_crit_edge

if.end371.end_crit_edge:                          ; preds = %if.end371
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

do.body376:                                       ; preds = %if.end371
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_init_registers.__UNIQUE_ID_ddebug406, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_init_registers, %if.then388)) #12
          to label %end [label %if.then388], !srcloc !159

if.then388:                                       ; preds = %do.body376
  call void @__sanitizer_cov_trace_pc() #14
  %usb389 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 3
  %125 = ptrtoint ptr %usb389 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %usb389, align 4
  %dev390 = getelementptr inbounds %struct.usb_device, ptr %126, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_init_registers.__UNIQUE_ID_ddebug406, ptr noundef %dev390, ptr noundef nonnull @.str.10) #12
  br label %end

end:                                              ; preds = %if.then388, %do.body376, %if.end371.end_crit_edge, %if.end367.end_crit_edge, %if.end363.end_crit_edge, %if.end359.end_crit_edge, %if.end355.end_crit_edge, %if.then342.end_crit_edge, %if.else302.end_crit_edge, %if.end297.end_crit_edge, %if.end293.end_crit_edge, %if.end289.end_crit_edge, %if.then285.end_crit_edge, %if.end249.end_crit_edge, %if.end122.end_crit_edge, %if.then116, %do.body104, %if.then94, %do.body82, %if.then67, %do.body55, %if.then44, %do.body32, %if.then22, %do.body10
  %ret.1 = phi i32 [ %call7, %if.then22 ], [ %call3.i, %if.then44 ], [ %call52, %if.then67 ], [ %call79, %if.then94 ], [ %call101, %if.then116 ], [ %call123, %if.end122.end_crit_edge ], [ %call251, %if.end249.end_crit_edge ], [ %call286, %if.then285.end_crit_edge ], [ %call290, %if.end289.end_crit_edge ], [ %call294, %if.end293.end_crit_edge ], [ %call298, %if.end297.end_crit_edge ], [ %call343, %if.then342.end_crit_edge ], [ %ret.0, %if.end355.end_crit_edge ], [ %call360, %if.end359.end_crit_edge ], [ %call364, %if.end363.end_crit_edge ], [ %call368, %if.end367.end_crit_edge ], [ %call372, %if.end371.end_crit_edge ], [ 0, %if.then388 ], [ %call303, %if.else302.end_crit_edge ], [ %call7, %do.body10 ], [ %call3.i, %do.body32 ], [ %call52, %do.body55 ], [ %call79, %do.body82 ], [ %call101, %do.body104 ], [ 0, %do.body376 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #12
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vnt_init_bands(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_register_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_radio_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @vt6656_driver, ptr noundef nonnull @__this_module, ptr noundef nonnull @.str) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_deregister(ptr noundef nonnull @vt6656_driver) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vnt_check_firmware_version(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %firmware_version = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %call = tail call i32 @vnt_control_in(ptr noundef %priv, i8 noundef zeroext 1, i16 noundef zeroext 0, i16 noundef zeroext 8, i16 noundef zeroext 2, ptr noundef %firmware_version) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_check_firmware_version.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_check_firmware_version, %if.then5)) #12
          to label %end [label %if.then5], !srcloc !159

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %usb = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_check_firmware_version.__UNIQUE_ID_ddebug395, ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %call) #12
  br label %end

do.body7:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_check_firmware_version.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_check_firmware_version, %if.then19)) #12
          to label %do.end25 [label %if.then19], !srcloc !159

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #14
  %usb20 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 3
  %2 = ptrtoint ptr %usb20 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb20, align 4
  %dev21 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %firmware_version to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %firmware_version, align 8
  %conv = zext i16 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_check_firmware_version.__UNIQUE_ID_ddebug396, ptr noundef %dev21, ptr noundef nonnull @.str.13, i32 noundef %conv) #12
  br label %do.end25

do.end25:                                         ; preds = %if.then19, %do.body7
  %6 = ptrtoint ptr %firmware_version to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %firmware_version, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %cmp = icmp eq i16 %7, -1
  br i1 %cmp, label %do.body30, label %if.end48

do.body30:                                        ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_check_firmware_version.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_check_firmware_version, %if.then42)) #12
          to label %end [label %if.then42], !srcloc !159

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #14
  %usb43 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 3
  %8 = ptrtoint ptr %usb43 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb43, align 4
  %dev44 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_check_firmware_version.__UNIQUE_ID_ddebug397, ptr noundef %dev44, ptr noundef nonnull @.str.14) #12
  br label %end

if.end48:                                         ; preds = %do.end25
  call void @__sanitizer_cov_trace_const_cmp2(i16 307, i16 %7)
  %cmp51 = icmp ult i16 %7, 307
  br i1 %cmp51, label %if.then53, label %if.end48.end_crit_edge

if.end48.end_crit_edge:                           ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.then53:                                        ; preds = %if.end48
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_firmware_branch_to_sram.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_check_firmware_version, %if.then.i)) #12
          to label %vnt_firmware_branch_to_sram.exit [label %if.then.i], !srcloc !159

if.then.i:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  %usb.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 3
  %10 = ptrtoint ptr %usb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_firmware_branch_to_sram.__UNIQUE_ID_ddebug394, ptr noundef %dev.i, ptr noundef nonnull @.str.23) #12
  br label %vnt_firmware_branch_to_sram.exit

vnt_firmware_branch_to_sram.exit:                 ; preds = %if.then.i, %if.then53
  %call3.i = tail call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 1, i16 noundef zeroext 4608, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool55.not = icmp eq i32 %call3.i, 0
  br i1 %tobool55.not, label %vnt_firmware_branch_to_sram.exit.end_crit_edge, label %do.body57

vnt_firmware_branch_to_sram.exit.end_crit_edge:   ; preds = %vnt_firmware_branch_to_sram.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

do.body57:                                        ; preds = %vnt_firmware_branch_to_sram.exit
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_check_firmware_version.__UNIQUE_ID_ddebug398, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_check_firmware_version, %if.then69)) #12
          to label %end [label %if.then69], !srcloc !159

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #14
  %usb70 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 3
  %12 = ptrtoint ptr %usb70 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usb70, align 4
  %dev71 = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_check_firmware_version.__UNIQUE_ID_ddebug398, ptr noundef %dev71, ptr noundef nonnull @.str.5, i32 noundef %call3.i) #12
  br label %end

end:                                              ; preds = %if.then69, %do.body57, %vnt_firmware_branch_to_sram.exit.end_crit_edge, %if.end48.end_crit_edge, %if.then42, %do.body30, %if.then5, %do.body
  %ret.0 = phi i32 [ %call, %if.then5 ], [ %call3.i, %if.then69 ], [ 0, %if.end48.end_crit_edge ], [ -22, %if.then42 ], [ -22, %vnt_firmware_branch_to_sram.exit.end_crit_edge ], [ %call, %do.body ], [ -22, %do.body30 ], [ %call3.i, %do.body57 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vnt_download_firmware(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %usb = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb, align 4
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #12
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !158
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_download_firmware.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_download_firmware, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !159

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_download_firmware.__UNIQUE_ID_ddebug390, ptr noundef %dev1, ptr noundef nonnull @.str.16) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @.str.17, ptr noundef %dev1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %for.cond.preheader, label %do.end9

for.cond.preheader:                               ; preds = %do.end
  %3 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fw, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp56.not = icmp eq i32 %6, 0
  br i1 %cmp56.not, label %for.cond.preheader.free_fw_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.free_fw_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_fw

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i32 noundef %call4) #15
  br label %end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %7 = phi i32 [ %20, %for.inc.for.body_crit_edge ], [ %6, %for.cond.preheader.for.body_crit_edge ]
  %8 = phi ptr [ %18, %for.inc.for.body_crit_edge ], [ %4, %for.cond.preheader.for.body_crit_edge ]
  %ii.057 = phi i32 [ %add36, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %sub = sub i32 %7, %ii.057
  %9 = call i32 @llvm.smin.i32(i32 %sub, i32 1024)
  %conv = trunc i32 %9 to i16
  %10 = trunc i32 %ii.057 to i16
  %conv14 = add i16 %10, 4608
  %data = getelementptr inbounds %struct.firmware, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 %ii.057
  %call15 = call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 0, i16 noundef zeroext %conv14, i16 noundef zeroext 0, i16 noundef zeroext %conv, ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %do.body19, label %for.body.free_fw_crit_edge

for.body.free_fw_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_fw

do.body19:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_download_firmware.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_download_firmware, %if.then31)) #12
          to label %for.inc [label %if.then31], !srcloc !159

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fw, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_download_firmware.__UNIQUE_ID_ddebug393, ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %ii.057, i32 noundef %16) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then31, %do.body19
  %add36 = add i32 %ii.057, 1024
  %17 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fw, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %cmp = icmp ugt i32 %20, %add36
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.free_fw_crit_edge

for.inc.free_fw_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_fw

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

free_fw:                                          ; preds = %for.inc.free_fw_crit_edge, %for.body.free_fw_crit_edge, %for.cond.preheader.free_fw_crit_edge
  %ret.1 = phi i32 [ 0, %for.cond.preheader.free_fw_crit_edge ], [ 0, %for.inc.free_fw_crit_edge ], [ %call15, %for.body.free_fw_crit_edge ]
  %21 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %22) #12
  br label %end

end:                                              ; preds = %free_fw, %do.end9
  %ret.2 = phi i32 [ %call4, %do.end9 ], [ %ret.1, %free_fw ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #12
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_vt3184_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_control_out(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_control_in(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_set_antenna_mode(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_control_out_u8(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_mac_reg_bits_on(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_mac_reg_bits_off(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_mac_set_led(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_radio_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt6656_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %call1 = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i) #12
  %dev = getelementptr inbounds %struct.usb_device, ptr %call1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) #15
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev, ptr noundef nonnull @.str.31) #15
  %call.i = tail call ptr @ieee80211_alloc_hw_nm(i32 noundef 2056, ptr noundef nonnull @vnt_mac_ops, ptr noundef null) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end9, label %if.end

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34) #15
  tail call void @usb_put_dev(ptr noundef %call1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv11 = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %priv11 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv11, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %3, align 8
  %usb = getelementptr inbounds %struct.vnt_private, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %usb to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1, ptr %usb, align 4
  %intf13 = getelementptr inbounds %struct.vnt_private, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %intf13 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %intf, ptr %intf13, align 8
  %7 = load i32, ptr @vnt_tx_buffers, align 4
  %8 = add i32 %7, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 -113, i32 %8)
  %9 = icmp ult i32 %8, -113
  %spec.select.i = select i1 %9, i32 64, i32 %7
  %10 = getelementptr inbounds %struct.vnt_private, ptr %3, i32 0, i32 17
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select.i, ptr %10, align 8
  %12 = load i32, ptr @vnt_rx_buffers, align 4
  %13 = add i32 %12, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 -113, i32 %13)
  %14 = icmp ult i32 %13, -113
  %.sink22.i = select i1 %14, i32 64, i32 %12
  %15 = getelementptr inbounds %struct.vnt_private, ptr %3, i32 0, i32 14
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink22.i, ptr %15, align 4
  %op_mode.i = getelementptr inbounds %struct.vnt_private, ptr %3, i32 0, i32 56
  %17 = ptrtoint ptr %op_mode.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %op_mode.i, align 4
  %bb_type.i = getelementptr inbounds %struct.vnt_private, ptr %3, i32 0, i32 40
  %18 = ptrtoint ptr %bb_type.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %bb_type.i, align 8
  %packet_type.i = getelementptr inbounds %struct.vnt_private, ptr %3, i32 0, i32 41
  %19 = ptrtoint ptr %packet_type.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %packet_type.i, align 1
  %preamble_type.i = getelementptr inbounds %struct.vnt_private, ptr %3, i32 0, i32 46
  %20 = ptrtoint ptr %preamble_type.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %preamble_type.i, align 2
  %exist_sw_net_addr.i = getelementptr inbounds %struct.vnt_private, ptr %3, i32 0, i32 28
  %21 = ptrtoint ptr %exist_sw_net_addr.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %exist_sw_net_addr.i, align 2
  %lock = getelementptr inbounds %struct.vnt_private, ptr %3, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.36, ptr noundef nonnull @vt6656_probe.__key, i16 noundef signext 3) #12
  %usb_lock = getelementptr inbounds %struct.vnt_private, ptr %3, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %usb_lock, ptr noundef nonnull @.str.38, ptr noundef nonnull @vt6656_probe.__key.37) #12
  %run_command_work = getelementptr inbounds %struct.vnt_private, ptr %3, i32 0, i32 72
  tail call void @__init_work(ptr noundef %run_command_work, i32 noundef 0) #12
  %22 = ptrtoint ptr %run_command_work to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -64, ptr %run_command_work, align 4
  %lockdep_map = getelementptr inbounds %struct.vnt_private, ptr %3, i32 0, i32 72, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.40, ptr noundef nonnull @vt6656_probe.__key.39, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry29 = getelementptr inbounds %struct.vnt_private, ptr %3, i32 0, i32 72, i32 0, i32 1
  %23 = ptrtoint ptr %entry29 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %entry29, ptr %entry29, align 4
  %prev.i = getelementptr inbounds %struct.vnt_private, ptr %3, i32 0, i32 72, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %entry29, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.vnt_private, ptr %3, i32 0, i32 72, i32 0, i32 2
  %25 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @vnt_run_command, ptr %func, align 4
  %timer = getelementptr inbounds %struct.vnt_private, ptr %3, i32 0, i32 72, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.42, ptr noundef nonnull @vt6656_probe.__key.41) #12
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %3, ptr %driver_data.i.i, align 4
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 8
  %wiphy41 = getelementptr inbounds %struct.ieee80211_hw, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %wiphy41 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wiphy41, align 8
  %frag_threshold = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 35
  %31 = ptrtoint ptr %frag_threshold to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2346, ptr %frag_threshold, align 16
  %rts_threshold = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 36
  %32 = ptrtoint ptr %rts_threshold to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2347, ptr %rts_threshold, align 4
  %interface_modes = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 9
  %33 = ptrtoint ptr %interface_modes to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 14, ptr %interface_modes, align 4
  %34 = load ptr, ptr %3, align 8
  %flags.i = getelementptr inbounds %struct.ieee80211_hw, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.i, align 4
  %or.i.i = or i32 %36, 16777216
  store i32 %or.i.i, ptr %flags.i, align 4
  %37 = load ptr, ptr %3, align 8
  %flags.i107 = getelementptr inbounds %struct.ieee80211_hw, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %flags.i107 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags.i107, align 4
  %or.i.i108 = or i32 %39, 16
  store i32 %or.i.i108, ptr %flags.i107, align 4
  %40 = load ptr, ptr %3, align 8
  %flags.i109 = getelementptr inbounds %struct.ieee80211_hw, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %flags.i109 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags.i109, align 4
  %or.i.i110 = or i32 %42, 2
  store i32 %or.i.i110, ptr %flags.i109, align 4
  %43 = load ptr, ptr %3, align 8
  %flags.i111 = getelementptr inbounds %struct.ieee80211_hw, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %flags.i111 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags.i111, align 4
  %or.i.i112 = or i32 %45, 65536
  store i32 %or.i.i112, ptr %flags.i111, align 4
  %46 = load ptr, ptr %3, align 8
  %flags.i113 = getelementptr inbounds %struct.ieee80211_hw, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %flags.i113 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags.i113, align 4
  %or.i.i114 = or i32 %48, 256
  store i32 %or.i.i114, ptr %flags.i113, align 4
  %49 = load ptr, ptr %3, align 8
  %flags.i115 = getelementptr inbounds %struct.ieee80211_hw, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %flags.i115 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags.i115, align 4
  %or.i.i116 = or i32 %51, 512
  store i32 %or.i.i116, ptr %flags.i115, align 4
  %52 = load ptr, ptr %3, align 8
  %extra_tx_headroom = getelementptr inbounds %struct.ieee80211_hw, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %extra_tx_headroom to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 136, ptr %extra_tx_headroom, align 4
  %54 = load ptr, ptr %3, align 8
  %max_signal = getelementptr inbounds %struct.ieee80211_hw, ptr %54, i32 0, i32 13
  %55 = ptrtoint ptr %max_signal to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 100, ptr %max_signal, align 8
  %56 = load ptr, ptr %3, align 8
  %dev51 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %wiphy.i, align 8
  %parent.i.i = getelementptr inbounds %struct.wiphy, ptr %58, i32 0, i32 56, i32 1
  %59 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %dev51, ptr %parent.i.i, align 8
  %60 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %usb, align 4
  %call53 = tail call i32 @usb_reset_device(ptr noundef %61) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end.if.end61_crit_edge, label %do.end58

if.end.if.end61_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

do.end58:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %usb, align 4
  %dev60 = getelementptr inbounds %struct.usb_device, ptr %63, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev60, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.26, i32 noundef %call53) #15
  br label %if.end61

if.end61:                                         ; preds = %do.end58, %if.end.if.end61_crit_edge
  %flags = getelementptr inbounds %struct.vnt_private, ptr %3, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #12
  tail call void @vnt_reset_command_timer(ptr noundef %3) #12
  %call62 = tail call i32 @vnt_schedule_command(ptr noundef %3, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %do.end9
  %retval.0 = phi i32 [ 0, %if.end61 ], [ -12, %do.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vt6656_disconnect(ptr nocapture noundef %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %mac_hw = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mac_hw to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mac_hw, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  tail call void @ieee80211_unregister_hw(ptr noundef %5) #12
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %driver_data.i.i, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %8, i32 -128
  tail call void @usb_put_dev(ptr noundef %add.ptr.i) #12
  %flags = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #12
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  tail call void @ieee80211_free_hw(ptr noundef %10) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vt6656_suspend(ptr nocapture noundef readnone %intf, [1 x i32] %message.coerce) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vt6656_resume(ptr nocapture noundef readnone %intf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vnt_run_command(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vnt_reset_command_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_schedule_command(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_alloc_hw_nm(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vnt_tx_80211(ptr noundef %hw, ptr nocapture noundef readnone %control, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %call = tail call i32 @vnt_tx_packet(ptr noundef %1, ptr noundef %skb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ieee80211_free_txskb(ptr noundef %hw, ptr noundef %skb) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vnt_start(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %rx_buf_sz = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2900, ptr %rx_buf_sz, align 8
  %tx_submitted.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 16
  %3 = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 16, i32 1
  %4 = call ptr @memset(ptr %3, i32 0, i32 104)
  %5 = ptrtoint ptr %tx_submitted.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %tx_submitted.i, ptr %tx_submitted.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 16, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tx_submitted.i, ptr %prev.i.i.i, align 4
  tail call void @__init_waitqueue_head(ptr noundef %3, ptr noundef nonnull @.str.50, ptr noundef nonnull @init_usb_anchor.__key) #12
  %lock.i.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 16, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.52, ptr noundef nonnull @init_usb_anchor.__key.51, i16 noundef signext 3) #12
  %num_tx_context.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 17
  %7 = ptrtoint ptr %num_tx_context.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_tx_context.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp99.not.i = icmp eq i32 %8, 0
  br i1 %cmp99.not.i, label %entry.for.cond3.preheader.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for.cond3.preheader.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond3.preheader.i

for.cond3.preheader.i:                            ; preds = %if.end.i.for.cond3.preheader.i_crit_edge, %entry.for.cond3.preheader.i_crit_edge
  %num_rcb.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 14
  %9 = ptrtoint ptr %num_rcb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_rcb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp4102.not.i = icmp eq i32 %10, 0
  br i1 %cmp4102.not.i, label %for.cond3.preheader.i.for.end34.i_crit_edge, label %for.cond3.preheader.i.for.body6.i_crit_edge

for.cond3.preheader.i.for.body6.i_crit_edge:      ; preds = %for.cond3.preheader.i
  br label %for.body6.i

for.cond3.preheader.i.for.end34.i_crit_edge:      ; preds = %for.cond3.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end34.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %ii.0100.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 24) #16
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %for.body.i.free_tx.i_crit_edge, label %if.end.i

for.body.i.free_tx.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_tx.i

if.end.i:                                         ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.vnt_private, ptr %1, i32 0, i32 15, i32 %ii.0100.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %arrayidx.i, align 4
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %1, ptr %call7.i.i, align 8
  %conv.i = trunc i32 %ii.0100.i to i8
  %pkt_no.i = getelementptr inbounds %struct.vnt_usb_send_context, ptr %call7.i.i, i32 0, i32 7
  %14 = ptrtoint ptr %pkt_no.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i, ptr %pkt_no.i, align 1
  %in_use.i = getelementptr inbounds %struct.vnt_usb_send_context, ptr %call7.i.i, i32 0, i32 9
  %15 = ptrtoint ptr %in_use.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %in_use.i, align 1
  %inc.i = add nuw i32 %ii.0100.i, 1
  %16 = ptrtoint ptr %num_tx_context.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_tx_context.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %17
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.for.cond3.preheader.i_crit_edge

if.end.i.for.cond3.preheader.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond3.preheader.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.cond3.i:                                      ; preds = %if.end27.i
  %inc33.i = add nuw i32 %ii.1103.i, 1
  %18 = ptrtoint ptr %num_rcb.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_rcb.i, align 4
  %cmp4.i = icmp ult i32 %inc33.i, %19
  br i1 %cmp4.i, label %for.cond3.i.for.body6.i_crit_edge, label %for.cond3.i.for.end34.i_crit_edge

for.cond3.i.for.end34.i_crit_edge:                ; preds = %for.cond3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end34.i

for.cond3.i.for.body6.i_crit_edge:                ; preds = %for.cond3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.cond3.i.for.body6.i_crit_edge, %for.cond3.preheader.i.for.body6.i_crit_edge
  %ii.1103.i = phi i32 [ %inc33.i, %for.cond3.i.for.body6.i_crit_edge ], [ 0, %for.cond3.preheader.i.for.body6.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 12) #16
  %arrayidx9.i = getelementptr %struct.vnt_private, ptr %1, i32 0, i32 13, i32 %ii.1103.i
  %21 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i.i, ptr %arrayidx9.i, align 4
  %tobool12.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool12.not.i, label %for.body6.i.free_rx_tx.i_crit_edge, label %if.end14.i

for.body6.i.free_rx_tx.i_crit_edge:               ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_rx_tx.i

if.end14.i:                                       ; preds = %for.body6.i
  %22 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %1, ptr %call7.i.i.i, align 8
  %call18.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %urb.i = getelementptr inbounds %struct.vnt_rcb, ptr %call7.i.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %urb.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call18.i, ptr %urb.i, align 4
  %tobool20.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool20.not.i, label %if.end14.i.free_rx_tx.i_crit_edge, label %if.end22.i

if.end14.i.free_rx_tx.i_crit_edge:                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_rx_tx.i

if.end22.i:                                       ; preds = %if.end14.i
  %24 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_buf_sz, align 8
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %25, i32 noundef 2592) #12
  %skb.i = getelementptr inbounds %struct.vnt_rcb, ptr %call7.i.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %skb.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i.i.i, ptr %skb.i, align 8
  %tobool25.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool25.not.i, label %if.end22.i.free_rx_tx.i_crit_edge, label %if.end27.i

if.end22.i.free_rx_tx.i_crit_edge:                ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_rx_tx.i

if.end27.i:                                       ; preds = %if.end22.i
  %call28.i = tail call i32 @vnt_submit_rx_urb(ptr noundef %1, ptr noundef nonnull %call7.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %for.cond3.i, label %if.end27.i.free_rx_tx.i_crit_edge

if.end27.i.free_rx_tx.i_crit_edge:                ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_rx_tx.i

for.end34.i:                                      ; preds = %for.cond3.i.for.end34.i_crit_edge, %for.cond3.preheader.i.for.end34.i_crit_edge
  %call35.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %interrupt_urb.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 11
  %27 = ptrtoint ptr %interrupt_urb.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call35.i, ptr %interrupt_urb.i, align 4
  %tobool37.not.i = icmp eq ptr %call35.i, null
  br i1 %tobool37.not.i, label %for.end34.i.free_rx_tx.i_crit_edge, label %if.end39.i

for.end34.i.free_rx_tx.i_crit_edge:               ; preds = %for.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_rx_tx.i

if.end39.i:                                       ; preds = %for.end34.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i85.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3264, i32 noundef 32) #16
  %int_buf.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 18
  %29 = ptrtoint ptr %int_buf.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i85.i, ptr %int_buf.i, align 4
  %tobool43.not.i = icmp eq ptr %call7.i85.i, null
  br i1 %tobool43.not.i, label %if.then44.i, label %if.end39.i.if.end7_crit_edge

if.end39.i.if.end7_crit_edge:                     ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then44.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %interrupt_urb.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %interrupt_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %31) #12
  br label %free_rx_tx.i

free_rx_tx.i:                                     ; preds = %if.then44.i, %for.end34.i.free_rx_tx.i_crit_edge, %if.end27.i.free_rx_tx.i_crit_edge, %if.end22.i.free_rx_tx.i_crit_edge, %if.end14.i.free_rx_tx.i_crit_edge, %for.body6.i.free_rx_tx.i_crit_edge
  %ret.0.i = phi i32 [ -12, %if.then44.i ], [ -12, %for.end34.i.free_rx_tx.i_crit_edge ], [ -12, %if.end22.i.free_rx_tx.i_crit_edge ], [ -12, %if.end14.i.free_rx_tx.i_crit_edge ], [ -12, %for.body6.i.free_rx_tx.i_crit_edge ], [ %call28.i, %if.end27.i.free_rx_tx.i_crit_edge ]
  %32 = ptrtoint ptr %num_rcb.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_rcb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp22.not.i.i = icmp eq i32 %33, 0
  br i1 %cmp22.not.i.i, label %free_rx_tx.i.free_tx.i_crit_edge, label %free_rx_tx.i.for.body.i.i_crit_edge

free_rx_tx.i.for.body.i.i_crit_edge:              ; preds = %free_rx_tx.i
  br label %for.body.i.i

free_rx_tx.i.free_tx.i_crit_edge:                 ; preds = %free_rx_tx.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_tx.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %free_rx_tx.i.for.body.i.i_crit_edge
  %ii.023.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %free_rx_tx.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.vnt_private, ptr %1, i32 0, i32 13, i32 %ii.023.i.i
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %urb.i.i = getelementptr inbounds %struct.vnt_rcb, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %urb.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %urb.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %37, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end6.i.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.end6.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_kill_urb(ptr noundef nonnull %37) #12
  %38 = ptrtoint ptr %urb.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %urb.i.i, align 4
  tail call void @usb_free_urb(ptr noundef %39) #12
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then3.i.i, %if.end.i.i.if.end6.i.i_crit_edge
  %skb.i.i = getelementptr inbounds %struct.vnt_rcb, ptr %35, i32 0, i32 2
  %40 = ptrtoint ptr %skb.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %skb.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %41, null
  br i1 %tobool7.not.i.i, label %if.end6.i.i.if.end10.i.i_crit_edge, label %if.then8.i.i

if.end6.i.i.if.end10.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i.i

if.then8.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @consume_skb(ptr noundef nonnull %41) #12
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then8.i.i, %if.end6.i.i.if.end10.i.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %35) #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end10.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %ii.023.i.i, 1
  %42 = ptrtoint ptr %num_rcb.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_rcb.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %43
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.free_tx.i_crit_edge

for.inc.i.i.free_tx.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_tx.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

free_tx.i:                                        ; preds = %for.inc.i.i.free_tx.i_crit_edge, %free_rx_tx.i.free_tx.i_crit_edge, %for.body.i.free_tx.i_crit_edge
  %ret.1.i = phi i32 [ %ret.0.i, %free_rx_tx.i.free_tx.i_crit_edge ], [ %ret.0.i, %for.inc.i.i.free_tx.i_crit_edge ], [ -12, %for.body.i.free_tx.i_crit_edge ]
  tail call void @usb_kill_anchored_urbs(ptr noundef %tx_submitted.i) #12
  %44 = ptrtoint ptr %num_tx_context.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_tx_context.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp7.not.i.i = icmp eq i32 %45, 0
  br i1 %cmp7.not.i.i, label %free_tx.i.vnt_alloc_bufs.exit_crit_edge, label %free_tx.i.for.body.i88.i_crit_edge

free_tx.i.for.body.i88.i_crit_edge:               ; preds = %free_tx.i
  br label %for.body.i88.i

free_tx.i.vnt_alloc_bufs.exit_crit_edge:          ; preds = %free_tx.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vnt_alloc_bufs.exit

for.body.i88.i:                                   ; preds = %for.inc.i92.i.for.body.i88.i_crit_edge, %free_tx.i.for.body.i88.i_crit_edge
  %ii.08.i.i = phi i32 [ %inc.i90.i, %for.inc.i92.i.for.body.i88.i_crit_edge ], [ 0, %free_tx.i.for.body.i88.i_crit_edge ]
  %arrayidx.i86.i = getelementptr %struct.vnt_private, ptr %1, i32 0, i32 15, i32 %ii.08.i.i
  %46 = ptrtoint ptr %arrayidx.i86.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i86.i, align 4
  %tobool.not.i87.i = icmp eq ptr %47, null
  br i1 %tobool.not.i87.i, label %for.body.i88.i.for.inc.i92.i_crit_edge, label %if.end.i89.i

for.body.i88.i.for.inc.i92.i_crit_edge:           ; preds = %for.body.i88.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i92.i

if.end.i89.i:                                     ; preds = %for.body.i88.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %47) #12
  br label %for.inc.i92.i

for.inc.i92.i:                                    ; preds = %if.end.i89.i, %for.body.i88.i.for.inc.i92.i_crit_edge
  %inc.i90.i = add nuw i32 %ii.08.i.i, 1
  %48 = ptrtoint ptr %num_tx_context.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_tx_context.i, align 8
  %cmp.i91.i = icmp ult i32 %inc.i90.i, %49
  br i1 %cmp.i91.i, label %for.inc.i92.i.for.body.i88.i_crit_edge, label %for.inc.i92.i.vnt_alloc_bufs.exit_crit_edge

for.inc.i92.i.vnt_alloc_bufs.exit_crit_edge:      ; preds = %for.inc.i92.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vnt_alloc_bufs.exit

for.inc.i92.i.for.body.i88.i_crit_edge:           ; preds = %for.inc.i92.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i88.i

vnt_alloc_bufs.exit:                              ; preds = %for.inc.i92.i.vnt_alloc_bufs.exit_crit_edge, %free_tx.i.vnt_alloc_bufs.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool.not = icmp eq i32 %ret.1.i, 0
  br i1 %tobool.not, label %vnt_alloc_bufs.exit.if.end7_crit_edge, label %do.body

vnt_alloc_bufs.exit.if.end7_crit_edge:            ; preds = %vnt_alloc_bufs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

do.body:                                          ; preds = %vnt_alloc_bufs.exit
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_start.__UNIQUE_ID_ddebug407, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_start, %if.then6)) #12
          to label %cleanup [label %if.then6], !srcloc !159

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %usb = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 3
  %50 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %usb, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %51, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_start.__UNIQUE_ID_ddebug407, ptr noundef %dev, ptr noundef nonnull @.str.48) #12
  br label %cleanup

if.end7:                                          ; preds = %vnt_alloc_bufs.exit.if.end7_crit_edge, %if.end39.i.if.end7_crit_edge
  %flags = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #12
  %call8 = tail call fastcc i32 @vnt_init_registers(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end29, label %do.body11

do.body11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_start.__UNIQUE_ID_ddebug408, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_start, %if.then23)) #12
          to label %free_all [label %if.then23], !srcloc !159

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #14
  %usb24 = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 3
  %52 = ptrtoint ptr %usb24 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %usb24, align 4
  %dev25 = getelementptr inbounds %struct.usb_device, ptr %53, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_start.__UNIQUE_ID_ddebug408, ptr noundef %dev25, ptr noundef nonnull @.str.49) #12
  br label %free_all

if.end29:                                         ; preds = %if.end7
  %call30 = tail call i32 @vnt_key_init_table(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.free_all_crit_edge

if.end29.free_all_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_all

if.end33:                                         ; preds = %if.end29
  %int_interval = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 12
  %54 = ptrtoint ptr %int_interval to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %int_interval, align 8
  %call34 = tail call i32 @vnt_start_interrupt_urb(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end33.free_all_crit_edge

if.end33.free_all_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_all

if.end37:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ieee80211_wake_queues(ptr noundef %hw) #12
  br label %cleanup

free_all:                                         ; preds = %if.end33.free_all_crit_edge, %if.end29.free_all_crit_edge, %if.then23, %do.body11
  %ret.0 = phi i32 [ %call8, %if.then23 ], [ %call30, %if.end29.free_all_crit_edge ], [ %call34, %if.end33.free_all_crit_edge ], [ %call8, %do.body11 ]
  %num_rcb.i62 = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 14
  %55 = ptrtoint ptr %num_rcb.i62 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %num_rcb.i62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp22.not.i = icmp eq i32 %56, 0
  br i1 %cmp22.not.i, label %free_all.vnt_free_rx_bufs.exit_crit_edge, label %free_all.for.body.i65_crit_edge

free_all.for.body.i65_crit_edge:                  ; preds = %free_all
  br label %for.body.i65

free_all.vnt_free_rx_bufs.exit_crit_edge:         ; preds = %free_all
  call void @__sanitizer_cov_trace_pc() #14
  br label %vnt_free_rx_bufs.exit

for.body.i65:                                     ; preds = %for.inc.i.for.body.i65_crit_edge, %free_all.for.body.i65_crit_edge
  %ii.023.i = phi i32 [ %inc.i69, %for.inc.i.for.body.i65_crit_edge ], [ 0, %free_all.for.body.i65_crit_edge ]
  %arrayidx.i63 = getelementptr %struct.vnt_private, ptr %1, i32 0, i32 13, i32 %ii.023.i
  %57 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i63, align 4
  %tobool.not.i64 = icmp eq ptr %58, null
  br i1 %tobool.not.i64, label %for.body.i65.for.inc.i_crit_edge, label %if.end.i67

for.body.i65.for.inc.i_crit_edge:                 ; preds = %for.body.i65
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i67:                                       ; preds = %for.body.i65
  %urb.i66 = getelementptr inbounds %struct.vnt_rcb, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %urb.i66 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %urb.i66, align 4
  %tobool2.not.i = icmp eq ptr %60, null
  br i1 %tobool2.not.i, label %if.end.i67.if.end6.i_crit_edge, label %if.then3.i

if.end.i67.if.end6.i_crit_edge:                   ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.then3.i:                                       ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_kill_urb(ptr noundef nonnull %60) #12
  %61 = ptrtoint ptr %urb.i66 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %urb.i66, align 4
  tail call void @usb_free_urb(ptr noundef %62) #12
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %if.end.i67.if.end6.i_crit_edge
  %skb.i68 = getelementptr inbounds %struct.vnt_rcb, ptr %58, i32 0, i32 2
  %63 = ptrtoint ptr %skb.i68 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %skb.i68, align 4
  %tobool7.not.i = icmp eq ptr %64, null
  br i1 %tobool7.not.i, label %if.end6.i.if.end10.i_crit_edge, label %if.then8.i

if.end6.i.if.end10.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @consume_skb(ptr noundef nonnull %64) #12
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.end6.i.if.end10.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %58) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end10.i, %for.body.i65.for.inc.i_crit_edge
  %inc.i69 = add nuw i32 %ii.023.i, 1
  %65 = ptrtoint ptr %num_rcb.i62 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %num_rcb.i62, align 4
  %cmp.i70 = icmp ult i32 %inc.i69, %66
  br i1 %cmp.i70, label %for.inc.i.for.body.i65_crit_edge, label %for.inc.i.vnt_free_rx_bufs.exit_crit_edge

for.inc.i.vnt_free_rx_bufs.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vnt_free_rx_bufs.exit

for.inc.i.for.body.i65_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i65

vnt_free_rx_bufs.exit:                            ; preds = %for.inc.i.vnt_free_rx_bufs.exit_crit_edge, %free_all.vnt_free_rx_bufs.exit_crit_edge
  tail call void @usb_kill_anchored_urbs(ptr noundef %tx_submitted.i) #12
  %67 = ptrtoint ptr %num_tx_context.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %num_tx_context.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp7.not.i = icmp eq i32 %68, 0
  br i1 %cmp7.not.i, label %vnt_free_rx_bufs.exit.vnt_free_tx_bufs.exit_crit_edge, label %vnt_free_rx_bufs.exit.for.body.i75_crit_edge

vnt_free_rx_bufs.exit.for.body.i75_crit_edge:     ; preds = %vnt_free_rx_bufs.exit
  br label %for.body.i75

vnt_free_rx_bufs.exit.vnt_free_tx_bufs.exit_crit_edge: ; preds = %vnt_free_rx_bufs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %vnt_free_tx_bufs.exit

for.body.i75:                                     ; preds = %for.inc.i79.for.body.i75_crit_edge, %vnt_free_rx_bufs.exit.for.body.i75_crit_edge
  %ii.08.i = phi i32 [ %inc.i77, %for.inc.i79.for.body.i75_crit_edge ], [ 0, %vnt_free_rx_bufs.exit.for.body.i75_crit_edge ]
  %arrayidx.i73 = getelementptr %struct.vnt_private, ptr %1, i32 0, i32 15, i32 %ii.08.i
  %69 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.i73, align 4
  %tobool.not.i74 = icmp eq ptr %70, null
  br i1 %tobool.not.i74, label %for.body.i75.for.inc.i79_crit_edge, label %if.end.i76

for.body.i75.for.inc.i79_crit_edge:               ; preds = %for.body.i75
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i79

if.end.i76:                                       ; preds = %for.body.i75
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %70) #12
  br label %for.inc.i79

for.inc.i79:                                      ; preds = %if.end.i76, %for.body.i75.for.inc.i79_crit_edge
  %inc.i77 = add nuw i32 %ii.08.i, 1
  %71 = ptrtoint ptr %num_tx_context.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_tx_context.i, align 8
  %cmp.i78 = icmp ult i32 %inc.i77, %72
  br i1 %cmp.i78, label %for.inc.i79.for.body.i75_crit_edge, label %for.inc.i79.vnt_free_tx_bufs.exit_crit_edge

for.inc.i79.vnt_free_tx_bufs.exit_crit_edge:      ; preds = %for.inc.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %vnt_free_tx_bufs.exit

for.inc.i79.for.body.i75_crit_edge:               ; preds = %for.inc.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i75

vnt_free_tx_bufs.exit:                            ; preds = %for.inc.i79.vnt_free_tx_bufs.exit_crit_edge, %vnt_free_rx_bufs.exit.vnt_free_tx_bufs.exit_crit_edge
  %int_buf.i80 = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 18
  %73 = ptrtoint ptr %int_buf.i80 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %int_buf.i80, align 4
  tail call void @kfree(ptr noundef %74) #12
  %interrupt_urb = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 11
  %75 = ptrtoint ptr %interrupt_urb to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %interrupt_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %76) #12
  %77 = ptrtoint ptr %interrupt_urb to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %interrupt_urb, align 4
  tail call void @usb_free_urb(ptr noundef %78) #12
  br label %cleanup

cleanup:                                          ; preds = %vnt_free_tx_bufs.exit, %if.end37, %if.then6, %do.body
  %retval.0 = phi i32 [ 0, %if.end37 ], [ %ret.1.i, %if.then6 ], [ %ret.0, %vnt_free_tx_bufs.exit ], [ %ret.1.i, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vnt_stop(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %call = tail call i32 @vnt_mac_disable_keyentry(ptr noundef nonnull %1, i8 noundef zeroext 0) #12
  %call.1 = tail call i32 @vnt_mac_disable_keyentry(ptr noundef nonnull %1, i8 noundef zeroext 1) #12
  %call.2 = tail call i32 @vnt_mac_disable_keyentry(ptr noundef nonnull %1, i8 noundef zeroext 2) #12
  %call.3 = tail call i32 @vnt_mac_disable_keyentry(ptr noundef nonnull %1, i8 noundef zeroext 3) #12
  %call.4 = tail call i32 @vnt_mac_disable_keyentry(ptr noundef nonnull %1, i8 noundef zeroext 4) #12
  %call.5 = tail call i32 @vnt_mac_disable_keyentry(ptr noundef nonnull %1, i8 noundef zeroext 5) #12
  %call.6 = tail call i32 @vnt_mac_disable_keyentry(ptr noundef nonnull %1, i8 noundef zeroext 6) #12
  %call.7 = tail call i32 @vnt_mac_disable_keyentry(ptr noundef nonnull %1, i8 noundef zeroext 7) #12
  %call.8 = tail call i32 @vnt_mac_disable_keyentry(ptr noundef nonnull %1, i8 noundef zeroext 8) #12
  %call.9 = tail call i32 @vnt_mac_disable_keyentry(ptr noundef nonnull %1, i8 noundef zeroext 9) #12
  %call.10 = tail call i32 @vnt_mac_disable_keyentry(ptr noundef nonnull %1, i8 noundef zeroext 10) #12
  %key_entry_inuse = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 67
  %2 = ptrtoint ptr %key_entry_inuse to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %key_entry_inuse, align 8
  %flags = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool3.not = icmp eq i32 %and1.i, 0
  br i1 %tobool3.not, label %if.then4, label %for.body.preheader.if.end6_crit_edge

for.body.preheader.if.end6_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then4:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call i32 @vnt_mac_shutdown(ptr noundef nonnull %1) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %for.body.preheader.if.end6_crit_edge
  tail call void @ieee80211_stop_queues(ptr noundef %hw) #12
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #12
  %run_command_work = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 72
  %call8 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %run_command_work) #12
  %cmd_running = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 66
  %5 = ptrtoint ptr %cmd_running to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %cmd_running, align 4
  %tx_submitted.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 16
  tail call void @usb_kill_anchored_urbs(ptr noundef %tx_submitted.i) #12
  %num_tx_context.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %num_tx_context.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_tx_context.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp7.not.i = icmp eq i32 %7, 0
  br i1 %cmp7.not.i, label %if.end6.vnt_free_tx_bufs.exit_crit_edge, label %if.end6.for.body.i_crit_edge

if.end6.for.body.i_crit_edge:                     ; preds = %if.end6
  br label %for.body.i

if.end6.vnt_free_tx_bufs.exit_crit_edge:          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %vnt_free_tx_bufs.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end6.for.body.i_crit_edge
  %ii.08.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end6.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.vnt_private, ptr %1, i32 0, i32 15, i32 %ii.08.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %9) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %ii.08.i, 1
  %10 = ptrtoint ptr %num_tx_context.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_tx_context.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %11
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.vnt_free_tx_bufs.exit_crit_edge

for.inc.i.vnt_free_tx_bufs.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vnt_free_tx_bufs.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

vnt_free_tx_bufs.exit:                            ; preds = %for.inc.i.vnt_free_tx_bufs.exit_crit_edge, %if.end6.vnt_free_tx_bufs.exit_crit_edge
  %num_rcb.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 14
  %12 = ptrtoint ptr %num_rcb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_rcb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp22.not.i = icmp eq i32 %13, 0
  br i1 %cmp22.not.i, label %vnt_free_tx_bufs.exit.vnt_free_rx_bufs.exit_crit_edge, label %vnt_free_tx_bufs.exit.for.body.i28_crit_edge

vnt_free_tx_bufs.exit.for.body.i28_crit_edge:     ; preds = %vnt_free_tx_bufs.exit
  br label %for.body.i28

vnt_free_tx_bufs.exit.vnt_free_rx_bufs.exit_crit_edge: ; preds = %vnt_free_tx_bufs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %vnt_free_rx_bufs.exit

for.body.i28:                                     ; preds = %for.inc.i32.for.body.i28_crit_edge, %vnt_free_tx_bufs.exit.for.body.i28_crit_edge
  %ii.023.i = phi i32 [ %inc.i30, %for.inc.i32.for.body.i28_crit_edge ], [ 0, %vnt_free_tx_bufs.exit.for.body.i28_crit_edge ]
  %arrayidx.i26 = getelementptr %struct.vnt_private, ptr %1, i32 0, i32 13, i32 %ii.023.i
  %14 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i26, align 4
  %tobool.not.i27 = icmp eq ptr %15, null
  br i1 %tobool.not.i27, label %for.body.i28.for.inc.i32_crit_edge, label %if.end.i29

for.body.i28.for.inc.i32_crit_edge:               ; preds = %for.body.i28
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i32

if.end.i29:                                       ; preds = %for.body.i28
  %urb.i = getelementptr inbounds %struct.vnt_rcb, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %urb.i, align 4
  %tobool2.not.i = icmp eq ptr %17, null
  br i1 %tobool2.not.i, label %if.end.i29.if.end6.i_crit_edge, label %if.then3.i

if.end.i29.if.end6.i_crit_edge:                   ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.then3.i:                                       ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_kill_urb(ptr noundef nonnull %17) #12
  %18 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %19) #12
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %if.end.i29.if.end6.i_crit_edge
  %skb.i = getelementptr inbounds %struct.vnt_rcb, ptr %15, i32 0, i32 2
  %20 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skb.i, align 4
  %tobool7.not.i = icmp eq ptr %21, null
  br i1 %tobool7.not.i, label %if.end6.i.if.end10.i_crit_edge, label %if.then8.i

if.end6.i.if.end10.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @consume_skb(ptr noundef nonnull %21) #12
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.end6.i.if.end10.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %15) #12
  br label %for.inc.i32

for.inc.i32:                                      ; preds = %if.end10.i, %for.body.i28.for.inc.i32_crit_edge
  %inc.i30 = add nuw i32 %ii.023.i, 1
  %22 = ptrtoint ptr %num_rcb.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_rcb.i, align 4
  %cmp.i31 = icmp ult i32 %inc.i30, %23
  br i1 %cmp.i31, label %for.inc.i32.for.body.i28_crit_edge, label %for.inc.i32.vnt_free_rx_bufs.exit_crit_edge

for.inc.i32.vnt_free_rx_bufs.exit_crit_edge:      ; preds = %for.inc.i32
  call void @__sanitizer_cov_trace_pc() #14
  br label %vnt_free_rx_bufs.exit

for.inc.i32.for.body.i28_crit_edge:               ; preds = %for.inc.i32
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i28

vnt_free_rx_bufs.exit:                            ; preds = %for.inc.i32.vnt_free_rx_bufs.exit_crit_edge, %vnt_free_tx_bufs.exit.vnt_free_rx_bufs.exit_crit_edge
  %int_buf.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 18
  %24 = ptrtoint ptr %int_buf.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %int_buf.i, align 4
  tail call void @kfree(ptr noundef %25) #12
  %interrupt_urb = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 11
  %26 = ptrtoint ptr %interrupt_urb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %interrupt_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %27) #12
  %28 = ptrtoint ptr %interrupt_urb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %interrupt_urb, align 4
  tail call void @usb_free_urb(ptr noundef %29) #12
  br label %cleanup

cleanup:                                          ; preds = %vnt_free_rx_bufs.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vnt_add_interface(ptr nocapture noundef readonly %hw, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %vif2 = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vif2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %vif, ptr %vif2, align 4
  %3 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vif, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %4, label %entry.cleanup_crit_edge [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 1, label %entry.sw.epilog.sink.split_crit_edge
    i32 3, label %sw.bb4
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb4, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i8 [ 16, %sw.bb4 ], [ 32, %entry.sw.epilog.sink.split_crit_edge ]
  %call5 = tail call i32 @vnt_mac_reg_bits_off(ptr noundef %1, i8 noundef zeroext 86, i8 noundef zeroext 32) #12
  %call6 = tail call i32 @vnt_mac_reg_bits_on(ptr noundef %1, i8 noundef zeroext 84, i8 noundef zeroext %.sink) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %6 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vif, align 8
  %op_mode = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 56
  %8 = ptrtoint ptr %op_mode to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %op_mode, align 4
  %call8 = tail call i32 @vnt_mac_set_led(ptr noundef %1, i8 noundef zeroext 6, i8 noundef zeroext 6) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vnt_remove_interface(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vif, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 3, label %sw.bb4
    i32 1, label %entry.sw.epilog.sink.split_crit_edge
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb4, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i8 [ 16, %sw.bb4 ], [ 32, %entry.sw.epilog.sink.split_crit_edge ]
  %call5 = tail call i32 @vnt_mac_reg_bits_off(ptr noundef %1, i8 noundef zeroext 87, i8 noundef zeroext 1) #12
  %call6 = tail call i32 @vnt_mac_reg_bits_off(ptr noundef %1, i8 noundef zeroext 72, i8 noundef zeroext 1) #12
  %call7 = tail call i32 @vnt_mac_reg_bits_off(ptr noundef %1, i8 noundef zeroext 84, i8 noundef zeroext %.sink) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %call8 = tail call i32 @vnt_radio_power_off(ptr noundef %1) #12
  %op_mode = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 56
  %5 = ptrtoint ptr %op_mode to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %op_mode, align 4
  %call9 = tail call i32 @vnt_mac_set_led(ptr noundef %1, i8 noundef zeroext 6, i8 noundef zeroext 4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vnt_config(ptr nocapture noundef readonly %hw, i32 noundef %changed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %and = and i32 %changed, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw, align 4
  %and3 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %listen_interval = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %listen_interval to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %listen_interval, align 4
  tail call void @vnt_enable_power_saving(ptr noundef %1, i16 noundef zeroext %5) #12
  br label %if.end6

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @vnt_disable_power_saving(ptr noundef %1) #12
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then5, %entry.if.end6_crit_edge
  %and7 = and i32 %changed, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %if.end6.if.then12_crit_edge

if.end6.if.then12_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12

lor.lhs.false:                                    ; preds = %if.end6
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hw, align 4
  %and10 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %lor.lhs.false.if.end21_crit_edge, label %lor.lhs.false.if.then12_crit_edge

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12

lor.lhs.false.if.end21_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %if.end6.if.then12_crit_edge
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7
  %8 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chandef, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hw_value, align 2
  %conv = zext i16 %11 to i32
  %call13 = tail call i32 @vnt_set_channel(ptr noundef %1, i32 noundef %conv) #12
  %12 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chandef, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp = icmp eq i32 %15, 1
  %bb_type = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 40
  %. = select i1 %cmp, i8 0, i8 2
  %16 = ptrtoint ptr %bb_type to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %., ptr %bb_type, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then12, %lor.lhs.false.if.end21_crit_edge
  %and22 = and i32 %changed, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end21.if.end28_crit_edge, label %if.then24

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %chandef25 = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7
  %17 = ptrtoint ptr %chandef25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chandef25, align 4
  %call27 = tail call i32 @vnt_rf_setpower(ptr noundef %1, ptr noundef %18) #12
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.end21.if.end28_crit_edge
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hw, align 4
  %and30 = and i32 %20, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp ne i32 %and30, 0
  %.54 = zext i1 %tobool31.not to i32
  %call35 = tail call i32 @vnt_update_pre_ed_threshold(ptr noundef %1, i32 noundef %.54) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vnt_bss_info_changed(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %conf, i32 noundef %changed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %aid = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 13
  %2 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %aid, align 2
  %current_aid = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 58
  %4 = ptrtoint ptr %current_aid to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %current_aid, align 4
  %and = and i32 %changed, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %conf, align 8
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @vnt_mac_set_bssid_addr(ptr noundef %1, ptr noundef nonnull %6) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %and4 = and i32 %changed, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end15_crit_edge, label %if.then6

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %basic_rates = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 24
  %7 = ptrtoint ptr %basic_rates to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %basic_rates, align 8
  %basic_rates7 = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 42
  %9 = ptrtoint ptr %basic_rates7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %basic_rates7, align 4
  tail call void @vnt_update_top_rates(ptr noundef %1) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_bss_info_changed.__UNIQUE_ID_ddebug409, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_bss_info_changed, %if.then12)) #12
          to label %if.end15 [label %if.then12], !srcloc !159

if.then12:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %usb = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %basic_rates to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %basic_rates, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_bss_info_changed.__UNIQUE_ID_ddebug409, ptr noundef %dev, ptr noundef nonnull @.str.54, i32 noundef %13) #12
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then6, %if.end.if.end15_crit_edge
  %and16 = and i32 %changed, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end25_crit_edge, label %if.then18

if.end15.if.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then18:                                        ; preds = %if.end15
  %use_short_preamble = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 15
  %14 = ptrtoint ptr %use_short_preamble to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %use_short_preamble, align 1, !range !160
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool19.not = icmp eq i8 %15, 0
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  %call21 = tail call i32 @vnt_mac_enable_barker_preamble_mode(ptr noundef %1) #12
  br label %if.end25.sink.split

if.else:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  %call22 = tail call i32 @vnt_mac_disable_barker_preamble_mode(ptr noundef %1) #12
  br label %if.end25.sink.split

if.end25.sink.split:                              ; preds = %if.else, %if.then20
  %.sink200 = phi i8 [ 1, %if.then20 ], [ 0, %if.else ]
  %preamble_type = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 46
  %16 = ptrtoint ptr %preamble_type to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %.sink200, ptr %preamble_type, align 2
  br label %if.end25

if.end25:                                         ; preds = %if.end25.sink.split, %if.end15.if.end25_crit_edge
  %and26 = and i32 %changed, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.if.end35_crit_edge, label %if.then28

if.end25.if.end35_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then28:                                        ; preds = %if.end25
  %use_cts_prot = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 14
  %17 = ptrtoint ptr %use_cts_prot to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %use_cts_prot, align 4, !range !160
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool29.not = icmp eq i8 %18, 0
  br i1 %tobool29.not, label %if.else32, label %if.then30

if.then30:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  %call31 = tail call i32 @vnt_mac_enable_protect_mode(ptr noundef %1) #12
  br label %if.end35

if.else32:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  %call33 = tail call i32 @vnt_mac_disable_protect_mode(ptr noundef %1) #12
  br label %if.end35

if.end35:                                         ; preds = %if.else32, %if.then30, %if.end25.if.end35_crit_edge
  %and36 = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.if.end46_crit_edge, label %if.then38

if.end35.if.end46_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %use_short_slot = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 16
  %19 = ptrtoint ptr %use_short_slot to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %use_short_slot, align 2, !range !160
  %21 = zext i8 %20 to i32
  %22 = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 57
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %21, ptr %22, align 8
  %call44 = tail call i32 @vnt_set_short_slot_time(ptr noundef %1) #12
  %bb_vga = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 69
  %24 = ptrtoint ptr %bb_vga to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bb_vga, align 1
  %call45 = tail call i32 @vnt_set_vga_gain_offset(ptr noundef %1, i8 noundef zeroext %25) #12
  br label %if.end46

if.end46:                                         ; preds = %if.then38, %if.end35.if.end46_crit_edge
  %and47 = and i32 %changed, 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end46.if.end51_crit_edge, label %if.then49

if.end46.if.end51_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %call50 = tail call i32 @vnt_set_bss_mode(ptr noundef %1) #12
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end46.if.end51_crit_edge
  %and52 = and i32 %changed, 2359296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end51.if.end56_crit_edge, label %if.then54

if.end51.if.end56_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  %chandef = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 32
  %26 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chandef, align 4
  %call55 = tail call i32 @vnt_rf_setpower(ptr noundef %1, ptr noundef %27) #12
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end51.if.end56_crit_edge
  %and57 = and i32 %changed, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end56.if.end87_crit_edge, label %do.body60

if.end56.if.end87_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

do.body60:                                        ; preds = %if.end56
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_bss_info_changed.__UNIQUE_ID_ddebug410, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_bss_info_changed, %if.then72)) #12
          to label %do.end78 [label %if.then72], !srcloc !159

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #14
  %usb73 = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %usb73 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %usb73, align 4
  %dev74 = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 15
  %enable_beacon = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 17
  %30 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %enable_beacon, align 1, !range !160
  %32 = zext i8 %31 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_bss_info_changed.__UNIQUE_ID_ddebug410, ptr noundef %dev74, ptr noundef nonnull @.str.55, i32 noundef %32) #12
  br label %do.end78

do.end78:                                         ; preds = %if.then72, %do.body60
  %enable_beacon79 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 17
  %33 = ptrtoint ptr %enable_beacon79 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %enable_beacon79, align 1, !range !160
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool80.not = icmp eq i8 %34, 0
  br i1 %tobool80.not, label %if.else84, label %if.then81

if.then81:                                        ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #14
  %call82 = tail call i32 @vnt_beacon_enable(ptr noundef %1, ptr noundef %vif, ptr noundef %conf) #12
  %call83 = tail call i32 @vnt_mac_reg_bits_on(ptr noundef %1, i8 noundef zeroext 87, i8 noundef zeroext 1) #12
  br label %if.end87

if.else84:                                        ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #14
  %call85 = tail call i32 @vnt_mac_reg_bits_off(ptr noundef %1, i8 noundef zeroext 87, i8 noundef zeroext 1) #12
  br label %if.end87

if.end87:                                         ; preds = %if.else84, %if.then81, %if.end56.if.end87_crit_edge
  %and88 = and i32 %changed, 1048577
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.end87.if.end129_crit_edge, label %land.lhs.true90

if.end87.if.end129_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end129

land.lhs.true90:                                  ; preds = %if.end87
  %op_mode = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 56
  %35 = ptrtoint ptr %op_mode to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %op_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %36)
  %cmp.not = icmp eq i32 %36, 3
  br i1 %cmp.not, label %land.lhs.true90.if.end129_crit_edge, label %if.then92

land.lhs.true90.if.end129_crit_edge:              ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end129

if.then92:                                        ; preds = %land.lhs.true90
  %assoc = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 10
  %37 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %assoc, align 1, !range !160
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool93.not = icmp eq i8 %38, 0
  br i1 %tobool93.not, label %if.then92.if.else125_crit_edge, label %land.lhs.true95

if.then92.if.else125_crit_edge:                   ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else125

land.lhs.true95:                                  ; preds = %if.then92
  %beacon_rate = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 25
  %39 = ptrtoint ptr %beacon_rate to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %beacon_rate, align 4
  %tobool96.not = icmp eq ptr %40, null
  br i1 %tobool96.not, label %land.lhs.true95.if.else125_crit_edge, label %if.then97

land.lhs.true95.if.else125_crit_edge:             ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else125

if.then97:                                        ; preds = %land.lhs.true95
  %beacon_int = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 19
  %41 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %beacon_int, align 2
  %dtim_period = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 18
  %43 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %dtim_period, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool98.not = icmp eq i8 %44, 0
  br i1 %tobool98.not, label %if.else104, label %if.then99

if.then99:                                        ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #14
  %conv101 = zext i8 %44 to i16
  br label %if.end115

if.else104:                                       ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #14
  %listen_interval = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 3
  %45 = ptrtoint ptr %listen_interval to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %listen_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool106.not = icmp eq i16 %46, 0
  %mul112 = select i1 %tobool106.not, i16 1, i16 %46
  br label %if.end115

if.end115:                                        ; preds = %if.else104, %if.then99
  %conv101.pn = phi i16 [ %conv101, %if.then99 ], [ %mul112, %if.else104 ]
  %ps_beacon_int.0 = mul i16 %conv101.pn, %42
  %call116 = tail call i32 @vnt_mac_reg_bits_on(ptr noundef %1, i8 noundef zeroext 72, i8 noundef zeroext 1) #12
  %call117 = tail call i32 @vnt_mac_set_beacon_interval(ptr noundef %1, i16 noundef zeroext %ps_beacon_int.0) #12
  %47 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %beacon_int, align 2
  %call119 = tail call i32 @vnt_reset_next_tbtt(ptr noundef %1, i16 noundef zeroext %48) #12
  %49 = ptrtoint ptr %beacon_rate to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %beacon_rate, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_rate, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %hw_value, align 2
  %conv121 = trunc i16 %52 to i8
  %sync_tsf = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 21
  %53 = ptrtoint ptr %sync_tsf to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %sync_tsf, align 8
  %current_tsf = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 29
  %55 = ptrtoint ptr %current_tsf to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %current_tsf, align 8
  %call122 = tail call i32 @vnt_adjust_tsf(ptr noundef %1, i8 noundef zeroext %conv121, i64 noundef %54, i64 noundef %56) #12
  %57 = ptrtoint ptr %sync_tsf to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %sync_tsf, align 8
  %call124 = tail call i32 @vnt_update_next_tbtt(ptr noundef %1, i64 noundef %58, i16 noundef zeroext %ps_beacon_int.0) #12
  br label %if.end129

if.else125:                                       ; preds = %land.lhs.true95.if.else125_crit_edge, %if.then92.if.else125_crit_edge
  %call126 = tail call zeroext i1 @vnt_clear_current_tsf(ptr noundef %1) #12
  %call127 = tail call i32 @vnt_mac_reg_bits_off(ptr noundef %1, i8 noundef zeroext 72, i8 noundef zeroext 1) #12
  br label %if.end129

if.end129:                                        ; preds = %if.else125, %if.end115, %land.lhs.true90.if.end129_crit_edge, %if.end87.if.end129_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @vnt_prepare_multicast(ptr nocapture noundef readonly %hw, ptr noundef readonly %mc_list) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %ha.051 = load ptr, ptr %mc_list, align 4
  %cmp.not52 = icmp eq ptr %ha.051, %mc_list
  br i1 %cmp.not52, label %entry.for.end_crit_edge, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  br label %cond.end

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cond.end:                                         ; preds = %cond.end.cond.end_crit_edge, %entry.cond.end_crit_edge
  %ha.054 = phi ptr [ %ha.0, %cond.end.cond.end_crit_edge ], [ %ha.051, %entry.cond.end_crit_edge ]
  %mc_filter.053 = phi i64 [ %or28, %cond.end.cond.end_crit_edge ], [ 0, %entry.cond.end_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.054, i32 0, i32 2
  %call = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #17
  %3 = and i32 %call, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i.i, align 1
  %6 = lshr i8 %5, 2
  %sh_prom = zext i8 %6 to i64
  %shl27 = shl nuw i64 1, %sh_prom
  %or28 = or i64 %shl27, %mc_filter.053
  %7 = ptrtoint ptr %ha.054 to i32
  call void @__asan_load4_noabort(i32 %7)
  %ha.0 = load ptr, ptr %ha.054, align 4
  %cmp.not = icmp eq ptr %ha.0, %mc_list
  br i1 %cmp.not, label %cond.end.for.end_crit_edge, label %cond.end.cond.end_crit_edge

cond.end.cond.end_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %entry.for.end_crit_edge
  %mc_filter.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %or28, %cond.end.for.end_crit_edge ]
  %count = getelementptr inbounds %struct.netdev_hw_addr_list, ptr %mc_list, i32 0, i32 1
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count, align 4
  %mc_list_count = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %mc_list_count to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %mc_list_count, align 4
  ret i64 %mc_filter.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vnt_configure(ptr nocapture noundef readonly %hw, i32 noundef %changed_flags, ptr nocapture noundef %total_flags, i64 noundef %multicast) #0 align 64 {
entry:
  %rx_mode = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_mode) #12
  %2 = ptrtoint ptr %rx_mode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %rx_mode, align 1
  %3 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %total_flags, align 4
  %and = and i32 %4, 82
  store i32 %and, ptr %total_flags, align 4
  %call = call i32 @vnt_control_in(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext 86, i16 noundef zeroext 3, i16 noundef zeroext 1, ptr noundef nonnull %rx_mode) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_configure.__UNIQUE_ID_ddebug411, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_configure, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !159

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %usb = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %usb, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  %7 = ptrtoint ptr %rx_mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rx_mode, align 1
  %conv = zext i8 %8 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_configure.__UNIQUE_ID_ddebug411, ptr noundef %dev, ptr noundef nonnull @.str.57, i32 noundef %conv) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and5 = and i32 %changed_flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %do.end.if.end23_crit_edge, label %if.then7

do.end.if.end23_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then7:                                         ; preds = %do.end
  %9 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %total_flags, align 4
  %and8 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else18, label %if.then10

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  %mc_list_count = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %mc_list_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mc_list_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp = icmp sgt i32 %12, 2
  %.multicast = select i1 %cmp, i64 -1, i64 %multicast
  %call14 = call i32 @vnt_mac_set_filter(ptr noundef %1, i64 noundef %.multicast) #12
  %13 = ptrtoint ptr %rx_mode to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rx_mode, align 1
  %15 = or i8 %14, 24
  store i8 %15, ptr %rx_mode, align 1
  br label %if.end23

if.else18:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %rx_mode to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rx_mode, align 1
  %18 = and i8 %17, -25
  store i8 %18, ptr %rx_mode, align 1
  br label %if.end23

if.end23:                                         ; preds = %if.else18, %if.then10, %do.end.if.end23_crit_edge
  %and24 = and i32 %changed_flags, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end38_crit_edge, label %if.then26

if.end23.if.end38_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then26:                                        ; preds = %if.end23
  %19 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %total_flags, align 4
  %and27 = and i32 %20, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %21 = ptrtoint ptr %rx_mode to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %rx_mode, align 1
  br i1 %tobool28.not, label %if.else33, label %if.then29

if.then29:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  %23 = and i8 %22, -2
  %24 = ptrtoint ptr %rx_mode to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %rx_mode, align 1
  br label %if.end38

if.else33:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  %25 = or i8 %22, 1
  %26 = ptrtoint ptr %rx_mode to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %rx_mode, align 1
  br label %if.end38

if.end38:                                         ; preds = %if.else33, %if.then29, %if.end23.if.end38_crit_edge
  %27 = ptrtoint ptr %rx_mode to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %rx_mode, align 1
  %call39 = call i32 @vnt_control_out_u8(ptr noundef %1, i8 noundef zeroext 3, i8 noundef zeroext 86, i8 noundef zeroext %28) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_configure.__UNIQUE_ID_ddebug412, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_configure, %if.then52)) #12
          to label %do.end58 [label %if.then52], !srcloc !159

if.then52:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  %usb53 = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %usb53 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %usb53, align 4
  %dev54 = getelementptr inbounds %struct.usb_device, ptr %30, i32 0, i32 15
  %31 = ptrtoint ptr %rx_mode to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %rx_mode, align 1
  %conv55 = zext i8 %32 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_configure.__UNIQUE_ID_ddebug412, ptr noundef %dev54, ptr noundef nonnull @.str.58, i32 noundef %conv55) #12
  br label %do.end58

do.end58:                                         ; preds = %if.then52, %if.end38
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_mode) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vnt_set_key(ptr noundef %hw, i32 noundef %cmd, ptr noundef %vif, ptr noundef %sta, ptr noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @vnt_set_keys(ptr noundef %hw, ptr noundef %sta, ptr noundef %vif, ptr noundef %key) #12
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %hw_key_idx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %3 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %hw_key_idx, align 2
  %conv = zext i8 %4 to i32
  %key_entry_inuse = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 67
  %div3.i = lshr i32 %conv, 5
  %arrayidx.i = getelementptr i32, ptr %key_entry_inuse, i32 %div3.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv, 31
  %7 = shl nuw i32 1, %and.i
  %8 = and i32 %7, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %sw.bb2.cleanup_crit_edge, label %if.then

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_clear_bit(i32 noundef %conv, ptr noundef %key_entry_inuse) #12
  %9 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %hw_key_idx, align 2
  %call8 = tail call i32 @vnt_mac_disable_keyentry(ptr noundef %1, i8 noundef zeroext %10) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then, %sw.bb2.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %sw.bb ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb2.cleanup_crit_edge ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vnt_get_stats(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %stats) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %low_stats = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 73
  %2 = call ptr @memcpy(ptr %stats, ptr %low_stats, i32 16)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @vnt_get_tsf(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %current_tsf = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %current_tsf to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %current_tsf, align 8
  ret i64 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vnt_set_tsf(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %vif, i64 noundef %tsf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %beacon_int = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 19
  %2 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %beacon_int, align 2
  %call = tail call i32 @vnt_update_next_tbtt(ptr noundef %1, i64 noundef %tsf, i16 noundef zeroext %3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vnt_reset_tsf(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %call = tail call i32 @vnt_mac_reg_bits_off(ptr noundef %1, i8 noundef zeroext 72, i8 noundef zeroext 1) #12
  %call2 = tail call zeroext i1 @vnt_clear_current_tsf(ptr noundef %1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_tx_packet(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_txskb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_key_init_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_start_interrupt_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_submit_rx_urb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_anchored_urbs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_mac_disable_keyentry(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_mac_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vnt_enable_power_saving(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_disable_power_saving(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_set_channel(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_rf_setpower(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_update_pre_ed_threshold(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_mac_set_bssid_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vnt_update_top_rates(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_mac_enable_barker_preamble_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_mac_disable_barker_preamble_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_mac_enable_protect_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_mac_disable_protect_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_set_short_slot_time(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_set_vga_gain_offset(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_set_bss_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_beacon_enable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_mac_set_beacon_interval(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_reset_next_tbtt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_adjust_tsf(ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_update_next_tbtt(ptr noundef, i64 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vnt_clear_current_tsf(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_mac_set_filter(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_set_keys(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_unregister_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !16, !18, !19, !21, !22, !24, !26, !27, !28, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !55, !57, !58, !60, !61, !63, !65, !66, !67, !69, !71, !72, !73, !74, !75, !77, !78, !80, !81, !82, !84, !86, !88, !90, !91, !92, !93, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !109, !110, !112, !113, !114, !115, !117, !118, !119, !120, !122, !124, !125, !126, !128, !129, !131, !132, !134, !135, !137, !138, !139, !141, !142, !144, !145, !146, !148}
!llvm.module.flags = !{!149, !150, !151, !152, !153, !154, !155, !156}
!llvm.ident = !{!157}

!0 = !{ptr @__UNIQUE_ID_author383, !1, !"__UNIQUE_ID_author383", i1 false, i1 false}
!1 = !{!"../drivers/staging/vt6656/main_usb.c", i32 44, i32 1}
!2 = !{ptr @__UNIQUE_ID_license384, !3, !"__UNIQUE_ID_license384", i1 false, i1 false}
!3 = !{!"../drivers/staging/vt6656/main_usb.c", i32 45, i32 1}
!4 = !{ptr @__UNIQUE_ID_description385, !5, !"__UNIQUE_ID_description385", i1 false, i1 false}
!5 = !{!"../drivers/staging/vt6656/main_usb.c", i32 46, i32 1}
!6 = !{ptr @__param_rx_buffers, !7, !"__param_rx_buffers", i1 false, i1 false}
!7 = !{!"../drivers/staging/vt6656/main_usb.c", i32 50, i32 1}
!8 = !{ptr @__UNIQUE_ID_rx_bufferstype386, !7, !"__UNIQUE_ID_rx_bufferstype386", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_rx_buffers387, !10, !"__UNIQUE_ID_rx_buffers387", i1 false, i1 false}
!10 = !{!"../drivers/staging/vt6656/main_usb.c", i32 51, i32 1}
!11 = !{ptr @__param_tx_buffers, !12, !"__param_tx_buffers", i1 false, i1 false}
!12 = !{!"../drivers/staging/vt6656/main_usb.c", i32 55, i32 1}
!13 = !{ptr @__UNIQUE_ID_tx_bufferstype388, !12, !"__UNIQUE_ID_tx_bufferstype388", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_tx_buffers389, !15, !"__UNIQUE_ID_tx_buffers389", i1 false, i1 false}
!15 = !{!"../drivers/staging/vt6656/main_usb.c", i32 56, i32 1}
!16 = !{ptr @__UNIQUE_ID_firmware413, !17, !"__UNIQUE_ID_firmware413", i1 false, i1 false}
!17 = !{!"../drivers/staging/vt6656/main_usb.c", i32 1116, i32 1}
!18 = !{ptr @__param_str_rx_buffers, !7, !"__param_str_rx_buffers", i1 false, i1 false}
!19 = !{ptr @vnt_rx_buffers, !20, !"vnt_rx_buffers", i1 false, i1 false}
!20 = !{!"../drivers/staging/vt6656/main_usb.c", i32 49, i32 12}
!21 = !{ptr @__param_str_tx_buffers, !12, !"__param_str_tx_buffers", i1 false, i1 false}
!22 = !{ptr @vnt_tx_buffers, !23, !"vnt_tx_buffers", i1 false, i1 false}
!23 = !{!"../drivers/staging/vt6656/main_usb.c", i32 54, i32 12}
!24 = !{ptr @.str, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/vt6656/main_usb.c", i32 190, i32 2}
!26 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @vnt_init_registers.__UNIQUE_ID_ddebug399, !25, !"__UNIQUE_ID_ddebug399", i1 false, i1 false}
!30 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/vt6656/main_usb.c", i32 197, i32 4}
!32 = !{ptr @vnt_init_registers.__UNIQUE_ID_ddebug400, !31, !"__UNIQUE_ID_ddebug400", i1 false, i1 false}
!33 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/vt6656/main_usb.c", i32 204, i32 4}
!35 = !{ptr @vnt_init_registers.__UNIQUE_ID_ddebug401, !34, !"__UNIQUE_ID_ddebug401", i1 false, i1 false}
!36 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/vt6656/main_usb.c", i32 212, i32 3}
!38 = !{ptr @vnt_init_registers.__UNIQUE_ID_ddebug402, !37, !"__UNIQUE_ID_ddebug402", i1 false, i1 false}
!39 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/vt6656/main_usb.c", i32 228, i32 3}
!41 = !{ptr @vnt_init_registers.__UNIQUE_ID_ddebug403, !40, !"__UNIQUE_ID_ddebug403", i1 false, i1 false}
!42 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/staging/vt6656/main_usb.c", i32 236, i32 3}
!44 = !{ptr @vnt_init_registers.__UNIQUE_ID_ddebug404, !43, !"__UNIQUE_ID_ddebug404", i1 false, i1 false}
!45 = !{ptr @.str.9, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/vt6656/main_usb.c", i32 395, i32 2}
!47 = !{ptr @vnt_init_registers.__UNIQUE_ID_ddebug405, !46, !"__UNIQUE_ID_ddebug405", i1 false, i1 false}
!48 = !{ptr @.str.10, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/staging/vt6656/main_usb.c", i32 435, i32 2}
!50 = !{ptr @vnt_init_registers.__UNIQUE_ID_ddebug406, !49, !"__UNIQUE_ID_ddebug406", i1 false, i1 false}
!51 = !{ptr @.str.11, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/staging/vt6656/main_usb.c", i32 148, i32 3}
!53 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @vnt_check_firmware_version.__UNIQUE_ID_ddebug395, !52, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!55 = !{ptr @.str.13, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/staging/vt6656/main_usb.c", i32 153, i32 2}
!57 = !{ptr @vnt_check_firmware_version.__UNIQUE_ID_ddebug396, !56, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!58 = !{ptr @.str.14, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/staging/vt6656/main_usb.c", i32 157, i32 3}
!60 = !{ptr @vnt_check_firmware_version.__UNIQUE_ID_ddebug397, !59, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!61 = !{ptr @vnt_check_firmware_version.__UNIQUE_ID_ddebug398, !62, !"__UNIQUE_ID_ddebug398", i1 false, i1 false}
!62 = !{!"../drivers/staging/vt6656/main_usb.c", i32 166, i32 4}
!63 = !{ptr @.str.15, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/staging/vt6656/main_usb.c", i32 107, i32 2}
!65 = !{ptr @.str.16, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @vnt_download_firmware.__UNIQUE_ID_ddebug390, !64, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!67 = !{ptr @.str.17, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/staging/vt6656/main_usb.c", i32 109, i32 30}
!69 = !{ptr @.str.18, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/staging/vt6656/main_usb.c", i32 111, i32 3}
!71 = !{ptr @.str.19, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.20, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @vnt_download_firmware._entry, !70, !"_entry", i1 false, i1 false}
!74 = !{ptr @vnt_download_firmware._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.21, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/staging/vt6656/main_usb.c", i32 124, i32 3}
!77 = !{ptr @vnt_download_firmware.__UNIQUE_ID_ddebug393, !76, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!78 = !{ptr @.str.22, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/staging/vt6656/main_usb.c", i32 135, i32 2}
!80 = !{ptr @.str.23, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @vnt_firmware_branch_to_sram.__UNIQUE_ID_ddebug394, !79, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!82 = !{ptr @vt6656_table, !83, !"vt6656_table", i1 false, i1 false}
!83 = !{!"../drivers/staging/vt6656/main_usb.c", i32 73, i32 35}
!84 = !{ptr @.str.24, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/staging/vt6656/main_usb.c", i32 1104, i32 11}
!86 = !{ptr @vt6656_driver, !87, !"vt6656_driver", i1 false, i1 false}
!87 = !{!"../drivers/staging/vt6656/main_usb.c", i32 1103, i32 26}
!88 = !{ptr @.str.25, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/staging/vt6656/main_usb.c", i32 1005, i32 2}
!90 = !{ptr @.str.26, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.27, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @vt6656_probe._entry, !89, !"_entry", i1 false, i1 false}
!93 = !{ptr @vt6656_probe._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.28, !89, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.29, !89, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.31, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/staging/vt6656/main_usb.c", i32 1007, i32 2}
!98 = !{ptr @vt6656_probe._entry.30, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @vt6656_probe._entry_ptr.32, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.34, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/staging/vt6656/main_usb.c", i32 1012, i32 3}
!102 = !{ptr @vt6656_probe._entry.33, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @vt6656_probe._entry_ptr.35, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @vt6656_probe.__key, !105, !"__key", i1 false, i1 false}
!105 = !{!"../drivers/staging/vt6656/main_usb.c", i32 1024, i32 2}
!106 = !{ptr @.str.36, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @vt6656_probe.__key.37, !108, !"__key", i1 false, i1 false}
!108 = !{!"../drivers/staging/vt6656/main_usb.c", i32 1025, i32 2}
!109 = !{ptr @.str.38, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @vt6656_probe.__key.39, !111, !"__key", i1 false, i1 false}
!111 = !{!"../drivers/staging/vt6656/main_usb.c", i32 1027, i32 2}
!112 = !{ptr @.str.40, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @vt6656_probe.__key.41, !111, !"__key", i1 false, i1 false}
!114 = !{ptr @.str.42, !111, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.44, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/staging/vt6656/main_usb.c", i32 1053, i32 3}
!117 = !{ptr @.str.45, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @vt6656_probe._entry.43, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @vt6656_probe._entry_ptr.46, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @vnt_mac_ops, !121, !"vnt_mac_ops", i1 false, i1 false}
!121 = !{!"../drivers/staging/vt6656/main_usb.c", i32 958, i32 35}
!122 = !{ptr @.str.47, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/staging/vt6656/main_usb.c", i32 579, i32 3}
!124 = !{ptr @.str.48, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @vnt_start.__UNIQUE_ID_ddebug407, !123, !"__UNIQUE_ID_ddebug407", i1 false, i1 false}
!126 = !{ptr @.str.49, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/staging/vt6656/main_usb.c", i32 587, i32 3}
!128 = !{ptr @vnt_start.__UNIQUE_ID_ddebug408, !127, !"__UNIQUE_ID_ddebug408", i1 false, i1 false}
!129 = !{ptr @init_usb_anchor.__key, !130, !"__key", i1 false, i1 false}
!130 = !{!"../include/linux/usb.h", i32 1367, i32 2}
!131 = !{ptr @.str.50, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @init_usb_anchor.__key.51, !133, !"__key", i1 false, i1 false}
!133 = !{!"../include/linux/usb.h", i32 1368, i32 2}
!134 = !{ptr @.str.52, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.53, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/staging/vt6656/main_usb.c", i32 762, i32 3}
!137 = !{ptr @.str.54, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @vnt_bss_info_changed.__UNIQUE_ID_ddebug409, !136, !"__UNIQUE_ID_ddebug409", i1 false, i1 false}
!139 = !{ptr @.str.55, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/staging/vt6656/main_usb.c", i32 800, i32 3}
!141 = !{ptr @vnt_bss_info_changed.__UNIQUE_ID_ddebug410, !140, !"__UNIQUE_ID_ddebug410", i1 false, i1 false}
!142 = !{ptr @.str.56, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/staging/vt6656/main_usb.c", i32 873, i32 2}
!144 = !{ptr @.str.57, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @vnt_configure.__UNIQUE_ID_ddebug411, !143, !"__UNIQUE_ID_ddebug411", i1 false, i1 false}
!146 = !{ptr @.str.58, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/staging/vt6656/main_usb.c", i32 897, i32 2}
!148 = !{ptr @vnt_configure.__UNIQUE_ID_ddebug412, !147, !"__UNIQUE_ID_ddebug412", i1 false, i1 false}
!149 = !{i32 1, !"wchar_size", i32 2}
!150 = !{i32 1, !"min_enum_size", i32 4}
!151 = !{i32 8, !"branch-target-enforcement", i32 0}
!152 = !{i32 8, !"sign-return-address", i32 0}
!153 = !{i32 8, !"sign-return-address-all", i32 0}
!154 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!155 = !{i32 7, !"uwtable", i32 1}
!156 = !{i32 7, !"frame-pointer", i32 2}
!157 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!158 = !{!"auto-init"}
!159 = !{i64 2148873066, i64 2148873071, i64 2148873084, i64 2148873128, i64 2148873162, i64 2148873183}
!160 = !{i8 0, i8 2}
