; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/wl3501_cs.c_pt.bc'
source_filename = "../drivers/net/wireless/wl3501_cs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pcmcia_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pcmcia_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pcmcia_dynids = type { %struct.mutex, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pcmcia_device_id = type { i16, i16, i16, i8, i8, i8, [4 x i32], [4 x ptr], i32, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iw_handler_def = type { ptr, i16, i16, i16, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.wl3501_md_req = type { i16, i8, i8, i16, i16, i8, i8, %struct.anon.130 }
%struct.anon.130 = type { [6 x i8], [6 x i8] }
%struct.anon.131 = type { i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pcmcia_device = type { ptr, ptr, i8, i8, ptr, %struct.list_head, i32, [6 x ptr], i32, i32, i32, i32, i32, i32, i32, i16, i8, i16, i16, [4 x ptr], i64, %struct.device, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.104, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.128, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.104 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.128 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.wl3501_scan_req = type { i16, i8, i8, i16, i16, i16, [14 x i8], [6 x i8], %struct.iw_mgmt_essid_pset, i32 }
%struct.iw_mgmt_essid_pset = type { %struct.iw_mgmt_info_element, [32 x i8] }
%struct.iw_mgmt_info_element = type { i8, i8, [0 x i8] }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.wl3501_card = type { i32, [6 x i8], %struct.spinlock, %struct.wait_queue_head, %struct.wl3501_get_confirm, %struct.wl3501_pwr_mgmt_confirm, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, %struct.iw_mgmt_essid_pset, %struct.iw_mgmt_essid_pset, [6 x i8], i32, [32 x i8], [32 x i8], [32 x i8], i8, i8, i16, i16, i16, i8, i8, i8, [2 x i8], [20 x %struct.wl3501_scan_confirm], %struct.iw_statistics, %struct.iw_spy_data, %struct.iw_public_data, ptr }
%struct.wl3501_get_confirm = type { i16, i8, i8, i16, i16, [100 x i8] }
%struct.wl3501_pwr_mgmt_confirm = type { i16, i8, i8, i16 }
%struct.wl3501_scan_confirm = type { i16, i8, i8, i16, [8 x i8], [8 x i8], %struct.wl3501_req, i8 }
%struct.wl3501_req = type { i16, i16, i16, i8, [6 x i8], %struct.iw_mgmt_essid_pset, %struct.iw_mgmt_ds_pset, %struct.iw_mgmt_cf_pset, %struct.iw_mgmt_ibss_pset, %struct.iw_mgmt_data_rset }
%struct.iw_mgmt_ds_pset = type { %struct.iw_mgmt_info_element, i8 }
%struct.iw_mgmt_cf_pset = type { %struct.iw_mgmt_info_element, i8, i8, i16, i16 }
%struct.iw_mgmt_ibss_pset = type { %struct.iw_mgmt_info_element, i16 }
%struct.iw_mgmt_data_rset = type { %struct.iw_mgmt_info_element, [8 x i8] }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.iw_spy_data = type { i32, [8 x [6 x i8]], [8 x %struct.iw_quality], %struct.iw_quality, %struct.iw_quality, [8 x i8] }
%struct.iw_public_data = type { ptr, ptr }
%struct.iw_freq = type { i32, i16, i8, i8 }
%struct.iw_param = type { i32, i8, i8, i16 }
%struct.iw_point = type { ptr, i16, i16 }
%struct.iw_range = type { i32, i32, i32, i16, i8, i8, [6 x i32], i32, %struct.iw_quality, %struct.iw_quality, i8, [32 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [8 x i16], i8, i8, i8, i16, i8, [8 x i32], i8, i8, i16, i16, i16, i32, i32, i32, i32, i16, i8, [32 x %struct.iw_freq], i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.iw_event = type { i16, i16, %union.iwreq_data }
%union.iwreq_data = type { %struct.iw_point, [8 x i8] }
%struct.wl3501_get_req = type { i16, i8, i8, i16 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.wl3501_resync_req = type { i16, i8 }
%struct.wl3501_md_ind = type { i16, i8, i8, i16, i16, i8, i8, i8, %struct.anon.132 }
%struct.anon.132 = type { [6 x i8], [6 x i8] }
%struct.wl3501_md_confirm = type { i16, i8, i8, i16, i8, i8, i8 }
%struct.wl3501_start_confirm = type { i16, i8, i8, i16 }
%struct.wl3501_start_req = type <{ i16, i8, i8, i16, i16, i16, i16, %struct.iw_mgmt_essid_pset, %struct.iw_mgmt_data_rset, %struct.iw_mgmt_data_rset, %struct.iw_mgmt_cf_pset, %struct.iw_mgmt_ds_pset, %struct.iw_mgmt_ibss_pset, i8 }>
%struct.wl3501_join_req = type { i16, i8, i8, %struct.iw_mgmt_data_rset, i16, i16, i16, [8 x i8], [8 x i8], %struct.wl3501_req }
%struct.wl3501_auth_req = type { i16, i8, i8, i16, i16, [6 x i8] }
%struct.wl3501_join_confirm = type { i16, i8, i8, i16 }
%struct.wl3501_assoc_confirm = type { i16, i8, i8, i16 }
%struct.wl3501_assoc_req = type { i16, i8, i8, i16, i16, i16, [6 x i8] }
%struct.wl3501_auth_confirm = type { i16, i8, i8, i16, i16, [6 x i8] }
%struct.wl3501_pwr_mgmt_req = type { i16, i8, i8, i8, i8 }

@__initcall__kmod_wl3501_cs__364_2024_wl3501_driver_init6 = internal global ptr @wl3501_driver_init, section ".initcall6.init", align 4
@wl3501_driver = internal global { %struct.pcmcia_driver, [52 x i8] } { %struct.pcmcia_driver { ptr @.str, ptr @wl3501_probe, ptr @wl3501_detach, ptr @wl3501_suspend, ptr @wl3501_resume, ptr null, ptr @wl3501_ids, %struct.device_driver zeroinitializer, %struct.pcmcia_dynids zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@__exitcall_wl3501_driver_exit = internal global ptr @wl3501_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author365 = internal constant [148 x i8] c"wl3501_cs.author=Fox Chen <mhchen@golf.ccl.itri.org.tw>, Arnaldo Carvalho de Melo <acme@conectiva.com.br>,Gustavo Niemeyer <niemeyer@conectiva.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description366 = internal constant [52 x i8] c"wl3501_cs.description=Planet wl3501 wireless driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file367 = internal constant [46 x i8] c"wl3501_cs.file=drivers/net/wireless/wl3501_cs\00", section ".modinfo", align 1
@__UNIQUE_ID_license368 = internal constant [22 x i8] c"wl3501_cs.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wl3501_cs\00", [22 x i8] zeroinitializer }, align 32
@wl3501_ids = internal constant { [2 x %struct.pcmcia_device_id], [56 x i8] } { [2 x %struct.pcmcia_device_id] [%struct.pcmcia_device_id { i16 3, i16 -10751, i16 1, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@wl3501_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @wl3501_open, ptr @wl3501_close, ptr @wl3501_hard_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wl3501_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@wl3501_handler_def = internal constant { %struct.iw_handler_def, [40 x i8] } { %struct.iw_handler_def { ptr @wl3501_handler, i16 46, i16 0, i16 0, ptr null, ptr null, ptr @wl3501_get_wireless_stats }, [40 x i8] zeroinitializer }, align 32
@wl3501_open.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wl3501_open\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/net/wireless/wl3501_cs.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Initialize WL3501 firmware...\00", [62 x i8] zeroinitializer }, align 32
@wl3501_open.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 1, i8 85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: WL3501 opened\00", [46 x i8] zeroinitializer }, align 32
@wl3501_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 1371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s: Card Name: %s\0A%s: Firmware Date: %s\0A\00", [53 x i8] zeroinitializer }, align 32
@wl3501_open._entry_ptr = internal global ptr @wl3501_open._entry, section ".printk_index", align 4
@wl3501_open._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 1376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014%s: Can't initialize firmware!\0A\00", [62 x i8] zeroinitializer }, align 32
@wl3501_open._entry_ptr.8 = internal global ptr @wl3501_open._entry.6, section ".printk_index", align 4
@wl3501_init_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 1226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\014%s: failed!\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wl3501_init_firmware\00", [43 x i8] zeroinitializer }, align 32
@wl3501_init_firmware._entry_ptr = internal global ptr @wl3501_init_firmware._entry, section ".printk_index", align 4
@wl3501_reset_board._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 1175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014%s: failed to reset the board!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wl3501_reset_board\00", [45 x i8] zeroinitializer }, align 32
@wl3501_reset_board._entry_ptr = internal global ptr @wl3501_reset_board._entry, section ".printk_index", align 4
@wl3501_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 1247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016%s: WL3501 closed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wl3501_close\00", [19 x i8] zeroinitializer }, align 32
@wl3501_close._entry_ptr = internal global ptr @wl3501_close._entry, section ".printk_index", align 4
@__const.wl3501_send_pkt.sig = private unnamed_addr constant %struct.wl3501_md_req { i16 0, i8 43, i8 0, i16 0, i16 0, i8 0, i8 0, %struct.anon.130 zeroinitializer }, align 2
@__const.wl3501_send_pkt.addr4 = private unnamed_addr constant [6 x i8] c"\AA\AA\03\00\00\00", align 1
@wl3501_tx_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 1301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: Error %d resetting card on Tx timeout!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wl3501_tx_timeout\00", [46 x i8] zeroinitializer }, align 32
@wl3501_tx_timeout._entry_ptr = internal global ptr @wl3501_tx_timeout._entry, section ".printk_index", align 4
@wl3501_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 1271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014%s: Can't initialize Firmware!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wl3501_reset\00", [19 x i8] zeroinitializer }, align 32
@wl3501_reset._entry_ptr = internal global ptr @wl3501_reset._entry, section ".printk_index", align 4
@wl3501_reset.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 1, i8 65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: device reset\00", [47 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@wl3501_handler = internal constant { [46 x ptr], [40 x i8] } { [46 x ptr] [ptr null, ptr @wl3501_get_name, ptr null, ptr null, ptr @wl3501_set_freq, ptr @wl3501_get_freq, ptr @wl3501_set_mode, ptr @wl3501_get_mode, ptr null, ptr @wl3501_get_sens, ptr null, ptr @wl3501_get_range, ptr null, ptr null, ptr null, ptr null, ptr @iw_handler_set_spy, ptr @iw_handler_get_spy, ptr @iw_handler_set_thrspy, ptr @iw_handler_get_thrspy, ptr @wl3501_set_wap, ptr @wl3501_get_wap, ptr null, ptr null, ptr @wl3501_set_scan, ptr @wl3501_get_scan, ptr @wl3501_set_essid, ptr @wl3501_get_essid, ptr @wl3501_set_nick, ptr @wl3501_get_nick, ptr null, ptr null, ptr null, ptr @wl3501_get_rate, ptr null, ptr @wl3501_get_rts_threshold, ptr null, ptr @wl3501_get_frag_threshold, ptr null, ptr @wl3501_get_txpow, ptr null, ptr @wl3501_get_retry, ptr null, ptr @wl3501_get_encode, ptr null, ptr @wl3501_get_power], [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IEEE 802.11-DS\00", [17 x i8] zeroinitializer }, align 32
@iw_channel_table = internal constant { [8 x %struct.anon.131], [32 x i8] } { [8 x %struct.anon.131] [%struct.anon.131 { i32 16, i32 1, i32 11, i32 1 }, %struct.anon.131 { i32 32, i32 1, i32 11, i32 1 }, %struct.anon.131 { i32 48, i32 1, i32 13, i32 1 }, %struct.anon.131 { i32 49, i32 10, i32 11, i32 10 }, %struct.anon.131 { i32 50, i32 10, i32 13, i32 10 }, %struct.anon.131 { i32 64, i32 14, i32 14, i32 14 }, %struct.anon.131 { i32 65, i32 1, i32 14, i32 1 }, %struct.anon.131 { i32 80, i32 3, i32 9, i32 9 }], [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ANY\00", [28 x i8] zeroinitializer }, align 32
@wl3501_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 1933, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015wl3501_cs: register_netdev() failed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wl3501_config\00", [18 x i8] zeroinitializer }, align 32
@wl3501_config._entry_ptr = internal global ptr @wl3501_config._entry, section ".printk_index", align 4
@wl3501_config._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 1943, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014%s: Can't read MAC addr in flash ROM?\0A\00", [55 x i8] zeroinitializer }, align 32
@wl3501_config._entry_ptr.26 = internal global ptr @wl3501_config._entry.24, section ".printk_index", align 4
@wl3501_config._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.2, i32 1954, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016%s: wl3501 @ 0x%3.3x, IRQ %d, MAC addr in flash ROM:%pM\0A\00", [37 x i8] zeroinitializer }, align 32
@wl3501_config._entry_ptr.29 = internal global ptr @wl3501_config._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Planet WL3501\00", [18 x i8] zeroinitializer }, align 32
@wl3501_config.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&this->lock\00", [20 x i8] zeroinitializer }, align 32
@wl3501_config.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&this->wait\00", [20 x i8] zeroinitializer }, align 32
@wl3501_rx_interrupt.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 1, i8 7, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wl3501_rx_interrupt\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"entry\00", [26 x i8] zeroinitializer }, align 32
@wl3501_alarm_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 932, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016Wireless LAN offline\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wl3501_alarm_interrupt\00", [41 x i8] zeroinitializer }, align 32
@wl3501_alarm_interrupt._entry_ptr = internal global ptr @wl3501_alarm_interrupt._entry, section ".printk_index", align 4
@wl3501_md_confirm_interrupt.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.35, i8 0, i8 -20, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wl3501_md_confirm_interrupt\00", [36 x i8] zeroinitializer }, align 32
@wl3501_md_ind_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 972, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016Unsupported packet type!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wl3501_md_ind_interrupt\00", [40 x i8] zeroinitializer }, align 32
@wl3501_md_ind_interrupt._entry_ptr = internal global ptr @wl3501_md_ind_interrupt._entry, section ".printk_index", align 4
@wl3501_md_ind_interrupt._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 981, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014%s: Can't alloc a sk_buff of size %d.\0A\00", [55 x i8] zeroinitializer }, align 32
@wl3501_md_ind_interrupt._entry_ptr.43 = internal global ptr @wl3501_md_ind_interrupt._entry.41, section ".printk_index", align 4
@wl3501_get_confirm_interrupt.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.35, i8 0, i8 -6, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wl3501_get_confirm_interrupt\00", [35 x i8] zeroinitializer }, align 32
@wl3501_start_confirm_interrupt.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.35, i8 0, i8 -3, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"wl3501_start_confirm_interrupt\00", [33 x i8] zeroinitializer }, align 32
@wl3501_mgmt_scan_confirm.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.35, i8 0, i8 -90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wl3501_mgmt_scan_confirm\00", [39 x i8] zeroinitializer }, align 32
@wl3501_mgmt_scan_confirm.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 0, i8 -89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"success\00", [24 x i8] zeroinitializer }, align 32
@wl3501_mgmt_scan_confirm.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.48, i8 0, i8 -80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"timeout\00", [24 x i8] zeroinitializer }, align 32
@wl3501_mgmt_join_confirm.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.35, i8 0, i8 -35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wl3501_mgmt_join_confirm\00", [39 x i8] zeroinitializer }, align 32
@wl3501_mgmt_auth.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.35, i8 0, i8 -41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wl3501_mgmt_auth\00", [47 x i8] zeroinitializer }, align 32
@wl3501_online._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 839, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s: Wireless LAN online. BSSID: %pM\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wl3501_online\00", [18 x i8] zeroinitializer }, align 32
@wl3501_online._entry_ptr = internal global ptr @wl3501_online._entry, section ".printk_index", align 4
@wl3501_assoc_confirm_interrupt.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.35, i8 1, i8 0, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"wl3501_assoc_confirm_interrupt\00", [33 x i8] zeroinitializer }, align 32
@wl3501_auth_confirm_interrupt.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.35, i8 1, i8 3, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wl3501_auth_confirm_interrupt\00", [34 x i8] zeroinitializer }, align 32
@wl3501_mgmt_association.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.35, i8 0, i8 -38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wl3501_mgmt_association\00", [40 x i8] zeroinitializer }, align 32
@wl3501_pwr_mgmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016%s: %s status=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wl3501_pwr_mgmt\00", [16 x i8] zeroinitializer }, align 32
@wl3501_pwr_mgmt._entry_ptr = internal global ptr @wl3501_pwr_mgmt._entry, section ".printk_index", align 4
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"suspend\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"resume\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 8, i64 16, i64 32, i64 48, i64 49, i64 50, i64 64, i64 65, i64 80]
@__sancov_gen_cov_switch_values.60 = internal global [10 x i64] [i64 8, i64 8, i64 16, i64 32, i64 48, i64 49, i64 50, i64 64, i64 65, i64 80]
@__sancov_gen_cov_switch_values.61 = internal global [15 x i64] [i64 13, i64 8, i64 0, i64 1, i64 2, i64 3, i64 5, i64 8, i64 10, i64 11, i64 12, i64 13, i64 16, i64 18, i64 19]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 2]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@___asan_gen_.65 = private unnamed_addr constant [14 x i8] c"wl3501_driver\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 2015, i32 29 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 2017, i32 11 }
@___asan_gen_.71 = private unnamed_addr constant [11 x i8] c"wl3501_ids\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 2009, i32 38 }
@___asan_gen_.74 = private unnamed_addr constant [18 x i8] c"wl3501_netdev_ops\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1852, i32 36 }
@___asan_gen_.77 = private unnamed_addr constant [19 x i8] c"wl3501_handler_def\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1846, i32 36 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1355, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1367, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1368, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1376, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1226, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1175, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1247, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1300, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1270, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1285, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [15 x i8] c"wl3501_handler\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1817, i32 25 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1444, i32 22 }
@___asan_gen_.158 = private unnamed_addr constant [17 x i8] c"iw_channel_table\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 84, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1628, i32 24 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1933, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1942, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1951, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1968, i32 22 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1969, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1970, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1052, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 932, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 944, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 972, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 980, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1000, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1012, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 665, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 668, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 704, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 885, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 861, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 838, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1024, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1036, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 875, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.284 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.285 = private constant [36 x i8] c"../drivers/net/wireless/wl3501_cs.c\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 447, i32 4 }
@llvm.compiler.used = appending global [96 x ptr] [ptr @__UNIQUE_ID_author365, ptr @__UNIQUE_ID_description366, ptr @__UNIQUE_ID_file367, ptr @__UNIQUE_ID_license368, ptr @__exitcall_wl3501_driver_exit, ptr @__initcall__kmod_wl3501_cs__364_2024_wl3501_driver_init6, ptr @wl3501_alarm_interrupt._entry, ptr @wl3501_alarm_interrupt._entry_ptr, ptr @wl3501_close._entry, ptr @wl3501_close._entry_ptr, ptr @wl3501_config._entry, ptr @wl3501_config._entry.24, ptr @wl3501_config._entry.27, ptr @wl3501_config._entry_ptr, ptr @wl3501_config._entry_ptr.26, ptr @wl3501_config._entry_ptr.29, ptr @wl3501_driver_exit, ptr @wl3501_init_firmware._entry, ptr @wl3501_init_firmware._entry_ptr, ptr @wl3501_md_ind_interrupt._entry, ptr @wl3501_md_ind_interrupt._entry.41, ptr @wl3501_md_ind_interrupt._entry_ptr, ptr @wl3501_md_ind_interrupt._entry_ptr.43, ptr @wl3501_online._entry, ptr @wl3501_online._entry_ptr, ptr @wl3501_open._entry, ptr @wl3501_open._entry.6, ptr @wl3501_open._entry_ptr, ptr @wl3501_open._entry_ptr.8, ptr @wl3501_pwr_mgmt._entry, ptr @wl3501_pwr_mgmt._entry_ptr, ptr @wl3501_reset._entry, ptr @wl3501_reset._entry_ptr, ptr @wl3501_reset_board._entry, ptr @wl3501_reset_board._entry_ptr, ptr @wl3501_tx_timeout._entry, ptr @wl3501_tx_timeout._entry_ptr, ptr @wl3501_driver, ptr @.str, ptr @wl3501_ids, ptr @wl3501_netdev_ops, ptr @wl3501_handler_def, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @wl3501_handler, ptr @.str.20, ptr @iw_channel_table, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @wl3501_config.__key, ptr @.str.31, ptr @wl3501_config.__key.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl3501_driver to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl3501_ids to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl3501_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl3501_handler_def to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl3501_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl3501_open._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl3501_init_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl3501_reset_board._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl3501_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl3501_tx_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl3501_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl3501_handler to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iw_channel_table to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl3501_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl3501_config._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl3501_config._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl3501_config.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl3501_config.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl3501_alarm_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl3501_md_ind_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl3501_md_ind_interrupt._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl3501_online._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl3501_pwr_mgmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wl3501_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pcmcia_register_driver(ptr noundef nonnull @wl3501_driver) #15
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wl3501_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @pcmcia_unregister_driver(ptr noundef nonnull @wl3501_driver) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl3501_probe(ptr noundef %p_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 7
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resource, align 4
  %end = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16, ptr %end, align 4
  %3 = load ptr, ptr %resource, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %flags, align 4
  %config_flags = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 10
  %5 = ptrtoint ptr %config_flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %config_flags, align 4
  %config_index = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 12
  %6 = ptrtoint ptr %config_index to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %config_index, align 4
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 2500, i32 noundef 1, i32 noundef 1) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %7 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @wl3501_netdev_ops, ptr %netdev_ops, align 8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 115
  %8 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 500, ptr %watchdog_timeo, align 4
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %spy_data = getelementptr i8, ptr %call, i32 4692
  %wireless_data = getelementptr i8, ptr %call, i32 4792
  %9 = ptrtoint ptr %wireless_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %spy_data, ptr %wireless_data, align 4
  %p_dev5 = getelementptr i8, ptr %call, i32 4800
  %10 = ptrtoint ptr %p_dev5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %p_dev, ptr %p_dev5, align 4
  %wireless_data7 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 43
  %11 = ptrtoint ptr %wireless_data7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %wireless_data, ptr %wireless_data7, align 4
  %wireless_handlers = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 42
  %12 = ptrtoint ptr %wireless_handlers to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @wl3501_handler_def, ptr %wireless_handlers, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 103
  %13 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %14, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 22
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call, ptr %priv, align 8
  %io_lines.i = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 14
  %16 = ptrtoint ptr %io_lines.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 5, ptr %io_lines.i, align 4
  %arrayidx5.i = getelementptr %struct.pcmcia_device, ptr %p_dev, i32 0, i32 7, i32 1
  %17 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %resource, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 640, ptr %18, align 4
  %20 = load ptr, ptr %resource, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %add.i = add i32 %22, 16
  %23 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx5.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add.i, ptr %24, align 4
  %call.i = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7.i = icmp eq i32 %call.i, 0
  br i1 %cmp7.i, label %if.end.if.end11.i_crit_edge, label %for.cond.i

if.end.if.end11.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.i

for.cond.i:                                       ; preds = %if.end
  %26 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %resource, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 672, ptr %27, align 4
  %29 = load ptr, ptr %resource, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %add.1.i = add i32 %31, 16
  %32 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx5.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add.1.i, ptr %33, align 4
  %call.1.i = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp7.1.i = icmp eq i32 %call.1.i, 0
  br i1 %cmp7.1.i, label %for.cond.i.if.end11.i_crit_edge, label %for.cond.1.i

for.cond.i.if.end11.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.i

for.cond.1.i:                                     ; preds = %for.cond.i
  %35 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %resource, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 704, ptr %36, align 4
  %38 = load ptr, ptr %resource, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %add.2.i = add i32 %40, 16
  %41 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx5.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add.2.i, ptr %42, align 4
  %call.2.i = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %cmp7.2.i = icmp eq i32 %call.2.i, 0
  br i1 %cmp7.2.i, label %for.cond.1.i.if.end11.i_crit_edge, label %for.cond.2.i

for.cond.1.i.if.end11.i_crit_edge:                ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.i

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %44 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %resource, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 736, ptr %45, align 4
  %47 = load ptr, ptr %resource, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %add.3.i = add i32 %49, 16
  %50 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx5.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add.3.i, ptr %51, align 4
  %call.3.i = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %cmp7.3.i = icmp eq i32 %call.3.i, 0
  br i1 %cmp7.3.i, label %for.cond.2.i.if.end11.i_crit_edge, label %for.cond.3.i

for.cond.2.i.if.end11.i_crit_edge:                ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.i

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %53 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %resource, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 768, ptr %54, align 4
  %56 = load ptr, ptr %resource, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %add.4.i = add i32 %58, 16
  %59 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx5.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %add.4.i, ptr %60, align 4
  %call.4.i = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %cmp7.4.i = icmp eq i32 %call.4.i, 0
  br i1 %cmp7.4.i, label %for.cond.3.i.if.end11.i_crit_edge, label %for.cond.4.i

for.cond.3.i.if.end11.i_crit_edge:                ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.i

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %62 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %resource, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 800, ptr %63, align 4
  %65 = load ptr, ptr %resource, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 4
  %add.5.i = add i32 %67, 16
  %68 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx5.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %add.5.i, ptr %69, align 4
  %call.5.i = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i)
  %cmp7.5.i = icmp eq i32 %call.5.i, 0
  br i1 %cmp7.5.i, label %for.cond.4.i.if.end11.i_crit_edge, label %for.cond.5.i

for.cond.4.i.if.end11.i_crit_edge:                ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.i

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %71 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %resource, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 832, ptr %72, align 4
  %74 = load ptr, ptr %resource, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 4
  %add.6.i = add i32 %76, 16
  %77 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx5.i, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %add.6.i, ptr %78, align 4
  %call.6.i = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6.i)
  %cmp7.6.i = icmp eq i32 %call.6.i, 0
  br i1 %cmp7.6.i, label %for.cond.5.i.if.end11.i_crit_edge, label %for.cond.6.i

for.cond.5.i.if.end11.i_crit_edge:                ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.i

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %80 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %resource, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 864, ptr %81, align 4
  %83 = load ptr, ptr %resource, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 4
  %add.7.i = add i32 %85, 16
  %86 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx5.i, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %add.7.i, ptr %87, align 4
  %call.7.i = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7.i)
  %cmp7.7.i = icmp eq i32 %call.7.i, 0
  br i1 %cmp7.7.i, label %for.cond.6.i.if.end11.i_crit_edge, label %for.cond.7.i

for.cond.6.i.if.end11.i_crit_edge:                ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.i

for.cond.7.i:                                     ; preds = %for.cond.6.i
  %89 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %resource, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 896, ptr %90, align 4
  %92 = load ptr, ptr %resource, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %92, align 4
  %add.8.i = add i32 %94, 16
  %95 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx5.i, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %add.8.i, ptr %96, align 4
  %call.8.i = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.8.i)
  %cmp7.8.i = icmp eq i32 %call.8.i, 0
  br i1 %cmp7.8.i, label %for.cond.7.i.if.end11.i_crit_edge, label %for.cond.8.i

for.cond.7.i.if.end11.i_crit_edge:                ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.i

for.cond.8.i:                                     ; preds = %for.cond.7.i
  %98 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %resource, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 928, ptr %99, align 4
  %101 = load ptr, ptr %resource, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %101, align 4
  %add.9.i = add i32 %103, 16
  %104 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx5.i, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %add.9.i, ptr %105, align 4
  %call.9.i = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.9.i)
  %cmp7.9.i = icmp eq i32 %call.9.i, 0
  br i1 %cmp7.9.i, label %for.cond.8.i.if.end11.i_crit_edge, label %for.cond.9.i

for.cond.8.i.if.end11.i_crit_edge:                ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.i

for.cond.9.i:                                     ; preds = %for.cond.8.i
  %107 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %resource, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 960, ptr %108, align 4
  %110 = load ptr, ptr %resource, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %110, align 4
  %add.10.i = add i32 %112, 16
  %113 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx5.i, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %add.10.i, ptr %114, align 4
  %call.10.i = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.10.i)
  %cmp7.10.i = icmp eq i32 %call.10.i, 0
  br i1 %cmp7.10.i, label %for.cond.9.i.if.end11.i_crit_edge, label %for.cond.10.i

for.cond.9.i.if.end11.i_crit_edge:                ; preds = %for.cond.9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.i

for.cond.10.i:                                    ; preds = %for.cond.9.i
  %116 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %resource, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 992, ptr %117, align 4
  %119 = load ptr, ptr %resource, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %119, align 4
  %add.11.i = add i32 %121, 16
  %122 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx5.i, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %add.11.i, ptr %123, align 4
  %call.11.i = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.11.i)
  %cmp7.11.i = icmp eq i32 %call.11.i, 0
  br i1 %cmp7.11.i, label %for.cond.10.i.if.end11.i_crit_edge, label %for.cond.10.i.failed.i_crit_edge

for.cond.10.i.failed.i_crit_edge:                 ; preds = %for.cond.10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %failed.i

for.cond.10.i.if.end11.i_crit_edge:               ; preds = %for.cond.10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.i

if.end11.i:                                       ; preds = %for.cond.10.i.if.end11.i_crit_edge, %for.cond.9.i.if.end11.i_crit_edge, %for.cond.8.i.if.end11.i_crit_edge, %for.cond.7.i.if.end11.i_crit_edge, %for.cond.6.i.if.end11.i_crit_edge, %for.cond.5.i.if.end11.i_crit_edge, %for.cond.4.i.if.end11.i_crit_edge, %for.cond.3.i.if.end11.i_crit_edge, %for.cond.2.i.if.end11.i_crit_edge, %for.cond.1.i.if.end11.i_crit_edge, %for.cond.i.if.end11.i_crit_edge, %if.end.if.end11.i_crit_edge
  %call12.i = tail call i32 @pcmcia_request_irq(ptr noundef %p_dev, ptr noundef nonnull @wl3501_interrupt) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool.not.i, label %if.end14.i, label %if.end11.i.failed.i_crit_edge

if.end11.i.failed.i_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %failed.i

if.end14.i:                                       ; preds = %if.end11.i
  %call15.i = tail call i32 @pcmcia_enable_device(ptr noundef %p_dev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end14.i.failed.i_crit_edge

if.end14.i.failed.i_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %failed.i

if.end18.i:                                       ; preds = %if.end14.i
  %irq.i = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 6
  %125 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %irq.i, align 8
  %irq19.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 64
  %127 = ptrtoint ptr %irq19.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %irq19.i, align 4
  %128 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %resource, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %129, align 4
  %base_addr.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 5
  %132 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %base_addr.i, align 32
  %dev23.i = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 21
  %parent.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %133 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %dev23.i, ptr %parent.i, align 8
  %call25.i = tail call i32 @register_netdev(ptr noundef nonnull %call) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end29.i, label %do.end.i

do.end.i:                                         ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #17
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #18
  br label %failed.i

if.end29.i:                                       ; preds = %if.end18.i
  %134 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %base_addr.i, align 32
  %136 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !165
  tail call void @arm_heavy_mb() #15
  %add.i26 = add i32 %135, 1
  %and.i = and i32 %add.i26, 1048575
  %add2.i = or i32 %and.i, -18874368
  %137 = inttoptr i32 %add2.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %137, i8 56) #15, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !167
  tail call void @arm_heavy_mb() #15
  %add6.i = add i32 %135, 2
  %and7.i = and i32 %add6.i, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %138 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %138, i8 0) #15, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !168
  tail call void @arm_heavy_mb() #15
  %add13.i = add i32 %135, 3
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %139 = inttoptr i32 %add15.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %139, i8 64) #15, !srcloc !166
  %add17.i = add i32 %135, 4
  %and18.i = and i32 %add17.i, 1048575
  %add19.i = or i32 %and18.i, -18874368
  %140 = inttoptr i32 %add19.i to ptr
  %141 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %140) #15, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !170
  %mac_addr.i27 = getelementptr i8, ptr %call, i32 2308
  %142 = ptrtoint ptr %mac_addr.i27 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %141, ptr %mac_addr.i27, align 4
  %143 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %140) #15, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !171
  %arrayidx36.i = getelementptr i8, ptr %call, i32 2309
  %144 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %143, ptr %arrayidx36.i, align 1
  %145 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %140) #15, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !172
  %arrayidx51.i = getelementptr i8, ptr %call, i32 2310
  %146 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %145, ptr %arrayidx51.i, align 2
  %147 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %140) #15, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !173
  %arrayidx66.i = getelementptr i8, ptr %call, i32 2311
  %148 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %147, ptr %arrayidx66.i, align 1
  %149 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %140) #15, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !174
  %arrayidx81.i = getelementptr i8, ptr %call, i32 2312
  %150 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %149, ptr %arrayidx81.i, align 4
  %151 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %140) #15, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !175
  %arrayidx96.i = getelementptr i8, ptr %call, i32 2313
  %152 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %151, ptr %arrayidx96.i, align 1
  %153 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %140) #15, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !176
  %reg_domain.i28 = getelementptr i8, ptr %call, i32 2734
  %154 = ptrtoint ptr %reg_domain.i28 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %153, ptr %reg_domain.i28, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !177
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %137, i8 32) #15, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !178
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %138, i8 4) #15, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !179
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %139, i8 64) #15, !srcloc !166
  %155 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %140) #15, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !180
  %version.i = getelementptr i8, ptr %call, i32 2735
  %156 = ptrtoint ptr %version.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %155, ptr %version.i, align 1
  %157 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %140) #15, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !181
  %arrayidx165.i = getelementptr i8, ptr %call, i32 2736
  %158 = ptrtoint ptr %arrayidx165.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %157, ptr %arrayidx165.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  tail call void @arm_heavy_mb() #15
  %159 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %add.ptr.i, align 4
  %add.i.i = add i32 %160, 1
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %161 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %161, i8 0) #15, !srcloc !166
  %162 = ptrtoint ptr %mac_addr.i27 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %mac_addr.i27, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %cmp168.i = icmp eq i8 %163, 0
  br i1 %cmp168.i, label %wl3501_get_flash_mac_addr.exit, label %if.end29.i.do.end38.i_crit_edge

if.end29.i.do.end38.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end38.i

wl3501_get_flash_mac_addr.exit:                   ; preds = %if.end29.i
  %164 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx36.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %165)
  %cmp173.i.not = icmp eq i8 %165, 96
  br i1 %cmp173.i.not, label %if.end41.i, label %wl3501_get_flash_mac_addr.exit.do.end38.i_crit_edge

wl3501_get_flash_mac_addr.exit.do.end38.i_crit_edge: ; preds = %wl3501_get_flash_mac_addr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end38.i

do.end38.i:                                       ; preds = %wl3501_get_flash_mac_addr.exit.do.end38.i_crit_edge, %if.end29.i.do.end38.i_crit_edge
  %call40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull %call) #18
  tail call void @unregister_netdev(ptr noundef nonnull %call) #15
  br label %failed.i

if.end41.i:                                       ; preds = %wl3501_get_flash_mac_addr.exit
  tail call void @dev_addr_mod(ptr noundef nonnull %call, i32 noundef 0, ptr noundef %mac_addr.i27, i32 noundef 6) #15
  %166 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %add.ptr.i, align 4
  %168 = ptrtoint ptr %irq19.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %irq19.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 86
  %170 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %dev_addr.i, align 64
  %call51.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull %call, i32 noundef %167, i32 noundef %169, ptr noundef %171) #18
  %net_type.i = getelementptr i8, ptr %call, i32 2624
  %172 = ptrtoint ptr %net_type.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 2, ptr %net_type.i, align 4
  %bss_cnt.i = getelementptr i8, ptr %call, i32 2728
  %173 = ptrtoint ptr %bss_cnt.i to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 0, ptr %bss_cnt.i, align 4
  %join_sta_bss.i = getelementptr i8, ptr %call, i32 2730
  %174 = ptrtoint ptr %join_sta_bss.i to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 0, ptr %join_sta_bss.i, align 2
  %adhoc_times.i = getelementptr i8, ptr %call, i32 2733
  %175 = ptrtoint ptr %adhoc_times.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 0, ptr %adhoc_times.i, align 1
  %essid.i = getelementptr i8, ptr %call, i32 2548
  %176 = ptrtoint ptr %essid.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 0, ptr %essid.i, align 1
  %len3.i.i = getelementptr i8, ptr %call, i32 2549
  %177 = ptrtoint ptr %len3.i.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 3, ptr %len3.i.i, align 1
  %data.i.i = getelementptr i8, ptr %call, i32 2550
  %178 = call ptr @memcpy(ptr %data.i.i, ptr @.str.21, i32 3)
  %card_name.i = getelementptr i8, ptr %call, i32 2660
  %179 = ptrtoint ptr %card_name.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 0, ptr %card_name.i, align 4
  %firmware_date.i = getelementptr i8, ptr %call, i32 2692
  %180 = ptrtoint ptr %firmware_date.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 0, ptr %firmware_date.i, align 4
  %rssi.i = getelementptr i8, ptr %call, i32 2732
  %181 = ptrtoint ptr %rssi.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 -1, ptr %rssi.i, align 4
  %182 = ptrtoint ptr %reg_domain.i28 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %reg_domain.i28, align 2
  %184 = zext i8 %183 to i64
  call void @__sanitizer_cov_trace_switch(i64 %184, ptr @__sancov_gen_cov_switch_values)
  switch i8 %183, label %if.end41.i.iw_default_channel.exit_crit_edge [
    i8 16, label %if.end41.i.if.then.i_crit_edge
    i8 32, label %if.then.fold.split.i
    i8 48, label %if.then.fold.split10.i
    i8 49, label %if.then.fold.split11.i
    i8 50, label %if.then.fold.split12.i
    i8 64, label %if.then.fold.split13.i
    i8 65, label %if.then.fold.split14.i
    i8 80, label %if.then.fold.split15.i
  ]

if.end41.i.if.then.i_crit_edge:                   ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.end41.i.iw_default_channel.exit_crit_edge:     ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %iw_default_channel.exit

if.then.fold.split.i:                             ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.fold.split10.i:                           ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.fold.split11.i:                           ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.fold.split12.i:                           ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.fold.split13.i:                           ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.fold.split14.i:                           ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.fold.split15.i:                           ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.fold.split15.i, %if.then.fold.split14.i, %if.then.fold.split13.i, %if.then.fold.split12.i, %if.then.fold.split11.i, %if.then.fold.split10.i, %if.then.fold.split.i, %if.end41.i.if.then.i_crit_edge
  %i.08.lcssa.i = phi i32 [ 0, %if.end41.i.if.then.i_crit_edge ], [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split10.i ], [ 3, %if.then.fold.split11.i ], [ 4, %if.then.fold.split12.i ], [ 5, %if.then.fold.split13.i ], [ 6, %if.then.fold.split14.i ], [ 7, %if.then.fold.split15.i ]
  %deflt.i = getelementptr [8 x %struct.anon.131], ptr @iw_channel_table, i32 0, i32 %i.08.lcssa.i, i32 3
  %185 = ptrtoint ptr %deflt.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %deflt.i, align 4
  %phi.cast = trunc i32 %186 to i8
  br label %iw_default_channel.exit

iw_default_channel.exit:                          ; preds = %if.then.i, %if.end41.i.iw_default_channel.exit_crit_edge
  %rc.0.i = phi i8 [ %phi.cast, %if.then.i ], [ 1, %if.end41.i.iw_default_channel.exit_crit_edge ]
  %chan.i = getelementptr i8, ptr %call, i32 2724
  %187 = ptrtoint ptr %chan.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %rc.0.i, ptr %chan.i, align 4
  %nick.i = getelementptr i8, ptr %call, i32 2628
  %call57.i = tail call i32 @strlcpy(ptr noundef %nick.i, ptr noundef nonnull @.str.30, i32 noundef 32) #15
  %lock.i = getelementptr i8, ptr %call, i32 2316
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @wl3501_config.__key, i16 noundef signext 3) #15
  %wait.i = getelementptr i8, ptr %call, i32 2360
  tail call void @__init_waitqueue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @wl3501_config.__key.32) #15
  %188 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %189, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i.i) #15
  br label %cleanup

failed.i:                                         ; preds = %do.end38.i, %do.end.i, %if.end14.i.failed.i_crit_edge, %if.end11.i.failed.i_crit_edge, %for.cond.10.i.failed.i_crit_edge
  tail call void @pcmcia_disable_device(ptr noundef %p_dev) #15
  br label %cleanup

cleanup:                                          ; preds = %failed.i, %iw_default_channel.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -19, %failed.i ], [ 0, %iw_default_channel.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wl3501_detach(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 23
  %2 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not6 = icmp eq i32 %3, 0
  br i1 %cmp.not6, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %p_dev.i = getelementptr i8, ptr %1, i32 4800
  %lock.i = getelementptr i8, ptr %1, i32 2316
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %4 = ptrtoint ptr %p_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p_dev.i, align 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #15
  %open.i = getelementptr inbounds %struct.pcmcia_device, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %open.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %open.i, align 4
  %dec.i = add i32 %7, -1
  store i32 %dec.i, ptr %open.i, align 4
  %8 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %9, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !183
  tail call void @arm_heavy_mb() #15
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %11, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %12 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 8) #15, !srcloc !166
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i.i, align 4
  %and.i19.i = and i32 %14, 1048575
  %add1.i20.i = or i32 %and.i19.i, -18874368
  %15 = inttoptr i32 %add1.i20.i to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #15, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !184
  %and3.i.i = and i8 %16, -15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !185
  tail call void @arm_heavy_mb() #15
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i.i, align 4
  %and7.i.i = and i32 %18, 1048575
  %add8.i.i = or i32 %and7.i.i, -18874368
  %19 = inttoptr i32 %add8.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %and3.i.i) #15, !srcloc !166
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %1) #18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #15
  %20 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %open, align 4
  %cmp.not = icmp eq i32 %21, 0
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @netif_device_detach(ptr noundef %1) #15
  tail call void @pcmcia_disable_device(ptr noundef %link) #15
  tail call void @unregister_netdev(ptr noundef %1) #15
  tail call void @free_netdev(ptr noundef %1) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl3501_suspend(ptr nocapture noundef readonly %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call fastcc void @wl3501_pwr_mgmt(ptr noundef %add.ptr.i, i32 noundef 1)
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 23
  %2 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @netif_device_detach(ptr noundef %1) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl3501_resume(ptr nocapture noundef readonly %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call fastcc void @wl3501_pwr_mgmt(ptr noundef %add.ptr.i, i32 noundef 0)
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 23
  %2 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call2 = tail call fastcc i32 @wl3501_reset(ptr noundef %1)
  tail call void @netif_device_attach(ptr noundef %1) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl3501_open(ptr noundef %dev) #2 align 64 {
entry:
  %sig.i = alloca %struct.wl3501_scan_req, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %p_dev = getelementptr i8, ptr %dev, i32 4800
  %0 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_dev, align 4
  %lock = getelementptr i8, ptr %dev, i32 2316
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %call6 = tail call ptr @pcmcia_dev_present(ptr noundef %1) #15
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  tail call void @netif_device_attach(ptr noundef %dev) #15
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %open, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %open, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl3501_open.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl3501_open, %if.then13)) #15
          to label %do.end16 [label %if.then13], !srcloc !186

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl3501_open.__UNIQUE_ID_ddebug358, ptr noundef nonnull @.str.3, ptr noundef %dev) #15
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %if.end
  %call17 = tail call fastcc i32 @wl3501_init_firmware(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %do.end55

if.end20:                                         ; preds = %do.end16
  %adhoc_times = getelementptr i8, ptr %dev, i32 2733
  %4 = ptrtoint ptr %adhoc_times to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %adhoc_times, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !183
  tail call void @arm_heavy_mb() #15
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %6, 1048575
  %add1.i = or i32 %and.i, -18874368
  %7 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 8) #15, !srcloc !166
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 4
  %and.i79 = and i32 %9, 1048575
  %add1.i80 = or i32 %and.i79, -18874368
  %10 = inttoptr i32 %add1.i80 to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #15, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !187
  %12 = and i8 %11, -15
  %13 = or i8 %12, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !188
  tail call void @arm_heavy_mb() #15
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i, align 4
  %and7.i = and i32 %15, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %16 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %13) #15, !srcloc !166
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %sig.i) #15
  %17 = call ptr @memset(ptr %sig.i, i32 0, i32 64)
  %sig_id.i = getelementptr inbounds %struct.wl3501_scan_req, ptr %sig.i, i32 0, i32 1
  %18 = ptrtoint ptr %sig_id.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 40, ptr %sig_id.i, align 2
  %bss_type.i = getelementptr inbounds %struct.wl3501_scan_req, ptr %sig.i, i32 0, i32 2
  %net_type.i.i = getelementptr i8, ptr %dev, i32 2624
  %19 = ptrtoint ptr %net_type.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %net_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp.i.i = icmp ne i32 %20, 2
  %conv.i = zext i1 %cmp.i.i to i8
  %21 = ptrtoint ptr %bss_type.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv.i, ptr %bss_type.i, align 1
  %probe_delay.i = getelementptr inbounds %struct.wl3501_scan_req, ptr %sig.i, i32 0, i32 3
  %22 = ptrtoint ptr %probe_delay.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 16, ptr %probe_delay.i, align 4
  %min_chan_time.i = getelementptr inbounds %struct.wl3501_scan_req, ptr %sig.i, i32 0, i32 4
  %23 = ptrtoint ptr %min_chan_time.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 100, ptr %min_chan_time.i, align 2
  %max_chan_time.i = getelementptr inbounds %struct.wl3501_scan_req, ptr %sig.i, i32 0, i32 5
  %24 = ptrtoint ptr %max_chan_time.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 100, ptr %max_chan_time.i, align 4
  %scan_type.i = getelementptr inbounds %struct.wl3501_scan_req, ptr %sig.i, i32 0, i32 9
  %25 = ptrtoint ptr %scan_type.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %scan_type.i, align 4
  %join_sta_bss.i = getelementptr i8, ptr %dev, i32 2730
  %26 = ptrtoint ptr %join_sta_bss.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %join_sta_bss.i, align 2
  %bss_cnt.i = getelementptr i8, ptr %dev, i32 2728
  %27 = ptrtoint ptr %bss_cnt.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %bss_cnt.i, align 4
  %call1.i = call fastcc i32 @wl3501_esbq_exec(ptr noundef %add.ptr.i, ptr noundef nonnull %sig.i, i32 noundef 68) #15
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %sig.i) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl3501_open.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl3501_open, %if.then35)) #15
          to label %do.end43 [label %if.then35], !srcloc !186

if.then35:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl3501_open.__UNIQUE_ID_ddebug359, ptr noundef nonnull @.str.4, ptr noundef %dev) #15
  br label %do.end43

do.end43:                                         ; preds = %if.then35, %if.end20
  %card_name = getelementptr i8, ptr %dev, i32 2660
  %firmware_date = getelementptr i8, ptr %dev, i32 2692
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %dev, ptr noundef %card_name, ptr noundef %dev, ptr noundef %firmware_date) #18
  br label %out

out:                                              ; preds = %do.end55, %do.end43, %entry.out_crit_edge
  %rc.0 = phi i32 [ -19, %do.end55 ], [ 0, %do.end43 ], [ -19, %entry.out_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #15
  ret i32 %rc.0

do.end55:                                         ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #17
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %dev) #18
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl3501_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %p_dev = getelementptr i8, ptr %dev, i32 4800
  %0 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_dev, align 4
  %lock = getelementptr i8, ptr %dev, i32 2316
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %open, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %open, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !183
  tail call void @arm_heavy_mb() #15
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %7, 1048575
  %add1.i = or i32 %and.i, -18874368
  %8 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 8) #15, !srcloc !166
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 4
  %and.i19 = and i32 %10, 1048575
  %add1.i20 = or i32 %and.i19, -18874368
  %11 = inttoptr i32 %add1.i20 to ptr
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #15, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !184
  %and3.i = and i8 %12, -15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !185
  tail call void @arm_heavy_mb() #15
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i, align 4
  %and7.i = and i32 %14, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %15 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %and3.i) #15, !srcloc !166
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %dev) #18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl3501_hard_start_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  %tmp.i.i = alloca i8, align 1
  %sig_bf.i = alloca i16, align 2
  %next.i = alloca i16, align 2
  %sig.i = alloca %struct.wl3501_md_req, align 2
  %addr4.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %lock = getelementptr i8, ptr %dev, i32 2316
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %1, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #15, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !184
  %and3.i = and i8 %3, -15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !185
  tail call void @arm_heavy_mb() #15
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %and7.i = and i32 %5, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %6 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %and3.i) #15, !srcloc !166
  %7 = and i8 %3, 2
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %conv7 = trunc i32 %11 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sig_bf.i) #15
  %12 = ptrtoint ptr %sig_bf.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %sig_bf.i, align 2, !annotation !189
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %next.i) #15
  %13 = ptrtoint ptr %next.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -1, ptr %next.i, align 2, !annotation !189
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %sig.i) #15
  %14 = call ptr @memcpy(ptr %sig.i, ptr @__const.wl3501_send_pkt.sig, i32 10)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i) #15
  %15 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %tmp.i.i, align 1
  %esbq_req_head.i.i = getelementptr i8, ptr %dev, i32 2538
  %16 = ptrtoint ptr %esbq_req_head.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %esbq_req_head.i.i, align 2
  %add.i.i = add i16 %17, 3
  %and.i.i.i = lshr i16 %add.i.i, 12
  %18 = trunc i16 %and.i.i.i to i8
  %conv1.i.i.i = and i8 %18, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  tail call void @arm_heavy_mb() #15
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i, align 4
  %add.i.i.i.i = add i32 %20, 1
  %and.i.i.i.i = and i32 %add.i.i.i.i, 1048575
  %add1.i.i.i.i = or i32 %and.i.i.i.i, -18874368
  %21 = inttoptr i32 %add1.i.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %conv1.i.i.i) #15, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  tail call void @arm_heavy_mb() #15
  %conv4.i.i.i = trunc i16 %add.i.i to i8
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i, align 4
  %add.i.i.i = add i32 %23, 2
  %and5.i.i.i = and i32 %add.i.i.i, 1048575
  %add6.i.i.i = or i32 %and5.i.i.i, -18874368
  %24 = inttoptr i32 %add6.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 %conv4.i.i.i) #15, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !191
  tail call void @arm_heavy_mb() #15
  %25 = lshr i16 %add.i.i, 8
  %26 = trunc i16 %25 to i8
  %conv11.i.i.i = and i8 %26, 127
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i, align 4
  %add13.i.i.i = add i32 %28, 3
  %and14.i.i.i = and i32 %add13.i.i.i, 1048575
  %add15.i.i.i = or i32 %and14.i.i.i, -18874368
  %29 = inttoptr i32 %add15.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 %conv11.i.i.i) #15, !srcloc !166
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i, align 4
  %add18.i.i.i = add i32 %31, 4
  %and19.i.i.i = and i32 %add18.i.i.i, 1048575
  %add20.i.i.i = or i32 %and19.i.i.i, -18874368
  %32 = inttoptr i32 %add20.i.i.i to ptr
  call void @__raw_readsb(ptr noundef nonnull %32, ptr noundef nonnull %tmp.i.i, i32 noundef 1) #15
  %33 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %tmp.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %34)
  %tobool.not.i = icmp sgt i8 %34, -1
  br i1 %tobool.not.i, label %entry.wl3501_send_pkt.exit_crit_edge, label %if.then.i

entry.wl3501_send_pkt.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %wl3501_send_pkt.exit

if.then.i:                                        ; preds = %entry
  %call1.i = call fastcc zeroext i16 @wl3501_get_tx_buffer(ptr noundef %add.ptr.i, i16 noundef zeroext 22) #15
  %35 = ptrtoint ptr %sig_bf.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %call1.i, ptr %sig_bf.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call1.i)
  %tobool2.not.i = icmp eq i16 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then.i.wl3501_send_pkt.exit_crit_edge, label %if.end.i

if.then.i.wl3501_send_pkt.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %wl3501_send_pkt.exit

if.end.i:                                         ; preds = %if.then.i
  %add4.i = add i16 %conv7, 50
  %call6.i = call fastcc zeroext i16 @wl3501_get_tx_buffer(ptr noundef %add.ptr.i, i16 noundef zeroext %add4.i) #15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call6.i)
  %tobool7.not.i = icmp eq i16 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end9.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %36 = ptrtoint ptr %sig_bf.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %sig_bf.i, align 2
  call fastcc void @wl3501_free_tx_buffer(ptr noundef %add.ptr.i, i16 noundef zeroext %37) #15
  br label %wl3501_send_pkt.exit

if.end9.i:                                        ; preds = %if.end.i
  %addr.i = getelementptr inbounds %struct.wl3501_md_req, ptr %sig.i, i32 0, i32 7
  %38 = call ptr @memcpy(ptr %addr.i, ptr %9, i32 12)
  %add.ptr.i36 = getelementptr i8, ptr %9, i32 12
  %data12.i = getelementptr inbounds %struct.wl3501_md_req, ptr %sig.i, i32 0, i32 3
  %39 = ptrtoint ptr %data12.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %call6.i, ptr %data12.i, align 2
  %40 = ptrtoint ptr %add.ptr.i36 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %add.ptr.i36, align 1
  %conv13.i = zext i8 %41 to i32
  %mul.i = shl nuw nsw i32 %conv13.i, 8
  %add.ptr14.i = getelementptr i8, ptr %9, i32 13
  %42 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %add.ptr14.i, align 1
  %conv15.i = zext i8 %43 to i32
  %add16.i = or i32 %mul.i, %conv15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %add16.i)
  %cmp.i = icmp ugt i32 %add16.i, 1500
  br i1 %cmp.i, label %if.then18.i, label %if.else44.i

if.then18.i:                                      ; preds = %if.end9.i
  %sub.i = add i16 %conv7, -12
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr4.i) #15
  %44 = call ptr @memcpy(ptr %addr4.i, ptr @__const.wl3501_send_pkt.addr4, i32 6)
  %add21.i = add i16 %call6.i, 52
  %and.i145.i = lshr i16 %add21.i, 12
  %45 = trunc i16 %and.i145.i to i8
  %conv1.i.i = and i8 %45, 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  call void @arm_heavy_mb() #15
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr.i, align 4
  %add.i.i146.i = add i32 %47, 1
  %and.i.i147.i = and i32 %add.i.i146.i, 1048575
  %add1.i.i.i = or i32 %and.i.i147.i, -18874368
  %48 = inttoptr i32 %add1.i.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 %conv1.i.i) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !192
  call void @arm_heavy_mb() #15
  %conv4.i.i = trunc i16 %add21.i to i8
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr.i, align 4
  %add.i148.i = add i32 %50, 2
  %and5.i.i = and i32 %add.i148.i, 1048575
  %add6.i.i = or i32 %and5.i.i, -18874368
  %51 = inttoptr i32 %add6.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 %conv4.i.i) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !193
  call void @arm_heavy_mb() #15
  %52 = lshr i16 %add21.i, 8
  %53 = trunc i16 %52 to i8
  %conv11.i.i = and i8 %53, 127
  %54 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr.i, align 4
  %add13.i.i = add i32 %55, 3
  %and14.i.i = and i32 %add13.i.i, 1048575
  %add15.i.i = or i32 %and14.i.i, -18874368
  %56 = inttoptr i32 %add15.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %56, i8 %conv11.i.i) #15, !srcloc !166
  %57 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %add.ptr.i, align 4
  %add18.i.i = add i32 %58, 4
  %and19.i.i = and i32 %add18.i.i, 1048575
  %add20.i.i = or i32 %and19.i.i, -18874368
  %59 = inttoptr i32 %add20.i.i to ptr
  call void @__raw_writesb(ptr noundef nonnull %59, ptr noundef nonnull %addr4.i, i32 noundef 6) #15
  %add26.i = add i16 %conv7, 22
  %size.i = getelementptr inbounds %struct.wl3501_md_req, ptr %sig.i, i32 0, i32 4
  %60 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %add26.i, ptr %size.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 198, i16 %sub.i)
  %cmp29.i = icmp ugt i16 %sub.i, 198
  %sub34.i = add i16 %conv7, -210
  %61 = call i16 @llvm.umin.i16(i16 %sub.i, i16 198) #15
  %tmplen.0.i = zext i16 %61 to i32
  %add39.i = add i16 %call6.i, 58
  %and.i149.i = lshr i16 %add39.i, 12
  %62 = trunc i16 %and.i149.i to i8
  %conv1.i150.i = and i8 %62, 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  call void @arm_heavy_mb() #15
  %63 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr.i, align 4
  %add.i.i151.i = add i32 %64, 1
  %and.i.i152.i = and i32 %add.i.i151.i, 1048575
  %add1.i.i153.i = or i32 %and.i.i152.i, -18874368
  %65 = inttoptr i32 %add1.i.i153.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %65, i8 %conv1.i150.i) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !192
  call void @arm_heavy_mb() #15
  %conv4.i154.i = trunc i16 %add39.i to i8
  %66 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr.i, align 4
  %add.i155.i = add i32 %67, 2
  %and5.i156.i = and i32 %add.i155.i, 1048575
  %add6.i157.i = or i32 %and5.i156.i, -18874368
  %68 = inttoptr i32 %add6.i157.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %68, i8 %conv4.i154.i) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !193
  call void @arm_heavy_mb() #15
  %69 = lshr i16 %add39.i, 8
  %70 = trunc i16 %69 to i8
  %conv11.i158.i = and i8 %70, 127
  %71 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %add.ptr.i, align 4
  %add13.i159.i = add i32 %72, 3
  %and14.i160.i = and i32 %add13.i159.i, 1048575
  %add15.i161.i = or i32 %and14.i160.i, -18874368
  %73 = inttoptr i32 %add15.i161.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %73, i8 %conv11.i158.i) #15, !srcloc !166
  %74 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %add.ptr.i, align 4
  %add18.i162.i = add i32 %75, 4
  %and19.i163.i = and i32 %add18.i162.i, 1048575
  %add20.i164.i = or i32 %and19.i163.i, -18874368
  %76 = inttoptr i32 %add20.i164.i to ptr
  call void @__raw_writesb(ptr noundef nonnull %76, ptr noundef %add.ptr.i36, i32 noundef %tmplen.0.i) #15
  %add.ptr43.i = getelementptr i8, ptr %add.ptr.i36, i32 %tmplen.0.i
  %and.i165.i = lshr i16 %call6.i, 12
  %77 = trunc i16 %and.i165.i to i8
  %conv1.i166.i = and i8 %77, 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  call void @arm_heavy_mb() #15
  %78 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %add.ptr.i, align 4
  %add.i.i167.i = add i32 %79, 1
  %and.i.i168.i = and i32 %add.i.i167.i, 1048575
  %add1.i.i169.i = or i32 %and.i.i168.i, -18874368
  %80 = inttoptr i32 %add1.i.i169.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %80, i8 %conv1.i166.i) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  %conv4.i170.i = trunc i16 %call6.i to i8
  %81 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %add.ptr.i, align 4
  %add.i171.i = add i32 %82, 2
  %and5.i172.i = and i32 %add.i171.i, 1048575
  %add6.i173.i = or i32 %and5.i172.i, -18874368
  %83 = inttoptr i32 %add6.i173.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %83, i8 %conv4.i170.i) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !191
  call void @arm_heavy_mb() #15
  %84 = lshr i16 %call6.i, 8
  %85 = trunc i16 %84 to i8
  %conv11.i174.i = and i8 %85, 127
  %86 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %add.ptr.i, align 4
  %add13.i175.i = add i32 %87, 3
  %and14.i176.i = and i32 %add13.i175.i, 1048575
  %add15.i177.i = or i32 %and14.i176.i, -18874368
  %88 = inttoptr i32 %add15.i177.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %88, i8 %conv11.i174.i) #15, !srcloc !166
  %89 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %add.ptr.i, align 4
  %add18.i178.i = add i32 %90, 4
  %and19.i179.i = and i32 %add18.i178.i, 1048575
  %add20.i180.i = or i32 %and19.i179.i, -18874368
  %91 = inttoptr i32 %add20.i180.i to ptr
  call void @__raw_readsb(ptr noundef nonnull %91, ptr noundef nonnull %next.i, i32 noundef 2) #15
  %92 = ptrtoint ptr %next.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %next.i, align 2
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr4.i) #15
  br i1 %cmp29.i, label %if.then18.i.if.end72.i_crit_edge, label %if.then18.i.while.end.i_crit_edge

if.then18.i.while.end.i_crit_edge:                ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

if.then18.i.if.end72.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end72.i

if.else44.i:                                      ; preds = %if.end9.i
  %sub48.i = add i16 %conv7, 14
  %size50.i = getelementptr inbounds %struct.wl3501_md_req, ptr %sig.i, i32 0, i32 4
  %94 = ptrtoint ptr %size50.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %sub48.i, ptr %size50.i, align 2
  %add.ptr51.i = getelementptr i8, ptr %9, i32 14
  %sub53.i = add i16 %conv7, -14
  call void @__sanitizer_cov_trace_const_cmp2(i16 204, i16 %sub53.i)
  %cmp56.i = icmp ugt i16 %sub53.i, 204
  %sub61.i = add i16 %conv7, -218
  %95 = call i16 @llvm.umin.i16(i16 %sub53.i, i16 204) #15
  %tmplen.1.i = zext i16 %95 to i32
  %add67.i = add i16 %call6.i, 52
  %and.i181.i = lshr i16 %add67.i, 12
  %96 = trunc i16 %and.i181.i to i8
  %conv1.i182.i = and i8 %96, 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  call void @arm_heavy_mb() #15
  %97 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %add.ptr.i, align 4
  %add.i.i183.i = add i32 %98, 1
  %and.i.i184.i = and i32 %add.i.i183.i, 1048575
  %add1.i.i185.i = or i32 %and.i.i184.i, -18874368
  %99 = inttoptr i32 %add1.i.i185.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %99, i8 %conv1.i182.i) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !192
  call void @arm_heavy_mb() #15
  %conv4.i186.i = trunc i16 %add67.i to i8
  %100 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %add.ptr.i, align 4
  %add.i187.i = add i32 %101, 2
  %and5.i188.i = and i32 %add.i187.i, 1048575
  %add6.i189.i = or i32 %and5.i188.i, -18874368
  %102 = inttoptr i32 %add6.i189.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %102, i8 %conv4.i186.i) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !193
  call void @arm_heavy_mb() #15
  %103 = lshr i16 %add67.i, 8
  %104 = trunc i16 %103 to i8
  %conv11.i190.i = and i8 %104, 127
  %105 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %add.ptr.i, align 4
  %add13.i191.i = add i32 %106, 3
  %and14.i192.i = and i32 %add13.i191.i, 1048575
  %add15.i193.i = or i32 %and14.i192.i, -18874368
  %107 = inttoptr i32 %add15.i193.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %107, i8 %conv11.i190.i) #15, !srcloc !166
  %108 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %add.ptr.i, align 4
  %add18.i194.i = add i32 %109, 4
  %and19.i195.i = and i32 %add18.i194.i, 1048575
  %add20.i196.i = or i32 %and19.i195.i, -18874368
  %110 = inttoptr i32 %add20.i196.i to ptr
  call void @__raw_writesb(ptr noundef nonnull %110, ptr noundef %add.ptr51.i, i32 noundef %tmplen.1.i) #15
  %add.ptr71.i = getelementptr i8, ptr %add.ptr51.i, i32 %tmplen.1.i
  %and.i197.i = lshr i16 %call6.i, 12
  %111 = trunc i16 %and.i197.i to i8
  %conv1.i198.i = and i8 %111, 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  call void @arm_heavy_mb() #15
  %112 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %add.ptr.i, align 4
  %add.i.i199.i = add i32 %113, 1
  %and.i.i200.i = and i32 %add.i.i199.i, 1048575
  %add1.i.i201.i = or i32 %and.i.i200.i, -18874368
  %114 = inttoptr i32 %add1.i.i201.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %114, i8 %conv1.i198.i) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  %conv4.i202.i = trunc i16 %call6.i to i8
  %115 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %add.ptr.i, align 4
  %add.i203.i = add i32 %116, 2
  %and5.i204.i = and i32 %add.i203.i, 1048575
  %add6.i205.i = or i32 %and5.i204.i, -18874368
  %117 = inttoptr i32 %add6.i205.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %117, i8 %conv4.i202.i) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !191
  call void @arm_heavy_mb() #15
  %118 = lshr i16 %call6.i, 8
  %119 = trunc i16 %118 to i8
  %conv11.i206.i = and i8 %119, 127
  %120 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %add.ptr.i, align 4
  %add13.i207.i = add i32 %121, 3
  %and14.i208.i = and i32 %add13.i207.i, 1048575
  %add15.i209.i = or i32 %and14.i208.i, -18874368
  %122 = inttoptr i32 %add15.i209.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %122, i8 %conv11.i206.i) #15, !srcloc !166
  %123 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %add.ptr.i, align 4
  %add18.i210.i = add i32 %124, 4
  %and19.i211.i = and i32 %add18.i210.i, 1048575
  %add20.i212.i = or i32 %and19.i211.i, -18874368
  %125 = inttoptr i32 %add20.i212.i to ptr
  call void @__raw_readsb(ptr noundef nonnull %125, ptr noundef nonnull %next.i, i32 noundef 2) #15
  %126 = ptrtoint ptr %next.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %next.i, align 2
  br i1 %cmp56.i, label %if.else44.i.if.end72.i_crit_edge, label %if.else44.i.while.end.i_crit_edge

if.else44.i.while.end.i_crit_edge:                ; preds = %if.else44.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

if.else44.i.if.end72.i_crit_edge:                 ; preds = %if.else44.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.else44.i.if.end72.i_crit_edge, %if.then18.i.if.end72.i_crit_edge
  %bf.0.i = phi i16 [ %93, %if.then18.i.if.end72.i_crit_edge ], [ %127, %if.else44.i.if.end72.i_crit_edge ]
  %pktlen.2.i = phi i16 [ %sub34.i, %if.then18.i.if.end72.i_crit_edge ], [ %sub61.i, %if.else44.i.if.end72.i_crit_edge ]
  %pdata.0.i = phi ptr [ %add.ptr43.i, %if.then18.i.if.end72.i_crit_edge ], [ %add.ptr71.i, %if.else44.i.if.end72.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %pktlen.2.i)
  %cmp74.not261.i = icmp eq i16 %pktlen.2.i, 0
  br i1 %cmp74.not261.i, label %if.end72.i.while.end.i_crit_edge, label %if.end72.i.while.body.i_crit_edge

if.end72.i.while.body.i_crit_edge:                ; preds = %if.end72.i
  br label %while.body.i

if.end72.i.while.end.i_crit_edge:                 ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end72.i.while.body.i_crit_edge
  %pdata.1264.i = phi ptr [ %add.ptr90.i, %while.body.i.while.body.i_crit_edge ], [ %pdata.0.i, %if.end72.i.while.body.i_crit_edge ]
  %pktlen.3263.i = phi i16 [ %161, %while.body.i.while.body.i_crit_edge ], [ %pktlen.2.i, %if.end72.i.while.body.i_crit_edge ]
  %bf.1262.i = phi i16 [ %160, %while.body.i.while.body.i_crit_edge ], [ %bf.0.i, %if.end72.i.while.body.i_crit_edge ]
  %128 = call i16 @llvm.umin.i16(i16 %pktlen.3263.i, i16 254) #15
  %add86.i = add i16 %bf.1262.i, 2
  %conv88.i = zext i16 %128 to i32
  %and.i213.i = lshr i16 %add86.i, 12
  %129 = trunc i16 %and.i213.i to i8
  %conv1.i214.i = and i8 %129, 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  call void @arm_heavy_mb() #15
  %130 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %add.ptr.i, align 4
  %add.i.i215.i = add i32 %131, 1
  %and.i.i216.i = and i32 %add.i.i215.i, 1048575
  %add1.i.i217.i = or i32 %and.i.i216.i, -18874368
  %132 = inttoptr i32 %add1.i.i217.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %132, i8 %conv1.i214.i) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !192
  call void @arm_heavy_mb() #15
  %conv4.i218.i = trunc i16 %add86.i to i8
  %133 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %add.ptr.i, align 4
  %add.i219.i = add i32 %134, 2
  %and5.i220.i = and i32 %add.i219.i, 1048575
  %add6.i221.i = or i32 %and5.i220.i, -18874368
  %135 = inttoptr i32 %add6.i221.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %135, i8 %conv4.i218.i) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !193
  call void @arm_heavy_mb() #15
  %136 = lshr i16 %add86.i, 8
  %137 = trunc i16 %136 to i8
  %conv11.i222.i = and i8 %137, 127
  %138 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %add.ptr.i, align 4
  %add13.i223.i = add i32 %139, 3
  %and14.i224.i = and i32 %add13.i223.i, 1048575
  %add15.i225.i = or i32 %and14.i224.i, -18874368
  %140 = inttoptr i32 %add15.i225.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %140, i8 %conv11.i222.i) #15, !srcloc !166
  %141 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %add.ptr.i, align 4
  %add18.i226.i = add i32 %142, 4
  %and19.i227.i = and i32 %add18.i226.i, 1048575
  %add20.i228.i = or i32 %and19.i227.i, -18874368
  %143 = inttoptr i32 %add20.i228.i to ptr
  call void @__raw_writesb(ptr noundef nonnull %143, ptr noundef %pdata.1264.i, i32 noundef %conv88.i) #15
  %add.ptr90.i = getelementptr i8, ptr %pdata.1264.i, i32 %conv88.i
  %and.i229.i = lshr i16 %bf.1262.i, 12
  %144 = trunc i16 %and.i229.i to i8
  %conv1.i230.i = and i8 %144, 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  call void @arm_heavy_mb() #15
  %145 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %add.ptr.i, align 4
  %add.i.i231.i = add i32 %146, 1
  %and.i.i232.i = and i32 %add.i.i231.i, 1048575
  %add1.i.i233.i = or i32 %and.i.i232.i, -18874368
  %147 = inttoptr i32 %add1.i.i233.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %147, i8 %conv1.i230.i) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  %conv4.i234.i = trunc i16 %bf.1262.i to i8
  %148 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %add.ptr.i, align 4
  %add.i235.i = add i32 %149, 2
  %and5.i236.i = and i32 %add.i235.i, 1048575
  %add6.i237.i = or i32 %and5.i236.i, -18874368
  %150 = inttoptr i32 %add6.i237.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %150, i8 %conv4.i234.i) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !191
  call void @arm_heavy_mb() #15
  %151 = lshr i16 %bf.1262.i, 8
  %152 = trunc i16 %151 to i8
  %conv11.i238.i = and i8 %152, 127
  %153 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %add.ptr.i, align 4
  %add13.i239.i = add i32 %154, 3
  %and14.i240.i = and i32 %add13.i239.i, 1048575
  %add15.i241.i = or i32 %and14.i240.i, -18874368
  %155 = inttoptr i32 %add15.i241.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %155, i8 %conv11.i238.i) #15, !srcloc !166
  %156 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %add.ptr.i, align 4
  %add18.i242.i = add i32 %157, 4
  %and19.i243.i = and i32 %add18.i242.i, 1048575
  %add20.i244.i = or i32 %and19.i243.i, -18874368
  %158 = inttoptr i32 %add20.i244.i to ptr
  call void @__raw_readsb(ptr noundef nonnull %158, ptr noundef nonnull %next.i, i32 noundef 2) #15
  %159 = ptrtoint ptr %next.i to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %next.i, align 2
  %161 = call i16 @llvm.usub.sat.i16(i16 %pktlen.3263.i, i16 254) #15
  %cmp74.not.i = icmp ult i16 %pktlen.3263.i, 255
  br i1 %cmp74.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.end72.i.while.end.i_crit_edge, %if.else44.i.while.end.i_crit_edge, %if.then18.i.while.end.i_crit_edge
  %162 = ptrtoint ptr %sig_bf.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %sig_bf.i, align 2
  %and.i245.i = lshr i16 %163, 12
  %164 = trunc i16 %and.i245.i to i8
  %conv1.i246.i = and i8 %164, 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  call void @arm_heavy_mb() #15
  %165 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %add.ptr.i, align 4
  %add.i.i247.i = add i32 %166, 1
  %and.i.i248.i = and i32 %add.i.i247.i, 1048575
  %add1.i.i249.i = or i32 %and.i.i248.i, -18874368
  %167 = inttoptr i32 %add1.i.i249.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %167, i8 %conv1.i246.i) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !192
  call void @arm_heavy_mb() #15
  %conv4.i250.i = trunc i16 %163 to i8
  %168 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %add.ptr.i, align 4
  %add.i251.i = add i32 %169, 2
  %and5.i252.i = and i32 %add.i251.i, 1048575
  %add6.i253.i = or i32 %and5.i252.i, -18874368
  %170 = inttoptr i32 %add6.i253.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %170, i8 %conv4.i250.i) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !193
  call void @arm_heavy_mb() #15
  %171 = lshr i16 %163, 8
  %172 = trunc i16 %171 to i8
  %conv11.i254.i = and i8 %172, 127
  %173 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %add.ptr.i, align 4
  %add13.i255.i = add i32 %174, 3
  %and14.i256.i = and i32 %add13.i255.i, 1048575
  %add15.i257.i = or i32 %and14.i256.i, -18874368
  %175 = inttoptr i32 %add15.i257.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %175, i8 %conv11.i254.i) #15, !srcloc !166
  %176 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %add.ptr.i, align 4
  %add18.i258.i = add i32 %177, 4
  %and19.i259.i = and i32 %add18.i258.i, 1048575
  %add20.i260.i = or i32 %and19.i259.i, -18874368
  %178 = inttoptr i32 %add20.i260.i to ptr
  call void @__raw_writesb(ptr noundef nonnull %178, ptr noundef nonnull %sig.i, i32 noundef 22) #15
  call fastcc void @wl3501_esbq_req(ptr noundef %add.ptr.i, ptr noundef nonnull %sig_bf.i) #15
  br label %wl3501_send_pkt.exit

wl3501_send_pkt.exit:                             ; preds = %while.end.i, %if.then8.i, %if.then.i.wl3501_send_pkt.exit_crit_edge, %entry.wl3501_send_pkt.exit_crit_edge
  %tobool10.not = phi i1 [ false, %entry.wl3501_send_pkt.exit_crit_edge ], [ false, %if.then.i.wl3501_send_pkt.exit_crit_edge ], [ false, %if.then8.i ], [ true, %while.end.i ]
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %sig.i) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %next.i) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sig_bf.i) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %wl3501_send_pkt.exit.if.end_crit_edge, label %if.then

wl3501_send_pkt.exit.if.end_crit_edge:            ; preds = %wl3501_send_pkt.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %wl3501_send_pkt.exit
  call void @__sanitizer_cov_trace_pc() #17
  %179 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %add.ptr.i, align 4
  %and.i37 = and i32 %180, 1048575
  %add1.i38 = or i32 %and.i37, -18874368
  %181 = inttoptr i32 %add1.i38 to ptr
  %182 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %181) #15, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !187
  %183 = and i8 %182, -15
  %184 = or i8 %183, 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !188
  call void @arm_heavy_mb() #15
  %185 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %add.ptr.i, align 4
  %and7.i39 = and i32 %186, 1048575
  %add8.i40 = or i32 %and7.i39, -18874368
  %187 = inttoptr i32 %add8.i40 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %187, i8 %184) #15, !srcloc !166
  br label %if.end

if.end:                                           ; preds = %if.then, %wl3501_send_pkt.exit.if.end_crit_edge
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %188 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %189, 1
  store i32 %inc, ptr %tx_dropped, align 4
  br label %if.end21.sink.split

if.else:                                          ; preds = %if.end
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %190 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %tx_packets, align 4
  %inc13 = add i32 %191, 1
  store i32 %inc13, ptr %tx_packets, align 4
  %192 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %194 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %195, %193
  store i32 %add, ptr %tx_bytes, align 4
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #15
  %tx_buffer_cnt = getelementptr i8, ptr %dev, i32 2532
  %196 = ptrtoint ptr %tx_buffer_cnt to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %tx_buffer_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %197)
  %cmp17 = icmp ult i16 %197, 2
  br i1 %cmp17, label %if.else.if.end21.sink.split_crit_edge, label %if.else.if.end21_crit_edge

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

if.else.if.end21.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21.sink.split

if.end21.sink.split:                              ; preds = %if.else.if.end21.sink.split_crit_edge, %if.then11
  %_tx.i.i41 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %198 = ptrtoint ptr %_tx.i.i41 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %_tx.i.i41, align 128
  %state.i.i42 = getelementptr inbounds %struct.netdev_queue, ptr %199, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i42) #15
  br label %if.end21

if.end21:                                         ; preds = %if.end21.sink.split, %if.else.if.end21_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wl3501_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %0 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %tx_errors, align 4
  %call = tail call fastcc i32 @wl3501_reset(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %dev, i32 noundef %call) #18
  br label %if.end

if.else:                                          ; preds = %entry
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 12
  %5 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %4)
  %cmp.not.i.i = icmp eq i32 %6, %4
  br i1 %cmp.not.i.i, label %if.else.netif_trans_update.exit_crit_edge, label %do.body5.i.i

if.else.netif_trans_update.exit_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 %4, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %if.else.netif_trans_update.exit_crit_edge
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %9) #15
  br label %if.end

if.end:                                           ; preds = %netif_trans_update.exit, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcmcia_dev_present(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wl3501_init_firmware(ptr noundef %this) unnamed_addr #2 align 64 {
entry:
  %tmp.i = alloca i8, align 1
  %next = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %next) #15
  %0 = ptrtoint ptr %next to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %next, align 2, !annotation !189
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #15
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %tmp.i, align 1
  %2 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %this, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !194
  tail call void @arm_heavy_mb() #15
  %and.i.i = and i32 %3, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %4 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 64) #15, !srcloc !166
  %5 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %this, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !194
  tail call void @arm_heavy_mb() #15
  %and.i28.i = and i32 %6, 1048575
  %add.i29.i = or i32 %and.i28.i, -18874368
  %7 = inttoptr i32 %add.i29.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 0) #15, !srcloc !166
  %8 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %this, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !194
  tail call void @arm_heavy_mb() #15
  %and.i30.i = and i32 %9, 1048575
  %add.i31.i = or i32 %and.i30.i, -18874368
  %10 = inttoptr i32 %add.i31.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 64) #15, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  tail call void @arm_heavy_mb() #15
  %11 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %this, align 4
  %add.i.i.i = add i32 %12, 1
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %13 = inttoptr i32 %add1.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 0) #15, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !192
  tail call void @arm_heavy_mb() #15
  %14 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %this, align 4
  %add.i32.i = add i32 %15, 2
  %and5.i.i = and i32 %add.i32.i, 1048575
  %add6.i.i = or i32 %and5.i.i, -18874368
  %16 = inttoptr i32 %add6.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 -128) #15, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !193
  tail call void @arm_heavy_mb() #15
  %17 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %this, align 4
  %add13.i.i = add i32 %18, 3
  %and14.i.i = and i32 %add13.i.i, 1048575
  %add15.i.i = or i32 %and14.i.i, -18874368
  %19 = inttoptr i32 %add15.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 4) #15, !srcloc !166
  %20 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %this, align 4
  %add18.i.i = add i32 %21, 4
  %and19.i.i = and i32 %add18.i.i, 1048575
  %add20.i.i = or i32 %and19.i.i, -18874368
  %22 = inttoptr i32 %add20.i.i to ptr
  call void @__raw_writesb(ptr noundef nonnull %22, ptr noundef nonnull %tmp.i, i32 noundef 1) #15
  %23 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %this, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !194
  call void @arm_heavy_mb() #15
  %and.i33.i = and i32 %24, 1048575
  %add.i34.i = or i32 %and.i33.i, -18874368
  %25 = inttoptr i32 %add.i34.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 0) #15, !srcloc !166
  %26 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %this, align 4
  %and.i35.i = and i32 %27, 1048575
  %add1.i.i = or i32 %and.i35.i, -18874368
  %28 = inttoptr i32 %add1.i.i to ptr
  %29 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %28) #15, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !187
  %30 = and i8 %29, -15
  %31 = or i8 %30, 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !188
  call void @arm_heavy_mb() #15
  %32 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %this, align 4
  %and7.i.i = and i32 %33, 1048575
  %add8.i.i = or i32 %and7.i.i, -18874368
  %34 = inttoptr i32 %add8.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 %31) #15, !srcloc !166
  br label %for.body.i

for.body.i:                                       ; preds = %while.cond11.preheader.i.for.body.i_crit_edge, %entry
  %i.060.i = phi i32 [ 0, %entry ], [ %inc17.i, %while.cond11.preheader.i.for.body.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  call void @arm_heavy_mb() #15
  %35 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %this, align 4
  %add.i.i36.i = add i32 %36, 1
  %and.i.i37.i = and i32 %add.i.i36.i, 1048575
  %add1.i.i38.i = or i32 %and.i.i37.i, -18874368
  %37 = inttoptr i32 %add1.i.i38.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 0) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  %38 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %this, align 4
  %add.i39.i = add i32 %39, 2
  %and5.i40.i = and i32 %add.i39.i, 1048575
  %add6.i41.i = or i32 %and5.i40.i, -18874368
  %40 = inttoptr i32 %add6.i41.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 -128) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !191
  call void @arm_heavy_mb() #15
  %41 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %this, align 4
  %add13.i42.i = add i32 %42, 3
  %and14.i43.i = and i32 %add13.i42.i, 1048575
  %add15.i44.i = or i32 %and14.i43.i, -18874368
  %43 = inttoptr i32 %add15.i44.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 4) #15, !srcloc !166
  %44 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %this, align 4
  %add18.i45.i = add i32 %45, 4
  %and19.i46.i = and i32 %add18.i45.i, 1048575
  %add20.i47.i = or i32 %and19.i46.i, -18874368
  %46 = inttoptr i32 %add20.i47.i to ptr
  call void @__raw_readsb(ptr noundef nonnull %46, ptr noundef nonnull %tmp.i, i32 noundef 1) #15
  %47 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %tmp.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 87, i8 %48)
  %cmp8.i = icmp eq i8 %48, 87
  br i1 %cmp8.i, label %if.end, label %while.cond11.preheader.i

while.cond11.preheader.i:                         ; preds = %for.body.i
  %inc17.i = add nuw nsw i32 %i.060.i, 1
  %exitcond.not.i = icmp eq i32 %inc17.i, 10000
  br i1 %exitcond.not.i, label %do.end, label %while.cond11.preheader.i.for.body.i_crit_edge

while.cond11.preheader.i.for.body.i_crit_edge:    ; preds = %while.cond11.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

if.end:                                           ; preds = %for.body.i
  %49 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 65, ptr %tmp.i, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  call void @arm_heavy_mb() #15
  %50 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %this, align 4
  %add.i.i48.i = add i32 %51, 1
  %and.i.i49.i = and i32 %add.i.i48.i, 1048575
  %add1.i.i50.i = or i32 %and.i.i49.i, -18874368
  %52 = inttoptr i32 %add1.i.i50.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 0) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !192
  call void @arm_heavy_mb() #15
  %53 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %this, align 4
  %add.i51.i = add i32 %54, 2
  %and5.i52.i = and i32 %add.i51.i, 1048575
  %add6.i53.i = or i32 %and5.i52.i, -18874368
  %55 = inttoptr i32 %add6.i53.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %55, i8 -128) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !193
  call void @arm_heavy_mb() #15
  %56 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %this, align 4
  %add13.i54.i = add i32 %57, 3
  %and14.i55.i = and i32 %add13.i54.i, 1048575
  %add15.i56.i = or i32 %and14.i55.i, -18874368
  %58 = inttoptr i32 %add15.i56.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %58, i8 4) #15, !srcloc !166
  %59 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %this, align 4
  %add18.i57.i = add i32 %60, 4
  %and19.i58.i = and i32 %add18.i57.i, 1048575
  %add20.i59.i = or i32 %and19.i58.i, -18874368
  %61 = inttoptr i32 %add20.i59.i to ptr
  call void @__raw_writesb(ptr noundef nonnull %61, ptr noundef nonnull %tmp.i, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #15
  %card_name = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 22
  %62 = ptrtoint ptr %card_name to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %card_name, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  call void @arm_heavy_mb() #15
  %63 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %this, align 4
  %add.i.i79 = add i32 %64, 1
  %and.i.i80 = and i32 %add.i.i79, 1048575
  %add1.i.i81 = or i32 %and.i.i80, -18874368
  %65 = inttoptr i32 %add1.i.i81 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %65, i8 0) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  %66 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %this, align 4
  %add.i = add i32 %67, 2
  %and5.i = and i32 %add.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %68 = inttoptr i32 %add6.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %68, i8 0) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !191
  call void @arm_heavy_mb() #15
  %69 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %this, align 4
  %add13.i = add i32 %70, 3
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %71 = inttoptr i32 %add15.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %71, i8 26) #15, !srcloc !166
  %72 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %this, align 4
  %add18.i = add i32 %73, 4
  %and19.i = and i32 %add18.i, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %74 = inttoptr i32 %add20.i to ptr
  call void @__raw_readsb(ptr noundef nonnull %74, ptr noundef %card_name, i32 noundef 32) #15
  %arrayidx3 = getelementptr %struct.wl3501_card, ptr %this, i32 0, i32 22, i32 31
  %75 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %arrayidx3, align 1
  %firmware_date = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 23
  %76 = ptrtoint ptr %firmware_date to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %firmware_date, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  call void @arm_heavy_mb() #15
  %77 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %this, align 4
  %add.i.i82 = add i32 %78, 1
  %and.i.i83 = and i32 %add.i.i82, 1048575
  %add1.i.i84 = or i32 %and.i.i83, -18874368
  %79 = inttoptr i32 %add1.i.i84 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %79, i8 0) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  %80 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %this, align 4
  %add.i85 = add i32 %81, 2
  %and5.i86 = and i32 %add.i85, 1048575
  %add6.i87 = or i32 %and5.i86, -18874368
  %82 = inttoptr i32 %add6.i87 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %82, i8 64) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !191
  call void @arm_heavy_mb() #15
  %83 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %this, align 4
  %add13.i88 = add i32 %84, 3
  %and14.i89 = and i32 %add13.i88, 1048575
  %add15.i90 = or i32 %and14.i89, -18874368
  %85 = inttoptr i32 %add15.i90 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %85, i8 26) #15, !srcloc !166
  %86 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %this, align 4
  %add18.i91 = add i32 %87, 4
  %and19.i92 = and i32 %add18.i91, 1048575
  %add20.i93 = or i32 %and19.i92, -18874368
  %88 = inttoptr i32 %add20.i93 to ptr
  call void @__raw_readsb(ptr noundef nonnull %88, ptr noundef %firmware_date, i32 noundef 32) #15
  %arrayidx8 = getelementptr %struct.wl3501_card, ptr %this, i32 0, i32 23, i32 31
  %89 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %arrayidx8, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  call void @arm_heavy_mb() #15
  %90 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %this, align 4
  %add.i94 = add i32 %91, 1
  %and.i = and i32 %add.i94, 1048575
  %add1.i = or i32 %and.i, -18874368
  %92 = inttoptr i32 %add1.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %92, i8 0) #15, !srcloc !166
  %esbq_req_start = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  call void @arm_heavy_mb() #15
  %93 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %this, align 4
  %add.i.i95 = add i32 %94, 1
  %and.i.i96 = and i32 %add.i.i95, 1048575
  %add1.i.i97 = or i32 %and.i.i96, -18874368
  %95 = inttoptr i32 %add1.i.i97 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %95, i8 0) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  %96 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %this, align 4
  %add.i98 = add i32 %97, 2
  %and5.i99 = and i32 %add.i98, 1048575
  %add6.i100 = or i32 %and5.i99, -18874368
  %98 = inttoptr i32 %add6.i100 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %98, i8 -126) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !191
  call void @arm_heavy_mb() #15
  %99 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %this, align 4
  %add13.i101 = add i32 %100, 3
  %and14.i102 = and i32 %add13.i101, 1048575
  %add15.i103 = or i32 %and14.i102, -18874368
  %101 = inttoptr i32 %add15.i103 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %101, i8 4) #15, !srcloc !166
  %102 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %this, align 4
  %add18.i104 = add i32 %103, 4
  %and19.i105 = and i32 %add18.i104, 1048575
  %add20.i106 = or i32 %and19.i105, -18874368
  %104 = inttoptr i32 %add20.i106 to ptr
  call void @__raw_readsb(ptr noundef nonnull %104, ptr noundef %esbq_req_start, i32 noundef 2) #15
  %esbq_req_end = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  call void @arm_heavy_mb() #15
  %105 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %this, align 4
  %add.i.i107 = add i32 %106, 1
  %and.i.i108 = and i32 %add.i.i107, 1048575
  %add1.i.i109 = or i32 %and.i.i108, -18874368
  %107 = inttoptr i32 %add1.i.i109 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %107, i8 0) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  %108 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %this, align 4
  %add.i110 = add i32 %109, 2
  %and5.i111 = and i32 %add.i110, 1048575
  %add6.i112 = or i32 %and5.i111, -18874368
  %110 = inttoptr i32 %add6.i112 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %110, i8 -122) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !191
  call void @arm_heavy_mb() #15
  %111 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %this, align 4
  %add13.i113 = add i32 %112, 3
  %and14.i114 = and i32 %add13.i113, 1048575
  %add15.i115 = or i32 %and14.i114, -18874368
  %113 = inttoptr i32 %add15.i115 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %113, i8 4) #15, !srcloc !166
  %114 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %this, align 4
  %add18.i116 = add i32 %115, 4
  %and19.i117 = and i32 %add18.i116, 1048575
  %add20.i118 = or i32 %and19.i117, -18874368
  %116 = inttoptr i32 %add20.i118 to ptr
  call void @__raw_readsb(ptr noundef nonnull %116, ptr noundef %esbq_req_end, i32 noundef 2) #15
  %esbq_confirm_start = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  call void @arm_heavy_mb() #15
  %117 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %this, align 4
  %add.i.i119 = add i32 %118, 1
  %and.i.i120 = and i32 %add.i.i119, 1048575
  %add1.i.i121 = or i32 %and.i.i120, -18874368
  %119 = inttoptr i32 %add1.i.i121 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %119, i8 0) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  %120 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %this, align 4
  %add.i122 = add i32 %121, 2
  %and5.i123 = and i32 %add.i122, 1048575
  %add6.i124 = or i32 %and5.i123, -18874368
  %122 = inttoptr i32 %add6.i124 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %122, i8 -120) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !191
  call void @arm_heavy_mb() #15
  %123 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %this, align 4
  %add13.i125 = add i32 %124, 3
  %and14.i126 = and i32 %add13.i125, 1048575
  %add15.i127 = or i32 %and14.i126, -18874368
  %125 = inttoptr i32 %add15.i127 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %125, i8 4) #15, !srcloc !166
  %126 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %this, align 4
  %add18.i128 = add i32 %127, 4
  %and19.i129 = and i32 %add18.i128, 1048575
  %add20.i130 = or i32 %and19.i129, -18874368
  %128 = inttoptr i32 %add20.i130 to ptr
  call void @__raw_readsb(ptr noundef nonnull %128, ptr noundef %esbq_confirm_start, i32 noundef 2) #15
  %esbq_confirm_end = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  call void @arm_heavy_mb() #15
  %129 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %this, align 4
  %add.i.i131 = add i32 %130, 1
  %and.i.i132 = and i32 %add.i.i131, 1048575
  %add1.i.i133 = or i32 %and.i.i132, -18874368
  %131 = inttoptr i32 %add1.i.i133 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %131, i8 0) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  %132 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %this, align 4
  %add.i134 = add i32 %133, 2
  %and5.i135 = and i32 %add.i134, 1048575
  %add6.i136 = or i32 %and5.i135, -18874368
  %134 = inttoptr i32 %add6.i136 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %134, i8 -116) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !191
  call void @arm_heavy_mb() #15
  %135 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %this, align 4
  %add13.i137 = add i32 %136, 3
  %and14.i138 = and i32 %add13.i137, 1048575
  %add15.i139 = or i32 %and14.i138, -18874368
  %137 = inttoptr i32 %add15.i139 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %137, i8 4) #15, !srcloc !166
  %138 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %this, align 4
  %add18.i140 = add i32 %139, 4
  %and19.i141 = and i32 %add18.i140, 1048575
  %add20.i142 = or i32 %and19.i141, -18874368
  %140 = inttoptr i32 %add20.i142 to ptr
  call void @__raw_readsb(ptr noundef nonnull %140, ptr noundef %esbq_confirm_end, i32 noundef 2) #15
  %tx_buffer_head = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  call void @arm_heavy_mb() #15
  %141 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %this, align 4
  %add.i.i143 = add i32 %142, 1
  %and.i.i144 = and i32 %add.i.i143, 1048575
  %add1.i.i145 = or i32 %and.i.i144, -18874368
  %143 = inttoptr i32 %add1.i.i145 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %143, i8 0) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  %144 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %this, align 4
  %add.i146 = add i32 %145, 2
  %and5.i147 = and i32 %add.i146, 1048575
  %add6.i148 = or i32 %and5.i147, -18874368
  %146 = inttoptr i32 %add6.i148 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %146, i8 -114) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !191
  call void @arm_heavy_mb() #15
  %147 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %this, align 4
  %add13.i149 = add i32 %148, 3
  %and14.i150 = and i32 %add13.i149, 1048575
  %add15.i151 = or i32 %and14.i150, -18874368
  %149 = inttoptr i32 %add15.i151 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %149, i8 4) #15, !srcloc !166
  %150 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %this, align 4
  %add18.i152 = add i32 %151, 4
  %and19.i153 = and i32 %add18.i152, 1048575
  %add20.i154 = or i32 %and19.i153, -18874368
  %152 = inttoptr i32 %add20.i154 to ptr
  call void @__raw_readsb(ptr noundef nonnull %152, ptr noundef %tx_buffer_head, i32 noundef 2) #15
  %tx_buffer_size = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  call void @arm_heavy_mb() #15
  %153 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %this, align 4
  %add.i.i155 = add i32 %154, 1
  %and.i.i156 = and i32 %add.i.i155, 1048575
  %add1.i.i157 = or i32 %and.i.i156, -18874368
  %155 = inttoptr i32 %add1.i.i157 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %155, i8 0) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  %156 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %this, align 4
  %add.i158 = add i32 %157, 2
  %and5.i159 = and i32 %add.i158, 1048575
  %add6.i160 = or i32 %and5.i159, -18874368
  %158 = inttoptr i32 %add6.i160 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %158, i8 -110) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !191
  call void @arm_heavy_mb() #15
  %159 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %this, align 4
  %add13.i161 = add i32 %160, 3
  %and14.i162 = and i32 %add13.i161, 1048575
  %add15.i163 = or i32 %and14.i162, -18874368
  %161 = inttoptr i32 %add15.i163 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %161, i8 4) #15, !srcloc !166
  %162 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %this, align 4
  %add18.i164 = add i32 %163, 4
  %and19.i165 = and i32 %add18.i164, 1048575
  %add20.i166 = or i32 %and19.i165, -18874368
  %164 = inttoptr i32 %add20.i166 to ptr
  call void @__raw_readsb(ptr noundef nonnull %164, ptr noundef %tx_buffer_size, i32 noundef 2) #15
  %165 = ptrtoint ptr %esbq_req_start to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %esbq_req_start, align 2
  %esbq_req_head = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 12
  %167 = ptrtoint ptr %esbq_req_head to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %166, ptr %esbq_req_head, align 2
  %esbq_req_tail = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 13
  %168 = ptrtoint ptr %esbq_req_tail to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 %166, ptr %esbq_req_tail, align 4
  %169 = ptrtoint ptr %esbq_req_end to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %esbq_req_end, align 4
  %add = add i16 %170, %166
  store i16 %add, ptr %esbq_req_end, align 4
  %171 = ptrtoint ptr %esbq_confirm_start to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %esbq_confirm_start, align 2
  %esbq_confirm = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 16
  %173 = ptrtoint ptr %esbq_confirm to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 %172, ptr %esbq_confirm, align 2
  %174 = ptrtoint ptr %esbq_confirm_end to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %esbq_confirm_end, align 4
  %add19 = add i16 %175, %172
  store i16 %add19, ptr %esbq_confirm_end, align 4
  %tx_buffer_cnt = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 9
  %176 = ptrtoint ptr %tx_buffer_cnt to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 1, ptr %tx_buffer_cnt, align 4
  %177 = ptrtoint ptr %tx_buffer_head to i32
  call void @__asan_load2_noabort(i32 %177)
  %ptr.0198 = load i16, ptr %tx_buffer_head, align 2
  %storemerge199 = add i16 %ptr.0198, 256
  %178 = ptrtoint ptr %next to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 %storemerge199, ptr %next, align 2
  %conv25200 = zext i16 %storemerge199 to i32
  %conv27201 = zext i16 %ptr.0198 to i32
  %sub202 = sub nsw i32 %conv25200, %conv27201
  %179 = ptrtoint ptr %tx_buffer_size to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %tx_buffer_size, align 2
  %conv29203 = zext i16 %180 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub202, i32 %conv29203)
  %cmp204 = icmp slt i32 %sub202, %conv29203
  %extract.t206 = trunc i16 %ptr.0198 to i8
  %extract208 = lshr i16 %ptr.0198, 8
  %extract.t209 = trunc i16 %extract208 to i8
  %extract212 = lshr i16 %ptr.0198, 12
  %extract.t213 = trunc i16 %extract212 to i8
  br i1 %cmp204, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %ptr.0205.off0 = phi i8 [ %extract.t, %while.body.while.body_crit_edge ], [ %extract.t206, %if.end.while.body_crit_edge ]
  %ptr.0205.off8 = phi i8 [ %extract.t207, %while.body.while.body_crit_edge ], [ %extract.t209, %if.end.while.body_crit_edge ]
  %ptr.0205.off12 = phi i8 [ %extract.t211, %while.body.while.body_crit_edge ], [ %extract.t213, %if.end.while.body_crit_edge ]
  %181 = ptrtoint ptr %tx_buffer_cnt to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %tx_buffer_cnt, align 4
  %inc = add i16 %182, 1
  store i16 %inc, ptr %tx_buffer_cnt, align 4
  %conv1.i = and i8 %ptr.0205.off12, 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  call void @arm_heavy_mb() #15
  %183 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %this, align 4
  %add.i.i168 = add i32 %184, 1
  %and.i.i169 = and i32 %add.i.i168, 1048575
  %add1.i.i170 = or i32 %and.i.i169, -18874368
  %185 = inttoptr i32 %add1.i.i170 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %185, i8 %conv1.i) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !192
  call void @arm_heavy_mb() #15
  %186 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %this, align 4
  %add.i171 = add i32 %187, 2
  %and5.i172 = and i32 %add.i171, 1048575
  %add6.i173 = or i32 %and5.i172, -18874368
  %188 = inttoptr i32 %add6.i173 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %188, i8 %ptr.0205.off0) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !193
  call void @arm_heavy_mb() #15
  %conv11.i = and i8 %ptr.0205.off8, 127
  %189 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %this, align 4
  %add13.i174 = add i32 %190, 3
  %and14.i175 = and i32 %add13.i174, 1048575
  %add15.i176 = or i32 %and14.i175, -18874368
  %191 = inttoptr i32 %add15.i176 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %191, i8 %conv11.i) #15, !srcloc !166
  %192 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %this, align 4
  %add18.i177 = add i32 %193, 4
  %and19.i178 = and i32 %add18.i177, 1048575
  %add20.i179 = or i32 %and19.i178, -18874368
  %194 = inttoptr i32 %add20.i179 to ptr
  call void @__raw_writesb(ptr noundef nonnull %194, ptr noundef nonnull %next, i32 noundef 2) #15
  %195 = ptrtoint ptr %next to i32
  call void @__asan_load2_noabort(i32 %195)
  %ptr.0 = load i16, ptr %next, align 2
  %storemerge = add i16 %ptr.0, 256
  store i16 %storemerge, ptr %next, align 2
  %conv25 = zext i16 %storemerge to i32
  %196 = ptrtoint ptr %tx_buffer_head to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %tx_buffer_head, align 4
  %conv27 = zext i16 %197 to i32
  %sub = sub nsw i32 %conv25, %conv27
  %198 = ptrtoint ptr %tx_buffer_size to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %tx_buffer_size, align 2
  %conv29 = zext i16 %199 to i32
  %cmp = icmp slt i32 %sub, %conv29
  %extract.t = trunc i16 %ptr.0 to i8
  %extract = lshr i16 %ptr.0, 8
  %extract.t207 = trunc i16 %extract to i8
  %extract210 = lshr i16 %ptr.0, 12
  %extract.t211 = trunc i16 %extract210 to i8
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.end.loopexit

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.end.loopexit:                               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  %extract.t.le = trunc i16 %ptr.0 to i8
  %extract.t207.le = trunc i16 %extract to i8
  %extract.t211.le = trunc i16 %extract210 to i8
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.end.while.end_crit_edge
  %.pre-phi216 = phi i8 [ %extract.t209, %if.end.while.end_crit_edge ], [ %extract.t207.le, %while.end.loopexit ]
  %conv4.i185.pre-phi = phi i8 [ %extract.t206, %if.end.while.end_crit_edge ], [ %extract.t.le, %while.end.loopexit ]
  %.pre-phi = phi i8 [ %extract.t213, %if.end.while.end_crit_edge ], [ %extract.t211.le, %while.end.loopexit ]
  %ptr.0.lcssa = phi i16 [ %ptr.0198, %if.end.while.end_crit_edge ], [ %ptr.0, %while.end.loopexit ]
  %200 = ptrtoint ptr %next to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 0, ptr %next, align 2
  %conv1.i181 = and i8 %.pre-phi, 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  call void @arm_heavy_mb() #15
  %201 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %this, align 4
  %add.i.i182 = add i32 %202, 1
  %and.i.i183 = and i32 %add.i.i182, 1048575
  %add1.i.i184 = or i32 %and.i.i183, -18874368
  %203 = inttoptr i32 %add1.i.i184 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %203, i8 %conv1.i181) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !192
  call void @arm_heavy_mb() #15
  %204 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %this, align 4
  %add.i186 = add i32 %205, 2
  %and5.i187 = and i32 %add.i186, 1048575
  %add6.i188 = or i32 %and5.i187, -18874368
  %206 = inttoptr i32 %add6.i188 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %206, i8 %conv4.i185.pre-phi) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !193
  call void @arm_heavy_mb() #15
  %conv11.i189 = and i8 %.pre-phi216, 127
  %207 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %this, align 4
  %add13.i190 = add i32 %208, 3
  %and14.i191 = and i32 %add13.i190, 1048575
  %add15.i192 = or i32 %and14.i191, -18874368
  %209 = inttoptr i32 %add15.i192 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %209, i8 %conv11.i189) #15, !srcloc !166
  %210 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %this, align 4
  %add18.i193 = add i32 %211, 4
  %and19.i194 = and i32 %add18.i193, 1048575
  %add20.i195 = or i32 %and19.i194, -18874368
  %212 = inttoptr i32 %add20.i195 to ptr
  call void @__raw_writesb(ptr noundef nonnull %212, ptr noundef nonnull %next, i32 noundef 2) #15
  %tx_buffer_tail = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 8
  %213 = ptrtoint ptr %tx_buffer_tail to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 %ptr.0.lcssa, ptr %tx_buffer_tail, align 2
  br label %out

out:                                              ; preds = %do.end, %while.end
  %rc.0 = phi i32 [ -19, %do.end ], [ 0, %while.end ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %next) #15
  ret i32 %rc.0

do.end:                                           ; preds = %while.cond11.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #15
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #18
  br label %out
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wl3501_esbq_exec(ptr nocapture noundef %this, ptr noundef %sig, i32 noundef %sig_size) unnamed_addr #2 align 64 {
entry:
  %tmp.i = alloca i8, align 1
  %ptr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #15
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %tmp.i, align 1
  %esbq_req_head.i = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 12
  %1 = ptrtoint ptr %esbq_req_head.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %esbq_req_head.i, align 2
  %add.i = add i16 %2, 3
  %and.i.i = lshr i16 %add.i, 12
  %3 = trunc i16 %and.i.i to i8
  %conv1.i.i = and i8 %3, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  tail call void @arm_heavy_mb() #15
  %4 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %this, align 4
  %add.i.i.i = add i32 %5, 1
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %6 = inttoptr i32 %add1.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %conv1.i.i) #15, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  tail call void @arm_heavy_mb() #15
  %conv4.i.i = trunc i16 %add.i to i8
  %7 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %this, align 4
  %add.i.i = add i32 %8, 2
  %and5.i.i = and i32 %add.i.i, 1048575
  %add6.i.i = or i32 %and5.i.i, -18874368
  %9 = inttoptr i32 %add6.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %conv4.i.i) #15, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !191
  tail call void @arm_heavy_mb() #15
  %10 = lshr i16 %add.i, 8
  %11 = trunc i16 %10 to i8
  %conv11.i.i = and i8 %11, 127
  %12 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %this, align 4
  %add13.i.i = add i32 %13, 3
  %and14.i.i = and i32 %add13.i.i, 1048575
  %add15.i.i = or i32 %and14.i.i, -18874368
  %14 = inttoptr i32 %add15.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %conv11.i.i) #15, !srcloc !166
  %15 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %this, align 4
  %add18.i.i = add i32 %16, 4
  %and19.i.i = and i32 %add18.i.i, 1048575
  %add20.i.i = or i32 %and19.i.i, -18874368
  %17 = inttoptr i32 %add20.i.i to ptr
  call void @__raw_readsb(ptr noundef nonnull %17, ptr noundef nonnull %tmp.i, i32 noundef 1) #15
  %18 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tmp.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %tobool.not = icmp sgt i8 %19, -1
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ptr) #15
  %conv = trunc i32 %sig_size to i16
  %call1 = call fastcc zeroext i16 @wl3501_get_tx_buffer(ptr noundef %this, i16 noundef zeroext %conv)
  %20 = ptrtoint ptr %ptr to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %call1, ptr %ptr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call1)
  %tobool2.not = icmp eq i16 %call1, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %and.i9 = lshr i16 %call1, 12
  %21 = trunc i16 %and.i9 to i8
  %conv1.i = and i8 %21, 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  call void @arm_heavy_mb() #15
  %22 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %this, align 4
  %add.i.i10 = add i32 %23, 1
  %and.i.i11 = and i32 %add.i.i10, 1048575
  %add1.i.i = or i32 %and.i.i11, -18874368
  %24 = inttoptr i32 %add1.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 %conv1.i) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !192
  call void @arm_heavy_mb() #15
  %conv4.i = trunc i16 %call1 to i8
  %25 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %this, align 4
  %add.i12 = add i32 %26, 2
  %and5.i = and i32 %add.i12, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %27 = inttoptr i32 %add6.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %conv4.i) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !193
  call void @arm_heavy_mb() #15
  %28 = lshr i16 %call1, 8
  %29 = trunc i16 %28 to i8
  %conv11.i = and i8 %29, 127
  %30 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %this, align 4
  %add13.i = add i32 %31, 3
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %32 = inttoptr i32 %add15.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 %conv11.i) #15, !srcloc !166
  %33 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %this, align 4
  %add18.i = add i32 %34, 4
  %and19.i = and i32 %add18.i, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %35 = inttoptr i32 %add20.i to ptr
  call void @__raw_writesb(ptr noundef nonnull %35, ptr noundef %sig, i32 noundef %sig_size) #15
  call fastcc void @wl3501_esbq_req(ptr noundef %this, ptr noundef nonnull %ptr)
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %rc.0 = phi i32 [ 0, %if.then3 ], [ -5, %if.then.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ptr) #15
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  %rc.1 = phi i32 [ %rc.0, %if.end ], [ -5, %entry.if.end4_crit_edge ]
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @wl3501_get_tx_buffer(ptr nocapture noundef %this, i16 noundef zeroext %len) unnamed_addr #2 align 64 {
entry:
  %next = alloca i16, align 2
  %zero = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %next) #15
  %0 = ptrtoint ptr %next to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %next, align 2, !annotation !189
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zero) #15
  %1 = ptrtoint ptr %zero to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %zero, align 2
  %add = add i16 %len, 54
  %conv2 = zext i16 %add to i32
  %tx_buffer_cnt = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 9
  %2 = ptrtoint ptr %tx_buffer_cnt to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %tx_buffer_cnt, align 4
  %conv3 = zext i16 %3 to i32
  %mul = mul nuw nsw i32 %conv3, 254
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %conv2)
  %cmp = icmp ult i32 %mul, %conv2
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %tx_buffer_head = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 7
  %4 = ptrtoint ptr %tx_buffer_head to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %tx_buffer_head, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end16.while.cond_crit_edge, %if.end
  %blk_cnt.0 = phi i16 [ 0, %if.end ], [ %inc, %if.end16.while.cond_crit_edge ]
  %full_len.0 = phi i16 [ %add, %if.end ], [ %6, %if.end16.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %full_len.0)
  %tobool.not = icmp eq i16 %full_len.0, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %6 = call i16 @llvm.usub.sat.i16(i16 %full_len.0, i16 254)
  %7 = ptrtoint ptr %tx_buffer_head to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %tx_buffer_head, align 4
  %and.i = lshr i16 %8, 12
  %9 = trunc i16 %and.i to i8
  %conv1.i = and i8 %9, 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  call void @arm_heavy_mb() #15
  %10 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %this, align 4
  %add.i.i = add i32 %11, 1
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %12 = inttoptr i32 %add1.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %conv1.i) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  %conv4.i = trunc i16 %8 to i8
  %13 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %this, align 4
  %add.i = add i32 %14, 2
  %and5.i = and i32 %add.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %15 = inttoptr i32 %add6.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %conv4.i) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !191
  call void @arm_heavy_mb() #15
  %16 = lshr i16 %8, 8
  %17 = trunc i16 %16 to i8
  %conv11.i = and i8 %17, 127
  %18 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %this, align 4
  %add13.i = add i32 %19, 3
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %20 = inttoptr i32 %add15.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %conv11.i) #15, !srcloc !166
  %21 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %this, align 4
  %add18.i = add i32 %22, 4
  %and19.i = and i32 %add18.i, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %23 = inttoptr i32 %add20.i to ptr
  call void @__raw_readsb(ptr noundef nonnull %23, ptr noundef nonnull %next, i32 noundef 2) #15
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %full_len.0)
  %tobool13.not = icmp ult i16 %full_len.0, 255
  br i1 %tobool13.not, label %if.then14, label %while.body.if.end16_crit_edge

while.body.if.end16_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then14:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %tx_buffer_head to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %tx_buffer_head, align 4
  %and.i44 = lshr i16 %25, 12
  %26 = trunc i16 %and.i44 to i8
  %conv1.i45 = and i8 %26, 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  call void @arm_heavy_mb() #15
  %27 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %this, align 4
  %add.i.i46 = add i32 %28, 1
  %and.i.i47 = and i32 %add.i.i46, 1048575
  %add1.i.i48 = or i32 %and.i.i47, -18874368
  %29 = inttoptr i32 %add1.i.i48 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 %conv1.i45) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !192
  call void @arm_heavy_mb() #15
  %conv4.i49 = trunc i16 %25 to i8
  %30 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %this, align 4
  %add.i50 = add i32 %31, 2
  %and5.i51 = and i32 %add.i50, 1048575
  %add6.i52 = or i32 %and5.i51, -18874368
  %32 = inttoptr i32 %add6.i52 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 %conv4.i49) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !193
  call void @arm_heavy_mb() #15
  %33 = lshr i16 %25, 8
  %34 = trunc i16 %33 to i8
  %conv11.i53 = and i8 %34, 127
  %35 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %this, align 4
  %add13.i54 = add i32 %36, 3
  %and14.i55 = and i32 %add13.i54, 1048575
  %add15.i56 = or i32 %and14.i55, -18874368
  %37 = inttoptr i32 %add15.i56 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 %conv11.i53) #15, !srcloc !166
  %38 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %this, align 4
  %add18.i57 = add i32 %39, 4
  %and19.i58 = and i32 %add18.i57, 1048575
  %add20.i59 = or i32 %and19.i58, -18874368
  %40 = inttoptr i32 %add20.i59 to ptr
  call void @__raw_writesb(ptr noundef nonnull %40, ptr noundef nonnull %zero, i32 noundef 2) #15
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %while.body.if.end16_crit_edge
  %41 = ptrtoint ptr %next to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %next, align 2
  %43 = ptrtoint ptr %tx_buffer_head to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %tx_buffer_head, align 4
  %inc = add i16 %blk_cnt.0, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool18.not = icmp ne i16 %42, 0
  %or.cond = select i1 %tobool18.not, i1 true, i1 %tobool13.not
  br i1 %or.cond, label %if.end16.while.cond_crit_edge, label %if.then21

if.end16.while.cond_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  %44 = ptrtoint ptr %tx_buffer_head to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %5, ptr %tx_buffer_head, align 4
  br label %out

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  %45 = ptrtoint ptr %tx_buffer_cnt to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %tx_buffer_cnt, align 4
  %sub27 = sub i16 %46, %blk_cnt.0
  store i16 %sub27, ptr %tx_buffer_cnt, align 4
  br label %out

out:                                              ; preds = %while.end, %if.then21, %entry.out_crit_edge
  %ret.0 = phi i16 [ 0, %entry.out_crit_edge ], [ 0, %if.then21 ], [ %5, %while.end ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zero) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %next) #15
  ret i16 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wl3501_esbq_req(ptr nocapture noundef %this, ptr noundef %ptr) unnamed_addr #2 align 64 {
entry:
  %tmp = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp) #15
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %tmp, align 2
  %esbq_req_head = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 12
  %1 = ptrtoint ptr %esbq_req_head to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %esbq_req_head, align 2
  %and.i = lshr i16 %2, 12
  %3 = trunc i16 %and.i to i8
  %conv1.i = and i8 %3, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  tail call void @arm_heavy_mb() #15
  %4 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %this, align 4
  %add.i.i = add i32 %5, 1
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %6 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %conv1.i) #15, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !192
  tail call void @arm_heavy_mb() #15
  %conv4.i = trunc i16 %2 to i8
  %7 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %this, align 4
  %add.i = add i32 %8, 2
  %and5.i = and i32 %add.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %9 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %conv4.i) #15, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !193
  tail call void @arm_heavy_mb() #15
  %10 = lshr i16 %2, 8
  %11 = trunc i16 %10 to i8
  %conv11.i = and i8 %11, 127
  %12 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %this, align 4
  %add13.i = add i32 %13, 3
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %14 = inttoptr i32 %add15.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %conv11.i) #15, !srcloc !166
  %15 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %this, align 4
  %add18.i = add i32 %16, 4
  %and19.i = and i32 %add18.i, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %17 = inttoptr i32 %add20.i to ptr
  tail call void @__raw_writesb(ptr noundef nonnull %17, ptr noundef %ptr, i32 noundef 2) #15
  %18 = ptrtoint ptr %esbq_req_head to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %esbq_req_head, align 2
  %add = add i16 %19, 2
  %and.i20 = lshr i16 %add, 12
  %20 = trunc i16 %and.i20 to i8
  %conv1.i21 = and i8 %20, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  tail call void @arm_heavy_mb() #15
  %21 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %this, align 4
  %add.i.i22 = add i32 %22, 1
  %and.i.i23 = and i32 %add.i.i22, 1048575
  %add1.i.i24 = or i32 %and.i.i23, -18874368
  %23 = inttoptr i32 %add1.i.i24 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %conv1.i21) #15, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !192
  tail call void @arm_heavy_mb() #15
  %conv4.i25 = trunc i16 %add to i8
  %24 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %this, align 4
  %add.i26 = add i32 %25, 2
  %and5.i27 = and i32 %add.i26, 1048575
  %add6.i28 = or i32 %and5.i27, -18874368
  %26 = inttoptr i32 %add6.i28 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 %conv4.i25) #15, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !193
  tail call void @arm_heavy_mb() #15
  %27 = lshr i16 %add, 8
  %28 = trunc i16 %27 to i8
  %conv11.i29 = and i8 %28, 127
  %29 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %this, align 4
  %add13.i30 = add i32 %30, 3
  %and14.i31 = and i32 %add13.i30, 1048575
  %add15.i32 = or i32 %and14.i31, -18874368
  %31 = inttoptr i32 %add15.i32 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 %conv11.i29) #15, !srcloc !166
  %32 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %this, align 4
  %add18.i33 = add i32 %33, 4
  %and19.i34 = and i32 %add18.i33, 1048575
  %add20.i35 = or i32 %and19.i34, -18874368
  %34 = inttoptr i32 %add20.i35 to ptr
  call void @__raw_writesb(ptr noundef nonnull %34, ptr noundef nonnull %tmp, i32 noundef 2) #15
  %35 = ptrtoint ptr %esbq_req_head to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %esbq_req_head, align 2
  %add5 = add i16 %36, 4
  store i16 %add5, ptr %esbq_req_head, align 2
  %esbq_req_end = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 11
  %37 = ptrtoint ptr %esbq_req_end to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %esbq_req_end, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %add5, i16 %38)
  %cmp.not = icmp ult i16 %add5, %38
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %esbq_req_start = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 10
  %39 = ptrtoint ptr %esbq_req_start to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %esbq_req_start, align 2
  %41 = ptrtoint ptr %esbq_req_head to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %esbq_req_head, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wl3501_free_tx_buffer(ptr nocapture noundef %this, i16 noundef zeroext %ptr) unnamed_addr #2 align 64 {
entry:
  %ptr.addr = alloca i16, align 2
  %next = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr.addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %ptr, ptr %ptr.addr, align 2
  %tx_buffer_head = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 7
  %1 = ptrtoint ptr %tx_buffer_head to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %tx_buffer_head, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = ptrtoint ptr %tx_buffer_head to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %ptr, ptr %tx_buffer_head, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %tx_buffer_tail = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 8
  %4 = ptrtoint ptr %tx_buffer_tail to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %tx_buffer_tail, align 2
  %and.i = lshr i16 %5, 12
  %6 = trunc i16 %and.i to i8
  %conv1.i = and i8 %6, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  tail call void @arm_heavy_mb() #15
  %7 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %this, align 4
  %add.i.i = add i32 %8, 1
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %9 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %conv1.i) #15, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !192
  tail call void @arm_heavy_mb() #15
  %conv4.i = trunc i16 %5 to i8
  %10 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %this, align 4
  %add.i = add i32 %11, 2
  %and5.i = and i32 %add.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %12 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %conv4.i) #15, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !193
  tail call void @arm_heavy_mb() #15
  %13 = lshr i16 %5, 8
  %14 = trunc i16 %13 to i8
  %conv11.i = and i8 %14, 127
  %15 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %this, align 4
  %add13.i = add i32 %16, 3
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %17 = inttoptr i32 %add15.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %conv11.i) #15, !srcloc !166
  %18 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %this, align 4
  %add18.i = add i32 %19, 4
  %and19.i = and i32 %add18.i, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %20 = inttoptr i32 %add20.i to ptr
  call void @__raw_writesb(ptr noundef nonnull %20, ptr noundef nonnull %ptr.addr, i32 noundef 2) #15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %21 = ptrtoint ptr %ptr.addr to i32
  call void @__asan_load2_noabort(i32 %21)
  %.pr = load i16, ptr %ptr.addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr)
  %tobool2.not26 = icmp eq i16 %.pr, 0
  br i1 %tobool2.not26, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %tx_buffer_cnt = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 9
  %tx_buffer_tail3 = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 8
  %extract.t = trunc i16 %.pr to i8
  %extract = lshr i16 %.pr, 8
  %extract.t28 = trunc i16 %extract to i8
  %extract31 = lshr i16 %.pr, 12
  %extract.t32 = trunc i16 %extract31 to i8
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %.off0 = phi i8 [ %extract.t, %while.body.lr.ph ], [ %extract.t27, %while.body.while.body_crit_edge ]
  %.off8 = phi i8 [ %extract.t28, %while.body.lr.ph ], [ %extract.t30, %while.body.while.body_crit_edge ]
  %.off12 = phi i8 [ %extract.t32, %while.body.lr.ph ], [ %extract.t34, %while.body.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %next) #15
  %22 = ptrtoint ptr %next to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -1, ptr %next, align 2, !annotation !189
  %23 = ptrtoint ptr %tx_buffer_cnt to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %tx_buffer_cnt, align 4
  %inc = add i16 %24, 1
  store i16 %inc, ptr %tx_buffer_cnt, align 4
  %conv1.i11 = and i8 %.off12, 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  call void @arm_heavy_mb() #15
  %25 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %this, align 4
  %add.i.i12 = add i32 %26, 1
  %and.i.i13 = and i32 %add.i.i12, 1048575
  %add1.i.i14 = or i32 %and.i.i13, -18874368
  %27 = inttoptr i32 %add1.i.i14 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %conv1.i11) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  %28 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %this, align 4
  %add.i16 = add i32 %29, 2
  %and5.i17 = and i32 %add.i16, 1048575
  %add6.i18 = or i32 %and5.i17, -18874368
  %30 = inttoptr i32 %add6.i18 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 %.off0) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !191
  call void @arm_heavy_mb() #15
  %conv11.i19 = and i8 %.off8, 127
  %31 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %this, align 4
  %add13.i20 = add i32 %32, 3
  %and14.i21 = and i32 %add13.i20, 1048575
  %add15.i22 = or i32 %and14.i21, -18874368
  %33 = inttoptr i32 %add15.i22 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 %conv11.i19) #15, !srcloc !166
  %34 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %this, align 4
  %add18.i23 = add i32 %35, 4
  %and19.i24 = and i32 %add18.i23, 1048575
  %add20.i25 = or i32 %and19.i24, -18874368
  %36 = inttoptr i32 %add20.i25 to ptr
  call void @__raw_readsb(ptr noundef nonnull %36, ptr noundef nonnull %next, i32 noundef 2) #15
  %37 = ptrtoint ptr %ptr.addr to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %ptr.addr, align 2
  %39 = ptrtoint ptr %tx_buffer_tail3 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %tx_buffer_tail3, align 2
  %40 = ptrtoint ptr %next to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %next, align 2
  store i16 %41, ptr %ptr.addr, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %next) #15
  %tobool2.not = icmp eq i16 %41, 0
  %extract.t27 = trunc i16 %41 to i8
  %extract29 = lshr i16 %41, 8
  %extract.t30 = trunc i16 %extract29 to i8
  %extract33 = lshr i16 %41, 12
  %extract.t34 = trunc i16 %extract33 to i8
  br i1 %tobool2.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wl3501_reset(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %sig.i = alloca %struct.wl3501_scan_req, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %lock = getelementptr i8, ptr %dev, i32 2316
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %1, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #15, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !184
  %and3.i = and i8 %3, -15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !185
  tail call void @arm_heavy_mb() #15
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %and7.i = and i32 %5, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %6 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %and3.i) #15, !srcloc !166
  %call7 = tail call fastcc i32 @wl3501_init_firmware(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %do.end10

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %dev) #18
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %call13 = tail call ptr @free_irq(i32 noundef %8, ptr noundef %dev) #15
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %9 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %10, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  %adhoc_times = getelementptr i8, ptr %dev, i32 2733
  %11 = ptrtoint ptr %adhoc_times to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %adhoc_times, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !183
  tail call void @arm_heavy_mb() #15
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i, align 4
  %and.i41 = and i32 %13, 1048575
  %add1.i42 = or i32 %and.i41, -18874368
  %14 = inttoptr i32 %add1.i42 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 8) #15, !srcloc !166
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i, align 4
  %and.i43 = and i32 %16, 1048575
  %add1.i44 = or i32 %and.i43, -18874368
  %17 = inttoptr i32 %add1.i44 to ptr
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #15, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !187
  %19 = and i8 %18, -15
  %20 = or i8 %19, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !188
  tail call void @arm_heavy_mb() #15
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i, align 4
  %and7.i45 = and i32 %22, 1048575
  %add8.i46 = or i32 %and7.i45, -18874368
  %23 = inttoptr i32 %add8.i46 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %20) #15, !srcloc !166
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %sig.i) #15
  %24 = call ptr @memset(ptr %sig.i, i32 0, i32 64)
  %sig_id.i = getelementptr inbounds %struct.wl3501_scan_req, ptr %sig.i, i32 0, i32 1
  %25 = ptrtoint ptr %sig_id.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 40, ptr %sig_id.i, align 2
  %bss_type.i = getelementptr inbounds %struct.wl3501_scan_req, ptr %sig.i, i32 0, i32 2
  %net_type.i.i = getelementptr i8, ptr %dev, i32 2624
  %26 = ptrtoint ptr %net_type.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %net_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp.i.i = icmp ne i32 %27, 2
  %conv.i = zext i1 %cmp.i.i to i8
  %28 = ptrtoint ptr %bss_type.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv.i, ptr %bss_type.i, align 1
  %probe_delay.i = getelementptr inbounds %struct.wl3501_scan_req, ptr %sig.i, i32 0, i32 3
  %29 = ptrtoint ptr %probe_delay.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 16, ptr %probe_delay.i, align 4
  %min_chan_time.i = getelementptr inbounds %struct.wl3501_scan_req, ptr %sig.i, i32 0, i32 4
  %30 = ptrtoint ptr %min_chan_time.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 100, ptr %min_chan_time.i, align 2
  %max_chan_time.i = getelementptr inbounds %struct.wl3501_scan_req, ptr %sig.i, i32 0, i32 5
  %31 = ptrtoint ptr %max_chan_time.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 100, ptr %max_chan_time.i, align 4
  %scan_type.i = getelementptr inbounds %struct.wl3501_scan_req, ptr %sig.i, i32 0, i32 9
  %32 = ptrtoint ptr %scan_type.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %scan_type.i, align 4
  %join_sta_bss.i = getelementptr i8, ptr %dev, i32 2730
  %33 = ptrtoint ptr %join_sta_bss.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %join_sta_bss.i, align 2
  %bss_cnt.i = getelementptr i8, ptr %dev, i32 2728
  %34 = ptrtoint ptr %bss_cnt.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %bss_cnt.i, align 4
  %call1.i = call fastcc i32 @wl3501_esbq_exec(ptr noundef %add.ptr.i, ptr noundef nonnull %sig.i, i32 noundef 68) #15
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %sig.i) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl3501_reset.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl3501_reset, %if.then22)) #15
          to label %out [label %if.then22], !srcloc !186

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl3501_reset.__UNIQUE_ID_ddebug357, ptr noundef nonnull @.str.19, ptr noundef %dev) #15
  br label %out

out:                                              ; preds = %if.then22, %if.end, %do.end10
  %rc.0 = phi i32 [ -19, %do.end10 ], [ 0, %if.then22 ], [ 0, %if.end ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #15
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @wl3501_get_wireless_stats(ptr noundef %dev) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %wstats1 = getelementptr i8, ptr %dev, i32 4660
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #15
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !189
  %1 = call ptr @memset(ptr %wstats1, i32 0, i32 32)
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = trunc i32 %3 to i16
  %5 = and i16 %4, 1
  %6 = ptrtoint ptr %wstats1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %wstats1, align 4
  %call3 = call fastcc i32 @wl3501_get_mib_value(ptr noundef %add.ptr.i, i8 noundef zeroext 16, ptr noundef nonnull %value, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  %code = getelementptr i8, ptr %dev, i32 4672
  %9 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %code, align 4
  %add = add i32 %10, %8
  store i32 %add, ptr %code, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call4 = call fastcc i32 @wl3501_get_mib_value(ptr noundef %add.ptr.i, i8 noundef zeroext 17, ptr noundef nonnull %value, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value, align 4
  %code8 = getelementptr i8, ptr %dev, i32 4672
  %13 = ptrtoint ptr %code8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %code8, align 4
  %add9 = add i32 %14, %12
  store i32 %add9, ptr %code8, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end.if.end10_crit_edge
  %call11 = call fastcc i32 @wl3501_get_mib_value(ptr noundef %add.ptr.i, i8 noundef zeroext 18, ptr noundef nonnull %value, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end10.if.end17_crit_edge

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %value, align 4
  %code15 = getelementptr i8, ptr %dev, i32 4672
  %17 = ptrtoint ptr %code15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %code15, align 4
  %add16 = add i32 %18, %16
  store i32 %add16, ptr %code15, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end10.if.end17_crit_edge
  %call18 = call fastcc i32 @wl3501_get_mib_value(ptr noundef %add.ptr.i, i8 noundef zeroext 35, ptr noundef nonnull %value, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then20, label %if.end17.if.end22_crit_edge

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %value, align 4
  %retries = getelementptr i8, ptr %dev, i32 4680
  %21 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %retries, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end17.if.end22_crit_edge
  %call23 = call fastcc i32 @wl3501_get_mib_value(ptr noundef %add.ptr.i, i8 noundef zeroext 31, ptr noundef nonnull %value, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %if.end22.if.end28_crit_edge

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  %22 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %value, align 4
  %misc = getelementptr i8, ptr %dev, i32 4684
  %24 = ptrtoint ptr %misc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %misc, align 4
  %add27 = add i32 %25, %23
  store i32 %add27, ptr %misc, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end22.if.end28_crit_edge
  %call29 = call fastcc i32 @wl3501_get_mib_value(ptr noundef %add.ptr.i, i8 noundef zeroext 38, ptr noundef nonnull %value, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then31, label %if.end28.if.end35_crit_edge

if.end28.if.end35_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  %26 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %value, align 4
  %misc33 = getelementptr i8, ptr %dev, i32 4684
  %28 = ptrtoint ptr %misc33 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %misc33, align 4
  %add34 = add i32 %29, %27
  store i32 %add34, ptr %misc33, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %if.end28.if.end35_crit_edge
  %call36 = call fastcc i32 @wl3501_get_mib_value(ptr noundef %add.ptr.i, i8 noundef zeroext 39, ptr noundef nonnull %value, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then38, label %if.end35.if.end42_crit_edge

if.end35.if.end42_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  %30 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %value, align 4
  %misc40 = getelementptr i8, ptr %dev, i32 4684
  %32 = ptrtoint ptr %misc40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %misc40, align 4
  %add41 = add i32 %33, %31
  store i32 %add41, ptr %misc40, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %if.end35.if.end42_crit_edge
  %call43 = call fastcc i32 @wl3501_get_mib_value(ptr noundef %add.ptr.i, i8 noundef zeroext 40, ptr noundef nonnull %value, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then45, label %if.end42.if.end49_crit_edge

if.end42.if.end49_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end49

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  %34 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %value, align 4
  %misc47 = getelementptr i8, ptr %dev, i32 4684
  %36 = ptrtoint ptr %misc47 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %misc47, align 4
  %add48 = add i32 %37, %35
  store i32 %add48, ptr %misc47, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then45, %if.end42.if.end49_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #15
  ret ptr %wstats1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl3501_get_name(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %info, ptr noundef %wrqu, ptr nocapture noundef readnone %extra) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlcpy(ptr noundef %wrqu, ptr noundef nonnull @.str.20, i32 noundef 16) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl3501_set_freq(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %wrqu, ptr nocapture noundef readnone %extra) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wrqu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wrqu, align 4
  %reg_domain = getelementptr i8, ptr %dev, i32 2734
  %2 = ptrtoint ptr %reg_domain to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reg_domain, align 2
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.60)
  switch i8 %3, label %entry.if.end_crit_edge [
    i8 16, label %entry.if.then.i_crit_edge
    i8 32, label %if.then.fold.split.i
    i8 48, label %if.then.fold.split15.i
    i8 49, label %if.then.fold.split16.i
    i8 50, label %if.then.fold.split17.i
    i8 64, label %if.then.fold.split18.i
    i8 65, label %if.then.fold.split19.i
    i8 80, label %if.then.fold.split20.i
  ]

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then.fold.split.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.fold.split15.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.fold.split16.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.fold.split17.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.fold.split18.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.fold.split19.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.fold.split20.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.fold.split20.i, %if.then.fold.split19.i, %if.then.fold.split18.i, %if.then.fold.split17.i, %if.then.fold.split16.i, %if.then.fold.split15.i, %if.then.fold.split.i, %entry.if.then.i_crit_edge
  %i.013.lcssa.i = phi i32 [ 0, %entry.if.then.i_crit_edge ], [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split15.i ], [ 3, %if.then.fold.split16.i ], [ 4, %if.then.fold.split17.i ], [ 5, %if.then.fold.split18.i ], [ 6, %if.then.fold.split19.i ], [ 7, %if.then.fold.split20.i ]
  %min.i = getelementptr [8 x %struct.anon.131], ptr @iw_channel_table, i32 0, i32 %i.013.lcssa.i, i32 1
  %5 = ptrtoint ptr %min.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %min.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %1)
  %cmp4.not.i = icmp sgt i32 %6, %1
  br i1 %cmp4.not.i, label %if.then.i.if.end_crit_edge, label %iw_valid_channel.exit

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

iw_valid_channel.exit:                            ; preds = %if.then.i
  %max.i = getelementptr [8 x %struct.anon.131], ptr @iw_channel_table, i32 0, i32 %i.013.lcssa.i, i32 2
  %7 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %1)
  %cmp6.i.not = icmp slt i32 %8, %1
  br i1 %cmp6.i.not, label %iw_valid_channel.exit.if.end_crit_edge, label %if.then

iw_valid_channel.exit.if.end_crit_edge:           ; preds = %iw_valid_channel.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %iw_valid_channel.exit
  call void @__sanitizer_cov_trace_pc() #17
  %conv2 = trunc i32 %1 to i8
  %chan = getelementptr i8, ptr %dev, i32 2724
  %9 = ptrtoint ptr %chan to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv2, ptr %chan, align 4
  %call3 = tail call fastcc i32 @wl3501_reset(ptr noundef %dev)
  br label %if.end

if.end:                                           ; preds = %if.then, %iw_valid_channel.exit.if.end_crit_edge, %if.then.i.if.end_crit_edge, %entry.if.end_crit_edge
  %rc.0 = phi i32 [ %call3, %if.then ], [ -22, %iw_valid_channel.exit.if.end_crit_edge ], [ -22, %if.then.i.if.end_crit_edge ], [ -22, %entry.if.end_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl3501_get_freq(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %wrqu, ptr nocapture noundef readnone %extra) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %chan = getelementptr i8, ptr %dev, i32 2724
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %chan, align 4
  %conv = zext i8 %1 to i32
  %call.i = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %conv, i32 noundef 0) #15
  %div.i = udiv i32 %call.i, 1000
  %mul = mul i32 %div.i, 100000
  %2 = ptrtoint ptr %wrqu to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %mul, ptr %wrqu, align 4
  %e = getelementptr inbounds %struct.iw_freq, ptr %wrqu, i32 0, i32 1
  %3 = ptrtoint ptr %e to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 1, ptr %e, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl3501_set_mode(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %wrqu, ptr nocapture noundef readnone %extra) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wrqu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wrqu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %switch = icmp ult i32 %1, 3
  br i1 %switch, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %net_type = getelementptr i8, ptr %dev, i32 2624
  %2 = ptrtoint ptr %net_type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %net_type, align 4
  %call4 = tail call fastcc i32 @wl3501_reset(ptr noundef %dev)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rc.0 = phi i32 [ %call4, %if.then ], [ -22, %entry.if.end_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wl3501_get_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %wrqu, ptr nocapture noundef readnone %extra) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %net_type = getelementptr i8, ptr %dev, i32 2624
  %0 = ptrtoint ptr %net_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %net_type, align 4
  %2 = ptrtoint ptr %wrqu to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %wrqu, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wl3501_get_sens(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %wrqu, ptr nocapture noundef readnone %extra) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rssi = getelementptr i8, ptr %dev, i32 2732
  %0 = ptrtoint ptr %rssi to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rssi, align 4
  %conv = zext i8 %1 to i32
  %2 = ptrtoint ptr %wrqu to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %wrqu, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %conv2 = zext i1 %tobool.not to i8
  %disabled = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 2
  %3 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv2, ptr %disabled, align 1
  %fixed = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 1
  %4 = ptrtoint ptr %fixed to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %fixed, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @wl3501_get_range(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %wrqu, ptr nocapture noundef writeonly %extra) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 568, ptr %length, align 4
  %1 = getelementptr inbounds i8, ptr %extra, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 564)
  %we_version_compiled = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 30
  %3 = ptrtoint ptr %we_version_compiled to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 22, ptr %we_version_compiled, align 4
  %we_version_source = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 31
  %4 = ptrtoint ptr %we_version_source to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %we_version_source, align 1
  %5 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2000000, ptr %extra, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iw_handler_set_spy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iw_handler_get_spy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iw_handler_set_thrspy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iw_handler_get_thrspy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wl3501_set_wap(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %wrqu, ptr nocapture noundef readnone %extra) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wrqu to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %wrqu, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %1)
  %cmp.not = icmp eq i16 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %wrqu, i32 0, i32 1
  %2 = ptrtoint ptr %sa_data to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sa_data, align 2
  %add.ptr1.i = getelementptr %struct.sockaddr, ptr %wrqu, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %5, %3
  %add.ptr3.i = getelementptr %struct.sockaddr, ptr %wrqu, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %7
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i = icmp eq i16 %and510.i, -1
  br i1 %cmp.i, label %if.end.out_crit_edge, label %if.else

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %bssid = getelementptr i8, ptr %dev, i32 2616
  %8 = call ptr @memcpy(ptr %bssid, ptr %sa_data, i32 6)
  br label %out

out:                                              ; preds = %if.else, %if.end.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ -22, %entry.out_crit_edge ], [ 0, %if.end.out_crit_edge ], [ 0, %if.else ]
  ret i32 %rc.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wl3501_get_wap(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %wrqu, ptr nocapture noundef readnone %extra) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wrqu to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 1, ptr %wrqu, align 4
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %wrqu, i32 0, i32 1
  %bssid = getelementptr i8, ptr %dev, i32 2616
  %1 = call ptr @memcpy(ptr %sa_data, ptr %bssid, i32 6)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl3501_set_scan(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %wrqu, ptr nocapture noundef readnone %extra) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @wl3501_reset(ptr noundef %dev)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl3501_get_scan(ptr noundef %dev, ptr noundef %info, ptr nocapture noundef writeonly %wrqu, ptr noundef %extra) #2 align 64 {
entry:
  %iwe = alloca %struct.iw_event, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %iwe) #15
  %0 = getelementptr inbounds %struct.iw_event, ptr %iwe, i32 0, i32 1
  %1 = getelementptr inbounds %struct.iw_event, ptr %iwe, i32 0, i32 2
  %2 = getelementptr inbounds %struct.iw_event, ptr %iwe, i32 0, i32 2, i32 0, i32 1
  %3 = getelementptr inbounds %struct.iw_event, ptr %iwe, i32 0, i32 2, i32 0, i32 2
  %bss_cnt = getelementptr i8, ptr %dev, i32 2728
  %4 = call ptr @memset(ptr %iwe, i32 255, i32 20)
  %5 = ptrtoint ptr %bss_cnt to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %bss_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp82.not = icmp eq i16 %6, 0
  br i1 %cmp82.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %1, i32 0, i32 1
  %add.ptr = getelementptr i8, ptr %extra, i32 4096
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %current_ev.084 = phi ptr [ %extra, %for.body.lr.ph ], [ %call48, %for.body.for.body_crit_edge ]
  %i.083 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -29931, ptr %0, align 2
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %1, align 4
  %bssid = getelementptr %struct.wl3501_card, ptr %add.ptr.i, i32 0, i32 33, i32 %i.083, i32 6, i32 4
  %9 = call ptr @memcpy(ptr %sa_data, ptr %bssid, i32 6)
  %call4 = call ptr @iwe_stream_add_event(ptr noundef %info, ptr noundef %current_ev.084, ptr noundef %add.ptr, ptr noundef nonnull %iwe, i32 noundef 20) #15
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -29925, ptr %0, align 2
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %3, align 2
  %len = getelementptr %struct.wl3501_card, ptr %add.ptr.i, i32 0, i32 33, i32 %i.083, i32 6, i32 5, i32 0, i32 1
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %len, align 1
  %conv10 = zext i8 %13 to i16
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv10, ptr %2, align 4
  %essid = getelementptr %struct.wl3501_card, ptr %add.ptr.i, i32 0, i32 33, i32 %i.083, i32 6, i32 5, i32 1
  %call18 = call ptr @iwe_stream_add_point(ptr noundef %info, ptr noundef %call4, ptr noundef %add.ptr, ptr noundef nonnull %iwe, ptr noundef %essid) #15
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -29945, ptr %0, align 2
  %bss_type = getelementptr %struct.wl3501_card, ptr %add.ptr.i, i32 0, i32 33, i32 %i.083, i32 6, i32 3
  %16 = ptrtoint ptr %bss_type to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bss_type, align 2
  %conv23 = zext i8 %17 to i32
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv23, ptr %1, align 4
  %call26 = call ptr @iwe_stream_add_event(ptr noundef %info, ptr noundef %call18, ptr noundef %add.ptr, ptr noundef nonnull %iwe, i32 noundef 8) #15
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -29947, ptr %0, align 2
  %chan = getelementptr %struct.wl3501_card, ptr %add.ptr.i, i32 0, i32 33, i32 %i.083, i32 6, i32 6, i32 1
  %20 = ptrtoint ptr %chan to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %chan, align 1
  %conv31 = zext i8 %21 to i32
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv31, ptr %1, align 4
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %2, align 4
  %call35 = call ptr @iwe_stream_add_event(ptr noundef %info, ptr noundef %call26, ptr noundef %add.ptr, ptr noundef nonnull %iwe, i32 noundef 12) #15
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -29909, ptr %0, align 2
  %cap_info = getelementptr %struct.wl3501_card, ptr %add.ptr.i, i32 0, i32 33, i32 %i.083, i32 6, i32 2
  %25 = ptrtoint ptr %cap_info to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %cap_info, align 2
  %27 = and i16 %26, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool.not = icmp eq i16 %27, 0
  %. = select i1 %tobool.not, i16 -32768, i16 2048
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %., ptr %3, align 2
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %2, align 4
  %call48 = call ptr @iwe_stream_add_point(ptr noundef %info, ptr noundef %call35, ptr noundef %add.ptr, ptr noundef nonnull %iwe, ptr noundef null) #15
  %inc = add nuw nsw i32 %i.083, 1
  %30 = ptrtoint ptr %bss_cnt to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %bss_cnt, align 4
  %conv = zext i16 %31 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %current_ev.0.lcssa = phi ptr [ %extra, %entry.for.end_crit_edge ], [ %call48, %for.body.for.end_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %current_ev.0.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %extra to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv49 = trunc i32 %sub.ptr.sub to i16
  %length50 = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %32 = ptrtoint ptr %length50 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv49, ptr %length50, align 4
  %flags51 = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 2
  %33 = ptrtoint ptr %flags51 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags51, align 2
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %iwe) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl3501_set_essid(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %wrqu, ptr nocapture noundef readonly %extra) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  %essid1 = getelementptr i8, ptr %dev, i32 2548
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %length = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %length, align 4
  %conv = zext i16 %3 to i32
  %4 = ptrtoint ptr %essid1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %essid1, align 1
  %conv2.i = trunc i16 %3 to i8
  %len3.i = getelementptr i8, ptr %dev, i32 2549
  %5 = ptrtoint ptr %len3.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv2.i, ptr %len3.i, align 1
  %data.i = getelementptr i8, ptr %dev, i32 2550
  %6 = call ptr @memcpy(ptr %data.i, ptr %extra, i32 %conv)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %essid1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %essid1, align 1
  %len3.i7 = getelementptr i8, ptr %dev, i32 2549
  %8 = ptrtoint ptr %len3.i7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 3, ptr %len3.i7, align 1
  %data.i8 = getelementptr i8, ptr %dev, i32 2550
  %9 = call ptr @memcpy(ptr %data.i8, ptr @.str.21, i32 3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call3 = tail call fastcc i32 @wl3501_reset(ptr noundef %dev)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl3501_get_essid(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %wrqu, ptr nocapture noundef writeonly %extra) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 2316
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %flags6 = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 2
  %0 = ptrtoint ptr %flags6 to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 1, ptr %flags6, align 2
  %len = getelementptr i8, ptr %dev, i32 2549
  %1 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %len, align 1
  %conv7 = zext i8 %2 to i16
  %length = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %3 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv7, ptr %length, align 4
  %essid9 = getelementptr i8, ptr %dev, i32 2550
  %4 = load i8, ptr %len, align 1
  %conv13 = zext i8 %4 to i32
  %5 = call ptr @memcpy(ptr %extra, ptr %essid9, i32 %conv13)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #15
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl3501_set_nick(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %wrqu, ptr noundef %extra) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %1)
  %cmp = icmp ugt i16 %1, 32
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %conv = zext i16 %1 to i32
  %nick = getelementptr i8, ptr %dev, i32 2628
  %call4 = tail call i32 @strlcpy(ptr noundef %nick, ptr noundef %extra, i32 noundef %conv) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -7, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl3501_get_nick(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %wrqu, ptr noundef %extra) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %nick = getelementptr i8, ptr %dev, i32 2628
  %call1 = tail call i32 @strlcpy(ptr noundef %extra, ptr noundef %nick, i32 noundef 32) #15
  %call2 = tail call i32 @strlen(ptr noundef %extra) #19
  %conv = trunc i32 %call2 to i16
  %length = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %length, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @wl3501_get_rate(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %wrqu, ptr nocapture noundef readnone %extra) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wrqu to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2000000, ptr %wrqu, align 4
  %fixed = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 1
  %1 = ptrtoint ptr %fixed to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %fixed, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl3501_get_rts_threshold(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %wrqu, ptr nocapture noundef readnone %extra) #2 align 64 {
entry:
  %threshold = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %threshold) #15
  %0 = ptrtoint ptr %threshold to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %threshold, align 2, !annotation !189
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = call fastcc i32 @wl3501_get_mib_value(ptr noundef %add.ptr.i, i8 noundef zeroext 21, ptr noundef nonnull %threshold, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = ptrtoint ptr %threshold to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %threshold, align 2
  %conv = zext i16 %2 to i32
  %3 = ptrtoint ptr %wrqu to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %wrqu, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2346, i16 %2)
  %cmp = icmp ugt i16 %2, 2346
  %conv4 = zext i1 %cmp to i8
  %disabled = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 2
  %4 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv4, ptr %disabled, align 1
  %fixed = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 1
  %5 = ptrtoint ptr %fixed to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %fixed, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %threshold) #15
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl3501_get_frag_threshold(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %wrqu, ptr nocapture noundef readnone %extra) #2 align 64 {
entry:
  %threshold = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %threshold) #15
  %0 = ptrtoint ptr %threshold to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %threshold, align 2, !annotation !189
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = call fastcc i32 @wl3501_get_mib_value(ptr noundef %add.ptr.i, i8 noundef zeroext 24, ptr noundef nonnull %threshold, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = ptrtoint ptr %threshold to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %threshold, align 2
  %conv = zext i16 %2 to i32
  %3 = ptrtoint ptr %wrqu to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %wrqu, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2345, i16 %2)
  %cmp = icmp ugt i16 %2, 2345
  %conv4 = zext i1 %cmp to i8
  %disabled = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 2
  %4 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv4, ptr %disabled, align 1
  %fixed = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 1
  %5 = ptrtoint ptr %fixed to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %fixed, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %threshold) #15
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl3501_get_txpow(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %wrqu, ptr nocapture noundef readnone %extra) #2 align 64 {
entry:
  %txpow = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txpow) #15
  %0 = ptrtoint ptr %txpow to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %txpow, align 2, !annotation !189
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = call fastcc i32 @wl3501_get_mib_value(ptr noundef %add.ptr.i, i8 noundef zeroext 80, ptr noundef nonnull %txpow, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = ptrtoint ptr %txpow to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %txpow, align 2
  %conv = zext i16 %2 to i32
  %3 = ptrtoint ptr %wrqu to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %wrqu, align 4
  %disabled = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 2
  %4 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %disabled, align 1
  %fixed = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 1
  %5 = ptrtoint ptr %fixed to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %fixed, align 4
  %flags = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %flags, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txpow) #15
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl3501_get_retry(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef %wrqu, ptr nocapture noundef readnone %extra) #2 align 64 {
entry:
  %retry = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retry) #15
  %0 = ptrtoint ptr %retry to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %retry, align 1, !annotation !189
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = call fastcc i32 @wl3501_get_mib_value(ptr noundef %add.ptr.i, i8 noundef zeroext 23, ptr noundef nonnull %retry, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 3
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %flags, align 2
  %3 = and i16 %2, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool2.not = icmp eq i16 %3, 0
  br i1 %tobool2.not, label %if.end5, label %if.end.set_value_crit_edge

if.end.set_value_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %set_value

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc i32 @wl3501_get_mib_value(ptr noundef %add.ptr.i, i8 noundef zeroext 22, ptr noundef nonnull %retry, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.set_value_crit_edge, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end5.set_value_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %set_value

set_value:                                        ; preds = %if.end5.set_value_crit_edge, %if.end.set_value_crit_edge
  %storemerge = phi i16 [ 4128, %if.end.set_value_crit_edge ], [ 4112, %if.end5.set_value_crit_edge ]
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %storemerge, ptr %flags, align 2
  %5 = ptrtoint ptr %retry to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %retry, align 1
  %conv11 = zext i8 %6 to i32
  %7 = ptrtoint ptr %wrqu to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv11, ptr %wrqu, align 4
  %disabled = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 2
  %8 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %disabled, align 1
  br label %out

out:                                              ; preds = %set_value, %if.end5.out_crit_edge, %entry.out_crit_edge
  %rc.1 = phi i32 [ %call1, %entry.out_crit_edge ], [ 0, %set_value ], [ %call6, %if.end5.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retry) #15
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl3501_get_encode(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef %wrqu, ptr nocapture noundef writeonly %extra) #2 align 64 {
entry:
  %implemented = alloca i8, align 1
  %restricted = alloca i8, align 1
  %keys = alloca [100 x i8], align 1
  %len_keys = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %implemented) #15
  %0 = ptrtoint ptr %implemented to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %implemented, align 1, !annotation !189
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %restricted) #15
  %1 = ptrtoint ptr %restricted to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %restricted, align 1, !annotation !189
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %keys) #15
  %2 = call ptr @memset(ptr %keys, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len_keys) #15
  %3 = ptrtoint ptr %len_keys to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %len_keys, align 1, !annotation !189
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = call fastcc i32 @wl3501_get_mib_value(ptr noundef %add.ptr.i, i8 noundef zeroext 9, ptr noundef nonnull %implemented, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %implemented to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %implemented, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %flags = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -32768, ptr %flags, align 2
  br label %out

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i32 @wl3501_get_mib_value(ptr noundef %add.ptr.i, i8 noundef zeroext 15, ptr noundef nonnull %restricted, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end8:                                          ; preds = %if.end4
  %7 = ptrtoint ptr %restricted to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %restricted, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool9.not = icmp eq i8 %8, 0
  %conv10 = select i1 %tobool9.not, i16 8192, i16 16384
  %flags11 = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 2
  %9 = ptrtoint ptr %flags11 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv10, ptr %flags11, align 2
  %call12 = call fastcc i32 @wl3501_get_mib_value(ptr noundef %add.ptr.i, i8 noundef zeroext 14, ptr noundef nonnull %len_keys, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end15:                                         ; preds = %if.end8
  %10 = ptrtoint ptr %len_keys to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %len_keys, align 1
  %conv16 = zext i8 %11 to i32
  %call17 = call fastcc i32 @wl3501_get_mib_value(ptr noundef %add.ptr.i, i8 noundef zeroext 13, ptr noundef nonnull %keys, i32 noundef %conv16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end15.out_crit_edge

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  %length = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %12 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %length, align 4
  %conv23 = zext i16 %13 to i32
  %14 = tail call i32 @llvm.umin.i32(i32 %conv16, i32 %conv23)
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 100)
  %16 = trunc i32 %15 to i16
  %17 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %length, align 4
  %18 = call ptr @memcpy(ptr %extra, ptr %keys, i32 %15)
  br label %out

out:                                              ; preds = %if.end20, %if.end15.out_crit_edge, %if.end8.out_crit_edge, %if.end4.out_crit_edge, %if.then3, %entry.out_crit_edge
  %rc.0 = phi i32 [ %call1, %entry.out_crit_edge ], [ %call5, %if.end4.out_crit_edge ], [ %call12, %if.end8.out_crit_edge ], [ %call17, %if.end15.out_crit_edge ], [ 0, %if.end20 ], [ 0, %if.then3 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len_keys) #15
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %keys) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %restricted) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %implemented) #15
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl3501_get_power(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %wrqu, ptr nocapture noundef readnone %extra) #2 align 64 {
entry:
  %pwr_state = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pwr_state) #15
  %0 = ptrtoint ptr %pwr_state to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %pwr_state, align 1, !annotation !189
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = call fastcc i32 @wl3501_get_mib_value(ptr noundef %add.ptr.i, i8 noundef zeroext 86, ptr noundef nonnull %pwr_state, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = ptrtoint ptr %pwr_state to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %pwr_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool2.not = icmp eq i8 %2, 0
  %conv = zext i1 %tobool2.not to i8
  %disabled = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 2
  %3 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %disabled, align 1
  %flags = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %flags, align 2
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pwr_state) #15
  ret i32 %call1
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwe_stream_add_event(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwe_stream_add_point(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wl3501_get_mib_value(ptr noundef %this, i8 noundef zeroext %index, ptr nocapture noundef writeonly %bf, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  %tmp.i.i = alloca i8, align 1
  %sig.i = alloca %struct.wl3501_get_req, align 2
  %ptr.i = alloca i16, align 2
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %sig.i) #15
  %0 = getelementptr inbounds %struct.wl3501_get_req, ptr %sig.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wl3501_get_req, ptr %sig.i, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wl3501_get_req, ptr %sig.i, i32 0, i32 3
  %3 = ptrtoint ptr %sig.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %sig.i, align 2
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 36, ptr %0, align 2
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %1, align 1
  %conv.i = zext i8 %index to i16
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i, ptr %2, align 2
  %lock.i = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 2
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i) #15
  %7 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %tmp.i.i, align 1
  %esbq_req_head.i.i = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 12
  %8 = ptrtoint ptr %esbq_req_head.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %esbq_req_head.i.i, align 2
  %add.i.i = add i16 %9, 3
  %and.i.i.i = lshr i16 %add.i.i, 12
  %10 = trunc i16 %and.i.i.i to i8
  %conv1.i.i.i = and i8 %10, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  tail call void @arm_heavy_mb() #15
  %11 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %this, align 4
  %add.i.i.i.i = add i32 %12, 1
  %and.i.i.i.i = and i32 %add.i.i.i.i, 1048575
  %add1.i.i.i.i = or i32 %and.i.i.i.i, -18874368
  %13 = inttoptr i32 %add1.i.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %conv1.i.i.i) #15, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  tail call void @arm_heavy_mb() #15
  %conv4.i.i.i = trunc i16 %add.i.i to i8
  %14 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %this, align 4
  %add.i.i.i = add i32 %15, 2
  %and5.i.i.i = and i32 %add.i.i.i, 1048575
  %add6.i.i.i = or i32 %and5.i.i.i, -18874368
  %16 = inttoptr i32 %add6.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %conv4.i.i.i) #15, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !191
  tail call void @arm_heavy_mb() #15
  %17 = lshr i16 %add.i.i, 8
  %18 = trunc i16 %17 to i8
  %conv11.i.i.i = and i8 %18, 127
  %19 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %this, align 4
  %add13.i.i.i = add i32 %20, 3
  %and14.i.i.i = and i32 %add13.i.i.i, 1048575
  %add15.i.i.i = or i32 %and14.i.i.i, -18874368
  %21 = inttoptr i32 %add15.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %conv11.i.i.i) #15, !srcloc !166
  %22 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %this, align 4
  %add18.i.i.i = add i32 %23, 4
  %and19.i.i.i = and i32 %add18.i.i.i, 1048575
  %add20.i.i.i = or i32 %and19.i.i.i, -18874368
  %24 = inttoptr i32 %add20.i.i.i to ptr
  call void @__raw_readsb(ptr noundef nonnull %24, ptr noundef nonnull %tmp.i.i, i32 noundef 1) #15
  %25 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %tmp.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %26)
  %tobool.not.i = icmp sgt i8 %26, -1
  br i1 %tobool.not.i, label %wl3501_request_mib.exit.thread, label %if.then.i

wl3501_request_mib.exit.thread:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #15
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %sig.i) #15
  br label %cleanup25

if.then.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ptr.i) #15
  %call7.i = call fastcc zeroext i16 @wl3501_get_tx_buffer(ptr noundef %this, i16 noundef zeroext 6) #15
  %27 = ptrtoint ptr %ptr.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %call7.i, ptr %ptr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call7.i)
  %tobool8.not.i = icmp eq i16 %call7.i, 0
  br i1 %tobool8.not.i, label %wl3501_request_mib.exit, label %if.end

wl3501_request_mib.exit:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ptr.i) #15
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #15
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %sig.i) #15
  br label %cleanup25

if.end:                                           ; preds = %if.then.i
  %and.i1.i = lshr i16 %call7.i, 12
  %28 = trunc i16 %and.i1.i to i8
  %conv1.i.i = and i8 %28, 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  call void @arm_heavy_mb() #15
  %29 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %this, align 4
  %add.i.i2.i = add i32 %30, 1
  %and.i.i3.i = and i32 %add.i.i2.i, 1048575
  %add1.i.i.i = or i32 %and.i.i3.i, -18874368
  %31 = inttoptr i32 %add1.i.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 %conv1.i.i) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !192
  call void @arm_heavy_mb() #15
  %conv4.i.i = trunc i16 %call7.i to i8
  %32 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %this, align 4
  %add.i4.i = add i32 %33, 2
  %and5.i.i = and i32 %add.i4.i, 1048575
  %add6.i.i = or i32 %and5.i.i, -18874368
  %34 = inttoptr i32 %add6.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 %conv4.i.i) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !193
  call void @arm_heavy_mb() #15
  %35 = lshr i16 %call7.i, 8
  %36 = trunc i16 %35 to i8
  %conv11.i.i = and i8 %36, 127
  %37 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %this, align 4
  %add13.i.i = add i32 %38, 3
  %and14.i.i = and i32 %add13.i.i, 1048575
  %add15.i.i = or i32 %and14.i.i, -18874368
  %39 = inttoptr i32 %add15.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 %conv11.i.i) #15, !srcloc !166
  %40 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %this, align 4
  %add18.i.i = add i32 %41, 4
  %and19.i.i = and i32 %add18.i.i, 1048575
  %add20.i.i = or i32 %and19.i.i, -18874368
  %42 = inttoptr i32 %add20.i.i to ptr
  call void @__raw_writesb(ptr noundef nonnull %42, ptr noundef nonnull %sig.i, i32 noundef 6) #15
  call fastcc void @wl3501_esbq_req(ptr noundef %this, ptr noundef nonnull %ptr.i) #15
  %mib_status.i = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 4, i32 3
  %43 = ptrtoint ptr %mib_status.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 255, ptr %mib_status.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ptr.i) #15
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #15
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %sig.i) #15
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 418) #15
  %44 = ptrtoint ptr %mib_status.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %mib_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %45)
  %cmp.not = icmp eq i16 %45, 255
  br i1 %cmp.not, label %if.then5, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.then5:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #15
  %46 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #15
  %wait = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 3
  %call755 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #15
  %47 = ptrtoint ptr %mib_status.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %mib_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %48)
  %cmp11.not56 = icmp eq i16 %48, 255
  br i1 %cmp11.not56, label %if.then5.if.end14_crit_edge, label %if.then5.if.end19.thread50_crit_edge

if.then5.if.end19.thread50_crit_edge:             ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19.thread50

if.then5.if.end14_crit_edge:                      ; preds = %if.then5
  br label %if.end14

if.end14:                                         ; preds = %cleanup.if.end14_crit_edge, %if.then5.if.end14_crit_edge
  %call757 = phi i32 [ %call7, %cleanup.if.end14_crit_edge ], [ %call755, %if.then5.if.end14_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call757)
  %tobool15.not = icmp eq i32 %call757, 0
  br i1 %tobool15.not, label %cleanup, label %if.end19

cleanup:                                          ; preds = %if.end14
  call void @schedule() #15
  %call7 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #15
  %49 = ptrtoint ptr %mib_status.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %mib_status.i, align 4
  %cmp11.not = icmp eq i16 %50, 255
  br i1 %cmp11.not, label %cleanup.if.end14_crit_edge, label %cleanup.if.end19.thread50_crit_edge

cleanup.if.end19.thread50_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19.thread50

cleanup.if.end14_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.end19.thread50:                                ; preds = %cleanup.if.end19.thread50_crit_edge, %if.then5.if.end19.thread50_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #15
  br label %if.end23

if.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #15
  br label %cleanup25

if.end23:                                         ; preds = %if.end19.thread50, %if.end.if.end23_crit_edge
  %mib_value = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 4, i32 5
  %51 = call ptr @memcpy(ptr %bf, ptr %mib_value, i32 %size)
  br label %cleanup25

cleanup25:                                        ; preds = %if.end23, %if.end19, %wl3501_request_mib.exit, %wl3501_request_mib.exit.thread
  %retval.0 = phi i32 [ 0, %if.end23 ], [ -5, %wl3501_request_mib.exit ], [ %call757, %if.end19 ], [ -5, %wl3501_request_mib.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_io(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wl3501_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 2304
  %lock = getelementptr i8, ptr %dev_id, i32 2316
  tail call void @_raw_spin_lock(ptr noundef %lock) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !183
  tail call void @arm_heavy_mb() #15
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %1, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 8) #15, !srcloc !166
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i, align 4
  %and.i9 = and i32 %4, 1048575
  %add1.i10 = or i32 %and.i9, -18874368
  %5 = inttoptr i32 %add1.i10 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #15, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !184
  %and3.i = and i8 %6, -15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !185
  tail call void @arm_heavy_mb() #15
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i, align 4
  %and7.i = and i32 %8, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %9 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %and3.i) #15, !srcloc !166
  tail call fastcc void @wl3501_rx_interrupt(ptr noundef %dev_id)
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i, align 4
  %and.i11 = and i32 %11, 1048575
  %add1.i12 = or i32 %and.i11, -18874368
  %12 = inttoptr i32 %add1.i12 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #15, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !187
  %14 = and i8 %13, -15
  %15 = or i8 %14, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !188
  tail call void @arm_heavy_mb() #15
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i, align 4
  %and7.i13 = and i32 %17, 1048575
  %add8.i14 = or i32 %and7.i13, -18874368
  %18 = inttoptr i32 %add8.i14 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %15) #15, !srcloc !166
  tail call void @_raw_spin_unlock(ptr noundef %lock) #15
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wl3501_rx_interrupt(ptr noundef %dev) unnamed_addr #12 align 64 {
entry:
  %sig.i97 = alloca %struct.wl3501_resync_req, align 4
  %next_addr.i.i = alloca i16, align 2
  %next_addr1.i.i = alloca i16, align 2
  %sig.i = alloca %struct.wl3501_md_ind, align 2
  %rssi.i = alloca i8, align 1
  %addr4.i = alloca [6 x i8], align 1
  %sig.i.i = alloca %struct.wl3501_resync_req, align 4
  %tmp.i = alloca i8, align 1
  %addr = alloca i16, align 2
  %sig_id = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr) #15
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %addr, align 2, !annotation !189
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sig_id) #15
  %1 = ptrtoint ptr %sig_id to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %sig_id, align 1, !annotation !189
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl3501_rx_interrupt.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl3501_rx_interrupt, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !186

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl3501_rx_interrupt.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.35) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %esbq_confirm.i = getelementptr i8, ptr %dev, i32 2546
  %2 = getelementptr inbounds [6 x i8], ptr %addr4.i, i32 0, i32 2
  %3 = getelementptr inbounds [6 x i8], ptr %addr4.i, i32 0, i32 4
  %data.i = getelementptr inbounds %struct.wl3501_md_ind, ptr %sig.i, i32 0, i32 3
  %start_seg.i = getelementptr i8, ptr %dev, i32 2726
  %rssi7.i = getelementptr i8, ptr %dev, i32 2732
  %4 = getelementptr inbounds [6 x i8], ptr %addr4.i, i32 0, i32 1
  %size.i = getelementptr inbounds %struct.wl3501_md_ind, ptr %sig.i, i32 0, i32 4
  %addr44.i = getelementptr inbounds %struct.wl3501_md_ind, ptr %sig.i, i32 0, i32 8
  %stats50.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 2
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 6
  %net_type.i = getelementptr i8, ptr %dev, i32 2624
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  br label %loop

loop.backedge:                                    ; preds = %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %wl3501_md_ind_interrupt.exit, %sw.bb10, %do.end.i, %sw.bb.loop.backedge_crit_edge, %if.end7.loop.backedge_crit_edge
  call fastcc void @wl3501_esbq_confirm_done(ptr noundef %add.ptr.i)
  call fastcc void @wl3501_esbq_req_free(ptr noundef %add.ptr.i)
  br label %loop

loop:                                             ; preds = %loop.backedge, %do.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #15
  %5 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %tmp.i, align 1, !annotation !189
  %6 = ptrtoint ptr %esbq_confirm.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %esbq_confirm.i, align 2
  %add.i = add i16 %7, 3
  %and.i.i = lshr i16 %add.i, 12
  %8 = trunc i16 %and.i.i to i8
  %conv1.i.i = and i8 %8, 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  call void @arm_heavy_mb() #15
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 4
  %add.i.i.i = add i32 %10, 1
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %11 = inttoptr i32 %add1.i.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %conv1.i.i) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  %conv4.i.i = trunc i16 %add.i to i8
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i, align 4
  %add.i.i = add i32 %13, 2
  %and5.i.i = and i32 %add.i.i, 1048575
  %add6.i.i = or i32 %and5.i.i, -18874368
  %14 = inttoptr i32 %add6.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %conv4.i.i) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !191
  call void @arm_heavy_mb() #15
  %15 = lshr i16 %add.i, 8
  %16 = trunc i16 %15 to i8
  %conv11.i.i = and i8 %16, 127
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i, align 4
  %add13.i.i = add i32 %18, 3
  %and14.i.i = and i32 %add13.i.i, 1048575
  %add15.i.i = or i32 %and14.i.i, -18874368
  %19 = inttoptr i32 %add15.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %conv11.i.i) #15, !srcloc !166
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i, align 4
  %add18.i.i = add i32 %21, 4
  %and19.i.i = and i32 %add18.i.i, 1048575
  %add20.i.i = or i32 %and19.i.i, -18874368
  %22 = inttoptr i32 %add20.i.i to ptr
  call void @__raw_readsb(ptr noundef nonnull %22, ptr noundef nonnull %tmp.i, i32 noundef 1) #15
  %23 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %tmp.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %tobool5.not = icmp sgt i8 %24, -1
  br i1 %tobool5.not, label %if.end23.critedge, label %if.end7

if.end7:                                          ; preds = %loop
  %25 = ptrtoint ptr %esbq_confirm.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %esbq_confirm.i, align 2
  %and.i57 = lshr i16 %26, 12
  %27 = trunc i16 %and.i57 to i8
  %conv1.i = and i8 %27, 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  call void @arm_heavy_mb() #15
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.i, align 4
  %add.i.i58 = add i32 %29, 1
  %and.i.i59 = and i32 %add.i.i58, 1048575
  %add1.i.i = or i32 %and.i.i59, -18874368
  %30 = inttoptr i32 %add1.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 %conv1.i) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  %conv4.i = trunc i16 %26 to i8
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i, align 4
  %add.i60 = add i32 %32, 2
  %and5.i = and i32 %add.i60, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %33 = inttoptr i32 %add6.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 %conv4.i) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !191
  call void @arm_heavy_mb() #15
  %34 = lshr i16 %26, 8
  %35 = trunc i16 %34 to i8
  %conv11.i = and i8 %35, 127
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i, align 4
  %add13.i = add i32 %37, 3
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %38 = inttoptr i32 %add15.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 %conv11.i) #15, !srcloc !166
  %39 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i, align 4
  %add18.i = add i32 %40, 4
  %and19.i = and i32 %add18.i, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %41 = inttoptr i32 %add20.i to ptr
  call void @__raw_readsb(ptr noundef nonnull %41, ptr noundef nonnull %addr, i32 noundef 2) #15
  %42 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %addr, align 2
  %add = add i16 %43, 2
  %and.i61 = lshr i16 %add, 12
  %44 = trunc i16 %and.i61 to i8
  %conv1.i62 = and i8 %44, 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  call void @arm_heavy_mb() #15
  %45 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr.i, align 4
  %add.i.i63 = add i32 %46, 1
  %and.i.i64 = and i32 %add.i.i63, 1048575
  %add1.i.i65 = or i32 %and.i.i64, -18874368
  %47 = inttoptr i32 %add1.i.i65 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 %conv1.i62) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  %conv4.i66 = trunc i16 %add to i8
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr.i, align 4
  %add.i67 = add i32 %49, 2
  %and5.i68 = and i32 %add.i67, 1048575
  %add6.i69 = or i32 %and5.i68, -18874368
  %50 = inttoptr i32 %add6.i69 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 %conv4.i66) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !191
  call void @arm_heavy_mb() #15
  %51 = lshr i16 %add, 8
  %52 = trunc i16 %51 to i8
  %conv11.i70 = and i8 %52, 127
  %53 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr.i, align 4
  %add13.i71 = add i32 %54, 3
  %and14.i72 = and i32 %add13.i71, 1048575
  %add15.i73 = or i32 %and14.i72, -18874368
  %55 = inttoptr i32 %add15.i73 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %55, i8 %conv11.i70) #15, !srcloc !166
  %56 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add.ptr.i, align 4
  %add18.i74 = add i32 %57, 4
  %and19.i75 = and i32 %add18.i74, 1048575
  %add20.i76 = or i32 %and19.i75, -18874368
  %58 = inttoptr i32 %add20.i76 to ptr
  call void @__raw_readsb(ptr noundef nonnull %58, ptr noundef nonnull %sig_id, i32 noundef 1) #15
  %59 = ptrtoint ptr %sig_id to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %sig_id, align 1
  %61 = zext i8 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.61)
  switch i8 %60, label %if.end7.loop.backedge_crit_edge [
    i8 8, label %if.end7.sw.bb_crit_edge
    i8 10, label %if.end7.sw.bb_crit_edge114
    i8 0, label %if.end7.sw.bb_crit_edge115
    i8 1, label %sw.bb10
    i8 2, label %sw.bb11
    i8 11, label %sw.bb12
    i8 13, label %sw.bb13
    i8 18, label %sw.bb14
    i8 16, label %sw.bb15
    i8 12, label %sw.bb16
    i8 3, label %sw.bb17
    i8 5, label %sw.bb18
    i8 19, label %sw.bb19
  ]

if.end7.sw.bb_crit_edge115:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

if.end7.sw.bb_crit_edge114:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

if.end7.sw.bb_crit_edge:                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

if.end7.loop.backedge_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %loop.backedge

sw.bb:                                            ; preds = %if.end7.sw.bb_crit_edge, %if.end7.sw.bb_crit_edge114, %if.end7.sw.bb_crit_edge115
  %62 = ptrtoint ptr %net_type.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %net_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %63)
  %cmp.i = icmp eq i32 %63, 2
  br i1 %cmp.i, label %do.end.i, label %sw.bb.loop.backedge_crit_edge

sw.bb.loop.backedge_crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %loop.backedge

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #18
  %64 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %65, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sig.i.i) #15
  %66 = ptrtoint ptr %sig.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 11264, ptr %sig.i.i, align 4
  %call.i.i = call fastcc i32 @wl3501_esbq_exec(ptr noundef %add.ptr.i, ptr noundef nonnull %sig.i.i, i32 noundef 4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sig.i.i) #15
  br label %loop.backedge

sw.bb10:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %67 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %addr, align 2
  call fastcc void @wl3501_md_confirm_interrupt(ptr noundef %dev, ptr noundef %add.ptr.i, i16 noundef zeroext %68)
  br label %loop.backedge

sw.bb11:                                          ; preds = %if.end7
  %69 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %addr, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %sig.i) #15
  %71 = call ptr @memset(ptr %sig.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rssi.i) #15
  %72 = ptrtoint ptr %rssi.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -1, ptr %rssi.i, align 1, !annotation !189
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr4.i) #15
  %and.i.i77 = lshr i16 %70, 12
  %73 = trunc i16 %and.i.i77 to i8
  %conv1.i.i78 = and i8 %73, 8
  %74 = call ptr @memset(ptr %addr4.i, i32 255, i32 6)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  call void @arm_heavy_mb() #15
  %75 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %add.ptr.i, align 4
  %add.i.i.i79 = add i32 %76, 1
  %and.i.i.i80 = and i32 %add.i.i.i79, 1048575
  %add1.i.i.i81 = or i32 %and.i.i.i80, -18874368
  %77 = inttoptr i32 %add1.i.i.i81 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %77, i8 %conv1.i.i78) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  %conv4.i.i82 = trunc i16 %70 to i8
  %78 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %add.ptr.i, align 4
  %add.i.i83 = add i32 %79, 2
  %and5.i.i84 = and i32 %add.i.i83, 1048575
  %add6.i.i85 = or i32 %and5.i.i84, -18874368
  %80 = inttoptr i32 %add6.i.i85 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %80, i8 %conv4.i.i82) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !191
  call void @arm_heavy_mb() #15
  %81 = lshr i16 %70, 8
  %82 = trunc i16 %81 to i8
  %conv11.i.i86 = and i8 %82, 127
  %83 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %add.ptr.i, align 4
  %add13.i.i87 = add i32 %84, 3
  %and14.i.i88 = and i32 %add13.i.i87, 1048575
  %add15.i.i89 = or i32 %and14.i.i88, -18874368
  %85 = inttoptr i32 %add15.i.i89 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %85, i8 %conv11.i.i86) #15, !srcloc !166
  %86 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %add.ptr.i, align 4
  %add18.i.i90 = add i32 %87, 4
  %and19.i.i91 = and i32 %add18.i.i90, 1048575
  %add20.i.i92 = or i32 %and19.i.i91, -18874368
  %88 = inttoptr i32 %add20.i.i92 to ptr
  call void @__raw_readsb(ptr noundef nonnull %88, ptr noundef nonnull %sig.i, i32 noundef 24) #15
  %89 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %data.i, align 2
  %91 = ptrtoint ptr %start_seg.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %90, ptr %start_seg.i, align 2
  %add.i93 = add i16 %90, 7
  %and.i83.i = lshr i16 %add.i93, 12
  %92 = trunc i16 %and.i83.i to i8
  %conv1.i84.i = and i8 %92, 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  call void @arm_heavy_mb() #15
  %93 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %add.ptr.i, align 4
  %add.i.i85.i = add i32 %94, 1
  %and.i.i86.i = and i32 %add.i.i85.i, 1048575
  %add1.i.i87.i = or i32 %and.i.i86.i, -18874368
  %95 = inttoptr i32 %add1.i.i87.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %95, i8 %conv1.i84.i) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  %conv4.i88.i = trunc i16 %add.i93 to i8
  %96 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %add.ptr.i, align 4
  %add.i89.i = add i32 %97, 2
  %and5.i90.i = and i32 %add.i89.i, 1048575
  %add6.i91.i = or i32 %and5.i90.i, -18874368
  %98 = inttoptr i32 %add6.i91.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %98, i8 %conv4.i88.i) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !191
  call void @arm_heavy_mb() #15
  %99 = lshr i16 %add.i93, 8
  %100 = trunc i16 %99 to i8
  %conv11.i92.i = and i8 %100, 127
  %101 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %add.ptr.i, align 4
  %add13.i93.i = add i32 %102, 3
  %and14.i94.i = and i32 %add13.i93.i, 1048575
  %add15.i95.i = or i32 %and14.i94.i, -18874368
  %103 = inttoptr i32 %add15.i95.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %103, i8 %conv11.i92.i) #15, !srcloc !166
  %104 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %add.ptr.i, align 4
  %add18.i96.i = add i32 %105, 4
  %and19.i97.i = and i32 %add18.i96.i, 1048575
  %add20.i98.i = or i32 %and19.i97.i, -18874368
  %106 = inttoptr i32 %add20.i98.i to ptr
  call void @__raw_readsb(ptr noundef nonnull %106, ptr noundef nonnull %rssi.i, i32 noundef 1) #15
  %107 = ptrtoint ptr %rssi.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %rssi.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %108)
  %cmp.i94 = icmp ult i8 %108, 64
  %conv3.i = zext i8 %108 to i16
  %mul.i = mul nuw nsw i16 %conv3.i, 100
  %div82.i = lshr i16 %mul.i, 6
  %phi.cast.i = trunc i16 %div82.i to i8
  %cond.i = select i1 %cmp.i94, i8 %phi.cast.i, i8 -1
  %109 = ptrtoint ptr %rssi7.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %cond.i, ptr %rssi7.i, align 4
  %110 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %data.i, align 2
  %add10.i = add i16 %111, 46
  %and.i99.i = lshr i16 %add10.i, 12
  %112 = trunc i16 %and.i99.i to i8
  %conv1.i100.i = and i8 %112, 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  call void @arm_heavy_mb() #15
  %113 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %add.ptr.i, align 4
  %add.i.i101.i = add i32 %114, 1
  %and.i.i102.i = and i32 %add.i.i101.i, 1048575
  %add1.i.i103.i = or i32 %and.i.i102.i, -18874368
  %115 = inttoptr i32 %add1.i.i103.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %115, i8 %conv1.i100.i) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  %conv4.i104.i = trunc i16 %add10.i to i8
  %116 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %add.ptr.i, align 4
  %add.i105.i = add i32 %117, 2
  %and5.i106.i = and i32 %add.i105.i, 1048575
  %add6.i107.i = or i32 %and5.i106.i, -18874368
  %118 = inttoptr i32 %add6.i107.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %118, i8 %conv4.i104.i) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !191
  call void @arm_heavy_mb() #15
  %119 = lshr i16 %add10.i, 8
  %120 = trunc i16 %119 to i8
  %conv11.i108.i = and i8 %120, 127
  %121 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %add.ptr.i, align 4
  %add13.i109.i = add i32 %122, 3
  %and14.i110.i = and i32 %add13.i109.i, 1048575
  %add15.i111.i = or i32 %and14.i110.i, -18874368
  %123 = inttoptr i32 %add15.i111.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %123, i8 %conv11.i108.i) #15, !srcloc !166
  %124 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %add.ptr.i, align 4
  %add18.i112.i = add i32 %125, 4
  %and19.i113.i = and i32 %add18.i112.i, 1048575
  %add20.i114.i = or i32 %and19.i113.i, -18874368
  %126 = inttoptr i32 %add20.i114.i to ptr
  call void @__raw_readsb(ptr noundef nonnull %126, ptr noundef nonnull %addr4.i, i32 noundef 6) #15
  %127 = ptrtoint ptr %addr4.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %addr4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %128)
  %cmp13.i = icmp eq i8 %128, -86
  br i1 %cmp13.i, label %land.lhs.true.i, label %sw.bb11.do.end.i96_crit_edge

sw.bb11.do.end.i96_crit_edge:                     ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i96

land.lhs.true.i:                                  ; preds = %sw.bb11
  %129 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %130)
  %cmp17.i = icmp eq i8 %130, -86
  br i1 %cmp17.i, label %land.lhs.true19.i, label %land.lhs.true.i.do.end.i96_crit_edge

land.lhs.true.i.do.end.i96_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i96

land.lhs.true19.i:                                ; preds = %land.lhs.true.i
  %131 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %132)
  %cmp22.i = icmp eq i8 %132, 3
  br i1 %cmp22.i, label %land.lhs.true24.i, label %land.lhs.true19.i.do.end.i96_crit_edge

land.lhs.true19.i.do.end.i96_crit_edge:           ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i96

land.lhs.true24.i:                                ; preds = %land.lhs.true19.i
  %133 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %cmp27.i = icmp eq i8 %134, 0
  br i1 %cmp27.i, label %if.end.i, label %land.lhs.true24.i.do.end.i96_crit_edge

land.lhs.true24.i.do.end.i96_crit_edge:           ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i96

do.end.i96:                                       ; preds = %land.lhs.true24.i.do.end.i96_crit_edge, %land.lhs.true19.i.do.end.i96_crit_edge, %land.lhs.true.i.do.end.i96_crit_edge, %sw.bb11.do.end.i96_crit_edge
  %call.i95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #18
  br label %wl3501_md_ind_interrupt.exit

if.end.i:                                         ; preds = %land.lhs.true24.i
  %135 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %size.i, align 2
  %sub32.i = add i16 %136, -22
  %conv34.i = zext i16 %sub32.i to i32
  %add35.i = add nuw nsw i32 %conv34.i, 5
  %call.i.i.i = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add35.i, i32 noundef 2592) #15
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %do.end40.i, label %if.else.i

do.end40.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %call43.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %dev, i32 noundef %conv34.i) #18
  %137 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %rx_dropped.i, align 8
  %inc.i = add i32 %138, 1
  store i32 %inc.i, ptr %rx_dropped.i, align 8
  br label %wl3501_md_ind_interrupt.exit

if.else.i:                                        ; preds = %if.end.i
  %139 = getelementptr inbounds %struct.anon.44, ptr %call.i.i.i, i32 0, i32 2
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %dev, ptr %139, align 8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %141 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %142, i32 2
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %143 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %144, i32 2
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %145 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %addr44.i, i32 12)
  %146 = load ptr, ptr %data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %next_addr.i.i) #15
  %147 = ptrtoint ptr %next_addr.i.i to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 -1, ptr %next_addr.i.i, align 2, !annotation !189
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %next_addr1.i.i) #15
  %148 = ptrtoint ptr %next_addr1.i.i to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 -1, ptr %next_addr1.i.i, align 2, !annotation !189
  %add.ptr.i116.i = getelementptr i8, ptr %146, i32 12
  %sub.i.i = add i16 %136, -34
  %149 = ptrtoint ptr %start_seg.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %start_seg.i, align 2
  %add.i117.i = add i16 %150, 2
  %and.i.i118.i = lshr i16 %add.i117.i, 12
  %151 = trunc i16 %and.i.i118.i to i8
  %conv1.i.i.i = and i8 %151, 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  call void @arm_heavy_mb() #15
  %152 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %add.ptr.i, align 4
  %add.i.i.i.i = add i32 %153, 1
  %and.i.i.i.i = and i32 %add.i.i.i.i, 1048575
  %add1.i.i.i.i = or i32 %and.i.i.i.i, -18874368
  %154 = inttoptr i32 %add1.i.i.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %154, i8 %conv1.i.i.i) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  %conv4.i.i.i = trunc i16 %add.i117.i to i8
  %155 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %add.ptr.i, align 4
  %add.i.i119.i = add i32 %156, 2
  %and5.i.i.i = and i32 %add.i.i119.i, 1048575
  %add6.i.i.i = or i32 %and5.i.i.i, -18874368
  %157 = inttoptr i32 %add6.i.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %157, i8 %conv4.i.i.i) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !191
  call void @arm_heavy_mb() #15
  %158 = lshr i16 %add.i117.i, 8
  %159 = trunc i16 %158 to i8
  %conv11.i.i.i = and i8 %159, 127
  %160 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %add.ptr.i, align 4
  %add13.i.i.i = add i32 %161, 3
  %and14.i.i.i = and i32 %add13.i.i.i, 1048575
  %add15.i.i.i = or i32 %and14.i.i.i, -18874368
  %162 = inttoptr i32 %add15.i.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %162, i8 %conv11.i.i.i) #15, !srcloc !166
  %163 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %add.ptr.i, align 4
  %add18.i.i.i = add i32 %164, 4
  %and19.i.i.i = and i32 %add18.i.i.i, 1048575
  %add20.i.i.i = or i32 %and19.i.i.i, -18874368
  %165 = inttoptr i32 %add20.i.i.i to ptr
  call void @__raw_readsb(ptr noundef nonnull %165, ptr noundef nonnull %next_addr.i.i, i32 noundef 2) #15
  %conv4.i120.i = zext i16 %sub.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 204, i16 %sub.i.i)
  %cmp.i.i = icmp ugt i16 %sub.i.i, 204
  %166 = ptrtoint ptr %start_seg.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %start_seg.i, align 2
  %add8.i.i = add i16 %167, 52
  %and.i1.i.i = lshr i16 %add8.i.i, 12
  %168 = trunc i16 %and.i1.i.i to i8
  %conv1.i2.i.i = and i8 %168, 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  call void @arm_heavy_mb() #15
  %169 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %add.ptr.i, align 4
  %add.i.i3.i.i = add i32 %170, 1
  %and.i.i4.i.i = and i32 %add.i.i3.i.i, 1048575
  %add1.i.i5.i.i = or i32 %and.i.i4.i.i, -18874368
  %171 = inttoptr i32 %add1.i.i5.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %171, i8 %conv1.i2.i.i) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  call void @arm_heavy_mb() #15
  %conv4.i6.i.i = trunc i16 %add8.i.i to i8
  %172 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %add.ptr.i, align 4
  %add.i7.i.i = add i32 %173, 2
  %and5.i8.i.i = and i32 %add.i7.i.i, 1048575
  %add6.i9.i.i = or i32 %and5.i8.i.i, -18874368
  %174 = inttoptr i32 %add6.i9.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %174, i8 %conv4.i6.i.i) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  call void @arm_heavy_mb() #15
  %175 = lshr i16 %add8.i.i, 8
  %176 = trunc i16 %175 to i8
  %conv11.i10.i.i = and i8 %176, 127
  %177 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %add.ptr.i, align 4
  %add13.i11.i.i = add i32 %178, 3
  %and14.i12.i.i = and i32 %add13.i11.i.i, 1048575
  %add15.i13.i.i = or i32 %and14.i12.i.i, -18874368
  %179 = inttoptr i32 %add15.i13.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %179, i8 %conv11.i10.i.i) #15
  %180 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %add.ptr.i, align 4
  %add18.i14.i.i = add i32 %181, 4
  %and19.i15.i.i = and i32 %add18.i14.i.i, 1048575
  %add20.i16.i.i = or i32 %and19.i15.i.i, -18874368
  %182 = inttoptr i32 %add20.i16.i.i to ptr
  br i1 %cmp.i.i, label %if.end.i.i, label %if.end.thread.i.i

if.end.thread.i.i:                                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__raw_readsb(ptr noundef nonnull %182, ptr noundef %add.ptr.i116.i, i32 noundef %conv4.i120.i) #15
  br label %wl3501_receive.exit.i

if.end.i.i:                                       ; preds = %if.else.i
  call void @__raw_readsb(ptr noundef nonnull %182, ptr noundef %add.ptr.i116.i, i32 noundef 204) #15
  %sub11.i.i = add nuw nsw i32 %conv4.i120.i, 65332
  %phi.bo.i.i = and i32 %sub11.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo.i.i)
  %cmp20.not82.i.i = icmp eq i32 %phi.bo.i.i, 0
  br i1 %cmp20.not82.i.i, label %if.end.i.i.wl3501_receive.exit.i_crit_edge, label %while.body.i.preheader.i

if.end.i.i.wl3501_receive.exit.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %wl3501_receive.exit.i

while.body.i.preheader.i:                         ; preds = %if.end.i.i
  %add.ptr13.i.i = getelementptr i8, ptr %146, i32 216
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end41.i.i.while.body.i.i_crit_edge, %while.body.i.preheader.i
  %conv1984.i.i = phi i32 [ %conv19.i.i, %if.end41.i.i.while.body.i.i_crit_edge ], [ %phi.bo.i.i, %while.body.i.preheader.i ]
  %data.183.i.i = phi ptr [ %add.ptr32.i.i, %if.end41.i.i.while.body.i.i_crit_edge ], [ %add.ptr13.i.i, %while.body.i.preheader.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 251, i32 %conv1984.i.i)
  %cmp23.i.i = icmp ugt i32 %conv1984.i.i, 251
  %183 = ptrtoint ptr %next_addr.i.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %next_addr.i.i, align 2
  %add27.i.i = add i16 %184, 5
  %and.i33.i.i = lshr i16 %add27.i.i, 12
  %185 = trunc i16 %and.i33.i.i to i8
  %conv1.i34.i.i = and i8 %185, 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  call void @arm_heavy_mb() #15
  %186 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %add.ptr.i, align 4
  %add.i.i35.i.i = add i32 %187, 1
  %and.i.i36.i.i = and i32 %add.i.i35.i.i, 1048575
  %add1.i.i37.i.i = or i32 %and.i.i36.i.i, -18874368
  %188 = inttoptr i32 %add1.i.i37.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %188, i8 %conv1.i34.i.i) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  call void @arm_heavy_mb() #15
  %conv4.i38.i.i = trunc i16 %add27.i.i to i8
  %189 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %add.ptr.i, align 4
  %add.i39.i.i = add i32 %190, 2
  %and5.i40.i.i = and i32 %add.i39.i.i, 1048575
  %add6.i41.i.i = or i32 %and5.i40.i.i, -18874368
  %191 = inttoptr i32 %add6.i41.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %191, i8 %conv4.i38.i.i) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  call void @arm_heavy_mb() #15
  %192 = lshr i16 %add27.i.i, 8
  %193 = trunc i16 %192 to i8
  %conv11.i42.i.i = and i8 %193, 127
  %194 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %add.ptr.i, align 4
  %add13.i43.i.i = add i32 %195, 3
  %and14.i44.i.i = and i32 %add13.i43.i.i, 1048575
  %add15.i45.i.i = or i32 %and14.i44.i.i, -18874368
  %196 = inttoptr i32 %add15.i45.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %196, i8 %conv11.i42.i.i) #15
  %197 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %add.ptr.i, align 4
  %add18.i46.i.i = add i32 %198, 4
  %and19.i47.i.i = and i32 %add18.i46.i.i, 1048575
  %add20.i48.i.i = or i32 %and19.i47.i.i, -18874368
  %199 = inttoptr i32 %add20.i48.i.i to ptr
  br i1 %cmp23.i.i, label %if.end41.i.i, label %if.end41.thread.i.i

if.end41.thread.i.i:                              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %200 = inttoptr i32 %add20.i48.i.i to ptr
  call void @__raw_readsb(ptr noundef nonnull %200, ptr noundef %data.183.i.i, i32 noundef %conv1984.i.i) #15
  br label %wl3501_receive.exit.i

if.end41.i.i:                                     ; preds = %while.body.i.i
  call void @__raw_readsb(ptr noundef nonnull %199, ptr noundef %data.183.i.i, i32 noundef 251) #15
  %sub30.i.i = add nuw nsw i32 %conv1984.i.i, 65285
  %add.ptr32.i.i = getelementptr i8, ptr %data.183.i.i, i32 251
  %201 = ptrtoint ptr %next_addr.i.i to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %next_addr.i.i, align 2
  %add34.i.i = add i16 %202, 2
  %and.i49.i.i = lshr i16 %add34.i.i, 12
  %203 = trunc i16 %and.i49.i.i to i8
  %conv1.i50.i.i = and i8 %203, 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  call void @arm_heavy_mb() #15
  %204 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %add.ptr.i, align 4
  %add.i.i51.i.i = add i32 %205, 1
  %and.i.i52.i.i = and i32 %add.i.i51.i.i, 1048575
  %add1.i.i53.i.i = or i32 %and.i.i52.i.i, -18874368
  %206 = inttoptr i32 %add1.i.i53.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %206, i8 %conv1.i50.i.i) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  %conv4.i54.i.i = trunc i16 %add34.i.i to i8
  %207 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %add.ptr.i, align 4
  %add.i55.i.i = add i32 %208, 2
  %and5.i56.i.i = and i32 %add.i55.i.i, 1048575
  %add6.i57.i.i = or i32 %and5.i56.i.i, -18874368
  %209 = inttoptr i32 %add6.i57.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %209, i8 %conv4.i54.i.i) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !191
  call void @arm_heavy_mb() #15
  %210 = lshr i16 %add34.i.i, 8
  %211 = trunc i16 %210 to i8
  %conv11.i58.i.i = and i8 %211, 127
  %212 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %add.ptr.i, align 4
  %add13.i59.i.i = add i32 %213, 3
  %and14.i60.i.i = and i32 %add13.i59.i.i, 1048575
  %add15.i61.i.i = or i32 %and14.i60.i.i, -18874368
  %214 = inttoptr i32 %add15.i61.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %214, i8 %conv11.i58.i.i) #15, !srcloc !166
  %215 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %add.ptr.i, align 4
  %add18.i62.i.i = add i32 %216, 4
  %and19.i63.i.i = and i32 %add18.i62.i.i, 1048575
  %add20.i64.i.i = or i32 %and19.i63.i.i, -18874368
  %217 = inttoptr i32 %add20.i64.i.i to ptr
  call void @__raw_readsb(ptr noundef nonnull %217, ptr noundef nonnull %next_addr1.i.i, i32 noundef 2) #15
  %218 = ptrtoint ptr %next_addr1.i.i to i32
  call void @__asan_load2_noabort(i32 %218)
  %219 = load i16, ptr %next_addr1.i.i, align 2
  %220 = ptrtoint ptr %next_addr.i.i to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 %219, ptr %next_addr.i.i, align 2
  %conv19.i.i = and i32 %sub30.i.i, 65535
  %cmp20.not.i.i = icmp eq i32 %conv19.i.i, 0
  br i1 %cmp20.not.i.i, label %if.end41.i.i.wl3501_receive.exit.i_crit_edge, label %if.end41.i.i.while.body.i.i_crit_edge

if.end41.i.i.while.body.i.i_crit_edge:            ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.i

if.end41.i.i.wl3501_receive.exit.i_crit_edge:     ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %wl3501_receive.exit.i

wl3501_receive.exit.i:                            ; preds = %if.end41.i.i.wl3501_receive.exit.i_crit_edge, %if.end41.thread.i.i, %if.end.i.i.wl3501_receive.exit.i_crit_edge, %if.end.thread.i.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %next_addr1.i.i) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %next_addr.i.i) #15
  %call48.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %conv34.i) #15
  %call49.i = call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i.i.i, ptr noundef %dev) #15
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 18
  %221 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 %call49.i, ptr %protocol.i, align 8
  %222 = ptrtoint ptr %stats50.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %stats50.i, align 8
  %inc51.i = add i32 %223, 1
  store i32 %inc51.i, ptr %stats50.i, align 8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %224 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %len.i, align 4
  %226 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %rx_bytes.i, align 8
  %add53.i = add i32 %227, %225
  store i32 %add53.i, ptr %rx_bytes.i, align 8
  %call54.i = call i32 @netif_rx(ptr noundef nonnull %call.i.i.i) #15
  br label %wl3501_md_ind_interrupt.exit

wl3501_md_ind_interrupt.exit:                     ; preds = %wl3501_receive.exit.i, %do.end40.i, %do.end.i96
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr4.i) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rssi.i) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %sig.i) #15
  br label %loop.backedge

sw.bb12:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %228 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %228)
  %229 = load i16, ptr %addr, align 2
  call fastcc void @wl3501_get_confirm_interrupt(ptr noundef %add.ptr.i, i16 noundef zeroext %229)
  br label %loop.backedge

sw.bb13:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %230 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %230)
  %231 = load i16, ptr %addr, align 2
  call fastcc void @wl3501_get_confirm_interrupt(ptr noundef %add.ptr.i, i16 noundef zeroext %231)
  br label %loop.backedge

sw.bb14:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %232 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %addr, align 2
  call fastcc void @wl3501_start_confirm_interrupt(ptr noundef %dev, ptr noundef %add.ptr.i, i16 noundef zeroext %233)
  br label %loop.backedge

sw.bb15:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %234 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %234)
  %235 = load i16, ptr %addr, align 2
  call fastcc void @wl3501_mgmt_scan_confirm(ptr noundef %add.ptr.i, i16 noundef zeroext %235)
  br label %loop.backedge

sw.bb16:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %236 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %addr, align 2
  call fastcc void @wl3501_mgmt_join_confirm(ptr noundef %dev, i16 noundef zeroext %237)
  br label %loop.backedge

sw.bb17:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %238 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %238)
  %239 = load i16, ptr %addr, align 2
  call fastcc void @wl3501_assoc_confirm_interrupt(ptr noundef %dev, i16 noundef zeroext %239)
  br label %loop.backedge

sw.bb18:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %240 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %addr, align 2
  call fastcc void @wl3501_auth_confirm_interrupt(ptr noundef %add.ptr.i, i16 noundef zeroext %241)
  br label %loop.backedge

sw.bb19:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sig.i97) #15
  %242 = ptrtoint ptr %sig.i97 to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 11264, ptr %sig.i97, align 4
  %call.i98 = call fastcc i32 @wl3501_esbq_exec(ptr noundef %add.ptr.i, ptr noundef nonnull %sig.i97, i32 noundef 4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sig.i97) #15
  br label %loop.backedge

if.end23.critedge:                                ; preds = %loop
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @wl3501_esbq_req_free(ptr noundef %add.ptr.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sig_id) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wl3501_md_confirm_interrupt(ptr nocapture noundef readonly %dev, ptr nocapture noundef %this, i16 noundef zeroext %addr) unnamed_addr #12 align 64 {
entry:
  %sig = alloca %struct.wl3501_md_confirm, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %sig) #15
  %0 = call ptr @memset(ptr %sig, i32 255, i32 10)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl3501_md_confirm_interrupt.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl3501_md_confirm_interrupt, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !186

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl3501_md_confirm_interrupt.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.35) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and.i = lshr i16 %addr, 12
  %1 = trunc i16 %and.i to i8
  %conv1.i = and i8 %1, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  tail call void @arm_heavy_mb() #15
  %2 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %this, align 4
  %add.i.i = add i32 %3, 1
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %4 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %conv1.i) #15, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  tail call void @arm_heavy_mb() #15
  %conv4.i = trunc i16 %addr to i8
  %5 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %this, align 4
  %add.i = add i32 %6, 2
  %and5.i = and i32 %add.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %7 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %conv4.i) #15, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !191
  tail call void @arm_heavy_mb() #15
  %8 = lshr i16 %addr, 8
  %9 = trunc i16 %8 to i8
  %conv11.i = and i8 %9, 127
  %10 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %this, align 4
  %add13.i = add i32 %11, 3
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %12 = inttoptr i32 %add15.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %conv11.i) #15, !srcloc !166
  %13 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %this, align 4
  %add18.i = add i32 %14, 4
  %and19.i = and i32 %add18.i, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %15 = inttoptr i32 %add20.i to ptr
  call void @__raw_readsb(ptr noundef nonnull %15, ptr noundef nonnull %sig, i32 noundef 10) #15
  %data = getelementptr inbounds %struct.wl3501_md_confirm, ptr %sig, i32 0, i32 3
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %data, align 2
  call fastcc void @wl3501_free_tx_buffer(ptr noundef %this, i16 noundef zeroext %17)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %18 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %do.end.if.end5_crit_edge, label %if.then4

do.end.if.end5_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @netif_tx_wake_queue(ptr noundef %19) #15
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %do.end.if.end5_crit_edge
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %sig) #15
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wl3501_get_confirm_interrupt(ptr noundef %this, i16 noundef zeroext %addr) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl3501_get_confirm_interrupt.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl3501_get_confirm_interrupt, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !186

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl3501_get_confirm_interrupt.__UNIQUE_ID_ddebug352, ptr noundef nonnull @.str.35) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sig_get_confirm = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 4
  %and.i = lshr i16 %addr, 12
  %0 = trunc i16 %and.i to i8
  %conv1.i = and i8 %0, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  tail call void @arm_heavy_mb() #15
  %1 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %this, align 4
  %add.i.i = add i32 %2, 1
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %3 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 %conv1.i) #15, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  tail call void @arm_heavy_mb() #15
  %conv4.i = trunc i16 %addr to i8
  %4 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %this, align 4
  %add.i = add i32 %5, 2
  %and5.i = and i32 %add.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %6 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %conv4.i) #15, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !191
  tail call void @arm_heavy_mb() #15
  %7 = lshr i16 %addr, 8
  %8 = trunc i16 %7 to i8
  %conv11.i = and i8 %8, 127
  %9 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %this, align 4
  %add13.i = add i32 %10, 3
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %11 = inttoptr i32 %add15.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %conv11.i) #15, !srcloc !166
  %12 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %this, align 4
  %add18.i = add i32 %13, 4
  %and19.i = and i32 %add18.i, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %14 = inttoptr i32 %add20.i to ptr
  tail call void @__raw_readsb(ptr noundef nonnull %14, ptr noundef %sig_get_confirm, i32 noundef 108) #15
  %wait = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wl3501_start_confirm_interrupt(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %this, i16 noundef zeroext %addr) unnamed_addr #12 align 64 {
entry:
  %sig = alloca %struct.wl3501_start_confirm, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %sig) #15
  %0 = getelementptr inbounds %struct.wl3501_start_confirm, ptr %sig, i32 0, i32 3
  %1 = call ptr @memset(ptr %sig, i32 255, i32 6)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl3501_start_confirm_interrupt.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl3501_start_confirm_interrupt, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !186

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl3501_start_confirm_interrupt.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.35) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and.i = lshr i16 %addr, 12
  %2 = trunc i16 %and.i to i8
  %conv1.i = and i8 %2, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  tail call void @arm_heavy_mb() #15
  %3 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %this, align 4
  %add.i.i = add i32 %4, 1
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %5 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %conv1.i) #15, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  tail call void @arm_heavy_mb() #15
  %conv4.i = trunc i16 %addr to i8
  %6 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %this, align 4
  %add.i = add i32 %7, 2
  %and5.i = and i32 %add.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %8 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %conv4.i) #15, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !191
  tail call void @arm_heavy_mb() #15
  %9 = lshr i16 %addr, 8
  %10 = trunc i16 %9 to i8
  %conv11.i = and i8 %10, 127
  %11 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %this, align 4
  %add13.i = add i32 %12, 3
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %13 = inttoptr i32 %add15.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %conv11.i) #15, !srcloc !166
  %14 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %this, align 4
  %add18.i = add i32 %15, 4
  %and19.i = and i32 %add18.i, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %16 = inttoptr i32 %add20.i to ptr
  call void @__raw_readsb(ptr noundef nonnull %16, ptr noundef nonnull %sig, i32 noundef 6) #15
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp = icmp eq i16 %18, 0
  br i1 %cmp, label %if.then4, label %do.end.if.end5_crit_edge

do.end.if.end5_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %19 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %_tx.i.i, align 128
  call void @netif_tx_wake_queue(ptr noundef %20) #15
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %do.end.if.end5_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %sig) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wl3501_mgmt_scan_confirm(ptr noundef %this, i16 noundef zeroext %addr) unnamed_addr #2 align 64 {
entry:
  %sig.i242 = alloca %struct.wl3501_scan_req, align 4
  %sig.i235 = alloca %struct.wl3501_start_req, align 2
  %sig.i232 = alloca %struct.wl3501_scan_req, align 4
  %sig.i = alloca %struct.wl3501_join_req, align 2
  %sig = alloca %struct.wl3501_scan_confirm, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %sig) #15
  %0 = call ptr @memset(ptr %sig, i32 255, i32 96)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl3501_mgmt_scan_confirm.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl3501_mgmt_scan_confirm, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !186

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl3501_mgmt_scan_confirm.__UNIQUE_ID_ddebug345, ptr noundef nonnull @.str.35) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and.i = lshr i16 %addr, 12
  %1 = trunc i16 %and.i to i8
  %conv1.i = and i8 %1, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  tail call void @arm_heavy_mb() #15
  %2 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %this, align 4
  %add.i.i = add i32 %3, 1
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %4 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %conv1.i) #15, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  tail call void @arm_heavy_mb() #15
  %conv4.i = trunc i16 %addr to i8
  %5 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %this, align 4
  %add.i = add i32 %6, 2
  %and5.i = and i32 %add.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %7 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %conv4.i) #15, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !191
  tail call void @arm_heavy_mb() #15
  %8 = lshr i16 %addr, 8
  %9 = trunc i16 %8 to i8
  %conv11.i = and i8 %9, 127
  %10 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %this, align 4
  %add13.i = add i32 %11, 3
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %12 = inttoptr i32 %add15.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %conv11.i) #15, !srcloc !166
  %13 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %this, align 4
  %add18.i = add i32 %14, 4
  %and19.i = and i32 %add18.i, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %15 = inttoptr i32 %add20.i to ptr
  call void @__raw_readsb(ptr noundef nonnull %15, ptr noundef nonnull %sig, i32 noundef 96) #15
  %status = getelementptr inbounds %struct.wl3501_scan_confirm, ptr %sig, i32 0, i32 3
  %16 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %status, align 2
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.62)
  switch i16 %17, label %do.end.if.end185_crit_edge [
    i16 0, label %do.body5
    i16 2, label %do.body127
  ]

do.end.if.end185_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end185

do.body5:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl3501_mgmt_scan_confirm.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl3501_mgmt_scan_confirm, %if.then17)) #15
          to label %do.end20 [label %if.then17], !srcloc !186

if.then17:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl3501_mgmt_scan_confirm.__UNIQUE_ID_ddebug346, ptr noundef nonnull @.str.47) #15
  br label %do.end20

do.end20:                                         ; preds = %if.then17, %do.body5
  %net_type = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 20
  %19 = ptrtoint ptr %net_type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %net_type, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %20, label %do.end20.if.end185_crit_edge [
    i32 2, label %land.lhs.true
    i32 1, label %land.lhs.true28
    i32 0, label %do.end20.if.then38_crit_edge
  ]

do.end20.if.then38_crit_edge:                     ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then38

do.end20.if.end185_crit_edge:                     ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end185

land.lhs.true:                                    ; preds = %do.end20
  %cap_info = getelementptr inbounds %struct.wl3501_scan_confirm, ptr %sig, i32 0, i32 6, i32 2
  %22 = ptrtoint ptr %cap_info to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %cap_info, align 2
  %24 = and i16 %23, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool24.not = icmp eq i16 %24, 0
  br i1 %tobool24.not, label %land.lhs.true.if.end185_crit_edge, label %land.lhs.true.if.then38_crit_edge

land.lhs.true.if.then38_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then38

land.lhs.true.if.end185_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end185

land.lhs.true28:                                  ; preds = %do.end20
  %cap_info30 = getelementptr inbounds %struct.wl3501_scan_confirm, ptr %sig, i32 0, i32 6, i32 2
  %25 = ptrtoint ptr %cap_info30 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %cap_info30, align 2
  %27 = and i16 %26, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool33.not = icmp eq i16 %27, 0
  br i1 %tobool33.not, label %land.lhs.true28.if.end185_crit_edge, label %land.lhs.true28.if.then38_crit_edge

land.lhs.true28.if.then38_crit_edge:              ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then38

land.lhs.true28.if.end185_crit_edge:              ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end185

if.then38:                                        ; preds = %land.lhs.true28.if.then38_crit_edge, %land.lhs.true.if.then38_crit_edge, %do.end20.if.then38_crit_edge
  %len = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 17, i32 0, i32 1
  %28 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %len, align 1
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.64)
  switch i8 %29, label %if.then38.if.else53_crit_edge [
    i8 0, label %if.then38.if.then86_crit_edge
    i8 3, label %land.lhs.true47
  ]

if.then38.if.then86_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then86

if.then38.if.else53_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else53

land.lhs.true47:                                  ; preds = %if.then38
  %essid49 = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 17, i32 1
  %bcmp224 = call i32 @bcmp(ptr noundef dereferenceable(3) %essid49, ptr noundef nonnull dereferenceable(3) @.str.21, i32 3) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp224)
  %tobool51.not = icmp eq i32 %bcmp224, 0
  br i1 %tobool51.not, label %land.lhs.true47.if.then86_crit_edge, label %land.lhs.true47.if.else53_crit_edge

land.lhs.true47.if.else53_crit_edge:              ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else53

land.lhs.true47.if.then86_crit_edge:              ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then86

if.else53:                                        ; preds = %land.lhs.true47.if.else53_crit_edge, %if.then38.if.else53_crit_edge
  %len60 = getelementptr inbounds %struct.wl3501_scan_confirm, ptr %sig, i32 0, i32 6, i32 5, i32 0, i32 1
  %31 = ptrtoint ptr %len60 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %len60, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %32)
  %cmp62.not = icmp eq i8 %29, %32
  br i1 %cmp62.not, label %if.else65, label %if.else53.if.end185_crit_edge

if.else53.if.end185_crit_edge:                    ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end185

if.else65:                                        ; preds = %if.else53
  %conv57 = zext i8 %29 to i32
  %essid67 = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 17, i32 1
  %essid71 = getelementptr inbounds %struct.wl3501_scan_confirm, ptr %sig, i32 0, i32 6, i32 5, i32 1
  %bcmp = call i32 @bcmp(ptr %essid67, ptr %essid71, i32 %conv57) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool78.not.not = icmp eq i32 %bcmp, 0
  br i1 %tobool78.not.not, label %if.else65.if.then86_crit_edge, label %if.else65.if.end185_crit_edge

if.else65.if.end185_crit_edge:                    ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end185

if.else65.if.then86_crit_edge:                    ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then86

if.then86:                                        ; preds = %if.else65.if.then86_crit_edge, %land.lhs.true47.if.then86_crit_edge, %if.then38.if.then86_crit_edge
  %bss_cnt = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 27
  %33 = ptrtoint ptr %bss_cnt to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %bss_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp89271.not = icmp eq i16 %34, 0
  br i1 %cmp89271.not, label %if.then86.if.then105_crit_edge, label %for.body.lr.ph

if.then86.if.then105_crit_edge:                   ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then105

for.body.lr.ph:                                   ; preds = %if.then86
  %bssid94 = getelementptr inbounds %struct.wl3501_scan_confirm, ptr %sig, i32 0, i32 6, i32 4
  %35 = ptrtoint ptr %bssid94 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bssid94, align 4
  %add.ptr1.i.i = getelementptr inbounds %struct.wl3501_scan_confirm, ptr %sig, i32 0, i32 6, i32 4, i32 4
  %37 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %add.ptr1.i.i, align 2
  %wide.trip.count = zext i16 %34 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv274 = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next275, %for.inc.for.body_crit_edge ]
  %bssid = getelementptr %struct.wl3501_card, ptr %this, i32 0, i32 33, i32 %indvars.iv274, i32 6, i32 4
  %39 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bssid, align 4
  %xor.i.i = xor i32 %36, %40
  %add.ptr.i.i = getelementptr i8, ptr %bssid, i32 4
  %41 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i.i = xor i16 %38, %42
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %for.body.if.end185_crit_edge, label %for.inc

for.body.if.end185_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end185

for.inc:                                          ; preds = %for.body
  %indvars.iv.next275 = add nuw nsw i32 %indvars.iv274, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next275, %wide.trip.count
  br i1 %exitcond.not, label %if.end99, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

if.end99:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %34)
  %cmp103 = icmp ult i16 %34, 20
  br i1 %cmp103, label %if.end99.if.then105_crit_edge, label %if.end99.if.end185_crit_edge

if.end99.if.end185_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end185

if.end99.if.then105_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then105

if.then105:                                       ; preds = %if.end99.if.then105_crit_edge, %if.then86.if.then105_crit_edge
  %i.0.lcssa278 = phi i16 [ %34, %if.end99.if.then105_crit_edge ], [ 0, %if.then86.if.then105_crit_edge ]
  %conv102 = zext i16 %i.0.lcssa278 to i32
  %req109 = getelementptr %struct.wl3501_card, ptr %this, i32 0, i32 33, i32 %conv102, i32 6
  %req110 = getelementptr inbounds %struct.wl3501_scan_confirm, ptr %sig, i32 0, i32 6
  %43 = call ptr @memcpy(ptr %req109, ptr %req110, i32 72)
  %44 = ptrtoint ptr %bss_cnt to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %bss_cnt, align 4
  %inc112 = add i16 %45, 1
  store i16 %inc112, ptr %bss_cnt, align 4
  %rssi = getelementptr inbounds %struct.wl3501_scan_confirm, ptr %sig, i32 0, i32 7
  %46 = ptrtoint ptr %rssi to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %rssi, align 2
  %rssi113 = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 29
  %48 = ptrtoint ptr %rssi113 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %rssi113, align 4
  %rssi118 = getelementptr %struct.wl3501_card, ptr %this, i32 0, i32 33, i32 %conv102, i32 7
  %49 = ptrtoint ptr %rssi118 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %47, ptr %rssi118, align 2
  br label %if.end185

do.body127:                                       ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl3501_mgmt_scan_confirm.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl3501_mgmt_scan_confirm, %if.then139)) #15
          to label %do.end142 [label %if.then139], !srcloc !186

if.then139:                                       ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl3501_mgmt_scan_confirm.__UNIQUE_ID_ddebug347, ptr noundef nonnull @.str.48) #15
  br label %do.end142

do.end142:                                        ; preds = %if.then139, %do.body127
  %join_sta_bss = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 28
  %50 = ptrtoint ptr %join_sta_bss to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %join_sta_bss, align 2
  %bss_cnt146 = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 27
  %51 = ptrtoint ptr %bss_cnt146 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %bss_cnt146, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %cmp148266.not = icmp eq i16 %52, 0
  br i1 %cmp148266.not, label %do.end142.for.end157_crit_edge, label %for.body150.lr.ph

do.end142.for.end157_crit_edge:                   ; preds = %do.end142
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end157

for.body150.lr.ph:                                ; preds = %do.end142
  %sig_id.i = getelementptr inbounds %struct.wl3501_join_req, ptr %sig.i, i32 0, i32 1
  %timeout.i = getelementptr inbounds %struct.wl3501_join_req, ptr %sig.i, i32 0, i32 5
  %req.i = getelementptr inbounds %struct.wl3501_join_req, ptr %sig.i, i32 0, i32 9
  br label %for.body150

for.body150:                                      ; preds = %for.inc155.for.body150_crit_edge, %for.body150.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body150.lr.ph ], [ %indvars.iv.next, %for.inc155.for.body150_crit_edge ]
  %i.2267 = phi i16 [ 0, %for.body150.lr.ph ], [ %inc156, %for.inc155.for.body150_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 108, ptr nonnull %sig.i) #15
  %53 = call ptr @memset(ptr %sig.i, i32 0, i32 36)
  %54 = ptrtoint ptr %sig_id.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 37, ptr %sig_id.i, align 2
  %55 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 10, ptr %timeout.i, align 2
  %req3.i = getelementptr %struct.wl3501_card, ptr %this, i32 0, i32 33, i32 %indvars.iv, i32 6
  %56 = call ptr @memcpy(ptr %req.i, ptr %req3.i, i32 72)
  %call.i = call fastcc i32 @wl3501_esbq_exec(ptr noundef %this, ptr noundef nonnull %sig.i, i32 noundef 108) #15
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %sig.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool152.not = icmp eq i32 %call.i, 0
  br i1 %tobool152.not, label %for.end157.loopexit.split.loop.exit, label %for.inc155

for.inc155:                                       ; preds = %for.body150
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %inc156 = add nuw i16 %i.2267, 1
  %57 = ptrtoint ptr %bss_cnt146 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %bss_cnt146, align 4
  %59 = zext i16 %58 to i32
  %cmp148 = icmp ult i32 %indvars.iv.next, %59
  br i1 %cmp148, label %for.inc155.for.body150_crit_edge, label %for.inc155.for.end157_crit_edge

for.inc155.for.end157_crit_edge:                  ; preds = %for.inc155
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end157

for.inc155.for.body150_crit_edge:                 ; preds = %for.inc155
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body150

for.end157.loopexit.split.loop.exit:              ; preds = %for.body150
  call void @__sanitizer_cov_trace_pc() #17
  %60 = trunc i32 %indvars.iv to i16
  br label %for.end157

for.end157:                                       ; preds = %for.end157.loopexit.split.loop.exit, %for.inc155.for.end157_crit_edge, %do.end142.for.end157_crit_edge
  %i.2.lcssa = phi i16 [ 0, %do.end142.for.end157_crit_edge ], [ %60, %for.end157.loopexit.split.loop.exit ], [ %inc156, %for.inc155.for.end157_crit_edge ]
  %61 = ptrtoint ptr %join_sta_bss to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %i.2.lcssa, ptr %join_sta_bss, align 2
  %62 = ptrtoint ptr %bss_cnt146 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %bss_cnt146, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %i.2.lcssa, i16 %63)
  %cmp163 = icmp eq i16 %i.2.lcssa, %63
  br i1 %cmp163, label %if.then165, label %for.end157.if.end185_crit_edge

for.end157.if.end185_crit_edge:                   ; preds = %for.end157
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end185

if.then165:                                       ; preds = %for.end157
  %net_type166 = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 20
  %64 = ptrtoint ptr %net_type166 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %net_type166, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %65)
  %cmp167 = icmp eq i32 %65, 2
  br i1 %cmp167, label %if.then169, label %if.else171

if.then169:                                       ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %sig.i232) #15
  %66 = call ptr @memset(ptr %sig.i232, i32 0, i32 64)
  %sig_id.i233 = getelementptr inbounds %struct.wl3501_scan_req, ptr %sig.i232, i32 0, i32 1
  %67 = ptrtoint ptr %sig_id.i233 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 40, ptr %sig_id.i233, align 2
  %probe_delay.i = getelementptr inbounds %struct.wl3501_scan_req, ptr %sig.i232, i32 0, i32 3
  %68 = ptrtoint ptr %probe_delay.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 16, ptr %probe_delay.i, align 4
  %min_chan_time.i = getelementptr inbounds %struct.wl3501_scan_req, ptr %sig.i232, i32 0, i32 4
  %69 = ptrtoint ptr %min_chan_time.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 100, ptr %min_chan_time.i, align 2
  %max_chan_time.i = getelementptr inbounds %struct.wl3501_scan_req, ptr %sig.i232, i32 0, i32 5
  %70 = ptrtoint ptr %max_chan_time.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 100, ptr %max_chan_time.i, align 4
  %scan_type.i = getelementptr inbounds %struct.wl3501_scan_req, ptr %sig.i232, i32 0, i32 9
  %71 = ptrtoint ptr %scan_type.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %scan_type.i, align 4
  %72 = ptrtoint ptr %join_sta_bss to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 0, ptr %join_sta_bss, align 2
  %73 = ptrtoint ptr %bss_cnt146 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 0, ptr %bss_cnt146, align 4
  %call1.i = call fastcc i32 @wl3501_esbq_exec(ptr noundef %this, ptr noundef nonnull %sig.i232, i32 noundef 68) #15
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %sig.i232) #15
  br label %if.end185

if.else171:                                       ; preds = %if.then165
  %adhoc_times = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 30
  %74 = ptrtoint ptr %adhoc_times to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %adhoc_times, align 1
  %inc172 = add i8 %75, 1
  store i8 %inc172, ptr %adhoc_times, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %inc172)
  %cmp175 = icmp ugt i8 %inc172, 16
  br i1 %cmp175, label %if.then177, label %if.else179

if.then177:                                       ; preds = %if.else171
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 82, ptr nonnull %sig.i235) #15
  %76 = getelementptr inbounds i8, ptr %sig.i235, i32 80
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 -1, ptr %76, align 2, !annotation !189
  %78 = ptrtoint ptr %sig.i235 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 0, ptr %sig.i235, align 2
  %sig_id.i236 = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i235, i32 0, i32 1
  %79 = ptrtoint ptr %sig_id.i236 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 42, ptr %sig_id.i236, align 2
  %bss_type.i237 = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i235, i32 0, i32 2
  %80 = ptrtoint ptr %bss_type.i237 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %bss_type.i237, align 1
  %beacon_period.i = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i235, i32 0, i32 3
  %81 = ptrtoint ptr %beacon_period.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 400, ptr %beacon_period.i, align 2
  %dtim_period.i = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i235, i32 0, i32 4
  %82 = ptrtoint ptr %dtim_period.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 1, ptr %dtim_period.i, align 2
  %probe_delay.i241 = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i235, i32 0, i32 5
  %83 = ptrtoint ptr %probe_delay.i241 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 0, ptr %probe_delay.i241, align 2
  %cap_info.i = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i235, i32 0, i32 6
  %84 = ptrtoint ptr %cap_info.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 2, ptr %cap_info.i, align 2
  %ssid.i = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i235, i32 0, i32 7
  %85 = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i235, i32 0, i32 7, i32 1
  %86 = call ptr @memset(ptr %85, i32 0, i32 32)
  %bss_basic_rset.i = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i235, i32 0, i32 8
  %87 = ptrtoint ptr %bss_basic_rset.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %bss_basic_rset.i, align 2
  %len.i = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i235, i32 0, i32 8, i32 0, i32 1
  %88 = ptrtoint ptr %len.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 2, ptr %len.i, align 1
  %data_rate_labels.i = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i235, i32 0, i32 8, i32 1
  %89 = ptrtoint ptr %data_rate_labels.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 -126, ptr %data_rate_labels.i, align 2
  %arrayinit.element.i = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i235, i32 0, i32 8, i32 1, i32 1
  %90 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 -124, ptr %arrayinit.element.i, align 1
  %arrayinit.start.i = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i235, i32 0, i32 8, i32 1, i32 2
  %91 = call ptr @memset(ptr %arrayinit.start.i, i32 0, i32 6)
  %arrayinit.end.i = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i235, i32 0, i32 9
  %92 = ptrtoint ptr %arrayinit.end.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %arrayinit.end.i, align 2
  %len6.i = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i235, i32 0, i32 9, i32 0, i32 1
  %93 = ptrtoint ptr %len6.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 2, ptr %len6.i, align 1
  %data_rate_labels7.i = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i235, i32 0, i32 9, i32 1
  %94 = ptrtoint ptr %data_rate_labels7.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 -126, ptr %data_rate_labels7.i, align 2
  %arrayinit.element9.i = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i235, i32 0, i32 9, i32 1, i32 1
  %95 = ptrtoint ptr %arrayinit.element9.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 -124, ptr %arrayinit.element9.i, align 1
  %arrayinit.start10.i = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i235, i32 0, i32 9, i32 1, i32 2
  %ds_pset.i = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i235, i32 0, i32 11
  %96 = call ptr @memset(ptr %arrayinit.start10.i, i32 0, i32 14)
  %97 = ptrtoint ptr %ds_pset.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 3, ptr %ds_pset.i, align 2
  %len19.i = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i235, i32 0, i32 11, i32 0, i32 1
  %98 = ptrtoint ptr %len19.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 1, ptr %len19.i, align 1
  %chan.i = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i235, i32 0, i32 11, i32 1
  %chan20.i = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 24
  %99 = ptrtoint ptr %chan20.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %chan20.i, align 4
  %101 = ptrtoint ptr %chan.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %chan.i, align 2
  %ibss_pset.i = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i235, i32 0, i32 12
  %102 = ptrtoint ptr %ibss_pset.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 6, ptr %ibss_pset.i, align 1
  %len23.i = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i235, i32 0, i32 12, i32 0, i32 1
  %103 = ptrtoint ptr %len23.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 2, ptr %len23.i, align 2
  %atim_window.i = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i235, i32 0, i32 12, i32 1
  %104 = ptrtoint ptr %atim_window.i to i32
  call void @__asan_storeN_noabort(i32 %104, i32 2)
  store i16 10, ptr %atim_window.i, align 1
  %essid.i = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 17
  %105 = ptrtoint ptr %essid.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %essid.i, align 1
  %data.i.i = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 17, i32 1
  %len.i.i = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 17, i32 0, i32 1
  %107 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %len.i.i, align 1
  %conv1.i.i = zext i8 %108 to i32
  %109 = ptrtoint ptr %ssid.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %106, ptr %ssid.i, align 2
  %len3.i.i.i = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i235, i32 0, i32 7, i32 0, i32 1
  %110 = ptrtoint ptr %len3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %108, ptr %len3.i.i.i, align 1
  %111 = call ptr @memcpy(ptr %85, ptr %data.i.i, i32 %conv1.i.i)
  %keep_essid.i = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 18
  %112 = ptrtoint ptr %keep_essid.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %106, ptr %keep_essid.i, align 1
  %len3.i.i7.i = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 18, i32 0, i32 1
  %113 = ptrtoint ptr %len3.i.i7.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %108, ptr %len3.i.i7.i, align 1
  %data.i.i8.i = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 18, i32 1
  %114 = call ptr @memcpy(ptr %data.i.i8.i, ptr %data.i.i, i32 %conv1.i.i)
  %call30.i = call fastcc i32 @wl3501_esbq_exec(ptr noundef %this, ptr noundef nonnull %sig.i235, i32 noundef 82) #15
  call void @llvm.lifetime.end.p0(i64 82, ptr nonnull %sig.i235) #15
  br label %if.end185

if.else179:                                       ; preds = %if.else171
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %sig.i242) #15
  %115 = call ptr @memset(ptr %sig.i242, i32 0, i32 64)
  %sig_id.i243 = getelementptr inbounds %struct.wl3501_scan_req, ptr %sig.i242, i32 0, i32 1
  %116 = ptrtoint ptr %sig_id.i243 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 40, ptr %sig_id.i243, align 2
  %bss_type.i244 = getelementptr inbounds %struct.wl3501_scan_req, ptr %sig.i242, i32 0, i32 2
  %117 = ptrtoint ptr %bss_type.i244 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 1, ptr %bss_type.i244, align 1
  %probe_delay.i248 = getelementptr inbounds %struct.wl3501_scan_req, ptr %sig.i242, i32 0, i32 3
  %118 = ptrtoint ptr %probe_delay.i248 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 16, ptr %probe_delay.i248, align 4
  %min_chan_time.i249 = getelementptr inbounds %struct.wl3501_scan_req, ptr %sig.i242, i32 0, i32 4
  %119 = ptrtoint ptr %min_chan_time.i249 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 100, ptr %min_chan_time.i249, align 2
  %max_chan_time.i250 = getelementptr inbounds %struct.wl3501_scan_req, ptr %sig.i242, i32 0, i32 5
  %120 = ptrtoint ptr %max_chan_time.i250 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 100, ptr %max_chan_time.i250, align 4
  %scan_type.i251 = getelementptr inbounds %struct.wl3501_scan_req, ptr %sig.i242, i32 0, i32 9
  %121 = ptrtoint ptr %scan_type.i251 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %scan_type.i251, align 4
  %122 = ptrtoint ptr %join_sta_bss to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 0, ptr %join_sta_bss, align 2
  %123 = ptrtoint ptr %bss_cnt146 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 0, ptr %bss_cnt146, align 4
  %call1.i254 = call fastcc i32 @wl3501_esbq_exec(ptr noundef %this, ptr noundef nonnull %sig.i242, i32 noundef 68) #15
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %sig.i242) #15
  br label %if.end185

if.end185:                                        ; preds = %if.else179, %if.then177, %if.then169, %for.end157.if.end185_crit_edge, %if.then105, %if.end99.if.end185_crit_edge, %for.body.if.end185_crit_edge, %if.else65.if.end185_crit_edge, %if.else53.if.end185_crit_edge, %land.lhs.true28.if.end185_crit_edge, %land.lhs.true.if.end185_crit_edge, %do.end20.if.end185_crit_edge, %do.end.if.end185_crit_edge
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %sig) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wl3501_mgmt_join_confirm(ptr noundef %dev, i16 noundef zeroext %addr) unnamed_addr #2 align 64 {
entry:
  %sig.i151 = alloca %struct.wl3501_scan_req, align 4
  %sig.i142 = alloca %struct.wl3501_start_req, align 2
  %sig.i140 = alloca %struct.wl3501_scan_req, align 4
  %sig.i139 = alloca %struct.wl3501_join_req, align 2
  %sig.i = alloca %struct.wl3501_auth_req, align 8
  %sig = alloca %struct.wl3501_join_confirm, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %sig) #15
  %0 = getelementptr inbounds %struct.wl3501_join_confirm, ptr %sig, i32 0, i32 3
  %1 = call ptr @memset(ptr %sig, i32 255, i32 6)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl3501_mgmt_join_confirm.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl3501_mgmt_join_confirm, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !186

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl3501_mgmt_join_confirm.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.35) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and.i = lshr i16 %addr, 12
  %2 = trunc i16 %and.i to i8
  %conv1.i = and i8 %2, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  tail call void @arm_heavy_mb() #15
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i, align 4
  %add.i.i = add i32 %4, 1
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %5 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %conv1.i) #15, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  tail call void @arm_heavy_mb() #15
  %conv4.i = trunc i16 %addr to i8
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  %add.i = add i32 %7, 2
  %and5.i = and i32 %add.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %8 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %conv4.i) #15, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !191
  tail call void @arm_heavy_mb() #15
  %9 = lshr i16 %addr, 8
  %10 = trunc i16 %9 to i8
  %conv11.i = and i8 %10, 127
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i, align 4
  %add13.i = add i32 %12, 3
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %13 = inttoptr i32 %add15.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %conv11.i) #15, !srcloc !166
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i, align 4
  %add18.i = add i32 %15, 4
  %and19.i = and i32 %add18.i, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %16 = inttoptr i32 %add20.i to ptr
  call void @__raw_readsb(ptr noundef nonnull %16, ptr noundef nonnull %sig, i32 noundef 6) #15
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp = icmp eq i16 %18, 0
  br i1 %cmp, label %if.then5, label %if.else50

if.then5:                                         ; preds = %do.end
  %net_type = getelementptr i8, ptr %dev, i32 2624
  %19 = ptrtoint ptr %net_type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %net_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp6 = icmp eq i32 %20, 2
  %join_sta_bss = getelementptr i8, ptr %dev, i32 2730
  %21 = ptrtoint ptr %join_sta_bss to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %join_sta_bss, align 2
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then5
  %bss_cnt = getelementptr i8, ptr %dev, i32 2728
  %23 = ptrtoint ptr %bss_cnt to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %bss_cnt, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %24)
  %cmp11 = icmp ult i16 %22, %24
  br i1 %cmp11, label %if.then13, label %if.then8.if.end92_crit_edge

if.then8.if.end92_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end92

if.then13:                                        ; preds = %if.then8
  %conv9 = zext i16 %22 to i32
  %bssid = getelementptr i8, ptr %dev, i32 2616
  %bssid16 = getelementptr %struct.wl3501_card, ptr %add.ptr.i, i32 0, i32 33, i32 %conv9, i32 6, i32 4
  %25 = call ptr @memcpy(ptr %bssid, ptr %bssid16, i32 6)
  %chan = getelementptr %struct.wl3501_card, ptr %add.ptr.i, i32 0, i32 33, i32 %conv9, i32 6, i32 6, i32 1
  %26 = ptrtoint ptr %chan to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %chan, align 1
  %chan21 = getelementptr i8, ptr %dev, i32 2724
  %28 = ptrtoint ptr %chan21 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %chan21, align 4
  %keep_essid = getelementptr i8, ptr %dev, i32 2582
  %ssid = getelementptr %struct.wl3501_card, ptr %add.ptr.i, i32 0, i32 33, i32 %conv9, i32 6, i32 5
  %29 = ptrtoint ptr %ssid to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ssid, align 1
  %data.i = getelementptr inbounds %struct.iw_mgmt_info_element, ptr %ssid, i32 0, i32 2
  %len.i = getelementptr inbounds %struct.iw_mgmt_info_element, ptr %ssid, i32 0, i32 1
  %31 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %len.i, align 1
  %conv1.i132 = zext i8 %32 to i32
  %33 = ptrtoint ptr %keep_essid to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %30, ptr %keep_essid, align 1
  %len3.i.i = getelementptr i8, ptr %dev, i32 2583
  %34 = ptrtoint ptr %len3.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %32, ptr %len3.i.i, align 1
  %data.i.i = getelementptr i8, ptr %dev, i32 2584
  %35 = call ptr @memcpy(ptr %data.i.i, ptr %data.i, i32 %conv1.i132)
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %sig.i) #15
  %36 = ptrtoint ptr %sig.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 36283883717608, ptr %sig.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl3501_mgmt_auth.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl3501_mgmt_join_confirm, %if.then.i)) #15
          to label %wl3501_mgmt_auth.exit [label %if.then.i], !srcloc !186

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl3501_mgmt_auth.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.35) #15
  br label %wl3501_mgmt_auth.exit

wl3501_mgmt_auth.exit:                            ; preds = %if.then.i, %if.then13
  %mac_addr.i = getelementptr inbounds %struct.wl3501_auth_req, ptr %sig.i, i32 0, i32 5
  %37 = call ptr @memcpy(ptr %mac_addr.i, ptr %bssid, i32 6)
  %call4.i = call fastcc i32 @wl3501_esbq_exec(ptr noundef %add.ptr.i, ptr noundef nonnull %sig.i, i32 noundef 14) #15
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %sig.i) #15
  br label %if.end92

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  %conv30 = zext i16 %22 to i32
  %bssid31 = getelementptr i8, ptr %dev, i32 2616
  %bssid35 = getelementptr %struct.wl3501_card, ptr %add.ptr.i, i32 0, i32 33, i32 %conv30, i32 6, i32 4
  %38 = call ptr @memcpy(ptr %bssid31, ptr %bssid35, i32 6)
  %chan40 = getelementptr %struct.wl3501_card, ptr %add.ptr.i, i32 0, i32 33, i32 %conv30, i32 6, i32 6, i32 1
  %39 = ptrtoint ptr %chan40 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %chan40, align 1
  %chan41 = getelementptr i8, ptr %dev, i32 2724
  %41 = ptrtoint ptr %chan41 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %chan41, align 4
  %keep_essid42 = getelementptr i8, ptr %dev, i32 2582
  %ssid47 = getelementptr %struct.wl3501_card, ptr %add.ptr.i, i32 0, i32 33, i32 %conv30, i32 6, i32 5
  %42 = ptrtoint ptr %ssid47 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ssid47, align 1
  %data.i133 = getelementptr inbounds %struct.iw_mgmt_info_element, ptr %ssid47, i32 0, i32 2
  %len.i134 = getelementptr inbounds %struct.iw_mgmt_info_element, ptr %ssid47, i32 0, i32 1
  %44 = ptrtoint ptr %len.i134 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %len.i134, align 1
  %conv1.i135 = zext i8 %45 to i32
  %46 = ptrtoint ptr %keep_essid42 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %43, ptr %keep_essid42, align 1
  %len3.i.i136 = getelementptr i8, ptr %dev, i32 2583
  %47 = ptrtoint ptr %len3.i.i136 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %45, ptr %len3.i.i136, align 1
  %data.i.i137 = getelementptr i8, ptr %dev, i32 2584
  %48 = call ptr @memcpy(ptr %data.i.i137, ptr %data.i133, i32 %conv1.i135)
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %dev, ptr noundef %bssid31) #18
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %49 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %_tx.i.i.i, align 128
  call void @netif_tx_wake_queue(ptr noundef %50) #15
  br label %if.end92

if.else50:                                        ; preds = %do.end
  %join_sta_bss52 = getelementptr i8, ptr %dev, i32 2730
  %51 = ptrtoint ptr %join_sta_bss52 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %join_sta_bss52, align 2
  %inc = add i16 %52, 1
  store i16 %inc, ptr %join_sta_bss52, align 2
  %conv54 = zext i16 %inc to i32
  %bss_cnt55 = getelementptr i8, ptr %dev, i32 2728
  %53 = ptrtoint ptr %bss_cnt55 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %bss_cnt55, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc, i16 %54)
  %cmp57166 = icmp ult i16 %inc, %54
  br i1 %cmp57166, label %for.body.lr.ph, label %if.else50.for.end_crit_edge

if.else50.for.end_crit_edge:                      ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.else50
  %sig_id.i = getelementptr inbounds %struct.wl3501_join_req, ptr %sig.i139, i32 0, i32 1
  %timeout.i = getelementptr inbounds %struct.wl3501_join_req, ptr %sig.i139, i32 0, i32 5
  %req.i = getelementptr inbounds %struct.wl3501_join_req, ptr %sig.i139, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i51.0167 = phi i32 [ %conv54, %for.body.lr.ph ], [ %inc64, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 108, ptr nonnull %sig.i139) #15
  %55 = call ptr @memset(ptr %sig.i139, i32 0, i32 36)
  %56 = ptrtoint ptr %sig_id.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 37, ptr %sig_id.i, align 2
  %57 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 10, ptr %timeout.i, align 2
  %idxprom.i = and i32 %i51.0167, 65535
  %req3.i = getelementptr %struct.wl3501_card, ptr %add.ptr.i, i32 0, i32 33, i32 %idxprom.i, i32 6
  %58 = call ptr @memcpy(ptr %req.i, ptr %req3.i, i32 72)
  %call.i = call fastcc i32 @wl3501_esbq_exec(ptr noundef %add.ptr.i, ptr noundef nonnull %sig.i139, i32 noundef 108) #15
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %sig.i139) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool61.not = icmp eq i32 %call.i, 0
  br i1 %tobool61.not, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc64 = add nuw nsw i32 %i51.0167, 1
  %59 = ptrtoint ptr %bss_cnt55 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %bss_cnt55, align 4
  %conv56 = zext i16 %60 to i32
  %cmp57 = icmp ult i32 %inc64, %conv56
  br i1 %cmp57, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %if.else50.for.end_crit_edge
  %i51.0.lcssa = phi i32 [ %conv54, %if.else50.for.end_crit_edge ], [ %i51.0167, %for.body.for.end_crit_edge ], [ %inc64, %for.inc.for.end_crit_edge ]
  %conv65 = trunc i32 %i51.0.lcssa to i16
  %61 = ptrtoint ptr %join_sta_bss52 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv65, ptr %join_sta_bss52, align 2
  %62 = ptrtoint ptr %bss_cnt55 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %bss_cnt55, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %63, i16 %conv65)
  %cmp71 = icmp eq i16 %63, %conv65
  br i1 %cmp71, label %if.then73, label %for.end.if.end92_crit_edge

for.end.if.end92_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end92

if.then73:                                        ; preds = %for.end
  %net_type74 = getelementptr i8, ptr %dev, i32 2624
  %64 = ptrtoint ptr %net_type74 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %net_type74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %65)
  %cmp75 = icmp eq i32 %65, 2
  br i1 %cmp75, label %if.then77, label %if.else79

if.then77:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %sig.i140) #15
  %66 = call ptr @memset(ptr %sig.i140, i32 0, i32 64)
  %sig_id.i141 = getelementptr inbounds %struct.wl3501_scan_req, ptr %sig.i140, i32 0, i32 1
  %67 = ptrtoint ptr %sig_id.i141 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 40, ptr %sig_id.i141, align 2
  %probe_delay.i = getelementptr inbounds %struct.wl3501_scan_req, ptr %sig.i140, i32 0, i32 3
  %68 = ptrtoint ptr %probe_delay.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 16, ptr %probe_delay.i, align 4
  %min_chan_time.i = getelementptr inbounds %struct.wl3501_scan_req, ptr %sig.i140, i32 0, i32 4
  %69 = ptrtoint ptr %min_chan_time.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 100, ptr %min_chan_time.i, align 2
  %max_chan_time.i = getelementptr inbounds %struct.wl3501_scan_req, ptr %sig.i140, i32 0, i32 5
  %70 = ptrtoint ptr %max_chan_time.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 100, ptr %max_chan_time.i, align 4
  %scan_type.i = getelementptr inbounds %struct.wl3501_scan_req, ptr %sig.i140, i32 0, i32 9
  %71 = ptrtoint ptr %scan_type.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %scan_type.i, align 4
  %72 = ptrtoint ptr %join_sta_bss52 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 0, ptr %join_sta_bss52, align 2
  %73 = ptrtoint ptr %bss_cnt55 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 0, ptr %bss_cnt55, align 4
  %call1.i = call fastcc i32 @wl3501_esbq_exec(ptr noundef %add.ptr.i, ptr noundef nonnull %sig.i140, i32 noundef 68) #15
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %sig.i140) #15
  br label %if.end92

if.else79:                                        ; preds = %if.then73
  %adhoc_times = getelementptr i8, ptr %dev, i32 2733
  %74 = ptrtoint ptr %adhoc_times to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %adhoc_times, align 1
  %inc80 = add i8 %75, 1
  store i8 %inc80, ptr %adhoc_times, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %inc80)
  %cmp83 = icmp ugt i8 %inc80, 16
  br i1 %cmp83, label %if.then85, label %if.else87

if.then85:                                        ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 82, ptr nonnull %sig.i142) #15
  %76 = getelementptr inbounds i8, ptr %sig.i142, i32 80
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 -1, ptr %76, align 2, !annotation !189
  %78 = ptrtoint ptr %sig.i142 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 0, ptr %sig.i142, align 2
  %sig_id.i143 = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i142, i32 0, i32 1
  %79 = ptrtoint ptr %sig_id.i143 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 42, ptr %sig_id.i143, align 2
  %bss_type.i144 = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i142, i32 0, i32 2
  %80 = ptrtoint ptr %bss_type.i144 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %bss_type.i144, align 1
  %beacon_period.i = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i142, i32 0, i32 3
  %81 = ptrtoint ptr %beacon_period.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 400, ptr %beacon_period.i, align 2
  %dtim_period.i = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i142, i32 0, i32 4
  %82 = ptrtoint ptr %dtim_period.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 1, ptr %dtim_period.i, align 2
  %probe_delay.i148 = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i142, i32 0, i32 5
  %83 = ptrtoint ptr %probe_delay.i148 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 0, ptr %probe_delay.i148, align 2
  %cap_info.i = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i142, i32 0, i32 6
  %84 = ptrtoint ptr %cap_info.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 2, ptr %cap_info.i, align 2
  %ssid.i = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i142, i32 0, i32 7
  %85 = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i142, i32 0, i32 7, i32 1
  %86 = call ptr @memset(ptr %85, i32 0, i32 32)
  %bss_basic_rset.i = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i142, i32 0, i32 8
  %87 = ptrtoint ptr %bss_basic_rset.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %bss_basic_rset.i, align 2
  %len.i149 = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i142, i32 0, i32 8, i32 0, i32 1
  %88 = ptrtoint ptr %len.i149 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 2, ptr %len.i149, align 1
  %data_rate_labels.i = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i142, i32 0, i32 8, i32 1
  %89 = ptrtoint ptr %data_rate_labels.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 -126, ptr %data_rate_labels.i, align 2
  %arrayinit.element.i = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i142, i32 0, i32 8, i32 1, i32 1
  %90 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 -124, ptr %arrayinit.element.i, align 1
  %arrayinit.start.i = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i142, i32 0, i32 8, i32 1, i32 2
  %91 = call ptr @memset(ptr %arrayinit.start.i, i32 0, i32 6)
  %arrayinit.end.i = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i142, i32 0, i32 9
  %92 = ptrtoint ptr %arrayinit.end.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %arrayinit.end.i, align 2
  %len6.i = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i142, i32 0, i32 9, i32 0, i32 1
  %93 = ptrtoint ptr %len6.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 2, ptr %len6.i, align 1
  %data_rate_labels7.i = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i142, i32 0, i32 9, i32 1
  %94 = ptrtoint ptr %data_rate_labels7.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 -126, ptr %data_rate_labels7.i, align 2
  %arrayinit.element9.i = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i142, i32 0, i32 9, i32 1, i32 1
  %95 = ptrtoint ptr %arrayinit.element9.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 -124, ptr %arrayinit.element9.i, align 1
  %arrayinit.start10.i = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i142, i32 0, i32 9, i32 1, i32 2
  %ds_pset.i = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i142, i32 0, i32 11
  %96 = call ptr @memset(ptr %arrayinit.start10.i, i32 0, i32 14)
  %97 = ptrtoint ptr %ds_pset.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 3, ptr %ds_pset.i, align 2
  %len19.i = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i142, i32 0, i32 11, i32 0, i32 1
  %98 = ptrtoint ptr %len19.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 1, ptr %len19.i, align 1
  %chan.i = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i142, i32 0, i32 11, i32 1
  %chan20.i = getelementptr i8, ptr %dev, i32 2724
  %99 = ptrtoint ptr %chan20.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %chan20.i, align 4
  %101 = ptrtoint ptr %chan.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %chan.i, align 2
  %ibss_pset.i = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i142, i32 0, i32 12
  %102 = ptrtoint ptr %ibss_pset.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 6, ptr %ibss_pset.i, align 1
  %len23.i = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i142, i32 0, i32 12, i32 0, i32 1
  %103 = ptrtoint ptr %len23.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 2, ptr %len23.i, align 2
  %atim_window.i = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i142, i32 0, i32 12, i32 1
  %104 = ptrtoint ptr %atim_window.i to i32
  call void @__asan_storeN_noabort(i32 %104, i32 2)
  store i16 10, ptr %atim_window.i, align 1
  %essid.i = getelementptr i8, ptr %dev, i32 2548
  %105 = ptrtoint ptr %essid.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %essid.i, align 1
  %data.i.i150 = getelementptr i8, ptr %dev, i32 2550
  %len.i.i = getelementptr i8, ptr %dev, i32 2549
  %107 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %len.i.i, align 1
  %conv1.i.i = zext i8 %108 to i32
  %109 = ptrtoint ptr %ssid.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %106, ptr %ssid.i, align 2
  %len3.i.i.i = getelementptr inbounds %struct.wl3501_start_req, ptr %sig.i142, i32 0, i32 7, i32 0, i32 1
  %110 = ptrtoint ptr %len3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %108, ptr %len3.i.i.i, align 1
  %111 = call ptr @memcpy(ptr %85, ptr %data.i.i150, i32 %conv1.i.i)
  %keep_essid.i = getelementptr i8, ptr %dev, i32 2582
  %112 = ptrtoint ptr %keep_essid.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %106, ptr %keep_essid.i, align 1
  %len3.i.i7.i = getelementptr i8, ptr %dev, i32 2583
  %113 = ptrtoint ptr %len3.i.i7.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %108, ptr %len3.i.i7.i, align 1
  %data.i.i8.i = getelementptr i8, ptr %dev, i32 2584
  %114 = call ptr @memcpy(ptr %data.i.i8.i, ptr %data.i.i150, i32 %conv1.i.i)
  %call30.i = call fastcc i32 @wl3501_esbq_exec(ptr noundef %add.ptr.i, ptr noundef nonnull %sig.i142, i32 noundef 82) #15
  call void @llvm.lifetime.end.p0(i64 82, ptr nonnull %sig.i142) #15
  br label %if.end92

if.else87:                                        ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %sig.i151) #15
  %115 = call ptr @memset(ptr %sig.i151, i32 0, i32 64)
  %sig_id.i152 = getelementptr inbounds %struct.wl3501_scan_req, ptr %sig.i151, i32 0, i32 1
  %116 = ptrtoint ptr %sig_id.i152 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 40, ptr %sig_id.i152, align 2
  %bss_type.i153 = getelementptr inbounds %struct.wl3501_scan_req, ptr %sig.i151, i32 0, i32 2
  %117 = ptrtoint ptr %bss_type.i153 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 1, ptr %bss_type.i153, align 1
  %probe_delay.i157 = getelementptr inbounds %struct.wl3501_scan_req, ptr %sig.i151, i32 0, i32 3
  %118 = ptrtoint ptr %probe_delay.i157 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 16, ptr %probe_delay.i157, align 4
  %min_chan_time.i158 = getelementptr inbounds %struct.wl3501_scan_req, ptr %sig.i151, i32 0, i32 4
  %119 = ptrtoint ptr %min_chan_time.i158 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 100, ptr %min_chan_time.i158, align 2
  %max_chan_time.i159 = getelementptr inbounds %struct.wl3501_scan_req, ptr %sig.i151, i32 0, i32 5
  %120 = ptrtoint ptr %max_chan_time.i159 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 100, ptr %max_chan_time.i159, align 4
  %scan_type.i160 = getelementptr inbounds %struct.wl3501_scan_req, ptr %sig.i151, i32 0, i32 9
  %121 = ptrtoint ptr %scan_type.i160 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %scan_type.i160, align 4
  %122 = ptrtoint ptr %join_sta_bss52 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 0, ptr %join_sta_bss52, align 2
  %123 = ptrtoint ptr %bss_cnt55 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 0, ptr %bss_cnt55, align 4
  %call1.i163 = call fastcc i32 @wl3501_esbq_exec(ptr noundef %add.ptr.i, ptr noundef nonnull %sig.i151, i32 noundef 68) #15
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %sig.i151) #15
  br label %if.end92

if.end92:                                         ; preds = %if.else87, %if.then85, %if.then77, %for.end.if.end92_crit_edge, %if.else, %wl3501_mgmt_auth.exit, %if.then8.if.end92_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %sig) #15
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wl3501_assoc_confirm_interrupt(ptr noundef %dev, i16 noundef zeroext %addr) unnamed_addr #12 align 64 {
entry:
  %sig = alloca %struct.wl3501_assoc_confirm, align 2
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %sig) #15
  %0 = getelementptr inbounds %struct.wl3501_assoc_confirm, ptr %sig, i32 0, i32 3
  %1 = call ptr @memset(ptr %sig, i32 255, i32 6)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl3501_assoc_confirm_interrupt.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl3501_assoc_confirm_interrupt, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !186

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl3501_assoc_confirm_interrupt.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.35) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and.i = lshr i16 %addr, 12
  %2 = trunc i16 %and.i to i8
  %conv1.i = and i8 %2, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  tail call void @arm_heavy_mb() #15
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i, align 4
  %add.i.i = add i32 %4, 1
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %5 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %conv1.i) #15, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  tail call void @arm_heavy_mb() #15
  %conv4.i = trunc i16 %addr to i8
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  %add.i = add i32 %7, 2
  %and5.i = and i32 %add.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %8 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %conv4.i) #15, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !191
  tail call void @arm_heavy_mb() #15
  %9 = lshr i16 %addr, 8
  %10 = trunc i16 %9 to i8
  %conv11.i = and i8 %10, 127
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i, align 4
  %add13.i = add i32 %12, 3
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %13 = inttoptr i32 %add15.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %conv11.i) #15, !srcloc !166
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i, align 4
  %add18.i = add i32 %15, 4
  %and19.i = and i32 %add18.i, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %16 = inttoptr i32 %add20.i to ptr
  call void @__raw_readsb(ptr noundef nonnull %16, ptr noundef nonnull %sig, i32 noundef 6) #15
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp = icmp eq i16 %18, 0
  br i1 %cmp, label %if.then5, label %do.end.if.end6_crit_edge

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %bssid.i = getelementptr i8, ptr %dev, i32 2616
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %dev, ptr noundef %bssid.i) #18
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %19 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %_tx.i.i.i, align 128
  call void @netif_tx_wake_queue(ptr noundef %20) #15
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %do.end.if.end6_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %sig) #15
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wl3501_auth_confirm_interrupt(ptr nocapture noundef %this, i16 noundef zeroext %addr) unnamed_addr #12 align 64 {
entry:
  %sig.i10 = alloca %struct.wl3501_resync_req, align 4
  %sig.i = alloca %struct.wl3501_assoc_req, align 2
  %sig = alloca %struct.wl3501_auth_confirm, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %sig) #15
  %0 = getelementptr inbounds %struct.wl3501_auth_confirm, ptr %sig, i32 0, i32 4
  %1 = call ptr @memset(ptr %sig, i32 255, i32 14)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl3501_auth_confirm_interrupt.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl3501_auth_confirm_interrupt, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !186

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl3501_auth_confirm_interrupt.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.35) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and.i = lshr i16 %addr, 12
  %2 = trunc i16 %and.i to i8
  %conv1.i = and i8 %2, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  tail call void @arm_heavy_mb() #15
  %3 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %this, align 4
  %add.i.i = add i32 %4, 1
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %5 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %conv1.i) #15, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  tail call void @arm_heavy_mb() #15
  %conv4.i = trunc i16 %addr to i8
  %6 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %this, align 4
  %add.i = add i32 %7, 2
  %and5.i = and i32 %add.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %8 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %conv4.i) #15, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !191
  tail call void @arm_heavy_mb() #15
  %9 = lshr i16 %addr, 8
  %10 = trunc i16 %9 to i8
  %conv11.i = and i8 %10, 127
  %11 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %this, align 4
  %add13.i = add i32 %12, 3
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %13 = inttoptr i32 %add15.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %conv11.i) #15, !srcloc !166
  %14 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %this, align 4
  %add18.i = add i32 %15, 4
  %and19.i = and i32 %add18.i, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %16 = inttoptr i32 %add20.i to ptr
  call void @__raw_readsb(ptr noundef nonnull %16, ptr noundef nonnull %sig, i32 noundef 14) #15
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp = icmp eq i16 %18, 0
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sig.i) #15
  %19 = getelementptr inbounds %struct.wl3501_assoc_req, ptr %sig.i, i32 0, i32 1
  %20 = getelementptr inbounds %struct.wl3501_assoc_req, ptr %sig.i, i32 0, i32 2
  %21 = getelementptr inbounds %struct.wl3501_assoc_req, ptr %sig.i, i32 0, i32 3
  %22 = getelementptr inbounds %struct.wl3501_assoc_req, ptr %sig.i, i32 0, i32 4
  %23 = getelementptr inbounds %struct.wl3501_assoc_req, ptr %sig.i, i32 0, i32 5
  %24 = ptrtoint ptr %sig.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %sig.i, align 2
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 32, ptr %19, align 2
  %26 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %20, align 1
  %27 = ptrtoint ptr %21 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1000, ptr %21, align 2
  %cap_info1.i = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 25
  %28 = ptrtoint ptr %cap_info1.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %cap_info1.i, align 1
  %conv.i = zext i8 %29 to i16
  %30 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i, ptr %22, align 2
  %31 = ptrtoint ptr %23 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 5, ptr %23, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl3501_mgmt_association.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl3501_auth_confirm_interrupt, %if.then.i)) #15
          to label %wl3501_mgmt_association.exit [label %if.then.i], !srcloc !186

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl3501_mgmt_association.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.35) #15
  br label %wl3501_mgmt_association.exit

wl3501_mgmt_association.exit:                     ; preds = %if.then.i, %if.then4
  %32 = getelementptr inbounds %struct.wl3501_assoc_req, ptr %sig.i, i32 0, i32 6
  %bssid.i = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 19
  %33 = call ptr @memcpy(ptr %32, ptr %bssid.i, i32 6)
  %call6.i = call fastcc i32 @wl3501_esbq_exec(ptr noundef %this, ptr noundef nonnull %sig.i, i32 noundef 16) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sig.i) #15
  br label %if.end7

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sig.i10) #15
  %34 = ptrtoint ptr %sig.i10 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 11264, ptr %sig.i10, align 4
  %call.i = call fastcc i32 @wl3501_esbq_exec(ptr noundef %this, ptr noundef nonnull %sig.i10, i32 noundef 4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sig.i10) #15
  br label %if.end7

if.end7:                                          ; preds = %if.else, %wl3501_mgmt_association.exit
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %sig) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wl3501_esbq_confirm_done(ptr nocapture noundef %this) unnamed_addr #2 align 64 {
entry:
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #15
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %tmp, align 1
  %esbq_confirm = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 16
  %1 = ptrtoint ptr %esbq_confirm to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %esbq_confirm, align 2
  %add = add i16 %2, 3
  %and.i = lshr i16 %add, 12
  %3 = trunc i16 %and.i to i8
  %conv1.i = and i8 %3, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  tail call void @arm_heavy_mb() #15
  %4 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %this, align 4
  %add.i.i = add i32 %5, 1
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %6 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %conv1.i) #15, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !192
  tail call void @arm_heavy_mb() #15
  %conv4.i = trunc i16 %add to i8
  %7 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %this, align 4
  %add.i = add i32 %8, 2
  %and5.i = and i32 %add.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %9 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %conv4.i) #15, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !193
  tail call void @arm_heavy_mb() #15
  %10 = lshr i16 %add, 8
  %11 = trunc i16 %10 to i8
  %conv11.i = and i8 %11, 127
  %12 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %this, align 4
  %add13.i = add i32 %13, 3
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %14 = inttoptr i32 %add15.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %conv11.i) #15, !srcloc !166
  %15 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %this, align 4
  %add18.i = add i32 %16, 4
  %and19.i = and i32 %add18.i, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %17 = inttoptr i32 %add20.i to ptr
  call void @__raw_writesb(ptr noundef nonnull %17, ptr noundef nonnull %tmp, i32 noundef 1) #15
  %18 = ptrtoint ptr %esbq_confirm to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %esbq_confirm, align 2
  %add4 = add i16 %19, 4
  store i16 %add4, ptr %esbq_confirm, align 2
  %esbq_confirm_end = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 15
  %20 = ptrtoint ptr %esbq_confirm_end to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %esbq_confirm_end, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %add4, i16 %21)
  %cmp.not = icmp ult i16 %add4, %21
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %esbq_confirm_start = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 14
  %22 = ptrtoint ptr %esbq_confirm_start to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %esbq_confirm_start, align 2
  %24 = ptrtoint ptr %esbq_confirm to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %esbq_confirm, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wl3501_esbq_req_free(ptr nocapture noundef %this) unnamed_addr #2 align 64 {
entry:
  %tmp = alloca i8, align 1
  %addr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #15
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp, align 1, !annotation !189
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr) #15
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %addr, align 2, !annotation !189
  %esbq_req_head = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 12
  %2 = ptrtoint ptr %esbq_req_head to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %esbq_req_head, align 2
  %esbq_req_tail = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 13
  %4 = ptrtoint ptr %esbq_req_tail to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %esbq_req_tail, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %5)
  %cmp = icmp eq i16 %3, %5
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %add = add i16 %5, 3
  %and.i = lshr i16 %add, 12
  %6 = trunc i16 %and.i to i8
  %conv1.i = and i8 %6, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  tail call void @arm_heavy_mb() #15
  %7 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %this, align 4
  %add.i.i = add i32 %8, 1
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %9 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %conv1.i) #15, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  tail call void @arm_heavy_mb() #15
  %conv4.i = trunc i16 %add to i8
  %10 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %this, align 4
  %add.i = add i32 %11, 2
  %and5.i = and i32 %add.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %12 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %conv4.i) #15, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !191
  tail call void @arm_heavy_mb() #15
  %13 = lshr i16 %add, 8
  %14 = trunc i16 %13 to i8
  %conv11.i = and i8 %14, 127
  %15 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %this, align 4
  %add13.i = add i32 %16, 3
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %17 = inttoptr i32 %add15.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %conv11.i) #15, !srcloc !166
  %18 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %this, align 4
  %add18.i = add i32 %19, 4
  %and19.i = and i32 %add18.i, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %20 = inttoptr i32 %add20.i to ptr
  call void @__raw_readsb(ptr noundef nonnull %20, ptr noundef nonnull %tmp, i32 noundef 1) #15
  %21 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %tmp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %22)
  %tobool.not = icmp sgt i8 %22, -1
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end8

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end8:                                          ; preds = %if.end
  %23 = ptrtoint ptr %esbq_req_tail to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %esbq_req_tail, align 4
  %and.i33 = lshr i16 %24, 12
  %25 = trunc i16 %and.i33 to i8
  %conv1.i34 = and i8 %25, 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  call void @arm_heavy_mb() #15
  %26 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %this, align 4
  %add.i.i35 = add i32 %27, 1
  %and.i.i36 = and i32 %add.i.i35, 1048575
  %add1.i.i37 = or i32 %and.i.i36, -18874368
  %28 = inttoptr i32 %add1.i.i37 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 %conv1.i34) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  %conv4.i38 = trunc i16 %24 to i8
  %29 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %this, align 4
  %add.i39 = add i32 %30, 2
  %and5.i40 = and i32 %add.i39, 1048575
  %add6.i41 = or i32 %and5.i40, -18874368
  %31 = inttoptr i32 %add6.i41 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 %conv4.i38) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !191
  call void @arm_heavy_mb() #15
  %32 = lshr i16 %24, 8
  %33 = trunc i16 %32 to i8
  %conv11.i42 = and i8 %33, 127
  %34 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %this, align 4
  %add13.i43 = add i32 %35, 3
  %and14.i44 = and i32 %add13.i43, 1048575
  %add15.i45 = or i32 %and14.i44, -18874368
  %36 = inttoptr i32 %add15.i45 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 %conv11.i42) #15, !srcloc !166
  %37 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %this, align 4
  %add18.i46 = add i32 %38, 4
  %and19.i47 = and i32 %add18.i46, 1048575
  %add20.i48 = or i32 %and19.i47, -18874368
  %39 = inttoptr i32 %add20.i48 to ptr
  call void @__raw_readsb(ptr noundef nonnull %39, ptr noundef nonnull %addr, i32 noundef 2) #15
  %40 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %addr, align 2
  call fastcc void @wl3501_free_tx_buffer(ptr noundef %this, i16 noundef zeroext %41)
  %42 = ptrtoint ptr %esbq_req_tail to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %esbq_req_tail, align 4
  %add12 = add i16 %43, 4
  store i16 %add12, ptr %esbq_req_tail, align 4
  %esbq_req_end = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 11
  %44 = ptrtoint ptr %esbq_req_end to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %esbq_req_end, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %add12, i16 %45)
  %cmp17.not = icmp ult i16 %add12, %45
  br i1 %cmp17.not, label %if.end8.out_crit_edge, label %if.then19

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then19:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  %esbq_req_start = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 10
  %46 = ptrtoint ptr %esbq_req_start to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %esbq_req_start, align 2
  %48 = ptrtoint ptr %esbq_req_tail to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %esbq_req_tail, align 4
  br label %out

out:                                              ; preds = %if.then19, %if.end8.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wl3501_pwr_mgmt(ptr noundef %this, i32 noundef %suspend) unnamed_addr #2 align 64 {
entry:
  %tmp.i = alloca i8, align 1
  %sig = alloca %struct.wl3501_pwr_mgmt_req, align 2
  %ptr = alloca i16, align 2
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %sig) #15
  %0 = getelementptr inbounds %struct.wl3501_pwr_mgmt_req, ptr %sig, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wl3501_pwr_mgmt_req, ptr %sig, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wl3501_pwr_mgmt_req, ptr %sig, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wl3501_pwr_mgmt_req, ptr %sig, i32 0, i32 4
  %4 = ptrtoint ptr %sig to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %sig, align 2
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 38, ptr %0, align 2
  %conv = trunc i32 %suspend to i8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %suspend)
  %tobool.not = icmp eq i32 %suspend, 0
  %conv1 = zext i1 %tobool.not to i8
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv1, ptr %2, align 2
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 10, ptr %3, align 1
  %lock = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 2
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #15
  %9 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %tmp.i, align 1
  %esbq_req_head.i = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 12
  %10 = ptrtoint ptr %esbq_req_head.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %esbq_req_head.i, align 2
  %add.i = add i16 %11, 3
  %and.i.i = lshr i16 %add.i, 12
  %12 = trunc i16 %and.i.i to i8
  %conv1.i.i = and i8 %12, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  tail call void @arm_heavy_mb() #15
  %13 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %this, align 4
  %add.i.i.i = add i32 %14, 1
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %15 = inttoptr i32 %add1.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %conv1.i.i) #15, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  tail call void @arm_heavy_mb() #15
  %conv4.i.i = trunc i16 %add.i to i8
  %16 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %this, align 4
  %add.i.i = add i32 %17, 2
  %and5.i.i = and i32 %add.i.i, 1048575
  %add6.i.i = or i32 %and5.i.i, -18874368
  %18 = inttoptr i32 %add6.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %conv4.i.i) #15, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !191
  tail call void @arm_heavy_mb() #15
  %19 = lshr i16 %add.i, 8
  %20 = trunc i16 %19 to i8
  %conv11.i.i = and i8 %20, 127
  %21 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %this, align 4
  %add13.i.i = add i32 %22, 3
  %and14.i.i = and i32 %add13.i.i, 1048575
  %add15.i.i = or i32 %and14.i.i, -18874368
  %23 = inttoptr i32 %add15.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %conv11.i.i) #15, !srcloc !166
  %24 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %this, align 4
  %add18.i.i = add i32 %25, 4
  %and19.i.i = and i32 %add18.i.i, 1048575
  %add20.i.i = or i32 %and19.i.i, -18874368
  %26 = inttoptr i32 %add20.i.i to ptr
  call void @__raw_readsb(ptr noundef nonnull %26, ptr noundef nonnull %tmp.i, i32 noundef 1) #15
  %27 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %tmp.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %28)
  %tobool8.not = icmp sgt i8 %28, -1
  br i1 %tobool8.not, label %entry.if.end53_crit_edge, label %if.then

entry.if.end53_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end53

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ptr) #15
  %call9 = call fastcc zeroext i16 @wl3501_get_tx_buffer(ptr noundef %this, i16 noundef zeroext 6)
  %29 = ptrtoint ptr %ptr to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %call9, ptr %ptr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call9)
  %tobool10.not = icmp eq i16 %call9, 0
  br i1 %tobool10.not, label %cleanup50.thread, label %if.then11

cleanup50.thread:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ptr) #15
  br label %if.end53

if.then11:                                        ; preds = %if.then
  %and.i2 = lshr i16 %call9, 12
  %30 = trunc i16 %and.i2 to i8
  %conv1.i = and i8 %30, 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  call void @arm_heavy_mb() #15
  %31 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %this, align 4
  %add.i.i3 = add i32 %32, 1
  %and.i.i4 = and i32 %add.i.i3, 1048575
  %add1.i.i = or i32 %and.i.i4, -18874368
  %33 = inttoptr i32 %add1.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 %conv1.i) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !192
  call void @arm_heavy_mb() #15
  %conv4.i = trunc i16 %call9 to i8
  %34 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %this, align 4
  %add.i5 = add i32 %35, 2
  %and5.i = and i32 %add.i5, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %36 = inttoptr i32 %add6.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 %conv4.i) #15, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !193
  call void @arm_heavy_mb() #15
  %37 = lshr i16 %call9, 8
  %38 = trunc i16 %37 to i8
  %conv11.i = and i8 %38, 127
  %39 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %this, align 4
  %add13.i = add i32 %40, 3
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %41 = inttoptr i32 %add15.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 %conv11.i) #15, !srcloc !166
  %42 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %this, align 4
  %add18.i = add i32 %43, 4
  %and19.i = and i32 %add18.i, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %44 = inttoptr i32 %add20.i to ptr
  call void @__raw_writesb(ptr noundef nonnull %44, ptr noundef nonnull %sig, i32 noundef 6) #15
  call fastcc void @wl3501_esbq_req(ptr noundef %this, ptr noundef nonnull %ptr)
  %status = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 5, i32 3
  %45 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 255, ptr %status, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #15
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 446) #15
  %46 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %47)
  %cmp22.not = icmp eq i16 %47, 255
  br i1 %cmp22.not, label %if.then24, label %if.then11.cleanup50_crit_edge

if.then11.cleanup50_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup50

if.then24:                                        ; preds = %if.then11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #15
  %48 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #15
  %wait = getelementptr inbounds %struct.wl3501_card, ptr %this, i32 0, i32 3
  %call2614 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #15
  %49 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %50)
  %cmp30.not15 = icmp eq i16 %50, 255
  br i1 %cmp30.not15, label %if.then24.if.end_crit_edge, label %if.then24.for.end_crit_edge

if.then24.for.end_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.then24.if.end_crit_edge:                       ; preds = %if.then24
  br label %if.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.then24.if.end_crit_edge
  %call2616 = phi i32 [ %call26, %cleanup.if.end_crit_edge ], [ %call2614, %if.then24.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2616)
  %tobool33.not = icmp eq i32 %call2616, 0
  br i1 %tobool33.not, label %cleanup, label %if.end.__out_crit_edge

if.end.__out_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %__out

cleanup:                                          ; preds = %if.end
  call void @schedule() #15
  %call26 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #15
  %51 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %status, align 4
  %cmp30.not = icmp eq i16 %52, 255
  br i1 %cmp30.not, label %cleanup.if.end_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then24.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #15
  br label %__out

__out:                                            ; preds = %for.end, %if.end.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #15
  br label %cleanup50

cleanup50:                                        ; preds = %__out, %if.then11.cleanup50_crit_edge
  %cond = select i1 %tobool.not, ptr @.str.59, ptr @.str.58
  %53 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %status, align 4
  %conv47 = zext i16 %54 to i32
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, ptr noundef nonnull %cond, i32 noundef %conv47) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ptr) #15
  br label %cleanup55

if.end53:                                         ; preds = %cleanup50.thread, %entry.if.end53_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #15
  br label %cleanup55

cleanup55:                                        ; preds = %if.end53, %cleanup50
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %sig) #15
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.usub.sat.i16(i16, i16) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !62, !64, !66, !68, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !87, !88, !90, !91, !93, !94, !95, !97, !98, !99, !100, !102, !103, !105, !106, !107, !108, !110, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !126, !127, !129, !130, !132, !133, !135, !136, !137, !138, !140, !141, !143, !144, !146, !147, !149, !150, !151, !152, !153, !154}
!llvm.module.flags = !{!156, !157, !158, !159, !160, !161, !162, !163}
!llvm.ident = !{!164}

!0 = !{ptr @__initcall__kmod_wl3501_cs__364_2024_wl3501_driver_init6, !1, !"__initcall__kmod_wl3501_cs__364_2024_wl3501_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 2024, i32 1}
!2 = !{ptr @__exitcall_wl3501_driver_exit, !1, !"__exitcall_wl3501_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author365, !4, !"__UNIQUE_ID_author365", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 2026, i32 1}
!5 = !{ptr @__UNIQUE_ID_description366, !6, !"__UNIQUE_ID_description366", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 2029, i32 1}
!7 = !{ptr @__UNIQUE_ID_file367, !8, !"__UNIQUE_ID_file367", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 2030, i32 1}
!9 = !{ptr @__UNIQUE_ID_license368, !8, !"__UNIQUE_ID_license368", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 2017, i32 11}
!12 = !{ptr @wl3501_driver, !13, !"wl3501_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 2015, i32 29}
!14 = !{ptr @wl3501_netdev_ops, !15, !"wl3501_netdev_ops", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 1852, i32 36}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 1355, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @wl3501_open.__UNIQUE_ID_ddebug358, !17, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 1367, i32 2}
!23 = !{ptr @wl3501_open.__UNIQUE_ID_ddebug359, !22, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 1368, i32 2}
!26 = !{ptr @wl3501_open._entry, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @wl3501_open._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 1376, i32 2}
!30 = !{ptr @wl3501_open._entry.6, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @wl3501_open._entry_ptr.8, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 1226, i32 2}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @wl3501_init_firmware._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @wl3501_init_firmware._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 1175, i32 2}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @wl3501_reset_board._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @wl3501_reset_board._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 1247, i32 2}
!44 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @wl3501_close._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @wl3501_close._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 1300, i32 3}
!49 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @wl3501_tx_timeout._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @wl3501_tx_timeout._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 1270, i32 3}
!54 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @wl3501_reset._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @wl3501_reset._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 1285, i32 2}
!59 = !{ptr @wl3501_reset.__UNIQUE_ID_ddebug357, !58, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!60 = !{ptr @wl3501_handler_def, !61, !"wl3501_handler_def", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 1846, i32 36}
!62 = !{ptr @wl3501_handler, !63, !"wl3501_handler", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 1817, i32 25}
!64 = !{ptr @.str.20, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 1444, i32 22}
!66 = !{ptr @iw_channel_table, !67, !"iw_channel_table", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 84, i32 3}
!68 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 1628, i32 24}
!70 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 1933, i32 3}
!72 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @wl3501_config._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @wl3501_config._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 1942, i32 3}
!77 = !{ptr @wl3501_config._entry.24, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @wl3501_config._entry_ptr.26, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 1951, i32 2}
!81 = !{ptr @wl3501_config._entry.27, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @wl3501_config._entry_ptr.29, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 1968, i32 22}
!85 = !{ptr @wl3501_config.__key, !86, !"__key", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 1969, i32 2}
!87 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @wl3501_config.__key.32, !89, !"__key", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 1970, i32 2}
!90 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 1052, i32 2}
!93 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @wl3501_rx_interrupt.__UNIQUE_ID_ddebug356, !92, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!95 = !{ptr @.str.36, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 932, i32 3}
!97 = !{ptr @.str.37, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @wl3501_alarm_interrupt._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @wl3501_alarm_interrupt._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 944, i32 2}
!102 = !{ptr @wl3501_md_confirm_interrupt.__UNIQUE_ID_ddebug351, !101, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!103 = !{ptr @.str.39, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 972, i32 3}
!105 = !{ptr @.str.40, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @wl3501_md_ind_interrupt._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @wl3501_md_ind_interrupt._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.42, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 980, i32 3}
!110 = !{ptr @wl3501_md_ind_interrupt._entry.41, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @wl3501_md_ind_interrupt._entry_ptr.43, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.44, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 1000, i32 2}
!114 = !{ptr @wl3501_get_confirm_interrupt.__UNIQUE_ID_ddebug352, !113, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!115 = !{ptr @.str.45, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 1012, i32 2}
!117 = !{ptr @wl3501_start_confirm_interrupt.__UNIQUE_ID_ddebug353, !116, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!118 = !{ptr @.str.46, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 665, i32 2}
!120 = !{ptr @wl3501_mgmt_scan_confirm.__UNIQUE_ID_ddebug345, !119, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!121 = !{ptr @.str.47, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 668, i32 3}
!123 = !{ptr @wl3501_mgmt_scan_confirm.__UNIQUE_ID_ddebug346, !122, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!124 = !{ptr @.str.48, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 704, i32 3}
!126 = !{ptr @wl3501_mgmt_scan_confirm.__UNIQUE_ID_ddebug347, !125, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!127 = !{ptr @.str.49, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 885, i32 2}
!129 = !{ptr @wl3501_mgmt_join_confirm.__UNIQUE_ID_ddebug350, !128, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!130 = !{ptr @.str.50, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 861, i32 2}
!132 = !{ptr @wl3501_mgmt_auth.__UNIQUE_ID_ddebug348, !131, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!133 = !{ptr @.str.51, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 838, i32 2}
!135 = !{ptr @.str.52, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @wl3501_online._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @wl3501_online._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.53, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 1024, i32 2}
!140 = !{ptr @wl3501_assoc_confirm_interrupt.__UNIQUE_ID_ddebug354, !139, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!141 = !{ptr @.str.54, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 1036, i32 2}
!143 = !{ptr @wl3501_auth_confirm_interrupt.__UNIQUE_ID_ddebug355, !142, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!144 = !{ptr @.str.55, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 875, i32 2}
!146 = !{ptr @wl3501_mgmt_association.__UNIQUE_ID_ddebug349, !145, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!147 = !{ptr @.str.56, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 447, i32 4}
!149 = !{ptr @.str.57, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @wl3501_pwr_mgmt._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @wl3501_pwr_mgmt._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.58, !148, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.59, !148, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @wl3501_ids, !155, !"wl3501_ids", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/wl3501_cs.c", i32 2009, i32 38}
!156 = !{i32 1, !"wchar_size", i32 2}
!157 = !{i32 1, !"min_enum_size", i32 4}
!158 = !{i32 8, !"branch-target-enforcement", i32 0}
!159 = !{i32 8, !"sign-return-address", i32 0}
!160 = !{i32 8, !"sign-return-address-all", i32 0}
!161 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!162 = !{i32 7, !"uwtable", i32 1}
!163 = !{i32 7, !"frame-pointer", i32 2}
!164 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!165 = !{i64 2157512079}
!166 = !{i64 4258755}
!167 = !{i64 2157512505}
!168 = !{i64 2157512931}
!169 = !{i64 4259150}
!170 = !{i64 2157513429}
!171 = !{i64 2157513796}
!172 = !{i64 2157514163}
!173 = !{i64 2157514530}
!174 = !{i64 2157514897}
!175 = !{i64 2157515264}
!176 = !{i64 2157515631}
!177 = !{i64 2157516000}
!178 = !{i64 2157516426}
!179 = !{i64 2157516852}
!180 = !{i64 2157517350}
!181 = !{i64 2157517717}
!182 = !{i64 2157511624}
!183 = !{i64 2157564376}
!184 = !{i64 2157536413}
!185 = !{i64 2157536751}
!186 = !{i64 2148809843, i64 2148809848, i64 2148809861, i64 2148809905, i64 2148809939, i64 2148809960}
!187 = !{i64 2157537227}
!188 = !{i64 2157537565}
!189 = !{!"auto-init"}
!190 = !{i64 2157519299}
!191 = !{i64 2157519769}
!192 = !{i64 2157518071}
!193 = !{i64 2157518547}
!194 = !{i64 2151794811}
