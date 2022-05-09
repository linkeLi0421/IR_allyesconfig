; ModuleID = '/llk/IR_all_yes/sound/usb/endpoint.c_pt.bc'
source_filename = "../sound/usb/endpoint.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_usb_endpoint = type { ptr, ptr, i32, %struct.atomic_t, i32, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, [12 x %struct.snd_urb_ctx], [12 x %struct.snd_usb_packet_info], i32, i32, %struct.list_head, i32, i32, i32, %struct.atomic_t, ptr, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32, i32, i8, i8, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i8, %struct.spinlock, %struct.list_head }
%struct.snd_urb_ctx = type { ptr, i32, ptr, ptr, i32, i32, i32, [48 x i32], %struct.list_head }
%struct.snd_usb_packet_info = type { [48 x i32], i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.snd_usb_substream = type { ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i8, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i64, i32, %struct.list_head, %struct.spinlock, i32, %struct.anon.68, i8, i8, ptr }
%struct.anon.68 = type { i32, i32, i32 }
%struct.snd_usb_audio = type { i32, ptr, ptr, [16 x ptr], i32, i16, %struct.mutex, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i8, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.list_head, %struct.list_head, i32, i8, i8, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.audioformat = type { %struct.list_head, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, ptr, i8, ptr, i8, i8, i8 }
%struct.snd_usb_iface_ref = type { i8, i8, i32, %struct.list_head }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@snd_usb_queue_pending_output_urbs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 497, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unable to submit urb #%d: %d at %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"snd_usb_queue_pending_output_urbs\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sound/usb/endpoint.c\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_usb_queue_pending_output_urbs._entry_ptr = internal global ptr @snd_usb_queue_pending_output_urbs._entry, section ".printk_index", align 4
@snd_usb_add_endpoint.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 -96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd_usb_audio\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_usb_add_endpoint\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Creating new %s endpoint #%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sync\00", [27 x i8] zeroinitializer }, align 32
@snd_usb_add_endpoint.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ep->lock\00", [22 x i8] zeroinitializer }, align 32
@snd_usb_endpoint_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 748, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot find EP 0x%x to open\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_usb_endpoint_open\00", [42 x i8] zeroinitializer }, align 32
@snd_usb_endpoint_open._entry_ptr = internal global ptr @snd_usb_endpoint_open._entry, section ".printk_index", align 4
@snd_usb_endpoint_open.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 -66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Open EP 0x%x, iface=%d:%d, idx=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@snd_usb_endpoint_open.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.12, ptr @.str.2, ptr @.str.14, i8 0, i8 -58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"  channels=%d, rate=%d, format=%s, period_bytes=%d, periods=%d, implicit_fb=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@snd_usb_endpoint_open._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.12, ptr @.str.2, i32 802, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Incompatible EP setup for 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@snd_usb_endpoint_open._entry_ptr.17 = internal global ptr @snd_usb_endpoint_open._entry.15, section ".printk_index", align 4
@snd_usb_endpoint_open.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.12, ptr @.str.2, ptr @.str.18, i8 0, i8 -54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Reopened EP 0x%x (count %d)\0A\00", [35 x i8] zeroinitializer }, align 32
@snd_usb_endpoint_close.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 -35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_usb_endpoint_close\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Closing EP 0x%x (count %d)\0A\00", [36 x i8] zeroinitializer }, align 32
@snd_usb_endpoint_close.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.19, ptr @.str.2, ptr @.str.21, i8 0, i8 -32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"EP 0x%x closed\0A\00", [16 x i8] zeroinitializer }, align 32
@snd_usb_endpoint_start.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 1, i8 107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_usb_endpoint_start\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Starting %s EP 0x%x (running %d)\0A\00", [62 x i8] zeroinitializer }, align 32
@snd_usb_endpoint_start.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.22, ptr @.str.2, ptr @.str.24, i8 1, i8 113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"No URB submission due to implicit fb sync\0A\00", [53 x i8] zeroinitializer }, align 32
@snd_usb_endpoint_start.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.22, ptr @.str.2, ptr @.str.25, i8 1, i8 118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"EP 0x%x: failed to prepare urb: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@snd_usb_endpoint_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.22, ptr @.str.2, i32 1507, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cannot submit urb %d, error %d: %s\0A\00", [60 x i8] zeroinitializer }, align 32
@snd_usb_endpoint_start._entry_ptr = internal global ptr @snd_usb_endpoint_start._entry, section ".printk_index", align 4
@snd_usb_endpoint_start.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.22, ptr @.str.2, ptr @.str.27, i8 1, i8 123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"XRUN at starting EP 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@snd_usb_endpoint_start.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.22, ptr @.str.2, ptr @.str.28, i8 1, i8 124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%d URBs submitted for EP 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@snd_usb_endpoint_stop.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 1, i8 -123, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_usb_endpoint_stop\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Stopping %s EP 0x%x (running %d)\0A\00", [62 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@endpoint_set_interface.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 -40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"endpoint_set_interface\00", [41 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Setting usb interface %d:%d for EP 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@endpoint_set_interface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 868, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%d:%d: usb_set_interface failed (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@endpoint_set_interface._entry_ptr = internal global ptr @endpoint_set_interface._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@wait_clear_urbs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 934, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"timeout: still %d active urbs on EP #%x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wait_clear_urbs\00", [16 x i8] zeroinitializer }, align 32
@wait_clear_urbs._entry_ptr = internal global ptr @wait_clear_urbs._entry, section ".printk_index", align 4
@snd_usb_endpoint_set_params.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 1, i8 70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"snd_usb_endpoint_set_params\00", [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Set up %d URBS, ret=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@data_ep_set_params.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 1, i8 2, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"data_ep_set_params\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Setting params for data EP 0x%x, pipe 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@snd_complete_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 564, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cannot submit urb (err = %d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_complete_urb\00", [47 x i8] zeroinitializer }, align 32
@snd_complete_urb._entry_ptr = internal global ptr @snd_complete_urb._entry, section ".printk_index", align 4
@snd_usb_handle_sync_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 1655, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"next package FIFO overflow EP 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snd_usb_handle_sync_urb\00", [40 x i8] zeroinitializer }, align 32
@snd_usb_handle_sync_urb._entry_ptr = internal global ptr @snd_usb_handle_sync_urb._entry, section ".printk_index", align 4
@sync_ep_set_params.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.44, ptr @.str.2, ptr @.str.45, i8 1, i8 48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sync_ep_set_params\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Setting params for sync EP 0x%x, pipe 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"no device\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"endpoint not enabled\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"endpoint stalled\00", [47 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"not enough bandwidth\00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"device disabled\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"device suspended\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"internal error\00", [17 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unknown error\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.56 = internal global [12 x i64] [i64 10, i64 32, i64 4294967183, i64 4294967188, i64 4294967206, i64 4294967264, i64 4294967268, i64 4294967269, i64 4294967274, i64 4294967277, i64 4294967285, i64 4294967294]
@__sancov_gen_cov_switch_values.57 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 48, i64 50, i64 51, i64 52]
@__sancov_gen_cov_switch_values.58 = internal global [6 x i64] [i64 4, i64 32, i64 4294967188, i64 4294967192, i64 4294967277, i64 4294967294]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 495, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 641, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 649, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 748, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 762, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 788, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 801, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 807, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 886, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 899, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1451, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1478, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1497, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1505, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1515, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1520, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1557, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 863, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 867, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 932, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1305, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1032, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 564, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1653, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1218, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 100, i32 10 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 102, i32 10 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 104, i32 10 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 106, i32 10 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 108, i32 10 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 110, i32 10 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 115, i32 10 }
@___asan_gen_.240 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.241 = private constant [24 x i8] c"../sound/usb/endpoint.c\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 117, i32 10 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @endpoint_set_interface._entry, ptr @endpoint_set_interface._entry_ptr, ptr @snd_complete_urb._entry, ptr @snd_complete_urb._entry_ptr, ptr @snd_usb_endpoint_open._entry, ptr @snd_usb_endpoint_open._entry.15, ptr @snd_usb_endpoint_open._entry_ptr, ptr @snd_usb_endpoint_open._entry_ptr.17, ptr @snd_usb_endpoint_start._entry, ptr @snd_usb_endpoint_start._entry_ptr, ptr @snd_usb_handle_sync_urb._entry, ptr @snd_usb_handle_sync_urb._entry_ptr, ptr @snd_usb_queue_pending_output_urbs._entry, ptr @snd_usb_queue_pending_output_urbs._entry_ptr, ptr @wait_clear_urbs._entry, ptr @wait_clear_urbs._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @snd_usb_add_endpoint.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_queue_pending_output_urbs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_add_endpoint.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_endpoint_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_endpoint_open._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_endpoint_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @endpoint_set_interface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_clear_urbs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_complete_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_handle_sync_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @snd_usb_endpoint_implicit_feedback_sink(ptr nocapture noundef readonly %ep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %implicit_fb_sync = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 48
  %0 = ptrtoint ptr %implicit_fb_sync to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %implicit_fb_sync, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pipe = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 26
  %2 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pipe, align 4
  %and = lshr i32 %3, 7
  %and.lobit = and i32 %and, 1
  %4 = xor i32 %and.lobit, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %5 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %4, %land.rhs ]
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_usb_endpoint_next_packet_size(ptr noundef %ep, ptr nocapture noundef readonly %ctx, i32 noundef %idx, i32 noundef %avail) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.snd_urb_ctx, ptr %ctx, i32 0, i32 7, i32 %idx
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %avail)
  %tobool1.not = icmp eq i32 %avail, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %avail)
  %cmp.not = icmp ult i32 %1, %avail
  %or.cond = select i1 %tobool1.not, i1 true, i1 %cmp.not
  %spec.select = select i1 %or.cond, i32 %1, i32 -11
  br label %cleanup

if.end3:                                          ; preds = %entry
  %sync_source = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 13
  %2 = ptrtoint ptr %sync_source to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sync_source, align 4
  %tobool4.not = icmp eq ptr %3, null
  %fill_max.i14 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 42
  %4 = ptrtoint ptr %fill_max.i14 to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i15 = load i8, ptr %fill_max.i14, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i15)
  %tobool.not.i16 = icmp sgt i8 %bf.load.i15, -1
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end3
  br i1 %tobool.not.i16, label %do.body1.i, label %if.then.i

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %maxframesize.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 37
  %5 = ptrtoint ptr %maxframesize.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %maxframesize.i, align 4
  br label %cleanup

do.body1.i:                                       ; preds = %if.then5
  %lock.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 60
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %phase5.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 35
  %7 = ptrtoint ptr %phase5.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %phase5.i, align 4
  %and.i = and i32 %8, 65535
  %freqm.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 32
  %9 = ptrtoint ptr %freqm.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %freqm.i, align 4
  %datainterval.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 43
  %11 = ptrtoint ptr %datainterval.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %datainterval.i, align 4
  %shl.i = shl i32 %10, %12
  %add.i = add i32 %shl.i, %and.i
  %shr.i = lshr i32 %add.i, 16
  %maxframesize6.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 37
  %13 = ptrtoint ptr %maxframesize6.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %maxframesize6.i, align 4
  %15 = tail call i32 @llvm.umin.i32(i32 %shr.i, i32 %14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %avail)
  %tobool10.not.i = icmp eq i32 %avail, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %avail)
  %cmp11.not.i = icmp ult i32 %15, %avail
  %or.cond.i = select i1 %tobool10.not.i, i1 true, i1 %cmp11.not.i
  br i1 %or.cond.i, label %if.else.i, label %do.body1.i.if.end15.i_crit_edge

do.body1.i.if.end15.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i

if.else.i:                                        ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %phase5.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add.i, ptr %phase5.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.else.i, %do.body1.i.if.end15.i_crit_edge
  %ret.0.i = phi i32 [ %15, %if.else.i ], [ -11, %do.body1.i.if.end15.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #12
  br label %cleanup

if.else:                                          ; preds = %if.end3
  br i1 %tobool.not.i16, label %if.end.i, label %if.then.i18

if.then.i18:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %maxframesize.i17 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 37
  %17 = ptrtoint ptr %maxframesize.i17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %maxframesize.i17, align 4
  br label %cleanup

if.end.i:                                         ; preds = %if.else
  %sample_accum1.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 29
  %19 = ptrtoint ptr %sample_accum1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sample_accum1.i, align 4
  %sample_rem.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 28
  %21 = ptrtoint ptr %sample_rem.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sample_rem.i, align 4
  %add.i19 = add i32 %22, %20
  %pps.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 30
  %23 = ptrtoint ptr %pps.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pps.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i19, i32 %24)
  %cmp.not.i = icmp ult i32 %add.i19, %24
  %arrayidx.i = getelementptr %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 27, i32 1
  %packsize4.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 27
  %ret.0.in.i = select i1 %cmp.not.i, ptr %packsize4.i, ptr %arrayidx.i
  %25 = ptrtoint ptr %ret.0.in.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %ret.0.i20 = load i32, ptr %ret.0.in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %avail)
  %tobool7.not.i = icmp eq i32 %avail, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.0.i20, i32 %avail)
  %cmp8.not.i = icmp ult i32 %ret.0.i20, %avail
  %or.cond.i21 = select i1 %tobool7.not.i, i1 true, i1 %cmp8.not.i
  br i1 %or.cond.i21, label %if.else10.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = select i1 %cmp.not.i, i32 0, i32 %24
  %sample_accum.0.i = sub i32 %add.i19, %sub.i
  %26 = ptrtoint ptr %sample_accum1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sample_accum.0.i, ptr %sample_accum1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else10.i, %if.end.i.cleanup_crit_edge, %if.then.i18, %if.end15.i, %if.then.i, %if.then
  %retval.0 = phi i32 [ %spec.select, %if.then ], [ %6, %if.then.i ], [ %ret.0.i, %if.end15.i ], [ %18, %if.then.i18 ], [ %ret.0.i20, %if.else10.i ], [ -11, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_usb_queue_pending_output_urbs(ptr noundef %ep, i1 noundef zeroext %in_stream_lock) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %implicit_fb_sync.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 48
  %0 = ptrtoint ptr %implicit_fb_sync.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %implicit_fb_sync.i, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.snd_usb_endpoint_implicit_feedback_sink.exit_crit_edge, label %land.rhs.i

entry.snd_usb_endpoint_implicit_feedback_sink.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_usb_endpoint_implicit_feedback_sink.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pipe.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 26
  %2 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pipe.i, align 4
  %4 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %phi.cmp = icmp ne i32 %4, 0
  br label %snd_usb_endpoint_implicit_feedback_sink.exit

snd_usb_endpoint_implicit_feedback_sink.exit:     ; preds = %land.rhs.i, %entry.snd_usb_endpoint_implicit_feedback_sink.exit_crit_edge
  %5 = phi i1 [ true, %entry.snd_usb_endpoint_implicit_feedback_sink.exit_crit_edge ], [ %phi.cmp, %land.rhs.i ]
  %state.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 9
  %call.i.i.i124 = tail call zeroext i1 @__kasan_check_read(ptr noundef %state.i, i32 noundef 4) #12
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i125 = icmp eq i32 %7, 1
  br i1 %cmp.i125, label %while.body.lr.ph, label %snd_usb_endpoint_implicit_feedback_sink.exit.cleanup61_crit_edge

snd_usb_endpoint_implicit_feedback_sink.exit.cleanup61_crit_edge: ; preds = %snd_usb_endpoint_implicit_feedback_sink.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup61

while.body.lr.ph:                                 ; preds = %snd_usb_endpoint_implicit_feedback_sink.exit
  %lock = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 60
  %next_packet_queued = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 18
  %ready_playback_urbs = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 19
  %next_packet.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 16
  %next_packet_head.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 17
  %active_mask = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 21
  %submitted_urbs = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 23
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  br i1 %5, label %while.body.land.lhs.true_crit_edge, label %lor.lhs.false

while.body.land.lhs.true_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %while.body
  %8 = ptrtoint ptr %next_packet_queued to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %next_packet_queued, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp9.not = icmp eq i32 %9, 0
  br i1 %cmp9.not, label %lor.lhs.false.if.end18.thread_crit_edge, label %lor.lhs.false.land.lhs.true_crit_edge

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

lor.lhs.false.if.end18.thread_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.thread

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %while.body.land.lhs.true_crit_edge
  %10 = ptrtoint ptr %ready_playback_urbs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %ready_playback_urbs, align 4
  %cmp.i95.not = icmp eq ptr %11, %ready_playback_urbs
  br i1 %cmp.i95.not, label %land.lhs.true.if.end18.thread_crit_edge, label %if.then

land.lhs.true.if.end18.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.thread

if.then:                                          ; preds = %land.lhs.true
  %add.ptr = getelementptr i8, ptr %11, i32 -220
  %call.i.i96 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %11) #12
  br i1 %call.i.i96, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %11, ptr %11, align 4
  %prev.i3.i = getelementptr %struct.list_head, ptr %11, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %11, ptr %prev.i3.i, align 4
  br i1 %5, label %if.end18, label %if.end18.thread132

if.end18.thread:                                  ; preds = %land.lhs.true.if.end18.thread_crit_edge, %lor.lhs.false.if.end18.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #12
  br label %cleanup61

if.end18:                                         ; preds = %list_del_init.exit
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #12
  %cmp20 = icmp eq ptr %add.ptr, null
  br i1 %cmp20, label %if.end18.cleanup61_crit_edge, label %if.end18.if.end30_crit_edge

if.end18.if.end30_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.end18.cleanup61_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup61

if.end18.thread132:                               ; preds = %list_del_init.exit
  %20 = ptrtoint ptr %next_packet_head.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %next_packet_head.i, align 4
  %add.ptr.i = getelementptr %struct.snd_usb_packet_info, ptr %next_packet.i, i32 %21
  %inc.i = add i32 %21, 1
  %rem.i = urem i32 %inc.i, 12
  store i32 %rem.i, ptr %next_packet_head.i, align 4
  %22 = ptrtoint ptr %next_packet_queued to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %next_packet_queued, align 4
  %dec.i = add i32 %23, -1
  store i32 %dec.i, ptr %next_packet_queued, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #12
  %cmp20134 = icmp eq ptr %add.ptr, null
  br i1 %cmp20134, label %if.end18.thread132.cleanup61_crit_edge, label %for.cond.preheader

if.end18.thread132.cleanup61_crit_edge:           ; preds = %if.end18.thread132
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup61

for.cond.preheader:                               ; preds = %if.end18.thread132
  %packets = getelementptr %struct.snd_usb_packet_info, ptr %next_packet.i, i32 %21, i32 1
  %24 = ptrtoint ptr %packets to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %packets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp26122 = icmp sgt i32 %25, 0
  br i1 %cmp26122, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end30_crit_edge

for.cond.preheader.if.end30_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0123 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [48 x i32], ptr %add.ptr.i, i32 0, i32 %i.0123
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 4
  %arrayidx29 = getelementptr %struct.snd_urb_ctx, ptr %add.ptr, i32 0, i32 7, i32 %i.0123
  %28 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx29, align 4
  %inc = add nuw nsw i32 %i.0123, 1
  %29 = ptrtoint ptr %packets to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %packets, align 4
  %cmp26 = icmp slt i32 %inc, %30
  br i1 %cmp26, label %for.body.for.body_crit_edge, label %for.body.if.end30_crit_edge

for.body.if.end30_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end30:                                         ; preds = %for.body.if.end30_crit_edge, %for.cond.preheader.if.end30_crit_edge, %if.end18.if.end30_crit_edge
  %call32 = tail call fastcc i32 @prepare_outbound_urb(ptr noundef %ep, ptr noundef nonnull %add.ptr, i1 noundef zeroext %in_stream_lock)
  %call.i.i.i98 = tail call zeroext i1 @__kasan_check_read(ptr noundef %state.i, i32 noundef 4) #12
  %31 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp.i99 = icmp eq i32 %32, 1
  br i1 %cmp.i99, label %if.end38, label %if.end30.cleanup61_crit_edge, !prof !128

if.end30.cleanup61_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup61

if.end38:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp39 = icmp slt i32 %call32, 0
  br i1 %cmp39, label %if.then41, label %if.end46

if.then41:                                        ; preds = %if.end38
  %prev.i3.i.le = getelementptr %struct.list_head, ptr %11, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call32)
  %cmp42 = icmp eq i32 %call32, -11
  br i1 %cmp42, label %if.then44, label %if.else

if.then44:                                        ; preds = %if.then41
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %prev.i.i100 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 19, i32 1
  %33 = ptrtoint ptr %prev.i.i100 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i100, align 4
  %call.i.i.i101 = tail call zeroext i1 @__list_add_valid(ptr noundef %11, ptr noundef %34, ptr noundef %ready_playback_urbs) #12
  br i1 %call.i.i.i101, label %if.end.i.i.i, label %if.then44.push_back_to_ready_list.exit_crit_edge

if.then44.push_back_to_ready_list.exit_crit_edge: ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  br label %push_back_to_ready_list.exit

if.end.i.i.i:                                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %prev.i.i100 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %11, ptr %prev.i.i100, align 4
  %36 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %ready_playback_urbs, ptr %11, align 4
  %37 = ptrtoint ptr %prev.i3.i.le to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev.i3.i.le, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %11, ptr %34, align 4
  br label %push_back_to_ready_list.exit

push_back_to_ready_list.exit:                     ; preds = %if.end.i.i.i, %if.then44.push_back_to_ready_list.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #12
  br label %cleanup61

if.else:                                          ; preds = %if.then41
  %data_subs1.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 12
  %39 = ptrtoint ptr %data_subs1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %data_subs1.i, align 4
  %tobool.not.i102 = icmp eq ptr %40, null
  br i1 %tobool.not.i102, label %if.else.cleanup61_crit_edge, label %land.lhs.true.i

if.else.cleanup61_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup61

land.lhs.true.i:                                  ; preds = %if.else
  %pcm_substream.i = getelementptr inbounds %struct.snd_usb_substream, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %pcm_substream.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pcm_substream.i, align 8
  %tobool2.not.i = icmp eq ptr %42, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.cleanup61_crit_edge, label %if.then.i

land.lhs.true.i.cleanup61_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup61

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 @snd_pcm_stop_xrun(ptr noundef nonnull %42) #12
  br label %cleanup61

if.end46:                                         ; preds = %if.end38
  %43 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr, align 4
  %call47 = tail call i32 @usb_submit_urb(ptr noundef %44, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %do.end53, label %cleanup

do.end53:                                         ; preds = %if.end46
  %45 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ep, align 4
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  %dev54 = getelementptr inbounds %struct.usb_device, ptr %48, i32 0, i32 15
  %index = getelementptr i8, ptr %11, i32 -204
  %49 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev54, ptr noundef nonnull @.str, i32 noundef %50, i32 noundef %call47, ptr noundef nonnull @.str.1) #15
  %data_subs1.i103 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 12
  %51 = ptrtoint ptr %data_subs1.i103 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %data_subs1.i103, align 4
  %tobool.not.i104 = icmp eq ptr %52, null
  br i1 %tobool.not.i104, label %do.end53.cleanup61_crit_edge, label %land.lhs.true.i107

do.end53.cleanup61_crit_edge:                     ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup61

land.lhs.true.i107:                               ; preds = %do.end53
  %pcm_substream.i105 = getelementptr inbounds %struct.snd_usb_substream, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %pcm_substream.i105 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pcm_substream.i105, align 8
  %tobool2.not.i106 = icmp eq ptr %54, null
  br i1 %tobool2.not.i106, label %land.lhs.true.i107.cleanup61_crit_edge, label %if.then.i109

land.lhs.true.i107.cleanup61_crit_edge:           ; preds = %land.lhs.true.i107
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup61

if.then.i109:                                     ; preds = %land.lhs.true.i107
  call void @__sanitizer_cov_trace_pc() #14
  %call.i108 = tail call i32 @snd_pcm_stop_xrun(ptr noundef nonnull %54) #12
  br label %cleanup61

cleanup:                                          ; preds = %if.end46
  %index56 = getelementptr i8, ptr %11, i32 -204
  %55 = ptrtoint ptr %index56 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %index56, align 4
  tail call void @_set_bit(i32 noundef %56, ptr noundef %active_mask) #12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %submitted_urbs, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %submitted_urbs, i32 1, i32 3, i32 1) #12
  %57 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %submitted_urbs, ptr %submitted_urbs, i32 1, ptr elementtype(i32) %submitted_urbs) #12, !srcloc !129
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %state.i, i32 noundef 4) #12
  %58 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %state.i, align 4
  %cmp.i = icmp eq i32 %59, 1
  br i1 %cmp.i, label %cleanup.while.body_crit_edge, label %cleanup.cleanup61_crit_edge

cleanup.cleanup61_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup61

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

cleanup61:                                        ; preds = %cleanup.cleanup61_crit_edge, %if.then.i109, %land.lhs.true.i107.cleanup61_crit_edge, %do.end53.cleanup61_crit_edge, %if.then.i, %land.lhs.true.i.cleanup61_crit_edge, %if.else.cleanup61_crit_edge, %push_back_to_ready_list.exit, %if.end30.cleanup61_crit_edge, %if.end18.thread132.cleanup61_crit_edge, %if.end18.cleanup61_crit_edge, %if.end18.thread, %snd_usb_endpoint_implicit_feedback_sink.exit.cleanup61_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @prepare_outbound_urb(ptr noundef %ep, ptr nocapture noundef %ctx, i1 noundef zeroext %in_stream_lock) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer_buffer, align 4
  %4 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ep, align 4
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %dev2 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %dev2, align 4
  %type = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 5
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %entry.cleanup_crit_edge [
    i32 0, label %do.end
    i32 1, label %sw.bb7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %entry
  %data_subs3 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 12
  %12 = ptrtoint ptr %data_subs3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %data_subs3, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %do.end.if.end_crit_edge, label %land.lhs.true

do.end.if.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %do.end
  %prepare_data_urb = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 10
  %14 = ptrtoint ptr %prepare_data_urb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prepare_data_urb, align 4
  %tobool4.not = icmp eq ptr %15, null
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 %15(ptr noundef nonnull %13, ptr noundef %1, i1 noundef zeroext %in_stream_lock) #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %do.end.if.end_crit_edge
  %16 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx, align 4
  %18 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ep, align 4
  %quirk_flags.i.i = getelementptr inbounds %struct.snd_usb_audio, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %quirk_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %quirk_flags.i.i, align 4
  %and.i.i = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %22 = lshr exact i32 %and.i.i, 1
  %packets.i = getelementptr inbounds %struct.snd_urb_ctx, ptr %ctx, i32 0, i32 5
  %23 = ptrtoint ptr %packets.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %packets.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp54.i = icmp sgt i32 %24, 0
  br i1 %cmp54.i, label %for.body.lr.ph.i, label %if.end.prepare_silent_urb.exit_crit_edge

if.end.prepare_silent_urb.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %prepare_silent_urb.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %sync_source.i.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 13
  %fill_max.i14.i.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 42
  %maxframesize.i.i.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 37
  %lock.i.i.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 60
  %phase5.i.i.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 35
  %freqm.i.i.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 32
  %datainterval.i.i.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 43
  %sample_accum1.i.i.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 29
  %sample_rem.i.i.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 28
  %pps.i.i.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 30
  %arrayidx.i.i.i = getelementptr %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 27, i32 1
  %packsize4.i.i.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 27
  %stride.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 46
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 14
  %silence_value.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 45
  br label %for.body.i

for.body.i:                                       ; preds = %if.end12.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.056.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end12.i.for.body.i_crit_edge ]
  %offs.055.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add16.i, %if.end12.i.for.body.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.snd_urb_ctx, ptr %ctx, i32 0, i32 7, i32 %i.056.i
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i, label %if.end3.i.i, label %for.body.i.snd_usb_endpoint_next_packet_size.exit.i_crit_edge

for.body.i.snd_usb_endpoint_next_packet_size.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_usb_endpoint_next_packet_size.exit.i

if.end3.i.i:                                      ; preds = %for.body.i
  %27 = ptrtoint ptr %sync_source.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sync_source.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %28, null
  %29 = ptrtoint ptr %fill_max.i14.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i15.i.i = load i8, ptr %fill_max.i14.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i15.i.i)
  %tobool.not.i16.i.i = icmp sgt i8 %bf.load.i15.i.i, -1
  br i1 %tobool4.not.i.i, label %if.else.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.end3.i.i
  br i1 %tobool.not.i16.i.i, label %do.body1.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %maxframesize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %maxframesize.i.i.i, align 4
  br label %snd_usb_endpoint_next_packet_size.exit.i

do.body1.i.i.i:                                   ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i.i) #12
  %32 = ptrtoint ptr %phase5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %phase5.i.i.i, align 4
  %and.i.i.i = and i32 %33, 65535
  %34 = ptrtoint ptr %freqm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %freqm.i.i.i, align 4
  %36 = ptrtoint ptr %datainterval.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %datainterval.i.i.i, align 4
  %shl.i.i.i = shl i32 %35, %37
  %add.i.i.i = add i32 %shl.i.i.i, %and.i.i.i
  %shr.i.i.i = lshr i32 %add.i.i.i, 16
  %38 = ptrtoint ptr %maxframesize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %maxframesize.i.i.i, align 4
  %40 = tail call i32 @llvm.umin.i32(i32 %shr.i.i.i, i32 %39) #12
  %41 = ptrtoint ptr %phase5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add.i.i.i, ptr %phase5.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i.i, i32 noundef %call2.i.i.i) #12
  br label %snd_usb_endpoint_next_packet_size.exit.i

if.else.i.i:                                      ; preds = %if.end3.i.i
  br i1 %tobool.not.i16.i.i, label %if.end.i.i.i, label %if.then.i18.i.i

if.then.i18.i.i:                                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %maxframesize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %maxframesize.i.i.i, align 4
  br label %snd_usb_endpoint_next_packet_size.exit.i

if.end.i.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %sample_accum1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sample_accum1.i.i.i, align 4
  %46 = ptrtoint ptr %sample_rem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sample_rem.i.i.i, align 4
  %add.i19.i.i = add i32 %47, %45
  %48 = ptrtoint ptr %pps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pps.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i19.i.i, i32 %49)
  %cmp.not.i.i.i = icmp ult i32 %add.i19.i.i, %49
  %ret.0.in.i.i.i = select i1 %cmp.not.i.i.i, ptr %packsize4.i.i.i, ptr %arrayidx.i.i.i
  %50 = ptrtoint ptr %ret.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %ret.0.i20.i.i = load i32, ptr %ret.0.in.i.i.i, align 4
  %sub.i.i.i = select i1 %cmp.not.i.i.i, i32 0, i32 %49
  %sample_accum.0.i.i.i = sub i32 %add.i19.i.i, %sub.i.i.i
  %51 = ptrtoint ptr %sample_accum1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %sample_accum.0.i.i.i, ptr %sample_accum1.i.i.i, align 4
  br label %snd_usb_endpoint_next_packet_size.exit.i

snd_usb_endpoint_next_packet_size.exit.i:         ; preds = %if.end.i.i.i, %if.then.i18.i.i, %do.body1.i.i.i, %if.then.i.i.i, %for.body.i.snd_usb_endpoint_next_packet_size.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %31, %if.then.i.i.i ], [ %40, %do.body1.i.i.i ], [ %43, %if.then.i18.i.i ], [ %ret.0.i20.i.i, %if.end.i.i.i ], [ %26, %for.body.i.snd_usb_endpoint_next_packet_size.exit.i_crit_edge ]
  %52 = ptrtoint ptr %stride.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %stride.i, align 4
  %mul.i = mul i32 %53, %retval.0.i.i
  %mul4.i = mul i32 %53, %offs.055.i
  %mul5.i = mul i32 %i.056.i, %22
  %add.i = add i32 %mul4.i, %mul5.i
  %arrayidx.i = getelementptr %struct.urb, ptr %17, i32 0, i32 29, i32 %i.056.i
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add.i, ptr %arrayidx.i, align 4
  %add7.i = add i32 %mul.i, %22
  %length10.i = getelementptr %struct.urb, ptr %17, i32 0, i32 29, i32 %i.056.i, i32 1
  %55 = ptrtoint ptr %length10.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %add7.i, ptr %length10.i, align 4
  br i1 %tobool.i.not.i, label %snd_usb_endpoint_next_packet_size.exit.i.if.end12.i_crit_edge, label %if.then11.i

snd_usb_endpoint_next_packet_size.exit.i.if.end12.i_crit_edge: ; preds = %snd_usb_endpoint_next_packet_size.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

if.then11.i:                                      ; preds = %snd_usb_endpoint_next_packet_size.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %56 = tail call i32 @llvm.bswap.i32(i32 %mul.i) #12
  %57 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %transfer_buffer.i, align 4
  %add.ptr.i = getelementptr i8, ptr %58, i32 %add.i
  %59 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 %56, ptr %add.ptr.i, align 1
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %snd_usb_endpoint_next_packet_size.exit.i.if.end12.i_crit_edge
  %60 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %transfer_buffer.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %61, i32 %22
  %add.ptr15.i = getelementptr i8, ptr %add.ptr14.i, i32 %add.i
  %62 = ptrtoint ptr %silence_value.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %silence_value.i, align 4
  %64 = zext i8 %63 to i32
  %65 = call ptr @memset(ptr %add.ptr15.i, i32 %64, i32 %mul.i)
  %add16.i = add i32 %retval.0.i.i, %offs.055.i
  %inc.i = add nuw nsw i32 %i.056.i, 1
  %66 = ptrtoint ptr %packets.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %packets.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %67
  br i1 %cmp.i, label %if.end12.i.for.body.i_crit_edge, label %if.end12.i.prepare_silent_urb.exit_crit_edge

if.end12.i.prepare_silent_urb.exit_crit_edge:     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %prepare_silent_urb.exit

if.end12.i.for.body.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

prepare_silent_urb.exit:                          ; preds = %if.end12.i.prepare_silent_urb.exit_crit_edge, %if.end.prepare_silent_urb.exit_crit_edge
  %offs.0.lcssa.i = phi i32 [ 0, %if.end.prepare_silent_urb.exit_crit_edge ], [ %add16.i, %if.end12.i.prepare_silent_urb.exit_crit_edge ]
  %.lcssa.i = phi i32 [ %24, %if.end.prepare_silent_urb.exit_crit_edge ], [ %67, %if.end12.i.prepare_silent_urb.exit_crit_edge ]
  %number_of_packets.i = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 24
  %68 = ptrtoint ptr %number_of_packets.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %.lcssa.i, ptr %number_of_packets.i, align 4
  %stride18.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 46
  %69 = ptrtoint ptr %stride18.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %stride18.i, align 4
  %mul19.i = mul i32 %70, %offs.0.lcssa.i
  %71 = ptrtoint ptr %packets.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %packets.i, align 4
  %mul21.i = mul i32 %72, %22
  %add22.i = add i32 %mul21.i, %mul19.i
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 19
  %73 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %add22.i, ptr %transfer_buffer_length.i, align 4
  %queued.i = getelementptr inbounds %struct.snd_urb_ctx, ptr %ctx, i32 0, i32 6
  %74 = ptrtoint ptr %queued.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %queued.i, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %75 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ep, align 4
  %dev9 = getelementptr inbounds %struct.snd_usb_audio, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev9, align 4
  %speed = getelementptr inbounds %struct.usb_device, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %80)
  %cmp = icmp ugt i32 %80, 2
  %iso_frame_desc = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 29
  %length = getelementptr inbounds %struct.urb, ptr %1, i32 1, i32 1
  br i1 %cmp, label %if.then10, label %if.else

if.then10:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #14
  %81 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 4, ptr %length, align 4
  %82 = ptrtoint ptr %iso_frame_desc to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %iso_frame_desc, align 4
  %freqn = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 31
  %83 = ptrtoint ptr %freqn to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %freqn, align 4
  %conv = trunc i32 %84 to i8
  %85 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv, ptr %3, align 1
  %86 = load i32, ptr %freqn, align 4
  %shr = lshr i32 %86, 8
  %conv15 = trunc i32 %shr to i8
  %arrayidx16 = getelementptr i8, ptr %3, i32 1
  %87 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv15, ptr %arrayidx16, align 1
  %88 = load i32, ptr %freqn, align 4
  %shr18 = lshr i32 %88, 16
  %conv19 = trunc i32 %shr18 to i8
  %arrayidx20 = getelementptr i8, ptr %3, i32 2
  %89 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv19, ptr %arrayidx20, align 1
  %90 = load i32, ptr %freqn, align 4
  %shr22 = lshr i32 %90, 24
  %conv23 = trunc i32 %shr22 to i8
  %arrayidx24 = getelementptr i8, ptr %3, i32 3
  %91 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv23, ptr %arrayidx24, align 1
  br label %cleanup

if.else:                                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #14
  %92 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 3, ptr %length, align 4
  %93 = ptrtoint ptr %iso_frame_desc to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %iso_frame_desc, align 4
  %freqn31 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 31
  %94 = ptrtoint ptr %freqn31 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %freqn31, align 4
  %shr32 = lshr i32 %95, 2
  %conv33 = trunc i32 %shr32 to i8
  %96 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv33, ptr %3, align 1
  %97 = load i32, ptr %freqn31, align 4
  %shr36 = lshr i32 %97, 10
  %conv37 = trunc i32 %shr36 to i8
  %arrayidx38 = getelementptr i8, ptr %3, i32 1
  %98 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv37, ptr %arrayidx38, align 1
  %99 = load i32, ptr %freqn31, align 4
  %shr40 = lshr i32 %99, 18
  %conv41 = trunc i32 %shr40 to i8
  %arrayidx42 = getelementptr i8, ptr %3, i32 2
  %100 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv41, ptr %arrayidx42, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then10, %prepare_silent_urb.exit, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.then10 ], [ 0, %if.else ], [ 0, %entry.cleanup_crit_edge ], [ 0, %prepare_silent_urb.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @snd_usb_get_endpoint(ptr noundef readonly %chip, i32 noundef %ep_num) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ep_list = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 19
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %ep_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %ep_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %ep_num2 = getelementptr i8, ptr %.pn, i32 -5340
  %1 = ptrtoint ptr %ep_num2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ep_num2, align 4
  %cmp3 = icmp eq i32 %2, %ep_num
  br i1 %cmp3, label %cleanup.split.loop.exit13, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

cleanup.split.loop.exit13:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %ep.0.le = getelementptr i8, ptr %.pn, i32 -5356
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit13, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %ep.0.le, %cleanup.split.loop.exit13 ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_usb_add_endpoint(ptr noundef %chip, i32 noundef %ep_num, i32 noundef %type) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ep_list.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 19
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %ep_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ep_list.i
  br i1 %cmp.not.i, label %for.cond.i.do.body_crit_edge, label %for.body.i

for.cond.i.do.body_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

for.body.i:                                       ; preds = %for.cond.i
  %ep_num2.i = getelementptr i8, ptr %.pn.i, i32 -5340
  %1 = ptrtoint ptr %ep_num2.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ep_num2.i, align 4
  %cmp3.i = icmp eq i32 %2, %ep_num
  br i1 %cmp3.i, label %snd_usb_get_endpoint.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

snd_usb_get_endpoint.exit:                        ; preds = %for.body.i
  %ep.0.le.i = getelementptr i8, ptr %.pn.i, i32 -5356
  %tobool.not = icmp eq ptr %ep.0.le.i, null
  br i1 %tobool.not, label %snd_usb_get_endpoint.exit.do.body_crit_edge, label %snd_usb_get_endpoint.exit.cleanup_crit_edge

snd_usb_get_endpoint.exit.cleanup_crit_edge:      ; preds = %snd_usb_get_endpoint.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

snd_usb_get_endpoint.exit.do.body_crit_edge:      ; preds = %snd_usb_get_endpoint.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %snd_usb_get_endpoint.exit.do.body_crit_edge, %for.cond.i.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_add_endpoint.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_add_endpoint, %if.then5)) #12
          to label %do.end [label %if.then5], !srcloc !130

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %dev6 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp eq i32 %type, 0
  %cond = select i1 %cmp, ptr @.str.8, ptr @.str.9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_add_endpoint.__UNIQUE_ID_ddebug247, ptr noundef %dev6, ptr noundef nonnull @.str.7, ptr noundef nonnull %cond, i32 noundef %ep_num) #12
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 5364) #16
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %do.end.cleanup_crit_edge, label %if.end11

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %chip, ptr %call7.i.i, align 8
  %lock = getelementptr inbounds %struct.snd_usb_endpoint, ptr %call7.i.i, i32 0, i32 60
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @snd_usb_add_endpoint.__key, i16 noundef signext 3) #12
  %type17 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %type17 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %type, ptr %type17, align 4
  %ep_num18 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %ep_num18 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %ep_num, ptr %ep_num18, align 8
  %ready_playback_urbs = getelementptr inbounds %struct.snd_usb_endpoint, ptr %call7.i.i, i32 0, i32 19
  %9 = ptrtoint ptr %ready_playback_urbs to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %ready_playback_urbs, ptr %ready_playback_urbs, align 4
  %prev.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %call7.i.i, i32 0, i32 19, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %ready_playback_urbs, ptr %prev.i, align 8
  %submitted_urbs = getelementptr inbounds %struct.snd_usb_endpoint, ptr %call7.i.i, i32 0, i32 23
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %submitted_urbs, i32 noundef 4) #12
  %11 = ptrtoint ptr %submitted_urbs to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 0, ptr %submitted_urbs, align 8
  %and = and i32 %ep_num, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp19 = icmp eq i32 %and, 0
  %dev24 = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %12 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev24, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i = shl i32 %15, 8
  %and21 = shl i32 %ep_num, 15
  %shl1.i = and i32 %and21, 491520
  %or.i = or i32 %shl.i, %shl1.i
  %or.i58 = or i32 %shl1.i, %shl.i
  %or29 = or i32 %or.i58, 128
  %or29.sink = select i1 %cmp19, i32 %or.i, i32 %or29
  %16 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %call7.i.i, i32 0, i32 26
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or29.sink, ptr %16, align 4
  %list = getelementptr inbounds %struct.snd_usb_endpoint, ptr %call7.i.i, i32 0, i32 61
  %prev.i59 = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 19, i32 1
  %18 = ptrtoint ptr %prev.i59 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i59, align 4
  %call.i.i60 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %19, ptr noundef %ep_list.i) #12
  br i1 %call.i.i60, label %if.end.i.i, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %prev.i59 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %list, ptr %prev.i59, align 4
  %21 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %ep_list.i, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %call7.i.i, i32 0, i32 61, i32 1
  %22 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i, align 8
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %list, ptr %19, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end11.cleanup_crit_edge, %do.end.cleanup_crit_edge, %snd_usb_get_endpoint.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %snd_usb_get_endpoint.exit.cleanup_crit_edge ], [ -12, %do.end.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @snd_usb_endpoint_compatible(ptr noundef %chip, ptr nocapture noundef readonly %ep, ptr noundef readnone %fp, ptr nocapture noundef readonly %params) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %opened.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 2
  %0 = ptrtoint ptr %opened.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %opened.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.endpoint_compatible.exit_crit_edge, label %if.end.i

entry.endpoint_compatible.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %endpoint_compatible.exit

if.end.i:                                         ; preds = %entry
  %cur_audiofmt.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 51
  %2 = ptrtoint ptr %cur_audiofmt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_audiofmt.i, align 4
  %cmp.not.i = icmp eq ptr %3, %fp
  br i1 %cmp.not.i, label %if.end2.i, label %if.end.i.endpoint_compatible.exit_crit_edge

if.end.i.endpoint_compatible.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %endpoint_compatible.exit

if.end2.i:                                        ; preds = %if.end.i
  %cur_rate.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 52
  %4 = ptrtoint ptr %cur_rate.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_rate.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp3.not.i = icmp eq i32 %5, %7
  br i1 %cmp3.not.i, label %lor.lhs.false.i, label %if.end2.i.endpoint_compatible.exit_crit_edge

if.end2.i.endpoint_compatible.exit_crit_edge:     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %endpoint_compatible.exit

lor.lhs.false.i:                                  ; preds = %if.end2.i
  %cur_format.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 53
  %8 = ptrtoint ptr %cur_format.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cur_format.i, align 4
  %arrayidx.i.i22.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %lor.lhs.false.i.if.then.i.i.i_crit_edge

lor.lhs.false.i.if.then.i.i.i_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %lor.lhs.false.i.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %lor.lhs.false.i.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %11, %lor.lhs.false.i.if.then.i.i.i_crit_edge ], [ %14, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %12 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #12, !range !131
  %add.i.i.i = or i32 %12, %i.09.lcssa.i.i.i
  br label %params_format.exit.i

for.inc.i.i.i:                                    ; preds = %lor.lhs.false.i
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.1.i.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_format.exit.i_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

for.inc.i.i.i.params_format.exit.i_crit_edge:     ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %params_format.exit.i

params_format.exit.i:                             ; preds = %for.inc.i.i.i.params_format.exit.i_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_format.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %retval.0.i.i.i)
  %cmp5.not.i = icmp eq i32 %9, %retval.0.i.i.i
  br i1 %cmp5.not.i, label %lor.lhs.false6.i, label %params_format.exit.i.endpoint_compatible.exit_crit_edge

params_format.exit.i.endpoint_compatible.exit_crit_edge: ; preds = %params_format.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %endpoint_compatible.exit

lor.lhs.false6.i:                                 ; preds = %params_format.exit.i
  %cur_period_frames.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 56
  %15 = ptrtoint ptr %cur_period_frames.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cur_period_frames.i, align 4
  %arrayidx.i.i23.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 5
  %17 = ptrtoint ptr %arrayidx.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i23.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp8.not.i = icmp eq i32 %16, %18
  br i1 %cmp8.not.i, label %lor.lhs.false9.i, label %lor.lhs.false6.i.endpoint_compatible.exit_crit_edge

lor.lhs.false6.i.endpoint_compatible.exit_crit_edge: ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %endpoint_compatible.exit

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #14
  %cur_buffer_periods.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 58
  %19 = ptrtoint ptr %cur_buffer_periods.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cur_buffer_periods.i, align 4
  %arrayidx.i.i24.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 7
  %21 = ptrtoint ptr %arrayidx.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i24.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp11.not.i = icmp eq i32 %20, %22
  br label %endpoint_compatible.exit

endpoint_compatible.exit:                         ; preds = %lor.lhs.false9.i, %lor.lhs.false6.i.endpoint_compatible.exit_crit_edge, %params_format.exit.i.endpoint_compatible.exit_crit_edge, %if.end2.i.endpoint_compatible.exit_crit_edge, %if.end.i.endpoint_compatible.exit_crit_edge, %entry.endpoint_compatible.exit_crit_edge
  %retval.0.i = phi i1 [ false, %entry.endpoint_compatible.exit_crit_edge ], [ false, %if.end.i.endpoint_compatible.exit_crit_edge ], [ false, %lor.lhs.false6.i.endpoint_compatible.exit_crit_edge ], [ false, %params_format.exit.i.endpoint_compatible.exit_crit_edge ], [ false, %if.end2.i.endpoint_compatible.exit_crit_edge ], [ %cmp11.not.i, %lor.lhs.false9.i ]
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret i1 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @snd_usb_endpoint_open(ptr noundef %chip, ptr noundef %fp, ptr nocapture noundef readonly %params, i1 noundef zeroext %is_sync_ep) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sync_ep = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 14
  %endpoint = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 11
  %cond.in.in = select i1 %is_sync_ep, ptr %sync_ep, ptr %endpoint
  %0 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load1_noabort(i32 %0)
  %cond.in = load i8, ptr %cond.in.in, align 1
  %cond = zext i8 %cond.in to i32
  %mutex = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %ep_list.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 19
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %ep_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %1 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ep_list.i
  br i1 %cmp.not.i, label %for.cond.i.do.end_crit_edge, label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i
  %ep_num2.i = getelementptr i8, ptr %.pn.i, i32 -5340
  %2 = ptrtoint ptr %ep_num2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ep_num2.i, align 4
  %cmp3.i = icmp eq i32 %3, %cond
  br i1 %cmp3.i, label %snd_usb_get_endpoint.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

snd_usb_get_endpoint.exit:                        ; preds = %for.body.i
  %ep.0.le.i = getelementptr i8, ptr %.pn.i, i32 -5356
  %tobool2.not = icmp eq ptr %ep.0.le.i, null
  br i1 %tobool2.not, label %snd_usb_get_endpoint.exit.do.end_crit_edge, label %if.end

snd_usb_get_endpoint.exit.do.end_crit_edge:       ; preds = %snd_usb_get_endpoint.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %snd_usb_get_endpoint.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.11, i32 noundef %cond) #15
  br label %unlock

if.end:                                           ; preds = %snd_usb_get_endpoint.exit
  %opened = getelementptr i8, ptr %.pn.i, i32 -5348
  %6 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %opened, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %if.then5, label %if.else82

if.then5:                                         ; preds = %if.end
  br i1 %is_sync_ep, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %sync_iface = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 15
  %8 = ptrtoint ptr %sync_iface to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sync_iface, align 1
  %iface = getelementptr i8, ptr %.pn.i, i32 -5332
  %10 = ptrtoint ptr %iface to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %iface, align 4
  %sync_altsetting = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 16
  %11 = ptrtoint ptr %sync_altsetting to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %sync_altsetting, align 2
  %altsetting = getelementptr i8, ptr %.pn.i, i32 -5331
  %13 = ptrtoint ptr %altsetting to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %altsetting, align 1
  %sync_ep_idx = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 17
  br label %do.body15

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %iface8 = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 6
  %14 = ptrtoint ptr %iface8 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %iface8, align 8
  %iface9 = getelementptr i8, ptr %.pn.i, i32 -5332
  %16 = ptrtoint ptr %iface9 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %iface9, align 4
  %altsetting10 = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 7
  %17 = ptrtoint ptr %altsetting10 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %altsetting10, align 1
  %altsetting11 = getelementptr i8, ptr %.pn.i, i32 -5331
  %19 = ptrtoint ptr %altsetting11 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %altsetting11, align 1
  %ep_idx12 = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 8
  br label %do.body15

do.body15:                                        ; preds = %if.else, %if.then7
  %.sink.in = phi ptr [ %sync_ep_idx, %if.then7 ], [ %ep_idx12, %if.else ]
  %20 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load1_noabort(i32 %20)
  %.sink = load i8, ptr %.sink.in, align 1
  %21 = getelementptr i8, ptr %.pn.i, i32 -5330
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %.sink, ptr %21, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_endpoint_open.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_endpoint_open, %if.then21)) #12
          to label %do.end32 [label %if.then21], !srcloc !130

if.then21:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #14
  %dev22 = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %23 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev22, align 4
  %dev23 = getelementptr inbounds %struct.usb_device, ptr %24, i32 0, i32 15
  %iface24 = getelementptr i8, ptr %.pn.i, i32 -5332
  %25 = ptrtoint ptr %iface24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %iface24, align 4
  %conv25 = zext i8 %26 to i32
  %altsetting26 = getelementptr i8, ptr %.pn.i, i32 -5331
  %27 = ptrtoint ptr %altsetting26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %altsetting26, align 1
  %conv27 = zext i8 %28 to i32
  %29 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %21, align 2
  %conv29 = zext i8 %30 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_endpoint_open.__UNIQUE_ID_ddebug248, ptr noundef %dev23, ptr noundef nonnull @.str.13, i32 noundef %cond, i32 noundef %conv25, i32 noundef %conv27, i32 noundef %conv29) #12
  br label %do.end32

do.end32:                                         ; preds = %if.then21, %do.body15
  %iface33 = getelementptr i8, ptr %.pn.i, i32 -5332
  %31 = ptrtoint ptr %iface33 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %iface33, align 4
  %iface_ref_list.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 20
  br label %for.cond.i242

for.cond.i242:                                    ; preds = %for.body.i244.for.cond.i242_crit_edge, %do.end32
  %.pn.in.i239 = phi ptr [ %iface_ref_list.i, %do.end32 ], [ %.pn.i240, %for.body.i244.for.cond.i242_crit_edge ]
  %33 = ptrtoint ptr %.pn.in.i239 to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn.i240 = load ptr, ptr %.pn.in.i239, align 4
  %cmp.not.i241 = icmp eq ptr %.pn.i240, %iface_ref_list.i
  br i1 %cmp.not.i241, label %for.end.i, label %for.body.i244

for.body.i244:                                    ; preds = %for.cond.i242
  %ip.0.i = getelementptr i8, ptr %.pn.i240, i32 -8
  %34 = ptrtoint ptr %ip.0.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ip.0.i, align 4
  %cmp3.i243 = icmp eq i8 %35, %32
  br i1 %cmp3.i243, label %iface_ref_find.exit, label %for.body.i244.for.cond.i242_crit_edge

for.body.i244.for.cond.i242_crit_edge:            ; preds = %for.body.i244
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i242

for.end.i:                                        ; preds = %for.cond.i242
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %36 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 3520, i32 noundef 16) #16
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %iface_ref_find.exit.thread262, label %if.end11.i

iface_ref_find.exit.thread262:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %iface_ref264 = getelementptr i8, ptr %.pn.i, i32 -5352
  %37 = ptrtoint ptr %iface_ref264 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %iface_ref264, align 4
  br label %unlock

if.end11.i:                                       ; preds = %for.end.i
  %38 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %32, ptr %call7.i.i.i, align 8
  %list14.i = getelementptr inbounds %struct.snd_usb_iface_ref, ptr %call7.i.i.i, i32 0, i32 3
  %prev.i.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 20, i32 1
  %39 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list14.i, ptr noundef %40, ptr noundef %iface_ref_list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end11.i.iface_ref_find.exit.thread_crit_edge

if.end11.i.iface_ref_find.exit.thread_crit_edge:  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iface_ref_find.exit.thread

if.end.i.i.i:                                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %list14.i, ptr %prev.i.i, align 4
  %42 = ptrtoint ptr %list14.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %iface_ref_list.i, ptr %list14.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.snd_usb_iface_ref, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %43 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev3.i.i.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %list14.i, ptr %40, align 4
  br label %iface_ref_find.exit.thread

iface_ref_find.exit.thread:                       ; preds = %if.end.i.i.i, %if.end11.i.iface_ref_find.exit.thread_crit_edge
  %iface_ref260 = getelementptr i8, ptr %.pn.i, i32 -5352
  %45 = ptrtoint ptr %iface_ref260 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call7.i.i.i, ptr %iface_ref260, align 4
  br label %if.end39

iface_ref_find.exit:                              ; preds = %for.body.i244
  %ip.0.i.le = getelementptr i8, ptr %.pn.i240, i32 -8
  %iface_ref = getelementptr i8, ptr %.pn.i, i32 -5352
  %46 = ptrtoint ptr %iface_ref to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %ip.0.i.le, ptr %iface_ref, align 4
  %tobool37.not = icmp eq ptr %ip.0.i.le, null
  br i1 %tobool37.not, label %iface_ref_find.exit.unlock_crit_edge, label %iface_ref_find.exit.if.end39_crit_edge

iface_ref_find.exit.if.end39_crit_edge:           ; preds = %iface_ref_find.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

iface_ref_find.exit.unlock_crit_edge:             ; preds = %iface_ref_find.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end39:                                         ; preds = %iface_ref_find.exit.if.end39_crit_edge, %iface_ref_find.exit.thread
  %cur_audiofmt = getelementptr i8, ptr %.pn.i, i32 -80
  %47 = ptrtoint ptr %cur_audiofmt to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %fp, ptr %cur_audiofmt, align 4
  %channels = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 2
  %48 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %channels, align 8
  %cur_channels = getelementptr i8, ptr %.pn.i, i32 -68
  %50 = ptrtoint ptr %cur_channels to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %cur_channels, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %51 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i.i, align 4
  %cur_rate = getelementptr i8, ptr %.pn.i, i32 -76
  %53 = ptrtoint ptr %cur_rate to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %cur_rate, align 4
  %arrayidx.i.i246 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %54 = ptrtoint ptr %arrayidx.i.i246 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i.i246, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i.i = icmp eq i32 %55, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %if.end39.if.then.i.i_crit_edge

if.end39.if.then.i.i_crit_edge:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %if.end39.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %if.end39.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %55, %if.end39.if.then.i.i_crit_edge ], [ %58, %for.inc.i.i.if.then.i.i_crit_edge ]
  %56 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #12, !range !131
  %add.i.i = or i32 %56, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %if.end39
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %57 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.1.i.i = icmp eq i32 %58, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  %cur_format = getelementptr i8, ptr %.pn.i, i32 -72
  %59 = ptrtoint ptr %cur_format to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %retval.0.i.i, ptr %cur_format, align 4
  %call43 = tail call i32 @snd_pcm_format_physical_width(i32 noundef %retval.0.i.i) #12
  %60 = ptrtoint ptr %cur_channels to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cur_channels, align 4
  %mul = mul i32 %61, %call43
  %div231 = lshr i32 %mul, 3
  %cur_frame_bytes = getelementptr i8, ptr %.pn.i, i32 -64
  %62 = ptrtoint ptr %cur_frame_bytes to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %div231, ptr %cur_frame_bytes, align 4
  %arrayidx.i.i247 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 5
  %63 = ptrtoint ptr %arrayidx.i.i247 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i.i247, align 4
  %cur_period_frames = getelementptr i8, ptr %.pn.i, i32 -60
  %65 = ptrtoint ptr %cur_period_frames to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %cur_period_frames, align 4
  %mul48 = mul i32 %64, %div231
  %cur_period_bytes = getelementptr i8, ptr %.pn.i, i32 -56
  %66 = ptrtoint ptr %cur_period_bytes to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %mul48, ptr %cur_period_bytes, align 4
  %arrayidx.i.i248 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 7
  %67 = ptrtoint ptr %arrayidx.i.i248 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i.i248, align 4
  %cur_buffer_periods = getelementptr i8, ptr %.pn.i, i32 -52
  %69 = ptrtoint ptr %cur_buffer_periods to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %cur_buffer_periods, align 4
  %clock = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 26
  %70 = ptrtoint ptr %clock to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %clock, align 8
  %cur_clock = getelementptr i8, ptr %.pn.i, i32 -48
  %72 = ptrtoint ptr %cur_clock to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %cur_clock, align 4
  %type = getelementptr i8, ptr %.pn.i, i32 -5336
  %73 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %74)
  %cmp = icmp eq i32 %74, 1
  br i1 %cmp, label %if.then51, label %params_format.exit.if.end52_crit_edge

params_format.exit.if.end52_crit_edge:            ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

if.then51:                                        ; preds = %params_format.exit
  %75 = ptrtoint ptr %iface33 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %iface33, align 4
  %conv.i249 = zext i8 %76 to i32
  %altsetting.i = getelementptr i8, ptr %.pn.i, i32 -5331
  %77 = ptrtoint ptr %altsetting.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %altsetting.i, align 1
  %conv1.i = zext i8 %78 to i32
  %call.i = tail call ptr @snd_usb_get_host_interface(ptr noundef %chip, i32 noundef %conv.i249, i32 noundef %conv1.i) #12
  %tobool.not.i250 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i250, label %if.then51.if.end52_crit_edge, label %if.end.i

if.then51.if.end52_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

if.end.i:                                         ; preds = %if.then51
  %endpoint.i = getelementptr inbounds %struct.usb_host_interface, ptr %call.i, i32 0, i32 3
  %79 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %endpoint.i, align 4
  %81 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %21, align 2
  %idxprom.i = zext i8 %82 to i32
  %arrayidx.i = getelementptr %struct.usb_host_endpoint, ptr %80, i32 %idxprom.i
  %83 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %84)
  %cmp.i = icmp ugt i8 %84, 8
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.if.else.i_crit_edge

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %bRefresh.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i, i32 0, i32 6
  %85 = ptrtoint ptr %bRefresh.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %bRefresh.i, align 1
  %87 = add i8 %86, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %87)
  %88 = icmp ult i8 %87, 9
  br i1 %88, label %if.then13.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.then13.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv5.i = zext i8 %86 to i32
  br label %if.end37.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  %dev.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %89 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %90, i32 0, i32 4
  %91 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %92)
  %cmp16.i = icmp eq i32 %92, 2
  br i1 %cmp16.i, label %if.else.i.if.end37.i_crit_edge, label %if.else20.i

if.else.i.if.end37.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37.i

if.else20.i:                                      ; preds = %if.else.i
  %bInterval.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i, i32 0, i32 5
  %93 = ptrtoint ptr %bInterval.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %bInterval.i, align 1
  %95 = add i8 %94, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %95)
  %96 = icmp ult i8 %95, 16
  br i1 %96, label %if.then29.i, label %if.else20.i.if.end37.i_crit_edge

if.else20.i.if.end37.i_crit_edge:                 ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37.i

if.then29.i:                                      ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv21.i = zext i8 %94 to i32
  %sub.i = add nsw i32 %conv21.i, -1
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then29.i, %if.else20.i.if.end37.i_crit_edge, %if.else.i.if.end37.i_crit_edge, %if.then13.i
  %.sink.i = phi i32 [ %sub.i, %if.then29.i ], [ %conv5.i, %if.then13.i ], [ 1, %if.else.i.if.end37.i_crit_edge ], [ 3, %if.else20.i.if.end37.i_crit_edge ]
  %syncinterval19.i = getelementptr i8, ptr %.pn.i, i32 -100
  %97 = ptrtoint ptr %syncinterval19.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %.sink.i, ptr %syncinterval19.i, align 4
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i, i32 0, i32 4
  %98 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %98, i32 2)
  %99 = load i16, ptr %wMaxPacketSize.i, align 1
  %100 = tail call i16 @llvm.bswap.i16(i16 %99) #12
  %conv38.i = zext i16 %100 to i32
  %syncmaxsize.i = getelementptr i8, ptr %.pn.i, i32 -112
  %101 = ptrtoint ptr %syncmaxsize.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %conv38.i, ptr %syncmaxsize.i, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.end37.i, %if.then51.if.end52_crit_edge, %params_format.exit.if.end52_crit_edge
  %implicit_fb = getelementptr inbounds %struct.audioformat, ptr %fp, i32 0, i32 13
  %102 = ptrtoint ptr %implicit_fb to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %implicit_fb, align 1, !range !127
  %implicit_fb_sync = getelementptr i8, ptr %.pn.i, i32 -84
  %104 = ptrtoint ptr %implicit_fb_sync to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %implicit_fb_sync, align 4
  %need_setup = getelementptr i8, ptr %.pn.i, i32 -82
  %105 = ptrtoint ptr %need_setup to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 1, ptr %need_setup, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_endpoint_open.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_endpoint_open, %if.then67)) #12
          to label %if.end146 [label %if.then67], !srcloc !130

if.then67:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  %dev68 = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %106 = ptrtoint ptr %dev68 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev68, align 4
  %dev69 = getelementptr inbounds %struct.usb_device, ptr %107, i32 0, i32 15
  %108 = ptrtoint ptr %cur_channels to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %cur_channels, align 4
  %110 = ptrtoint ptr %cur_rate to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %cur_rate, align 4
  %112 = ptrtoint ptr %cur_format to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %cur_format, align 4
  %call73 = tail call ptr @snd_pcm_format_name(i32 noundef %113) #12
  %114 = ptrtoint ptr %cur_period_bytes to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %cur_period_bytes, align 4
  %116 = ptrtoint ptr %cur_buffer_periods to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %cur_buffer_periods, align 4
  %118 = ptrtoint ptr %implicit_fb_sync to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %implicit_fb_sync, align 4, !range !127
  %120 = zext i8 %119 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_endpoint_open.__UNIQUE_ID_ddebug249, ptr noundef %dev69, ptr noundef nonnull @.str.14, i32 noundef %109, i32 noundef %111, ptr noundef %call73, i32 noundef %115, i32 noundef %117, i32 noundef %120) #12
  br label %if.end146

if.else82:                                        ; preds = %if.end
  %iface_ref83 = getelementptr i8, ptr %.pn.i, i32 -5352
  %121 = ptrtoint ptr %iface_ref83 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %iface_ref83, align 4
  %tobool84.not = icmp eq ptr %122, null
  br i1 %tobool84.not, label %do.end102, label %if.end.i253, !prof !132

do.end102:                                        ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 795, i32 noundef 9, ptr noundef null) #12
  br label %unlock

if.end.i253:                                      ; preds = %if.else82
  %cur_audiofmt.i = getelementptr i8, ptr %.pn.i, i32 -80
  %123 = ptrtoint ptr %cur_audiofmt.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %cur_audiofmt.i, align 4
  %cmp.not.i252 = icmp eq ptr %124, %fp
  br i1 %cmp.not.i252, label %if.end2.i, label %if.end.i253.do.end123_crit_edge

if.end.i253.do.end123_crit_edge:                  ; preds = %if.end.i253
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end123

if.end2.i:                                        ; preds = %if.end.i253
  %cur_rate.i = getelementptr i8, ptr %.pn.i, i32 -76
  %125 = ptrtoint ptr %cur_rate.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %cur_rate.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %127 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %128)
  %cmp3.not.i = icmp eq i32 %126, %128
  br i1 %cmp3.not.i, label %lor.lhs.false.i, label %if.end2.i.do.end123_crit_edge

if.end2.i.do.end123_crit_edge:                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end123

lor.lhs.false.i:                                  ; preds = %if.end2.i
  %cur_format.i = getelementptr i8, ptr %.pn.i, i32 -72
  %129 = ptrtoint ptr %cur_format.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %cur_format.i, align 4
  %arrayidx.i.i22.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %131 = ptrtoint ptr %arrayidx.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx.i.i22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool.not.i.i.i = icmp eq i32 %132, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %lor.lhs.false.i.if.then.i.i.i_crit_edge

lor.lhs.false.i.if.then.i.i.i_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %lor.lhs.false.i.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %lor.lhs.false.i.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %132, %lor.lhs.false.i.if.then.i.i.i_crit_edge ], [ %135, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %133 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #12, !range !131
  %add.i.i.i = or i32 %133, %i.09.lcssa.i.i.i
  br label %params_format.exit.i

for.inc.i.i.i:                                    ; preds = %lor.lhs.false.i
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %134 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool.not.1.i.i.i = icmp eq i32 %135, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_format.exit.i_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

for.inc.i.i.i.params_format.exit.i_crit_edge:     ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %params_format.exit.i

params_format.exit.i:                             ; preds = %for.inc.i.i.i.params_format.exit.i_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_format.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %130, i32 %retval.0.i.i.i)
  %cmp5.not.i = icmp eq i32 %130, %retval.0.i.i.i
  br i1 %cmp5.not.i, label %lor.lhs.false6.i, label %params_format.exit.i.do.end123_crit_edge

params_format.exit.i.do.end123_crit_edge:         ; preds = %params_format.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end123

lor.lhs.false6.i:                                 ; preds = %params_format.exit.i
  %cur_period_frames.i = getelementptr i8, ptr %.pn.i, i32 -60
  %136 = ptrtoint ptr %cur_period_frames.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %cur_period_frames.i, align 4
  %arrayidx.i.i23.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 5
  %138 = ptrtoint ptr %arrayidx.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx.i.i23.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %137, i32 %139)
  %cmp8.not.i = icmp eq i32 %137, %139
  br i1 %cmp8.not.i, label %endpoint_compatible.exit, label %lor.lhs.false6.i.do.end123_crit_edge

lor.lhs.false6.i.do.end123_crit_edge:             ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end123

endpoint_compatible.exit:                         ; preds = %lor.lhs.false6.i
  %cur_buffer_periods.i = getelementptr i8, ptr %.pn.i, i32 -52
  %140 = ptrtoint ptr %cur_buffer_periods.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %cur_buffer_periods.i, align 4
  %arrayidx.i.i24.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 7
  %142 = ptrtoint ptr %arrayidx.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx.i.i24.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %141, i32 %143)
  %cmp11.not.i = icmp eq i32 %141, %143
  br i1 %cmp11.not.i, label %do.body127, label %endpoint_compatible.exit.do.end123_crit_edge

endpoint_compatible.exit.do.end123_crit_edge:     ; preds = %endpoint_compatible.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end123

do.end123:                                        ; preds = %endpoint_compatible.exit.do.end123_crit_edge, %lor.lhs.false6.i.do.end123_crit_edge, %params_format.exit.i.do.end123_crit_edge, %if.end2.i.do.end123_crit_edge, %if.end.i253.do.end123_crit_edge
  %dev124 = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %144 = ptrtoint ptr %dev124 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev124, align 4
  %dev125 = getelementptr inbounds %struct.usb_device, ptr %145, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev125, ptr noundef nonnull @.str.16, i32 noundef %cond) #15
  br label %unlock

do.body127:                                       ; preds = %endpoint_compatible.exit
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_endpoint_open.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_endpoint_open, %if.then139)) #12
          to label %if.end146 [label %if.then139], !srcloc !130

if.then139:                                       ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #14
  %dev140 = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %146 = ptrtoint ptr %dev140 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev140, align 4
  %dev141 = getelementptr inbounds %struct.usb_device, ptr %147, i32 0, i32 15
  %148 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %opened, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_endpoint_open.__UNIQUE_ID_ddebug250, ptr noundef %dev141, ptr noundef nonnull @.str.18, i32 noundef %cond, i32 noundef %149) #12
  br label %if.end146

if.end146:                                        ; preds = %if.then139, %do.body127, %if.then67, %if.end52
  %iface_ref147 = getelementptr i8, ptr %.pn.i, i32 -5352
  %150 = ptrtoint ptr %iface_ref147 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %iface_ref147, align 4
  %opened148 = getelementptr inbounds %struct.snd_usb_iface_ref, ptr %151, i32 0, i32 2
  %152 = ptrtoint ptr %opened148 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %opened148, align 4
  %inc = add i32 %153, 1
  store i32 %inc, ptr %opened148, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool149.not = icmp eq i32 %153, 0
  br i1 %tobool149.not, label %if.then150, label %if.end146.if.end153_crit_edge

if.end146.if.end153_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end153

if.then150:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #14
  %154 = ptrtoint ptr %iface_ref147 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %iface_ref147, align 4
  %need_setup152 = getelementptr inbounds %struct.snd_usb_iface_ref, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %need_setup152 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 1, ptr %need_setup152, align 1
  br label %if.end153

if.end153:                                        ; preds = %if.then150, %if.end146.if.end153_crit_edge
  %157 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %opened, align 4
  %inc155 = add i32 %158, 1
  store i32 %inc155, ptr %opened, align 4
  br label %unlock

unlock:                                           ; preds = %if.end153, %do.end123, %do.end102, %iface_ref_find.exit.unlock_crit_edge, %iface_ref_find.exit.thread262, %do.end
  %ep.0 = phi ptr [ null, %do.end102 ], [ %ep.0.le.i, %if.end153 ], [ null, %do.end123 ], [ null, %do.end ], [ null, %iface_ref_find.exit.unlock_crit_edge ], [ null, %iface_ref_find.exit.thread262 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret ptr %ep.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_physical_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_pcm_format_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @snd_usb_endpoint_set_sync(ptr nocapture noundef readnone %chip, ptr nocapture noundef writeonly %data_ep, ptr noundef %sync_ep) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sync_source = getelementptr inbounds %struct.snd_usb_endpoint, ptr %data_ep, i32 0, i32 13
  %0 = ptrtoint ptr %sync_source to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %sync_ep, ptr %sync_source, align 4
  ret void
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_usb_endpoint_set_callback(ptr noundef %ep, ptr noundef %prepare, ptr noundef %retire, ptr noundef %data_subs) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %prepare_data_urb = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 10
  %0 = ptrtoint ptr %prepare_data_urb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %prepare, ptr %prepare_data_urb, align 4
  %retire_data_urb = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 11
  %1 = ptrtoint ptr %retire_data_urb to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %retire, ptr %retire_data_urb, align 4
  %tobool.not = icmp eq ptr %data_subs, null
  br i1 %tobool.not, label %entry.do.body5_crit_edge, label %if.then

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %lowlatency_playback = getelementptr inbounds %struct.snd_usb_substream, ptr %data_subs, i32 0, i32 31
  %2 = ptrtoint ptr %lowlatency_playback to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %lowlatency_playback, align 1, !range !127
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry.do.body5_crit_edge
  %.sink = phi i8 [ %3, %if.then ], [ 0, %entry.do.body5_crit_edge ]
  %4 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 49
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %.sink, ptr %4, align 1
  %data_subs6 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 12
  %6 = ptrtoint ptr %data_subs6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %data_subs, ptr %data_subs6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_usb_endpoint_close(ptr noundef %chip, ptr nocapture noundef %ep) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_endpoint_close.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_endpoint_close, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !130

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %ep_num = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 4
  %2 = ptrtoint ptr %ep_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ep_num, align 4
  %opened = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 2
  %4 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %opened, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_endpoint_close.__UNIQUE_ID_ddebug253, ptr noundef %dev3, ptr noundef nonnull @.str.20, i32 noundef %3, i32 noundef %5) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %iface_ref = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 1
  %6 = ptrtoint ptr %iface_ref to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iface_ref, align 4
  %opened4 = getelementptr inbounds %struct.snd_usb_iface_ref, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %opened4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %opened4, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr %opened4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool5.not = icmp eq i32 %dec, 0
  br i1 %tobool5.not, label %if.then6, label %do.end.if.end8_crit_edge

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %call7 = tail call fastcc i32 @endpoint_set_interface(ptr noundef %chip, ptr noundef %ep, i1 noundef zeroext false)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %do.end.if.end8_crit_edge
  %opened9 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 2
  %10 = ptrtoint ptr %opened9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %opened9, align 4
  %dec10 = add i32 %11, -1
  store i32 %dec10, ptr %opened9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec10)
  %tobool11.not = icmp eq i32 %dec10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end8.if.end32_crit_edge

if.end8.if.end32_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %iface = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 6
  %12 = ptrtoint ptr %iface to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %iface, align 4
  %altsetting = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 7
  %13 = ptrtoint ptr %altsetting to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %altsetting, align 1
  %cur_audiofmt = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 51
  %14 = ptrtoint ptr %cur_audiofmt to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %cur_audiofmt, align 4
  %cur_rate = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 52
  %15 = ptrtoint ptr %cur_rate to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %cur_rate, align 4
  %cur_clock = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 59
  %16 = ptrtoint ptr %cur_clock to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %cur_clock, align 4
  %17 = ptrtoint ptr %iface_ref to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %iface_ref, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_endpoint_close.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_endpoint_close, %if.then26)) #12
          to label %if.end32 [label %if.then26], !srcloc !130

if.then26:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  %dev27 = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %18 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev27, align 4
  %dev28 = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 15
  %ep_num29 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 4
  %20 = ptrtoint ptr %ep_num29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ep_num29, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_endpoint_close.__UNIQUE_ID_ddebug254, ptr noundef %dev28, ptr noundef nonnull @.str.21, i32 noundef %21) #12
  br label %if.end32

if.end32:                                         ; preds = %if.then26, %if.then12, %if.end8.if.end32_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @endpoint_set_interface(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %ep, i1 noundef zeroext %set) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %set, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %altsetting = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 7
  %0 = ptrtoint ptr %altsetting to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %altsetting, align 1
  %conv = zext i8 %1 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @endpoint_set_interface.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@endpoint_set_interface, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !130

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dev5 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %iface = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 6
  %4 = ptrtoint ptr %iface to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %iface, align 4
  %conv6 = zext i8 %5 to i32
  %ep_num = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 4
  %6 = ptrtoint ptr %ep_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ep_num, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @endpoint_set_interface.__UNIQUE_ID_ddebug252, ptr noundef %dev5, ptr noundef nonnull @.str.32, i32 noundef %conv6, i32 noundef %cond, i32 noundef %7) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %cond.end
  %dev7 = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %8 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev7, align 4
  %iface8 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 6
  %10 = ptrtoint ptr %iface8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %iface8, align 4
  %conv9 = zext i8 %11 to i32
  %call10 = tail call i32 @usb_set_interface(ptr noundef %9, i32 noundef %conv9, i32 noundef %cond) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %do.end15, label %if.end20

do.end15:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev7, align 4
  %dev17 = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %iface8 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %iface8, align 4
  %conv19 = zext i8 %15 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.33, i32 noundef %conv19, i32 noundef %cond, i32 noundef %call10) #15
  br label %cleanup

if.end20:                                         ; preds = %do.end
  %quirk_flags = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 12
  %16 = ptrtoint ptr %quirk_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %quirk_flags, align 4
  %and = and i32 %17, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %if.end20.cleanup_crit_edge, label %if.then22

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @msleep(i32 noundef 50) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end20.cleanup_crit_edge, %do.end15
  %retval.0 = phi i32 [ %call10, %do.end15 ], [ 0, %if.then22 ], [ 0, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @snd_usb_endpoint_suspend(ptr nocapture noundef %ep) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %need_setup = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 50
  %0 = ptrtoint ptr %need_setup to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %need_setup, align 2
  %iface_ref = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 1
  %1 = ptrtoint ptr %iface_ref to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %iface_ref, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %need_setup2 = getelementptr inbounds %struct.snd_usb_iface_ref, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %need_setup2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %need_setup2, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_usb_endpoint_sync_pending_stop(ptr noundef %ep) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ep, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @wait_clear_urbs(ptr noundef nonnull %ep)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wait_clear_urbs(ptr noundef %ep) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %state = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %state, i32 noundef 4) #12
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp.not = icmp eq i32 %2, 2
  br i1 %cmp.not, label %do.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %submitted_urbs = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 23
  %add.neg = sub i32 -100, %0
  br label %do.body

do.body:                                          ; preds = %if.end4.do.body_crit_edge, %do.body.preheader
  %call.i.i1 = tail call zeroext i1 @__kasan_check_read(ptr noundef %submitted_urbs, i32 noundef 4) #12
  %3 = ptrtoint ptr %submitted_urbs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %submitted_urbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.body.if.end13_crit_edge, label %if.end4

do.body.if.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.end4:                                          ; preds = %do.body
  %call5 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %5
  %cmp6 = icmp slt i32 %sub, 0
  br i1 %cmp6, label %if.end4.do.body_crit_edge, label %do.end11.critedge

if.end4.do.body_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end11.critedge:                                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ep, align 4
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %dev12 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15
  %ep_num = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 4
  %10 = ptrtoint ptr %ep_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ep_num, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.34, i32 noundef %4, i32 noundef %11) #15
  br label %if.end13

if.end13:                                         ; preds = %do.end11.critedge, %do.body.if.end13_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end13
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %state, ptr %state, i32 2, i32 0, ptr elementtype(i32) %state) #12, !srcloc !134
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %ep_state_update.exit, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i

ep_state_update.exit:                             ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %12, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !135
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult3.i.i.i.i)
  %cmp.i = icmp eq i32 %asmresult3.i.i.i.i, 2
  br i1 %cmp.i, label %if.then15, label %ep_state_update.exit.cleanup_crit_edge

ep_state_update.exit.cleanup_crit_edge:           ; preds = %ep_state_update.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then15:                                        ; preds = %ep_state_update.exit
  call void @__sanitizer_cov_trace_pc() #14
  %sync_sink = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 14
  %13 = ptrtoint ptr %sync_sink to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %sync_sink, align 4
  %prepare_data_urb.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 10
  %14 = ptrtoint ptr %prepare_data_urb.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %prepare_data_urb.i, align 4
  %retire_data_urb.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 11
  %15 = ptrtoint ptr %retire_data_urb.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %retire_data_urb.i, align 4
  %16 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 49
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %16, align 1
  %data_subs6.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 12
  %18 = ptrtoint ptr %data_subs6.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr null, ptr %data_subs6.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %ep_state_update.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_usb_endpoint_configure(ptr noundef %chip, ptr noundef %ep) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %iface_ref = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %iface_ref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iface_ref, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23.critedge, !prof !132

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1335, i32 noundef 9, ptr noundef null) #12
  br label %unlock

if.end23.critedge:                                ; preds = %entry
  %need_setup = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 50
  %2 = ptrtoint ptr %need_setup to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %need_setup, align 2, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool24.not = icmp eq i8 %3, 0
  br i1 %tobool24.not, label %if.end23.critedge.unlock_crit_edge, label %if.end26

if.end23.critedge.unlock_crit_edge:               ; preds = %if.end23.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end26:                                         ; preds = %if.end23.critedge
  %need_setup28 = getelementptr inbounds %struct.snd_usb_iface_ref, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %need_setup28 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %need_setup28, align 1, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool29.not = icmp eq i8 %5, 0
  br i1 %tobool29.not, label %if.then30, label %if.end44

if.then30:                                        ; preds = %if.end26
  %cur_audiofmt = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 51
  %6 = ptrtoint ptr %cur_audiofmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_audiofmt, align 4
  %protocol = getelementptr inbounds %struct.audioformat, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %protocol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp = icmp eq i8 %9, 0
  br i1 %cmp, label %if.then32, label %if.then30.if.end38_crit_edge

if.then30.if.end38_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then32:                                        ; preds = %if.then30
  %cur_rate = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 52
  %10 = ptrtoint ptr %cur_rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cur_rate, align 4
  %call = tail call i32 @snd_usb_init_sample_rate(ptr noundef %chip, ptr noundef %7, i32 noundef %11) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp34 = icmp slt i32 %call, 0
  br i1 %cmp34, label %if.then32.unlock_crit_edge, label %if.then32.if.end38_crit_edge

if.then32.if.end38_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then32.unlock_crit_edge:                       ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end38:                                         ; preds = %if.then32.if.end38_crit_edge, %if.then30.if.end38_crit_edge
  %call39 = tail call fastcc i32 @snd_usb_endpoint_set_params(ptr noundef %chip, ptr noundef %ep)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.end38.unlock_crit_edge, label %if.end38.done_crit_edge

if.end38.done_crit_edge:                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.end38.unlock_crit_edge:                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end44:                                         ; preds = %if.end26
  %call45 = tail call fastcc i32 @endpoint_set_interface(ptr noundef %chip, ptr noundef %ep, i1 noundef zeroext false)
  %cur_audiofmt46 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 51
  %12 = ptrtoint ptr %cur_audiofmt46 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cur_audiofmt46, align 4
  %protocol47 = getelementptr inbounds %struct.audioformat, ptr %13, i32 0, i32 19
  %14 = ptrtoint ptr %protocol47 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %protocol47, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp49 = icmp eq i8 %15, 0
  %quirk_flags = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 12
  %16 = ptrtoint ptr %quirk_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %quirk_flags, align 4
  %and = and i32 %17, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool51.not = icmp ne i32 %and, 0
  %narrow = select i1 %tobool51.not, i1 true, i1 %cmp49
  br i1 %narrow, label %if.then55, label %if.end44.if.end61_crit_edge

if.end44.if.end61_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.then55:                                        ; preds = %if.end44
  %call56 = tail call fastcc i32 @endpoint_set_interface(ptr noundef %chip, ptr noundef %ep, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.then55.unlock_crit_edge, label %if.then55.if.end61_crit_edge

if.then55.if.end61_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.then55.unlock_crit_edge:                       ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end61:                                         ; preds = %if.then55.if.end61_crit_edge, %if.end44.if.end61_crit_edge
  %18 = ptrtoint ptr %cur_audiofmt46 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cur_audiofmt46, align 4
  %call63 = tail call i32 @snd_usb_init_pitch(ptr noundef %chip, ptr noundef %19) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.end61.unlock_crit_edge, label %if.end67

if.end61.unlock_crit_edge:                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end67:                                         ; preds = %if.end61
  %20 = ptrtoint ptr %cur_audiofmt46 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cur_audiofmt46, align 4
  %cur_rate69 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 52
  %22 = ptrtoint ptr %cur_rate69 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cur_rate69, align 4
  %call70 = tail call i32 @snd_usb_init_sample_rate(ptr noundef %chip, ptr noundef %21, i32 noundef %23) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %if.end67.unlock_crit_edge, label %if.end74

if.end67.unlock_crit_edge:                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end74:                                         ; preds = %if.end67
  %call75 = tail call fastcc i32 @snd_usb_endpoint_set_params(ptr noundef %chip, ptr noundef %ep)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %if.end74.unlock_crit_edge, label %if.end79

if.end74.unlock_crit_edge:                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end79:                                         ; preds = %if.end74
  %24 = ptrtoint ptr %cur_audiofmt46 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cur_audiofmt46, align 4
  %call81 = tail call i32 @snd_usb_select_mode_quirk(ptr noundef %chip, ptr noundef %25) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %if.end79.unlock_crit_edge, label %if.end85

if.end79.unlock_crit_edge:                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end85:                                         ; preds = %if.end79
  br i1 %narrow, label %if.end85.if.end93_crit_edge, label %if.then87

if.end85.if.end93_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

if.then87:                                        ; preds = %if.end85
  %call88 = tail call fastcc i32 @endpoint_set_interface(ptr noundef %chip, ptr noundef %ep, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89 = icmp slt i32 %call88, 0
  br i1 %cmp89, label %if.then87.unlock_crit_edge, label %if.then87.if.end93_crit_edge

if.then87.if.end93_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

if.then87.unlock_crit_edge:                       ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end93:                                         ; preds = %if.then87.if.end93_crit_edge, %if.end85.if.end93_crit_edge
  %26 = ptrtoint ptr %iface_ref to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iface_ref, align 4
  %need_setup95 = getelementptr inbounds %struct.snd_usb_iface_ref, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %need_setup95 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %need_setup95, align 1
  br label %done

done:                                             ; preds = %if.end93, %if.end38.done_crit_edge
  %29 = ptrtoint ptr %need_setup to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %need_setup, align 2
  br label %unlock

unlock:                                           ; preds = %done, %if.then87.unlock_crit_edge, %if.end79.unlock_crit_edge, %if.end74.unlock_crit_edge, %if.end67.unlock_crit_edge, %if.end61.unlock_crit_edge, %if.then55.unlock_crit_edge, %if.end38.unlock_crit_edge, %if.then32.unlock_crit_edge, %if.end23.critedge.unlock_crit_edge, %do.end
  %err.0 = phi i32 [ %call56, %if.then55.unlock_crit_edge ], [ %call63, %if.end61.unlock_crit_edge ], [ %call70, %if.end67.unlock_crit_edge ], [ %call75, %if.end74.unlock_crit_edge ], [ %call81, %if.end79.unlock_crit_edge ], [ 1, %done ], [ %call88, %if.then87.unlock_crit_edge ], [ %call, %if.then32.unlock_crit_edge ], [ %call39, %if.end38.unlock_crit_edge ], [ 0, %if.end23.critedge.unlock_crit_edge ], [ 0, %do.end ]
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_init_sample_rate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_usb_endpoint_set_params(ptr nocapture noundef readonly %chip, ptr noundef %ep) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_audiofmt = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 51
  %0 = ptrtoint ptr %cur_audiofmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_audiofmt, align 4
  %call = tail call fastcc i32 @release_urbs(ptr noundef %ep, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %datainterval = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %datainterval to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %datainterval, align 4
  %conv = zext i8 %3 to i32
  %datainterval1 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 43
  %4 = ptrtoint ptr %datainterval1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %datainterval1, align 4
  %maxpacksize = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %maxpacksize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %maxpacksize, align 8
  %maxpacksize2 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 36
  %7 = ptrtoint ptr %maxpacksize2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %maxpacksize2, align 4
  %attributes = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %attributes to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %attributes, align 4
  %fill_max = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 42
  %.lobit = and i8 %9, -128
  %10 = ptrtoint ptr %fill_max to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %fill_max, align 4
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %.lobit
  store i8 %bf.set, ptr %fill_max, align 4
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %speed = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp5 = icmp eq i32 %14, 2
  %cur_rate = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 52
  %15 = ptrtoint ptr %cur_rate to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cur_rate, align 4
  %. = select i1 %cmp5, i32 13, i32 10
  %.98 = select i1 %cmp5, i32 1000, i32 8000
  %shl.i94 = shl i32 %16, %.
  %shr14.sink = lshr i32 %.98, %conv
  %div.i96.sink.in = or i32 %shl.i94, 62
  %div.i96.sink = udiv i32 %div.i96.sink.in, 125
  %17 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 31
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div.i96.sink, ptr %17, align 4
  %19 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 30
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shr14.sink, ptr %19, align 4
  %cur_rate17 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 52
  %21 = ptrtoint ptr %cur_rate17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cur_rate17, align 4
  %.frozen = freeze i32 %22
  %shr14.sink.frozen = freeze i32 %shr14.sink
  %div = udiv i32 %.frozen, %shr14.sink.frozen
  %23 = mul i32 %div, %shr14.sink.frozen
  %rem.decomposed = sub i32 %.frozen, %23
  %sample_rem = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 28
  %24 = ptrtoint ptr %sample_rem to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %rem.decomposed, ptr %sample_rem, align 4
  %packsize = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 27
  %25 = ptrtoint ptr %packsize to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div, ptr %packsize, align 4
  %sub = add i32 %22, -1
  %add = add i32 %sub, %shr14.sink
  %div24 = udiv i32 %add, %shr14.sink
  %arrayidx26 = getelementptr %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 27, i32 1
  %26 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div24, ptr %arrayidx26, align 4
  %freqm = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 32
  %27 = ptrtoint ptr %freqm to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %div.i96.sink, ptr %freqm, align 4
  %freqshift = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 33
  %28 = ptrtoint ptr %freqshift to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -2147483648, ptr %freqshift, align 4
  %phase = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 35
  %29 = ptrtoint ptr %phase to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %phase, align 4
  %type = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 5
  %30 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %type, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %31, label %if.end.do.body_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb29
  ]

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call28 = tail call fastcc i32 @data_ep_set_params(ptr noundef %ep)
  br label %do.body

sw.bb29:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call30 = tail call fastcc i32 @sync_ep_set_params(ptr noundef %ep)
  br label %do.body

do.body:                                          ; preds = %sw.bb29, %sw.bb, %if.end.do.body_crit_edge
  %err.0 = phi i32 [ %call30, %sw.bb29 ], [ %call28, %sw.bb ], [ -22, %if.end.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_endpoint_set_params.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_endpoint_set_params, %if.then38)) #12
          to label %do.end [label %if.then38], !srcloc !130

if.then38:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  %dev40 = getelementptr inbounds %struct.usb_device, ptr %34, i32 0, i32 15
  %nurbs = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 20
  %35 = ptrtoint ptr %nurbs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nurbs, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_endpoint_set_params.__UNIQUE_ID_ddebug269, ptr noundef %dev40, ptr noundef nonnull @.str.37, i32 noundef %36, i32 noundef %err.0) #12
  br label %do.end

do.end:                                           ; preds = %if.then38, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp42 = icmp slt i32 %err.0, 0
  br i1 %cmp42, label %do.end.cleanup_crit_edge, label %if.end45

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end45:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %maxpacksize2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %maxpacksize2, align 4
  %cur_frame_bytes = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 55
  %39 = ptrtoint ptr %cur_frame_bytes to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cur_frame_bytes, align 4
  %div47 = udiv i32 %38, %40
  %maxframesize = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 37
  %41 = ptrtoint ptr %maxframesize to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %div47, ptr %maxframesize, align 4
  %curpacksize = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 39
  %42 = ptrtoint ptr %curpacksize to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %curpacksize, align 4
  %div49 = udiv i32 %43, %40
  %curframesize = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 40
  %44 = ptrtoint ptr %curframesize to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %div49, ptr %curframesize, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end45 ], [ %call, %entry.cleanup_crit_edge ], [ %err.0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_init_pitch(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_select_mode_quirk(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_usb_endpoint_get_clock_rate(ptr noundef %chip, i32 noundef %clock) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clock)
  %tobool.not = icmp eq i32 %clock, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %ep_list = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 19
  %0 = ptrtoint ptr %ep_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn23 = load ptr, ptr %ep_list, align 4
  %cmp.not24 = icmp eq ptr %.pn23, %ep_list
  br i1 %cmp.not24, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn25 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn23, %if.end.for.body_crit_edge ]
  %cur_clock = getelementptr i8, ptr %.pn25, i32 -48
  %1 = ptrtoint ptr %cur_clock to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %cur_clock, align 4
  %conv = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %clock)
  %cmp2 = icmp eq i32 %conv, %clock
  br i1 %cmp2, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %cur_rate = getelementptr i8, ptr %.pn25, i32 -76
  %3 = ptrtoint ptr %cur_rate to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cur_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not = icmp eq i32 %4, 0
  br i1 %tobool4.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.for.end_crit_edge

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %5 = ptrtoint ptr %.pn25 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn25, align 4
  %cmp.not = icmp eq ptr %.pn, %ep_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true.for.end_crit_edge, %if.end.for.end_crit_edge
  %rate.0 = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %4, %land.lhs.true.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rate.0, %for.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_usb_endpoint_start(ptr noundef %ep) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 26
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pipe, align 4
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %2 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep, align 4
  %shutdown = getelementptr inbounds %struct.snd_usb_audio, ptr %3, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %shutdown, i32 noundef 4) #12
  %4 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %shutdown, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.end, label %entry.cleanup196_crit_edge

entry.cleanup196_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup196

if.end:                                           ; preds = %entry
  %sync_source = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 13
  %6 = ptrtoint ptr %sync_source to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sync_source, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.do.body12_crit_edge, label %do.body5

if.end.do.body12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12

do.body5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %sync_sink = getelementptr inbounds %struct.snd_usb_endpoint, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %sync_sink to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %ep, ptr %sync_sink, align 4
  br label %do.body12

do.body12:                                        ; preds = %do.body5, %if.end.do.body12_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_endpoint_start.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_endpoint_start, %if.then19)) #12
          to label %do.end25 [label %if.then19], !srcloc !130

if.then19:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ep, align 4
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %dev21 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  %type = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 5
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp eq i32 %14, 0
  %cond = select i1 %cmp, ptr @.str.8, ptr @.str.9
  %ep_num = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 4
  %15 = ptrtoint ptr %ep_num to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ep_num, align 4
  %running = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 3
  %call.i.i253 = tail call zeroext i1 @__kasan_check_read(ptr noundef %running, i32 noundef 4) #12
  %17 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %running, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_endpoint_start.__UNIQUE_ID_ddebug271, ptr noundef %dev21, ptr noundef nonnull @.str.23, ptr noundef nonnull %cond, i32 noundef %16, i32 noundef %18) #12
  br label %do.end25

do.end25:                                         ; preds = %if.then19, %do.body12
  %running26 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 3
  %call.i.i254 = tail call zeroext i1 @__kasan_check_write(ptr noundef %running26, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !136
  tail call void @llvm.prefetch.p0(ptr %running26, i32 1, i32 3, i32 1) #12
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %running26, ptr %running26, i32 1, ptr elementtype(i32) %running26) #12, !srcloc !137
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !138
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp28.not = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp28.not, label %if.end30, label %do.end25.cleanup196_crit_edge

do.end25.cleanup196_crit_edge:                    ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup196

if.end30:                                         ; preds = %do.end25
  %active_mask = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 21
  %20 = ptrtoint ptr %active_mask to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %active_mask, align 4
  %unlink_mask = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 22
  %21 = ptrtoint ptr %unlink_mask to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %unlink_mask, align 4
  %phase = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 35
  %22 = ptrtoint ptr %phase to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %phase, align 4
  %sample_accum = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 29
  %23 = ptrtoint ptr %sample_accum to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %sample_accum, align 4
  tail call void @snd_usb_endpoint_start_quirk(ptr noundef %ep) #12
  %state.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr %state.i, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end30
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %state.i, ptr %state.i, i32 0, i32 1, ptr elementtype(i32) %state.i) #12, !srcloc !134
  %asmresult.i.i.i.i268 = extractvalue { i32, i32 } %24, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i268, 0
  br i1 %tobool.not.i.i.i.i, label %ep_state_update.exit, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i

ep_state_update.exit:                             ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %24, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i.i)
  %cmp.i = icmp eq i32 %asmresult3.i.i.i.i, 0
  br i1 %cmp.i, label %if.end33, label %ep_state_update.exit.__error_crit_edge

ep_state_update.exit.__error_crit_edge:           ; preds = %ep_state_update.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %__error

if.end33:                                         ; preds = %ep_state_update.exit
  %implicit_fb_sync.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 48
  %25 = ptrtoint ptr %implicit_fb_sync.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %implicit_fb_sync.i, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %if.end33.if.end59_crit_edge, label %snd_usb_endpoint_implicit_feedback_sink.exit

if.end33.if.end59_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

snd_usb_endpoint_implicit_feedback_sink.exit:     ; preds = %if.end33
  %27 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pipe, align 4
  %29 = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool35.not.not = icmp eq i32 %29, 0
  br i1 %tobool35.not.not, label %land.lhs.true, label %snd_usb_endpoint_implicit_feedback_sink.exit.if.end59_crit_edge

snd_usb_endpoint_implicit_feedback_sink.exit.if.end59_crit_edge: ; preds = %snd_usb_endpoint_implicit_feedback_sink.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

land.lhs.true:                                    ; preds = %snd_usb_endpoint_implicit_feedback_sink.exit
  %30 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ep, align 4
  %quirk_flags = getelementptr inbounds %struct.snd_usb_audio, ptr %31, i32 0, i32 12
  %32 = ptrtoint ptr %quirk_flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %quirk_flags, align 4
  %and37 = and i32 %33, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %do.body40, label %land.lhs.true.if.end59_crit_edge

land.lhs.true.if.end59_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

do.body40:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_endpoint_start.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_endpoint_start, %if.then52)) #12
          to label %fill_rest [label %if.then52], !srcloc !130

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ep, align 4
  %dev54 = getelementptr inbounds %struct.snd_usb_audio, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %dev54 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev54, align 4
  %dev55 = getelementptr inbounds %struct.usb_device, ptr %37, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_endpoint_start.__UNIQUE_ID_ddebug272, ptr noundef %dev55, ptr noundef nonnull @.str.24) #12
  br label %fill_rest

if.end59:                                         ; preds = %land.lhs.true.if.end59_crit_edge, %snd_usb_endpoint_implicit_feedback_sink.exit.if.end59_crit_edge, %if.end33.if.end59_crit_edge
  %nurbs = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 20
  %38 = ptrtoint ptr %nurbs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nurbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp60288.not = icmp eq i32 %39, 0
  br i1 %cmp60288.not, label %if.end59.do.body144_crit_edge, label %for.body.lr.ph

if.end59.do.body144_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body144

for.body.lr.ph:                                   ; preds = %if.end59
  %type.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 5
  %syncmaxsize.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 41
  %curpacksize.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 39
  %submitted_urbs = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 23
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0289 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 15, i32 %i.0289
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx, align 4
  %tobool63.not = icmp eq ptr %41, null
  br i1 %tobool63.not, label %do.end81, label %if.end97, !prof !132

do.end81:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1486, i32 noundef 9, ptr noundef null) #12
  br label %__error

if.end97:                                         ; preds = %for.body
  %context = getelementptr inbounds %struct.urb, ptr %41, i32 0, i32 27
  %42 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %context, align 4
  br i1 %tobool.not, label %if.end103, label %if.else

if.else:                                          ; preds = %if.end97
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %46 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ep, align 4
  %dev.i = getelementptr inbounds %struct.snd_usb_audio, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 4
  %dev2.i = getelementptr inbounds %struct.urb, ptr %45, i32 0, i32 8
  %50 = ptrtoint ptr %dev2.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %dev2.i, align 4
  %51 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %type.i, align 4
  %53 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %52, label %if.else.if.end129_crit_edge [
    i32 0, label %for.cond.preheader.i
    i32 1, label %sw.bb7.i
  ]

if.else.if.end129_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end129

for.cond.preheader.i:                             ; preds = %if.else
  %packets.i = getelementptr inbounds %struct.snd_urb_ctx, ptr %43, i32 0, i32 5
  %54 = ptrtoint ptr %packets.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %packets.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp1.i = icmp sgt i32 %55, 0
  br i1 %cmp1.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.03.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %offs.02.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.urb, ptr %45, i32 0, i32 29, i32 %i.03.i
  %56 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %offs.02.i, ptr %arrayidx.i, align 4
  %57 = ptrtoint ptr %curpacksize.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %curpacksize.i, align 4
  %length.i = getelementptr %struct.urb, ptr %45, i32 0, i32 29, i32 %i.03.i, i32 1
  %59 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %length.i, align 4
  %60 = load i32, ptr %curpacksize.i, align 4
  %add.i = add i32 %60, %offs.02.i
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %61 = ptrtoint ptr %packets.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %packets.i, align 4
  %cmp.i269 = icmp slt i32 %inc.i, %62
  br i1 %cmp.i269, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %offs.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %add.i, %for.body.i.for.end.i_crit_edge ]
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %45, i32 0, i32 19
  %63 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %offs.0.lcssa.i, ptr %transfer_buffer_length.i, align 4
  %64 = ptrtoint ptr %packets.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %packets.i, align 4
  %number_of_packets.i = getelementptr inbounds %struct.urb, ptr %45, i32 0, i32 24
  %66 = ptrtoint ptr %number_of_packets.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %number_of_packets.i, align 4
  br label %if.end129

sw.bb7.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %67 = ptrtoint ptr %syncmaxsize.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %syncmaxsize.i, align 4
  %69 = tail call i32 @llvm.umin.i32(i32 %68, i32 4) #12
  %iso_frame_desc9.i = getelementptr inbounds %struct.urb, ptr %45, i32 0, i32 29
  %length11.i = getelementptr inbounds %struct.urb, ptr %45, i32 1, i32 1
  %70 = ptrtoint ptr %length11.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %length11.i, align 4
  %71 = ptrtoint ptr %iso_frame_desc9.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %iso_frame_desc9.i, align 4
  br label %if.end129

if.end103:                                        ; preds = %if.end97
  %call100 = tail call fastcc i32 @prepare_outbound_urb(ptr noundef %ep, ptr noundef %43, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp104 = icmp slt i32 %call100, 0
  br i1 %cmp104, label %if.then105, label %if.end103.if.end129_crit_edge

if.end103.if.end129_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end129

if.then105:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call100)
  %cmp106 = icmp eq i32 %call100, -11
  br i1 %cmp106, label %for.end, label %do.body109

do.body109:                                       ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_endpoint_start.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_endpoint_start, %if.then121)) #12
          to label %__error [label %if.then121], !srcloc !130

if.then121:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ep, align 4
  %dev123 = getelementptr inbounds %struct.snd_usb_audio, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %dev123 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev123, align 4
  %dev124 = getelementptr inbounds %struct.usb_device, ptr %75, i32 0, i32 15
  %ep_num125 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 4
  %76 = ptrtoint ptr %ep_num125 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ep_num125, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_endpoint_start.__UNIQUE_ID_ddebug273, ptr noundef %dev124, ptr noundef nonnull @.str.25, i32 noundef %77, i32 noundef %call100) #12
  br label %__error

if.end129:                                        ; preds = %if.end103.if.end129_crit_edge, %sw.bb7.i, %for.end.i, %if.else.if.end129_crit_edge
  %call130 = tail call i32 @usb_submit_urb(ptr noundef nonnull %41, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %cmp131 = icmp slt i32 %call130, 0
  br i1 %cmp131, label %do.end135, label %for.inc

do.end135:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #14
  %78 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ep, align 4
  %dev137 = getelementptr inbounds %struct.snd_usb_audio, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %dev137 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev137, align 4
  %dev138 = getelementptr inbounds %struct.usb_device, ptr %81, i32 0, i32 15
  %call139 = tail call fastcc ptr @usb_error_string(i32 noundef %call130)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev138, ptr noundef nonnull @.str.26, i32 noundef %i.0289, i32 noundef %call130, ptr noundef nonnull %call139) #15
  br label %__error

for.inc:                                          ; preds = %if.end129
  tail call void @_set_bit(i32 noundef %i.0289, ptr noundef %active_mask) #12
  %call.i.i261 = tail call zeroext i1 @__kasan_check_write(ptr noundef %submitted_urbs, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %submitted_urbs, i32 1, i32 3, i32 1) #12
  %82 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %submitted_urbs, ptr %submitted_urbs, i32 1, ptr elementtype(i32) %submitted_urbs) #12, !srcloc !129
  %inc = add nuw i32 %i.0289, 1
  %83 = ptrtoint ptr %nurbs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %nurbs, align 4
  %cmp60 = icmp ult i32 %inc, %84
  br i1 %cmp60, label %for.inc.for.body_crit_edge, label %for.inc.do.body165_crit_edge

for.inc.do.body165_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body165

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.then105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0289)
  %tobool142.not = icmp eq i32 %i.0289, 0
  br i1 %tobool142.not, label %for.end.do.body144_crit_edge, label %for.end.do.body165_crit_edge

for.end.do.body165_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body165

for.end.do.body144_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body144

do.body144:                                       ; preds = %for.end.do.body144_crit_edge, %if.end59.do.body144_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_endpoint_start.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_endpoint_start, %if.then156)) #12
          to label %__error [label %if.then156], !srcloc !130

if.then156:                                       ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #14
  %85 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ep, align 4
  %dev158 = getelementptr inbounds %struct.snd_usb_audio, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %dev158 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev158, align 4
  %dev159 = getelementptr inbounds %struct.usb_device, ptr %88, i32 0, i32 15
  %ep_num160 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 4
  %89 = ptrtoint ptr %ep_num160 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %ep_num160, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_endpoint_start.__UNIQUE_ID_ddebug274, ptr noundef %dev159, ptr noundef nonnull @.str.27, i32 noundef %90) #12
  br label %__error

do.body165:                                       ; preds = %for.end.do.body165_crit_edge, %for.inc.do.body165_crit_edge
  %i.0287302 = phi i32 [ %i.0289, %for.end.do.body165_crit_edge ], [ %inc, %for.inc.do.body165_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_endpoint_start.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_endpoint_start, %if.then177)) #12
          to label %fill_rest [label %if.then177], !srcloc !130

if.then177:                                       ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #14
  %91 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ep, align 4
  %dev179 = getelementptr inbounds %struct.snd_usb_audio, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %dev179 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev179, align 4
  %dev180 = getelementptr inbounds %struct.usb_device, ptr %94, i32 0, i32 15
  %ep_num181 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 4
  %95 = ptrtoint ptr %ep_num181 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %ep_num181, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_endpoint_start.__UNIQUE_ID_ddebug275, ptr noundef %dev180, ptr noundef nonnull @.str.28, i32 noundef %i.0287302, i32 noundef %96) #12
  br label %fill_rest

fill_rest:                                        ; preds = %if.then177, %do.body165, %if.then52, %do.body40
  %i.1 = phi i32 [ %i.0287302, %if.then177 ], [ 0, %if.then52 ], [ 0, %do.body40 ], [ %i.0287302, %do.body165 ]
  br i1 %tobool.not, label %for.cond187.preheader, label %fill_rest.cleanup196_crit_edge

fill_rest.cleanup196_crit_edge:                   ; preds = %fill_rest
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup196

for.cond187.preheader:                            ; preds = %fill_rest
  %nurbs188 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 20
  %97 = ptrtoint ptr %nurbs188 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %nurbs188, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %98)
  %cmp189290 = icmp ult i32 %i.1, %98
  br i1 %cmp189290, label %for.body190.lr.ph, label %for.cond187.preheader.cleanup196_crit_edge

for.cond187.preheader.cleanup196_crit_edge:       ; preds = %for.cond187.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup196

for.body190.lr.ph:                                ; preds = %for.cond187.preheader
  %urb191 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 15
  %lock.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 60
  %ready_playback_urbs.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 19
  %prev.i.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 19, i32 1
  br label %for.body190

for.body190:                                      ; preds = %push_back_to_ready_list.exit.for.body190_crit_edge, %for.body190.lr.ph
  %i.2291 = phi i32 [ %i.1, %for.body190.lr.ph ], [ %inc193, %push_back_to_ready_list.exit.for.body190_crit_edge ]
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %ready_list.i = getelementptr %struct.snd_urb_ctx, ptr %urb191, i32 %i.2291, i32 8
  %99 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i270 = tail call zeroext i1 @__list_add_valid(ptr noundef %ready_list.i, ptr noundef %100, ptr noundef %ready_playback_urbs.i) #12
  br i1 %call.i.i.i270, label %if.end.i.i.i, label %for.body190.push_back_to_ready_list.exit_crit_edge

for.body190.push_back_to_ready_list.exit_crit_edge: ; preds = %for.body190
  call void @__sanitizer_cov_trace_pc() #14
  br label %push_back_to_ready_list.exit

if.end.i.i.i:                                     ; preds = %for.body190
  call void @__sanitizer_cov_trace_pc() #14
  %101 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %ready_list.i, ptr %prev.i.i, align 4
  %102 = ptrtoint ptr %ready_list.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %ready_playback_urbs.i, ptr %ready_list.i, align 4
  %prev3.i.i.i = getelementptr %struct.snd_urb_ctx, ptr %urb191, i32 %i.2291, i32 8, i32 1
  %103 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %100, ptr %prev3.i.i.i, align 4
  %104 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %ready_list.i, ptr %100, align 4
  br label %push_back_to_ready_list.exit

push_back_to_ready_list.exit:                     ; preds = %if.end.i.i.i, %for.body190.push_back_to_ready_list.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #12
  %inc193 = add nuw i32 %i.2291, 1
  %105 = ptrtoint ptr %nurbs188 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %nurbs188, align 4
  %cmp189 = icmp ult i32 %inc193, %106
  br i1 %cmp189, label %push_back_to_ready_list.exit.for.body190_crit_edge, label %push_back_to_ready_list.exit.cleanup196_crit_edge

push_back_to_ready_list.exit.cleanup196_crit_edge: ; preds = %push_back_to_ready_list.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup196

push_back_to_ready_list.exit.for.body190_crit_edge: ; preds = %push_back_to_ready_list.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body190

__error:                                          ; preds = %if.then156, %do.body144, %do.end135, %if.then121, %do.body109, %do.end81, %ep_state_update.exit.__error_crit_edge
  tail call void @snd_usb_endpoint_stop(ptr noundef %ep, i1 noundef zeroext false)
  br label %cleanup196

cleanup196:                                       ; preds = %__error, %push_back_to_ready_list.exit.cleanup196_crit_edge, %for.cond187.preheader.cleanup196_crit_edge, %fill_rest.cleanup196_crit_edge, %do.end25.cleanup196_crit_edge, %entry.cleanup196_crit_edge
  %retval.0 = phi i32 [ -32, %__error ], [ -77, %entry.cleanup196_crit_edge ], [ 0, %do.end25.cleanup196_crit_edge ], [ 0, %fill_rest.cleanup196_crit_edge ], [ 0, %for.cond187.preheader.cleanup196_crit_edge ], [ 0, %push_back_to_ready_list.exit.cleanup196_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_endpoint_start_quirk(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc nonnull ptr @usb_error_string(i32 noundef %err) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %err to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %err, label %sw.default [
    i32 -19, label %entry.return_crit_edge
    i32 -2, label %sw.bb1
    i32 -32, label %sw.bb2
    i32 -28, label %sw.bb3
    i32 -108, label %sw.bb4
    i32 -113, label %sw.bb5
    i32 -22, label %entry.sw.bb6_crit_edge
    i32 -11, label %entry.sw.bb6_crit_edge7
    i32 -27, label %entry.sw.bb6_crit_edge8
    i32 -90, label %entry.sw.bb6_crit_edge9
  ]

entry.sw.bb6_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6

entry.sw.bb6_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6

entry.sw.bb6_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge7, %entry.sw.bb6_crit_edge8, %entry.sw.bb6_crit_edge9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

return:                                           ; preds = %sw.default, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi ptr [ @.str.53, %sw.default ], [ @.str.52, %sw.bb6 ], [ @.str.51, %sw.bb5 ], [ @.str.50, %sw.bb4 ], [ @.str.49, %sw.bb3 ], [ @.str.48, %sw.bb2 ], [ @.str.47, %sw.bb1 ], [ @.str.46, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_usb_endpoint_stop(ptr noundef %ep, i1 noundef zeroext %keep_pending) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ep, null
  br i1 %tobool.not, label %entry.if.end64_crit_edge, label %do.body

entry.if.end64_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_endpoint_stop.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_endpoint_stop, %if.then5)) #12
          to label %do.end [label %if.then5], !srcloc !130

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dev6 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %type = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 5
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %cond = select i1 %cmp, ptr @.str.8, ptr @.str.9
  %ep_num = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 4
  %6 = ptrtoint ptr %ep_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ep_num, align 4
  %running = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %running, i32 noundef 4) #12
  %8 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %running, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_endpoint_stop.__UNIQUE_ID_ddebug276, ptr noundef %dev6, ptr noundef nonnull @.str.30, ptr noundef nonnull %cond, i32 noundef %7, i32 noundef %9) #12
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %running9 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 3
  %call.i.i75 = tail call zeroext i1 @__kasan_check_read(ptr noundef %running9, i32 noundef 4) #12
  %10 = ptrtoint ptr %running9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %running9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool11.not = icmp eq i32 %11, 0
  br i1 %tobool11.not, label %do.end28, label %if.end44.critedge, !prof !132

do.end28:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1561, i32 noundef 9, ptr noundef null) #12
  br label %if.end64

if.end44.critedge:                                ; preds = %do.end
  %call.i.i76 = tail call zeroext i1 @__kasan_check_write(ptr noundef %running9, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !139
  tail call void @llvm.prefetch.p0(ptr %running9, i32 1, i32 3, i32 1) #12
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %running9, ptr %running9, i32 1, ptr elementtype(i32) %running9) #12, !srcloc !140
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !141
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool47.not = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool47.not, label %if.then48, label %if.end44.critedge.if.end64_crit_edge

if.end44.critedge.if.end64_crit_edge:             ; preds = %if.end44.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

if.then48:                                        ; preds = %if.end44.critedge
  %sync_source = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 13
  %13 = ptrtoint ptr %sync_source to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sync_source, align 4
  %tobool49.not = icmp eq ptr %14, null
  br i1 %tobool49.not, label %if.then48.if.end61_crit_edge, label %do.body55

if.then48.if.end61_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

do.body55:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #14
  %sync_sink = getelementptr inbounds %struct.snd_usb_endpoint, ptr %14, i32 0, i32 14
  %15 = ptrtoint ptr %sync_sink to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr null, ptr %sync_sink, align 4
  br label %if.end61

if.end61:                                         ; preds = %do.body55, %if.then48.if.end61_crit_edge
  %call63 = tail call fastcc i32 @stop_urbs(ptr noundef nonnull %ep, i1 noundef zeroext false, i1 noundef zeroext %keep_pending)
  br label %if.end64

if.end64:                                         ; preds = %if.end61, %if.end44.critedge.if.end64_crit_edge, %do.end28, %entry.if.end64_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stop_urbs(ptr noundef %ep, i1 noundef zeroext %force, i1 noundef zeroext %keep_pending) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %force, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %running = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %running, i32 noundef 4) #12
  %0 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %state.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr %state.i, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %state.i, ptr %state.i, i32 1, i32 2, ptr elementtype(i32) %state.i) #12, !srcloc !134
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %ep_state_update.exit, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i

ep_state_update.exit:                             ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %2, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !135
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult3.i.i.i.i)
  %cmp.i = icmp eq i32 %asmresult3.i.i.i.i, 1
  br i1 %cmp.i, label %do.body6, label %ep_state_update.exit.cleanup_crit_edge

ep_state_update.exit.cleanup_crit_edge:           ; preds = %ep_state_update.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body6:                                         ; preds = %ep_state_update.exit
  %lock = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 60
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %ready_playback_urbs = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 19
  %3 = ptrtoint ptr %ready_playback_urbs to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %ready_playback_urbs, ptr %ready_playback_urbs, align 4
  %prev.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 19, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ready_playback_urbs, ptr %prev.i, align 4
  %next_packet_head = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 17
  %5 = ptrtoint ptr %next_packet_head to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %next_packet_head, align 4
  %next_packet_queued = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 18
  %6 = ptrtoint ptr %next_packet_queued to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %next_packet_queued, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #12
  br i1 %keep_pending, label %do.body6.cleanup_crit_edge, label %for.cond.preheader

do.body6.cleanup_crit_edge:                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %do.body6
  %nurbs = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 20
  %7 = ptrtoint ptr %nurbs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nurbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1542.not = icmp eq i32 %8, 0
  br i1 %cmp1542.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %active_mask = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 21
  %unlink_mask = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.043 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %div3.i = lshr i32 %i.043, 5
  %arrayidx.i = getelementptr i32, ptr %active_mask, i32 %div3.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.043, 31
  %11 = shl nuw i32 1, %and.i
  %12 = and i32 %10, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool18.not = icmp eq i32 %12, 0
  br i1 %tobool18.not, label %for.body.for.inc_crit_edge, label %if.then19

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then19:                                        ; preds = %for.body
  %call20 = tail call i32 @_test_and_set_bit(i32 noundef %i.043, ptr noundef %unlink_mask) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %if.then19.for.inc_crit_edge

if.then19.for.inc_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then22:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 15, i32 %i.043
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %call24 = tail call i32 @usb_unlink_urb(ptr noundef %14) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then22, %if.then19.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.043, 1
  %15 = ptrtoint ptr %nurbs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nurbs, align 4
  %cmp15 = icmp ult i32 %inc, %16
  br i1 %cmp15, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %do.body6.cleanup_crit_edge, %ep_state_update.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %land.lhs.true.cleanup_crit_edge ], [ 0, %ep_state_update.exit.cleanup_crit_edge ], [ 0, %do.body6.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_usb_endpoint_release(ptr noundef %ep) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @release_urbs(ptr noundef %ep, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @release_urbs(ptr noundef %ep, i1 noundef zeroext %force) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %prepare_data_urb.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 10
  %0 = ptrtoint ptr %prepare_data_urb.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %prepare_data_urb.i, align 4
  %retire_data_urb.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 11
  %1 = ptrtoint ptr %retire_data_urb.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %retire_data_urb.i, align 4
  %2 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 49
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %2, align 1
  %data_subs6.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 12
  %4 = ptrtoint ptr %data_subs6.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr null, ptr %data_subs6.i, align 4
  %call = tail call fastcc i32 @stop_urbs(ptr noundef %ep, i1 noundef zeroext %force, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @wait_clear_urbs(ptr noundef %ep)
  %nurbs = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 20
  %5 = ptrtoint ptr %nurbs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nurbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp18.not = icmp eq i32 %6, 0
  br i1 %cmp18.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %release_urb_ctx.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.019 = phi i32 [ %inc, %release_urb_ctx.exit.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 15, i32 %i.019
  %buffer_size.i = getelementptr %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 15, i32 %i.019, i32 1
  %7 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buffer_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %for.body.release_urb_ctx.exit_crit_edge, label %if.then.i

for.body.release_urb_ctx.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %release_urb_ctx.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %ep.i = getelementptr %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 15, i32 %i.019, i32 3
  %9 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ep.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %dev.i = getelementptr inbounds %struct.snd_usb_audio, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 14
  %17 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %transfer_buffer.i, align 4
  %transfer_dma.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 15
  %19 = ptrtoint ptr %transfer_dma.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %transfer_dma.i, align 4
  tail call void @usb_free_coherent(ptr noundef %14, i32 noundef %8, ptr noundef %18, i32 noundef %20) #12
  br label %release_urb_ctx.exit

release_urb_ctx.exit:                             ; preds = %if.then.i, %for.body.release_urb_ctx.exit_crit_edge
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_free_urb(ptr noundef %22) #12
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.019, 1
  %24 = ptrtoint ptr %nurbs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nurbs, align 4
  %cmp = icmp ult i32 %inc, %25
  br i1 %cmp, label %release_urb_ctx.exit.for.body_crit_edge, label %release_urb_ctx.exit.for.end_crit_edge

release_urb_ctx.exit.for.end_crit_edge:           ; preds = %release_urb_ctx.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

release_urb_ctx.exit.for.body_crit_edge:          ; preds = %release_urb_ctx.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %release_urb_ctx.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %26 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ep, align 4
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %syncbuf = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 24
  %30 = ptrtoint ptr %syncbuf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %syncbuf, align 4
  %sync_dma = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 25
  %32 = ptrtoint ptr %sync_dma to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sync_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %29, i32 noundef 16, ptr noundef %31, i32 noundef %33) #12
  %34 = ptrtoint ptr %syncbuf to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %syncbuf, align 4
  %35 = ptrtoint ptr %nurbs to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %nurbs, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_usb_endpoint_free_all(ptr noundef readonly %chip) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ep_list = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 19
  %0 = ptrtoint ptr %ep_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep_list, align 4
  %cmp.not46 = icmp eq ptr %1, %ep_list
  br i1 %cmp.not46, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in47 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %ep.0 = getelementptr i8, ptr %.pn.in47, i32 -5356
  %2 = ptrtoint ptr %.pn.in47 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in47, align 4
  tail call void @kfree(ptr noundef %ep.0) #12
  %cmp.not = icmp eq ptr %.pn, %ep_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %iface_ref_list = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 20
  %3 = ptrtoint ptr %iface_ref_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iface_ref_list, align 4
  %cmp24.not48 = icmp eq ptr %4, %iface_ref_list
  br i1 %cmp24.not48, label %for.end.for.end33_crit_edge, label %for.end.for.body26_crit_edge

for.end.for.body26_crit_edge:                     ; preds = %for.end
  br label %for.body26

for.end.for.end33_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end33

for.body26:                                       ; preds = %for.body26.for.body26_crit_edge, %for.end.for.body26_crit_edge
  %.pn43.in49 = phi ptr [ %.pn43, %for.body26.for.body26_crit_edge ], [ %4, %for.end.for.body26_crit_edge ]
  %ip.0 = getelementptr i8, ptr %.pn43.in49, i32 -8
  %5 = ptrtoint ptr %.pn43.in49 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn43 = load ptr, ptr %.pn43.in49, align 4
  tail call void @kfree(ptr noundef %ip.0) #12
  %cmp24.not = icmp eq ptr %.pn43, %iface_ref_list
  br i1 %cmp24.not, label %for.body26.for.end33_crit_edge, label %for.body26.for.body26_crit_edge

for.body26.for.body26_crit_edge:                  ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body26

for.body26.for.end33_crit_edge:                   ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end33

for.end33:                                        ; preds = %for.body26.for.end33_crit_edge, %for.end.for.end33_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_stop_xrun(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_usb_get_host_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @data_ep_set_params(ptr noundef %ep) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %cur_audiofmt = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 51
  %2 = ptrtoint ptr %cur_audiofmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_audiofmt, align 4
  %cur_frame_bytes = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 55
  %4 = ptrtoint ptr %cur_frame_bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_frame_bytes, align 4
  %quirk_flags.i = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %quirk_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %quirk_flags.i, align 4
  %and.i = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pipe = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 26
  %8 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pipe, align 4
  %and = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %10 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool.not, %land.rhs ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @data_ep_set_params.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@data_ep_set_params, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !130

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %dev7 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  %ep_num = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 4
  %13 = ptrtoint ptr %ep_num to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ep_num, align 4
  %pipe8 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 26
  %15 = ptrtoint ptr %pipe8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pipe8, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @data_ep_set_params.__UNIQUE_ID_ddebug255, ptr noundef %dev7, ptr noundef nonnull @.str.39, i32 noundef %14, i32 noundef %16) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.end
  %cur_format = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 53
  %17 = ptrtoint ptr %cur_format to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cur_format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %18)
  %cmp = icmp eq i32 %18, 49
  br i1 %cmp, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %do.end
  %dsd_dop = getelementptr inbounds %struct.audioformat, ptr %3, i32 0, i32 28
  %19 = ptrtoint ptr %dsd_dop to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dsd_dop, align 8, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool9.not = icmp eq i8 %20, 0
  br i1 %tobool9.not, label %land.lhs.true.if.end11.thread_crit_edge, label %if.then10

land.lhs.true.if.end11.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.thread

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %cur_channels = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 54
  %21 = ptrtoint ptr %cur_channels to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cur_channels, align 4
  %23 = add i32 %22, %5
  br label %if.end11.thread

if.end11.thread:                                  ; preds = %if.then10, %land.lhs.true.if.end11.thread_crit_edge
  %frame_bits.0.in.ph = phi i32 [ %5, %land.lhs.true.if.end11.thread_crit_edge ], [ %23, %if.then10 ]
  %frame_bits.0347 = shl i32 %frame_bits.0.in.ph, 3
  %datainterval348 = getelementptr inbounds %struct.audioformat, ptr %3, i32 0, i32 18
  %24 = ptrtoint ptr %datainterval348 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %datainterval348, align 4
  %conv349 = zext i8 %25 to i32
  %datainterval12350 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 43
  %26 = ptrtoint ptr %datainterval12350 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv349, ptr %datainterval12350, align 4
  %shr351 = ashr exact i32 %frame_bits.0347, 3
  %stride352 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 46
  %27 = ptrtoint ptr %stride352 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %shr351, ptr %stride352, align 4
  br label %sw.bb14

if.end11:                                         ; preds = %do.end
  %frame_bits.0 = shl i32 %5, 3
  %datainterval = getelementptr inbounds %struct.audioformat, ptr %3, i32 0, i32 18
  %28 = ptrtoint ptr %datainterval to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %datainterval, align 4
  %conv = zext i8 %29 to i32
  %datainterval12 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 43
  %30 = ptrtoint ptr %datainterval12 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv, ptr %datainterval12, align 4
  %shr = ashr exact i32 %frame_bits.0, 3
  %stride = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 46
  %31 = ptrtoint ptr %stride to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %shr, ptr %stride, align 4
  %32 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %18, label %sw.default [
    i32 1, label %if.end11.sw.epilog_crit_edge
    i32 48, label %if.end11.sw.bb14_crit_edge
    i32 52, label %if.end11.sw.bb14_crit_edge379
    i32 50, label %if.end11.sw.bb14_crit_edge380
    i32 51, label %if.end11.sw.bb14_crit_edge381
  ]

if.end11.sw.bb14_crit_edge381:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb14

if.end11.sw.bb14_crit_edge380:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb14

if.end11.sw.bb14_crit_edge379:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb14

if.end11.sw.bb14_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb14

if.end11.sw.epilog_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end11.sw.bb14_crit_edge, %if.end11.sw.bb14_crit_edge379, %if.end11.sw.bb14_crit_edge380, %if.end11.sw.bb14_crit_edge381, %if.end11.thread
  %shr360 = phi i32 [ %shr351, %if.end11.thread ], [ %shr, %if.end11.sw.bb14_crit_edge ], [ %shr, %if.end11.sw.bb14_crit_edge379 ], [ %shr, %if.end11.sw.bb14_crit_edge380 ], [ %shr, %if.end11.sw.bb14_crit_edge381 ]
  %datainterval12358 = phi ptr [ %datainterval12350, %if.end11.thread ], [ %datainterval12, %if.end11.sw.bb14_crit_edge ], [ %datainterval12, %if.end11.sw.bb14_crit_edge379 ], [ %datainterval12, %if.end11.sw.bb14_crit_edge380 ], [ %datainterval12, %if.end11.sw.bb14_crit_edge381 ]
  %conv354 = phi i32 [ %conv349, %if.end11.thread ], [ %conv, %if.end11.sw.bb14_crit_edge ], [ %conv, %if.end11.sw.bb14_crit_edge379 ], [ %conv, %if.end11.sw.bb14_crit_edge380 ], [ %conv, %if.end11.sw.bb14_crit_edge381 ]
  br label %sw.epilog

sw.default:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb14, %if.end11.sw.epilog_crit_edge
  %.sink375 = phi i8 [ 0, %sw.default ], [ 105, %sw.bb14 ], [ -128, %if.end11.sw.epilog_crit_edge ]
  %shr359 = phi i32 [ %shr, %sw.default ], [ %shr360, %sw.bb14 ], [ %shr, %if.end11.sw.epilog_crit_edge ]
  %datainterval12357 = phi ptr [ %datainterval12, %sw.default ], [ %datainterval12358, %sw.bb14 ], [ %datainterval12, %if.end11.sw.epilog_crit_edge ]
  %conv353 = phi i32 [ %conv, %sw.default ], [ %conv354, %sw.bb14 ], [ %conv, %if.end11.sw.epilog_crit_edge ]
  %silence_value16 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 45
  %33 = ptrtoint ptr %silence_value16 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %.sink375, ptr %silence_value16, align 4
  %freqn = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 31
  %34 = ptrtoint ptr %freqn to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %freqn, align 4
  %shr18 = lshr i32 %35, 1
  %add19 = add i32 %shr18, %35
  %freqmax = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 34
  %36 = ptrtoint ptr %freqmax to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add19, ptr %freqmax, align 4
  %shl22 = shl i32 %add19, %conv353
  %add23 = add i32 %shl22, 65535
  %shr24 = lshr i32 %add23, 16
  %mul26 = mul i32 %shr24, %shr359
  %add29 = add i32 %mul26, 4
  %spec.select = select i1 %10, i32 %add29, i32 %mul26
  %maxpacksize = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 36
  %37 = ptrtoint ptr %maxpacksize to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %maxpacksize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool31.not = icmp ne i32 %38, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %spec.select)
  %cmp34 = icmp ult i32 %38, %spec.select
  %or.cond = select i1 %tobool31.not, i1 %cmp34, i1 false
  br i1 %or.cond, label %if.then36, label %sw.epilog.if.end46_crit_edge

sw.epilog.if.end46_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then36:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %sub = add i32 %38, -4
  %spec.select344 = select i1 %10, i32 %sub, i32 %38
  %div = udiv i32 %spec.select344, %shr359
  %sub43 = sub nsw i32 16, %conv353
  %shl44 = shl i32 %div, %sub43
  %39 = ptrtoint ptr %freqmax to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %shl44, ptr %freqmax, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then36, %sw.epilog.if.end46_crit_edge
  %maxsize.1 = phi i32 [ %38, %if.then36 ], [ %spec.select, %sw.epilog.if.end46_crit_edge ]
  %fill_max = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 42
  %40 = ptrtoint ptr %fill_max to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load = load i8, ptr %fill_max, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool47.not377 = icmp slt i8 %bf.load, 0
  %spec.select376 = select i1 %tobool47.not377, i32 %38, i32 %maxsize.1
  %41 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 39
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %spec.select376, ptr %41, align 4
  %dev52 = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 1
  %43 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev52, align 4
  %speed = getelementptr inbounds %struct.usb_device, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %cmp53.not = icmp eq i32 %46, 2
  %shr57 = lshr i32 8, %conv353
  %spec.select363 = select i1 %cmp53.not, i32 6, i32 48
  %spec.select364 = select i1 %cmp53.not, i32 1, i32 %shr57
  %sync_source = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 13
  %47 = ptrtoint ptr %sync_source to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sync_source, align 4
  %tobool60.not = icmp eq ptr %48, null
  br i1 %tobool60.not, label %if.end46.if.end69_crit_edge, label %land.lhs.true61

if.end46.if.end69_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

land.lhs.true61:                                  ; preds = %if.end46
  %implicit_fb_sync = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 48
  %49 = ptrtoint ptr %implicit_fb_sync to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %implicit_fb_sync, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool62.not = icmp eq i8 %50, 0
  br i1 %tobool62.not, label %if.then63, label %land.lhs.true61.if.end69_crit_edge

land.lhs.true61.if.end69_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then63:                                        ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #14
  %syncinterval = getelementptr inbounds %struct.snd_usb_endpoint, ptr %48, i32 0, i32 44
  %51 = ptrtoint ptr %syncinterval to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %syncinterval, align 4
  %shl65 = shl nuw i32 1, %52
  %53 = tail call i32 @llvm.umin.i32(i32 %spec.select363, i32 %shl65)
  br label %if.end69

if.end69:                                         ; preds = %if.then63, %land.lhs.true61.if.end69_crit_edge, %if.end46.if.end69_crit_edge
  %max_packs_per_urb.1 = phi i32 [ %spec.select363, %land.lhs.true61.if.end69_crit_edge ], [ %53, %if.then63 ], [ %spec.select363, %if.end46.if.end69_crit_edge ]
  %shr71 = lshr i32 %max_packs_per_urb.1, %conv353
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr71)
  %cmp73 = icmp eq i32 %shr71, 0
  %.shr71 = select i1 %cmp73, i32 1, i32 %shr71
  %pipe79 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 26
  %54 = ptrtoint ptr %pipe79 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pipe79, align 4
  %and80 = and i32 %55, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %lor.lhs.false, label %if.end69.if.then85_crit_edge

if.end69.if.then85_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then85

lor.lhs.false:                                    ; preds = %if.end69
  %implicit_fb_sync82 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 48
  %56 = ptrtoint ptr %implicit_fb_sync82 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %implicit_fb_sync82, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool83.not = icmp eq i8 %57, 0
  br i1 %tobool83.not, label %if.else115, label %lor.lhs.false.if.then85_crit_edge

lor.lhs.false.if.then85_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then85

if.then85:                                        ; preds = %lor.lhs.false.if.then85_crit_edge, %if.end69.if.then85_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %46)
  %cmp88 = icmp eq i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %conv353)
  %cmp92365 = icmp ult i32 %conv353, 5
  %or.cond374 = select i1 %cmp88, i1 %cmp92365, i1 false
  br i1 %or.cond374, label %while.body, label %if.then85.if.end95_crit_edge

if.then85.if.end95_crit_edge:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

while.body:                                       ; preds = %if.then85
  %shl94 = shl nuw nsw i32 %spec.select364, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv353)
  %exitcond.not = icmp eq i32 %conv353, 4
  br i1 %exitcond.not, label %while.body.if.end95_crit_edge, label %while.body.1

while.body.if.end95_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

while.body.1:                                     ; preds = %while.body
  %shl94.1 = shl nuw nsw i32 %spec.select364, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv353)
  %exitcond.not.1 = icmp eq i32 %conv353, 3
  br i1 %exitcond.not.1, label %while.body.1.if.end95_crit_edge, label %while.body.2

while.body.1.if.end95_crit_edge:                  ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

while.body.2:                                     ; preds = %while.body.1
  %shl94.2 = shl nuw nsw i32 %spec.select364, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv353)
  %exitcond.not.2 = icmp eq i32 %conv353, 2
  br i1 %exitcond.not.2, label %while.body.2.if.end95_crit_edge, label %while.body.3

while.body.2.if.end95_crit_edge:                  ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

while.body.3:                                     ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #14
  %shl94.3 = shl nuw nsw i32 %spec.select364, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv353)
  %exitcond.not.3 = icmp eq i32 %conv353, 1
  %shl94.4 = shl nuw nsw i32 %spec.select364, 5
  %spec.select378 = select i1 %exitcond.not.3, i32 %shl94.3, i32 %shl94.4
  br label %if.end95

if.end95:                                         ; preds = %while.body.3, %while.body.2.if.end95_crit_edge, %while.body.1.if.end95_crit_edge, %while.body.if.end95_crit_edge, %if.then85.if.end95_crit_edge
  %urb_packs.1 = phi i32 [ %spec.select364, %if.then85.if.end95_crit_edge ], [ %shl94, %while.body.if.end95_crit_edge ], [ %shl94.1, %while.body.1.if.end95_crit_edge ], [ %shl94.2, %while.body.2.if.end95_crit_edge ], [ %spec.select378, %while.body.3 ]
  %58 = tail call i32 @llvm.umin.i32(i32 %.shr71, i32 %urb_packs.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp104368 = icmp ugt i32 %58, 1
  br i1 %cmp104368, label %land.rhs106.lr.ph, label %if.end95.if.end166_crit_edge

if.end95.if.end166_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end166

land.rhs106.lr.ph:                                ; preds = %if.end95
  %cur_period_bytes = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 57
  %59 = ptrtoint ptr %cur_period_bytes to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cur_period_bytes, align 4
  br label %land.rhs106

land.rhs106:                                      ; preds = %while.body112.land.rhs106_crit_edge, %land.rhs106.lr.ph
  %urb_packs.2369 = phi i32 [ %58, %land.rhs106.lr.ph ], [ %shr113, %while.body112.land.rhs106_crit_edge ]
  %mul107 = mul i32 %urb_packs.2369, %maxsize.1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul107, i32 %60)
  %cmp108.not = icmp ult i32 %mul107, %60
  br i1 %cmp108.not, label %land.rhs106.if.end166_crit_edge, label %while.body112

land.rhs106.if.end166_crit_edge:                  ; preds = %land.rhs106
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end166

while.body112:                                    ; preds = %land.rhs106
  %shr113 = lshr i32 %urb_packs.2369, 1
  %cmp104 = icmp ugt i32 %urb_packs.2369, 3
  br i1 %cmp104, label %while.body112.land.rhs106_crit_edge, label %while.body112.if.end166_crit_edge

while.body112.if.end166_crit_edge:                ; preds = %while.body112
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end166

while.body112.land.rhs106_crit_edge:              ; preds = %while.body112
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs106

if.else115:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %sub118 = sub nsw i32 16, %conv353
  %shr119 = lshr i32 %35, %sub118
  %mul121 = mul i32 %shr119, %shr359
  %shr125 = lshr i32 %mul121, 3
  %sub126 = select i1 %tobool60.not, i32 0, i32 %shr125
  %minsize.0 = sub i32 %mul121, %sub126
  %61 = tail call i32 @llvm.umax.i32(i32 %minsize.0, i32 1)
  %cur_period_bytes135 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 57
  %62 = ptrtoint ptr %cur_period_bytes135 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cur_period_bytes135, align 4
  %add136 = add i32 %61, -1
  %sub137 = add i32 %add136, %63
  %div138 = udiv i32 %sub137, %61
  %add139 = add i32 %div138, -1
  %sub140 = add i32 %add139, %.shr71
  %div141 = udiv i32 %sub140, %.shr71
  %sub143 = add i32 %add139, %div141
  %div144 = udiv i32 %sub143, %div141
  %cur_period_frames = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 56
  %64 = ptrtoint ptr %cur_period_frames to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cur_period_frames, align 4
  %add145 = add i32 %div141, -1
  %sub146 = add i32 %add145, %65
  %div147 = udiv i32 %sub146, %div141
  %max_urb_frames = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 38
  %66 = ptrtoint ptr %max_urb_frames to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %div147, ptr %max_urb_frames, align 4
  %mul148 = mul nuw nsw i32 %spec.select364, 18
  %div149 = udiv i32 %mul148, %div144
  %cur_buffer_periods = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 58
  %67 = ptrtoint ptr %cur_buffer_periods to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cur_buffer_periods, align 4
  %mul157 = mul i32 %68, %div141
  %69 = tail call i32 @llvm.umin.i32(i32 %div149, i32 %mul157)
  %70 = tail call i32 @llvm.umin.i32(i32 %69, i32 12)
  br label %if.end166

if.end166:                                        ; preds = %if.else115, %while.body112.if.end166_crit_edge, %land.rhs106.if.end166_crit_edge, %if.end95.if.end166_crit_edge
  %.sink = phi i32 [ %70, %if.else115 ], [ 12, %if.end95.if.end166_crit_edge ], [ 12, %land.rhs106.if.end166_crit_edge ], [ 12, %while.body112.if.end166_crit_edge ]
  %urb_packs.3 = phi i32 [ %div144, %if.else115 ], [ %58, %if.end95.if.end166_crit_edge ], [ %shr113, %while.body112.if.end166_crit_edge ], [ %urb_packs.2369, %land.rhs106.if.end166_crit_edge ]
  %nurbs165 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 20
  %71 = ptrtoint ptr %nurbs165 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %.sink, ptr %nurbs165, align 4
  %nurbs167 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.sink)
  %cmp168372.not = icmp eq i32 %.sink, 0
  br i1 %cmp168372.not, label %if.end166.cleanup208_crit_edge, label %for.body.lr.ph

if.end166.cleanup208_crit_edge:                   ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup208

for.body.lr.ph:                                   ; preds = %if.end166
  %mul172 = mul i32 %urb_packs.3, %maxsize.1
  %fmt_type = getelementptr inbounds %struct.audioformat, ptr %3, i32 0, i32 3
  %inc177 = add i32 %urb_packs.3, 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0373 = phi i32 [ 0, %for.body.lr.ph ], [ %inc206, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 15, i32 %i.0373
  %index = getelementptr %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 15, i32 %i.0373, i32 4
  %72 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %i.0373, ptr %index, align 4
  %ep170 = getelementptr %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 15, i32 %i.0373, i32 3
  %73 = ptrtoint ptr %ep170 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %ep, ptr %ep170, align 4
  %packets = getelementptr %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 15, i32 %i.0373, i32 5
  %74 = ptrtoint ptr %packets to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %urb_packs.3, ptr %packets, align 4
  %buffer_size = getelementptr %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 15, i32 %i.0373, i32 1
  %75 = ptrtoint ptr %buffer_size to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %mul172, ptr %buffer_size, align 4
  %76 = ptrtoint ptr %fmt_type to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %fmt_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %77)
  %cmp173 = icmp eq i32 %77, 2
  br i1 %cmp173, label %if.then175, label %for.body.if.end178_crit_edge

for.body.if.end178_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end178

if.then175:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %78 = ptrtoint ptr %packets to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %inc177, ptr %packets, align 4
  br label %if.end178

if.end178:                                        ; preds = %if.then175, %for.body.if.end178_crit_edge
  %79 = ptrtoint ptr %packets to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %packets, align 4
  %call180 = tail call ptr @usb_alloc_urb(i32 noundef %80, i32 noundef 3264) #12
  %81 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call180, ptr %arrayidx, align 4
  %tobool183.not = icmp eq ptr %call180, null
  br i1 %tobool183.not, label %if.end178.out_of_memory_crit_edge, label %if.end185

if.end178.out_of_memory_crit_edge:                ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_of_memory

if.end185:                                        ; preds = %if.end178
  %82 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev52, align 4
  %84 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %buffer_size, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %call180, i32 0, i32 15
  %call189 = tail call ptr @usb_alloc_coherent(ptr noundef %83, i32 noundef %85, i32 noundef 3264, ptr noundef %transfer_dma) #12
  %86 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %87, i32 0, i32 14
  %88 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call189, ptr %transfer_buffer, align 4
  %89 = load ptr, ptr %arrayidx, align 4
  %transfer_buffer192 = getelementptr inbounds %struct.urb, ptr %89, i32 0, i32 14
  %90 = ptrtoint ptr %transfer_buffer192 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %transfer_buffer192, align 4
  %tobool193.not = icmp eq ptr %91, null
  br i1 %tobool193.not, label %if.end185.out_of_memory_crit_edge, label %for.inc

if.end185.out_of_memory_crit_edge:                ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_of_memory

for.inc:                                          ; preds = %if.end185
  %92 = ptrtoint ptr %pipe79 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %pipe79, align 4
  %pipe198 = getelementptr inbounds %struct.urb, ptr %89, i32 0, i32 10
  %94 = ptrtoint ptr %pipe198 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %pipe198, align 4
  %95 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %96, i32 0, i32 13
  %97 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 4, ptr %transfer_flags, align 4
  %98 = ptrtoint ptr %datainterval12357 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %datainterval12357, align 4
  %shl201 = shl nuw i32 1, %99
  %100 = load ptr, ptr %arrayidx, align 4
  %interval203 = getelementptr inbounds %struct.urb, ptr %100, i32 0, i32 25
  %101 = ptrtoint ptr %interval203 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %shl201, ptr %interval203, align 4
  %102 = load ptr, ptr %arrayidx, align 4
  %context = getelementptr inbounds %struct.urb, ptr %102, i32 0, i32 27
  %103 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %arrayidx, ptr %context, align 4
  %104 = load ptr, ptr %arrayidx, align 4
  %complete = getelementptr inbounds %struct.urb, ptr %104, i32 0, i32 28
  %105 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @snd_complete_urb, ptr %complete, align 4
  %ready_list = getelementptr %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 15, i32 %i.0373, i32 8
  %106 = ptrtoint ptr %ready_list to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile ptr %ready_list, ptr %ready_list, align 4
  %prev.i = getelementptr %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 15, i32 %i.0373, i32 8, i32 1
  %107 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %ready_list, ptr %prev.i, align 4
  %inc206 = add nuw i32 %i.0373, 1
  %108 = ptrtoint ptr %nurbs167 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %nurbs167, align 4
  %cmp168 = icmp ult i32 %inc206, %109
  br i1 %cmp168, label %for.inc.for.body_crit_edge, label %for.inc.cleanup208_crit_edge

for.inc.cleanup208_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup208

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

out_of_memory:                                    ; preds = %if.end185.out_of_memory_crit_edge, %if.end178.out_of_memory_crit_edge
  %call207 = tail call fastcc i32 @release_urbs(ptr noundef %ep, i1 noundef zeroext false)
  br label %cleanup208

cleanup208:                                       ; preds = %out_of_memory, %for.inc.cleanup208_crit_edge, %if.end166.cleanup208_crit_edge
  %retval.0 = phi i32 [ -12, %out_of_memory ], [ 0, %if.end166.cleanup208_crit_edge ], [ 0, %for.inc.cleanup208_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sync_ep_set_params(ptr noundef %ep) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sync_ep_set_params.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sync_ep_set_params, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !130

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dev4 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %ep_num = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 4
  %4 = ptrtoint ptr %ep_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ep_num, align 4
  %pipe = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 26
  %6 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pipe, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sync_ep_set_params.__UNIQUE_ID_ddebug268, ptr noundef %dev4, ptr noundef nonnull @.str.45, i32 noundef %5, i32 noundef %7) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev5 = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev5, align 4
  %sync_dma = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 25
  %call6 = tail call ptr @usb_alloc_coherent(ptr noundef %9, i32 noundef 16, i32 noundef 3264, ptr noundef %sync_dma) #12
  %syncbuf = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 24
  %10 = ptrtoint ptr %syncbuf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call6, ptr %syncbuf, align 4
  %tobool8.not = icmp eq ptr %call6, null
  br i1 %tobool8.not, label %do.end.cleanup33_crit_edge, label %for.cond.preheader

do.end.cleanup33_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup33

for.cond.preheader:                               ; preds = %do.end
  %pipe24 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 26
  %syncinterval = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 44
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.070 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 15, i32 %i.070
  %index = getelementptr %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 15, i32 %i.070, i32 4
  %11 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %i.070, ptr %index, align 4
  %ep11 = getelementptr %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 15, i32 %i.070, i32 3
  %12 = ptrtoint ptr %ep11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %ep, ptr %ep11, align 4
  %packets = getelementptr %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 15, i32 %i.070, i32 5
  %13 = ptrtoint ptr %packets to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %packets, align 4
  %call12 = tail call ptr @usb_alloc_urb(i32 noundef 1, i32 noundef 3264) #12
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call12, ptr %arrayidx, align 4
  %tobool15.not = icmp eq ptr %call12, null
  br i1 %tobool15.not, label %out_of_memory, label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = ptrtoint ptr %syncbuf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %syncbuf, align 4
  %mul = shl i32 %i.070, 2
  %add.ptr = getelementptr i8, ptr %16, i32 %mul
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %call12, i32 0, i32 14
  %17 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr, ptr %transfer_buffer, align 4
  %18 = ptrtoint ptr %sync_dma to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sync_dma, align 4
  %add = add i32 %19, %mul
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %21, i32 0, i32 15
  %22 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add, ptr %transfer_dma, align 4
  %23 = load ptr, ptr %arrayidx, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 19
  %24 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4, ptr %transfer_buffer_length, align 4
  %25 = ptrtoint ptr %pipe24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pipe24, align 4
  %27 = load ptr, ptr %arrayidx, align 4
  %pipe26 = getelementptr inbounds %struct.urb, ptr %27, i32 0, i32 10
  %28 = ptrtoint ptr %pipe26 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %26, ptr %pipe26, align 4
  %29 = load ptr, ptr %arrayidx, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 13
  %30 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 4, ptr %transfer_flags, align 4
  %31 = load ptr, ptr %arrayidx, align 4
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 24
  %32 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %number_of_packets, align 4
  %33 = ptrtoint ptr %syncinterval to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %syncinterval, align 4
  %shl = shl nuw i32 1, %34
  %35 = load ptr, ptr %arrayidx, align 4
  %interval = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 25
  %36 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %shl, ptr %interval, align 4
  %37 = load ptr, ptr %arrayidx, align 4
  %context = getelementptr inbounds %struct.urb, ptr %37, i32 0, i32 27
  %38 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %arrayidx, ptr %context, align 4
  %39 = load ptr, ptr %arrayidx, align 4
  %complete = getelementptr inbounds %struct.urb, ptr %39, i32 0, i32 28
  %40 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @snd_complete_urb, ptr %complete, align 4
  %inc = add nuw nsw i32 %i.070, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %nurbs = getelementptr inbounds %struct.snd_usb_endpoint, ptr %ep, i32 0, i32 20
  %41 = ptrtoint ptr %nurbs to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 4, ptr %nurbs, align 4
  br label %cleanup33

out_of_memory:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %call32 = tail call fastcc i32 @release_urbs(ptr noundef %ep, i1 noundef zeroext false)
  br label %cleanup33

cleanup33:                                        ; preds = %out_of_memory, %for.end, %do.end.cleanup33_crit_edge
  %retval.0 = phi i32 [ -12, %out_of_memory ], [ 0, %for.end ], [ -12, %do.end.cleanup33_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_complete_urb(ptr noundef %urb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %ep1 = getelementptr inbounds %struct.snd_urb_ctx, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ep1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep1, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %5, label %if.end.critedge [
    i32 -2, label %entry.exit_clear_crit_edge
    i32 -19, label %entry.exit_clear_crit_edge141
    i32 -104, label %entry.exit_clear_crit_edge142
    i32 -108, label %entry.exit_clear_crit_edge143
  ], !prof !142

entry.exit_clear_crit_edge143:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_clear

entry.exit_clear_crit_edge142:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_clear

entry.exit_clear_crit_edge141:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_clear

entry.exit_clear_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_clear

if.end.critedge:                                  ; preds = %entry
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %shutdown = getelementptr inbounds %struct.snd_usb_audio, ptr %8, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %shutdown, i32 noundef 4) #12
  %9 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %shutdown, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool10.not = icmp eq i32 %10, 0
  br i1 %tobool10.not, label %if.end18, label %if.end.critedge.exit_clear_crit_edge, !prof !128

if.end.critedge.exit_clear_crit_edge:             ; preds = %if.end.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_clear

if.end18:                                         ; preds = %if.end.critedge
  %state.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %3, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %state.i, i32 noundef 4) #12
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i = icmp eq i32 %12, 1
  br i1 %cmp.i, label %if.end29, label %if.end18.exit_clear_crit_edge, !prof !128

if.end18.exit_clear_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_clear

if.end29:                                         ; preds = %if.end18
  %pipe = getelementptr inbounds %struct.snd_usb_endpoint, ptr %3, i32 0, i32 26
  %13 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pipe, align 4
  %and = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  br i1 %tobool30.not, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.end29
  %data_subs1.i.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %3, i32 0, i32 12
  %17 = ptrtoint ptr %data_subs1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %data_subs1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.then31.retire_outbound_urb.exit_crit_edge, label %land.lhs.true.i.i

if.then31.retire_outbound_urb.exit_crit_edge:     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %retire_outbound_urb.exit

land.lhs.true.i.i:                                ; preds = %if.then31
  %retire_data_urb.i.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %3, i32 0, i32 11
  %19 = ptrtoint ptr %retire_data_urb.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %retire_data_urb.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %20, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.retire_outbound_urb.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.retire_outbound_urb.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %retire_outbound_urb.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %20(ptr noundef nonnull %18, ptr noundef %16) #12
  br label %retire_outbound_urb.exit

retire_outbound_urb.exit:                         ; preds = %if.then.i.i, %land.lhs.true.i.i.retire_outbound_urb.exit_crit_edge, %if.then31.retire_outbound_urb.exit_crit_edge
  %call.i.i.i120 = tail call zeroext i1 @__kasan_check_read(ptr noundef %state.i, i32 noundef 4) #12
  %21 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.i121 = icmp eq i32 %22, 1
  br i1 %cmp.i121, label %if.end42, label %retire_outbound_urb.exit.exit_clear_crit_edge, !prof !128

retire_outbound_urb.exit.exit_clear_crit_edge:    ; preds = %retire_outbound_urb.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_clear

if.end42:                                         ; preds = %retire_outbound_urb.exit
  %lowlatency_playback = getelementptr inbounds %struct.snd_usb_endpoint, ptr %3, i32 0, i32 49
  %23 = ptrtoint ptr %lowlatency_playback to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %lowlatency_playback, align 1, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool43.not = icmp eq i8 %24, 0
  br i1 %tobool43.not, label %lor.lhs.false44, label %if.end42.if.then47_crit_edge

if.end42.if.then47_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then47

lor.lhs.false44:                                  ; preds = %if.end42
  %implicit_fb_sync.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %3, i32 0, i32 48
  %25 = ptrtoint ptr %implicit_fb_sync.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %implicit_fb_sync.i, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %lor.lhs.false44.if.end48_crit_edge, label %snd_usb_endpoint_implicit_feedback_sink.exit

lor.lhs.false44.if.end48_crit_edge:               ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

snd_usb_endpoint_implicit_feedback_sink.exit:     ; preds = %lor.lhs.false44
  %27 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pipe, align 4
  %29 = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool46.not.not = icmp eq i32 %29, 0
  br i1 %tobool46.not.not, label %snd_usb_endpoint_implicit_feedback_sink.exit.if.then47_crit_edge, label %snd_usb_endpoint_implicit_feedback_sink.exit.if.end48_crit_edge

snd_usb_endpoint_implicit_feedback_sink.exit.if.end48_crit_edge: ; preds = %snd_usb_endpoint_implicit_feedback_sink.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

snd_usb_endpoint_implicit_feedback_sink.exit.if.then47_crit_edge: ; preds = %snd_usb_endpoint_implicit_feedback_sink.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then47

if.then47:                                        ; preds = %snd_usb_endpoint_implicit_feedback_sink.exit.if.then47_crit_edge, %if.end42.if.then47_crit_edge
  %lock.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %3, i32 0, i32 60
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %ready_list.i = getelementptr inbounds %struct.snd_urb_ctx, ptr %1, i32 0, i32 8
  %ready_playback_urbs.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %3, i32 0, i32 19
  %prev.i.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %3, i32 0, i32 19, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i122 = tail call zeroext i1 @__list_add_valid(ptr noundef %ready_list.i, ptr noundef %31, ptr noundef %ready_playback_urbs.i) #12
  br i1 %call.i.i.i122, label %if.end.i.i.i, label %if.then47.push_back_to_ready_list.exit_crit_edge

if.then47.push_back_to_ready_list.exit_crit_edge: ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  br label %push_back_to_ready_list.exit

if.end.i.i.i:                                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %ready_list.i, ptr %prev.i.i, align 4
  %33 = ptrtoint ptr %ready_list.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %ready_playback_urbs.i, ptr %ready_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.snd_urb_ctx, ptr %1, i32 0, i32 8, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev3.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %ready_list.i, ptr %31, align 4
  br label %push_back_to_ready_list.exit

push_back_to_ready_list.exit:                     ; preds = %if.end.i.i.i, %if.then47.push_back_to_ready_list.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #12
  %index = getelementptr inbounds %struct.snd_urb_ctx, ptr %1, i32 0, i32 4
  %36 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %index, align 4
  %active_mask = getelementptr inbounds %struct.snd_usb_endpoint, ptr %3, i32 0, i32 21
  tail call void @_clear_bit(i32 noundef %37, ptr noundef %active_mask) #12
  tail call void @snd_usb_queue_pending_output_urbs(ptr noundef %3, i1 noundef zeroext false)
  %submitted_urbs = getelementptr inbounds %struct.snd_usb_endpoint, ptr %3, i32 0, i32 23
  %call.i.i117 = tail call zeroext i1 @__kasan_check_write(ptr noundef %submitted_urbs, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %submitted_urbs, i32 1, i32 3, i32 1) #12
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %submitted_urbs, ptr %submitted_urbs, i32 1, ptr elementtype(i32) %submitted_urbs) #12, !srcloc !143
  br label %cleanup

if.end48:                                         ; preds = %snd_usb_endpoint_implicit_feedback_sink.exit.if.end48_crit_edge, %lor.lhs.false44.if.end48_crit_edge
  %call49 = tail call fastcc i32 @prepare_outbound_urb(ptr noundef %3, ptr noundef %1, i1 noundef zeroext false)
  %call.i.i.i124 = tail call zeroext i1 @__kasan_check_read(ptr noundef %state.i, i32 noundef 4) #12
  %39 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp.i125 = icmp eq i32 %40, 1
  br i1 %cmp.i125, label %if.end48.if.end73_crit_edge, label %if.end48.exit_clear_crit_edge, !prof !128

if.end48.exit_clear_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_clear

if.end48.if.end73_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73

if.else:                                          ; preds = %if.end29
  %skip_packets.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %3, i32 0, i32 47
  %41 = ptrtoint ptr %skip_packets.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %skip_packets.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i126 = icmp sgt i32 %42, 0
  br i1 %cmp.i126, label %if.then.i, label %do.end.i, !prof !132

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %dec.i = add nsw i32 %42, -1
  %43 = ptrtoint ptr %skip_packets.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %dec.i, ptr %skip_packets.i, align 4
  br label %retire_inbound_urb.exit

do.end.i:                                         ; preds = %if.else
  %sync_sink4.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %3, i32 0, i32 14
  %44 = ptrtoint ptr %sync_sink4.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %sync_sink4.i, align 4
  %tobool5.not.i = icmp eq ptr %45, null
  br i1 %tobool5.not.i, label %do.end.i.if.end7.i_crit_edge, label %if.then6.i

do.end.i.if.end7.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then6.i:                                       ; preds = %do.end.i
  %cmp.i.i = icmp eq ptr %45, %3
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then6.i.if.end.i.i_crit_edge, !prof !132

if.then6.i.if.end.i.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1620, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then6.i.if.end.i.i_crit_edge
  %implicit_fb_sync.i.i.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %45, i32 0, i32 48
  %46 = ptrtoint ptr %implicit_fb_sync.i.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %implicit_fb_sync.i.i.i, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i.i.i = icmp eq i8 %47, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.if.end79.i.i_crit_edge, label %snd_usb_endpoint_implicit_feedback_sink.exit.i.i

if.end.i.i.if.end79.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79.i.i

snd_usb_endpoint_implicit_feedback_sink.exit.i.i: ; preds = %if.end.i.i
  %pipe.i.i.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %45, i32 0, i32 26
  %48 = ptrtoint ptr %pipe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pipe.i.i.i, align 4
  %50 = and i32 %49, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool19.not.not.i.i = icmp eq i32 %50, 0
  br i1 %tobool19.not.not.i.i, label %land.lhs.true.i.i127, label %snd_usb_endpoint_implicit_feedback_sink.exit.i.i.if.end79.i.i_crit_edge

snd_usb_endpoint_implicit_feedback_sink.exit.i.i.if.end79.i.i_crit_edge: ; preds = %snd_usb_endpoint_implicit_feedback_sink.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79.i.i

land.lhs.true.i.i127:                             ; preds = %snd_usb_endpoint_implicit_feedback_sink.exit.i.i
  %running.i.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %45, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %running.i.i, i32 noundef 4) #12
  %51 = ptrtoint ptr %running.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %running.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool21.not.i.i = icmp eq i32 %52, 0
  br i1 %tobool21.not.i.i, label %land.lhs.true.i.i127.if.end79.i.i_crit_edge, label %if.then22.i.i

land.lhs.true.i.i127.if.end79.i.i_crit_edge:      ; preds = %land.lhs.true.i.i127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79.i.i

if.then22.i.i:                                    ; preds = %land.lhs.true.i.i127
  %context.i.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 27
  %53 = ptrtoint ptr %context.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %context.i.i, align 4
  %packets.i.i = getelementptr inbounds %struct.snd_urb_ctx, ptr %54, i32 0, i32 5
  %55 = ptrtoint ptr %packets.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %packets.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp23282.i.i = icmp sgt i32 %56, 0
  br i1 %cmp23282.i.i, label %if.then22.i.i.for.body.i.i_crit_edge, label %if.then22.i.i.if.end7.i_crit_edge

if.then22.i.i.if.end7.i_crit_edge:                ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then22.i.i.for.body.i.i_crit_edge:             ; preds = %if.then22.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then22.i.i.for.body.i.i_crit_edge
  %bytes.0285.i.i = phi i32 [ %bytes.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then22.i.i.for.body.i.i_crit_edge ]
  %i.0283.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then22.i.i.for.body.i.i_crit_edge ]
  %status.i.i = getelementptr %struct.urb, ptr %16, i32 0, i32 29, i32 %i.0283.i.i, i32 3
  %57 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %status.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp24.i.i = icmp eq i32 %58, 0
  br i1 %cmp24.i.i, label %if.then25.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.then25.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %actual_length.i.i = getelementptr %struct.urb, ptr %16, i32 0, i32 29, i32 %i.0283.i.i, i32 2
  %59 = ptrtoint ptr %actual_length.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %actual_length.i.i, align 4
  %add.i.i = add i32 %60, %bytes.0285.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then25.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %bytes.1.i.i = phi i32 [ %add.i.i, %if.then25.i.i ], [ %bytes.0285.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i32 %i.0283.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %56
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes.1.i.i)
  %cmp29.i.i = icmp eq i32 %bytes.1.i.i, 0
  br i1 %cmp29.i.i, label %for.end.i.i.if.end7.i_crit_edge, label %do.body33.i.i

for.end.i.i.if.end7.i_crit_edge:                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

do.body33.i.i:                                    ; preds = %for.end.i.i
  %lock.i.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %45, i32 0, i32 60
  %call37.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #12
  %next_packet_queued.i.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %45, i32 0, i32 18
  %61 = ptrtoint ptr %next_packet_queued.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %next_packet_queued.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %62)
  %cmp42.i.i = icmp ugt i32 %62, 11
  br i1 %cmp42.i.i, label %if.then44.i.i, label %if.end50.i.i

if.then44.i.i:                                    ; preds = %do.body33.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call37.i.i) #12
  %63 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %45, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_usb_audio, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i.i, align 4
  %dev49.i.i = getelementptr inbounds %struct.usb_device, ptr %66, i32 0, i32 15
  %ep_num.i.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %45, i32 0, i32 4
  %67 = ptrtoint ptr %ep_num.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ep_num.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev49.i.i, ptr noundef nonnull @.str.42, i32 noundef %68) #15
  %data_subs1.i.i.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %45, i32 0, i32 12
  %69 = ptrtoint ptr %data_subs1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile ptr, ptr %data_subs1.i.i.i, align 4
  %tobool.not.i280.i.i = icmp eq ptr %70, null
  br i1 %tobool.not.i280.i.i, label %if.then44.i.i.if.end7.i_crit_edge, label %land.lhs.true.i.i.i

if.then44.i.i.if.end7.i_crit_edge:                ; preds = %if.then44.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

land.lhs.true.i.i.i:                              ; preds = %if.then44.i.i
  %pcm_substream.i.i.i = getelementptr inbounds %struct.snd_usb_substream, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %pcm_substream.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pcm_substream.i.i.i, align 8
  %tobool2.not.i.i.i = icmp eq ptr %72, null
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.if.end7.i_crit_edge, label %if.then.i.i.i

land.lhs.true.i.i.i.if.end7.i_crit_edge:          ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i128 = tail call i32 @snd_pcm_stop_xrun(ptr noundef nonnull %72) #12
  br label %if.end7.i

if.end50.i.i:                                     ; preds = %do.body33.i.i
  %next_packet.i.i.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %45, i32 0, i32 16
  %next_packet_head.i.i.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %45, i32 0, i32 17
  %73 = ptrtoint ptr %next_packet_head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %next_packet_head.i.i.i, align 4
  %add.i.i.i = add i32 %74, %62
  %rem.i.i.i = urem i32 %add.i.i.i, 12
  %add.ptr.i.i.i = getelementptr %struct.snd_usb_packet_info, ptr %next_packet.i.i.i, i32 %rem.i.i.i
  %inc.i.i.i = add nuw nsw i32 %62, 1
  %75 = ptrtoint ptr %next_packet_queued.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %inc.i.i.i, ptr %next_packet_queued.i.i, align 4
  %76 = ptrtoint ptr %packets.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %packets.i.i, align 4
  %packets53.i.i = getelementptr %struct.snd_usb_packet_info, ptr %next_packet.i.i.i, i32 %rem.i.i.i, i32 1
  %78 = ptrtoint ptr %packets53.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %packets53.i.i, align 4
  %79 = load i32, ptr %packets.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp56286.i.i = icmp sgt i32 %79, 0
  br i1 %cmp56286.i.i, label %for.body58.lr.ph.i.i, label %if.end50.i.i.for.end74.i.i_crit_edge

if.end50.i.i.for.end74.i.i_crit_edge:             ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end74.i.i

for.body58.lr.ph.i.i:                             ; preds = %if.end50.i.i
  %stride.i.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %3, i32 0, i32 46
  br label %for.body58.i.i

for.body58.i.i:                                   ; preds = %for.inc72.i.i.for.body58.i.i_crit_edge, %for.body58.lr.ph.i.i
  %i.1287.i.i = phi i32 [ 0, %for.body58.lr.ph.i.i ], [ %inc73.i.i, %for.inc72.i.i.for.body58.i.i_crit_edge ]
  %status61.i.i = getelementptr %struct.urb, ptr %16, i32 0, i32 29, i32 %i.1287.i.i, i32 3
  %80 = ptrtoint ptr %status61.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %status61.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp62.i.i = icmp eq i32 %81, 0
  br i1 %cmp62.i.i, label %if.then64.i.i, label %for.body58.i.i.for.inc72.i.i_crit_edge

for.body58.i.i.for.inc72.i.i_crit_edge:           ; preds = %for.body58.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc72.i.i

if.then64.i.i:                                    ; preds = %for.body58.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %actual_length67.i.i = getelementptr %struct.urb, ptr %16, i32 0, i32 29, i32 %i.1287.i.i, i32 2
  %82 = ptrtoint ptr %actual_length67.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %actual_length67.i.i, align 4
  %84 = ptrtoint ptr %stride.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %stride.i.i, align 4
  %div.i.i = udiv i32 %83, %85
  br label %for.inc72.i.i

for.inc72.i.i:                                    ; preds = %if.then64.i.i, %for.body58.i.i.for.inc72.i.i_crit_edge
  %.sink.i.i = phi i32 [ %div.i.i, %if.then64.i.i ], [ 0, %for.body58.i.i.for.inc72.i.i_crit_edge ]
  %86 = getelementptr [48 x i32], ptr %add.ptr.i.i.i, i32 0, i32 %i.1287.i.i
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %.sink.i.i, ptr %86, align 4
  %inc73.i.i = add nuw nsw i32 %i.1287.i.i, 1
  %88 = ptrtoint ptr %packets.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %packets.i.i, align 4
  %cmp56.i.i = icmp slt i32 %inc73.i.i, %89
  br i1 %cmp56.i.i, label %for.inc72.i.i.for.body58.i.i_crit_edge, label %for.inc72.i.i.for.end74.i.i_crit_edge

for.inc72.i.i.for.end74.i.i_crit_edge:            ; preds = %for.inc72.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end74.i.i

for.inc72.i.i.for.body58.i.i_crit_edge:           ; preds = %for.inc72.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body58.i.i

for.end74.i.i:                                    ; preds = %for.inc72.i.i.for.end74.i.i_crit_edge, %if.end50.i.i.for.end74.i.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call37.i.i) #12
  tail call void @snd_usb_queue_pending_output_urbs(ptr noundef %45, i1 noundef zeroext false) #12
  br label %if.end7.i

if.end79.i.i:                                     ; preds = %land.lhs.true.i.i127.if.end79.i.i_crit_edge, %snd_usb_endpoint_implicit_feedback_sink.exit.i.i.if.end79.i.i_crit_edge, %if.end.i.i.if.end79.i.i_crit_edge
  %status82.i.i = getelementptr inbounds %struct.urb, ptr %16, i32 1, i32 3
  %90 = ptrtoint ptr %status82.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %status82.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp83.not.i.i = icmp eq i32 %91, 0
  br i1 %cmp83.not.i.i, label %lor.lhs.false.i.i, label %if.end79.i.i.if.end7.i_crit_edge

if.end79.i.i.if.end7.i_crit_edge:                 ; preds = %if.end79.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

lor.lhs.false.i.i:                                ; preds = %if.end79.i.i
  %actual_length87.i.i = getelementptr inbounds %struct.urb, ptr %16, i32 1, i32 2
  %92 = ptrtoint ptr %actual_length87.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %actual_length87.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %93)
  %cmp88.i.i = icmp ult i32 %93, 3
  br i1 %cmp88.i.i, label %lor.lhs.false.i.i.if.end7.i_crit_edge, label %if.end91.i.i

lor.lhs.false.i.i.if.end7.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.end91.i.i:                                     ; preds = %lor.lhs.false.i.i
  %transfer_buffer.i.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 14
  %94 = ptrtoint ptr %transfer_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %transfer_buffer.i.i, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %95, align 4
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %93)
  %cmp96.i.i = icmp eq i32 %93, 3
  %f.0.v.i.i = select i1 %cmp96.i.i, i32 16777215, i32 268435455
  %f.0.i.i = and i32 %98, %f.0.v.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %f.0.i.i)
  %cmp102.i.i = icmp eq i32 %f.0.i.i, 0
  br i1 %cmp102.i.i, label %if.end91.i.i.if.end7.i_crit_edge, label %if.end105.i.i

if.end91.i.i.if.end7.i_crit_edge:                 ; preds = %if.end91.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.end105.i.i:                                    ; preds = %if.end91.i.i
  %tenor_fb_quirk.i.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %3, i32 0, i32 42
  %99 = ptrtoint ptr %tenor_fb_quirk.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %bf.load.i.i = load i8, ptr %tenor_fb_quirk.i.i, align 4
  %100 = and i8 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool106.not.i.i = icmp eq i8 %100, 0
  br i1 %tobool106.not.i.i, label %if.else127.i.i, label %if.then113.i.i, !prof !128

if.then113.i.i:                                   ; preds = %if.end105.i.i
  %freqn.i.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %45, i32 0, i32 31
  %101 = ptrtoint ptr %freqn.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %freqn.i.i, align 4
  %sub.i.i = add i32 %102, -32768
  call void @__sanitizer_cov_trace_cmp4(i32 %f.0.i.i, i32 %sub.i.i)
  %cmp114.i.i = icmp ult i32 %f.0.i.i, %sub.i.i
  br i1 %cmp114.i.i, label %if.then116.i.i, label %if.else118.i.i

if.then116.i.i:                                   ; preds = %if.then113.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add117.i.i = add nuw nsw i32 %f.0.i.i, 61440
  br label %if.end167.i.i

if.else118.i.i:                                   ; preds = %if.then113.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add120.i.i = add i32 %102, 32768
  call void @__sanitizer_cov_trace_cmp4(i32 %f.0.i.i, i32 %add120.i.i)
  %cmp121.i.i = icmp ugt i32 %f.0.i.i, %add120.i.i
  %sub124.i.i = add nsw i32 %f.0.i.i, -61440
  %spec.select.i.i = select i1 %cmp121.i.i, i32 %sub124.i.i, i32 %f.0.i.i
  br label %if.end167.i.i

if.else127.i.i:                                   ; preds = %if.end105.i.i
  %freqshift.i.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %45, i32 0, i32 33
  %103 = ptrtoint ptr %freqshift.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %freqshift.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %104)
  %cmp128.i.i = icmp eq i32 %104, -2147483648
  br i1 %cmp128.i.i, label %while.cond.preheader.i.i, label %if.else154.i.i, !prof !132

while.cond.preheader.i.i:                         ; preds = %if.else127.i.i
  %freqn137.i.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %45, i32 0, i32 31
  %105 = ptrtoint ptr %freqn137.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %freqn137.i.i, align 4
  %div139278.i.i = lshr i32 %106, 2
  %sub140.i.i = sub i32 %106, %div139278.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %f.0.i.i, i32 %sub140.i.i)
  %cmp141289.i.i = icmp ult i32 %f.0.i.i, %sub140.i.i
  br i1 %cmp141289.i.i, label %while.cond.preheader.i.i.while.body.i.i_crit_edge, label %while.cond.preheader.i.i.while.cond144.preheader.i.i_crit_edge

while.cond.preheader.i.i.while.cond144.preheader.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond144.preheader.i.i

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.cond144.preheader.i.i:                      ; preds = %while.body.i.i.while.cond144.preheader.i.i_crit_edge, %while.cond.preheader.i.i.while.cond144.preheader.i.i_crit_edge
  %f.1.lcssa.i.i = phi i32 [ %f.0.i.i, %while.cond.preheader.i.i.while.cond144.preheader.i.i_crit_edge ], [ %shl.i.i, %while.body.i.i.while.cond144.preheader.i.i_crit_edge ]
  %shift.0.lcssa.i.i = phi i32 [ 0, %while.cond.preheader.i.i.while.cond144.preheader.i.i_crit_edge ], [ %inc143.i.i, %while.body.i.i.while.cond144.preheader.i.i_crit_edge ]
  %div147279.i.i = lshr i32 %106, 1
  %add148.i.i = add i32 %div147279.i.i, %106
  call void @__sanitizer_cov_trace_cmp4(i32 %f.1.lcssa.i.i, i32 %add148.i.i)
  %cmp149295.i.i = icmp ugt i32 %f.1.lcssa.i.i, %add148.i.i
  br i1 %cmp149295.i.i, label %while.cond144.preheader.i.i.while.body151.i.i_crit_edge, label %while.cond144.preheader.i.i.while.end152.i.i_crit_edge

while.cond144.preheader.i.i.while.end152.i.i_crit_edge: ; preds = %while.cond144.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end152.i.i

while.cond144.preheader.i.i.while.body151.i.i_crit_edge: ; preds = %while.cond144.preheader.i.i
  br label %while.body151.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %shift.0291.i.i = phi i32 [ %inc143.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %f.1290.i.i = phi i32 [ %shl.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %f.0.i.i, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %shl.i.i = shl i32 %f.1290.i.i, 1
  %inc143.i.i = add i32 %shift.0291.i.i, 1
  %cmp141.i.i = icmp ult i32 %shl.i.i, %sub140.i.i
  br i1 %cmp141.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.while.cond144.preheader.i.i_crit_edge

while.body.i.i.while.cond144.preheader.i.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond144.preheader.i.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

while.body151.i.i:                                ; preds = %while.body151.i.i.while.body151.i.i_crit_edge, %while.cond144.preheader.i.i.while.body151.i.i_crit_edge
  %shift.1297.i.i = phi i32 [ %dec.i.i, %while.body151.i.i.while.body151.i.i_crit_edge ], [ %shift.0.lcssa.i.i, %while.cond144.preheader.i.i.while.body151.i.i_crit_edge ]
  %f.2296.i.i = phi i32 [ %shr.i.i, %while.body151.i.i.while.body151.i.i_crit_edge ], [ %f.1.lcssa.i.i, %while.cond144.preheader.i.i.while.body151.i.i_crit_edge ]
  %shr.i.i = lshr i32 %f.2296.i.i, 1
  %dec.i.i = add i32 %shift.1297.i.i, -1
  %cmp149.i.i = icmp ugt i32 %shr.i.i, %add148.i.i
  br i1 %cmp149.i.i, label %while.body151.i.i.while.body151.i.i_crit_edge, label %while.body151.i.i.while.end152.i.i_crit_edge

while.body151.i.i.while.end152.i.i_crit_edge:     ; preds = %while.body151.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end152.i.i

while.body151.i.i.while.body151.i.i_crit_edge:    ; preds = %while.body151.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body151.i.i

while.end152.i.i:                                 ; preds = %while.body151.i.i.while.end152.i.i_crit_edge, %while.cond144.preheader.i.i.while.end152.i.i_crit_edge
  %f.2.lcssa.i.i = phi i32 [ %f.1.lcssa.i.i, %while.cond144.preheader.i.i.while.end152.i.i_crit_edge ], [ %shr.i.i, %while.body151.i.i.while.end152.i.i_crit_edge ]
  %shift.1.lcssa.i.i = phi i32 [ %shift.0.lcssa.i.i, %while.cond144.preheader.i.i.while.end152.i.i_crit_edge ], [ %dec.i.i, %while.body151.i.i.while.end152.i.i_crit_edge ]
  %107 = ptrtoint ptr %freqshift.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %shift.1.lcssa.i.i, ptr %freqshift.i.i, align 4
  br label %if.end167.i.i

if.else154.i.i:                                   ; preds = %if.else127.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %104)
  %cmp156.i.i = icmp sgt i32 %104, -1
  br i1 %cmp156.i.i, label %if.then158.i.i, label %if.else161.i.i

if.then158.i.i:                                   ; preds = %if.else154.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %shl160.i.i = shl i32 %f.0.i.i, %104
  br label %if.end167.i.i

if.else161.i.i:                                   ; preds = %if.else154.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub163.i.i = sub nsw i32 0, %104
  %shr164.i.i = lshr i32 %f.0.i.i, %sub163.i.i
  br label %if.end167.i.i

if.end167.i.i:                                    ; preds = %if.else161.i.i, %if.then158.i.i, %while.end152.i.i, %if.else118.i.i, %if.then116.i.i
  %f.3.i.i = phi i32 [ %add117.i.i, %if.then116.i.i ], [ %f.2.lcssa.i.i, %while.end152.i.i ], [ %shl160.i.i, %if.then158.i.i ], [ %shr164.i.i, %if.else161.i.i ], [ %spec.select.i.i, %if.else118.i.i ]
  %freqn168.i.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %45, i32 0, i32 31
  %108 = ptrtoint ptr %freqn168.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %freqn168.i.i, align 4
  %div170277.i.i = lshr i32 %109, 3
  %sub171.i.i = sub i32 %109, %div170277.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %f.3.i.i, i32 %sub171.i.i)
  %cmp172.not.i.i = icmp ult i32 %f.3.i.i, %sub171.i.i
  br i1 %cmp172.not.i.i, label %if.end167.i.i.if.else198.i.i_crit_edge, label %land.rhs.i.i, !prof !132

if.end167.i.i.if.else198.i.i_crit_edge:           ; preds = %if.end167.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else198.i.i

land.rhs.i.i:                                     ; preds = %if.end167.i.i
  %freqmax.i.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %45, i32 0, i32 34
  %110 = ptrtoint ptr %freqmax.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %freqmax.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %f.3.i.i, i32 %111)
  %cmp174.not.i.i = icmp ugt i32 %f.3.i.i, %111
  br i1 %cmp174.not.i.i, label %land.rhs.i.i.if.else198.i.i_crit_edge, label %do.body184.i.i, !prof !132

land.rhs.i.i.if.else198.i.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else198.i.i

do.body184.i.i:                                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %lock190.i.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %45, i32 0, i32 60
  %call192.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock190.i.i) #12
  %freqm.i.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %45, i32 0, i32 32
  %112 = ptrtoint ptr %freqm.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %f.3.i.i, ptr %freqm.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock190.i.i, i32 noundef %call192.i.i) #12
  br label %if.end7.i

if.else198.i.i:                                   ; preds = %land.rhs.i.i.if.else198.i.i_crit_edge, %if.end167.i.i.if.else198.i.i_crit_edge
  %freqshift199.i.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %45, i32 0, i32 33
  %113 = ptrtoint ptr %freqshift199.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 -2147483648, ptr %freqshift199.i.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else198.i.i, %do.body184.i.i, %if.end91.i.i.if.end7.i_crit_edge, %lor.lhs.false.i.i.if.end7.i_crit_edge, %if.end79.i.i.if.end7.i_crit_edge, %for.end74.i.i, %if.then.i.i.i, %land.lhs.true.i.i.i.if.end7.i_crit_edge, %if.then44.i.i.if.end7.i_crit_edge, %for.end.i.i.if.end7.i_crit_edge, %if.then22.i.i.if.end7.i_crit_edge, %do.end.i.if.end7.i_crit_edge
  %data_subs1.i.i129 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %3, i32 0, i32 12
  %114 = ptrtoint ptr %data_subs1.i.i129 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile ptr, ptr %data_subs1.i.i129, align 4
  %tobool.not.i.i130 = icmp eq ptr %115, null
  br i1 %tobool.not.i.i130, label %if.end7.i.retire_inbound_urb.exit_crit_edge, label %land.lhs.true.i16.i

if.end7.i.retire_inbound_urb.exit_crit_edge:      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %retire_inbound_urb.exit

land.lhs.true.i16.i:                              ; preds = %if.end7.i
  %retire_data_urb.i.i131 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %3, i32 0, i32 11
  %116 = ptrtoint ptr %retire_data_urb.i.i131 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %retire_data_urb.i.i131, align 4
  %tobool2.not.i.i132 = icmp eq ptr %117, null
  br i1 %tobool2.not.i.i132, label %land.lhs.true.i16.i.retire_inbound_urb.exit_crit_edge, label %if.then.i.i133

land.lhs.true.i16.i.retire_inbound_urb.exit_crit_edge: ; preds = %land.lhs.true.i16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %retire_inbound_urb.exit

if.then.i.i133:                                   ; preds = %land.lhs.true.i16.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %117(ptr noundef nonnull %115, ptr noundef %16) #12
  br label %retire_inbound_urb.exit

retire_inbound_urb.exit:                          ; preds = %if.then.i.i133, %land.lhs.true.i16.i.retire_inbound_urb.exit_crit_edge, %if.end7.i.retire_inbound_urb.exit_crit_edge, %if.then.i
  %call.i.i.i135 = tail call zeroext i1 @__kasan_check_read(ptr noundef %state.i, i32 noundef 4) #12
  %118 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %119)
  %cmp.i136 = icmp eq i32 %119, 1
  br i1 %cmp.i136, label %if.end71, label %retire_inbound_urb.exit.exit_clear_crit_edge, !prof !128

retire_inbound_urb.exit.exit_clear_crit_edge:     ; preds = %retire_inbound_urb.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_clear

if.end71:                                         ; preds = %retire_inbound_urb.exit
  %120 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %1, align 4
  %122 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.snd_usb_audio, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev.i, align 4
  %dev2.i = getelementptr inbounds %struct.urb, ptr %121, i32 0, i32 8
  %126 = ptrtoint ptr %dev2.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %125, ptr %dev2.i, align 4
  %type.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %3, i32 0, i32 5
  %127 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %type.i, align 4
  %129 = zext i32 %128 to i64
  call void @__sanitizer_cov_trace_switch(i64 %129, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %128, label %if.end71.if.end73_crit_edge [
    i32 0, label %for.cond.preheader.i
    i32 1, label %sw.bb7.i
  ]

if.end71.if.end73_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73

for.cond.preheader.i:                             ; preds = %if.end71
  %packets.i = getelementptr inbounds %struct.snd_urb_ctx, ptr %1, i32 0, i32 5
  %130 = ptrtoint ptr %packets.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %packets.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %cmp1.i = icmp sgt i32 %131, 0
  br i1 %cmp1.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %curpacksize.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %3, i32 0, i32 39
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.03.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %offs.02.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.urb, ptr %121, i32 0, i32 29, i32 %i.03.i
  %132 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %offs.02.i, ptr %arrayidx.i, align 4
  %133 = ptrtoint ptr %curpacksize.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %curpacksize.i, align 4
  %length.i = getelementptr %struct.urb, ptr %121, i32 0, i32 29, i32 %i.03.i, i32 1
  %135 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %length.i, align 4
  %136 = load i32, ptr %curpacksize.i, align 4
  %add.i = add i32 %136, %offs.02.i
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %137 = ptrtoint ptr %packets.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %packets.i, align 4
  %cmp.i137 = icmp slt i32 %inc.i, %138
  br i1 %cmp.i137, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %offs.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %add.i, %for.body.i.for.end.i_crit_edge ]
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %121, i32 0, i32 19
  %139 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %offs.0.lcssa.i, ptr %transfer_buffer_length.i, align 4
  %140 = ptrtoint ptr %packets.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %packets.i, align 4
  %number_of_packets.i = getelementptr inbounds %struct.urb, ptr %121, i32 0, i32 24
  %142 = ptrtoint ptr %number_of_packets.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %number_of_packets.i, align 4
  br label %if.end73

sw.bb7.i:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  %syncmaxsize.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %3, i32 0, i32 41
  %143 = ptrtoint ptr %syncmaxsize.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %syncmaxsize.i, align 4
  %145 = tail call i32 @llvm.umin.i32(i32 %144, i32 4) #12
  %iso_frame_desc9.i = getelementptr inbounds %struct.urb, ptr %121, i32 0, i32 29
  %length11.i = getelementptr inbounds %struct.urb, ptr %121, i32 1, i32 1
  %146 = ptrtoint ptr %length11.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %145, ptr %length11.i, align 4
  %147 = ptrtoint ptr %iso_frame_desc9.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 0, ptr %iso_frame_desc9.i, align 4
  br label %if.end73

if.end73:                                         ; preds = %sw.bb7.i, %for.end.i, %if.end71.if.end73_crit_edge, %if.end48.if.end73_crit_edge
  %call74 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp eq i32 %call74, 0
  br i1 %cmp75, label %if.end73.cleanup_crit_edge, label %do.end

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end73
  %148 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %149, i32 0, i32 1
  %150 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev, align 4
  %dev79 = getelementptr inbounds %struct.usb_device, ptr %151, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev79, ptr noundef nonnull @.str.40, i32 noundef %call74) #15
  %data_subs1.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %3, i32 0, i32 12
  %152 = ptrtoint ptr %data_subs1.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile ptr, ptr %data_subs1.i, align 4
  %tobool.not.i138 = icmp eq ptr %153, null
  br i1 %tobool.not.i138, label %do.end.exit_clear_crit_edge, label %land.lhs.true.i

do.end.exit_clear_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_clear

land.lhs.true.i:                                  ; preds = %do.end
  %pcm_substream.i = getelementptr inbounds %struct.snd_usb_substream, ptr %153, i32 0, i32 2
  %154 = ptrtoint ptr %pcm_substream.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %pcm_substream.i, align 8
  %tobool2.not.i = icmp eq ptr %155, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.exit_clear_crit_edge, label %if.then.i139

land.lhs.true.i.exit_clear_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_clear

if.then.i139:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 @snd_pcm_stop_xrun(ptr noundef nonnull %155) #12
  br label %exit_clear

exit_clear:                                       ; preds = %if.then.i139, %land.lhs.true.i.exit_clear_crit_edge, %do.end.exit_clear_crit_edge, %retire_inbound_urb.exit.exit_clear_crit_edge, %if.end48.exit_clear_crit_edge, %retire_outbound_urb.exit.exit_clear_crit_edge, %if.end18.exit_clear_crit_edge, %if.end.critedge.exit_clear_crit_edge, %entry.exit_clear_crit_edge, %entry.exit_clear_crit_edge141, %entry.exit_clear_crit_edge142, %entry.exit_clear_crit_edge143
  %index80 = getelementptr inbounds %struct.snd_urb_ctx, ptr %1, i32 0, i32 4
  %156 = ptrtoint ptr %index80 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %index80, align 4
  %active_mask81 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %3, i32 0, i32 21
  tail call void @_clear_bit(i32 noundef %157, ptr noundef %active_mask81) #12
  %submitted_urbs82 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %3, i32 0, i32 23
  %call.i.i118 = tail call zeroext i1 @__kasan_check_write(ptr noundef %submitted_urbs82, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %submitted_urbs82, i32 1, i32 3, i32 1) #12
  %158 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %submitted_urbs82, ptr %submitted_urbs82, i32 1, ptr elementtype(i32) %submitted_urbs82) #12, !srcloc !143
  br label %cleanup

cleanup:                                          ; preds = %exit_clear, %if.end73.cleanup_crit_edge, %push_back_to_ready_list.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !15, !17, !18, !20, !21, !22, !23, !25, !26, !28, !29, !31, !32, !33, !35, !36, !38, !39, !40, !42, !43, !45, !46, !47, !49, !50, !52, !53, !55, !56, !57, !59, !60, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !104, !106, !108, !110, !112, !114, !116}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/usb/endpoint.c", i32 495, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @snd_usb_queue_pending_output_urbs._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @snd_usb_queue_pending_output_urbs._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/usb/endpoint.c", i32 641, i32 2}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @snd_usb_add_endpoint.__UNIQUE_ID_ddebug247, !9, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!13 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.9, !9, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @snd_usb_add_endpoint.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../sound/usb/endpoint.c", i32 649, i32 2}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/usb/endpoint.c", i32 748, i32 3}
!20 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @snd_usb_endpoint_open._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @snd_usb_endpoint_open._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/usb/endpoint.c", i32 762, i32 3}
!25 = !{ptr @snd_usb_endpoint_open.__UNIQUE_ID_ddebug248, !24, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/usb/endpoint.c", i32 788, i32 3}
!28 = !{ptr @snd_usb_endpoint_open.__UNIQUE_ID_ddebug249, !27, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/usb/endpoint.c", i32 801, i32 4}
!31 = !{ptr @snd_usb_endpoint_open._entry.15, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @snd_usb_endpoint_open._entry_ptr.17, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/usb/endpoint.c", i32 807, i32 3}
!35 = !{ptr @snd_usb_endpoint_open.__UNIQUE_ID_ddebug250, !34, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/usb/endpoint.c", i32 886, i32 2}
!38 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @snd_usb_endpoint_close.__UNIQUE_ID_ddebug253, !37, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/usb/endpoint.c", i32 899, i32 3}
!42 = !{ptr @snd_usb_endpoint_close.__UNIQUE_ID_ddebug254, !41, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/usb/endpoint.c", i32 1451, i32 2}
!45 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @snd_usb_endpoint_start.__UNIQUE_ID_ddebug271, !44, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/usb/endpoint.c", i32 1478, i32 3}
!49 = !{ptr @snd_usb_endpoint_start.__UNIQUE_ID_ddebug272, !48, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/usb/endpoint.c", i32 1497, i32 4}
!52 = !{ptr @snd_usb_endpoint_start.__UNIQUE_ID_ddebug273, !51, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/usb/endpoint.c", i32 1505, i32 4}
!55 = !{ptr @snd_usb_endpoint_start._entry, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @snd_usb_endpoint_start._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/usb/endpoint.c", i32 1515, i32 3}
!59 = !{ptr @snd_usb_endpoint_start.__UNIQUE_ID_ddebug274, !58, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/usb/endpoint.c", i32 1520, i32 2}
!62 = !{ptr @snd_usb_endpoint_start.__UNIQUE_ID_ddebug275, !61, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/usb/endpoint.c", i32 1557, i32 2}
!65 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @snd_usb_endpoint_stop.__UNIQUE_ID_ddebug276, !64, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/usb/endpoint.c", i32 863, i32 2}
!69 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @endpoint_set_interface.__UNIQUE_ID_ddebug252, !68, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/usb/endpoint.c", i32 867, i32 3}
!73 = !{ptr @endpoint_set_interface._entry, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @endpoint_set_interface._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/usb/endpoint.c", i32 932, i32 3}
!77 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @wait_clear_urbs._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @wait_clear_urbs._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/usb/endpoint.c", i32 1305, i32 2}
!82 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @snd_usb_endpoint_set_params.__UNIQUE_ID_ddebug269, !81, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/usb/endpoint.c", i32 1032, i32 2}
!86 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @data_ep_set_params.__UNIQUE_ID_ddebug255, !85, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/usb/endpoint.c", i32 564, i32 2}
!90 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @snd_complete_urb._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @snd_complete_urb._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/usb/endpoint.c", i32 1653, i32 4}
!95 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @snd_usb_handle_sync_urb._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @snd_usb_handle_sync_urb._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/usb/endpoint.c", i32 1218, i32 2}
!100 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @sync_ep_set_params.__UNIQUE_ID_ddebug268, !99, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/usb/endpoint.c", i32 100, i32 10}
!104 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/usb/endpoint.c", i32 102, i32 10}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/usb/endpoint.c", i32 104, i32 10}
!108 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/usb/endpoint.c", i32 106, i32 10}
!110 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/usb/endpoint.c", i32 108, i32 10}
!112 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/usb/endpoint.c", i32 110, i32 10}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/usb/endpoint.c", i32 115, i32 10}
!116 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/usb/endpoint.c", i32 117, i32 10}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!127 = !{i8 0, i8 2}
!128 = !{!"branch_weights", i32 2000, i32 1}
!129 = !{i64 2148601416, i64 2148601442, i64 2148601471, i64 2148601505, i64 2148601536, i64 2148601559}
!130 = !{i64 2148222142, i64 2148222147, i64 2148222160, i64 2148222204, i64 2148222238, i64 2148222259}
!131 = !{i32 0, i32 33}
!132 = !{!"branch_weights", i32 1, i32 2000}
!133 = !{i64 2148703263}
!134 = !{i64 1086929, i64 1086953, i64 1086974, i64 1086991, i64 1087008}
!135 = !{i64 2148703489}
!136 = !{i64 2148686851}
!137 = !{i64 2148602136, i64 2148602168, i64 2148602197, i64 2148602231, i64 2148602262, i64 2148602285}
!138 = !{i64 2148687080}
!139 = !{i64 2148689892}
!140 = !{i64 2148604601, i64 2148604633, i64 2148604662, i64 2148604696, i64 2148604727, i64 2148604750}
!141 = !{i64 2148690121}
!142 = !{!"branch_weights", i32 2000000000, i32 2002000, i32 2001000, i32 2000000, i32 2000000000}
!143 = !{i64 2148603881, i64 2148603907, i64 2148603936, i64 2148603970, i64 2148604001, i64 2148604024}
