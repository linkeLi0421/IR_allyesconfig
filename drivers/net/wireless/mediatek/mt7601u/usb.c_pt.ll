; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt7601u/usb.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt7601u/usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.91 }
%struct.atomic_t = type { i32 }
%union.anon.91 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.mt7601u_dev = type { ptr, ptr, i32, %struct.mutex, [4 x i32], %struct.cfg80211_chan_def, ptr, %struct.mt7601u_mcu, %struct.delayed_work, %struct.delayed_work, ptr, %struct.delayed_work, ptr, [128 x ptr], %struct.spinlock, %struct.spinlock, ptr, [6 x i8], ptr, %struct.mutex, ptr, %struct.mutex, %struct.mutex, i32, i32, [8 x i8], [8 x i8], i16, i16, %struct.spinlock, %struct.tasklet_struct, ptr, %struct.sk_buff_head, %struct.atomic_t, %struct.spinlock, %struct.tasklet_struct, %struct.mt7601u_rx_queue, %struct.spinlock, [6 x i8], i8, i8, %struct.ewma_rssi, i8, %struct.mt7601u_freq_cal, i8, i8, i8, i16, i32, i32, i32, i32, i8, i8, i8, i8, [2 x i32], %struct.mac_stats }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.mt7601u_mcu = type { %struct.mutex, i8, %struct.mt7601u_dma_buf, %struct.completion }
%struct.mt7601u_dma_buf = type { ptr, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.129, i32 }
%union.anon.129 = type { ptr }
%struct.mt7601u_rx_queue = type { ptr, [16 x %struct.mt7601u_dma_buf_rx], i32, i32, i32, i32 }
%struct.mt7601u_dma_buf_rx = type { ptr, ptr }
%struct.ewma_rssi = type { i32 }
%struct.mt7601u_freq_cal = type { %struct.delayed_work, i8, i8, i8 }
%struct.mac_stats = type { [6 x i64], [6 x i64], [2 x i64], [32 x i64], [2 x i64] }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }

@mt7601u_usb_submit_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 77, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Error: submit URB dir:%d ep:%d failed:%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mt7601u_usb_submit_buf\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/wireless/mediatek/mt7601u/usb.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt7601u_usb_submit_buf._entry_ptr = internal global ptr @mt7601u_usb_submit_buf._entry, section ".printk_index", align 4
@mt7601u_vendor_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 114, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Vendor request req:%02x off:%04x failed:%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mt7601u_vendor_request\00", [41 x i8] zeroinitializer }, align 32
@mt7601u_vendor_request._entry_ptr = internal global ptr @mt7601u_vendor_request._entry, section ".printk_index", align 4
@mt7601u_wr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"write high off:%08x\00", [44 x i8] zeroinitializer }, align 32
@mt7601u_wr_copy.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unaligned write copy off:%08x\00", [34 x i8] zeroinitializer }, align 32
@mt7601u_wr_copy.__already_done.9 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"short write copy off:%08x\00", [38 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_firmware414 = internal constant [29 x i8] c"mt7601u.firmware=mt7601u.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_file415 = internal constant [59 x i8] c"mt7601u.file=drivers/net/wireless/mediatek/mt7601u/mt7601u\00", section ".modinfo", align 1
@__UNIQUE_ID_license416 = internal constant [20 x i8] c"mt7601u.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_mt7601u__417_381_mt7601u_driver_init6 = internal global ptr @mt7601u_driver_init, section ".initcall6.init", align 4
@mt7601u_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.17, ptr @mt7601u_probe, ptr @mt7601u_disconnect, ptr null, ptr @mt7601u_suspend, ptr @mt7601u_resume, ptr @mt7601u_resume, ptr null, ptr null, ptr @mt7601u_device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 48 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_mt7601u_driver_exit = internal global ptr @mt7601u_driver_exit, section ".exitcall.exit", align 4
@__tracepoint_mt_submit_urb = external dso_local global %struct.tracepoint, align 4
@.str.11 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/mediatek/mt7601u/trace.h\00", [50 x i8] zeroinitializer }, align 32
@trace_mt_submit_urb.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_mt_vend_req = external dso_local global %struct.tracepoint, align 4
@trace_mt_vend_req.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__mt7601u_rr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"read high off:%08x\00", [45 x i8] zeroinitializer }, align 32
@__mt7601u_rr._entry = internal constant %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 139, ptr @.str.3, ptr @.str.4 }, align 1
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Error: wrong size read:%d off:%08x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"__mt7601u_rr\00", [19 x i8] zeroinitializer }, align 32
@__mt7601u_rr._entry_ptr = internal global ptr @__mt7601u_rr._entry, section ".printk_index", align 4
@__tracepoint_reg_read = external dso_local global %struct.tracepoint, align 4
@trace_reg_read.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_reg_write = external dso_local global %struct.tracepoint, align 4
@trace_reg_write.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mt7601u\00", [24 x i8] zeroinitializer }, align 32
@mt7601u_device_table = internal constant { [18 x %struct.usb_device_id], [112 x i8] } { [18 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 2821, i16 6099, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3725, i16 30218, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3725, i16 30219, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 13361, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 13364, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5263, i16 30209, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5263, i16 30218, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5263, i16 30219, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5263, i16 30220, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5263, i16 30221, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 15620, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 10007, i16 16646, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 10581, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 10581, i16 4097, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 10581, i16 4099, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 10847, i16 4096, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 29586, i16 30480, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [112 x i8] zeroinitializer }, align 32
@mt7601u_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 298, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ASIC revision: %08x MAC revision: %08x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt7601u_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mt7601u_probe._entry_ptr = internal global ptr @mt7601u_probe._entry, section ".printk_index", align 4
@mt7601u_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.2, i32 306, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Warning: eFUSE not present\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mt7601u_probe._entry_ptr.24 = internal global ptr @mt7601u_probe._entry.21, section ".printk_index", align 4
@mt7601u_assign_pipes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 258, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error: wrong pipe number in:%d out:%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mt7601u_assign_pipes\00", [43 x i8] zeroinitializer }, align 32
@mt7601u_assign_pipes._entry_ptr = internal global ptr @mt7601u_assign_pipes._entry, section ".printk_index", align 4
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 76, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 113, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 183, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 216, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 217, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [15 x i8] c"mt7601u_driver\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 370, i32 26 }
@___asan_gen_.70 = private unnamed_addr constant [49 x i8] c"../drivers/net/wireless/mediatek/mt7601u/trace.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 56, i32 1 }
@___asan_gen_.73 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 108, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 131, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 138, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 381, i32 1 }
@___asan_gen_.87 = private unnamed_addr constant [21 x i8] c"mt7601u_device_table\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 14, i32 35 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 297, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 306, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private constant [47 x i8] c"../drivers/net/wireless/mediatek/mt7601u/usb.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 257, i32 3 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_file415, ptr @__UNIQUE_ID_firmware414, ptr @__UNIQUE_ID_license416, ptr @__exitcall_mt7601u_driver_exit, ptr @__initcall__kmod_mt7601u__417_381_mt7601u_driver_init6, ptr @__mt7601u_rr._entry, ptr @__mt7601u_rr._entry_ptr, ptr @mt7601u_assign_pipes._entry, ptr @mt7601u_assign_pipes._entry_ptr, ptr @mt7601u_driver_exit, ptr @mt7601u_probe._entry, ptr @mt7601u_probe._entry.21, ptr @mt7601u_probe._entry_ptr, ptr @mt7601u_probe._entry_ptr.24, ptr @mt7601u_usb_submit_buf._entry, ptr @mt7601u_usb_submit_buf._entry_ptr, ptr @mt7601u_vendor_request._entry, ptr @mt7601u_vendor_request._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @mt7601u_driver, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @mt7601u_device_table, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_usb_submit_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_vendor_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_device_table to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_assign_pipes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mt7601u_usb_alloc_buf(ptr nocapture noundef readonly %dev, i32 noundef %len, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %parent.i.i = getelementptr i8, ptr %1, i32 136
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -128
  %len1 = getelementptr inbounds %struct.mt7601u_dma_buf, ptr %buf, i32 0, i32 3
  %4 = ptrtoint ptr %len1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %len, ptr %len1, align 4
  %call2 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #7
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2, ptr %buf, align 4
  %6 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len1, align 4
  %dma = getelementptr inbounds %struct.mt7601u_dma_buf, ptr %buf, i32 0, i32 2
  %call4 = tail call ptr @usb_alloc_coherent(ptr noundef %add.ptr.i.i, i32 noundef %7, i32 noundef 3264, ptr noundef %dma) #7
  %buf5 = getelementptr inbounds %struct.mt7601u_dma_buf, ptr %buf, i32 0, i32 1
  %8 = ptrtoint ptr %buf5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call4, ptr %buf5, align 4
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buf, align 4
  %tobool.not = icmp eq ptr %10, null
  %tobool8.not = icmp eq ptr %call4, null
  %spec.select = select i1 %tobool.not, i1 true, i1 %tobool8.not
  ret i1 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7601u_usb_free_buf(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %parent.i.i = getelementptr i8, ptr %1, i32 136
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -128
  %len = getelementptr inbounds %struct.mt7601u_dma_buf, ptr %buf, i32 0, i32 3
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %buf1 = getelementptr inbounds %struct.mt7601u_dma_buf, ptr %buf, i32 0, i32 1
  %6 = ptrtoint ptr %buf1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf1, align 4
  %dma = getelementptr inbounds %struct.mt7601u_dma_buf, ptr %buf, i32 0, i32 2
  %8 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma, align 4
  tail call void @usb_free_coherent(ptr noundef %add.ptr.i.i, i32 noundef %5, ptr noundef %7, i32 noundef %9) #7
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buf, align 4
  tail call void @usb_free_urb(ptr noundef %11) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7601u_usb_submit_buf(ptr noundef %dev, i32 noundef %dir, i32 noundef %ep_idx, ptr nocapture noundef readonly %buf, i32 noundef %gfp, ptr noundef %complete_fn, ptr noundef %context) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %parent.i.i = getelementptr i8, ptr %1, i32 136
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %dir)
  %cmp = icmp eq i32 %dir, 128
  %arrayidx3 = getelementptr %struct.mt7601u_dev, ptr %dev, i32 0, i32 25, i32 %ep_idx
  %arrayidx = getelementptr %struct.mt7601u_dev, ptr %dev, i32 0, i32 26, i32 %ep_idx
  %arrayidx3.sink = select i1 %cmp, ptr %arrayidx, ptr %arrayidx3
  %.sink = select i1 %cmp, i32 -1073741696, i32 -1073741824
  %4 = ptrtoint ptr %arrayidx3.sink to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3.sink, align 1
  %conv4 = zext i8 %5 to i32
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i35 = shl i32 %7, 8
  %shl1.i36 = shl nuw nsw i32 %conv4, 15
  %or.i37 = or i32 %shl1.i36, %shl.i35
  %or6 = or i32 %or.i37, %.sink
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf, align 4
  %buf7 = getelementptr inbounds %struct.mt7601u_dma_buf, ptr %buf, i32 0, i32 1
  %10 = ptrtoint ptr %buf7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buf7, align 4
  %len = getelementptr inbounds %struct.mt7601u_dma_buf, ptr %buf, i32 0, i32 3
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 8
  %14 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr.i.i, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 10
  %15 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or6, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 14
  %16 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %11, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 19
  %17 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %13, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 28
  %18 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %complete_fn, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 27
  %19 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %context, ptr %context4.i, align 4
  %dma = getelementptr inbounds %struct.mt7601u_dma_buf, ptr %buf, i32 0, i32 2
  %20 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma, align 4
  %22 = load ptr, ptr %buf, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %22, i32 0, i32 15
  %23 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %21, ptr %transfer_dma, align 4
  %24 = load ptr, ptr %buf, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %24, i32 0, i32 13
  %25 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %transfer_flags, align 4
  %or10 = or i32 %26, 4
  store i32 %or10, ptr %transfer_flags, align 4
  %27 = load ptr, ptr %buf, align 4
  tail call fastcc void @trace_mt_submit_urb(ptr noundef %dev, ptr noundef %27)
  %28 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buf, align 4
  %call13 = tail call i32 @usb_submit_urb(ptr noundef %29, i32 noundef %gfp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %do.end

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str, i32 noundef %dir, i32 noundef %ep_idx, i32 noundef %call13) #10
  br label %if.end16

if.end16:                                         ; preds = %do.end, %entry.if.end16_crit_edge
  ret i32 %call13
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mt_submit_urb(ptr noundef %dev, ptr noundef %u) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mt_submit_urb, i32 0, i32 1), ptr blockaddress(@trace_mt_submit_urb, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !86

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !76) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !87

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !76) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !88
  %call42 = tail call i32 @__traceiter_mt_submit_urb(ptr noundef null, ptr noundef %dev, ptr noundef %u) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !89
  %13 = tail call i32 @llvm.read_register.i32(metadata !76) #7
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !76) #7
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !87

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !76) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !90
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mt_submit_urb, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mt_submit_urb, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mt_submit_urb.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_mt_submit_urb.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 69, ptr noundef nonnull @.str.12) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !91
  %31 = tail call i32 @llvm.read_register.i32(metadata !76) #7
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7601u_complete_urb(ptr nocapture noundef readonly %urb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  tail call void @complete(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7601u_vendor_request(ptr noundef %dev, i8 noundef zeroext %req, i8 noundef zeroext %direction, i16 noundef zeroext %val, i16 noundef zeroext %offset, ptr noundef %buf, i32 noundef %buflen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %parent.i.i = getelementptr i8, ptr %1, i32 136
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -128
  %or = or i8 %direction, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %direction)
  %cmp = icmp eq i8 %direction, -128
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i = shl i32 %5, 8
  %. = select i1 %cmp, i32 -2147483520, i32 -2147483648
  %or9 = or i32 %shl.i, %.
  %conv12 = trunc i32 %buflen to i16
  br label %for.body

for.body:                                         ; preds = %if.end21.for.body_crit_edge, %entry
  %i.057 = phi i32 [ 0, %entry ], [ %inc, %if.end21.for.body_crit_edge ]
  %call13 = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i.i, i32 noundef %or9, i8 noundef zeroext %req, i8 noundef zeroext %or, i16 noundef zeroext %val, i16 noundef zeroext %offset, ptr noundef %buf, i16 noundef zeroext %conv12, i32 noundef 300) #7
  tail call fastcc void @trace_mt_vend_req(ptr noundef %dev, i32 noundef %or9, i8 noundef zeroext %req, i8 noundef zeroext %or, i16 noundef zeroext %val, i16 noundef zeroext %offset, ptr noundef %buf, i32 noundef %buflen, i32 noundef %call13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call13)
  %cmp14 = icmp eq i32 %call13, -19
  br i1 %cmp14, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %state = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state) #7
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call13)
  %cmp16 = icmp sgt i32 %call13, -1
  br i1 %cmp16, label %if.end.cleanup_crit_edge, label %if.end21

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %if.end
  tail call void @msleep(i32 noundef 5) #7
  %inc = add nuw nsw i32 %i.057, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %do.end, label %if.end21.for.body_crit_edge

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end:                                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %conv23 = zext i8 %req to i32
  %conv24 = zext i16 %offset to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.5, i32 noundef %conv23, i32 noundef %conv24, i32 noundef %call13) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %if.end.thread
  ret i32 %call13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mt_vend_req(ptr noundef %dev, i32 noundef %pipe, i8 noundef zeroext %req, i8 noundef zeroext %req_type, i16 noundef zeroext %val, i16 noundef zeroext %offset, ptr noundef %buf, i32 noundef %buflen, i32 noundef %ret) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mt_vend_req, i32 0, i32 1), ptr blockaddress(@trace_mt_vend_req, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !86

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !76) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !87

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !76) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !92
  %call42 = tail call i32 @__traceiter_mt_vend_req(ptr noundef null, ptr noundef %dev, i32 noundef %pipe, i8 noundef zeroext %req, i8 noundef zeroext %req_type, i16 noundef zeroext %val, i16 noundef zeroext %offset, ptr noundef %buf, i32 noundef %buflen, i32 noundef %ret) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !93
  %13 = tail call i32 @llvm.read_register.i32(metadata !76) #7
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !76) #7
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !87

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !76) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !90
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mt_vend_req, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mt_vend_req, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mt_vend_req.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_mt_vend_req.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 124, ptr noundef nonnull @.str.12) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !91
  %31 = tail call i32 @llvm.read_register.i32(metadata !76) #7
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7601u_vendor_reset(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mt7601u_vendor_request(ptr noundef %dev, i8 noundef zeroext 1, i8 noundef zeroext 0, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7601u_rr(ptr noundef %dev, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vendor_req_mutex = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %vendor_req_mutex, i32 noundef 0) #7
  %call = tail call fastcc i32 @__mt7601u_rr(ptr noundef %dev, i32 noundef %offset)
  tail call void @mutex_unlock(ptr noundef %vendor_req_mutex) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__mt7601u_rr(ptr noundef %dev, i32 noundef %offset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %offset)
  %cmp = icmp ugt i32 %offset, 65535
  br i1 %cmp, label %land.rhs, label %entry.if.end27_crit_edge

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

land.rhs:                                         ; preds = %entry
  %.b62 = load i1, ptr @__mt7601u_rr.__already_done, align 1
  br i1 %.b62, label %land.rhs.if.end27_crit_edge, label %if.then, !prof !87

land.rhs.if.end27_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__mt7601u_rr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 131, i32 noundef 9, ptr noundef nonnull @.str.14, i32 noundef %offset) #7
  br label %if.end27

if.end27:                                         ; preds = %if.then, %land.rhs.if.end27_crit_edge, %entry.if.end27_crit_edge
  %conv = trunc i32 %offset to i16
  %vend_buf = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %vend_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vend_buf, align 8
  %call = tail call i32 @mt7601u_vendor_request(ptr noundef %dev, i8 noundef zeroext 7, i8 noundef zeroext -128, i16 noundef zeroext 0, i16 noundef zeroext %conv, ptr noundef %1, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call)
  %cmp35 = icmp eq i32 %call, 4
  br i1 %cmp35, label %if.then37, label %if.else

if.then37:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %vend_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vend_buf, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %3, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #7
  br label %if.end48

if.else:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp40 = icmp sgt i32 %call, 0
  br i1 %cmp40, label %do.end45, label %if.else.if.end48_crit_edge

if.else.if.end48_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

do.end45:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %dev46 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %7 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev46, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.15, i32 noundef %call, i32 noundef %offset) #10
  br label %if.end48

if.end48:                                         ; preds = %do.end45, %if.else.if.end48_crit_edge, %if.then37
  %val.0 = phi i32 [ %6, %if.then37 ], [ -1, %do.end45 ], [ -1, %if.else.if.end48_crit_edge ]
  tail call fastcc void @trace_reg_read(ptr noundef %dev, i32 noundef %offset, i32 noundef %val.0)
  ret i32 %val.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7601u_vendor_single_wr(ptr noundef %dev, i8 noundef zeroext %req, i16 noundef zeroext %offset, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vendor_req_mutex = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %vendor_req_mutex, i32 noundef 0) #7
  %conv.i = trunc i32 %val to i16
  %call.i = tail call i32 @mt7601u_vendor_request(ptr noundef %dev, i8 noundef zeroext %req, i8 noundef zeroext 0, i16 noundef zeroext %conv.i, i16 noundef zeroext %offset, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.__mt7601u_vendor_single_wr.exit_crit_edge

entry.__mt7601u_vendor_single_wr.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__mt7601u_vendor_single_wr.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i = lshr i32 %val, 16
  %conv1.i = trunc i32 %shr.i to i16
  %add.i = add i16 %offset, 2
  %call4.i = tail call i32 @mt7601u_vendor_request(ptr noundef %dev, i8 noundef zeroext %req, i8 noundef zeroext 0, i16 noundef zeroext %conv1.i, i16 noundef zeroext %add.i, ptr noundef null, i32 noundef 0) #7
  br label %__mt7601u_vendor_single_wr.exit

__mt7601u_vendor_single_wr.exit:                  ; preds = %if.then.i, %entry.__mt7601u_vendor_single_wr.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %entry.__mt7601u_vendor_single_wr.exit_crit_edge ], [ %call4.i, %if.then.i ]
  %conv5.i = zext i16 %offset to i32
  tail call fastcc void @trace_reg_write(ptr noundef %dev, i32 noundef %conv5.i, i32 noundef %val) #7
  tail call void @mutex_unlock(ptr noundef %vendor_req_mutex) #7
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7601u_wr(ptr noundef %dev, i32 noundef %offset, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %offset)
  %cmp = icmp ugt i32 %offset, 65535
  br i1 %cmp, label %land.rhs, label %entry.if.end27_crit_edge

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

land.rhs:                                         ; preds = %entry
  %.b39 = load i1, ptr @mt7601u_wr.__already_done, align 1
  br i1 %.b39, label %land.rhs.if.end27_crit_edge, label %if.then, !prof !87

land.rhs.if.end27_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mt7601u_wr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 183, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %offset) #7
  br label %if.end27

if.end27:                                         ; preds = %if.then, %land.rhs.if.end27_crit_edge, %entry.if.end27_crit_edge
  %conv = trunc i32 %offset to i16
  %call = tail call i32 @mt7601u_vendor_single_wr(ptr noundef %dev, i8 noundef zeroext 2, i16 noundef zeroext %conv, i32 noundef %val)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7601u_rmw(ptr noundef %dev, i32 noundef %offset, i32 noundef %mask, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vendor_req_mutex = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %vendor_req_mutex, i32 noundef 0) #7
  %call = tail call fastcc i32 @__mt7601u_rr(ptr noundef %dev, i32 noundef %offset)
  %neg = xor i32 %mask, -1
  %and = and i32 %call, %neg
  %or = or i32 %and, %val
  %conv = trunc i32 %offset to i16
  %conv.i = trunc i32 %or to i16
  %call.i = tail call i32 @mt7601u_vendor_request(ptr noundef %dev, i8 noundef zeroext 2, i8 noundef zeroext 0, i16 noundef zeroext %conv.i, i16 noundef zeroext %conv, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.__mt7601u_vendor_single_wr.exit_crit_edge

entry.__mt7601u_vendor_single_wr.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__mt7601u_vendor_single_wr.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i = lshr i32 %or, 16
  %conv1.i = trunc i32 %shr.i to i16
  %add.i = add i16 %conv, 2
  %call4.i = tail call i32 @mt7601u_vendor_request(ptr noundef %dev, i8 noundef zeroext 2, i8 noundef zeroext 0, i16 noundef zeroext %conv1.i, i16 noundef zeroext %add.i, ptr noundef null, i32 noundef 0) #7
  br label %__mt7601u_vendor_single_wr.exit

__mt7601u_vendor_single_wr.exit:                  ; preds = %if.then.i, %entry.__mt7601u_vendor_single_wr.exit_crit_edge
  %conv5.i = and i32 %offset, 65535
  tail call fastcc void @trace_reg_write(ptr noundef %dev, i32 noundef %conv5.i, i32 noundef %or) #7
  tail call void @mutex_unlock(ptr noundef %vendor_req_mutex) #7
  ret i32 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7601u_rmc(ptr noundef %dev, i32 noundef %offset, i32 noundef %mask, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vendor_req_mutex = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %vendor_req_mutex, i32 noundef 0) #7
  %call = tail call fastcc i32 @__mt7601u_rr(ptr noundef %dev, i32 noundef %offset)
  %neg = xor i32 %mask, -1
  %and = and i32 %call, %neg
  %or = or i32 %and, %val
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %or)
  %cmp.not = icmp eq i32 %call, %or
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %conv = trunc i32 %offset to i16
  %conv.i = trunc i32 %or to i16
  %call.i = tail call i32 @mt7601u_vendor_request(ptr noundef %dev, i8 noundef zeroext 2, i8 noundef zeroext 0, i16 noundef zeroext %conv.i, i16 noundef zeroext %conv, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.__mt7601u_vendor_single_wr.exit_crit_edge

if.then.__mt7601u_vendor_single_wr.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %__mt7601u_vendor_single_wr.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i = lshr i32 %or, 16
  %conv1.i = trunc i32 %shr.i to i16
  %add.i = add i16 %conv, 2
  %call4.i = tail call i32 @mt7601u_vendor_request(ptr noundef %dev, i8 noundef zeroext 2, i8 noundef zeroext 0, i16 noundef zeroext %conv1.i, i16 noundef zeroext %add.i, ptr noundef null, i32 noundef 0) #7
  br label %__mt7601u_vendor_single_wr.exit

__mt7601u_vendor_single_wr.exit:                  ; preds = %if.then.i, %if.then.__mt7601u_vendor_single_wr.exit_crit_edge
  %conv5.i = and i32 %offset, 65535
  tail call fastcc void @trace_reg_write(ptr noundef %dev, i32 noundef %conv5.i, i32 noundef %or) #7
  br label %if.end

if.end:                                           ; preds = %__mt7601u_vendor_single_wr.exit, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %vendor_req_mutex) #7
  ret i32 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7601u_wr_copy(ptr noundef %dev, i32 noundef %offset, ptr noundef %data, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %offset, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end28_crit_edge, label %land.rhs

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

land.rhs:                                         ; preds = %entry
  %.b101 = load i1, ptr @mt7601u_wr_copy.__already_done, align 1
  br i1 %.b101, label %land.rhs.if.end28_crit_edge, label %if.then, !prof !87

land.rhs.if.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mt7601u_wr_copy.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 216, i32 noundef 9, ptr noundef nonnull @.str.8, i32 noundef %offset) #7
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs.if.end28_crit_edge, %entry.if.end28_crit_edge
  %and37 = and i32 %len, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end28.if.end83_crit_edge, label %land.rhs45

if.end28.if.end83_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

land.rhs45:                                       ; preds = %if.end28
  %.b99100 = load i1, ptr @mt7601u_wr_copy.__already_done.9, align 1
  br i1 %.b99100, label %land.rhs45.if.end83_crit_edge, label %if.then56, !prof !87

land.rhs45.if.end83_crit_edge:                    ; preds = %land.rhs45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

if.then56:                                        ; preds = %land.rhs45
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mt7601u_wr_copy.__already_done.9, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 217, i32 noundef 9, ptr noundef nonnull @.str.10, i32 noundef %offset) #7
  br label %if.end83

if.end83:                                         ; preds = %if.then56, %land.rhs45.if.end83_crit_edge, %if.end28.if.end83_crit_edge
  %div = sdiv i32 %len, 4
  %call = tail call i32 @mt7601u_burst_write_regs(ptr noundef %dev, i32 noundef %offset, ptr noundef %data, i32 noundef %div) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7601u_burst_write_regs(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7601u_addr_wr(ptr noundef %dev, i32 noundef %offset, ptr nocapture noundef readonly %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %addr, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %offset)
  %cmp.i = icmp ugt i32 %offset, 65535
  br i1 %cmp.i, label %land.rhs.i, label %entry.mt7601u_wr.exit_crit_edge

entry.mt7601u_wr.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7601u_wr.exit

land.rhs.i:                                       ; preds = %entry
  %.b39.i = load i1, ptr @mt7601u_wr.__already_done, align 1
  br i1 %.b39.i, label %land.rhs.i.mt7601u_wr.exit_crit_edge, label %if.then.i, !prof !87

land.rhs.i.mt7601u_wr.exit_crit_edge:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7601u_wr.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mt7601u_wr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 183, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %offset) #7
  br label %mt7601u_wr.exit

mt7601u_wr.exit:                                  ; preds = %if.then.i, %land.rhs.i.mt7601u_wr.exit_crit_edge, %entry.mt7601u_wr.exit_crit_edge
  %conv.i = trunc i32 %offset to i16
  %call.i = tail call i32 @mt7601u_vendor_single_wr(ptr noundef %dev, i8 noundef zeroext 2, i16 noundef zeroext %conv.i, i32 noundef %2) #7
  %add = add i32 %offset, 4
  %arrayidx = getelementptr i8, ptr %addr, i32 4
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %arrayidx1 = getelementptr i8, ptr %addr, i32 5
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add)
  %cmp.i7 = icmp ugt i32 %add, 65535
  br i1 %cmp.i7, label %land.rhs.i9, label %mt7601u_wr.exit.mt7601u_wr.exit13_crit_edge

mt7601u_wr.exit.mt7601u_wr.exit13_crit_edge:      ; preds = %mt7601u_wr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7601u_wr.exit13

land.rhs.i9:                                      ; preds = %mt7601u_wr.exit
  %.b39.i8 = load i1, ptr @mt7601u_wr.__already_done, align 1
  br i1 %.b39.i8, label %land.rhs.i9.mt7601u_wr.exit13_crit_edge, label %if.then.i10, !prof !87

land.rhs.i9.mt7601u_wr.exit13_crit_edge:          ; preds = %land.rhs.i9
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7601u_wr.exit13

if.then.i10:                                      ; preds = %land.rhs.i9
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mt7601u_wr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 183, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %add) #7
  br label %mt7601u_wr.exit13

mt7601u_wr.exit13:                                ; preds = %if.then.i10, %land.rhs.i9.mt7601u_wr.exit13_crit_edge, %mt7601u_wr.exit.mt7601u_wr.exit13_crit_edge
  %conv2 = zext i8 %6 to i32
  %shl = shl nuw nsw i32 %conv2, 8
  %conv = zext i8 %4 to i32
  %or = or i32 %shl, %conv
  %conv.i11 = trunc i32 %add to i16
  %call.i12 = tail call i32 @mt7601u_vendor_single_wr(ptr noundef %dev, i8 noundef zeroext 2, i16 noundef zeroext %conv.i11, i32 noundef %or) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7601u_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @mt7601u_driver, ptr noundef null, ptr noundef nonnull @.str.17) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt7601u_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_deregister(ptr noundef nonnull @mt7601u_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mt_submit_urb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mt_vend_req(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_reg_read(ptr noundef %dev, i32 noundef %reg, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_reg_read, i32 0, i32 1), ptr blockaddress(@trace_reg_read, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !86

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !76) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !87

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !76) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !94
  %call42 = tail call i32 @__traceiter_reg_read(ptr noundef null, ptr noundef %dev, i32 noundef %reg, i32 noundef %val) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !95
  %13 = tail call i32 @llvm.read_register.i32(metadata !76) #7
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !76) #7
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !87

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !76) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !90
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_reg_read, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_reg_read, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_reg_read.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_reg_read.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 49, ptr noundef nonnull @.str.12) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !91
  %31 = tail call i32 @llvm.read_register.i32(metadata !76) #7
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_reg_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_reg_write(ptr noundef %dev, i32 noundef %reg, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_reg_write, i32 0, i32 1), ptr blockaddress(@trace_reg_write, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !86

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !76) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !87

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !76) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !96
  %call42 = tail call i32 @__traceiter_reg_write(ptr noundef null, ptr noundef %dev, i32 noundef %reg, i32 noundef %val) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !97
  %13 = tail call i32 @llvm.read_register.i32(metadata !76) #7
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !76) #7
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !87

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !76) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !90
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_reg_write, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_reg_write, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_reg_write.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_reg_write.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 54, ptr noundef nonnull @.str.12) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !91
  %31 = tail call i32 @llvm.read_register.i32(metadata !76) #7
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_reg_write(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7601u_probe(ptr noundef %usb_intf, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %usb_intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %usb_intf, i32 0, i32 7
  %call2 = tail call ptr @mt7601u_alloc_device(ptr noundef %dev1) #7
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %call3 = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i) #7
  %call4 = tail call i32 @usb_reset_device(ptr noundef %call3) #7
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %usb_intf, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %driver_data.i.i, align 4
  %dev5 = getelementptr inbounds %struct.mt7601u_dev, ptr %call2, i32 0, i32 1
  %3 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev5, align 4
  %call6 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 4, i32 noundef 3264) #7
  %vend_buf = getelementptr inbounds %struct.mt7601u_dev, ptr %call2, i32 0, i32 20
  %5 = ptrtoint ptr %vend_buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call6, ptr %vend_buf, align 8
  %tobool8.not = icmp eq ptr %call6, null
  br i1 %tobool8.not, label %if.end.err_crit_edge, label %if.end10

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end10:                                         ; preds = %if.end
  %cur_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %usb_intf, i32 0, i32 1
  %6 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_altsetting.i, align 4
  %bNumEndpoints.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %bNumEndpoints.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bNumEndpoints.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp83.not.i = icmp eq i8 %9, 0
  br i1 %cmp83.not.i, label %if.end10.mt7601u_assign_pipes.exit_crit_edge, label %for.body.lr.ph.i

if.end10.mt7601u_assign_pipes.exit_crit_edge:     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7601u_assign_pipes.exit

for.body.lr.ph.i:                                 ; preds = %if.end10
  %endpoint.i = getelementptr inbounds %struct.usb_host_interface, ptr %7, i32 0, i32 3
  %in_max_packet.i = getelementptr inbounds %struct.mt7601u_dev, ptr %call2, i32 0, i32 28
  %out_max_packet.i = getelementptr inbounds %struct.mt7601u_dev, ptr %call2, i32 0, i32 27
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ep_o.086.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %ep_o.1.i, %for.inc.i.for.body.i_crit_edge ]
  %ep_i.085.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %ep_i.2.i, %for.inc.i.for.body.i_crit_edge ]
  %i.084.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc32.i, %for.inc.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %endpoint.i, align 4
  %arrayidx.i = getelementptr %struct.usb_host_endpoint, ptr %11, i32 %i.084.i
  %bmAttributes.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i, i32 0, i32 3
  %12 = ptrtoint ptr %bmAttributes.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bmAttributes.i.i.i, align 1
  %14 = and i8 %13, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %cmp.i.not.i.i = icmp eq i8 %14, 2
  br i1 %cmp.i.not.i.i, label %usb_endpoint_is_bulk_in.exit.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

usb_endpoint_is_bulk_in.exit.i:                   ; preds = %for.body.i
  %bEndpointAddress.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i, i32 0, i32 2
  %15 = ptrtoint ptr %bEndpointAddress.i.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bEndpointAddress.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %tobool.not.i = icmp sgt i8 %16, -1
  br i1 %tobool.not.i, label %land.lhs.true20.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %usb_endpoint_is_bulk_in.exit.i
  %inc.i = add i32 %ep_i.085.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ep_i.085.i)
  %cmp6.i = icmp ult i32 %ep_i.085.i, 2
  br i1 %cmp6.i, label %if.then.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = and i8 %16, 15
  %arrayidx10.i = getelementptr %struct.mt7601u_dev, ptr %call2, i32 0, i32 26, i32 %ep_i.085.i
  %18 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %arrayidx10.i, align 1
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i, i32 0, i32 4
  %19 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %21 = and i16 %20, -249
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #7
  %23 = ptrtoint ptr %in_max_packet.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %in_max_packet.i, align 2
  %24 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx10.i, align 1
  %26 = or i8 %25, -128
  store i8 %26, ptr %arrayidx10.i, align 1
  br label %for.inc.i

land.lhs.true20.i:                                ; preds = %usb_endpoint_is_bulk_in.exit.i
  %inc21.i = add i32 %ep_o.086.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %ep_o.086.i)
  %cmp22.i = icmp ult i32 %ep_o.086.i, 6
  br i1 %cmp22.i, label %if.then24.i, label %land.lhs.true20.i.for.inc.i_crit_edge

land.lhs.true20.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then24.i:                                      ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = and i8 %16, 15
  %arrayidx28.i = getelementptr %struct.mt7601u_dev, ptr %call2, i32 0, i32 25, i32 %ep_o.086.i
  %28 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %arrayidx28.i, align 1
  %wMaxPacketSize.i74.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i, i32 0, i32 4
  %29 = ptrtoint ptr %wMaxPacketSize.i74.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %wMaxPacketSize.i74.i, align 1
  %31 = and i16 %30, -249
  %32 = tail call i16 @llvm.bswap.i16(i16 %31) #7
  %33 = ptrtoint ptr %out_max_packet.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %out_max_packet.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then24.i, %land.lhs.true20.i.for.inc.i_crit_edge, %if.then.i, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %ep_i.2.i = phi i32 [ %inc.i, %if.then.i ], [ %ep_i.085.i, %if.then24.i ], [ %ep_i.085.i, %land.lhs.true20.i.for.inc.i_crit_edge ], [ %ep_i.085.i, %for.body.i.for.inc.i_crit_edge ], [ %inc.i, %land.lhs.true.i.for.inc.i_crit_edge ]
  %ep_o.1.i = phi i32 [ %ep_o.086.i, %if.then.i ], [ %inc21.i, %if.then24.i ], [ %inc21.i, %land.lhs.true20.i.for.inc.i_crit_edge ], [ %ep_o.086.i, %for.body.i.for.inc.i_crit_edge ], [ %ep_o.086.i, %land.lhs.true.i.for.inc.i_crit_edge ]
  %inc32.i = add nuw nsw i32 %i.084.i, 1
  %34 = ptrtoint ptr %bNumEndpoints.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bNumEndpoints.i, align 4
  %conv.i = zext i8 %35 to i32
  %cmp.i = icmp ult i32 %inc32.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ep_i.2.i)
  %cmp33.not.i = icmp eq i32 %ep_i.2.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %ep_o.1.i)
  %cmp35.not.i = icmp eq i32 %ep_o.1.i, 6
  %or.cond.i = select i1 %cmp33.not.i, i1 %cmp35.not.i, i1 false
  br i1 %or.cond.i, label %if.end14, label %for.end.i.mt7601u_assign_pipes.exit_crit_edge

for.end.i.mt7601u_assign_pipes.exit_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7601u_assign_pipes.exit

mt7601u_assign_pipes.exit:                        ; preds = %for.end.i.mt7601u_assign_pipes.exit_crit_edge, %if.end10.mt7601u_assign_pipes.exit_crit_edge
  %ep_o.0.lcssa96.i = phi i32 [ %ep_o.1.i, %for.end.i.mt7601u_assign_pipes.exit_crit_edge ], [ 0, %if.end10.mt7601u_assign_pipes.exit_crit_edge ]
  %ep_i.0.lcssa95.i = phi i32 [ %ep_i.2.i, %for.end.i.mt7601u_assign_pipes.exit_crit_edge ], [ 0, %if.end10.mt7601u_assign_pipes.exit_crit_edge ]
  %36 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.25, i32 noundef %ep_i.0.lcssa95.i, i32 noundef %ep_o.0.lcssa96.i) #10
  br label %err

if.end14:                                         ; preds = %for.end.i
  %call15 = tail call i32 @mt7601u_wait_asic_ready(ptr noundef nonnull %call2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.err_crit_edge

if.end14.err_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end18:                                         ; preds = %if.end14
  %call19 = tail call i32 @mt7601u_rr(ptr noundef nonnull %call2, i32 noundef 0)
  %call20 = tail call i32 @mt7601u_rr(ptr noundef nonnull %call2, i32 noundef 4096)
  %38 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %39, ptr noundef nonnull @.str.18, i32 noundef %call19, i32 noundef %call20) #10
  %shr.mask = and i32 %call19, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1979777024, i32 %shr.mask)
  %cmp.not = icmp eq i32 %shr.mask, 1979777024
  br i1 %cmp.not, label %if.end23, label %if.end18.err_crit_edge

if.end18.err_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end23:                                         ; preds = %if.end18
  %call24 = tail call i32 @mt7601u_rr(ptr noundef nonnull %call2, i32 noundef 36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call24)
  %tobool25.not = icmp sgt i32 %call24, -1
  br i1 %tobool25.not, label %do.end29, label %if.end23.if.end31_crit_edge

if.end23.if.end31_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

do.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %41, ptr noundef nonnull @.str.22) #10
  br label %if.end31

if.end31:                                         ; preds = %do.end29, %if.end23.if.end31_crit_edge
  %call32 = tail call i32 @mt7601u_init_hardware(ptr noundef nonnull %call2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.err_crit_edge

if.end31.err_crit_edge:                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end35:                                         ; preds = %if.end31
  %call36 = tail call i32 @mt7601u_register_device(ptr noundef nonnull %call2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %err_hw

if.end39:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %state = getelementptr inbounds %struct.mt7601u_dev, ptr %call2, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state) #7
  br label %cleanup

err_hw:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mt7601u_cleanup(ptr noundef nonnull %call2) #7
  br label %err

err:                                              ; preds = %err_hw, %if.end31.err_crit_edge, %if.end18.err_crit_edge, %if.end14.err_crit_edge, %mt7601u_assign_pipes.exit, %if.end.err_crit_edge
  %ret.0 = phi i32 [ -22, %mt7601u_assign_pipes.exit ], [ %call15, %if.end14.err_crit_edge ], [ %call32, %if.end31.err_crit_edge ], [ %call36, %err_hw ], [ -12, %if.end.err_crit_edge ], [ -19, %if.end18.err_crit_edge ]
  %42 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %driver_data.i.i, align 4
  %43 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %parent.i, align 8
  %add.ptr.i75 = getelementptr i8, ptr %44, i32 -128
  tail call void @usb_put_dev(ptr noundef %add.ptr.i75) #7
  %stat_wq = getelementptr inbounds %struct.mt7601u_dev, ptr %call2, i32 0, i32 10
  %45 = ptrtoint ptr %stat_wq to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %stat_wq, align 8
  tail call void @destroy_workqueue(ptr noundef %46) #7
  %47 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call2, align 8
  tail call void @ieee80211_free_hw(ptr noundef %48) #7
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end39, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %if.end39 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7601u_disconnect(ptr nocapture noundef %usb_intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %usb_intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void @ieee80211_unregister_hw(ptr noundef %3) #7
  tail call void @mt7601u_cleanup(ptr noundef %1) #7
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i.i, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %usb_intf, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 -128
  tail call void @usb_put_dev(ptr noundef %add.ptr.i) #7
  %stat_wq = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %stat_wq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stat_wq, align 8
  tail call void @destroy_workqueue(ptr noundef %8) #7
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  tail call void @ieee80211_free_hw(ptr noundef %10) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7601u_suspend(ptr nocapture noundef readonly %usb_intf, [1 x i32] %state.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %usb_intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mt7601u_cleanup(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7601u_resume(ptr nocapture noundef readonly %usb_intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %usb_intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @mt7601u_init_hardware(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %state = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mt7601u_alloc_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7601u_wait_asic_ready(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7601u_init_hardware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7601u_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7601u_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_unregister_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !18, !19, !21, !22, !24, !26, !27, !29, !30, !32, !33, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !48, !49, !51, !52, !54, !55, !56, !58, !60, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !74}
!llvm.named.register.sp = !{!76}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt7601u/usb.c", i32 76, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mt7601u_usb_submit_buf._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mt7601u_usb_submit_buf._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/mediatek/mt7601u/usb.c", i32 113, i32 2}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mt7601u_vendor_request._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @mt7601u_vendor_request._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/mediatek/mt7601u/usb.c", i32 183, i32 2}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/mediatek/mt7601u/usb.c", i32 216, i32 2}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/mediatek/mt7601u/usb.c", i32 217, i32 2}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_firmware414, !23, !"__UNIQUE_ID_firmware414", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/mediatek/mt7601u/usb.c", i32 367, i32 1}
!24 = !{ptr @__UNIQUE_ID_file415, !25, !"__UNIQUE_ID_file415", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/mediatek/mt7601u/usb.c", i32 368, i32 1}
!26 = !{ptr @__UNIQUE_ID_license416, !25, !"__UNIQUE_ID_license416", i1 false, i1 false}
!27 = !{ptr @__initcall__kmod_mt7601u__417_381_mt7601u_driver_init6, !28, !"__initcall__kmod_mt7601u__417_381_mt7601u_driver_init6", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/mediatek/mt7601u/usb.c", i32 381, i32 1}
!29 = !{ptr @__exitcall_mt7601u_driver_exit, !28, !"__exitcall_mt7601u_driver_exit", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/mediatek/mt7601u/trace.h", i32 56, i32 1}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!34 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!37 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/mediatek/mt7601u/trace.h", i32 98, i32 1}
!40 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/mediatek/mt7601u/usb.c", i32 131, i32 2}
!43 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/mediatek/mt7601u/usb.c", i32 138, i32 3}
!46 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @__mt7601u_rr._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @__mt7601u_rr._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/mediatek/mt7601u/trace.h", i32 46, i32 1}
!51 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/mediatek/mt7601u/trace.h", i32 51, i32 1}
!54 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!55 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @mt7601u_driver, !57, !"mt7601u_driver", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/mediatek/mt7601u/usb.c", i32 370, i32 26}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/mediatek/mt7601u/usb.c", i32 297, i32 2}
!60 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @mt7601u_probe._entry, !59, !"_entry", i1 false, i1 false}
!63 = !{ptr @mt7601u_probe._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/mediatek/mt7601u/usb.c", i32 306, i32 3}
!66 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @mt7601u_probe._entry.21, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @mt7601u_probe._entry_ptr.24, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/mediatek/mt7601u/usb.c", i32 257, i32 3}
!71 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @mt7601u_assign_pipes._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @mt7601u_assign_pipes._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @mt7601u_device_table, !75, !"mt7601u_device_table", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/mediatek/mt7601u/usb.c", i32 14, i32 35}
!76 = !{!"sp"}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{i64 2148699447, i64 2148699452, i64 2148699465, i64 2148699509, i64 2148699543, i64 2148699564}
!87 = !{!"branch_weights", i32 2000, i32 1}
!88 = !{i64 2157738509}
!89 = !{i64 2157738710}
!90 = !{i64 2149372660}
!91 = !{i64 2149373696}
!92 = !{i64 2157777370}
!93 = !{i64 2157777665}
!94 = !{i64 2157706506}
!95 = !{i64 2157706711}
!96 = !{i64 2157722457}
!97 = !{i64 2157722664}
