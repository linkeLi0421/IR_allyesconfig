; ModuleID = '/llk/IR_all_yes/drivers/usb/isp1760/isp1760-udc.c_pt.bc'
source_filename = "../drivers/usb/isp1760/isp1760-udc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.isp1760_device = type { ptr, i32, ptr, %struct.isp1760_hcd, %struct.isp1760_udc }
%struct.isp1760_hcd = type { ptr, ptr, ptr, [78 x ptr], i8, ptr, %struct.spinlock, ptr, i32, ptr, i32, [56 x %struct.isp1760_memory_chunk], [3 x %struct.list_head], i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.isp1760_memory_chunk = type { i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.isp1760_udc = type { ptr, i32, ptr, ptr, [40 x ptr], ptr, %struct.usb_gadget, %struct.spinlock, %struct.timer_list, [15 x %struct.isp1760_ep], i32, i8, i16, i8, i8, i32 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.isp1760_ep = type { ptr, %struct.usb_ep, %struct.list_head, i32, i32, [7 x i8], ptr, i8, i8, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.72 = type { [2 x i32] }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.isp1760_request = type { %struct.usb_request, %struct.list_head, ptr, i32 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>

@isp1760_udc_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&udc->lock\00", [21 x i8] zeroinitializer }, align 32
@isp1760_udc_register.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&udc->vbus_timer)\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s (udc)\00", [23 x i8] zeroinitializer }, align 32
@isp1760_udc_ops = internal constant { %struct.usb_gadget_ops, [36 x i8] } { %struct.usb_gadget_ops { ptr @isp1760_udc_get_frame, ptr @isp1760_udc_wakeup, ptr @isp1760_udc_set_selfpowered, ptr null, ptr null, ptr @isp1760_udc_pullup, ptr null, ptr null, ptr @isp1760_udc_start, ptr @isp1760_udc_stop, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"isp1761_udc\00", [20 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@isp1760_udc_disconnect.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, i8 1, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"isp1760\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"isp1760_udc_disconnect\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/usb/isp1760/isp1760-udc.c\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Device disconnected in state %u\0A\00", [63 x i8] zeroinitializer }, align 32
@isp1760_udc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.7, i32 1517, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"udc: scratch test failed (0x%04x/0x%08x)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"isp1760_udc_init\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@isp1760_udc_init._entry_ptr = internal global ptr @isp1760_udc_init._entry, section ".printk_index", align 4
@isp1760_udc_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.10, ptr @.str.7, i32 1523, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"udc: invalid chip ID 0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@isp1760_udc_init._entry_ptr.15 = internal global ptr @isp1760_udc_init._entry.13, section ".printk_index", align 4
@isp1760_udc_irq.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.16, ptr @.str.7, ptr @.str.17, i8 1, i8 85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"isp1760_udc_irq\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s(VBUS)\0A\00", [22 x i8] zeroinitializer }, align 32
@isp1760_udc_irq.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.16, ptr @.str.7, ptr @.str.18, i8 1, i8 87, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s(BRST)\0A\00", [22 x i8] zeroinitializer }, align 32
@isp1760_udc_irq.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.16, ptr @.str.7, ptr @.str.19, i8 1, i8 90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s(EPTX%u)\0A\00", [20 x i8] zeroinitializer }, align 32
@isp1760_udc_irq.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.16, ptr @.str.7, ptr @.str.20, i8 1, i8 91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s(EPRX%u)\0A\00", [20 x i8] zeroinitializer }, align 32
@isp1760_udc_irq.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.16, ptr @.str.7, ptr @.str.21, i8 1, i8 92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s(EP0SETUP)\0A\00", [18 x i8] zeroinitializer }, align 32
@isp1760_udc_irq.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.16, ptr @.str.7, ptr @.str.22, i8 1, i8 94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s(RESM)\0A\00", [22 x i8] zeroinitializer }, align 32
@isp1760_udc_irq.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.16, ptr @.str.7, ptr @.str.23, i8 1, i8 95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s(SUSP)\0A\00", [22 x i8] zeroinitializer }, align 32
@isp1760_udc_irq.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.16, ptr @.str.7, ptr @.str.24, i8 1, i8 98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s(HS_STA)\0A\00", [20 x i8] zeroinitializer }, align 32
@isp1760_ep_tx_complete.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.25, ptr @.str.7, ptr @.str.26, i8 0, i8 97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"isp1760_ep_tx_complete\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"TX IRQ: invalid endpoint state %u\0A\00", [61 x i8] zeroinitializer }, align 32
@isp1760_ep_tx_complete.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.25, ptr @.str.7, ptr @.str.27, i8 0, i8 101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: ep%02x has no request queued\0A\00", [62 x i8] zeroinitializer }, align 32
@isp1760_ep_tx_complete.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.25, ptr @.str.7, ptr @.str.28, i8 0, i8 105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"TX IRQ: req %p actual/length %u/%u maxpacket %u packet size %u zero %u need zlp %u\0A\00", [44 x i8] zeroinitializer }, align 32
@isp1760_udc_transmit.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.29, ptr @.str.7, ptr @.str.30, i8 0, i8 78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"isp1760_udc_transmit\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: transferring %u bytes (%u/%u done)\0A\00", [56 x i8] zeroinitializer }, align 32
@isp1760_udc_request_complete.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.31, ptr @.str.7, ptr @.str.32, i8 0, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"isp1760_udc_request_complete\00", [35 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"completing request %p with status %d\0A\00", [58 x i8] zeroinitializer }, align 32
@isp1760_ep_rx_ready.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.33, ptr @.str.7, ptr @.str.34, i8 0, i8 86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"isp1760_ep_rx_ready\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: invalid ep0 state %u\0A\00", [38 x i8] zeroinitializer }, align 32
@isp1760_ep_rx_ready.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.33, ptr @.str.7, ptr @.str.35, i8 0, i8 88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: ep%02x is disabled\0A\00", [40 x i8] zeroinitializer }, align 32
@isp1760_ep_rx_ready.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.33, ptr @.str.7, ptr @.str.36, i8 0, i8 90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: ep%02x (%p) has no request queued\0A\00", [57 x i8] zeroinitializer }, align 32
@isp1760_udc_receive.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.37, ptr @.str.7, ptr @.str.38, i8 0, i8 61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"isp1760_udc_receive\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: received %u bytes (%u/%u done)\0A\00", [60 x i8] zeroinitializer }, align 32
@isp1760_udc_receive.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.37, ptr @.str.7, ptr @.str.39, i8 0, i8 71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s: req %p actual/length %u/%u maxpacket %u packet size %u\0A\00", [36 x i8] zeroinitializer }, align 32
@isp1760_ep0_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.7, i32 726, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"invalid length %u for setup packet\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"isp1760_ep0_setup\00", [46 x i8] zeroinitializer }, align 32
@isp1760_ep0_setup._entry_ptr = internal global ptr @isp1760_ep0_setup._entry, section ".printk_index", align 4
@isp1760_ep0_setup.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.41, ptr @.str.7, ptr @.str.42, i8 0, i8 -72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unexpected SETUP packet\0A\00", [39 x i8] zeroinitializer }, align 32
@isp1760_ep0_setup.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.41, ptr @.str.7, ptr @.str.43, i8 0, i8 -67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"%s: bRequestType 0x%02x bRequest 0x%02x wValue 0x%04x wIndex 0x%04x wLength 0x%04x\0A\00", [44 x i8] zeroinitializer }, align 32
@isp1760_udc_ctrl_send_stall.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.44, ptr @.str.7, ptr @.str.45, i8 0, i8 53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"isp1760_udc_ctrl_send_stall\00", [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s(ep%02x)\0A\00", [20 x i8] zeroinitializer }, align 32
@isp1760_udc_get_status.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.46, ptr @.str.7, ptr @.str.47, i8 0, i8 -118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"isp1760_udc_get_status\00", [41 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: status 0x%04x\0A\00", [45 x i8] zeroinitializer }, align 32
@__isp1760_udc_set_halt.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.48, ptr @.str.7, ptr @.str.49, i8 0, i8 115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__isp1760_udc_set_halt\00", [41 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: %s halt on ep%02x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"set\00", [28 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clear\00", [26 x i8] zeroinitializer }, align 32
@__isp1760_udc_set_halt.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.48, ptr @.str.7, ptr @.str.52, i8 0, i8 116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: ep%02x is isochronous\0A\00", [37 x i8] zeroinitializer }, align 32
@isp1760_udc_set_address.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.53, ptr @.str.7, ptr @.str.54, i8 0, i8 -116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"isp1760_udc_set_address\00", [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid device address %u\0A\00", [37 x i8] zeroinitializer }, align 32
@isp1760_udc_set_address.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.53, ptr @.str.7, ptr @.str.55, i8 0, i8 -114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"can't set address in state %u\0A\00", [33 x i8] zeroinitializer }, align 32
@isp1760_udc_wakeup.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.56, ptr @.str.7, ptr @.str.57, i8 1, i8 53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"isp1760_udc_wakeup\00", [45 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@isp1760_udc_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.7, i32 1274, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid gadget driver\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"isp1760_udc_start\00", [46 x i8] zeroinitializer }, align 32
@isp1760_udc_start._entry_ptr = internal global ptr @isp1760_udc_start._entry, section ".printk_index", align 4
@isp1760_udc_start._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.7, i32 1281, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"UDC already has a gadget driver\0A\00", [63 x i8] zeroinitializer }, align 32
@isp1760_udc_start._entry_ptr.62 = internal global ptr @isp1760_udc_start._entry.60, section ".printk_index", align 4
@isp1760_udc_start.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.59, ptr @.str.7, ptr @.str.63, i8 1, i8 66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"starting UDC with driver %s\0A\00", [35 x i8] zeroinitializer }, align 32
@isp1760_udc_start.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.59, ptr @.str.7, ptr @.str.64, i8 1, i8 70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"UDC started with driver %s\0A\00", [36 x i8] zeroinitializer }, align 32
@isp1760_udc_stop.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.65, ptr @.str.7, ptr @.str.57, i8 1, i8 72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"isp1760_udc_stop\00", [47 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep%u%s\00", [25 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@isp1760_ep_ops = internal constant { %struct.usb_ep_ops, [52 x i8] } { %struct.usb_ep_ops { ptr @isp1760_ep_enable, ptr @isp1760_ep_disable, ptr null, ptr @isp1760_ep_alloc_request, ptr @isp1760_ep_free_request, ptr @isp1760_ep_queue, ptr @isp1760_ep_dequeue, ptr @isp1760_ep_set_halt, ptr @isp1760_ep_set_wedge, ptr null, ptr @isp1760_ep_fifo_flush }, [52 x i8] zeroinitializer }, align 32
@isp1760_ep_enable.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.70, ptr @.str.7, ptr @.str.57, i8 0, i8 -61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"isp1760_ep_enable\00", [46 x i8] zeroinitializer }, align 32
@isp1760_ep_enable.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.70, ptr @.str.7, ptr @.str.71, i8 0, i8 -58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"%s: invalid descriptor type %u addr %02x ep addr %02x max packet size %u/%u\0A\00", [51 x i8] zeroinitializer }, align 32
@isp1760_ep_enable.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.70, ptr @.str.7, ptr @.str.72, i8 0, i8 -53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: control endpoints unsupported\0A\00", [61 x i8] zeroinitializer }, align 32
@isp1760_ep_disable.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.73, ptr @.str.7, ptr @.str.57, i8 0, i8 -45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"isp1760_ep_disable\00", [45 x i8] zeroinitializer }, align 32
@isp1760_ep_disable.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.73, ptr @.str.7, ptr @.str.74, i8 0, i8 -44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: endpoint not enabled\0A\00", [38 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@isp1760_ep_queue.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.75, ptr @.str.7, ptr @.str.76, i8 0, i8 -28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"isp1760_ep_queue\00", [47 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: req %p (%u bytes%s) ep %p(0x%02x)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" (zlp)\00", [25 x i8] zeroinitializer }, align 32
@isp1760_ep_queue.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.75, ptr @.str.7, ptr @.str.78, i8 0, i8 -26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: invalid length %u for req %p\0A\00", [62 x i8] zeroinitializer }, align 32
@isp1760_ep_queue.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.75, ptr @.str.7, ptr @.str.79, i8 0, i8 -24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: transmitting req %p\0A\00", [39 x i8] zeroinitializer }, align 32
@isp1760_ep_queue.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.75, ptr @.str.7, ptr @.str.80, i8 0, i8 -20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: invalid ep0 state\0A\00", [41 x i8] zeroinitializer }, align 32
@isp1760_ep_queue.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.75, ptr @.str.7, ptr @.str.81, i8 0, i8 -16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: can't queue request to disabled ep%02x\0A\00", [52 x i8] zeroinitializer }, align 32
@isp1760_ep_dequeue.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.82, ptr @.str.7, ptr @.str.45, i8 0, i8 -10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"isp1760_ep_dequeue\00", [45 x i8] zeroinitializer }, align 32
@isp1760_ep_set_halt.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.83, ptr @.str.7, ptr @.str.49, i8 1, i8 10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"isp1760_ep_set_halt\00", [44 x i8] zeroinitializer }, align 32
@__isp1760_ep_set_halt.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.84, ptr @.str.7, ptr @.str.35, i8 0, i8 -1, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__isp1760_ep_set_halt\00", [42 x i8] zeroinitializer }, align 32
@__isp1760_ep_set_halt.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.84, ptr @.str.7, ptr @.str.85, i8 1, i8 2, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: ep%02x has request pending\0A\00", [32 x i8] zeroinitializer }, align 32
@isp1760_ep_set_wedge.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.86, ptr @.str.7, ptr @.str.87, i8 1, i8 14, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"isp1760_ep_set_wedge\00", [43 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: set wedge on ep%02x)\0A\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 71042, i64 1409552, i64 1532704]
@__sancov_gen_cov_switch_values.88 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 3, i64 5, i64 9]
@__sancov_gen_cov_switch_values.89 = internal global [5 x i64] [i64 3, i64 8, i64 128, i64 129, i64 130]
@__sancov_gen_cov_switch_values.90 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1545, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1546, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1552, i32 39 }
@___asan_gen_.106 = private unnamed_addr constant [16 x i8] c"isp1760_udc_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1328, i32 36 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1571, i32 21 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1139, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1515, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1523, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1367, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1375, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1384, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1389, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1395, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1401, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1406, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1417, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 387, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 405, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 418, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 310, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 188, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 346, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 353, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 361, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 245, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 281, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 725, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 737, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 754, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 213, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 554, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 460, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 464, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 562, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 568, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1239, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1274, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1281, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1290, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1303, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1315, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1463, i32 21 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1464, i32 22 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1464, i32 29 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1464, i32 38 }
@___asan_gen_.310 = private unnamed_addr constant [15 x i8] c"isp1760_ep_ops\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1110, i32 32 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 781, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 791, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 811, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 845, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 850, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 910, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 919, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 928, i32 4 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 946, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 960, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 985, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1064, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1022, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1030, i32 4 }
@___asan_gen_.364 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.365 = private constant [37 x i8] c"../drivers/usb/isp1760/isp1760-udc.c\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1080, i32 2 }
@llvm.compiler.used = appending global [97 x ptr] [ptr @isp1760_ep0_setup._entry, ptr @isp1760_ep0_setup._entry_ptr, ptr @isp1760_udc_init._entry, ptr @isp1760_udc_init._entry.13, ptr @isp1760_udc_init._entry_ptr, ptr @isp1760_udc_init._entry_ptr.15, ptr @isp1760_udc_start._entry, ptr @isp1760_udc_start._entry.60, ptr @isp1760_udc_start._entry_ptr, ptr @isp1760_udc_start._entry_ptr.62, ptr @isp1760_udc_register.__key, ptr @.str, ptr @isp1760_udc_register.__key.1, ptr @.str.2, ptr @.str.3, ptr @isp1760_udc_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @isp1760_ep_ops, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87], section "llvm.metadata"
@0 = internal global [92 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1760_udc_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1760_udc_register.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1760_udc_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1760_udc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1760_udc_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1760_ep0_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1760_udc_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1760_udc_start._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1760_ep_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @isp1760_udc_register(ptr noundef %isp, i32 noundef %irq, i32 noundef %irqflags) local_unnamed_addr #0 align 64 {
entry:
  %val.i.i42.i = alloca i32, align 4
  %val.i.i38.i = alloca i32, align 4
  %val.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %udc1 = getelementptr inbounds %struct.isp1760_device, ptr %isp, i32 0, i32 4
  %irq2 = getelementptr inbounds %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %irq2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %irq2, align 4
  %1 = ptrtoint ptr %udc1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %isp, ptr %udc1, align 8
  %lock = getelementptr inbounds %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @isp1760_udc_register.__key, i16 noundef signext 3) #9
  %vbus_timer = getelementptr inbounds %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 8
  tail call void @init_timer_key(ptr noundef %vbus_timer, ptr noundef nonnull @isp1760_udc_vbus_poll, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @isp1760_udc_register.__key.1) #9
  %is_isp1763.i = getelementptr inbounds %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 14
  %2 = ptrtoint ptr %is_isp1763.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_isp1763.i, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  %cond.i = select i1 %tobool.not.i, i32 524, i32 12
  %arrayidx.i.i.i = getelementptr %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 4, i32 39
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %5, i32 noundef -1, i32 noundef 47806, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i) #9
  %6 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val.i.i.i, align 4, !annotation !214
  %arrayidx.i.i37.i = getelementptr %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 4, i32 37
  %7 = ptrtoint ptr %arrayidx.i.i37.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i37.i, align 4
  %call.i.i.i = call i32 @regmap_field_read(ptr noundef %8, ptr noundef nonnull %val.i.i.i) #9
  %9 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #9
  %shl.i = shl i32 %10, 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i38.i) #9
  %11 = ptrtoint ptr %val.i.i38.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %val.i.i38.i, align 4, !annotation !214
  %arrayidx.i.i40.i = getelementptr %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 4, i32 38
  %12 = ptrtoint ptr %arrayidx.i.i40.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i40.i, align 4
  %call.i.i41.i = call i32 @regmap_field_read(ptr noundef %13, ptr noundef nonnull %val.i.i38.i) #9
  %14 = ptrtoint ptr %val.i.i38.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val.i.i38.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i38.i) #9
  %or.i = or i32 %15, %shl.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i42.i) #9
  %16 = ptrtoint ptr %val.i.i42.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %val.i.i42.i, align 4, !annotation !214
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i45.i = call i32 @regmap_field_read(ptr noundef %18, ptr noundef nonnull %val.i.i42.i) #9
  %19 = ptrtoint ptr %val.i.i42.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val.i.i42.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i42.i) #9
  %conv3.i = and i32 %20, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 47806, i32 %conv3.i)
  %cmp.not.i = icmp eq i32 %conv3.i, 47806
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %udc1, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.9, i32 noundef %conv3.i, i32 noundef %or.i) #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %25 = zext i32 %or.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %or.i, label %do.end16.i [
    i32 71042, label %if.end.i.if.end_crit_edge
    i32 1409552, label %if.end.i.if.end_crit_edge75
    i32 1532704, label %if.end.i.if.end_crit_edge76
  ]

if.end.i.if.end_crit_edge76:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i.if.end_crit_edge75:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end16.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %udc1, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.14, i32 noundef %or.i) #12
  br label %cleanup

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %if.end.i.if.end_crit_edge75, %if.end.i.if.end_crit_edge76
  %arrayidx.i.i.i.i = getelementptr %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 4, i32 3
  %30 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %31, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #9
  %regs.i = getelementptr inbounds %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 3
  %32 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i, align 4
  %call.i.i = call i32 @regmap_write(ptr noundef %33, i32 noundef %cond.i, i32 noundef 0) #9
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #9
  %34 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %isp, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i63 = icmp eq ptr %37, null
  br i1 %tobool.not.i63, label %if.end.i64, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i64:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i64, %if.end.dev_name.exit_crit_edge
  %retval.0.i65 = phi ptr [ %39, %if.end.i64 ], [ %37, %if.end.dev_name.exit_crit_edge ]
  %call9 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.3, ptr noundef %retval.0.i65) #9
  %irqname = getelementptr inbounds %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 2
  %40 = ptrtoint ptr %irqname to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call9, ptr %irqname, align 8
  %tobool.not = icmp eq ptr %call9, null
  br i1 %tobool.not, label %dev_name.exit.cleanup_crit_edge, label %if.end12

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %dev_name.exit
  %or = or i32 %irqflags, 128
  %call.i = call i32 @request_threaded_irq(i32 noundef %irq, ptr noundef nonnull @isp1760_udc_irq, ptr noundef null, i32 noundef %or, ptr noundef nonnull %call9, ptr noundef %udc1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp15 = icmp slt i32 %call.i, 0
  br i1 %cmp15, label %if.end12.error_crit_edge, label %for.body.i.peel.next

if.end12.error_crit_edge:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

for.body.i.peel.next:                             ; preds = %if.end12
  %41 = ptrtoint ptr %irq2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %irq, ptr %irq2, align 4
  %ops = getelementptr inbounds %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 6, i32 2
  %42 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @isp1760_udc_ops, ptr %ops, align 8
  %speed = getelementptr inbounds %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 6, i32 5
  %43 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %speed, align 8
  %max_speed = getelementptr inbounds %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 6, i32 6
  %44 = ptrtoint ptr %max_speed to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 3, ptr %max_speed, align 4
  %name = getelementptr inbounds %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 6, i32 10
  %45 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.4, ptr %name, align 4
  %ep_list.i = getelementptr inbounds %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 6, i32 4
  %46 = ptrtoint ptr %ep_list.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %ep_list.i, ptr %ep_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 6, i32 4, i32 1
  %47 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %ep_list.i, ptr %prev.i.i, align 4
  %caps.i = getelementptr %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 9, i32 0, i32 1, i32 4
  %arrayidx.i.peel = getelementptr %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 9, i32 0
  %48 = ptrtoint ptr %arrayidx.i.peel to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %udc1, ptr %arrayidx.i.peel, align 4
  %queue.i.peel = getelementptr %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 9, i32 0, i32 2
  %49 = ptrtoint ptr %queue.i.peel to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %queue.i.peel, ptr %queue.i.peel, align 4
  %prev.i100.i.peel = getelementptr %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 9, i32 0, i32 2, i32 1
  %50 = ptrtoint ptr %prev.i100.i.peel to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %queue.i.peel, ptr %prev.i100.i.peel, align 4
  %addr.i.peel = getelementptr %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 9, i32 0, i32 3
  %51 = ptrtoint ptr %addr.i.peel to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %addr.i.peel, align 4
  %desc.i.peel = getelementptr %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 9, i32 0, i32 6
  %52 = ptrtoint ptr %desc.i.peel to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %desc.i.peel, align 4
  %name.i.peel = getelementptr %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 9, i32 0, i32 5
  %call.i69.peel = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name.i.peel, ptr noundef nonnull @.str.66, i32 noundef 0, ptr noundef nonnull @.str.69) #9
  %ops.i.peel = getelementptr %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 9, i32 0, i32 1, i32 2
  %53 = ptrtoint ptr %ops.i.peel to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @isp1760_ep_ops, ptr %ops.i.peel, align 4
  %name13.i.peel = getelementptr %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 9, i32 0, i32 1, i32 1
  %54 = ptrtoint ptr %name13.i.peel to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %name.i.peel, ptr %name13.i.peel, align 4
  %ep9.i.peel = getelementptr %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 9, i32 0, i32 1
  %maxpacket.i = getelementptr %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 9, i32 0, i32 4
  %ep0.i = getelementptr inbounds %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 6, i32 3
  call void @usb_ep_set_maxpacket_limit(ptr noundef %ep9.i.peel, i32 noundef 64) #9
  %55 = ptrtoint ptr %caps.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load.i.peel = load i8, ptr %caps.i, align 4
  %bf.set26.i.peel = or i8 %bf.load.i.peel, -116
  store i8 %bf.set26.i.peel, ptr %caps.i, align 4
  %56 = ptrtoint ptr %maxpacket.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 64, ptr %maxpacket.i, align 4
  %57 = ptrtoint ptr %ep0.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %ep9.i.peel, ptr %ep0.i, align 4
  store i8 %bf.set26.i.peel, ptr %caps.i, align 4
  br label %if.else.i

if.else.i:                                        ; preds = %if.end.i71.if.else.i_crit_edge, %for.body.i.peel.next
  %i.0102.i = phi i32 [ 1, %for.body.i.peel.next ], [ %add.i, %if.end.i71.if.else.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 9, i32 %i.0102.i
  %add.i = add nuw nsw i32 %i.0102.i, 1
  %div99.i = lshr i32 %add.i, 1
  %and.i = and i32 %i.0102.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i66 = icmp eq i32 %and.i, 0
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %udc1, ptr %arrayidx.i, align 4
  %queue.i = getelementptr %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 9, i32 %i.0102.i, i32 2
  %59 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %queue.i, ptr %queue.i, align 4
  %prev.i100.i = getelementptr %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 9, i32 %i.0102.i, i32 2, i32 1
  %60 = ptrtoint ptr %prev.i100.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %queue.i, ptr %prev.i100.i, align 4
  %61 = shl nuw nsw i32 %and.i, 7
  %62 = xor i32 %61, 128
  %or.i68 = or i32 %62, %div99.i
  %addr.i = getelementptr %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 9, i32 %i.0102.i, i32 3
  %63 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %or.i68, ptr %addr.i, align 4
  %desc.i = getelementptr %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 9, i32 %i.0102.i, i32 6
  %64 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %desc.i, align 4
  %name.i = getelementptr %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 9, i32 %i.0102.i, i32 5
  %cond7.i = select i1 %tobool.not.i66, ptr @.str.67, ptr @.str.68
  %call.i69 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name.i, ptr noundef nonnull @.str.66, i32 noundef %div99.i, ptr noundef nonnull %cond7.i) #9
  %ops.i = getelementptr %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 9, i32 %i.0102.i, i32 1, i32 2
  %65 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @isp1760_ep_ops, ptr %ops.i, align 4
  %name13.i = getelementptr %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 9, i32 %i.0102.i, i32 1, i32 1
  %66 = ptrtoint ptr %name13.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %name.i, ptr %name13.i, align 4
  %ep9.i = getelementptr %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 9, i32 %i.0102.i, i32 1
  call void @usb_ep_set_maxpacket_limit(ptr noundef %ep9.i, i32 noundef 512) #9
  %caps31.i = getelementptr %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 9, i32 %i.0102.i, i32 1, i32 4
  %67 = ptrtoint ptr %caps31.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %bf.load32.i = load i8, ptr %caps31.i, align 4
  %bf.set44.i = or i8 %bf.load32.i, 112
  store i8 %bf.set44.i, ptr %caps31.i, align 4
  %maxpacket45.i = getelementptr %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 9, i32 %i.0102.i, i32 4
  %68 = ptrtoint ptr %maxpacket45.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %maxpacket45.i, align 4
  %ep_list47.i = getelementptr %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 9, i32 %i.0102.i, i32 1, i32 3
  %69 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i70 = call zeroext i1 @__list_add_valid(ptr noundef %ep_list47.i, ptr noundef %70, ptr noundef %ep_list.i) #9
  br i1 %call.i.i.i70, label %if.end.i.i.i, label %if.else.i.if.end.i71_crit_edge

if.else.i.if.end.i71_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i71

if.end.i.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %ep_list47.i, ptr %prev.i.i, align 4
  %72 = ptrtoint ptr %ep_list47.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %ep_list.i, ptr %ep_list47.i, align 4
  %prev3.i.i.i = getelementptr %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 9, i32 %i.0102.i, i32 1, i32 3, i32 1
  %73 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %70, ptr %prev3.i.i.i, align 4
  %74 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %ep_list47.i, ptr %70, align 4
  br label %if.end.i71

if.end.i71:                                       ; preds = %if.end.i.i.i, %if.else.i.if.end.i71_crit_edge
  %caps53.i = getelementptr %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 9, i32 %i.0102.i, i32 1, i32 4
  %75 = ptrtoint ptr %caps53.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %bf.load54.i = load i8, ptr %caps53.i, align 4
  %..i = select i1 %tobool.not.i66, i8 8, i8 4
  %bf.set62.i = or i8 %bf.load54.i, %..i
  store i8 %bf.set62.i, ptr %caps53.i, align 4
  %exitcond.not.i = icmp eq i32 %add.i, 15
  br i1 %exitcond.not.i, label %isp1760_udc_init_eps.exit, label %if.end.i71.if.else.i_crit_edge, !llvm.loop !215

if.end.i71.if.else.i_crit_edge:                   ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

isp1760_udc_init_eps.exit:                        ; preds = %if.end.i71
  %gadget = getelementptr inbounds %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 6
  %76 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %isp, align 8
  %call24 = call i32 @usb_add_gadget_udc(ptr noundef %77, ptr noundef %gadget) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %isp1760_udc_init_eps.exit.error_crit_edge, label %isp1760_udc_init_eps.exit.cleanup_crit_edge

isp1760_udc_init_eps.exit.cleanup_crit_edge:      ; preds = %isp1760_udc_init_eps.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

isp1760_udc_init_eps.exit.error_crit_edge:        ; preds = %isp1760_udc_init_eps.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

error:                                            ; preds = %isp1760_udc_init_eps.exit.error_crit_edge, %if.end12.error_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end12.error_crit_edge ], [ %call24, %isp1760_udc_init_eps.exit.error_crit_edge ]
  %78 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %irq2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %79)
  %cmp29 = icmp sgt i32 %79, -1
  br i1 %cmp29, label %if.then30, label %error.if.end33_crit_edge

error.if.end33_crit_edge:                         ; preds = %error
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then30:                                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #11
  %call32 = call ptr @free_irq(i32 noundef %79, ptr noundef %udc1) #9
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %error.if.end33_crit_edge
  %80 = ptrtoint ptr %irqname to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %irqname, align 8
  call void @kfree(ptr noundef %81) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %isp1760_udc_init_eps.exit.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge, %do.end16.i, %do.end.i
  %retval.0 = phi i32 [ %ret.0, %if.end33 ], [ -12, %dev_name.exit.cleanup_crit_edge ], [ 0, %isp1760_udc_init_eps.exit.cleanup_crit_edge ], [ -19, %do.end.i ], [ -19, %do.end16.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isp1760_udc_vbus_poll(ptr noundef %t) #0 align 64 {
entry:
  %val.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1276
  %lock = getelementptr i8, ptr %t, i32 -44
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i) #9
  %0 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i.i.i, align 4, !annotation !214
  %arrayidx.i.i.i = getelementptr i8, ptr %t, i32 -1252
  %1 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i.i = call i32 @regmap_field_read(ptr noundef %2, ptr noundef nonnull %val.i.i.i) #9
  %3 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %gadget.i = getelementptr i8, ptr %t, i32 -1092
  %state.i = getelementptr i8, ptr %t, i32 -1012
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.i = icmp ult i32 %6, 2
  br i1 %cmp.i, label %if.then.if.end12_crit_edge, label %do.body.i

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

do.body.i:                                        ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_udc_disconnect.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_udc_vbus_poll, %if.then3.i)) #9
          to label %do.end.i [label %if.then3.i], !srcloc !217

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state.i, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_udc_disconnect.__UNIQUE_ID_ddebug274, ptr noundef %10, ptr noundef nonnull @.str.8, i32 noundef %12) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then3.i, %do.body.i
  %speed.i = getelementptr i8, ptr %t, i32 -1028
  %13 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %speed.i, align 8
  call void @usb_gadget_set_state(ptr noundef %gadget.i, i32 noundef 1) #9
  %driver.i = getelementptr i8, ptr %t, i32 -1100
  %14 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver.i, align 8
  %disconnect.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %disconnect.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %disconnect.i, align 4
  %tobool9.not.i = icmp eq ptr %17, null
  br i1 %tobool9.not.i, label %do.end.i.if.end14.i_crit_edge, label %if.then10.i

do.end.i.if.end14.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.then10.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void %17(ptr noundef %gadget.i) #9
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then10.i, %do.end.i.if.end14.i_crit_edge
  %call15.i = call i32 @del_timer(ptr noundef %t) #9
  br label %if.end12

if.else:                                          ; preds = %entry
  %state = getelementptr i8, ptr %t, i32 -1012
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp7 = icmp ugt i32 %19, 1
  br i1 %cmp7, label %if.then9, label %if.else.if.end12_crit_edge

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %20, 50
  %call11 = call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.else.if.end12_crit_edge, %if.end14.i, %if.then.if.end12_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp1760_udc_irq(i32 noundef %irq, ptr noundef %dev) #0 align 64 {
entry:
  %val.i.i.i = alloca i32, align 4
  %val.i23.i = alloca i32, align 4
  %val.i21.i = alloca i32, align 4
  %val.i18.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %is_isp1763.i = getelementptr inbounds %struct.isp1760_udc, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %is_isp1763.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_isp1763.i, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  %regs4.i = getelementptr inbounds %struct.isp1760_udc, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %regs4.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs4.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #9
  %4 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i.i, align 4, !annotation !214
  %call.i.i = call i32 @regmap_read(ptr noundef %3, i32 noundef 24, ptr noundef nonnull %val.i.i) #9
  %5 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #9
  %7 = ptrtoint ptr %regs4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs4.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i18.i) #9
  %9 = ptrtoint ptr %val.i18.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %val.i18.i, align 4, !annotation !214
  %call.i19.i = call i32 @regmap_read(ptr noundef %8, i32 noundef 20, ptr noundef nonnull %val.i18.i) #9
  %10 = ptrtoint ptr %val.i18.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val.i18.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i18.i) #9
  %and.i = and i32 %11, %6
  %12 = ptrtoint ptr %regs4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs4.i, align 4
  %call.i20.i = call i32 @regmap_write(ptr noundef %13, i32 noundef 24, i32 noundef %and.i) #9
  br label %isp1760_udc_irq_get_status.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i21.i) #9
  %14 = ptrtoint ptr %val.i21.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %val.i21.i, align 4, !annotation !214
  %call.i22.i = call i32 @regmap_read(ptr noundef %3, i32 noundef 536, ptr noundef nonnull %val.i21.i) #9
  %15 = ptrtoint ptr %val.i21.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val.i21.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i21.i) #9
  %17 = ptrtoint ptr %regs4.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs4.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i23.i) #9
  %19 = ptrtoint ptr %val.i23.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %val.i23.i, align 4, !annotation !214
  %call.i24.i = call i32 @regmap_read(ptr noundef %18, i32 noundef 532, ptr noundef nonnull %val.i23.i) #9
  %20 = ptrtoint ptr %val.i23.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val.i23.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i23.i) #9
  %and8.i = and i32 %21, %16
  %22 = ptrtoint ptr %regs4.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs4.i, align 4
  %call.i25.i = call i32 @regmap_write(ptr noundef %23, i32 noundef 536, i32 noundef %and8.i) #9
  br label %isp1760_udc_irq_get_status.exit

isp1760_udc_irq_get_status.exit:                  ; preds = %if.else.i, %if.then.i
  %status.0.i = phi i32 [ %and.i, %if.then.i ], [ %and8.i, %if.else.i ]
  %and = and i32 %status.0.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %isp1760_udc_irq_get_status.exit.if.end8_crit_edge, label %do.body

isp1760_udc_irq_get_status.exit.if.end8_crit_edge: ; preds = %isp1760_udc_irq_get_status.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

do.body:                                          ; preds = %isp1760_udc_irq_get_status.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_udc_irq.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_udc_irq, %if.then5)) #9
          to label %do.end [label %if.then5], !srcloc !217

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_udc_irq.__UNIQUE_ID_ddebug279, ptr noundef %27, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16) #9
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %lock = getelementptr inbounds %struct.isp1760_udc, ptr %dev, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %lock) #9
  %gadget.i = getelementptr inbounds %struct.isp1760_udc, ptr %dev, i32 0, i32 6
  call void @usb_gadget_set_state(ptr noundef %gadget.i, i32 noundef 2) #9
  %vbus_timer.i = getelementptr inbounds %struct.isp1760_udc, ptr %dev, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %28, 50
  %call1.i = call i32 @mod_timer(ptr noundef %vbus_timer.i, i32 noundef %add.i) #9
  call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %if.end8

if.end8:                                          ; preds = %do.end, %isp1760_udc_irq_get_status.exit.if.end8_crit_edge
  %and9 = and i32 %status.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.for.body.preheader_crit_edge, label %do.body12

if.end8.for.body.preheader_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

do.body12:                                        ; preds = %if.end8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_udc_irq.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_udc_irq, %if.then24)) #9
          to label %do.end29 [label %if.then24], !srcloc !217

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_udc_irq.__UNIQUE_ID_ddebug280, ptr noundef %32, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16) #9
  br label %do.end29

do.end29:                                         ; preds = %if.then24, %do.body12
  %lock.i = getelementptr inbounds %struct.isp1760_udc, ptr %dev, i32 0, i32 7
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %33 = ptrtoint ptr %is_isp1763.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %is_isp1763.i, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i.i = icmp eq i8 %34, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 528, i32 16
  %cond3.i.i = select i1 %tobool.not.i.i, i32 532, i32 20
  %35 = ptrtoint ptr %regs4.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs4.i, align 4
  %call.i.i.i = call i32 @regmap_write(ptr noundef %36, i32 noundef %cond.i.i, i32 noundef 84) #9
  %37 = ptrtoint ptr %regs4.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs4.i, align 4
  %call.i12.i.i = call i32 @regmap_write(ptr noundef %38, i32 noundef %cond3.i.i, i32 noundef 67108281) #9
  %connected.i.i = getelementptr inbounds %struct.isp1760_udc, ptr %dev, i32 0, i32 13
  %39 = ptrtoint ptr %connected.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %connected.i.i, align 4, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool5.not.i.i = icmp eq i8 %40, 0
  br i1 %tobool5.not.i.i, label %do.end29.isp1760_udc_reset.exit_crit_edge, label %if.then.i.i

do.end29.isp1760_udc_reset.exit_crit_edge:        ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %isp1760_udc_reset.exit

if.then.i.i:                                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 8
  call void @isp1760_set_pullup(ptr noundef %42, i1 noundef zeroext true) #9
  br label %isp1760_udc_reset.exit

isp1760_udc_reset.exit:                           ; preds = %if.then.i.i, %do.end29.isp1760_udc_reset.exit_crit_edge
  %fields.i.i.i.i = getelementptr inbounds %struct.isp1760_udc, ptr %dev, i32 0, i32 4
  %43 = ptrtoint ptr %fields.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fields.i.i.i.i, align 4
  %call.i.i.i.i.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %44, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %ep0_state.i = getelementptr inbounds %struct.isp1760_udc, ptr %dev, i32 0, i32 10
  %45 = ptrtoint ptr %ep0_state.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %ep0_state.i, align 4
  %gadget.i235 = getelementptr inbounds %struct.isp1760_udc, ptr %dev, i32 0, i32 6
  %speed.i = getelementptr inbounds %struct.isp1760_udc, ptr %dev, i32 0, i32 6, i32 5
  %46 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 2, ptr %speed.i, align 8
  %driver.i = getelementptr inbounds %struct.isp1760_udc, ptr %dev, i32 0, i32 5
  %47 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %driver.i, align 8
  call void @usb_gadget_udc_reset(ptr noundef %gadget.i235, ptr noundef %48) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  br label %for.body.preheader

for.body.preheader:                               ; preds = %isp1760_udc_reset.exit, %if.end8.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %if.end80.for.body_crit_edge, %for.body.preheader
  %i.0261 = phi i32 [ %inc, %if.end80.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %mul = shl nuw nsw i32 %i.0261, 1
  %arrayidx = getelementptr %struct.isp1760_udc, ptr %dev, i32 0, i32 9, i32 %mul
  %shl = shl i32 2048, %mul
  %and33 = and i32 %shl, %status.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %for.body.if.end54_crit_edge, label %do.body36

for.body.if.end54_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

do.body36:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_udc_irq.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_udc_irq, %if.then48)) #9
          to label %do.end53 [label %if.then48], !srcloc !217

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_udc_irq.__UNIQUE_ID_ddebug281, ptr noundef %52, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.16, i32 noundef %i.0261) #9
  br label %do.end53

do.end53:                                         ; preds = %if.then48, %do.body36
  call fastcc void @isp1760_ep_tx_complete(ptr noundef %arrayidx)
  br label %if.end54

if.end54:                                         ; preds = %do.end53, %for.body.if.end54_crit_edge
  %shl57 = shl i32 1024, %mul
  %and58 = and i32 %shl57, %status.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end54.if.end80_crit_edge, label %do.body61

if.end54.if.end80_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

do.body61:                                        ; preds = %if.end54
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_udc_irq.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_udc_irq, %if.then73)) #9
          to label %do.end78 [label %if.then73], !srcloc !217

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_udc_irq.__UNIQUE_ID_ddebug282, ptr noundef %56, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.16, i32 noundef %i.0261) #9
  br label %do.end78

do.end78:                                         ; preds = %if.then73, %do.body61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0261)
  %tobool79.not = icmp ne i32 %i.0261, 0
  %cond.idx = sext i1 %tobool79.not to i32
  %cond = getelementptr %struct.isp1760_ep, ptr %arrayidx, i32 %cond.idx
  call fastcc void @isp1760_ep_rx_ready(ptr noundef %cond)
  br label %if.end80

if.end80:                                         ; preds = %do.end78, %if.end54.if.end80_crit_edge
  %inc = add nuw nsw i32 %i.0261, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %if.end80.for.body_crit_edge

if.end80.for.body_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end80
  %and81 = and i32 %status.0.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %for.end.if.end102_crit_edge, label %do.body84

for.end.if.end102_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102

do.body84:                                        ; preds = %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_udc_irq.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_udc_irq, %if.then96)) #9
          to label %do.end101 [label %if.then96], !srcloc !217

if.then96:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev, align 8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_udc_irq.__UNIQUE_ID_ddebug283, ptr noundef %60, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.16) #9
  br label %do.end101

do.end101:                                        ; preds = %if.then96, %do.body84
  call fastcc void @isp1760_ep0_setup(ptr noundef %dev)
  br label %if.end102

if.end102:                                        ; preds = %do.end101, %for.end.if.end102_crit_edge
  %and103 = and i32 %status.0.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %if.end102.if.end124_crit_edge, label %do.body106

if.end102.if.end124_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124

do.body106:                                       ; preds = %if.end102
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_udc_irq.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_udc_irq, %if.then118)) #9
          to label %do.end123 [label %if.then118], !srcloc !217

if.then118:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev, align 8
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_udc_irq.__UNIQUE_ID_ddebug284, ptr noundef %64, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.16) #9
  br label %do.end123

do.end123:                                        ; preds = %if.then118, %do.body106
  %gadget.i236 = getelementptr inbounds %struct.isp1760_udc, ptr %dev, i32 0, i32 6
  %state.i = getelementptr inbounds %struct.isp1760_udc, ptr %dev, i32 0, i32 6, i32 9
  %65 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %66)
  %cmp.i = icmp ult i32 %66, 5
  br i1 %cmp.i, label %do.end123.if.end124_crit_edge, label %if.end.i

do.end123.if.end124_crit_edge:                    ; preds = %do.end123
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124

if.end.i:                                         ; preds = %do.end123
  %driver.i237 = getelementptr inbounds %struct.isp1760_udc, ptr %dev, i32 0, i32 5
  %67 = ptrtoint ptr %driver.i237 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %driver.i237, align 8
  %resume.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %68, i32 0, i32 7
  %69 = ptrtoint ptr %resume.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %resume.i, align 4
  %tobool.not.i238 = icmp eq ptr %70, null
  br i1 %tobool.not.i238, label %if.end.i.if.end124_crit_edge, label %if.then1.i

if.end.i.if.end124_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void %70(ptr noundef %gadget.i236) #9
  br label %if.end124

if.end124:                                        ; preds = %if.then1.i, %if.end.i.if.end124_crit_edge, %do.end123.if.end124_crit_edge, %if.end102.if.end124_crit_edge
  %and125 = and i32 %status.0.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %if.end124.if.end151_crit_edge, label %do.body128

if.end124.if.end151_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end151

do.body128:                                       ; preds = %if.end124
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_udc_irq.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_udc_irq, %if.then140)) #9
          to label %do.end145 [label %if.then140], !srcloc !217

if.then140:                                       ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev, align 8
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_udc_irq.__UNIQUE_ID_ddebug285, ptr noundef %74, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.16) #9
  br label %do.end145

do.end145:                                        ; preds = %if.then140, %do.body128
  %lock146 = getelementptr inbounds %struct.isp1760_udc, ptr %dev, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %lock146) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i) #9
  %75 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -1, ptr %val.i.i.i, align 4, !annotation !214
  %arrayidx.i.i.i = getelementptr %struct.isp1760_udc, ptr %dev, i32 0, i32 4, i32 2
  %76 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i.i239 = call i32 @regmap_field_read(ptr noundef %77, ptr noundef nonnull %val.i.i.i) #9
  %78 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %val.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.i.not = icmp eq i32 %79, 0
  %gadget.i240 = getelementptr inbounds %struct.isp1760_udc, ptr %dev, i32 0, i32 6
  %state.i241 = getelementptr inbounds %struct.isp1760_udc, ptr %dev, i32 0, i32 6, i32 9
  %80 = ptrtoint ptr %state.i241 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %state.i241, align 8
  br i1 %tobool.i.not, label %if.then148, label %if.else

if.then148:                                       ; preds = %do.end145
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %81)
  %cmp.i242 = icmp ult i32 %81, 2
  br i1 %cmp.i242, label %if.then148.if.end149_crit_edge, label %do.body.i

if.then148.if.end149_crit_edge:                   ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end149

do.body.i:                                        ; preds = %if.then148
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_udc_disconnect.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_udc_irq, %if.then3.i)) #9
          to label %do.end.i [label %if.then3.i], !srcloc !217

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev, align 8
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 8
  %86 = ptrtoint ptr %state.i241 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %state.i241, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_udc_disconnect.__UNIQUE_ID_ddebug274, ptr noundef %85, ptr noundef nonnull @.str.8, i32 noundef %87) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then3.i, %do.body.i
  %speed.i243 = getelementptr inbounds %struct.isp1760_udc, ptr %dev, i32 0, i32 6, i32 5
  %88 = ptrtoint ptr %speed.i243 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %speed.i243, align 8
  call void @usb_gadget_set_state(ptr noundef %gadget.i240, i32 noundef 1) #9
  %driver.i244 = getelementptr inbounds %struct.isp1760_udc, ptr %dev, i32 0, i32 5
  %89 = ptrtoint ptr %driver.i244 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %driver.i244, align 8
  %disconnect.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %90, i32 0, i32 5
  %91 = ptrtoint ptr %disconnect.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %disconnect.i, align 4
  %tobool9.not.i = icmp eq ptr %92, null
  br i1 %tobool9.not.i, label %do.end.i.if.end14.i_crit_edge, label %if.then10.i

do.end.i.if.end14.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.then10.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void %92(ptr noundef %gadget.i240) #9
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then10.i, %do.end.i.if.end14.i_crit_edge
  %vbus_timer.i245 = getelementptr inbounds %struct.isp1760_udc, ptr %dev, i32 0, i32 8
  %call15.i = call i32 @del_timer(ptr noundef %vbus_timer.i245) #9
  br label %if.end149

if.else:                                          ; preds = %do.end145
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %81)
  %cmp.i248 = icmp ult i32 %81, 5
  br i1 %cmp.i248, label %if.else.if.end149_crit_edge, label %if.end.i251

if.else.if.end149_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end149

if.end.i251:                                      ; preds = %if.else
  %driver.i249 = getelementptr inbounds %struct.isp1760_udc, ptr %dev, i32 0, i32 5
  %93 = ptrtoint ptr %driver.i249 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %driver.i249, align 8
  %suspend.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %94, i32 0, i32 6
  %95 = ptrtoint ptr %suspend.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %suspend.i, align 4
  %tobool.not.i250 = icmp eq ptr %96, null
  br i1 %tobool.not.i250, label %if.end.i251.if.end149_crit_edge, label %if.then1.i252

if.end.i251.if.end149_crit_edge:                  ; preds = %if.end.i251
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end149

if.then1.i252:                                    ; preds = %if.end.i251
  call void @__sanitizer_cov_trace_pc() #11
  call void %96(ptr noundef %gadget.i240) #9
  br label %if.end149

if.end149:                                        ; preds = %if.then1.i252, %if.end.i251.if.end149_crit_edge, %if.else.if.end149_crit_edge, %if.end14.i, %if.then148.if.end149_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock146) #9
  br label %if.end151

if.end151:                                        ; preds = %if.end149, %if.end124.if.end151_crit_edge
  %and152 = and i32 %status.0.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152)
  %tobool153.not = icmp eq i32 %and152, 0
  br i1 %tobool153.not, label %if.end151.if.end173_crit_edge, label %do.body155

if.end151.if.end173_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end173

do.body155:                                       ; preds = %if.end151
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_udc_irq.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_udc_irq, %if.then167)) #9
          to label %do.end172 [label %if.then167], !srcloc !217

if.then167:                                       ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #11
  %97 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev, align 8
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_udc_irq.__UNIQUE_ID_ddebug286, ptr noundef %100, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.16) #9
  br label %do.end172

do.end172:                                        ; preds = %if.then167, %do.body155
  %speed = getelementptr inbounds %struct.isp1760_udc, ptr %dev, i32 0, i32 6, i32 5
  %101 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 3, ptr %speed, align 8
  br label %if.end173

if.end173:                                        ; preds = %do.end172, %if.end151.if.end173_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i)
  %tobool174.not = icmp ne i32 %status.0.i, 0
  %cond175 = zext i1 %tobool174.not to i32
  ret i32 %cond175
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_gadget_udc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @isp1760_udc_unregister(ptr noundef %isp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %udc1 = getelementptr inbounds %struct.isp1760_device, ptr %isp, i32 0, i32 4
  %0 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %gadget = getelementptr inbounds %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 6
  tail call void @usb_del_gadget_udc(ptr noundef %gadget) #9
  %irq = getelementptr inbounds %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %3, ptr noundef %udc1) #9
  %irqname = getelementptr inbounds %struct.isp1760_device, ptr %isp, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %irqname to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irqname, align 8
  tail call void @kfree(ptr noundef %5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_del_gadget_udc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_read(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_set_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isp1760_ep_tx_complete(ptr noundef %ep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %lock = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %addr = getelementptr inbounds %struct.isp1760_ep, ptr %ep, i32 0, i32 3
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %if.end8.thread

land.lhs.true:                                    ; preds = %entry
  %ep0_state = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %ep0_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ep0_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp2.not = icmp eq i32 %5, 1
  br i1 %cmp2.not, label %if.end8, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_ep_tx_complete.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_ep_tx_complete, %if.then6)) #9
          to label %cleanup [label %if.then6], !srcloc !217

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %10 = ptrtoint ptr %ep0_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ep0_state, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_ep_tx_complete.__UNIQUE_ID_ddebug249, ptr noundef %9, ptr noundef nonnull @.str.26, i32 noundef %11) #9
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true
  %queue = getelementptr inbounds %struct.isp1760_ep, ptr %ep, i32 0, i32 2
  %12 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %13, %queue
  br i1 %cmp.i.not, label %if.then14, label %if.end8.if.end37_crit_edge

if.end8.if.end37_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.end8.thread:                                   ; preds = %entry
  %queue179 = getelementptr inbounds %struct.isp1760_ep, ptr %ep, i32 0, i32 2
  %14 = ptrtoint ptr %queue179 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %queue179, align 4
  %cmp.i180.not = icmp eq ptr %15, %queue179
  br i1 %cmp.i180.not, label %if.end16, label %if.end8.thread.if.end37_crit_edge

if.end8.thread.if.end37_crit_edge:                ; preds = %if.end8.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ep, align 4
  %arrayidx.i.i.i.i = getelementptr %struct.isp1760_udc, ptr %17, i32 0, i32 4, i32 25
  %18 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i.i8.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %19, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %arrayidx.i.i.i = getelementptr %struct.isp1760_udc, ptr %17, i32 0, i32 4, i32 24
  %20 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %21, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %arrayidx.i.i.i10.i = getelementptr %struct.isp1760_udc, ptr %17, i32 0, i32 4, i32 29
  %22 = ptrtoint ptr %arrayidx.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i.i10.i, align 4
  %call.i.i.i.i11.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %23, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %ep0_state.i = getelementptr inbounds %struct.isp1760_udc, ptr %17, i32 0, i32 10
  %24 = ptrtoint ptr %ep0_state.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %ep0_state.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end8.thread
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_ep_tx_complete.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_ep_tx_complete, %if.then30)) #9
          to label %cleanup [label %if.then30], !srcloc !217

if.then30:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  %29 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_ep_tx_complete.__UNIQUE_ID_ddebug250, ptr noundef %28, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, i32 noundef %30) #9
  br label %cleanup

if.end37:                                         ; preds = %if.end8.thread.if.end37_crit_edge, %if.end8.if.end37_crit_edge
  %31 = phi ptr [ %15, %if.end8.thread.if.end37_crit_edge ], [ %13, %if.end8.if.end37_crit_edge ]
  %queue183 = phi ptr [ %queue179, %if.end8.thread.if.end37_crit_edge ], [ %queue, %if.end8.if.end37_crit_edge ]
  %add.ptr = getelementptr i8, ptr %31, i32 -56
  %packet_size = getelementptr i8, ptr %31, i32 12
  %32 = ptrtoint ptr %packet_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %packet_size, align 4
  %actual = getelementptr i8, ptr %31, i32 -4
  %34 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %actual, align 4
  %add = add i32 %35, %33
  store i32 %add, ptr %actual, align 4
  %length = getelementptr i8, ptr %31, i32 -52
  %36 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %37)
  %cmp44 = icmp eq i32 %add, %37
  br i1 %cmp44, label %land.lhs.true45, label %if.end37.land.end_crit_edge

if.end37.land.end_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.lhs.true45:                                  ; preds = %if.end37
  %maxpacket = getelementptr inbounds %struct.isp1760_ep, ptr %ep, i32 0, i32 4
  %38 = ptrtoint ptr %maxpacket to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %maxpacket, align 4
  %rem = urem i32 %add, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool48.not = icmp ne i32 %rem, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool51.not = icmp eq i32 %33, 0
  %or.cond = select i1 %tobool48.not, i1 true, i1 %tobool51.not
  br i1 %or.cond, label %land.lhs.true45.land.end_crit_edge, label %land.rhs

land.lhs.true45.land.end_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #11
  %zero = getelementptr i8, ptr %31, i32 -32
  %40 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %40)
  %bf.load = load i32, ptr %zero, align 4
  %41 = and i32 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool53 = icmp ne i32 %41, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true45.land.end_crit_edge, %if.end37.land.end_crit_edge
  %42 = phi i1 [ false, %land.lhs.true45.land.end_crit_edge ], [ false, %if.end37.land.end_crit_edge ], [ %tobool53, %land.rhs ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_ep_tx_complete.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_ep_tx_complete, %if.then67)) #9
          to label %do.end84 [label %if.then67], !srcloc !217

if.then67:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 8
  %47 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %actual, align 4
  %49 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %length, align 4
  %maxpacket74 = getelementptr inbounds %struct.isp1760_ep, ptr %ep, i32 0, i32 4
  %51 = ptrtoint ptr %maxpacket74 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %maxpacket74, align 4
  %53 = ptrtoint ptr %packet_size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %packet_size, align 4
  %zero77 = getelementptr i8, ptr %31, i32 -32
  %55 = ptrtoint ptr %zero77 to i32
  call void @__asan_load4_noabort(i32 %55)
  %bf.load78 = load i32, ptr %zero77, align 4
  %bf.lshr79 = lshr i32 %bf.load78, 13
  %bf.clear80 = and i32 %bf.lshr79, 1
  %conv = zext i1 %42 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_ep_tx_complete.__UNIQUE_ID_ddebug251, ptr noundef %46, ptr noundef nonnull @.str.28, ptr noundef %add.ptr, i32 noundef %48, i32 noundef %50, i32 noundef %52, i32 noundef %54, i32 noundef %bf.clear80, i32 noundef %conv) #9
  br label %do.end84

do.end84:                                         ; preds = %if.then67, %land.end
  %56 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %actual, align 4
  %58 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp89 = icmp ne i32 %57, %59
  %brmerge = select i1 %cmp89, i1 true, i1 %42
  br i1 %brmerge, label %do.end84.if.end110_crit_edge, label %if.then93

do.end84.if.end110_crit_edge:                     ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end110

if.then93:                                        ; preds = %do.end84
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %31) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then93.list_del.exit_crit_edge

if.then93.list_del.exit_crit_edge:                ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %60 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev.i.i, align 4
  %62 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %31, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %prev1.i.i.i, align 4
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %63, ptr %61, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then93.list_del.exit_crit_edge
  %66 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 256 to ptr), ptr %31, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %67 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %68 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp96 = icmp eq i32 %69, 0
  br i1 %cmp96, label %if.then98, label %list_del.exit.if.end99_crit_edge

list_del.exit.if.end99_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

if.then98:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ep, align 4
  %arrayidx.i.i.i.i169 = getelementptr %struct.isp1760_udc, ptr %71, i32 0, i32 4, i32 25
  %72 = ptrtoint ptr %arrayidx.i.i.i.i169 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i.i.i.i169, align 4
  %call.i.i.i.i8.i170 = tail call i32 @regmap_field_update_bits_base(ptr noundef %73, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %arrayidx.i.i.i171 = getelementptr %struct.isp1760_udc, ptr %71, i32 0, i32 4, i32 24
  %74 = ptrtoint ptr %arrayidx.i.i.i171 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.i.i.i171, align 4
  %call.i.i.i.i172 = tail call i32 @regmap_field_update_bits_base(ptr noundef %75, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %arrayidx.i.i.i10.i173 = getelementptr %struct.isp1760_udc, ptr %71, i32 0, i32 4, i32 29
  %76 = ptrtoint ptr %arrayidx.i.i.i10.i173 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i.i.i10.i173, align 4
  %call.i.i.i.i11.i174 = tail call i32 @regmap_field_update_bits_base(ptr noundef %77, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %ep0_state.i175 = getelementptr inbounds %struct.isp1760_udc, ptr %71, i32 0, i32 10
  %78 = ptrtoint ptr %ep0_state.i175 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %ep0_state.i175, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then98, %list_del.exit.if.end99_crit_edge
  %79 = ptrtoint ptr %queue183 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile ptr, ptr %queue183, align 4
  %cmp.i176.not = icmp eq ptr %80, %queue183
  br i1 %cmp.i176.not, label %if.end99.if.end113_crit_edge, label %if.then103

if.end99.if.end113_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

if.then103:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr108 = getelementptr i8, ptr %80, i32 -56
  br label %if.end110

if.end110:                                        ; preds = %if.then103, %do.end84.if.end110_crit_edge
  %req.0 = phi ptr [ %add.ptr108, %if.then103 ], [ %add.ptr, %do.end84.if.end110_crit_edge ]
  %complete.0 = phi ptr [ %add.ptr, %if.then103 ], [ null, %do.end84.if.end110_crit_edge ]
  %tobool111.not = icmp eq ptr %req.0, null
  br i1 %tobool111.not, label %if.end110.if.end113_crit_edge, label %if.then112

if.end110.if.end113_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

if.then112:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @isp1760_udc_transmit(ptr noundef %ep, ptr noundef nonnull %req.0)
  br label %if.end113

if.end113:                                        ; preds = %if.then112, %if.end110.if.end113_crit_edge, %if.end99.if.end113_crit_edge
  %complete.0189 = phi ptr [ %complete.0, %if.then112 ], [ %complete.0, %if.end110.if.end113_crit_edge ], [ %add.ptr, %if.end99.if.end113_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  %tobool115.not = icmp eq ptr %complete.0189, null
  br i1 %tobool115.not, label %if.end113.cleanup_crit_edge, label %if.then116

if.end113.cleanup_crit_edge:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then116:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @isp1760_udc_request_complete(ptr noundef %ep, ptr noundef nonnull %complete.0189, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.then116, %if.end113.cleanup_crit_edge, %if.then30, %if.end16, %if.then14, %if.then6, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isp1760_ep_rx_ready(ptr noundef %ep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %lock = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %addr = getelementptr inbounds %struct.isp1760_ep, ptr %ep, i32 0, i32 3
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %land.lhs.true11

land.lhs.true:                                    ; preds = %entry
  %ep0_state = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %ep0_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ep0_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp2.not = icmp eq i32 %5, 2
  br i1 %cmp2.not, label %land.lhs.true.if.end34_crit_edge, label %if.then

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_ep_rx_ready.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_ep_rx_ready, %if.then6)) #9
          to label %cleanup [label %if.then6], !srcloc !217

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %10 = ptrtoint ptr %ep0_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ep0_state, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_ep_rx_ready.__UNIQUE_ID_ddebug246, ptr noundef %9, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, i32 noundef %11) #9
  br label %cleanup

land.lhs.true11:                                  ; preds = %entry
  %desc = getelementptr inbounds %struct.isp1760_ep, ptr %ep, i32 0, i32 6
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc, align 4
  %tobool12.not = icmp eq ptr %13, null
  br i1 %tobool12.not, label %if.then13, label %land.lhs.true11.if.end34_crit_edge

land.lhs.true11.if.end34_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_ep_rx_ready.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_ep_rx_ready, %if.then27)) #9
          to label %cleanup [label %if.then27], !srcloc !217

if.then27:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_ep_rx_ready.__UNIQUE_ID_ddebug247, ptr noundef %17, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.33, i32 noundef %19) #9
  br label %cleanup

if.end34:                                         ; preds = %land.lhs.true11.if.end34_crit_edge, %land.lhs.true.if.end34_crit_edge
  %queue = getelementptr inbounds %struct.isp1760_ep, ptr %ep, i32 0, i32 2
  %20 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %21, %queue
  br i1 %cmp.i.not, label %if.then37, label %if.end58

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %rx_pending = getelementptr inbounds %struct.isp1760_ep, ptr %ep, i32 0, i32 7
  %22 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %rx_pending, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_ep_rx_ready.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_ep_rx_ready, %if.then51)) #9
          to label %cleanup [label %if.then51], !srcloc !217

if.then51:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  %27 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %addr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_ep_rx_ready.__UNIQUE_ID_ddebug248, ptr noundef %26, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.33, i32 noundef %28, ptr noundef %ep) #9
  br label %cleanup

if.end58:                                         ; preds = %if.end34
  %add.ptr = getelementptr i8, ptr %21, i32 -56
  %call61 = tail call fastcc zeroext i1 @isp1760_udc_receive(ptr noundef %ep, ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br i1 %call61, label %if.then65, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then65:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @isp1760_udc_request_complete(ptr noundef %ep, ptr noundef %add.ptr, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %if.end58.cleanup_crit_edge, %if.then51, %if.then37, %if.then27, %if.then13, %if.then6, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isp1760_ep0_setup(ptr noundef %udc) unnamed_addr #0 align 64 {
entry:
  %val.i108 = alloca i32, align 4
  %val.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  %req = alloca %union.anon.72, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req) #9
  %0 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %req, align 4, !annotation !214
  %1 = getelementptr inbounds [2 x i32], ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !214
  %lock = getelementptr inbounds %struct.isp1760_udc, ptr %udc, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %arrayidx.i.i.i = getelementptr %struct.isp1760_udc, ptr %udc, i32 0, i32 4, i32 23
  %3 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %4, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #9
  %5 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %val.i.i, align 4, !annotation !214
  %arrayidx.i.i = getelementptr %struct.isp1760_udc, ptr %udc, i32 0, i32 4, i32 31
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = call i32 @regmap_field_read(ptr noundef %7, ptr noundef nonnull %val.i.i) #9
  %8 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %9)
  %cmp.not = icmp eq i32 %9, 8
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock(ptr noundef %lock) #9
  %10 = ptrtoint ptr %udc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udc, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.40, i32 noundef %9) #12
  %ep = getelementptr inbounds %struct.isp1760_udc, ptr %udc, i32 0, i32 9
  call fastcc void @isp1760_udc_ctrl_send_stall(ptr noundef %ep)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %14 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %val.i, align 4, !annotation !214
  %regs.i = getelementptr inbounds %struct.isp1760_udc, ptr %udc, i32 0, i32 3
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %call.i = call i32 @regmap_raw_read(ptr noundef %16, i32 noundef 544, ptr noundef nonnull %val.i, i32 noundef 4) #9
  %17 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val.i, align 4
  %19 = call i32 @llvm.bswap.i32(i32 %18) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  %20 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %req, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i108) #9
  %21 = ptrtoint ptr %val.i108 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %val.i108, align 4, !annotation !214
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %call.i110 = call i32 @regmap_raw_read(ptr noundef %23, i32 noundef 544, ptr noundef nonnull %val.i108, i32 noundef 4) #9
  %24 = ptrtoint ptr %val.i108 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val.i108, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i108) #9
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %1, align 4
  %ep0_state = getelementptr inbounds %struct.isp1760_udc, ptr %udc, i32 0, i32 10
  %28 = ptrtoint ptr %ep0_state to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ep0_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp6.not = icmp eq i32 %29, 0
  br i1 %cmp6.not, label %if.end19, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock(ptr noundef %lock) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_ep0_setup.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_ep0_setup, %if.then13)) #9
          to label %cleanup [label %if.then13], !srcloc !217

if.then13:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %udc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %udc, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_ep0_setup.__UNIQUE_ID_ddebug257, ptr noundef %33, ptr noundef nonnull @.str.42) #9
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %req, i32 0, i32 4
  %34 = ptrtoint ptr %wLength to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %wLength, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool20.not = icmp eq i16 %35, 0
  br i1 %tobool20.not, label %if.end19.if.end29_crit_edge, label %if.else

if.end19.if.end29_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %req to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %req, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %37)
  %tobool23.not = icmp sgt i8 %37, -1
  %. = select i1 %tobool23.not, i32 2, i32 1
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.end19.if.end29_crit_edge
  %.sink = phi i32 [ 3, %if.end19.if.end29_crit_edge ], [ %., %if.else ]
  %38 = ptrtoint ptr %ep0_state to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %.sink, ptr %ep0_state, align 4
  %39 = ptrtoint ptr %req to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %req, align 4
  %41 = and i8 %40, -128
  %ep0_dir = getelementptr inbounds %struct.isp1760_udc, ptr %udc, i32 0, i32 11
  %42 = ptrtoint ptr %ep0_dir to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %ep0_dir, align 8
  %43 = call i16 @llvm.bswap.i16(i16 %35)
  %ep0_length = getelementptr inbounds %struct.isp1760_udc, ptr %udc, i32 0, i32 12
  %44 = ptrtoint ptr %ep0_length to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %ep0_length, align 2
  call void @_raw_spin_unlock(ptr noundef %lock) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_ep0_setup.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_ep0_setup, %if.then48)) #9
          to label %do.end60 [label %if.then48], !srcloc !217

if.then48:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %udc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %udc, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 8
  %49 = ptrtoint ptr %req to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %req, align 4
  %conv52 = zext i8 %50 to i32
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %req, i32 0, i32 1
  %51 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bRequest, align 1
  %conv53 = zext i8 %52 to i32
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %req, i32 0, i32 2
  %53 = ptrtoint ptr %wValue to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %wValue, align 2
  %55 = call i16 @llvm.bswap.i16(i16 %54)
  %conv54 = zext i16 %55 to i32
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %1, align 4
  %58 = call i16 @llvm.bswap.i16(i16 %57)
  %conv55 = zext i16 %58 to i32
  %59 = ptrtoint ptr %wLength to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %wLength, align 2
  %61 = call i16 @llvm.bswap.i16(i16 %60)
  %conv57 = zext i16 %61 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_ep0_setup.__UNIQUE_ID_ddebug258, ptr noundef %48, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.41, i32 noundef %conv52, i32 noundef %conv53, i32 noundef %conv54, i32 noundef %conv55, i32 noundef %conv57) #9
  br label %do.end60

do.end60:                                         ; preds = %if.then48, %if.end29
  %62 = ptrtoint ptr %req to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %req, align 4
  %64 = and i8 %63, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp64 = icmp eq i8 %64, 0
  br i1 %cmp64, label %if.then66, label %if.else69

if.then66:                                        ; preds = %do.end60
  %bRequest.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %req, i32 0, i32 1
  %65 = ptrtoint ptr %bRequest.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %bRequest.i, align 1
  %67 = zext i8 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.88)
  switch i8 %66, label %sw.default100.i [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb1.i
    i8 3, label %sw.bb26.i
    i8 5, label %sw.bb63.i
    i8 9, label %sw.bb73.i
  ]

sw.bb.i:                                          ; preds = %if.then66
  %call.i111 = call fastcc i32 @isp1760_udc_get_status(ptr noundef %udc, ptr noundef nonnull %req) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %tobool.i.not = icmp eq i32 %call.i111, 0
  br i1 %tobool.i.not, label %sw.bb.i.cleanup_crit_edge, label %sw.bb.i.if.then76_crit_edge

sw.bb.i.if.then76_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then76

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %63)
  %cond146.i = icmp eq i8 %63, 2
  br i1 %cond146.i, label %sw.bb4.i, label %sw.bb1.i.if.then76_crit_edge

sw.bb1.i.if.then76_crit_edge:                     ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then76

sw.bb4.i:                                         ; preds = %sw.bb1.i
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %1, align 4
  %70 = call i16 @llvm.bswap.i16(i16 %69) #9
  %71 = ptrtoint ptr %wLength to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %wLength, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %cmp.not.i = icmp eq i16 %72, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %sw.bb4.i.if.then76_crit_edge

sw.bb4.i.if.then76_crit_edge:                     ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then76

lor.lhs.false.i:                                  ; preds = %sw.bb4.i
  %wValue.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %req, i32 0, i32 2
  %73 = ptrtoint ptr %wValue.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %wValue.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %cmp8.not.i = icmp eq i16 %74, 0
  br i1 %cmp8.not.i, label %if.end.i, label %lor.lhs.false.i.if.then76_crit_edge

lor.lhs.false.i.if.then76_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then76

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call10.i = call fastcc ptr @isp1760_udc_find_ep(ptr noundef %udc, i16 noundef zeroext %70) #9
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %if.end.i.if.then76_crit_edge, label %if.end13.i

if.end.i.if.then76_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then76

if.end13.i:                                       ; preds = %if.end.i
  call void @_raw_spin_lock(ptr noundef %lock) #9
  %wedged.i = getelementptr inbounds %struct.isp1760_ep, ptr %call10.i, i32 0, i32 9
  %75 = ptrtoint ptr %wedged.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %wedged.i, align 2, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool14.not.i = icmp eq i8 %76, 0
  br i1 %tobool14.not.i, label %if.end18.i, label %if.end13.i.if.end22.i_crit_edge

if.end13.i.if.end22.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.end18.i:                                       ; preds = %if.end13.i
  %call16.i = call fastcc i32 @__isp1760_udc_set_halt(ptr noundef nonnull %call10.i, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end18.i.if.end22.i_crit_edge, label %if.end18.i.if.then76.sink.split_crit_edge

if.end18.i.if.then76.sink.split_crit_edge:        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then76.sink.split

if.end18.i.if.end22.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end18.i.if.end22.i_crit_edge, %if.end13.i.if.end22.i_crit_edge
  %ep21.i = getelementptr inbounds %struct.isp1760_udc, ptr %udc, i32 0, i32 9
  call fastcc void @isp1760_udc_ctrl_send_status(ptr noundef %ep21.i, i32 noundef 0) #9
  call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %cleanup

sw.bb26.i:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %63)
  %cond147.i = icmp eq i8 %63, 2
  br i1 %cond147.i, label %sw.bb30.i, label %sw.bb26.i.if.then76_crit_edge

sw.bb26.i.if.then76_crit_edge:                    ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then76

sw.bb30.i:                                        ; preds = %sw.bb26.i
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %1, align 4
  %79 = call i16 @llvm.bswap.i16(i16 %78) #9
  %80 = ptrtoint ptr %wLength to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %wLength, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %cmp36.not.i = icmp eq i16 %81, 0
  br i1 %cmp36.not.i, label %lor.lhs.false38.i, label %sw.bb30.i.if.then76_crit_edge

sw.bb30.i.if.then76_crit_edge:                    ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then76

lor.lhs.false38.i:                                ; preds = %sw.bb30.i
  %wValue39.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %req, i32 0, i32 2
  %82 = ptrtoint ptr %wValue39.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %wValue39.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %cmp41.not.i = icmp eq i16 %83, 0
  br i1 %cmp41.not.i, label %if.end44.i, label %lor.lhs.false38.i.if.then76_crit_edge

lor.lhs.false38.i.if.then76_crit_edge:            ; preds = %lor.lhs.false38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then76

if.end44.i:                                       ; preds = %lor.lhs.false38.i
  %call45.i = call fastcc ptr @isp1760_udc_find_ep(ptr noundef %udc, i16 noundef zeroext %79) #9
  %tobool46.not.i = icmp eq ptr %call45.i, null
  br i1 %tobool46.not.i, label %if.end44.i.if.then76_crit_edge, label %if.end48.i

if.end44.i.if.then76_crit_edge:                   ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then76

if.end48.i:                                       ; preds = %if.end44.i
  call void @_raw_spin_lock(ptr noundef %lock) #9
  %call50.i = call fastcc i32 @__isp1760_udc_set_halt(ptr noundef nonnull %call45.i, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.i.not = icmp eq i32 %call50.i, 0
  br i1 %tobool51.i.not, label %if.end74, label %if.end48.i.if.then76.sink.split_crit_edge

if.end48.i.if.then76.sink.split_crit_edge:        ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then76.sink.split

sw.bb63.i:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %cmp66.not.i = icmp eq i8 %63, 0
  br i1 %cmp66.not.i, label %if.end69.i, label %sw.bb63.i.if.then76_crit_edge

sw.bb63.i.if.then76_crit_edge:                    ; preds = %sw.bb63.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then76

if.end69.i:                                       ; preds = %sw.bb63.i
  %wValue70.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %req, i32 0, i32 2
  %84 = ptrtoint ptr %wValue70.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %wValue70.i, align 2
  %86 = call i16 @llvm.bswap.i16(i16 %85) #9
  %call71.i = call fastcc i32 @isp1760_udc_set_address(ptr noundef %udc, i16 noundef zeroext %86) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %tobool72.i.not = icmp eq i32 %call71.i, 0
  br i1 %tobool72.i.not, label %if.end69.i.cleanup_crit_edge, label %if.end69.i.if.then76_crit_edge

if.end69.i.if.then76_crit_edge:                   ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then76

if.end69.i.cleanup_crit_edge:                     ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb73.i:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %cmp76.not.i = icmp eq i8 %63, 0
  br i1 %cmp76.not.i, label %if.end79.i, label %sw.bb73.i.if.then76_crit_edge

sw.bb73.i.if.then76_crit_edge:                    ; preds = %sw.bb73.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then76

if.end79.i:                                       ; preds = %sw.bb73.i
  %gadget.i = getelementptr inbounds %struct.isp1760_udc, ptr %udc, i32 0, i32 6
  %state.i = getelementptr inbounds %struct.isp1760_udc, ptr %udc, i32 0, i32 6, i32 9
  %87 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %state.i, align 8
  %89 = and i32 %88, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %89)
  %switch.i = icmp eq i32 %89, 6
  br i1 %switch.i, label %if.end87.i, label %if.end79.i.if.then76_crit_edge

if.end79.i.if.then76_crit_edge:                   ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then76

if.end87.i:                                       ; preds = %if.end79.i
  %driver.i = getelementptr inbounds %struct.isp1760_udc, ptr %udc, i32 0, i32 5
  %90 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %driver.i, align 8
  %setup.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %91, i32 0, i32 4
  %92 = ptrtoint ptr %setup.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %setup.i, align 4
  %call89.i = call i32 %93(ptr noundef %gadget.i, ptr noundef nonnull %req) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89.i)
  %cmp90.i = icmp slt i32 %call89.i, 0
  br i1 %cmp90.i, label %if.end87.i.if.then76_crit_edge, label %if.end74.thread115

if.end87.i.if.then76_crit_edge:                   ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then76

if.end74.thread115:                               ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #11
  %wValue97.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %req, i32 0, i32 2
  %94 = ptrtoint ptr %wValue97.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %wValue97.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %tobool99.not.i = icmp eq i16 %95, 0
  %cond.i = select i1 %tobool99.not.i, i32 6, i32 7
  call void @usb_gadget_set_state(ptr noundef %gadget.i, i32 noundef %cond.i) #9
  br label %cleanup

sw.default100.i:                                  ; preds = %if.then66
  %driver101.i = getelementptr inbounds %struct.isp1760_udc, ptr %udc, i32 0, i32 5
  %96 = ptrtoint ptr %driver101.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %driver101.i, align 8
  %setup102.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %97, i32 0, i32 4
  %98 = ptrtoint ptr %setup102.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %setup102.i, align 4
  %gadget103.i = getelementptr inbounds %struct.isp1760_udc, ptr %udc, i32 0, i32 6
  %call104.i = call i32 %99(ptr noundef %gadget103.i, ptr noundef nonnull %req) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104.i)
  %cmp105.i = icmp slt i32 %call104.i, 0
  br i1 %cmp105.i, label %sw.default100.i.if.then76_crit_edge, label %sw.default100.i.cleanup_crit_edge

sw.default100.i.cleanup_crit_edge:                ; preds = %sw.default100.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.default100.i.if.then76_crit_edge:              ; preds = %sw.default100.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then76

if.else69:                                        ; preds = %do.end60
  %driver = getelementptr inbounds %struct.isp1760_udc, ptr %udc, i32 0, i32 5
  %100 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %driver, align 8
  %setup = getelementptr inbounds %struct.usb_gadget_driver, ptr %101, i32 0, i32 4
  %102 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %setup, align 4
  %gadget = getelementptr inbounds %struct.isp1760_udc, ptr %udc, i32 0, i32 6
  %call70 = call i32 %103(ptr noundef %gadget, ptr noundef nonnull %req) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %extract.t104 = icmp slt i32 %call70, 0
  br i1 %extract.t104, label %if.else69.if.then76_crit_edge, label %if.else69.cleanup_crit_edge

if.else69.cleanup_crit_edge:                      ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else69.if.then76_crit_edge:                    ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then76

if.end74:                                         ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  %ep55.i = getelementptr inbounds %struct.isp1760_udc, ptr %udc, i32 0, i32 9
  call fastcc void @isp1760_udc_ctrl_send_status(ptr noundef %ep55.i, i32 noundef 0) #9
  call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %cleanup

if.then76.sink.split:                             ; preds = %if.end48.i.if.then76.sink.split_crit_edge, %if.end18.i.if.then76.sink.split_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %if.then76

if.then76:                                        ; preds = %if.then76.sink.split, %if.else69.if.then76_crit_edge, %sw.default100.i.if.then76_crit_edge, %if.end87.i.if.then76_crit_edge, %if.end79.i.if.then76_crit_edge, %sw.bb73.i.if.then76_crit_edge, %if.end69.i.if.then76_crit_edge, %sw.bb63.i.if.then76_crit_edge, %if.end44.i.if.then76_crit_edge, %lor.lhs.false38.i.if.then76_crit_edge, %sw.bb30.i.if.then76_crit_edge, %sw.bb26.i.if.then76_crit_edge, %if.end.i.if.then76_crit_edge, %lor.lhs.false.i.if.then76_crit_edge, %sw.bb4.i.if.then76_crit_edge, %sw.bb1.i.if.then76_crit_edge, %sw.bb.i.if.then76_crit_edge
  %ep77 = getelementptr inbounds %struct.isp1760_udc, ptr %udc, i32 0, i32 9
  call fastcc void @isp1760_udc_ctrl_send_stall(ptr noundef %ep77)
  br label %cleanup

cleanup:                                          ; preds = %if.then76, %if.end74, %if.else69.cleanup_crit_edge, %sw.default100.i.cleanup_crit_edge, %if.end74.thread115, %if.end69.i.cleanup_crit_edge, %if.end22.i, %sw.bb.i.cleanup_crit_edge, %if.then13, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_udc_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @isp1760_set_pullup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isp1760_udc_ctrl_send_status(ptr nocapture noundef readonly %ep, i32 noundef %dir) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %dir)
  %cmp = icmp ne i32 %dir, 128
  %arrayidx.i.i.i = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 4, i32 25
  %2 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i.i, align 4
  %. = sext i1 %cmp to i32
  %call.i.i.i.i8 = tail call i32 @regmap_field_update_bits_base(ptr noundef %3, i32 noundef -1, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %arrayidx.i.i = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 4, i32 24
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %5, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %arrayidx.i.i.i10 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 4, i32 29
  %6 = ptrtoint ptr %arrayidx.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i.i10, align 4
  %call.i.i.i.i11 = tail call i32 @regmap_field_update_bits_base(ptr noundef %7, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %ep0_state = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %ep0_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %ep0_state, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isp1760_udc_transmit(ptr nocapture noundef readonly %ep, ptr nocapture noundef %req) unnamed_addr #0 align 64 {
entry:
  %val_le.i61 = alloca i16, align 2
  %val_le.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %4 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %actual, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %5
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  %sub = sub i32 %7, %5
  %maxpacket = getelementptr inbounds %struct.isp1760_ep, ptr %ep, i32 0, i32 4
  %8 = ptrtoint ptr %maxpacket to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %maxpacket, align 4
  %10 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %9)
  %packet_size = getelementptr inbounds %struct.isp1760_request, ptr %req, i32 0, i32 3
  %11 = ptrtoint ptr %packet_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %packet_size, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_udc_transmit.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_udc_transmit, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !217

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %16 = ptrtoint ptr %packet_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %packet_size, align 4
  %18 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %actual, align 4
  %20 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_udc_transmit.__UNIQUE_ID_ddebug245, ptr noundef %15, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i32 noundef %17, i32 noundef %19, i32 noundef %21) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %addr.i = getelementptr inbounds %struct.isp1760_ep, ptr %ep, i32 0, i32 3
  %22 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.i, align 4
  %and.i = and i32 %23, 15
  %arrayidx.i.i.i = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 4, i32 24
  %24 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %25, i32 noundef -1, i32 noundef %and.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %arrayidx.i.i.i.i = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 4, i32 25
  %26 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i.i5.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %27, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %28 = ptrtoint ptr %packet_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %packet_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool17.not = icmp eq i32 %29, 0
  br i1 %tobool17.not, label %do.end.if.end26_crit_edge, label %if.end20

do.end.if.end26_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.end20:                                         ; preds = %do.end
  %arrayidx.i.i = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 4, i32 31
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %31, i32 noundef -1, i32 noundef %29, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %32 = ptrtoint ptr %packet_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr = load i32, ptr %packet_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp2270 = icmp sgt i32 %.pr, 2
  br i1 %cmp2270, label %for.body.lr.ph, label %if.end20.for.end_crit_edge

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end20
  %regs.i = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %buf.072 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %i.071 = phi i32 [ %.pr, %for.body.lr.ph ], [ %sub23, %for.body.for.body_crit_edge ]
  %33 = ptrtoint ptr %buf.072 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %buf.072, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_le.i) #9
  %35 = call i32 @llvm.bswap.i32(i32 %34) #9
  %36 = ptrtoint ptr %val_le.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %val_le.i, align 4
  %37 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i, align 4
  %call.i = call i32 @regmap_raw_write(ptr noundef %38, i32 noundef 544, ptr noundef nonnull %val_le.i, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i) #9
  %sub23 = add nsw i32 %i.071, -4
  %incdec.ptr = getelementptr i32, ptr %buf.072, i32 1
  %cmp22 = icmp ugt i32 %i.071, 6
  br i1 %cmp22, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end20.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %.pr, %if.end20.for.end_crit_edge ], [ %sub23, %for.body.for.end_crit_edge ]
  %buf.0.lcssa = phi ptr [ %add.ptr, %if.end20.for.end_crit_edge ], [ %incdec.ptr, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa)
  %cmp24 = icmp sgt i32 %i.0.lcssa, 0
  br i1 %cmp24, label %if.then25, label %for.end.if.end26_crit_edge

for.end.if.end26_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then25:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %buf.0.lcssa to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %buf.0.lcssa, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val_le.i61) #9
  %41 = call i16 @llvm.bswap.i16(i16 %40) #9
  %42 = ptrtoint ptr %val_le.i61 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %val_le.i61, align 2
  %regs.i62 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 3
  %43 = ptrtoint ptr %regs.i62 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i62, align 4
  %call.i63 = call i32 @regmap_raw_write(ptr noundef %44, i32 noundef 544, ptr noundef nonnull %val_le.i61, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val_le.i61) #9
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %for.end.if.end26_crit_edge, %do.end.if.end26_crit_edge
  %45 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp27 = icmp eq i32 %46, 0
  br i1 %cmp27, label %if.then28, label %if.end26.if.end29_crit_edge

if.end26.if.end29_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i.i64 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 4, i32 28
  %47 = ptrtoint ptr %arrayidx.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i.i.i64, align 4
  %call.i.i.i.i65 = call i32 @regmap_field_update_bits_base(ptr noundef %48, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end26.if.end29_crit_edge
  %49 = ptrtoint ptr %packet_size to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %packet_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool31.not = icmp eq i32 %50, 0
  br i1 %tobool31.not, label %if.then32, label %if.end29.if.end33_crit_edge

if.end29.if.end33_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i.i67 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 4, i32 27
  %51 = ptrtoint ptr %arrayidx.i.i.i67 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i.i.i67, align 4
  %call.i.i.i.i68 = call i32 @regmap_field_update_bits_base(ptr noundef %52, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end29.if.end33_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isp1760_udc_request_complete(ptr noundef %ep, ptr noundef %req, i32 noundef %status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_udc_request_complete.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_udc_request_complete, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !217

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_udc_request_complete.__UNIQUE_ID_ddebug237, ptr noundef %7, ptr noundef nonnull @.str.32, ptr noundef %req, i32 noundef %status) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ep5 = getelementptr inbounds %struct.isp1760_request, ptr %req, i32 0, i32 2
  %8 = ptrtoint ptr %ep5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %ep5, align 4
  %status7 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %9 = ptrtoint ptr %status7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %status, ptr %status7, align 4
  %complete = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 7
  %10 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %complete, align 4
  %ep9 = getelementptr inbounds %struct.isp1760_ep, ptr %ep, i32 0, i32 1
  tail call void %11(ptr noundef %ep9, ptr noundef %req) #9
  %lock = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 7
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %cmp20 = icmp eq i32 %status, 0
  br i1 %cmp20, label %land.lhs.true, label %do.end.if.end29_crit_edge

do.end.if.end29_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

land.lhs.true:                                    ; preds = %do.end
  %addr = getelementptr inbounds %struct.isp1760_ep, ptr %ep, i32 0, i32 3
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp22 = icmp eq i32 %13, 0
  br i1 %cmp22, label %land.lhs.true24, label %land.lhs.true.if.end29_crit_edge

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

land.lhs.true24:                                  ; preds = %land.lhs.true
  %ep0_dir = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %ep0_dir to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ep0_dir, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp26 = icmp eq i8 %15, 0
  br i1 %cmp26, label %if.then28, label %land.lhs.true24.if.end29_crit_edge

land.lhs.true24.if.end29_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then28:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ep, align 4
  %arrayidx.i.i.i.i = getelementptr %struct.isp1760_udc, ptr %17, i32 0, i32 4, i32 25
  %18 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i.i8.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %19, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %arrayidx.i.i.i = getelementptr %struct.isp1760_udc, ptr %17, i32 0, i32 4, i32 24
  %20 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %21, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %arrayidx.i.i.i10.i = getelementptr %struct.isp1760_udc, ptr %17, i32 0, i32 4, i32 29
  %22 = ptrtoint ptr %arrayidx.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i.i10.i, align 4
  %call.i.i.i.i11.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %23, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %ep0_state.i = getelementptr inbounds %struct.isp1760_udc, ptr %17, i32 0, i32 10
  %24 = ptrtoint ptr %ep0_state.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %ep0_state.i, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %land.lhs.true24.if.end29_crit_edge, %land.lhs.true.if.end29_crit_edge, %do.end.if.end29_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call15) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @isp1760_udc_receive(ptr nocapture noundef %ep, ptr noundef %req) unnamed_addr #0 align 64 {
entry:
  %val.i99 = alloca i16, align 2
  %val.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %addr.i = getelementptr inbounds %struct.isp1760_ep, ptr %ep, i32 0, i32 3
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 4
  %and.i.i = and i32 %3, 15
  %arrayidx.i.i.i.i = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 4, i32 24
  %4 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %5, i32 noundef -1, i32 noundef %and.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %arrayidx.i.i.i.i.i = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 4, i32 25
  %6 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i.i.i.i, align 4
  %and.i = shl i32 %3, 24
  %sext.i = ashr i32 %and.i, 31
  %call.i.i.i.i5.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %7, i32 noundef -1, i32 noundef %sext.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #9
  %8 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val.i.i, align 4, !annotation !214
  %arrayidx.i.i = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 4, i32 31
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = call i32 @regmap_field_read(ptr noundef %10, ptr noundef nonnull %val.i.i) #9
  %11 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_udc_receive.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_udc_receive, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !217

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %17 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %actual, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %19 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_udc_receive.__UNIQUE_ID_ddebug239, ptr noundef %16, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37, i32 noundef %12, i32 noundef %18, i32 noundef %20) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %length8 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %21 = ptrtoint ptr %length8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %length8, align 4
  %actual10 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %23 = ptrtoint ptr %actual10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %actual10, align 4
  %sub = sub i32 %22, %24
  %25 = call i32 @llvm.umin.i32(i32 %12, i32 %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool12.not = icmp eq i32 %25, 0
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i.i = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 4, i32 26
  %26 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %27, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

if.end14:                                         ; preds = %do.end
  %28 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %req, align 4
  %add.ptr = getelementptr i8, ptr %29, i32 %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp19105 = icmp sgt i32 %25, 2
  br i1 %cmp19105, label %for.body.lr.ph, label %if.end14.for.end_crit_edge

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end14
  %regs.i = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %buf.0107 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %i.0106 = phi i32 [ %25, %for.body.lr.ph ], [ %sub21, %for.body.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %30 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %val.i, align 4, !annotation !214
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  %call.i = call i32 @regmap_raw_read(ptr noundef %32, i32 noundef 544, ptr noundef nonnull %val.i, i32 noundef 4) #9
  %33 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val.i, align 4
  %35 = call i32 @llvm.bswap.i32(i32 %34) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  %36 = ptrtoint ptr %buf.0107 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %buf.0107, align 4
  %sub21 = add nsw i32 %i.0106, -4
  %incdec.ptr = getelementptr i32, ptr %buf.0107, i32 1
  %cmp19 = icmp ugt i32 %i.0106, 6
  br i1 %cmp19, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end14.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %25, %if.end14.for.end_crit_edge ], [ %sub21, %for.body.for.end_crit_edge ]
  %buf.0.lcssa = phi ptr [ %add.ptr, %if.end14.for.end_crit_edge ], [ %incdec.ptr, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa)
  %cmp22 = icmp sgt i32 %i.0.lcssa, 0
  br i1 %cmp22, label %if.then23, label %for.end.if.end25_crit_edge

for.end.if.end25_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then23:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i99) #9
  %37 = ptrtoint ptr %val.i99 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 -1, ptr %val.i99, align 2, !annotation !214
  %regs.i100 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 3
  %38 = ptrtoint ptr %regs.i100 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i100, align 4
  %call.i101 = call i32 @regmap_raw_read(ptr noundef %39, i32 noundef 544, ptr noundef nonnull %val.i99, i32 noundef 2) #9
  %40 = ptrtoint ptr %val.i99 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %val.i99, align 2
  %42 = call i16 @llvm.bswap.i16(i16 %41) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i99) #9
  %43 = ptrtoint ptr %buf.0.lcssa to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %buf.0.lcssa, align 2
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %for.end.if.end25_crit_edge
  %44 = ptrtoint ptr %actual10 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %actual10, align 4
  %add = add i32 %45, %25
  store i32 %add, ptr %actual10, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_udc_receive.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_udc_receive, %if.then40)) #9
          to label %do.end49 [label %if.then40], !srcloc !217

if.then40:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 8
  %50 = ptrtoint ptr %actual10 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %actual10, align 4
  %52 = ptrtoint ptr %length8 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %length8, align 4
  %maxpacket = getelementptr inbounds %struct.isp1760_ep, ptr %ep, i32 0, i32 4
  %54 = ptrtoint ptr %maxpacket to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %maxpacket, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_udc_receive.__UNIQUE_ID_ddebug242, ptr noundef %49, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, ptr noundef %req, i32 noundef %51, i32 noundef %53, i32 noundef %55, i32 noundef %25) #9
  br label %do.end49

do.end49:                                         ; preds = %if.then40, %if.end25
  %rx_pending = getelementptr inbounds %struct.isp1760_ep, ptr %ep, i32 0, i32 7
  %56 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %rx_pending, align 4
  %57 = ptrtoint ptr %actual10 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %actual10, align 4
  %59 = ptrtoint ptr %length8 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %length8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp54 = icmp eq i32 %58, %60
  br i1 %cmp54, label %do.end49.if.then57_crit_edge, label %lor.lhs.false

do.end49.if.then57_crit_edge:                     ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57

lor.lhs.false:                                    ; preds = %do.end49
  %maxpacket55 = getelementptr inbounds %struct.isp1760_ep, ptr %ep, i32 0, i32 4
  %61 = ptrtoint ptr %maxpacket55 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %maxpacket55, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %62)
  %cmp56 = icmp ult i32 %25, %62
  br i1 %cmp56, label %lor.lhs.false.if.then57_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.if.then57_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57

if.then57:                                        ; preds = %lor.lhs.false.if.then57_crit_edge, %do.end49.if.then57_crit_edge
  %queue = getelementptr inbounds %struct.isp1760_request, ptr %req, i32 0, i32 1
  %call.i.i102 = call zeroext i1 @__list_del_entry_valid(ptr noundef %queue) #9
  br i1 %call.i.i102, label %if.end.i.i, label %if.then57.list_del.exit_crit_edge

if.then57.list_del.exit_crit_edge:                ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.isp1760_request, ptr %req, i32 0, i32 1, i32 1
  %63 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i.i, align 4
  %65 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %queue, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev1.i.i.i, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %66, ptr %64, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then57.list_del.exit_crit_edge
  %69 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr inttoptr (i32 256 to ptr), ptr %queue, align 4
  %prev.i = getelementptr inbounds %struct.isp1760_request, ptr %req, i32 0, i32 1, i32 1
  %70 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %lor.lhs.false.cleanup_crit_edge, %if.then13
  %retval.0 = phi i1 [ true, %list_del.exit ], [ false, %if.then13 ], [ false, %lor.lhs.false.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isp1760_udc_ctrl_send_stall(ptr nocapture noundef readonly %ep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_udc_ctrl_send_stall.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_udc_ctrl_send_stall, %if.then)) #9
          to label %do.body6 [label %if.then], !srcloc !217

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %addr = getelementptr inbounds %struct.isp1760_ep, ptr %ep, i32 0, i32 3
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_udc_ctrl_send_stall.__UNIQUE_ID_ddebug238, ptr noundef %7, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.44, i32 noundef %9) #9
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 7
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %addr.i = getelementptr inbounds %struct.isp1760_ep, ptr %ep, i32 0, i32 3
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i, align 4
  %and.i = and i32 %11, 15
  %arrayidx.i.i.i = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 4, i32 24
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %13, i32 noundef -1, i32 noundef %and.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %arrayidx.i.i.i.i = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 4, i32 25
  %14 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i.i5.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %15, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %arrayidx.i.i.i25 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 4, i32 30
  %16 = ptrtoint ptr %arrayidx.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i.i25, align 4
  %call.i.i.i.i26 = tail call i32 @regmap_field_update_bits_base(ptr noundef %17, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %18 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.i, align 4
  %and.i28 = and i32 %19, 15
  %20 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i.i.i30 = tail call i32 @regmap_field_update_bits_base(ptr noundef %21, i32 noundef -1, i32 noundef %and.i28, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %22 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i.i5.i32 = tail call i32 @regmap_field_update_bits_base(ptr noundef %23, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %24 = ptrtoint ptr %arrayidx.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i.i.i25, align 4
  %call.i.i.i.i35 = tail call i32 @regmap_field_update_bits_base(ptr noundef %25, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %ep0_state = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 10
  %26 = ptrtoint ptr %ep0_state to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %ep0_state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isp1760_udc_get_status(ptr noundef readonly %udc, ptr nocapture noundef readonly %req) unnamed_addr #0 align 64 {
entry:
  %val_le.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %req, i32 0, i32 4
  %0 = ptrtoint ptr %wLength to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %wLength, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %1)
  %cmp.not = icmp eq i16 %1, 512
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %req, i32 0, i32 2
  %2 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %wValue, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp3.not = icmp eq i16 %3, 0
  br i1 %cmp3.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %req, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.89)
  switch i8 %5, label %if.end.cleanup_crit_edge [
    i8 -128, label %sw.bb
    i8 -127, label %if.end.sw.epilog_crit_edge
    i8 -126, label %sw.bb8
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %devstatus = getelementptr inbounds %struct.isp1760_udc, ptr %udc, i32 0, i32 15
  %7 = ptrtoint ptr %devstatus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %devstatus, align 8
  %conv6 = trunc i32 %8 to i16
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, ptr %req, i32 0, i32 3
  %9 = ptrtoint ptr %wIndex to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %wIndex, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %conv.i = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp.i = icmp eq i16 %10, 0
  br i1 %cmp.i, label %if.then.i, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %sw.bb8
  %addr.i = getelementptr %struct.isp1760_udc, ptr %udc, i32 0, i32 9, i32 1, i32 3
  %12 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv.i)
  %cmp7.i = icmp eq i32 %13, %conv.i
  br i1 %cmp7.i, label %for.body.preheader.i.if.then9.i_crit_edge, label %for.inc.i

for.body.preheader.i.if.then9.i_crit_edge:        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9.i

if.then.i:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  %ep.i = getelementptr inbounds %struct.isp1760_udc, ptr %udc, i32 0, i32 9
  br label %isp1760_udc_find_ep.exit

if.then9.i:                                       ; preds = %for.inc.12.i.if.then9.i_crit_edge, %for.inc.11.i.if.then9.i_crit_edge, %for.inc.10.i.if.then9.i_crit_edge, %for.inc.9.i.if.then9.i_crit_edge, %for.inc.8.i.if.then9.i_crit_edge, %for.inc.7.i.if.then9.i_crit_edge, %for.inc.6.i.if.then9.i_crit_edge, %for.inc.5.i.if.then9.i_crit_edge, %for.inc.4.i.if.then9.i_crit_edge, %for.inc.3.i.if.then9.i_crit_edge, %for.inc.2.i.if.then9.i_crit_edge, %for.inc.1.i.if.then9.i_crit_edge, %for.inc.i.if.then9.i_crit_edge, %for.body.preheader.i.if.then9.i_crit_edge
  %i.024.lcssa.i = phi i32 [ 1, %for.body.preheader.i.if.then9.i_crit_edge ], [ 2, %for.inc.i.if.then9.i_crit_edge ], [ 3, %for.inc.1.i.if.then9.i_crit_edge ], [ 4, %for.inc.2.i.if.then9.i_crit_edge ], [ 5, %for.inc.3.i.if.then9.i_crit_edge ], [ 6, %for.inc.4.i.if.then9.i_crit_edge ], [ 7, %for.inc.5.i.if.then9.i_crit_edge ], [ 8, %for.inc.6.i.if.then9.i_crit_edge ], [ 9, %for.inc.7.i.if.then9.i_crit_edge ], [ 10, %for.inc.8.i.if.then9.i_crit_edge ], [ 11, %for.inc.9.i.if.then9.i_crit_edge ], [ 12, %for.inc.10.i.if.then9.i_crit_edge ], [ 13, %for.inc.11.i.if.then9.i_crit_edge ], [ 14, %for.inc.12.i.if.then9.i_crit_edge ]
  %arrayidx5.i = getelementptr %struct.isp1760_udc, ptr %udc, i32 0, i32 9, i32 %i.024.lcssa.i
  %desc.i = getelementptr %struct.isp1760_udc, ptr %udc, i32 0, i32 9, i32 %i.024.lcssa.i, i32 6
  %14 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.then9.i.cleanup_crit_edge, label %if.then9.i.isp1760_udc_find_ep.exit_crit_edge

if.then9.i.isp1760_udc_find_ep.exit_crit_edge:    ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %isp1760_udc_find_ep.exit

if.then9.i.cleanup_crit_edge:                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.i:                                        ; preds = %for.body.preheader.i
  %addr.1.i = getelementptr %struct.isp1760_udc, ptr %udc, i32 0, i32 9, i32 2, i32 3
  %16 = ptrtoint ptr %addr.1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv.i)
  %cmp7.1.i = icmp eq i32 %17, %conv.i
  br i1 %cmp7.1.i, label %for.inc.i.if.then9.i_crit_edge, label %for.inc.1.i

for.inc.i.if.then9.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %addr.2.i = getelementptr %struct.isp1760_udc, ptr %udc, i32 0, i32 9, i32 3, i32 3
  %18 = ptrtoint ptr %addr.2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv.i)
  %cmp7.2.i = icmp eq i32 %19, %conv.i
  br i1 %cmp7.2.i, label %for.inc.1.i.if.then9.i_crit_edge, label %for.inc.2.i

for.inc.1.i.if.then9.i_crit_edge:                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %addr.3.i = getelementptr %struct.isp1760_udc, ptr %udc, i32 0, i32 9, i32 4, i32 3
  %20 = ptrtoint ptr %addr.3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv.i)
  %cmp7.3.i = icmp eq i32 %21, %conv.i
  br i1 %cmp7.3.i, label %for.inc.2.i.if.then9.i_crit_edge, label %for.inc.3.i

for.inc.2.i.if.then9.i_crit_edge:                 ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %addr.4.i = getelementptr %struct.isp1760_udc, ptr %udc, i32 0, i32 9, i32 5, i32 3
  %22 = ptrtoint ptr %addr.4.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv.i)
  %cmp7.4.i = icmp eq i32 %23, %conv.i
  br i1 %cmp7.4.i, label %for.inc.3.i.if.then9.i_crit_edge, label %for.inc.4.i

for.inc.3.i.if.then9.i_crit_edge:                 ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %addr.5.i = getelementptr %struct.isp1760_udc, ptr %udc, i32 0, i32 9, i32 6, i32 3
  %24 = ptrtoint ptr %addr.5.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr.5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv.i)
  %cmp7.5.i = icmp eq i32 %25, %conv.i
  br i1 %cmp7.5.i, label %for.inc.4.i.if.then9.i_crit_edge, label %for.inc.5.i

for.inc.4.i.if.then9.i_crit_edge:                 ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %addr.6.i = getelementptr %struct.isp1760_udc, ptr %udc, i32 0, i32 9, i32 7, i32 3
  %26 = ptrtoint ptr %addr.6.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr.6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %conv.i)
  %cmp7.6.i = icmp eq i32 %27, %conv.i
  br i1 %cmp7.6.i, label %for.inc.5.i.if.then9.i_crit_edge, label %for.inc.6.i

for.inc.5.i.if.then9.i_crit_edge:                 ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %addr.7.i = getelementptr %struct.isp1760_udc, ptr %udc, i32 0, i32 9, i32 8, i32 3
  %28 = ptrtoint ptr %addr.7.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %addr.7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %conv.i)
  %cmp7.7.i = icmp eq i32 %29, %conv.i
  br i1 %cmp7.7.i, label %for.inc.6.i.if.then9.i_crit_edge, label %for.inc.7.i

for.inc.6.i.if.then9.i_crit_edge:                 ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9.i

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %addr.8.i = getelementptr %struct.isp1760_udc, ptr %udc, i32 0, i32 9, i32 9, i32 3
  %30 = ptrtoint ptr %addr.8.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %addr.8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %conv.i)
  %cmp7.8.i = icmp eq i32 %31, %conv.i
  br i1 %cmp7.8.i, label %for.inc.7.i.if.then9.i_crit_edge, label %for.inc.8.i

for.inc.7.i.if.then9.i_crit_edge:                 ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9.i

for.inc.8.i:                                      ; preds = %for.inc.7.i
  %addr.9.i = getelementptr %struct.isp1760_udc, ptr %udc, i32 0, i32 9, i32 10, i32 3
  %32 = ptrtoint ptr %addr.9.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %addr.9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv.i)
  %cmp7.9.i = icmp eq i32 %33, %conv.i
  br i1 %cmp7.9.i, label %for.inc.8.i.if.then9.i_crit_edge, label %for.inc.9.i

for.inc.8.i.if.then9.i_crit_edge:                 ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9.i

for.inc.9.i:                                      ; preds = %for.inc.8.i
  %addr.10.i = getelementptr %struct.isp1760_udc, ptr %udc, i32 0, i32 9, i32 11, i32 3
  %34 = ptrtoint ptr %addr.10.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %addr.10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %conv.i)
  %cmp7.10.i = icmp eq i32 %35, %conv.i
  br i1 %cmp7.10.i, label %for.inc.9.i.if.then9.i_crit_edge, label %for.inc.10.i

for.inc.9.i.if.then9.i_crit_edge:                 ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9.i

for.inc.10.i:                                     ; preds = %for.inc.9.i
  %addr.11.i = getelementptr %struct.isp1760_udc, ptr %udc, i32 0, i32 9, i32 12, i32 3
  %36 = ptrtoint ptr %addr.11.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %addr.11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %conv.i)
  %cmp7.11.i = icmp eq i32 %37, %conv.i
  br i1 %cmp7.11.i, label %for.inc.10.i.if.then9.i_crit_edge, label %for.inc.11.i

for.inc.10.i.if.then9.i_crit_edge:                ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9.i

for.inc.11.i:                                     ; preds = %for.inc.10.i
  %addr.12.i = getelementptr %struct.isp1760_udc, ptr %udc, i32 0, i32 9, i32 13, i32 3
  %38 = ptrtoint ptr %addr.12.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %addr.12.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %conv.i)
  %cmp7.12.i = icmp eq i32 %39, %conv.i
  br i1 %cmp7.12.i, label %for.inc.11.i.if.then9.i_crit_edge, label %for.inc.12.i

for.inc.11.i.if.then9.i_crit_edge:                ; preds = %for.inc.11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9.i

for.inc.12.i:                                     ; preds = %for.inc.11.i
  %addr.13.i = getelementptr %struct.isp1760_udc, ptr %udc, i32 0, i32 9, i32 14, i32 3
  %40 = ptrtoint ptr %addr.13.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %addr.13.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %conv.i)
  %cmp7.13.i = icmp eq i32 %41, %conv.i
  br i1 %cmp7.13.i, label %for.inc.12.i.if.then9.i_crit_edge, label %for.inc.12.i.cleanup_crit_edge

for.inc.12.i.cleanup_crit_edge:                   ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.12.i.if.then9.i_crit_edge:                ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9.i

isp1760_udc_find_ep.exit:                         ; preds = %if.then9.i.isp1760_udc_find_ep.exit_crit_edge, %if.then.i
  %retval.0.i37 = phi ptr [ %ep.i, %if.then.i ], [ %arrayidx5.i, %if.then9.i.isp1760_udc_find_ep.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i37, null
  br i1 %tobool.not, label %isp1760_udc_find_ep.exit.cleanup_crit_edge, label %if.end10

isp1760_udc_find_ep.exit.cleanup_crit_edge:       ; preds = %isp1760_udc_find_ep.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %isp1760_udc_find_ep.exit
  call void @__sanitizer_cov_trace_pc() #11
  %halted = getelementptr inbounds %struct.isp1760_ep, ptr %retval.0.i37, i32 0, i32 8
  %42 = ptrtoint ptr %halted to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %halted, align 1, !range !213
  %44 = zext i8 %43 to i16
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end10, %sw.bb, %if.end.sw.epilog_crit_edge
  %status.0 = phi i16 [ %conv6, %sw.bb ], [ 0, %if.end.sw.epilog_crit_edge ], [ %44, %if.end10 ]
  %arrayidx.i.i.i = getelementptr %struct.isp1760_udc, ptr %udc, i32 0, i32 4, i32 25
  %45 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %46, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %arrayidx.i.i = getelementptr %struct.isp1760_udc, ptr %udc, i32 0, i32 4, i32 24
  %47 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %48, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %arrayidx.i.i39 = getelementptr %struct.isp1760_udc, ptr %udc, i32 0, i32 4, i32 31
  %49 = ptrtoint ptr %arrayidx.i.i39 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i.i39, align 4
  %call.i.i.i40 = tail call i32 @regmap_field_update_bits_base(ptr noundef %50, i32 noundef -1, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val_le.i) #9
  %51 = tail call i16 @llvm.bswap.i16(i16 %status.0) #9
  %52 = ptrtoint ptr %val_le.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %val_le.i, align 2
  %regs.i = getelementptr inbounds %struct.isp1760_udc, ptr %udc, i32 0, i32 3
  %53 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i, align 4
  %call.i = call i32 @regmap_raw_write(ptr noundef %54, i32 noundef 544, ptr noundef nonnull %val_le.i, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val_le.i) #9
  %arrayidx.i.i.i42 = getelementptr %struct.isp1760_udc, ptr %udc, i32 0, i32 4, i32 28
  %55 = ptrtoint ptr %arrayidx.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i.i.i42, align 4
  %call.i.i.i.i43 = call i32 @regmap_field_update_bits_base(ptr noundef %56, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_udc_get_status.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_udc_get_status, %if.then20)) #9
          to label %cleanup [label %if.then20], !srcloc !217

if.then20:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %udc to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %udc, align 8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 8
  %conv21 = zext i16 %status.0 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_udc_get_status.__UNIQUE_ID_ddebug254, ptr noundef %60, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %conv21) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %sw.epilog, %isp1760_udc_find_ep.exit.cleanup_crit_edge, %for.inc.12.i.cleanup_crit_edge, %if.then9.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %isp1760_udc_find_ep.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then20 ], [ 0, %sw.epilog ], [ -22, %for.inc.12.i.cleanup_crit_edge ], [ -22, %if.then9.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @isp1760_udc_find_ep(ptr noundef readonly %udc, i16 noundef zeroext %index) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %index to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %index)
  %cmp = icmp eq i16 %index, 0
  br i1 %cmp, label %if.then, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %addr = getelementptr %struct.isp1760_udc, ptr %udc, i32 0, i32 9, i32 1, i32 3
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp7 = icmp eq i32 %1, %conv
  br i1 %cmp7, label %for.body.preheader.if.then9_crit_edge, label %for.inc

for.body.preheader.if.then9_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ep = getelementptr inbounds %struct.isp1760_udc, ptr %udc, i32 0, i32 9
  br label %cleanup

if.then9:                                         ; preds = %for.inc.12.if.then9_crit_edge, %for.inc.11.if.then9_crit_edge, %for.inc.10.if.then9_crit_edge, %for.inc.9.if.then9_crit_edge, %for.inc.8.if.then9_crit_edge, %for.inc.7.if.then9_crit_edge, %for.inc.6.if.then9_crit_edge, %for.inc.5.if.then9_crit_edge, %for.inc.4.if.then9_crit_edge, %for.inc.3.if.then9_crit_edge, %for.inc.2.if.then9_crit_edge, %for.inc.1.if.then9_crit_edge, %for.inc.if.then9_crit_edge, %for.body.preheader.if.then9_crit_edge
  %i.024.lcssa = phi i32 [ 1, %for.body.preheader.if.then9_crit_edge ], [ 2, %for.inc.if.then9_crit_edge ], [ 3, %for.inc.1.if.then9_crit_edge ], [ 4, %for.inc.2.if.then9_crit_edge ], [ 5, %for.inc.3.if.then9_crit_edge ], [ 6, %for.inc.4.if.then9_crit_edge ], [ 7, %for.inc.5.if.then9_crit_edge ], [ 8, %for.inc.6.if.then9_crit_edge ], [ 9, %for.inc.7.if.then9_crit_edge ], [ 10, %for.inc.8.if.then9_crit_edge ], [ 11, %for.inc.9.if.then9_crit_edge ], [ 12, %for.inc.10.if.then9_crit_edge ], [ 13, %for.inc.11.if.then9_crit_edge ], [ 14, %for.inc.12.if.then9_crit_edge ]
  %arrayidx5 = getelementptr %struct.isp1760_udc, ptr %udc, i32 0, i32 9, i32 %i.024.lcssa
  %desc = getelementptr %struct.isp1760_udc, ptr %udc, i32 0, i32 9, i32 %i.024.lcssa, i32 6
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool.not, ptr null, ptr %arrayidx5
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %addr.1 = getelementptr %struct.isp1760_udc, ptr %udc, i32 0, i32 9, i32 2, i32 3
  %4 = ptrtoint ptr %addr.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp7.1 = icmp eq i32 %5, %conv
  br i1 %cmp7.1, label %for.inc.if.then9_crit_edge, label %for.inc.1

for.inc.if.then9_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

for.inc.1:                                        ; preds = %for.inc
  %addr.2 = getelementptr %struct.isp1760_udc, ptr %udc, i32 0, i32 9, i32 3, i32 3
  %6 = ptrtoint ptr %addr.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp7.2 = icmp eq i32 %7, %conv
  br i1 %cmp7.2, label %for.inc.1.if.then9_crit_edge, label %for.inc.2

for.inc.1.if.then9_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

for.inc.2:                                        ; preds = %for.inc.1
  %addr.3 = getelementptr %struct.isp1760_udc, ptr %udc, i32 0, i32 9, i32 4, i32 3
  %8 = ptrtoint ptr %addr.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv)
  %cmp7.3 = icmp eq i32 %9, %conv
  br i1 %cmp7.3, label %for.inc.2.if.then9_crit_edge, label %for.inc.3

for.inc.2.if.then9_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

for.inc.3:                                        ; preds = %for.inc.2
  %addr.4 = getelementptr %struct.isp1760_udc, ptr %udc, i32 0, i32 9, i32 5, i32 3
  %10 = ptrtoint ptr %addr.4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv)
  %cmp7.4 = icmp eq i32 %11, %conv
  br i1 %cmp7.4, label %for.inc.3.if.then9_crit_edge, label %for.inc.4

for.inc.3.if.then9_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

for.inc.4:                                        ; preds = %for.inc.3
  %addr.5 = getelementptr %struct.isp1760_udc, ptr %udc, i32 0, i32 9, i32 6, i32 3
  %12 = ptrtoint ptr %addr.5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv)
  %cmp7.5 = icmp eq i32 %13, %conv
  br i1 %cmp7.5, label %for.inc.4.if.then9_crit_edge, label %for.inc.5

for.inc.4.if.then9_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

for.inc.5:                                        ; preds = %for.inc.4
  %addr.6 = getelementptr %struct.isp1760_udc, ptr %udc, i32 0, i32 9, i32 7, i32 3
  %14 = ptrtoint ptr %addr.6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv)
  %cmp7.6 = icmp eq i32 %15, %conv
  br i1 %cmp7.6, label %for.inc.5.if.then9_crit_edge, label %for.inc.6

for.inc.5.if.then9_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

for.inc.6:                                        ; preds = %for.inc.5
  %addr.7 = getelementptr %struct.isp1760_udc, ptr %udc, i32 0, i32 9, i32 8, i32 3
  %16 = ptrtoint ptr %addr.7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv)
  %cmp7.7 = icmp eq i32 %17, %conv
  br i1 %cmp7.7, label %for.inc.6.if.then9_crit_edge, label %for.inc.7

for.inc.6.if.then9_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

for.inc.7:                                        ; preds = %for.inc.6
  %addr.8 = getelementptr %struct.isp1760_udc, ptr %udc, i32 0, i32 9, i32 9, i32 3
  %18 = ptrtoint ptr %addr.8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv)
  %cmp7.8 = icmp eq i32 %19, %conv
  br i1 %cmp7.8, label %for.inc.7.if.then9_crit_edge, label %for.inc.8

for.inc.7.if.then9_crit_edge:                     ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

for.inc.8:                                        ; preds = %for.inc.7
  %addr.9 = getelementptr %struct.isp1760_udc, ptr %udc, i32 0, i32 9, i32 10, i32 3
  %20 = ptrtoint ptr %addr.9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr.9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv)
  %cmp7.9 = icmp eq i32 %21, %conv
  br i1 %cmp7.9, label %for.inc.8.if.then9_crit_edge, label %for.inc.9

for.inc.8.if.then9_crit_edge:                     ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

for.inc.9:                                        ; preds = %for.inc.8
  %addr.10 = getelementptr %struct.isp1760_udc, ptr %udc, i32 0, i32 9, i32 11, i32 3
  %22 = ptrtoint ptr %addr.10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv)
  %cmp7.10 = icmp eq i32 %23, %conv
  br i1 %cmp7.10, label %for.inc.9.if.then9_crit_edge, label %for.inc.10

for.inc.9.if.then9_crit_edge:                     ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

for.inc.10:                                       ; preds = %for.inc.9
  %addr.11 = getelementptr %struct.isp1760_udc, ptr %udc, i32 0, i32 9, i32 12, i32 3
  %24 = ptrtoint ptr %addr.11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr.11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv)
  %cmp7.11 = icmp eq i32 %25, %conv
  br i1 %cmp7.11, label %for.inc.10.if.then9_crit_edge, label %for.inc.11

for.inc.10.if.then9_crit_edge:                    ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

for.inc.11:                                       ; preds = %for.inc.10
  %addr.12 = getelementptr %struct.isp1760_udc, ptr %udc, i32 0, i32 9, i32 13, i32 3
  %26 = ptrtoint ptr %addr.12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr.12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %conv)
  %cmp7.12 = icmp eq i32 %27, %conv
  br i1 %cmp7.12, label %for.inc.11.if.then9_crit_edge, label %for.inc.12

for.inc.11.if.then9_crit_edge:                    ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

for.inc.12:                                       ; preds = %for.inc.11
  %addr.13 = getelementptr %struct.isp1760_udc, ptr %udc, i32 0, i32 9, i32 14, i32 3
  %28 = ptrtoint ptr %addr.13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %addr.13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %conv)
  %cmp7.13 = icmp eq i32 %29, %conv
  br i1 %cmp7.13, label %for.inc.12.if.then9_crit_edge, label %for.inc.12.cleanup_crit_edge

for.inc.12.cleanup_crit_edge:                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.12.if.then9_crit_edge:                    ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

cleanup:                                          ; preds = %for.inc.12.cleanup_crit_edge, %if.then9, %if.then
  %retval.0 = phi ptr [ %ep, %if.then ], [ %spec.select, %if.then9 ], [ null, %for.inc.12.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__isp1760_udc_set_halt(ptr noundef %ep, i1 noundef zeroext %halt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %halt to i8
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__isp1760_udc_set_halt.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__isp1760_udc_set_halt, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !217

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %cond = select i1 %halt, ptr @.str.50, ptr @.str.51
  %addr = getelementptr inbounds %struct.isp1760_ep, ptr %ep, i32 0, i32 3
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__isp1760_udc_set_halt.__UNIQUE_ID_ddebug252, ptr noundef %5, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48, ptr noundef nonnull %cond, i32 noundef %7) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %desc = getelementptr inbounds %struct.isp1760_ep, ptr %ep, i32 0, i32 6
  %8 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %do.end.if.end30_crit_edge, label %land.lhs.true

do.end.if.end30_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

land.lhs.true:                                    ; preds = %do.end
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bmAttributes.i, align 1
  %12 = and i8 %11, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp.i.not = icmp eq i8 %12, 1
  br i1 %cmp.i.not, label %do.body11, label %land.lhs.true.if.end30_crit_edge

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

do.body11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__isp1760_udc_set_halt.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__isp1760_udc_set_halt, %if.then23)) #9
          to label %cleanup [label %if.then23], !srcloc !217

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %addr26 = getelementptr inbounds %struct.isp1760_ep, ptr %ep, i32 0, i32 3
  %17 = ptrtoint ptr %addr26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr26, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__isp1760_udc_set_halt.__UNIQUE_ID_ddebug253, ptr noundef %16, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.48, i32 noundef %18) #9
  br label %cleanup

if.end30:                                         ; preds = %land.lhs.true.if.end30_crit_edge, %do.end.if.end30_crit_edge
  %addr.i = getelementptr inbounds %struct.isp1760_ep, ptr %ep, i32 0, i32 3
  %19 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %addr.i, align 4
  %and.i.i = and i32 %20, 15
  %arrayidx.i.i.i.i = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 4, i32 24
  %21 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %22, i32 noundef -1, i32 noundef %and.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %arrayidx.i.i.i.i.i = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 4, i32 25
  %23 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i.i.i.i, align 4
  %and.i = shl i32 %20, 24
  %sext.i = ashr i32 %and.i, 31
  %call.i.i.i.i5.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %24, i32 noundef -1, i32 noundef %sext.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %arrayidx.i.i.i = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 4, i32 30
  %25 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.i.i, align 4
  br i1 %halt, label %if.end33, label %if.end33.thread

if.end33:                                         ; preds = %if.end30
  %call.i.i.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %26, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %27 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp = icmp eq i32 %28, 0
  br i1 %cmp, label %if.then37.critedge, label %if.end33.if.end53_crit_edge

if.end33.if.end53_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.end33.thread:                                  ; preds = %if.end30
  %call.i.i.i.i86 = tail call i32 @regmap_field_update_bits_base(ptr noundef %26, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %29 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp107 = icmp eq i32 %30, 0
  br i1 %cmp107, label %if.else38.critedge, label %if.then42

if.then37.critedge:                               ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i.i90.c108 = tail call i32 @regmap_field_update_bits_base(ptr noundef %32, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %33 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i.i.i.i, align 4
  %call.i.i.i.i5.i.c109 = tail call i32 @regmap_field_update_bits_base(ptr noundef %34, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %35 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i.i.i94 = tail call i32 @regmap_field_update_bits_base(ptr noundef %36, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end53

if.else38.critedge:                               ; preds = %if.end33.thread
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i.i90.c = tail call i32 @regmap_field_update_bits_base(ptr noundef %38, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %39 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i.i.i.i.i, align 4
  %call.i.i.i.i5.i.c = tail call i32 @regmap_field_update_bits_base(ptr noundef %40, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %41 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i.i.i97 = tail call i32 @regmap_field_update_bits_base(ptr noundef %42, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end53

if.then42:                                        ; preds = %if.end33.thread
  %arrayidx.i.i.i99 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 4, i32 33
  %43 = ptrtoint ptr %arrayidx.i.i.i99 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i.i.i99, align 4
  %call.i.i.i.i100 = tail call i32 @regmap_field_update_bits_base(ptr noundef %44, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %45 = ptrtoint ptr %arrayidx.i.i.i99 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i.i.i99, align 4
  %call.i.i.i.i103 = tail call i32 @regmap_field_update_bits_base(ptr noundef %46, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %47 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %addr.i, align 4
  %and = and i32 %48, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool44.not = icmp eq i32 %and, 0
  br i1 %tobool44.not, label %if.then42.if.end53_crit_edge, label %land.lhs.true45

if.then42.if.end53_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

land.lhs.true45:                                  ; preds = %if.then42
  %queue = getelementptr inbounds %struct.isp1760_ep, ptr %ep, i32 0, i32 2
  %49 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %queue, align 4
  %cmp.i104.not = icmp eq ptr %50, %queue
  br i1 %cmp.i104.not, label %land.lhs.true45.if.end53_crit_edge, label %if.then48

land.lhs.true45.if.end53_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then48:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %50, i32 -56
  tail call fastcc void @isp1760_udc_transmit(ptr noundef %ep, ptr noundef %add.ptr)
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %land.lhs.true45.if.end53_crit_edge, %if.then42.if.end53_crit_edge, %if.else38.critedge, %if.then37.critedge, %if.end33.if.end53_crit_edge
  %halted = getelementptr inbounds %struct.isp1760_ep, ptr %ep, i32 0, i32 8
  %51 = ptrtoint ptr %halted to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %frombool, ptr %halted, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.then23, %do.body11
  %retval.0 = phi i32 [ 0, %if.end53 ], [ -22, %if.then23 ], [ -22, %do.body11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isp1760_udc_set_address(ptr noundef %udc, i16 noundef zeroext %addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %addr to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %addr)
  %cmp = icmp ugt i16 %addr, 127
  br i1 %cmp, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_udc_set_address.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_udc_set_address, %if.then4)) #9
          to label %return [label %if.then4], !srcloc !217

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %udc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_udc_set_address.__UNIQUE_ID_ddebug255, ptr noundef %3, ptr noundef nonnull @.str.54, i32 noundef %conv) #9
  br label %return

if.end6:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.isp1760_udc, ptr %udc, i32 0, i32 6, i32 9
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 8
  %.off = add i32 %5, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end33, label %do.body14

do.body14:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_udc_set_address.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_udc_set_address, %if.then26)) #9
          to label %return [label %if.then26], !srcloc !217

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %udc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udc, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_udc_set_address.__UNIQUE_ID_ddebug256, ptr noundef %9, ptr noundef nonnull @.str.55, i32 noundef %11) #9
  br label %return

if.end33:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %gadget = getelementptr inbounds %struct.isp1760_udc, ptr %udc, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %addr)
  %tobool36.not = icmp eq i16 %addr, 0
  %cond = select i1 %tobool36.not, i32 5, i32 6
  tail call void @usb_gadget_set_state(ptr noundef %gadget, i32 noundef %cond) #9
  %fields.i = getelementptr inbounds %struct.isp1760_udc, ptr %udc, i32 0, i32 4
  %arrayidx.i.i = getelementptr %struct.isp1760_udc, ptr %udc, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %13, i32 noundef -1, i32 noundef %conv, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %14 = ptrtoint ptr %fields.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fields.i, align 4
  %call.i.i.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %15, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %lock = getelementptr inbounds %struct.isp1760_udc, ptr %udc, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %ep = getelementptr inbounds %struct.isp1760_udc, ptr %udc, i32 0, i32 9
  %16 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ep, align 4
  %arrayidx.i.i.i.i = getelementptr %struct.isp1760_udc, ptr %17, i32 0, i32 4, i32 25
  %18 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i.i8.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %19, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %arrayidx.i.i.i = getelementptr %struct.isp1760_udc, ptr %17, i32 0, i32 4, i32 24
  %20 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i.i.i55 = tail call i32 @regmap_field_update_bits_base(ptr noundef %21, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %arrayidx.i.i.i10.i = getelementptr %struct.isp1760_udc, ptr %17, i32 0, i32 4, i32 29
  %22 = ptrtoint ptr %arrayidx.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i.i10.i, align 4
  %call.i.i.i.i11.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %23, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %ep0_state.i = getelementptr inbounds %struct.isp1760_udc, ptr %17, i32 0, i32 10
  %24 = ptrtoint ptr %ep0_state.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %ep0_state.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %return

return:                                           ; preds = %if.end33, %if.then26, %do.body14, %if.then4, %do.body
  %retval.0 = phi i32 [ 0, %if.end33 ], [ -22, %if.then4 ], [ -22, %if.then26 ], [ -22, %do.body ], [ -22, %do.body14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp1760_udc_get_frame(ptr nocapture noundef readonly %gadget) #0 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #9
  %0 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i.i, align 4, !annotation !214
  %arrayidx.i.i = getelementptr i8, ptr %gadget, i32 -28
  %1 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = call i32 @regmap_field_read(ptr noundef %2, ptr noundef nonnull %val.i.i) #9
  %3 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #9
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp1760_udc_wakeup(ptr nocapture noundef readonly %gadget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_udc_wakeup.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_udc_wakeup, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !217

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %gadget, i32 -184
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_udc_wakeup.__UNIQUE_ID_ddebug275, ptr noundef %3, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.56) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 -524
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @isp1760_udc_set_selfpowered(ptr nocapture noundef %gadget, i32 noundef %is_selfpowered) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_selfpowered)
  %tobool.not = icmp ne i32 %is_selfpowered, 0
  %devstatus1 = getelementptr i8, ptr %gadget, i32 2352
  %0 = ptrtoint ptr %devstatus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %devstatus1, align 8
  %and = and i32 %1, -2
  %masksel = zext i1 %tobool.not to i32
  %and.sink = or i32 %and, %masksel
  store i32 %and.sink, ptr %devstatus1, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp1760_udc_pullup(ptr nocapture noundef %gadget, i32 noundef %is_on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %gadget, i32 -184
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %tobool = icmp ne i32 %is_on, 0
  tail call void @isp1760_set_pullup(ptr noundef %1, i1 noundef zeroext %tobool) #9
  %connected = getelementptr i8, ptr %gadget, i32 2348
  %frombool = zext i1 %tobool to i8
  %2 = ptrtoint ptr %connected to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %connected, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp1760_udc_start(ptr noundef %gadget, ptr noundef %driver) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %gadget, i32 -184
  %max_speed = getelementptr inbounds %struct.usb_gadget_driver, ptr %driver, i32 0, i32 1
  %0 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %do.end, label %do.body2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.58) #12
  br label %cleanup

do.body2:                                         ; preds = %entry
  %lock = getelementptr i8, ptr %gadget, i32 1048
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %driver10 = getelementptr i8, ptr %gadget, i32 -8
  %6 = ptrtoint ptr %driver10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver10, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end18, label %do.end14

do.end14:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.61) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #9
  br label %cleanup

if.end18:                                         ; preds = %do.body2
  %12 = ptrtoint ptr %driver10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %driver, ptr %driver10, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_udc_start.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_udc_start, %if.then27)) #9
          to label %do.end32 [label %if.then27], !srcloc !217

if.then27:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %17 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_udc_start.__UNIQUE_ID_ddebug276, ptr noundef %16, ptr noundef nonnull @.str.63, ptr noundef %18) #9
  br label %do.end32

do.end32:                                         ; preds = %if.then27, %if.end18
  %devstatus = getelementptr i8, ptr %gadget, i32 2352
  %19 = ptrtoint ptr %devstatus to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %devstatus, align 8
  %connected = getelementptr i8, ptr %gadget, i32 2348
  %20 = ptrtoint ptr %connected to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %connected, align 4
  tail call void @usb_gadget_set_state(ptr noundef %gadget, i32 noundef 1) #9
  %fields.i.i = getelementptr i8, ptr %gadget, i32 -168
  %arrayidx.i.i.i = getelementptr i8, ptr %gadget, i32 -152
  %21 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %22, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %is_isp1763.i = getelementptr i8, ptr %gadget, i32 2349
  %23 = ptrtoint ptr %is_isp1763.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %is_isp1763.i, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  %cond.i = select i1 %tobool.not.i, i32 528, i32 16
  %cond3.i = select i1 %tobool.not.i, i32 532, i32 20
  %regs.i = getelementptr i8, ptr %gadget, i32 -172
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 4
  %call.i.i = tail call i32 @regmap_write(ptr noundef %26, i32 noundef %cond.i, i32 noundef 84) #9
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 4
  %call.i12.i = tail call i32 @regmap_write(ptr noundef %28, i32 noundef %cond3.i, i32 noundef 67108281) #9
  %29 = ptrtoint ptr %connected to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %connected, align 4, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool5.not.i = icmp eq i8 %30, 0
  br i1 %tobool5.not.i, label %do.end32.isp1760_udc_init_hw.exit_crit_edge, label %if.then.i

do.end32.isp1760_udc_init_hw.exit_crit_edge:      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %isp1760_udc_init_hw.exit

if.then.i:                                        ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr.i, align 8
  tail call void @isp1760_set_pullup(ptr noundef %32, i1 noundef zeroext true) #9
  br label %isp1760_udc_init_hw.exit

isp1760_udc_init_hw.exit:                         ; preds = %if.then.i, %do.end32.isp1760_udc_init_hw.exit_crit_edge
  %33 = ptrtoint ptr %fields.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fields.i.i, align 4
  %call.i.i.i.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %34, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_udc_start.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_udc_start, %if.then46)) #9
          to label %cleanup [label %if.then46], !srcloc !217

if.then46:                                        ; preds = %isp1760_udc_init_hw.exit
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr.i, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  %39 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %driver, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_udc_start.__UNIQUE_ID_ddebug277, ptr noundef %38, ptr noundef nonnull @.str.64, ptr noundef %40) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %isp1760_udc_init_hw.exit, %do.end14, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -16, %do.end14 ], [ 0, %if.then46 ], [ 0, %isp1760_udc_init_hw.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp1760_udc_stop(ptr noundef %gadget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %is_isp1763 = getelementptr i8, ptr %gadget, i32 2349
  %0 = ptrtoint ptr %is_isp1763 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_isp1763, align 1, !range !213
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_udc_stop.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_udc_stop, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !217

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %gadget, i32 -184
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_udc_stop.__UNIQUE_ID_ddebug278, ptr noundef %5, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.65) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %cond = select i1 %tobool.not, i32 524, i32 12
  %vbus_timer = getelementptr i8, ptr %gadget, i32 1092
  %call5 = tail call i32 @del_timer_sync(ptr noundef %vbus_timer) #9
  %regs = getelementptr i8, ptr %gadget, i32 -172
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %cond, i32 noundef 0) #9
  %lock = getelementptr i8, ptr %gadget, i32 1048
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %driver = getelementptr i8, ptr %gadget, i32 -8
  %8 = ptrtoint ptr %driver to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %driver, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_set_maxpacket_limit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp1760_ep_enable(ptr nocapture noundef %ep, ptr noundef %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ep, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_ep_enable.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_ep_enable, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !217

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_ep_enable.__UNIQUE_ID_ddebug259, ptr noundef %7, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.70) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %bDescriptorType = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 1
  %8 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bDescriptorType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %9)
  %cmp.not = icmp eq i8 %9, 5
  br i1 %cmp.not, label %lor.lhs.false, label %do.end.do.body20_crit_edge

do.end.do.body20_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body20

lor.lhs.false:                                    ; preds = %do.end
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 2
  %10 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bEndpointAddress, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp8 = icmp eq i8 %11, 0
  br i1 %cmp8, label %lor.lhs.false.do.body20_crit_edge, label %lor.lhs.false10

lor.lhs.false.do.body20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body20

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %conv7 = zext i8 %11 to i32
  %addr = getelementptr i8, ptr %ep, i32 52
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv7)
  %cmp13.not = icmp eq i32 %13, %conv7
  br i1 %cmp13.not, label %lor.lhs.false15, label %lor.lhs.false10.do.body20_crit_edge

lor.lhs.false10.do.body20_crit_edge:              ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body20

lor.lhs.false15:                                  ; preds = %lor.lhs.false10
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 4
  %14 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %wMaxPacketSize, align 1
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %conv16 = zext i16 %16 to i32
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %17 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %17, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv16, i32 %bf.cast)
  %cmp17 = icmp ugt i32 %conv16, %bf.cast
  br i1 %cmp17, label %lor.lhs.false15.do.body20_crit_edge, label %if.end49

lor.lhs.false15.do.body20_crit_edge:              ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body20

do.body20:                                        ; preds = %lor.lhs.false15.do.body20_crit_edge, %lor.lhs.false10.do.body20_crit_edge, %lor.lhs.false.do.body20_crit_edge, %do.end.do.body20_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_ep_enable.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_ep_enable, %if.then32)) #9
          to label %cleanup [label %if.then32], !srcloc !217

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %22 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bDescriptorType, align 1
  %conv36 = zext i8 %23 to i32
  %bEndpointAddress37 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 2
  %24 = ptrtoint ptr %bEndpointAddress37 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bEndpointAddress37, align 1
  %conv38 = zext i8 %25 to i32
  %addr39 = getelementptr i8, ptr %ep, i32 52
  %26 = ptrtoint ptr %addr39 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr39, align 4
  %wMaxPacketSize40 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 4
  %28 = ptrtoint ptr %wMaxPacketSize40 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %wMaxPacketSize40, align 1
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  %conv41 = zext i16 %30 to i32
  %maxpacket42 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %31 = ptrtoint ptr %maxpacket42 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 7)
  %bf.load43 = load i56, ptr %maxpacket42, align 2
  %bf.lshr44 = lshr i56 %bf.load43, 40
  %bf.cast45 = trunc i56 %bf.lshr44 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_ep_enable.__UNIQUE_ID_ddebug260, ptr noundef %21, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.70, i32 noundef %conv36, i32 noundef %conv38, i32 noundef %27, i32 noundef %conv41, i32 noundef %bf.cast45) #9
  br label %cleanup

if.end49:                                         ; preds = %lor.lhs.false15
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 3
  %32 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bmAttributes.i, align 1
  %34 = and i8 %33, 3
  %and.i = zext i8 %34 to i32
  %call50.off = add nsw i32 %and.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call50.off)
  %switch = icmp ult i32 %call50.off, 3
  br i1 %switch, label %do.body73, label %do.body54

do.body54:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_ep_enable.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_ep_enable, %if.then66)) #9
          to label %cleanup [label %if.then66], !srcloc !217

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_ep_enable.__UNIQUE_ID_ddebug261, ptr noundef %38, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.70) #9
  br label %cleanup

do.body73:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 7
  %call78 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %desc83 = getelementptr i8, ptr %ep, i32 68
  %39 = ptrtoint ptr %desc83 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %desc, ptr %desc83, align 4
  %40 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %wMaxPacketSize, align 1
  %42 = tail call i16 @llvm.bswap.i16(i16 %41)
  %conv85 = zext i16 %42 to i32
  %maxpacket86 = getelementptr i8, ptr %ep, i32 56
  %43 = ptrtoint ptr %maxpacket86 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv85, ptr %maxpacket86, align 4
  %rx_pending = getelementptr i8, ptr %ep, i32 72
  %44 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %rx_pending, align 4
  %halted = getelementptr i8, ptr %ep, i32 73
  %45 = ptrtoint ptr %halted to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %halted, align 1
  %wedged = getelementptr i8, ptr %ep, i32 74
  %46 = ptrtoint ptr %wedged to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %wedged, align 2
  %47 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %addr, align 4
  %and.i.i = and i32 %48, 15
  %arrayidx.i.i.i.i = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 4, i32 24
  %49 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %50, i32 noundef -1, i32 noundef %and.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %arrayidx.i.i.i.i.i = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 4, i32 25
  %51 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i.i.i.i.i, align 4
  %and.i129 = shl i32 %48, 24
  %sext.i = ashr i32 %and.i129, 31
  %call.i.i.i.i5.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %52, i32 noundef -1, i32 noundef %sext.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %53 = ptrtoint ptr %maxpacket86 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %maxpacket86, align 4
  %arrayidx.i.i = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 4, i32 32
  %55 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %56, i32 noundef -1, i32 noundef %54, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %57 = ptrtoint ptr %maxpacket86 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %maxpacket86, align 4
  %arrayidx.i.i131 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 4, i32 31
  %59 = ptrtoint ptr %arrayidx.i.i131 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i.i131, align 4
  %call.i.i.i132 = tail call i32 @regmap_field_update_bits_base(ptr noundef %60, i32 noundef -1, i32 noundef %58, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %arrayidx.i.i134 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 4, i32 34
  %61 = ptrtoint ptr %arrayidx.i.i134 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i.i134, align 4
  %call.i.i.i135 = tail call i32 @regmap_field_update_bits_base(ptr noundef %62, i32 noundef -1, i32 noundef %and.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %arrayidx.i.i.i = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 4, i32 33
  %63 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %64, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call78) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body73, %if.then66, %do.body54, %if.then32, %do.body20
  %retval.0 = phi i32 [ 0, %do.body73 ], [ -22, %if.then32 ], [ -22, %if.then66 ], [ -22, %do.body20 ], [ -22, %do.body54 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp1760_ep_disable(ptr noundef %ep) #0 align 64 {
entry:
  %req_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ep, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req_list) #9
  %2 = getelementptr inbounds %struct.list_head, ptr %req_list, i32 0, i32 1
  %3 = ptrtoint ptr %req_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %req_list, ptr %req_list, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %req_list, ptr %2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_ep_disable.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_ep_disable, %if.then)) #9
          to label %do.body6 [label %if.then], !srcloc !217

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_ep_disable.__UNIQUE_ID_ddebug262, ptr noundef %8, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.73) #9
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 7
  %call9 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %desc = getelementptr i8, ptr %ep, i32 68
  %9 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %desc, align 4
  %tobool14.not = icmp eq ptr %10, null
  br i1 %tobool14.not, label %do.body16, label %if.end35

do.body16:                                        ; preds = %do.body6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_ep_disable.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_ep_disable, %if.then28)) #9
          to label %do.end33 [label %if.then28], !srcloc !217

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_ep_disable.__UNIQUE_ID_ddebug263, ptr noundef %14, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.73) #9
  br label %do.end33

do.end33:                                         ; preds = %if.then28, %do.body16
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #9
  br label %cleanup

if.end35:                                         ; preds = %do.body6
  %15 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %desc, align 4
  %maxpacket = getelementptr i8, ptr %ep, i32 56
  %16 = ptrtoint ptr %maxpacket to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %maxpacket, align 4
  %addr.i = getelementptr i8, ptr %ep, i32 52
  %17 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr.i, align 4
  %and.i.i = and i32 %18, 15
  %arrayidx.i.i.i.i = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 4, i32 24
  %19 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %20, i32 noundef -1, i32 noundef %and.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %arrayidx.i.i.i.i.i = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 4, i32 25
  %21 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.i.i.i.i, align 4
  %and.i = shl i32 %18, 24
  %sext.i = ashr i32 %and.i, 31
  %call.i.i.i.i5.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %22, i32 noundef -1, i32 noundef %sext.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %arrayidx.i.i.i = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 4, i32 33
  %23 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %24, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %arrayidx.i.i.i84 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 4, i32 34
  %25 = ptrtoint ptr %arrayidx.i.i.i84 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.i.i84, align 4
  %call.i.i.i.i85 = call i32 @regmap_field_update_bits_base(ptr noundef %26, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %queue = getelementptr i8, ptr %ep, i32 44
  %27 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not.i = icmp eq ptr %28, %queue
  br i1 %cmp.i.not.i, label %if.end35.list_splice_init.exit_crit_edge, label %if.then.i

if.end35.list_splice_init.exit_crit_edge:         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %req_list to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %req_list, align 4
  %prev2.i.i = getelementptr i8, ptr %ep, i32 48
  %31 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %33 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %req_list, ptr %prev3.i.i, align 4
  store ptr %28, ptr %req_list, align 4
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %30, ptr %32, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %35 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev6.i.i, align 4
  %36 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %queue, ptr %queue, align 4
  store ptr %queue, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %if.end35.list_splice_init.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #9
  %37 = ptrtoint ptr %req_list to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %req_list, align 4
  %cmp46.not89 = icmp eq ptr %38, %req_list
  br i1 %cmp46.not89, label %list_splice_init.exit.cleanup_crit_edge, label %list_splice_init.exit.for.body_crit_edge

list_splice_init.exit.for.body_crit_edge:         ; preds = %list_splice_init.exit
  br label %for.body

list_splice_init.exit.cleanup_crit_edge:          ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %isp1760_udc_request_complete.exit.for.body_crit_edge, %list_splice_init.exit.for.body_crit_edge
  %.pn.in90 = phi ptr [ %.pn, %isp1760_udc_request_complete.exit.for.body_crit_edge ], [ %38, %list_splice_init.exit.for.body_crit_edge ]
  %req.0 = getelementptr i8, ptr %.pn.in90, i32 -56
  %39 = ptrtoint ptr %.pn.in90 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn = load ptr, ptr %.pn.in90, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in90) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in90, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i, align 4
  %42 = ptrtoint ptr %.pn.in90 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %.pn.in90, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %46 = ptrtoint ptr %.pn.in90 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in90, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in90, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_udc_request_complete.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_ep_disable, %if.then.i86)) #9
          to label %isp1760_udc_request_complete.exit [label %if.then.i86], !srcloc !217

if.then.i86:                                      ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_udc_request_complete.__UNIQUE_ID_ddebug237, ptr noundef %55, ptr noundef nonnull @.str.32, ptr noundef %req.0, i32 noundef -108) #9
  br label %isp1760_udc_request_complete.exit

isp1760_udc_request_complete.exit:                ; preds = %if.then.i86, %list_del.exit
  %ep5.i = getelementptr i8, ptr %.pn.in90, i32 8
  %56 = ptrtoint ptr %ep5.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %ep5.i, align 4
  %status7.i = getelementptr i8, ptr %.pn.in90, i32 -8
  %57 = ptrtoint ptr %status7.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -108, ptr %status7.i, align 4
  %complete.i = getelementptr i8, ptr %.pn.in90, i32 -28
  %58 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %complete.i, align 4
  call void %59(ptr noundef %ep, ptr noundef %req.0) #9
  %lock.i = getelementptr inbounds %struct.isp1760_udc, ptr %49, i32 0, i32 7
  %call15.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call15.i) #9
  %cmp46.not = icmp eq ptr %.pn, %req_list
  br i1 %cmp46.not, label %isp1760_udc_request_complete.exit.cleanup_crit_edge, label %isp1760_udc_request_complete.exit.for.body_crit_edge

isp1760_udc_request_complete.exit.for.body_crit_edge: ; preds = %isp1760_udc_request_complete.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

isp1760_udc_request_complete.exit.cleanup_crit_edge: ; preds = %isp1760_udc_request_complete.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %isp1760_udc_request_complete.exit.cleanup_crit_edge, %list_splice_init.exit.cleanup_crit_edge, %do.end33
  %retval.0 = phi i32 [ -22, %do.end33 ], [ 0, %list_splice_init.exit.cleanup_crit_edge ], [ 0, %isp1760_udc_request_complete.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req_list) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @isp1760_ep_alloc_request(ptr nocapture noundef readnone %ep, i32 noundef %gfp_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i.i = and i32 %gfp_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !218

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %entry
  %and2.i.i.i = and i32 %gfp_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and6.i.i.i = and i32 %gfp_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %gfp_flags, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 72) #13
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isp1760_ep_free_request(ptr nocapture noundef readnone %ep, ptr noundef %_req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %_req) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp1760_ep_queue(ptr noundef %ep, ptr noundef %_req, i32 noundef %gfp_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ep, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %status = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 11
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -115, ptr %status, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 12
  %3 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %actual, align 4
  %lock = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 7
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_ep_queue.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_ep_queue, %if.then)) #9
          to label %do.end15 [label %if.then], !srcloc !217

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %length = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 1
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length, align 4
  %zero = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 6
  %10 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load = load i32, ptr %zero, align 4
  %11 = and i32 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool13.not = icmp eq i32 %11, 0
  %cond = select i1 %tobool13.not, ptr @.str.69, ptr @.str.77
  %addr = getelementptr i8, ptr %ep, i32 52
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_ep_queue.__UNIQUE_ID_ddebug264, ptr noundef %7, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.75, ptr noundef %_req, i32 noundef %9, ptr noundef nonnull %cond, ptr noundef %add.ptr.i, i32 noundef %13) #9
  br label %do.end15

do.end15:                                         ; preds = %if.then, %entry
  %ep16 = getelementptr inbounds %struct.isp1760_request, ptr %_req, i32 0, i32 2
  %14 = ptrtoint ptr %ep16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr.i, ptr %ep16, align 4
  %addr17 = getelementptr i8, ptr %ep, i32 52
  %15 = ptrtoint ptr %addr17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp18 = icmp eq i32 %16, 0
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %do.end15
  %length21 = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 1
  %17 = ptrtoint ptr %length21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length21, align 4
  %ep0_length = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 12
  %19 = ptrtoint ptr %ep0_length to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %ep0_length, align 2
  %conv22 = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv22)
  %cmp23.not = icmp eq i32 %18, %conv22
  br i1 %cmp23.not, label %if.then20.if.end47_crit_edge, label %land.lhs.true

if.then20.if.end47_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

land.lhs.true:                                    ; preds = %if.then20
  %ep0_state = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 10
  %21 = ptrtoint ptr %ep0_state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ep0_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp25.not = icmp eq i32 %22, 1
  br i1 %cmp25.not, label %land.lhs.true.if.end47_crit_edge, label %do.body28

land.lhs.true.if.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

do.body28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_ep_queue.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_ep_queue, %if.then40)) #9
          to label %if.end144.thread [label %if.then40], !srcloc !217

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  %27 = ptrtoint ptr %length21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %length21, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_ep_queue.__UNIQUE_ID_ddebug265, ptr noundef %26, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.75, i32 noundef %28, ptr noundef %_req) #9
  br label %if.end144.thread

if.end47:                                         ; preds = %land.lhs.true.if.end47_crit_edge, %if.then20.if.end47_crit_edge
  %ep0_state48 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 10
  %29 = ptrtoint ptr %ep0_state48 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ep0_state48, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %30, label %do.body72 [
    i32 1, label %do.body49
    i32 2, label %sw.bb68
    i32 3, label %if.end144.thread236
  ]

if.end144.thread236:                              ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #9
  br label %if.then147

do.body49:                                        ; preds = %if.end47
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_ep_queue.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_ep_queue, %if.then61)) #9
          to label %do.end66 [label %if.then61], !srcloc !217

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_ep_queue.__UNIQUE_ID_ddebug266, ptr noundef %35, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.75, ptr noundef %_req) #9
  br label %do.end66

do.end66:                                         ; preds = %if.then61, %do.body49
  %queue = getelementptr inbounds %struct.isp1760_request, ptr %_req, i32 0, i32 1
  %queue67 = getelementptr i8, ptr %ep, i32 44
  %prev.i = getelementptr i8, ptr %ep, i32 48
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue, ptr noundef %37, ptr noundef %queue67) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.end66.list_add_tail.exit_crit_edge

do.end66.list_add_tail.exit_crit_edge:            ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %queue, ptr %prev.i, align 4
  %39 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %queue67, ptr %queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.isp1760_request, ptr %_req, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev3.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %queue, ptr %37, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end66.list_add_tail.exit_crit_edge
  tail call fastcc void @isp1760_udc_transmit(ptr noundef %add.ptr.i, ptr noundef %_req)
  br label %if.end144.thread234

sw.bb68:                                          ; preds = %if.end47
  %queue69 = getelementptr inbounds %struct.isp1760_request, ptr %_req, i32 0, i32 1
  %queue70 = getelementptr i8, ptr %ep, i32 44
  %prev.i209 = getelementptr i8, ptr %ep, i32 48
  %42 = ptrtoint ptr %prev.i209 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i209, align 4
  %call.i.i210 = tail call zeroext i1 @__list_add_valid(ptr noundef %queue69, ptr noundef %43, ptr noundef %queue70) #9
  br i1 %call.i.i210, label %if.end.i.i212, label %sw.bb68.list_add_tail.exit213_crit_edge

sw.bb68.list_add_tail.exit213_crit_edge:          ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit213

if.end.i.i212:                                    ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %prev.i209 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %queue69, ptr %prev.i209, align 4
  %45 = ptrtoint ptr %queue69 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %queue70, ptr %queue69, align 4
  %prev3.i.i211 = getelementptr inbounds %struct.isp1760_request, ptr %_req, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %prev3.i.i211 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev3.i.i211, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %queue69, ptr %43, align 4
  br label %list_add_tail.exit213

list_add_tail.exit213:                            ; preds = %if.end.i.i212, %sw.bb68.list_add_tail.exit213_crit_edge
  %48 = ptrtoint ptr %addr17 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %addr17, align 4
  %and.i = and i32 %49, 15
  %arrayidx.i.i.i = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 4, i32 24
  %50 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %51, i32 noundef -1, i32 noundef %and.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %arrayidx.i.i.i.i = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 4, i32 25
  %52 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i.i5.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %53, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %arrayidx.i.i.i214 = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 4, i32 28
  %54 = ptrtoint ptr %arrayidx.i.i.i214 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i.i.i214, align 4
  %call.i.i.i.i215 = tail call i32 @regmap_field_update_bits_base(ptr noundef %55, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end144.thread234

do.body72:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_ep_queue.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_ep_queue, %if.then84)) #9
          to label %if.end144.thread [label %if.then84], !srcloc !217

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_ep_queue.__UNIQUE_ID_ddebug267, ptr noundef %59, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.75) #9
  br label %if.end144.thread

if.else:                                          ; preds = %do.end15
  %desc = getelementptr i8, ptr %ep, i32 68
  %60 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %desc, align 4
  %tobool90.not = icmp eq ptr %61, null
  br i1 %tobool90.not, label %do.body119, label %if.then91

if.then91:                                        ; preds = %if.else
  %queue92 = getelementptr i8, ptr %ep, i32 44
  %62 = ptrtoint ptr %queue92 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %queue92, align 4
  %cmp.i = icmp ne ptr %63, %queue92
  %queue96 = getelementptr inbounds %struct.isp1760_request, ptr %_req, i32 0, i32 1
  %prev.i216 = getelementptr i8, ptr %ep, i32 48
  %64 = ptrtoint ptr %prev.i216 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i216, align 4
  %call.i.i217 = tail call zeroext i1 @__list_add_valid(ptr noundef %queue96, ptr noundef %65, ptr noundef %queue92) #9
  br i1 %call.i.i217, label %if.end.i.i219, label %if.then91.list_add_tail.exit220_crit_edge

if.then91.list_add_tail.exit220_crit_edge:        ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit220

if.end.i.i219:                                    ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %prev.i216 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %queue96, ptr %prev.i216, align 4
  %67 = ptrtoint ptr %queue96 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %queue92, ptr %queue96, align 4
  %prev3.i.i218 = getelementptr inbounds %struct.isp1760_request, ptr %_req, i32 0, i32 1, i32 1
  %68 = ptrtoint ptr %prev3.i.i218 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev3.i.i218, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %queue96, ptr %65, align 4
  br label %list_add_tail.exit220

list_add_tail.exit220:                            ; preds = %if.end.i.i219, %if.then91.list_add_tail.exit220_crit_edge
  %70 = ptrtoint ptr %addr17 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %addr17, align 4
  %and = and i32 %71, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool99.not = icmp eq i32 %and, 0
  br i1 %tobool99.not, label %land.lhs.true110, label %land.lhs.true100

land.lhs.true100:                                 ; preds = %list_add_tail.exit220
  %halted = getelementptr i8, ptr %ep, i32 73
  %72 = ptrtoint ptr %halted to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %halted, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool101.not = icmp ne i8 %73, 0
  %brmerge = select i1 %tobool101.not, i1 true, i1 %cmp.i
  br i1 %brmerge, label %land.lhs.true100.if.end144.thread234_crit_edge, label %if.then105

land.lhs.true100.if.end144.thread234_crit_edge:   ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end144.thread234

if.then105:                                       ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @isp1760_udc_transmit(ptr noundef %add.ptr.i, ptr noundef %_req)
  br label %if.end144.thread234

land.lhs.true110:                                 ; preds = %list_add_tail.exit220
  %rx_pending = getelementptr i8, ptr %ep, i32 72
  %74 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %rx_pending, align 4, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool111.not = icmp eq i8 %75, 0
  br i1 %tobool111.not, label %land.lhs.true110.if.end144.thread234_crit_edge, label %if.end144

land.lhs.true110.if.end144.thread234_crit_edge:   ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end144.thread234

do.body119:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_ep_queue.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_ep_queue, %if.then131)) #9
          to label %if.end144.thread [label %if.then131], !srcloc !217

if.then131:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %1, align 8
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 8
  %80 = ptrtoint ptr %addr17 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %addr17, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_ep_queue.__UNIQUE_ID_ddebug268, ptr noundef %79, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.75, i32 noundef %81) #9
  br label %if.end144.thread

if.end144.thread:                                 ; preds = %if.then131, %do.body119, %if.then84, %do.body72, %if.then40, %do.body28
  %ret.0 = phi i32 [ -22, %if.then40 ], [ -22, %if.then84 ], [ -108, %if.then131 ], [ -22, %do.body28 ], [ -22, %do.body72 ], [ -108, %do.body119 ]
  %82 = ptrtoint ptr %ep16 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %ep16, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #9
  br label %if.end148

if.end144.thread234:                              ; preds = %land.lhs.true110.if.end144.thread234_crit_edge, %if.then105, %land.lhs.true100.if.end144.thread234_crit_edge, %list_add_tail.exit213, %list_add_tail.exit
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #9
  br label %if.end148

if.end144:                                        ; preds = %land.lhs.true110
  %call114 = tail call fastcc zeroext i1 @isp1760_udc_receive(ptr noundef %add.ptr.i, ptr noundef %_req)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #9
  br i1 %call114, label %if.end144.if.then147_crit_edge, label %if.end144.if.end148_crit_edge

if.end144.if.end148_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148

if.end144.if.then147_crit_edge:                   ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then147

if.then147:                                       ; preds = %if.end144.if.then147_crit_edge, %if.end144.thread236
  tail call fastcc void @isp1760_udc_request_complete(ptr noundef %add.ptr.i, ptr noundef %_req, i32 noundef 0)
  br label %if.end148

if.end148:                                        ; preds = %if.then147, %if.end144.if.end148_crit_edge, %if.end144.thread234, %if.end144.thread
  %ret.0229233 = phi i32 [ %ret.0, %if.end144.thread ], [ 0, %if.then147 ], [ 0, %if.end144.if.end148_crit_edge ], [ 0, %if.end144.thread234 ]
  ret i32 %ret.0229233
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp1760_ep_dequeue(ptr noundef %ep, ptr noundef %_req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ep, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_ep_dequeue.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_ep_dequeue, %if.then)) #9
          to label %do.body8 [label %if.then], !srcloc !217

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %addr = getelementptr i8, ptr %ep, i32 52
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_ep_dequeue.__UNIQUE_ID_ddebug269, ptr noundef %7, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.82, i32 noundef %9) #9
  br label %do.body8

do.body8:                                         ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 7
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %ep16 = getelementptr inbounds %struct.isp1760_request, ptr %_req, i32 0, i32 2
  %10 = ptrtoint ptr %ep16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ep16, align 4
  %cmp17.not = icmp eq ptr %11, %add.ptr.i
  br i1 %cmp17.not, label %if.else, label %if.end20.thread

if.end20.thread:                                  ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #9
  br label %cleanup

if.else:                                          ; preds = %do.body8
  %queue = getelementptr inbounds %struct.isp1760_request, ptr %_req, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.else.if.end20_crit_edge

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.isp1760_request, ptr %_req, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %queue, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end.i.i, %if.else.if.end20_crit_edge
  %18 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %queue, align 4
  %prev.i = getelementptr inbounds %struct.isp1760_request, ptr %_req, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #9
  %tobool22.not = icmp eq ptr %_req, null
  br i1 %tobool22.not, label %if.end20.cleanup_crit_edge, label %if.end24

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_udc_request_complete.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_ep_dequeue, %if.then.i)) #9
          to label %isp1760_udc_request_complete.exit [label %if.then.i], !srcloc !217

if.then.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_udc_request_complete.__UNIQUE_ID_ddebug237, ptr noundef %27, ptr noundef nonnull @.str.32, ptr noundef nonnull %_req, i32 noundef -104) #9
  br label %isp1760_udc_request_complete.exit

isp1760_udc_request_complete.exit:                ; preds = %if.then.i, %if.end24
  %28 = ptrtoint ptr %ep16 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %ep16, align 4
  %status7.i = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 11
  %29 = ptrtoint ptr %status7.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -104, ptr %status7.i, align 4
  %complete.i = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 7
  %30 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %complete.i, align 4
  tail call void %31(ptr noundef %ep, ptr noundef nonnull %_req) #9
  %lock.i = getelementptr inbounds %struct.isp1760_udc, ptr %21, i32 0, i32 7
  %call15.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call15.i) #9
  br label %cleanup

cleanup:                                          ; preds = %isp1760_udc_request_complete.exit, %if.end20.cleanup_crit_edge, %if.end20.thread
  %retval.0 = phi i32 [ 0, %isp1760_udc_request_complete.exit ], [ -22, %if.end20.cleanup_crit_edge ], [ -22, %if.end20.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp1760_ep_set_halt(ptr noundef %ep, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ep, i32 -4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_ep_set_halt.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_ep_set_halt, %if.then)) #9
          to label %do.body6 [label %if.then], !srcloc !217

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool4.not = icmp eq i32 %value, 0
  %cond = select i1 %tobool4.not, ptr @.str.51, ptr @.str.50
  %addr = getelementptr i8, ptr %ep, i32 52
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_ep_set_halt.__UNIQUE_ID_ddebug272, ptr noundef %5, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.83, ptr noundef nonnull %cond, i32 noundef %7) #9
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  %lock = getelementptr inbounds %struct.isp1760_udc, ptr %9, i32 0, i32 7
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool15 = icmp ne i32 %value, 0
  %call16 = tail call fastcc i32 @__isp1760_ep_set_halt(ptr noundef %add.ptr.i, i1 noundef zeroext %tobool15, i1 noundef zeroext false)
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 4
  %lock18 = getelementptr inbounds %struct.isp1760_udc, ptr %11, i32 0, i32 7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock18, i32 noundef %call10) #9
  ret i32 %call16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp1760_ep_set_wedge(ptr noundef %ep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ep, i32 -4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isp1760_ep_set_wedge.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isp1760_ep_set_wedge, %if.then)) #9
          to label %do.body5 [label %if.then], !srcloc !217

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %addr = getelementptr i8, ptr %ep, i32 52
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isp1760_ep_set_wedge.__UNIQUE_ID_ddebug273, ptr noundef %5, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.86, i32 noundef %7) #9
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  %lock = getelementptr inbounds %struct.isp1760_udc, ptr %9, i32 0, i32 7
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %call14 = tail call fastcc i32 @__isp1760_ep_set_halt(ptr noundef %add.ptr.i, i1 noundef zeroext true, i1 noundef zeroext true)
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 4
  %lock16 = getelementptr inbounds %struct.isp1760_udc, ptr %11, i32 0, i32 7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock16, i32 noundef %call9) #9
  ret i32 %call14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isp1760_ep_fifo_flush(ptr nocapture noundef readonly %ep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ep, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %lock = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 7
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %addr.i = getelementptr i8, ptr %ep, i32 52
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 4
  %and.i.i = and i32 %3, 15
  %arrayidx.i.i.i.i = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 4, i32 24
  %4 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %5, i32 noundef -1, i32 noundef %and.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %arrayidx.i.i.i.i.i = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 4, i32 25
  %6 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i.i.i.i, align 4
  %and.i = shl i32 %3, 24
  %sext.i = ashr i32 %and.i, 31
  %call.i.i.i.i5.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %7, i32 noundef -1, i32 noundef %sext.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %arrayidx.i.i.i = getelementptr %struct.isp1760_udc, ptr %1, i32 0, i32 4, i32 26
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %9, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i.i.i15 = tail call i32 @regmap_field_update_bits_base(ptr noundef %11, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__isp1760_ep_set_halt(ptr noundef %uep, i1 noundef zeroext %stall, i1 noundef zeroext %wedge) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %uep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uep, align 4
  %addr = getelementptr inbounds %struct.isp1760_ep, ptr %uep, i32 0, i32 3
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true

if.then:                                          ; preds = %entry
  %ep0_state = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %ep0_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ep0_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %not.stall = xor i1 %stall, true
  %spec.select = or i1 %not.stall, %wedge
  %or.cond = or i1 %spec.select, %cmp
  br i1 %or.cond, label %do.end, label %if.then.if.end75_crit_edge, !prof !219

if.then.if.end75_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1016, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %desc = getelementptr inbounds %struct.isp1760_ep, ptr %uep, i32 0, i32 6
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc, align 4
  %tobool31.not = icmp eq ptr %7, null
  br i1 %tobool31.not, label %do.body33, label %if.end48

do.body33:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__isp1760_ep_set_halt.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__isp1760_ep_set_halt, %if.then43)) #9
          to label %cleanup [label %if.then43], !srcloc !217

if.then43:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__isp1760_ep_set_halt.__UNIQUE_ID_ddebug270, ptr noundef %11, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.84, i32 noundef %13) #9
  br label %cleanup

if.end48:                                         ; preds = %land.lhs.true
  %and = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool50.not = icmp eq i32 %and, 0
  br i1 %tobool50.not, label %if.end48.if.end75_crit_edge, label %if.then51

if.end48.if.end75_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.then51:                                        ; preds = %if.end48
  %queue = getelementptr inbounds %struct.isp1760_ep, ptr %uep, i32 0, i32 2
  %14 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %15, %queue
  br i1 %cmp.i.not, label %if.then51.if.end75_crit_edge, label %do.body55

if.then51.if.end75_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

do.body55:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__isp1760_ep_set_halt.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__isp1760_ep_set_halt, %if.then67)) #9
          to label %cleanup [label %if.then67], !srcloc !217

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__isp1760_ep_set_halt.__UNIQUE_ID_ddebug271, ptr noundef %19, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.84, i32 noundef %21) #9
  br label %cleanup

if.end75:                                         ; preds = %if.then51.if.end75_crit_edge, %if.end48.if.end75_crit_edge, %if.then.if.end75_crit_edge
  %call77 = tail call fastcc i32 @__isp1760_udc_set_halt(ptr noundef %uep, i1 noundef zeroext %stall)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %if.end75.cleanup_crit_edge, label %if.end80

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end80:                                         ; preds = %if.end75
  %22 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool82.not = icmp eq i32 %23, 0
  br i1 %tobool82.not, label %if.then83, label %if.end85

if.then83:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  %ep0_state84 = getelementptr inbounds %struct.isp1760_udc, ptr %1, i32 0, i32 10
  %24 = ptrtoint ptr %ep0_state84 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %ep0_state84, align 4
  br label %cleanup

if.end85:                                         ; preds = %if.end80
  br i1 %wedge, label %if.then87, label %if.else

if.then87:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  %wedged = getelementptr inbounds %struct.isp1760_ep, ptr %uep, i32 0, i32 9
  %25 = ptrtoint ptr %wedged to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %wedged, align 2
  br label %cleanup

if.else:                                          ; preds = %if.end85
  br i1 %stall, label %if.else.cleanup_crit_edge, label %if.then89

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then89:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %wedged90 = getelementptr inbounds %struct.isp1760_ep, ptr %uep, i32 0, i32 9
  %26 = ptrtoint ptr %wedged90 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %wedged90, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then89, %if.else.cleanup_crit_edge, %if.then87, %if.then83, %if.end75.cleanup_crit_edge, %if.then67, %do.body55, %if.then43, %do.body33, %do.end
  %retval.0 = phi i32 [ 0, %if.then83 ], [ -22, %do.end ], [ -22, %if.then43 ], [ -11, %if.then67 ], [ %call77, %if.end75.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then89 ], [ 0, %if.then87 ], [ -22, %do.body33 ], [ -11, %do.body55 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !14, !15, !16, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !56, !58, !59, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !79, !80, !82, !83, !84, !86, !87, !89, !90, !91, !92, !94, !95, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !111, !112, !114, !115, !117, !118, !119, !121, !122, !124, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !139, !140, !142, !143, !145, !146, !148, !150, !152, !154, !156, !158, !159, !161, !162, !164, !165, !167, !168, !170, !171, !173, !174, !175, !176, !178, !179, !181, !182, !184, !185, !187, !188, !190, !191, !193, !194, !196, !197, !199, !200, !202, !203}
!llvm.module.flags = !{!204, !205, !206, !207, !208, !209, !210, !211}
!llvm.ident = !{!212}

!0 = !{ptr @isp1760_udc_register.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 1545, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @isp1760_udc_register.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 1546, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 1552, i32 39}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 1571, i32 21}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 1139, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @isp1760_udc_disconnect.__UNIQUE_ID_ddebug274, !11, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 1515, i32 3}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @isp1760_udc_init._entry, !17, !"_entry", i1 false, i1 false}
!22 = !{ptr @isp1760_udc_init._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 1523, i32 3}
!25 = !{ptr @isp1760_udc_init._entry.13, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @isp1760_udc_init._entry_ptr.15, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 1367, i32 3}
!29 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @isp1760_udc_irq.__UNIQUE_ID_ddebug279, !28, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 1375, i32 3}
!33 = !{ptr @isp1760_udc_irq.__UNIQUE_ID_ddebug280, !32, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 1384, i32 4}
!36 = !{ptr @isp1760_udc_irq.__UNIQUE_ID_ddebug281, !35, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 1389, i32 4}
!39 = !{ptr @isp1760_udc_irq.__UNIQUE_ID_ddebug282, !38, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 1395, i32 3}
!42 = !{ptr @isp1760_udc_irq.__UNIQUE_ID_ddebug283, !41, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 1401, i32 3}
!45 = !{ptr @isp1760_udc_irq.__UNIQUE_ID_ddebug284, !44, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 1406, i32 3}
!48 = !{ptr @isp1760_udc_irq.__UNIQUE_ID_ddebug285, !47, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 1417, i32 3}
!51 = !{ptr @isp1760_udc_irq.__UNIQUE_ID_ddebug286, !50, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 387, i32 3}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @isp1760_ep_tx_complete.__UNIQUE_ID_ddebug249, !53, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 405, i32 3}
!58 = !{ptr @isp1760_ep_tx_complete.__UNIQUE_ID_ddebug250, !57, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 418, i32 2}
!61 = !{ptr @isp1760_ep_tx_complete.__UNIQUE_ID_ddebug251, !60, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 310, i32 2}
!64 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @isp1760_udc_transmit.__UNIQUE_ID_ddebug245, !63, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 188, i32 2}
!68 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @isp1760_udc_request_complete.__UNIQUE_ID_ddebug237, !67, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 346, i32 3}
!72 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @isp1760_ep_rx_ready.__UNIQUE_ID_ddebug246, !71, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 353, i32 3}
!76 = !{ptr @isp1760_ep_rx_ready.__UNIQUE_ID_ddebug247, !75, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 361, i32 3}
!79 = !{ptr @isp1760_ep_rx_ready.__UNIQUE_ID_ddebug248, !78, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 245, i32 2}
!82 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @isp1760_udc_receive.__UNIQUE_ID_ddebug239, !81, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 281, i32 2}
!86 = !{ptr @isp1760_udc_receive.__UNIQUE_ID_ddebug242, !85, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 725, i32 3}
!89 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @isp1760_ep0_setup._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @isp1760_ep0_setup._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 737, i32 3}
!94 = !{ptr @isp1760_ep0_setup.__UNIQUE_ID_ddebug257, !93, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 754, i32 2}
!97 = !{ptr @isp1760_ep0_setup.__UNIQUE_ID_ddebug258, !96, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!98 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 213, i32 2}
!100 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @isp1760_udc_ctrl_send_stall.__UNIQUE_ID_ddebug238, !99, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 554, i32 2}
!104 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @isp1760_udc_get_status.__UNIQUE_ID_ddebug254, !103, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 460, i32 2}
!108 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @__isp1760_udc_set_halt.__UNIQUE_ID_ddebug252, !107, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!110 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 464, i32 3}
!114 = !{ptr @__isp1760_udc_set_halt.__UNIQUE_ID_ddebug253, !113, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!115 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 562, i32 3}
!117 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @isp1760_udc_set_address.__UNIQUE_ID_ddebug255, !116, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!119 = !{ptr @.str.55, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 568, i32 3}
!121 = !{ptr @isp1760_udc_set_address.__UNIQUE_ID_ddebug256, !120, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!122 = !{ptr @isp1760_udc_ops, !123, !"isp1760_udc_ops", i1 false, i1 false}
!123 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 1328, i32 36}
!124 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 1239, i32 2}
!126 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @isp1760_udc_wakeup.__UNIQUE_ID_ddebug275, !125, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!128 = !{ptr @.str.58, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 1274, i32 3}
!130 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @isp1760_udc_start._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @isp1760_udc_start._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.61, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 1281, i32 3}
!135 = !{ptr @isp1760_udc_start._entry.60, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @isp1760_udc_start._entry_ptr.62, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.63, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 1290, i32 2}
!139 = !{ptr @isp1760_udc_start.__UNIQUE_ID_ddebug276, !138, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 1303, i32 2}
!142 = !{ptr @isp1760_udc_start.__UNIQUE_ID_ddebug277, !141, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!143 = !{ptr @.str.65, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 1315, i32 2}
!145 = !{ptr @isp1760_udc_stop.__UNIQUE_ID_ddebug278, !144, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!146 = !{ptr @.str.66, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 1463, i32 21}
!148 = !{ptr @.str.67, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 1464, i32 22}
!150 = !{ptr @.str.68, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 1464, i32 29}
!152 = !{ptr @.str.69, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 1464, i32 38}
!154 = !{ptr @isp1760_ep_ops, !155, !"isp1760_ep_ops", i1 false, i1 false}
!155 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 1110, i32 32}
!156 = !{ptr @.str.70, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 781, i32 2}
!158 = !{ptr @isp1760_ep_enable.__UNIQUE_ID_ddebug259, !157, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!159 = !{ptr @.str.71, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 791, i32 3}
!161 = !{ptr @isp1760_ep_enable.__UNIQUE_ID_ddebug260, !160, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!162 = !{ptr @.str.72, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 811, i32 3}
!164 = !{ptr @isp1760_ep_enable.__UNIQUE_ID_ddebug261, !163, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!165 = !{ptr @.str.73, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 845, i32 2}
!167 = !{ptr @isp1760_ep_disable.__UNIQUE_ID_ddebug262, !166, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!168 = !{ptr @.str.74, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 850, i32 3}
!170 = !{ptr @isp1760_ep_disable.__UNIQUE_ID_ddebug263, !169, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!171 = !{ptr @.str.75, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 910, i32 2}
!173 = !{ptr @.str.76, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @isp1760_ep_queue.__UNIQUE_ID_ddebug264, !172, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!175 = !{ptr @.str.77, !172, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.78, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 919, i32 4}
!178 = !{ptr @isp1760_ep_queue.__UNIQUE_ID_ddebug265, !177, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!179 = !{ptr @.str.79, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 928, i32 4}
!181 = !{ptr @isp1760_ep_queue.__UNIQUE_ID_ddebug266, !180, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!182 = !{ptr @.str.80, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 946, i32 4}
!184 = !{ptr @isp1760_ep_queue.__UNIQUE_ID_ddebug267, !183, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!185 = !{ptr @.str.81, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 960, i32 3}
!187 = !{ptr @isp1760_ep_queue.__UNIQUE_ID_ddebug268, !186, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!188 = !{ptr @.str.82, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 985, i32 2}
!190 = !{ptr @isp1760_ep_dequeue.__UNIQUE_ID_ddebug269, !189, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!191 = !{ptr @.str.83, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 1064, i32 2}
!193 = !{ptr @isp1760_ep_set_halt.__UNIQUE_ID_ddebug272, !192, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!194 = !{ptr @.str.84, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 1022, i32 3}
!196 = !{ptr @__isp1760_ep_set_halt.__UNIQUE_ID_ddebug270, !195, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!197 = !{ptr @.str.85, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 1030, i32 4}
!199 = !{ptr @__isp1760_ep_set_halt.__UNIQUE_ID_ddebug271, !198, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!200 = !{ptr @.str.86, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/usb/isp1760/isp1760-udc.c", i32 1080, i32 2}
!202 = !{ptr @.str.87, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @isp1760_ep_set_wedge.__UNIQUE_ID_ddebug273, !201, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!204 = !{i32 1, !"wchar_size", i32 2}
!205 = !{i32 1, !"min_enum_size", i32 4}
!206 = !{i32 8, !"branch-target-enforcement", i32 0}
!207 = !{i32 8, !"sign-return-address", i32 0}
!208 = !{i32 8, !"sign-return-address-all", i32 0}
!209 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!210 = !{i32 7, !"uwtable", i32 1}
!211 = !{i32 7, !"frame-pointer", i32 2}
!212 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!213 = !{i8 0, i8 2}
!214 = !{!"auto-init"}
!215 = distinct !{!215, !216}
!216 = !{!"llvm.loop.peeled.count", i32 1}
!217 = !{i64 2148754489, i64 2148754494, i64 2148754507, i64 2148754551, i64 2148754585, i64 2148754606}
!218 = !{!"branch_weights", i32 2000, i32 1}
!219 = !{!"branch_weights", i32 2002, i32 2000}
