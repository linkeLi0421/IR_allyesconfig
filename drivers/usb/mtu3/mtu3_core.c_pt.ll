; ModuleID = '/llk/IR_all_yes/drivers/usb/mtu3/mtu3_core.c_pt.bc'
source_filename = "../drivers/usb/mtu3/mtu3_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.mtu3_ep = type { %struct.usb_ep, [12 x i8], ptr, i8, i8, i8, i16, i32, i32, i32, i32, ptr, %struct.list_head, %struct.mtu3_gpd_ring, ptr, ptr, i32 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.mtu3_gpd_ring = type { i32, ptr, ptr, ptr, ptr }
%struct.mtu3 = type { %struct.spinlock, ptr, ptr, ptr, ptr, i32, %struct.mtu3_fifo_info, %struct.mtu3_fifo_info, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, %struct.usb_gadget, ptr, %struct.mtu3_request, [6 x i8], i32, i32, i16, i8, i8, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mtu3_fifo_info = type { i32, i32, [4 x i32] }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.mtu3_request = type { %struct.usb_request, %struct.list_head, ptr, ptr, ptr, i32 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.ssusb_mtk = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, [4 x %struct.clk_bulk_data], %struct.otg_switch_mtk, i32, i8, i32, i32, i32, i32, ptr, i8, ptr, i32, i32 }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.otg_switch_mtk = type { ptr, ptr, %struct.notifier_block, %struct.work_struct, i32, i32, ptr, i8, i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@mtu3_ep_stall_set.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 84, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mtu3\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtu3_ep_stall_set\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/usb/mtu3/mtu3_core.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %s\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SEND STALL\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CLEAR STALL, with EP RESET\00", [37 x i8] zeroinitializer }, align 32
@mtu3_dev_on_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 350, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gadget (%s) pullup D%s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mtu3_dev_on_off\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtu3_dev_on_off._entry_ptr = internal global ptr @mtu3_dev_on_off._entry, section ".printk_index", align 4
@.str.10 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"+\00", [30 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"-\00", [30 x i8] zeroinitializer }, align 32
@mtu3_start.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 89, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mtu3_start\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s devctl 0x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@mtu3_stop.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 93, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mtu3_stop\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@mtu3_config_ep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 416, ptr @.str.18, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"alloc ep fifo failed(%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtu3_config_ep\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mtu3_config_ep._entry_ptr = internal global ptr @mtu3_config_ep._entry, section ".printk_index", align 4
@mtu3_config_ep.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.19, i8 0, i8 105, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s fifosz: %x(%x/%x)\0A\00", [42 x i8] zeroinitializer }, align 32
@mtu3_config_ep.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.20, i8 0, i8 114, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"U3D_TX%d CSR0:%#x, CSR1:%#x, CSR2:%#x\0A\00", [57 x i8] zeroinitializer }, align 32
@mtu3_config_ep.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.21, i8 0, i8 123, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"U3D_RX%d CSR0:%#x, CSR1:%#x, CSR2:%#x\0A\00", [57 x i8] zeroinitializer }, align 32
@mtu3_config_ep.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.22, i8 0, i8 124, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"csr0:%#x, csr1:%#x, csr2:%#x\0A\00", [34 x i8] zeroinitializer }, align 32
@mtu3_config_ep.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.23, i8 0, i8 125, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: %s, fifo-addr:%#x, fifo-size:%#x(%#x/%#x)\0A\00", [49 x i8] zeroinitializer }, align 32
@mtu3_deconfig_ep.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.3, i8 0, i8 -125, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mtu3_deconfig_ep\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"device\00", [25 x i8] zeroinitializer }, align 32
@ssusb_gadget_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 937, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"irq %d\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ssusb_gadget_init\00", [46 x i8] zeroinitializer }, align 32
@ssusb_gadget_init._entry_ptr = internal global ptr @ssusb_gadget_init._entry, section ".printk_index", align 4
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mac\00", [28 x i8] zeroinitializer }, align 32
@ssusb_gadget_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.27, ptr @.str.2, i32 941, ptr @.str.18, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"error mapping memory for dev mac\0A\00", [62 x i8] zeroinitializer }, align 32
@ssusb_gadget_init._entry_ptr.31 = internal global ptr @ssusb_gadget_init._entry.29, section ".printk_index", align 4
@ssusb_gadget_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&mtu->lock\00", [21 x i8] zeroinitializer }, align 32
@ssusb_gadget_init.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.33, i8 0, i8 -18, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mac_base=0x%p, ippc_base=0x%p\0A\00", [33 x i8] zeroinitializer }, align 32
@ssusb_gadget_init._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.27, ptr @.str.2, i32 958, ptr @.str.18, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mtu3 hw init failed:%d\0A\00", [40 x i8] zeroinitializer }, align 32
@ssusb_gadget_init._entry_ptr.36 = internal global ptr @ssusb_gadget_init._entry.34, section ".printk_index", align 4
@ssusb_gadget_init._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.27, ptr @.str.2, i32 964, ptr @.str.18, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mtu3 set dma_mask failed:%d\0A\00", [35 x i8] zeroinitializer }, align 32
@ssusb_gadget_init._entry_ptr.39 = internal global ptr @ssusb_gadget_init._entry.37, section ".printk_index", align 4
@ssusb_gadget_init._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.27, ptr @.str.2, i32 970, ptr @.str.18, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"request irq %d failed!\0A\00", [40 x i8] zeroinitializer }, align 32
@ssusb_gadget_init._entry_ptr.42 = internal global ptr @ssusb_gadget_init._entry.40, section ".printk_index", align 4
@ssusb_gadget_init._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.27, ptr @.str.2, i32 981, ptr @.str.18, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mtu3 gadget init failed:%d\0A\00", [36 x i8] zeroinitializer }, align 32
@ssusb_gadget_init._entry_ptr.45 = internal global ptr @ssusb_gadget_init._entry.43, section ".printk_index", align 4
@ssusb_gadget_init.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.46, i8 0, i8 -10, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" %s() done...\0A\00", [17 x i8] zeroinitializer }, align 32
@ssusb_gadget_init._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.27, ptr @.str.2, i32 998, ptr @.str.18, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" %s() fail...\0A\00", [17 x i8] zeroinitializer }, align 32
@ssusb_gadget_init._entry_ptr.49 = internal global ptr @ssusb_gadget_init._entry.47, section ".printk_index", align 4
@mtu3_ss_func_set.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 0, i8 19, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mtu3_ss_func_set\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"USB3_EN = %d\0A\00", [18 x i8] zeroinitializer }, align 32
@mtu3_hs_softconn_set.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.53, i8 0, i8 23, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mtu3_hs_softconn_set\00", [43 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SOFTCONN = %d\0A\00", [17 x i8] zeroinitializer }, align 32
@mtu3_set_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 263, ptr @.str.18, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"invalid speed: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtu3_set_speed\00", [17 x i8] zeroinitializer }, align 32
@mtu3_set_speed._entry_ptr = internal global ptr @mtu3_set_speed._entry, section ".printk_index", align 4
@mtu3_set_speed.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.56, i8 0, i8 67, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"set speed: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@ep_fifo_alloc.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.58, i8 0, i8 11, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ep_fifo_alloc\00", [18 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s fifo:%#x/%#x, start_bit: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ep_fifo_free.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.60, i8 0, i8 16, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ep_fifo_free\00", [19 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s size:%#x/%#x, start_bit: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@mtu3_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 863, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IP version 0x%x(%s IP)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mtu3_hw_init\00", [19 x i8] zeroinitializer }, align 32
@mtu3_hw_init._entry_ptr = internal global ptr @mtu3_hw_init._entry, section ".printk_index", align 4
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"U3\00", [29 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"U2\00", [29 x i8] zeroinitializer }, align 32
@mtu3_hw_init._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.62, ptr @.str.2, i32 871, ptr @.str.18, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"device enable failed %d\0A\00", [39 x i8] zeroinitializer }, align 32
@mtu3_hw_init._entry_ptr.67 = internal global ptr @mtu3_hw_init._entry.65, section ".printk_index", align 4
@mtu3_check_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 833, ptr @.str.18, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid max_speed: %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtu3_check_params\00", [46 x i8] zeroinitializer }, align 32
@mtu3_check_params._entry_ptr = internal global ptr @mtu3_check_params._entry, section ".printk_index", align 4
@mtu3_check_params._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.2, i32 847, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max_speed: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@mtu3_check_params._entry_ptr.72 = internal global ptr @mtu3_check_params._entry.70, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mtu3_mem_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 612, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"fifosz/epnum: Tx=%#x/%d, Rx=%#x/%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtu3_mem_alloc\00", [17 x i8] zeroinitializer }, align 32
@mtu3_mem_alloc._entry_ptr = internal global ptr @mtu3_mem_alloc._entry, section ".printk_index", align 4
@get_ep_fifo_config.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.76, i8 0, i8 -112, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"get_ep_fifo_config\00", [45 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s, TX: base-%d, limit-%d; RX: base-%d, limit-%d\0A\00", [46 x i8] zeroinitializer }, align 32
@mtu3_set_dma_mask._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 911, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dma mask: %s bits\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtu3_set_dma_mask\00", [46 x i8] zeroinitializer }, align 32
@mtu3_set_dma_mask._entry_ptr = internal global ptr @mtu3_set_dma_mask._entry, section ".printk_index", align 4
@.str.79 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"36\00", [29 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"32\00", [29 x i8] zeroinitializer }, align 32
@mtu3_link_isr.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.2, ptr @.str.82, i8 0, i8 -86, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtu3_link_isr\00", [18 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"=== LINK[%x] ===\0A\00", [46 x i8] zeroinitializer }, align 32
@mtu3_link_isr.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.2, ptr @.str.3, i8 0, i8 -77, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"link speed %s\00", [18 x i8] zeroinitializer }, align 32
@mtu3_ep0_setup.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.2, ptr @.str.85, i8 0, i8 -110, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtu3_ep0_setup\00", [17 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s maxpacket: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@mtu3_u2_common_isr.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.86, ptr @.str.2, ptr @.str.87, i8 0, i8 -63, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mtu3_u2_common_isr\00", [45 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"=== U2COMM[%x] ===\0A\00", [44 x i8] zeroinitializer }, align 32
@__tracepoint_mtu3_u2_common_isr = external dso_local global %struct.tracepoint, align 4
@.str.88 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/usb/mtu3/mtu3_trace.h\00", [34 x i8] zeroinitializer }, align 32
@trace_mtu3_u2_common_isr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.89 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.90 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@mtu3_u3_ltssm_isr.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.91, ptr @.str.2, ptr @.str.92, i8 0, i8 -70, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtu3_u3_ltssm_isr\00", [46 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"=== LTSSM[%x] ===\0A\00", [45 x i8] zeroinitializer }, align 32
@__tracepoint_mtu3_u3_ltssm_isr = external dso_local global %struct.tracepoint, align 4
@trace_mtu3_u3_ltssm_isr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.95 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.96 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 3, i64 4, i64 5]
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 338, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 349, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 357, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 374, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 416, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 420, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 455, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 491, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 497, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 498, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 526, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 927, i32 52 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 937, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 939, i32 62 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 941, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 945, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 953, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 958, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 964, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 970, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 981, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 987, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 998, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 79, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 92, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 262, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 268, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 45, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 66, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 862, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 871, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 832, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 846, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 610, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 575, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 911, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 680, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 717, i32 27 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 585, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 775, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant [33 x i8] c"../drivers/usb/mtu3/mtu3_trace.h\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 56, i32 1 }
@___asan_gen_.371 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 108, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.377 = private constant [32 x i8] c"../drivers/usb/mtu3/mtu3_core.c\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 744, i32 2 }
@llvm.compiler.used = appending global [110 x ptr] [ptr @mtu3_check_params._entry, ptr @mtu3_check_params._entry.70, ptr @mtu3_check_params._entry_ptr, ptr @mtu3_check_params._entry_ptr.72, ptr @mtu3_config_ep._entry, ptr @mtu3_config_ep._entry_ptr, ptr @mtu3_dev_on_off._entry, ptr @mtu3_dev_on_off._entry_ptr, ptr @mtu3_hw_init._entry, ptr @mtu3_hw_init._entry.65, ptr @mtu3_hw_init._entry_ptr, ptr @mtu3_hw_init._entry_ptr.67, ptr @mtu3_mem_alloc._entry, ptr @mtu3_mem_alloc._entry_ptr, ptr @mtu3_set_dma_mask._entry, ptr @mtu3_set_dma_mask._entry_ptr, ptr @mtu3_set_speed._entry, ptr @mtu3_set_speed._entry_ptr, ptr @ssusb_gadget_init._entry, ptr @ssusb_gadget_init._entry.29, ptr @ssusb_gadget_init._entry.34, ptr @ssusb_gadget_init._entry.37, ptr @ssusb_gadget_init._entry.40, ptr @ssusb_gadget_init._entry.43, ptr @ssusb_gadget_init._entry.47, ptr @ssusb_gadget_init._entry_ptr, ptr @ssusb_gadget_init._entry_ptr.31, ptr @ssusb_gadget_init._entry_ptr.36, ptr @ssusb_gadget_init._entry_ptr.39, ptr @ssusb_gadget_init._entry_ptr.42, ptr @ssusb_gadget_init._entry_ptr.45, ptr @ssusb_gadget_init._entry_ptr.49, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @ssusb_gadget_init.__key, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92], section "llvm.metadata"
@0 = internal global [94 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu3_dev_on_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu3_config_ep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssusb_gadget_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssusb_gadget_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssusb_gadget_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssusb_gadget_init._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssusb_gadget_init._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssusb_gadget_init._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssusb_gadget_init._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssusb_gadget_init._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu3_set_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu3_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu3_hw_init._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu3_check_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu3_check_params._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu3_mem_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu3_set_dma_mask._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtu3_ep_stall_set(ptr noundef %mep, i1 noundef zeroext %set) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mtu1 = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 2
  %0 = ptrtoint ptr %mtu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtu1, align 4
  %mac_base = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac_base, align 4
  %epnum2 = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 3
  %4 = ptrtoint ptr %epnum2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %epnum2, align 4
  %is_in = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 5
  %6 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_in, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %conv12 = zext i8 %5 to i32
  %sub13 = shl nuw nsw i32 %conv12, 4
  br i1 %tobool.not, label %if.else11, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add = add nuw nsw i32 %sub13, 256
  %add.ptr.i = getelementptr i8, ptr %3, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  %9 = and i32 %8, -24577
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %csr.0.v = select i1 %set, i32 2097152, i32 4194304
  %csr.0 = or i32 %10, %csr.0.v
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  %11 = tail call i32 @llvm.bswap.i32(i32 %csr.0) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #8, !srcloc !195
  br label %if.end29

if.else11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add15 = add nuw nsw i32 %sub13, 512
  %add.ptr.i69 = getelementptr i8, ptr %3, i32 %add15
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i69) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  %13 = and i32 %12, -24833
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %csr.1.v = select i1 %set, i32 2097152, i32 4194304
  %csr.1 = or i32 %14, %csr.1.v
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  %15 = tail call i32 @llvm.bswap.i32(i32 %csr.1) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 %15) #8, !srcloc !195
  br label %if.end29

if.end29:                                         ; preds = %if.else11, %if.then
  br i1 %set, label %if.else33, label %if.then31

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %mtu1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mtu1, align 4
  %18 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %is_in, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  %cond.i = select i1 %tobool.not.i, i32 1, i32 65536
  %20 = ptrtoint ptr %epnum2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %epnum2, align 4
  %conv2.i = zext i8 %21 to i32
  %shl.i = shl i32 %cond.i, %conv2.i
  %mac_base.i = getelementptr inbounds %struct.mtu3, ptr %17, i32 0, i32 3
  %22 = ptrtoint ptr %mac_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mac_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 2052
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !192
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  tail call void @arm_heavy_mb() #8
  %or.i.i = or i32 %25, %shl.i
  %26 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %26) #8, !srcloc !195
  %27 = ptrtoint ptr %mac_base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mac_base.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %28, i32 2052
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i) #8, !srcloc !192
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %neg.i.i = xor i32 %shl.i, -1
  %and.i.i = and i32 %30, %neg.i.i
  %31 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %31) #8, !srcloc !195
  %flags = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 16
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags, align 4
  %and32 = and i32 %33, -3
  store i32 %and32, ptr %flags, align 4
  br label %do.body

if.else33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %flags34 = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 16
  %34 = ptrtoint ptr %flags34 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags34, align 4
  %or35 = or i32 %35, 2
  store i32 %or35, ptr %flags34, align 4
  br label %do.body

do.body:                                          ; preds = %if.else33, %if.then31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_ep_stall_set.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_ep_stall_set, %do.end)) #8
          to label %if.then43 [label %do.end], !srcloc !200

if.then43:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 2
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 1
  %cond = select i1 %set, ptr @.str.4, ptr @.str.5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_ep_stall_set.__UNIQUE_ID_ddebug334, ptr noundef %37, ptr noundef nonnull @.str.3, ptr noundef %name, ptr noundef nonnull %cond) #8
  br label %do.end

do.end:                                           ; preds = %if.then43, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtu3_dev_on_off(ptr nocapture noundef readonly %mtu, i32 noundef %is_on) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %is_u3_ip = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 23
  %0 = ptrtoint ptr %is_u3_ip to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %is_u3_ip, align 4
  %1 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %speed = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 22
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ugt i32 %3, 4
  br i1 %cmp, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %tobool1 = icmp ne i32 %is_on, 0
  %mac_base.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 3
  %4 = ptrtoint ptr %mac_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 5148
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool1, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %7 = or i32 %6, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %7) #8, !srcloc !195
  br label %do.body.i

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %8 = and i32 %6, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %8) #8, !srcloc !195
  br label %do.body.i

do.body.i:                                        ; preds = %if.else.i, %if.then.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_ss_func_set.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_dev_on_off, %do.end)) #8
          to label %if.then7.i [label %do.end], !srcloc !200

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 8
  %lnot.ext12.i = zext i1 %tobool1 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_ss_func_set.__UNIQUE_ID_ddebug331, ptr noundef %10, ptr noundef nonnull @.str.51, i32 noundef %lnot.ext12.i) #8
  br label %do.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %tobool2 = icmp ne i32 %is_on, 0
  %mac_base.i12 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 3
  %11 = ptrtoint ptr %mac_base.i12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mac_base.i12, align 4
  %add.ptr.i.i13 = getelementptr i8, ptr %12, i32 9220
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i13) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool2, label %if.then.i14, label %if.else.i15

if.then.i14:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %14 = or i32 %13, 1090519040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i13, i32 %14) #8, !srcloc !195
  br label %do.body.i16

if.else.i15:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %15 = and i32 %13, -1090519041
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i13, i32 %15) #8, !srcloc !195
  br label %do.body.i16

do.body.i16:                                      ; preds = %if.else.i15, %if.then.i14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_hs_softconn_set.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_dev_on_off, %do.end)) #8
          to label %if.then7.i19 [label %do.end], !srcloc !200

if.then7.i19:                                     ; preds = %do.body.i16
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i17 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %16 = ptrtoint ptr %dev.i17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i17, align 8
  %lnot.ext12.i18 = zext i1 %tobool2 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_hs_softconn_set.__UNIQUE_ID_ddebug332, ptr noundef %17, ptr noundef nonnull @.str.53, i32 noundef %lnot.ext12.i18) #8
  br label %do.end

do.end:                                           ; preds = %if.then7.i19, %do.body.i16, %if.then7.i, %do.body.i
  %dev = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  %speed3 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 22
  %20 = ptrtoint ptr %speed3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %speed3, align 8
  %call = tail call ptr @usb_speed_string(i32 noundef %21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %tobool4.not = icmp eq i32 %is_on, 0
  %cond = select i1 %tobool4.not, ptr @.str.11, ptr @.str.10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.6, ptr noundef %call, ptr noundef nonnull %cond) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_speed_string(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtu3_start(ptr nocapture noundef %mtu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_base = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 3
  %0 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_base, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_start.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_start, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !200

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 9228
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !192
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_start.__UNIQUE_ID_ddebug335, ptr noundef %3, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, i32 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @mtu3_dev_power_on(ptr noundef %mtu)
  tail call fastcc void @mtu3_csr_init(ptr noundef %mtu)
  %speed = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 22
  %6 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed, align 8
  tail call fastcc void @mtu3_set_speed(ptr noundef %mtu, i32 noundef %7)
  tail call fastcc void @mtu3_intr_enable(ptr noundef %mtu)
  %is_active = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 23
  %8 = ptrtoint ptr %is_active to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load = load i16, ptr %is_active, align 4
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %is_active, align 4
  %9 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool7.not = icmp eq i16 %9, 0
  br i1 %tobool7.not, label %do.end.if.end9_crit_edge, label %if.then8

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mtu3_dev_on_off(ptr noundef %mtu, i32 noundef 1)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %do.end.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtu3_dev_power_on(ptr nocapture noundef readonly %mtu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ippc_base = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 4
  %0 = ptrtoint ptr %ippc_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ippc_base, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %3 = and i32 %2, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #8, !srcloc !195
  %is_u3_ip = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 23
  %4 = ptrtoint ptr %is_u3_ip to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %is_u3_ip, align 4
  %5 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i4 = getelementptr i8, ptr %1, i32 48
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %7 = and i32 %6, -33554433
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %7) #8, !srcloc !195
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr.i6 = getelementptr i8, ptr %1, i32 80
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %9 = and i32 %8, -33554433
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 %9) #8, !srcloc !195
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtu3_csr_init(ptr nocapture noundef readonly %mtu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_base = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 3
  %0 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_base, align 4
  %is_u3_ip = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 23
  %2 = ptrtoint ptr %is_u3_ip to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %is_u3_ip, align 4
  %3 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %1, i32 5648
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %5 = and i32 %4, -50331649
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #8, !srcloc !195
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  tail call void @arm_heavy_mb() #8
  %7 = or i32 %6, 196608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #8, !srcloc !195
  %add.ptr.i9 = getelementptr i8, ptr %1, i32 5136
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %9 = and i32 %8, -67108865
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %9) #8, !srcloc !195
  %add.ptr.i11 = getelementptr i8, ptr %1, i32 9236
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  tail call void @arm_heavy_mb() #8
  %11 = or i32 %10, 262144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %11) #8, !srcloc !195
  %add.ptr.i13 = getelementptr i8, ptr %1, i32 5488
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  tail call void @arm_heavy_mb() #8
  %13 = or i32 %12, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %13) #8, !srcloc !195
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr.i15 = getelementptr i8, ptr %1, i32 9252
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %15 = and i32 %14, -3841
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %15) #8, !srcloc !195
  %add.ptr.i17 = getelementptr i8, ptr %1, i32 9220
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  tail call void @arm_heavy_mb() #8
  %17 = or i32 %16, 262144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %17) #8, !srcloc !195
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtu3_set_speed(ptr nocapture noundef %mtu, i32 noundef %speed) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_base = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 3
  %0 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_base, align 4
  %max_speed = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 21
  %2 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_speed, align 4
  %4 = tail call i32 @llvm.umin.i32(i32 %3, i32 %speed)
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %do.end [
    i32 2, label %sw.bb
    i32 3, label %sw.bb2
    i32 5, label %sw.bb3
    i32 6, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %1, i32 5148
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %7 = and i32 %6, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #8, !srcloc !195
  %add.ptr.i34 = getelementptr i8, ptr %1, i32 9220
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %9 = and i32 %8, -536870913
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 %9) #8, !srcloc !195
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i36 = getelementptr i8, ptr %1, i32 5148
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %11 = and i32 %10, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 %11) #8, !srcloc !195
  %add.ptr.i38 = getelementptr i8, ptr %1, i32 9220
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  tail call void @arm_heavy_mb() #8
  %13 = or i32 %12, 536870912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 %13) #8, !srcloc !195
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i39 = getelementptr i8, ptr %1, i32 9220
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  tail call void @arm_heavy_mb() #8
  %15 = or i32 %14, 536870912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 %15) #8, !srcloc !195
  %ippc_base = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 4
  %16 = ptrtoint ptr %ippc_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ippc_base, align 8
  %add.ptr.i41 = getelementptr i8, ptr %17, i32 48
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %19 = and i32 %18, -131073
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 %19) #8, !srcloc !195
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i43 = getelementptr i8, ptr %1, i32 9220
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  tail call void @arm_heavy_mb() #8
  %21 = or i32 %20, 536870912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 %21) #8, !srcloc !195
  %ippc_base5 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 4
  %22 = ptrtoint ptr %ippc_base5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ippc_base5, align 8
  %add.ptr.i45 = getelementptr i8, ptr %23, i32 48
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  tail call void @arm_heavy_mb() #8
  %25 = or i32 %24, 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %25) #8, !srcloc !195
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 8
  %call = tail call ptr @usb_speed_string(i32 noundef %4) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.54, ptr noundef %call) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb
  %speed6 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 22
  %28 = ptrtoint ptr %speed6 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %4, ptr %speed6, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_set_speed.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_set_speed, %cleanup)) #8
          to label %if.then12 [label %cleanup], !srcloc !200

if.then12:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %dev13 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %29 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev13, align 8
  %call14 = tail call ptr @usb_speed_string(i32 noundef %4) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_set_speed.__UNIQUE_ID_ddebug333, ptr noundef %30, ptr noundef nonnull @.str.56, ptr noundef %call14) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %sw.epilog, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtu3_intr_enable(ptr nocapture noundef readonly %mtu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_base = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 3
  %0 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 922746880) #8, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  %add.ptr.i9 = getelementptr i8, ptr %1, i32 9240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 117440512) #8, !srcloc !195
  %is_u3_ip = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 23
  %2 = ptrtoint ptr %is_u3_ip to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %is_u3_ip, align 4
  %3 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  %add.ptr.i10 = getelementptr i8, ptr %1, i32 5436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 807665664) #8, !srcloc !195
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  %add.ptr.i11 = getelementptr i8, ptr %1, i32 1816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 100668928) #8, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  %add.ptr.i12 = getelementptr i8, ptr %1, i32 2128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 16777216) #8, !srcloc !195
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtu3_stop(ptr nocapture noundef %mtu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_stop.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_stop, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !200

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_stop.__UNIQUE_ID_ddebug336, ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @mtu3_intr_disable(ptr noundef %mtu)
  %softconnect = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 23
  %2 = ptrtoint ptr %softconnect to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %softconnect, align 4
  %3 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool4.not = icmp eq i16 %3, 0
  br i1 %tobool4.not, label %do.end.if.end6_crit_edge, label %if.then5

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mtu3_dev_on_off(ptr noundef %mtu, i32 noundef 0)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %do.end.if.end6_crit_edge
  %4 = ptrtoint ptr %softconnect to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load7 = load i16, ptr %softconnect, align 4
  %bf.clear8 = and i16 %bf.load7, 32767
  store i16 %bf.clear8, ptr %softconnect, align 4
  tail call fastcc void @mtu3_dev_power_down(ptr noundef %mtu)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtu3_intr_disable(ptr nocapture noundef readonly %mtu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_base = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 3
  %0 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #8, !srcloc !195
  %2 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac_base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  %add.ptr.i4 = getelementptr i8, ptr %3, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 -1) #8, !srcloc !195
  %4 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac_base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1) #8, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  %add.ptr.i5.i = getelementptr i8, ptr %5, i32 9244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 -1) #8, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  %add.ptr.i6.i = getelementptr i8, ptr %5, i32 5440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 -1) #8, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  %add.ptr.i7.i = getelementptr i8, ptr %5, i32 2132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 -1) #8, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  %add.ptr.i8.i = getelementptr i8, ptr %5, i32 1792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 -1) #8, !srcloc !195
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtu3_dev_power_down(ptr nocapture noundef readonly %mtu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ippc_base = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 4
  %0 = ptrtoint ptr %ippc_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ippc_base, align 8
  %is_u3_ip = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 23
  %2 = ptrtoint ptr %is_u3_ip to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %is_u3_ip, align 4
  %3 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %1, i32 48
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  tail call void @arm_heavy_mb() #8
  %5 = or i32 %4, 33554432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #8, !srcloc !195
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr.i4 = getelementptr i8, ptr %1, i32 80
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  tail call void @arm_heavy_mb() #8
  %7 = or i32 %6, 33554432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %7) #8, !srcloc !195
  %add.ptr.i6 = getelementptr i8, ptr %1, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  tail call void @arm_heavy_mb() #8
  %9 = or i32 %8, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 %9) #8, !srcloc !195
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtu3_config_ep(ptr nocapture noundef readonly %mtu, ptr noundef %mep, i32 noundef %interval, i32 noundef %burst, i32 noundef %mult) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_base = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 3
  %0 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_base, align 4
  %gen2cp1 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 23
  %2 = ptrtoint ptr %gen2cp1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %gen2cp1, align 4
  %3 = and i16 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  %epnum2 = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 3
  %4 = ptrtoint ptr %epnum2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %epnum2, align 4
  %conv = zext i8 %5 to i32
  %maxp = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 6
  %6 = ptrtoint ptr %maxp to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %maxp, align 4
  %conv3 = zext i16 %7 to i32
  %call = tail call fastcc i32 @ep_fifo_alloc(ptr noundef %mep, i32 noundef %conv3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %10 = ptrtoint ptr %maxp to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %maxp, align 4
  %conv6 = zext i16 %11 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.16, i32 noundef %conv6) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %fifo_seg_size = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 10
  %12 = ptrtoint ptr %fifo_seg_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fifo_seg_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i = icmp eq i32 %13, 0
  %14 = tail call i32 @llvm.ctlz.i32(i32 %13, i1 true) #8, !range !201
  %sub.i.op.i = xor i32 %14, 31
  %sub.i = select i1 %tobool.not.i.i, i32 -1, i32 %sub.i.op.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_config_ep.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_config_ep, %do.end30)) #8
          to label %if.then25 [label %do.end30], !srcloc !200

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev26 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %15 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev26, align 8
  %17 = ptrtoint ptr %fifo_seg_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fifo_seg_size, align 4
  %fifo_size = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 8
  %19 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fifo_size, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_config_ep.__UNIQUE_ID_ddebug337, ptr noundef %16, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %sub.i, i32 noundef %18, i32 noundef %20) #8
  br label %do.end30

do.end30:                                         ; preds = %if.then25, %if.end
  %is_in = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 5
  %21 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %is_in, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool31.not = icmp eq i8 %22, 0
  %23 = ptrtoint ptr %maxp to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %maxp, align 4
  %25 = and i16 %24, 2047
  %and126 = zext i16 %25 to i32
  %or127 = or i32 %and126, 536870912
  %add128 = add i32 %burst, 1
  %add129 = add i32 %mult, 1
  %mul130 = mul i32 %add129, %add128
  %sub131 = add i32 %mul130, -1
  %and132 = and i32 %burst, 15
  %slot134 = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 7
  %26 = ptrtoint ptr %slot134 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %slot134, align 4
  %and135 = shl i32 %27, 8
  %shl136 = and i32 %and135, 16128
  %shl144 = shl i32 %sub131, 24
  %and146 = shl i32 %sub131, 16
  %shl147 = and i32 %and146, 4128768
  %and155 = shl i32 %mult, 21
  %shl156 = and i32 %and155, 14680064
  %and158 = shl i32 %mult, 22
  %shl159 = and i32 %and158, 12582912
  %28 = or i32 %shl147, %shl159
  %29 = or i32 %shl144, %shl156
  %or162 = select i1 %tobool.not, i32 %28, i32 %29
  %or137 = or i32 %or162, %and132
  %or163 = or i32 %or137, %shl136
  %30 = lshr i32 %call, 4
  %and165 = and i32 %30, 8191
  %and167 = shl nsw i32 %sub.i, 16
  %shl168 = and i32 %and167, 983040
  %or169 = or i32 %shl168, %and165
  %type170 = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 4
  %31 = ptrtoint ptr %type170 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %type170, align 1
  br i1 %tobool31.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %do.end30
  %33 = zext i8 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.93)
  switch i8 %32, label %if.then32.sw.epilog_crit_edge [
    i8 3, label %sw.bb78
    i8 1, label %sw.bb73
  ]

if.then32.sw.epilog_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb73:                                          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  %or74 = or i32 %or163, 32
  %shl76 = shl i32 %interval, 24
  %or77 = or i32 %or169, %shl76
  br label %sw.epilog

sw.bb78:                                          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  %or79 = or i32 %or163, 16
  %shl81 = shl i32 %interval, 24
  %or82 = or i32 %or169, %shl81
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb78, %sw.bb73, %if.then32.sw.epilog_crit_edge
  %csr2.0 = phi i32 [ %or82, %sw.bb78 ], [ %or77, %sw.bb73 ], [ %or169, %if.then32.sw.epilog_crit_edge ]
  %csr1.0 = phi i32 [ %or79, %sw.bb78 ], [ %or74, %sw.bb73 ], [ %or163, %if.then32.sw.epilog_crit_edge ]
  %shl83 = shl nuw i32 1, %conv
  %add.ptr.i = getelementptr i8, ptr %1, i32 1800
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !192
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  tail call void @arm_heavy_mb() #8
  %or.i = or i32 %35, %shl83
  %36 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %36) #8, !srcloc !195
  %sub84 = shl nuw nsw i32 %conv, 4
  %add86 = add nuw nsw i32 %sub84, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  %37 = tail call i32 @llvm.bswap.i32(i32 %or127) #8
  %add.ptr.i387 = getelementptr i8, ptr %1, i32 %add86
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i387, i32 %37) #8, !srcloc !195
  %add89 = add nuw nsw i32 %sub84, 260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  %38 = tail call i32 @llvm.bswap.i32(i32 %csr1.0) #8
  %add.ptr.i388 = getelementptr i8, ptr %1, i32 %add89
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i388, i32 %38) #8, !srcloc !195
  %add92 = add nuw nsw i32 %sub84, 264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  %39 = tail call i32 @llvm.bswap.i32(i32 %csr2.0) #8
  %add.ptr.i389 = getelementptr i8, ptr %1, i32 %add92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i389, i32 %39) #8, !srcloc !195
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_config_ep.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_config_ep, %do.body227)) #8
          to label %if.then107 [label %do.body227], !srcloc !200

if.then107:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %dev108 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %40 = ptrtoint ptr %dev108 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev108, align 8
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i387) #8, !srcloc !192
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i388) #8, !srcloc !192
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i389) #8, !srcloc !192
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_config_ep.__UNIQUE_ID_ddebug338, ptr noundef %41, ptr noundef nonnull @.str.20, i32 noundef %conv, i32 noundef %43, i32 noundef %45, i32 noundef %47) #8
  br label %do.body227

if.else:                                          ; preds = %do.end30
  %48 = zext i8 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.94)
  switch i8 %32, label %if.else.sw.epilog184_crit_edge [
    i8 3, label %sw.bb179
    i8 1, label %sw.bb174
  ]

if.else.sw.epilog184_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog184

sw.bb174:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %or175 = or i32 %or163, 32
  %shl177 = shl i32 %interval, 24
  %or178 = or i32 %or169, %shl177
  br label %sw.epilog184

sw.bb179:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %or180 = or i32 %or163, 16
  %shl182 = shl i32 %interval, 24
  %or183 = or i32 %or169, %shl182
  br label %sw.epilog184

sw.epilog184:                                     ; preds = %sw.bb179, %sw.bb174, %if.else.sw.epilog184_crit_edge
  %csr2.1 = phi i32 [ %or183, %sw.bb179 ], [ %or178, %sw.bb174 ], [ %or169, %if.else.sw.epilog184_crit_edge ]
  %csr1.1 = phi i32 [ %or180, %sw.bb179 ], [ %or175, %sw.bb174 ], [ %or163, %if.else.sw.epilog184_crit_edge ]
  %shl185 = shl i32 65536, %conv
  %add.ptr.i393 = getelementptr i8, ptr %1, i32 1800
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i393) #8, !srcloc !192
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  tail call void @arm_heavy_mb() #8
  %or.i394 = or i32 %50, %shl185
  %51 = tail call i32 @llvm.bswap.i32(i32 %or.i394) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i393, i32 %51) #8, !srcloc !195
  %sub186 = shl nuw nsw i32 %conv, 4
  %add188 = add nuw nsw i32 %sub186, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  %52 = tail call i32 @llvm.bswap.i32(i32 %or127) #8
  %add.ptr.i395 = getelementptr i8, ptr %1, i32 %add188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i395, i32 %52) #8, !srcloc !195
  %add191 = add nuw nsw i32 %sub186, 516
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  %53 = tail call i32 @llvm.bswap.i32(i32 %csr1.1) #8
  %add.ptr.i396 = getelementptr i8, ptr %1, i32 %add191
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i396, i32 %53) #8, !srcloc !195
  %add194 = add nuw nsw i32 %sub186, 520
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  %54 = tail call i32 @llvm.bswap.i32(i32 %csr2.1) #8
  %add.ptr.i397 = getelementptr i8, ptr %1, i32 %add194
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i397, i32 %54) #8, !srcloc !195
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_config_ep.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_config_ep, %do.body227)) #8
          to label %if.then209 [label %do.body227], !srcloc !200

if.then209:                                       ; preds = %sw.epilog184
  call void @__sanitizer_cov_trace_pc() #10
  %dev210 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %55 = ptrtoint ptr %dev210 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev210, align 8
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i395) #8, !srcloc !192
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i396) #8, !srcloc !192
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i397) #8, !srcloc !192
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_config_ep.__UNIQUE_ID_ddebug339, ptr noundef %56, ptr noundef nonnull @.str.21, i32 noundef %conv, i32 noundef %58, i32 noundef %60, i32 noundef %62) #8
  br label %do.body227

do.body227:                                       ; preds = %if.then209, %sw.epilog184, %if.then107, %sw.epilog
  %csr2.2 = phi i32 [ %csr2.0, %if.then107 ], [ %csr2.1, %if.then209 ], [ %csr2.0, %sw.epilog ], [ %csr2.1, %sw.epilog184 ]
  %csr1.2 = phi i32 [ %csr1.0, %if.then107 ], [ %csr1.1, %if.then209 ], [ %csr1.0, %sw.epilog ], [ %csr1.1, %sw.epilog184 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_config_ep.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_config_ep, %do.body246)) #8
          to label %if.then241 [label %do.body246], !srcloc !200

if.then241:                                       ; preds = %do.body227
  call void @__sanitizer_cov_trace_pc() #10
  %dev242 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %63 = ptrtoint ptr %dev242 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev242, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_config_ep.__UNIQUE_ID_ddebug340, ptr noundef %64, ptr noundef nonnull @.str.22, i32 noundef %or127, i32 noundef %csr1.2, i32 noundef %csr2.2) #8
  br label %do.body246

do.body246:                                       ; preds = %if.then241, %do.body227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_config_ep.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_config_ep, %cleanup)) #8
          to label %if.then260 [label %cleanup], !srcloc !200

if.then260:                                       ; preds = %do.body246
  call void @__sanitizer_cov_trace_pc() #10
  %dev261 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %65 = ptrtoint ptr %dev261 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev261, align 8
  %name = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 1
  %fifo_addr262 = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 9
  %67 = ptrtoint ptr %fifo_addr262 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %fifo_addr262, align 4
  %fifo_size263 = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 8
  %69 = ptrtoint ptr %fifo_size263 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %fifo_size263, align 4
  %71 = ptrtoint ptr %fifo_seg_size to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %fifo_seg_size, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_config_ep.__UNIQUE_ID_ddebug341, ptr noundef %66, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.17, ptr noundef %name, i32 noundef %68, i32 noundef %70, i32 noundef %sub.i, i32 noundef %72) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then260, %do.body246, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.then260 ], [ 0, %do.body246 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ep_fifo_alloc(ptr nocapture noundef %mep, i32 noundef %seg_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fifo1 = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 11
  %0 = ptrtoint ptr %fifo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fifo1, align 4
  %sub = add i32 %seg_size, 511
  %div77 = lshr i32 %sub, 9
  %sub.i78 = add nsw i32 %div77, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i78)
  %tobool.not.i.i.i = icmp eq i32 %sub.i78, 0
  %2 = tail call i32 @llvm.ctlz.i32(i32 %sub.i78, i1 true) #8, !range !201
  %sub.i.i.i = sub nuw nsw i32 32, %2
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  %shl.i = select i1 %tobool.not.i.i.i, i32 1, i32 %sub.i.i.op.i
  %limit = getelementptr inbounds %struct.mtu3_fifo_info, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %4)
  %cmp22 = icmp ugt i32 %shl.i, %4
  br i1 %cmp22, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = shl i32 %shl.i, 9
  %fifo_seg_size = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 10
  %5 = ptrtoint ptr %fifo_seg_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %mul, ptr %fifo_seg_size, align 4
  %slot = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 7
  %6 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %slot, align 4
  %add24 = add i32 %7, 1
  %mul25 = mul i32 %add24, %shl.i
  %bitmap = getelementptr inbounds %struct.mtu3_fifo_info, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %limit, align 4
  %call.i = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef %bitmap, i32 noundef %9, i32 noundef 0, i32 noundef %mul25, i32 noundef 0, i32 noundef 0) #8
  %10 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %11)
  %cmp29.not = icmp ult i32 %call.i, %11
  br i1 %cmp29.not, label %if.else11.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else11.i:                                      ; preds = %if.end
  tail call void @__bitmap_set(ptr noundef %bitmap, i32 noundef %call.i, i32 noundef %mul25) #8
  %mul35 = shl i32 %mul25, 9
  %fifo_size = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 8
  %12 = ptrtoint ptr %fifo_size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul35, ptr %fifo_size, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  %mul36 = shl i32 %call.i, 9
  %add37 = add i32 %14, %mul36
  %fifo_addr = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 9
  %15 = ptrtoint ptr %fifo_addr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add37, ptr %fifo_addr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep_fifo_alloc.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep_fifo_alloc, %do.end)) #8
          to label %if.then42 [label %do.end], !srcloc !200

if.then42:                                        ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #10
  %mtu = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 2
  %16 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mtu, align 4
  %dev = getelementptr inbounds %struct.mtu3, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  %20 = ptrtoint ptr %fifo_seg_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fifo_seg_size, align 4
  %22 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fifo_size, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep_fifo_alloc.__UNIQUE_ID_ddebug329, ptr noundef %19, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.57, i32 noundef %21, i32 noundef %23, i32 noundef %call.i) #8
  br label %do.end

do.end:                                           ; preds = %if.then42, %if.else11.i
  %24 = ptrtoint ptr %fifo_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fifo_addr, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %25, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -75, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtu3_deconfig_ep(ptr nocapture noundef readonly %mtu, ptr noundef %mep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_base = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 3
  %0 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_base, align 4
  %epnum1 = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 3
  %2 = ptrtoint ptr %epnum1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %epnum1, align 4
  %conv = zext i8 %3 to i32
  %is_in = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 5
  %4 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_in, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %sub8 = shl nuw nsw i32 %conv, 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add = add nuw nsw i32 %sub8, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !195
  %add4 = add nuw nsw i32 %sub8, 260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  %add.ptr.i43 = getelementptr i8, ptr %1, i32 %add4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 0) #8, !srcloc !195
  %add7 = add nuw nsw i32 %sub8, 264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  %add.ptr.i44 = getelementptr i8, ptr %1, i32 %add7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 0) #8, !srcloc !195
  %shl = shl nuw i32 1, %conv
  %add.ptr.i45 = getelementptr i8, ptr %1, i32 1804
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #8, !srcloc !192
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  tail call void @arm_heavy_mb() #8
  %or.i = or i32 %7, %shl
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %8) #8, !srcloc !195
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add10 = add nuw nsw i32 %sub8, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  %add.ptr.i46 = getelementptr i8, ptr %1, i32 %add10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 0) #8, !srcloc !195
  %add13 = add nuw nsw i32 %sub8, 516
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  %add.ptr.i47 = getelementptr i8, ptr %1, i32 %add13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 0) #8, !srcloc !195
  %add16 = add nuw nsw i32 %sub8, 520
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  %add.ptr.i48 = getelementptr i8, ptr %1, i32 %add16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 0) #8, !srcloc !195
  %shl17 = shl i32 65536, %conv
  %add.ptr.i49 = getelementptr i8, ptr %1, i32 1804
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #8, !srcloc !192
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  tail call void @arm_heavy_mb() #8
  %or.i50 = or i32 %10, %shl17
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i50) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 %11) #8, !srcloc !195
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %mtu1.i = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 2
  %12 = ptrtoint ptr %mtu1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mtu1.i, align 4
  %14 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %is_in, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  %cond.i = select i1 %tobool.not.i, i32 1, i32 65536
  %16 = ptrtoint ptr %epnum1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %epnum1, align 4
  %conv2.i = zext i8 %17 to i32
  %shl.i = shl i32 %cond.i, %conv2.i
  %mac_base.i = getelementptr inbounds %struct.mtu3, ptr %13, i32 0, i32 3
  %18 = ptrtoint ptr %mac_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mac_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 2052
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !192
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  tail call void @arm_heavy_mb() #8
  %or.i.i = or i32 %21, %shl.i
  %22 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %22) #8, !srcloc !195
  %23 = ptrtoint ptr %mac_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mac_base.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %24, i32 2052
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i) #8, !srcloc !192
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %neg.i.i = xor i32 %shl.i, -1
  %and.i.i = and i32 %26, %neg.i.i
  %27 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %27) #8, !srcloc !195
  %fifo1.i = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 11
  %28 = ptrtoint ptr %fifo1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fifo1.i, align 4
  %fifo_addr.i = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 9
  %30 = ptrtoint ptr %fifo_addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fifo_addr.i, align 4
  %fifo_size.i = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 8
  %32 = ptrtoint ptr %fifo_size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fifo_size.i, align 4
  %div36.i = lshr i32 %33, 9
  %34 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %35)
  %cmp.i = icmp ult i32 %31, %35
  br i1 %cmp.i, label %if.end.ep_fifo_free.exit_crit_edge, label %lor.rhs.i, !prof !202

if.end.ep_fifo_free.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ep_fifo_free.exit

lor.rhs.i:                                        ; preds = %if.end
  %limit.i = getelementptr inbounds %struct.mtu3_fifo_info, ptr %29, i32 0, i32 1
  %36 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %limit.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div36.i, i32 %37)
  %cmp2.i = icmp ugt i32 %div36.i, %37
  br i1 %cmp2.i, label %lor.rhs.i.ep_fifo_free.exit_crit_edge, label %if.end.i, !prof !202

lor.rhs.i.ep_fifo_free.exit_crit_edge:            ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ep_fifo_free.exit

if.end.i:                                         ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = sub i32 %31, %35
  %div537.i = lshr i32 %sub.i, 9
  %bitmap.i = getelementptr inbounds %struct.mtu3_fifo_info, ptr %29, i32 0, i32 2
  tail call void @__bitmap_clear(ptr noundef %bitmap.i, i32 noundef %div537.i, i32 noundef %div36.i) #8
  %38 = ptrtoint ptr %fifo_size.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %fifo_size.i, align 4
  %fifo_seg_size.i = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 10
  %39 = ptrtoint ptr %fifo_seg_size.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %fifo_seg_size.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep_fifo_free.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_deconfig_ep, %ep_fifo_free.exit)) #8
          to label %if.then16.i [label %ep_fifo_free.exit], !srcloc !200

if.then16.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %mtu1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mtu1.i, align 4
  %dev.i = getelementptr inbounds %struct.mtu3, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 8
  %44 = ptrtoint ptr %fifo_seg_size.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fifo_seg_size.i, align 4
  %46 = ptrtoint ptr %fifo_size.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fifo_size.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep_fifo_free.__UNIQUE_ID_ddebug330, ptr noundef %43, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.59, i32 noundef %45, i32 noundef %47, i32 noundef %div537.i) #8
  br label %ep_fifo_free.exit

ep_fifo_free.exit:                                ; preds = %if.then16.i, %if.end.i, %lor.rhs.i.ep_fifo_free.exit_crit_edge, %if.end.ep_fifo_free.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_deconfig_ep.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_deconfig_ep, %do.end)) #8
          to label %if.then22 [label %do.end], !srcloc !200

if.then22:                                        ; preds = %ep_fifo_free.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_deconfig_ep.__UNIQUE_ID_ddebug342, ptr noundef %49, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.24, ptr noundef %name) #8
  br label %do.end

do.end:                                           ; preds = %if.then22, %ep_fifo_free.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssusb_gadget_init(ptr noundef %ssusb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ssusb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ssusb, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 1312, i32 noundef 3520) #8
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @platform_get_irq_byname_optional(ptr noundef %add.ptr, ptr noundef nonnull @.str.25) #8
  %irq = getelementptr inbounds %struct.mtu3, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call2, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp4 = icmp slt i32 %call2, 0
  br i1 %cmp4, label %if.then5, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call2)
  %cmp7 = icmp eq i32 %call2, -517
  br i1 %cmp7, label %if.then5.cleanup_crit_edge, label %if.end10

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.then5
  %call11 = tail call i32 @platform_get_irq(ptr noundef %add.ptr, i32 noundef 0) #8
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call11, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp14 = icmp slt i32 %call11, 0
  br i1 %cmp14, label %if.end10.cleanup_crit_edge, label %if.end10.do.end_crit_edge

if.end10.do.end_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end10.do.end_crit_edge, %if.end.do.end_crit_edge
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.26, i32 noundef %5) #11
  %call20 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %add.ptr, ptr noundef nonnull @.str.28) #8
  %mac_base = getelementptr inbounds %struct.mtu3, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %mac_base to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call20, ptr %mac_base, align 4
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end26, label %do.body30

do.end26:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.30) #11
  %7 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mac_base, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %cleanup

do.body30:                                        ; preds = %do.end
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @ssusb_gadget_init.__key, i16 noundef signext 3) #8
  %dev34 = getelementptr inbounds %struct.mtu3, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %dev34 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %1, ptr %dev34, align 8
  %ippc_base = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 3
  %11 = ptrtoint ptr %ippc_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ippc_base, align 4
  %ippc_base35 = getelementptr inbounds %struct.mtu3, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %ippc_base35 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %ippc_base35, align 8
  %14 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mac_base, align 4
  %mac_base37 = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 2
  %16 = ptrtoint ptr %mac_base37 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %mac_base37, align 4
  %u3d = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 1
  %17 = ptrtoint ptr %u3d to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %u3d, align 4
  %ssusb38 = getelementptr inbounds %struct.mtu3, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %ssusb38 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %ssusb, ptr %ssusb38, align 4
  %call39 = tail call i32 @usb_get_maximum_speed(ptr noundef %1) #8
  %max_speed = getelementptr inbounds %struct.mtu3, ptr %call.i, i32 0, i32 21
  %19 = ptrtoint ptr %max_speed to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call39, ptr %max_speed, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssusb_gadget_init.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ssusb_gadget_init, %do.end51)) #8
          to label %if.then46 [label %do.end51], !srcloc !200

if.then46:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mac_base, align 4
  %22 = ptrtoint ptr %ippc_base35 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ippc_base35, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssusb_gadget_init.__UNIQUE_ID_ddebug351, ptr noundef %1, ptr noundef nonnull @.str.33, ptr noundef %21, ptr noundef %23) #8
  br label %do.end51

do.end51:                                         ; preds = %if.then46, %do.body30
  %24 = ptrtoint ptr %ippc_base35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ippc_base35, align 8
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 164
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !192
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  %shr.i = lshr i32 %27, 16
  %hw_version.i = getelementptr inbounds %struct.mtu3, ptr %call.i, i32 0, i32 26
  %28 = ptrtoint ptr %hw_version.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %shr.i, ptr %hw_version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 268632063, i32 %27)
  %cmp.i173 = icmp ugt i32 %27, 268632063
  %gen2cp.i = getelementptr inbounds %struct.mtu3, ptr %call.i, i32 0, i32 23
  %29 = ptrtoint ptr %gen2cp.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load.i = load i16, ptr %gen2cp.i, align 4
  %bf.shl.i = select i1 %cmp.i173, i16 64, i16 0
  %bf.clear.i = and i16 %bf.load.i, -65
  %bf.set.i = or i16 %bf.clear.i, %bf.shl.i
  store i16 %bf.set.i, ptr %gen2cp.i, align 4
  %30 = ptrtoint ptr %ippc_base35 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ippc_base35, align 8
  %add.ptr.i50.i = getelementptr i8, ptr %31, i32 40
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50.i) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %32)
  %tobool.not.i = icmp ult i32 %32, 16777216
  %33 = ptrtoint ptr %gen2cp.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load10.i = load i16, ptr %gen2cp.i, align 4
  %bf.shl12.i = select i1 %tobool.not.i, i16 0, i16 256
  %bf.clear13.i = and i16 %bf.load10.i, -257
  %bf.set14.i = or i16 %bf.clear13.i, %bf.shl12.i
  store i16 %bf.set14.i, ptr %gen2cp.i, align 4
  %34 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev34, align 8
  %36 = ptrtoint ptr %hw_version.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hw_version.i, align 8
  %cond.i = select i1 %tobool.not.i, ptr @.str.64, ptr @.str.63
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %35, ptr noundef nonnull @.str.61, i32 noundef %37, ptr noundef nonnull %cond.i) #11
  %38 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_speed, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %39, label %do.end.i.i [
    i32 2, label %do.end51.sw.epilog.i.i_crit_edge
    i32 3, label %do.end51.sw.epilog.i.i_crit_edge194
    i32 5, label %do.end51.sw.epilog.i.i_crit_edge195
    i32 6, label %do.end51.sw.epilog.i.i_crit_edge196
    i32 0, label %do.end51.sw.bb2.i.i_crit_edge
  ]

do.end51.sw.bb2.i.i_crit_edge:                    ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i.i

do.end51.sw.epilog.i.i_crit_edge196:              ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

do.end51.sw.epilog.i.i_crit_edge195:              ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

do.end51.sw.epilog.i.i_crit_edge194:              ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

do.end51.sw.epilog.i.i_crit_edge:                 ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

do.end.i.i:                                       ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev34, align 8
  %call.i.i = tail call ptr @usb_speed_string(i32 noundef %39) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.68, ptr noundef %call.i.i) #11
  br label %sw.bb2.i.i

sw.bb2.i.i:                                       ; preds = %do.end.i.i, %do.end51.sw.bb2.i.i_crit_edge
  %43 = ptrtoint ptr %max_speed to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 6, ptr %max_speed, align 4
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb2.i.i, %do.end51.sw.epilog.i.i_crit_edge, %do.end51.sw.epilog.i.i_crit_edge194, %do.end51.sw.epilog.i.i_crit_edge195, %do.end51.sw.epilog.i.i_crit_edge196
  %44 = ptrtoint ptr %gen2cp.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %bf.load.i.i = load i16, ptr %gen2cp.i, align 4
  %45 = and i16 %bf.load.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool.not.i.i = icmp eq i16 %45, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %sw.epilog.i.i.mtu3_check_params.exit.i_crit_edge

sw.epilog.i.i.mtu3_check_params.exit.i_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtu3_check_params.exit.i

land.lhs.true.i.i:                                ; preds = %sw.epilog.i.i
  %46 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %max_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %47)
  %cmp.i.i = icmp ugt i32 %47, 3
  br i1 %cmp.i.i, label %if.then.i.i, label %land.lhs.true.i.i.mtu3_check_params.exit.i_crit_edge

land.lhs.true.i.i.mtu3_check_params.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtu3_check_params.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %max_speed to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 3, ptr %max_speed, align 4
  br label %mtu3_check_params.exit.i

mtu3_check_params.exit.i:                         ; preds = %if.then.i.i, %land.lhs.true.i.i.mtu3_check_params.exit.i_crit_edge, %sw.epilog.i.i.mtu3_check_params.exit.i_crit_edge
  %49 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %max_speed, align 4
  %speed.i.i = getelementptr inbounds %struct.mtu3, ptr %call.i, i32 0, i32 22
  %51 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %speed.i.i, align 8
  %52 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev34, align 8
  %call11.i.i = tail call ptr @usb_speed_string(i32 noundef %50) #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %53, ptr noundef nonnull @.str.71, ptr noundef %call11.i.i) #11
  %54 = ptrtoint ptr %ippc_base35 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ippc_base35, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %55, i32 152
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  tail call void @arm_heavy_mb() #8
  %57 = or i32 %56, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %57) #8, !srcloc !195
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748) #8
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %60 = and i32 %59, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %60) #8, !srcloc !195
  %61 = ptrtoint ptr %ippc_base35 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ippc_base35, align 8
  %add.ptr.i.i52.i = getelementptr i8, ptr %62, i32 8
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i52.i) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %64 = and i32 %63, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i52.i, i32 %64) #8, !srcloc !195
  %65 = ptrtoint ptr %gen2cp.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %bf.load.i54.i = load i16, ptr %gen2cp.i, align 4
  %66 = and i16 %bf.load.i54.i, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %tobool.not.i55.i = icmp eq i16 %66, 0
  br i1 %tobool.not.i55.i, label %mtu3_check_params.exit.i.if.end.i.i_crit_edge, label %if.then.i56.i

mtu3_check_params.exit.i.if.end.i.i_crit_edge:    ; preds = %mtu3_check_params.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i56.i:                                    ; preds = %mtu3_check_params.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i20.i.i = getelementptr i8, ptr %62, i32 48
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i.i) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %68 = and i32 %67, -117440513
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i.i, i32 %68) #8, !srcloc !195
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i56.i, %mtu3_check_params.exit.i.if.end.i.i_crit_edge
  %check_clk.0.i.i = phi i32 [ 65536, %if.then.i56.i ], [ 0, %mtu3_check_params.exit.i.if.end.i.i_crit_edge ]
  %add.ptr.i22.i.i = getelementptr i8, ptr %62, i32 80
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i.i) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %70 = and i32 %69, -117571585
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i.i, i32 %70) #8, !srcloc !195
  %71 = ptrtoint ptr %ssusb38 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ssusb38, align 4
  %dr_mode.i.i = getelementptr inbounds %struct.ssusb_mtk, ptr %72, i32 0, i32 10
  %73 = ptrtoint ptr %dr_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %dr_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %74)
  %cmp.i57.i = icmp eq i32 %74, 3
  br i1 %cmp.i57.i, label %if.then1.i.i, label %if.end.i.i.mtu3_device_enable.exit.i_crit_edge

if.end.i.i.mtu3_device_enable.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtu3_device_enable.exit.i

if.then1.i.i:                                     ; preds = %if.end.i.i
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i.i) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  tail call void @arm_heavy_mb() #8
  %76 = or i32 %75, -2147483648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i.i, i32 %76) #8, !srcloc !195
  %77 = ptrtoint ptr %gen2cp.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %bf.load3.i.i = load i16, ptr %gen2cp.i, align 4
  %78 = and i16 %bf.load3.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %tobool7.not.i.i = icmp eq i16 %78, 0
  br i1 %tobool7.not.i.i, label %if.then1.i.i.mtu3_device_enable.exit.i_crit_edge, label %if.then8.i.i

if.then1.i.i.mtu3_device_enable.exit.i_crit_edge: ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtu3_device_enable.exit.i

if.then8.i.i:                                     ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i25.i.i = getelementptr i8, ptr %62, i32 48
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25.i.i) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  tail call void @arm_heavy_mb() #8
  %80 = or i32 %79, -2147483648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i, i32 %80) #8, !srcloc !195
  br label %mtu3_device_enable.exit.i

mtu3_device_enable.exit.i:                        ; preds = %if.then8.i.i, %if.then1.i.i.mtu3_device_enable.exit.i_crit_edge, %if.end.i.i.mtu3_device_enable.exit.i_crit_edge
  %81 = ptrtoint ptr %ssusb38 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ssusb38, align 4
  %call.i58.i = tail call i32 @ssusb_check_clocks(ptr noundef %82, i32 noundef %check_clk.0.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58.i)
  %tobool22.not.i = icmp eq i32 %call.i58.i, 0
  br i1 %tobool22.not.i, label %if.end.i, label %do.end25.i

do.end25.i:                                       ; preds = %mtu3_device_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev34, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.66, i32 noundef %call.i58.i) #11
  br label %do.end57

if.end.i:                                         ; preds = %mtu3_device_enable.exit.i
  %85 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mac_base, align 4
  %add.ptr.i.i59.i = getelementptr i8, ptr %86, i32 3088
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i59.i) #8, !srcloc !192
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  %and.i.i = and i32 %88, 31
  %shr.i.i = lshr i32 %88, 8
  %and1.i.i = and i32 %shr.i.i, 31
  %89 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev34, align 8
  %add.ptr.i64.i.i = getelementptr i8, ptr %86, i32 3080
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64.i.i) #8, !srcloc !192
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  %add.ptr.i65.i.i = getelementptr i8, ptr %86, i32 3084
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65.i.i) #8, !srcloc !192
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %90, ptr noundef nonnull @.str.73, i32 noundef %92, i32 noundef %and.i.i, i32 noundef %94, i32 noundef %and1.i.i) #11
  %95 = tail call i32 @llvm.umin.i32(i32 %and.i.i, i32 %and1.i.i) #8
  %add.i.i = add nuw nsw i32 %95, 1
  %num_eps.i.i = getelementptr inbounds %struct.mtu3, ptr %call.i, i32 0, i32 12
  %96 = ptrtoint ptr %num_eps.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %add.i.i, ptr %num_eps.i.i, align 8
  %97 = shl nuw nsw i32 %add.i.i, 8
  %call8.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %97, i32 noundef 3520) #12
  %cmp6.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %cmp6.i.i, label %if.end.i.do.end57_crit_edge, label %if.end.i61.i

if.end.i.do.end57_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end57

if.end.i61.i:                                     ; preds = %if.end.i
  %ep_array7.i.i = getelementptr inbounds %struct.mtu3, ptr %call.i, i32 0, i32 8
  %98 = ptrtoint ptr %ep_array7.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call8.i.i.i.i, ptr %ep_array7.i.i, align 8
  %in_eps.i.i = getelementptr inbounds %struct.mtu3, ptr %call.i, i32 0, i32 9
  %99 = ptrtoint ptr %in_eps.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call8.i.i.i.i, ptr %in_eps.i.i, align 4
  %100 = ptrtoint ptr %num_eps.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %num_eps.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.mtu3_ep, ptr %call8.i.i.i.i, i32 %101
  %out_eps.i.i = getelementptr inbounds %struct.mtu3, ptr %call.i, i32 0, i32 10
  %102 = ptrtoint ptr %out_eps.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %arrayidx.i.i, ptr %out_eps.i.i, align 8
  %ep0.i.i = getelementptr inbounds %struct.mtu3, ptr %call.i, i32 0, i32 11
  %103 = ptrtoint ptr %ep0.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call8.i.i.i.i, ptr %ep0.i.i, align 4
  %mtu11.i.i = getelementptr inbounds %struct.mtu3_ep, ptr %call8.i.i.i.i, i32 0, i32 2
  %104 = ptrtoint ptr %mtu11.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call.i, ptr %mtu11.i.i, align 8
  %epnum.i.i = getelementptr inbounds %struct.mtu3_ep, ptr %call8.i.i.i.i, i32 0, i32 3
  %105 = ptrtoint ptr %epnum.i.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %epnum.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %101)
  %cmp1468.i.i = icmp sgt i32 %101, 1
  br i1 %cmp1468.i.i, label %for.body.lr.ph.i.i, label %if.end.i61.i.for.end.i.i_crit_edge

if.end.i61.i.for.end.i.i_crit_edge:               ; preds = %if.end.i61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i61.i
  %tx_fifo.i.i = getelementptr inbounds %struct.mtu3, ptr %call.i, i32 0, i32 6
  %rx_fifo.i.i = getelementptr inbounds %struct.mtu3, ptr %call.i, i32 0, i32 7
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.069.i.i = phi i32 [ 1, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %106 = ptrtoint ptr %in_eps.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %in_eps.i.i, align 4
  %fifo.i.i = getelementptr %struct.mtu3_ep, ptr %107, i32 %i.069.i.i, i32 11
  %108 = ptrtoint ptr %fifo.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %tx_fifo.i.i, ptr %fifo.i.i, align 4
  %109 = ptrtoint ptr %out_eps.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %out_eps.i.i, align 8
  %fifo18.i.i = getelementptr %struct.mtu3_ep, ptr %110, i32 %i.069.i.i, i32 11
  %111 = ptrtoint ptr %fifo18.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %rx_fifo.i.i, ptr %fifo18.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.069.i.i, 1
  %112 = ptrtoint ptr %num_eps.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %num_eps.i.i, align 8
  %cmp14.i.i = icmp slt i32 %inc.i.i, %113
  br i1 %cmp14.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.end.i61.i.for.end.i.i_crit_edge
  tail call fastcc void @get_ep_fifo_config(ptr noundef %call.i) #8
  %call19.i.i = tail call i32 @mtu3_qmu_init(ptr noundef %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i)
  %tobool.not.i62.i = icmp eq i32 %call19.i.i, 0
  br i1 %tobool.not.i62.i, label %if.end30.i, label %if.then20.i.i

if.then20.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %114 = ptrtoint ptr %ep_array7.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ep_array7.i.i, align 8
  tail call void @kfree(ptr noundef %115) #8
  br label %do.end57

if.end30.i:                                       ; preds = %for.end.i.i
  %116 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %mac_base, align 4
  tail call fastcc void @mtu3_intr_disable(ptr noundef %call.i) #8
  tail call fastcc void @mtu3_csr_init(ptr noundef %call.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i64.i = getelementptr i8, ptr %117, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i64.i, i32 0) #8, !srcloc !195
  %add.ptr.i6.i.i = getelementptr i8, ptr %117, i32 3204
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i.i) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %119 = and i32 %118, -50331649
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %119) #8, !srcloc !195
  %120 = ptrtoint ptr %gen2cp.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %bf.load.i65.i = load i16, ptr %gen2cp.i, align 4
  %121 = and i16 %bf.load.i65.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %121)
  %tobool.not.i66.i = icmp eq i16 %121, 0
  br i1 %tobool.not.i66.i, label %if.end30.i.if.end58_crit_edge, label %if.then.i67.i

if.end30.i.if.end58_crit_edge:                    ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then.i67.i:                                    ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  %add.ptr.i7.i.i = getelementptr i8, ptr %117, i32 1064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i, i32 -1) #8, !srcloc !195
  br label %if.end58

do.end57:                                         ; preds = %if.then20.i.i, %if.end.i.do.end57_crit_edge, %do.end25.i
  %retval.0.i174.ph = phi i32 [ -12, %if.then20.i.i ], [ -12, %if.end.i.do.end57_crit_edge ], [ %call.i58.i, %do.end25.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.35, i32 noundef %retval.0.i174.ph) #11
  br label %cleanup

if.end58:                                         ; preds = %if.then.i67.i, %if.end30.i.if.end58_crit_edge
  %122 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev34, align 8
  %124 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %mac_base, align 4
  %add.ptr.i.i175 = getelementptr i8, ptr %125, i32 3204
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i175) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  %.mask.i = and i32 %126, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool.not.i176 = icmp eq i32 %.mask.i, 0
  br i1 %tobool.not.i176, label %if.end58.if.end65_crit_edge, label %if.then.i

if.end58.if.end65_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then.i:                                        ; preds = %if.end58
  %call.i.i177 = tail call i32 @dma_set_mask(ptr noundef %123, i64 noundef 68719476735) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i177)
  %cmp.i.i178 = icmp eq i32 %call.i.i177, 0
  br i1 %cmp.i.i178, label %if.then.i.do.end.sink.split.i_crit_edge, label %if.then4.i

if.then.i.do.end.sink.split.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.sink.split.i

if.then4.i:                                       ; preds = %if.then.i
  %call.i12.i = tail call i32 @dma_set_mask(ptr noundef %123, i64 noundef 4294967295) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i)
  %cmp.i13.i = icmp eq i32 %call.i12.i, 0
  br i1 %cmp.i13.i, label %if.then4.i.do.end.sink.split.i_crit_edge, label %do.end64

if.then4.i.do.end.sink.split.i_crit_edge:         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.sink.split.i

do.end.sink.split.i:                              ; preds = %if.then4.i.do.end.sink.split.i_crit_edge, %if.then.i.do.end.sink.split.i_crit_edge
  %.sink.i = phi i64 [ 68719476735, %if.then.i.do.end.sink.split.i_crit_edge ], [ 4294967295, %if.then4.i.do.end.sink.split.i_crit_edge ]
  %is_36bit.0.off0.ph.i = phi ptr [ @.str.79, %if.then.i.do.end.sink.split.i_crit_edge ], [ @.str.80, %if.then4.i.do.end.sink.split.i_crit_edge ]
  %call1.i14.i = tail call i32 @dma_set_coherent_mask(ptr noundef %123, i64 noundef %.sink.i) #8
  br label %if.end65

do.end64:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %123, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.80) #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.38, i32 noundef %call.i12.i) #11
  br label %irq_err

if.end65:                                         ; preds = %do.end.sink.split.i, %if.end58.if.end65_crit_edge
  %is_36bit.0.off0.i.ph = phi ptr [ %is_36bit.0.off0.ph.i, %do.end.sink.split.i ], [ @.str.80, %if.end58.if.end65_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %123, ptr noundef nonnull @.str.77, ptr noundef nonnull %is_36bit.0.off0.i.ph) #11
  %127 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %129 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i179 = icmp eq ptr %130, null
  br i1 %tobool.not.i179, label %if.end.i180, label %if.end65.dev_name.exit_crit_edge

if.end65.dev_name.exit_crit_edge:                 ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i180:                                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  %131 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i180, %if.end65.dev_name.exit_crit_edge
  %retval.0.i181 = phi ptr [ %132, %if.end.i180 ], [ %130, %if.end65.dev_name.exit_crit_edge ]
  %call.i182 = tail call i32 @devm_request_threaded_irq(ptr noundef %1, i32 noundef %128, ptr noundef nonnull @mtu3_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i181, ptr noundef %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182)
  %tobool69.not = icmp eq i32 %call.i182, 0
  br i1 %tobool69.not, label %if.end75, label %do.end73

do.end73:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %133 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.41, i32 noundef %134) #11
  br label %irq_err

if.end75:                                         ; preds = %dev_name.exit
  %call76 = tail call i32 @device_init_wakeup(ptr noundef %1, i1 noundef zeroext true) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_stop.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ssusb_gadget_init, %do.end.i)) #8
          to label %if.then.i184 [label %do.end.i], !srcloc !200

if.then.i184:                                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  %135 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev34, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_stop.__UNIQUE_ID_ddebug336, ptr noundef %136, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i184, %if.end75
  tail call fastcc void @mtu3_intr_disable(ptr noundef %call.i) #8
  %137 = ptrtoint ptr %gen2cp.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %bf.load.i185 = load i16, ptr %gen2cp.i, align 4
  %138 = and i16 %bf.load.i185, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %138)
  %tobool4.not.i = icmp eq i16 %138, 0
  br i1 %tobool4.not.i, label %do.end.i.mtu3_stop.exit_crit_edge, label %if.then5.i

do.end.i.mtu3_stop.exit_crit_edge:                ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtu3_stop.exit

if.then5.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mtu3_dev_on_off(ptr noundef %call.i, i32 noundef 0) #8
  br label %mtu3_stop.exit

mtu3_stop.exit:                                   ; preds = %if.then5.i, %do.end.i.mtu3_stop.exit_crit_edge
  %139 = ptrtoint ptr %gen2cp.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %bf.load7.i = load i16, ptr %gen2cp.i, align 4
  %bf.clear8.i = and i16 %bf.load7.i, 32767
  store i16 %bf.clear8.i, ptr %gen2cp.i, align 4
  tail call fastcc void @mtu3_dev_power_down(ptr noundef %call.i) #8
  %call77 = tail call i32 @mtu3_gadget_setup(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end83, label %do.end82

do.end82:                                         ; preds = %mtu3_stop.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.44, i32 noundef %call77) #11
  %call102 = tail call i32 @device_init_wakeup(ptr noundef %1, i1 noundef zeroext false) #8
  br label %irq_err

if.end83:                                         ; preds = %mtu3_stop.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ssusb_dev_debugfs_init(ptr noundef %ssusb) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssusb_gadget_init.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ssusb_gadget_init, %cleanup)) #8
          to label %if.then98 [label %cleanup], !srcloc !200

if.then98:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssusb_gadget_init.__UNIQUE_ID_ddebug352, ptr noundef %1, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.27) #8
  br label %cleanup

irq_err:                                          ; preds = %do.end82, %do.end73, %do.end64
  %ret.0 = phi i32 [ %call.i12.i, %do.end64 ], [ %call.i182, %do.end73 ], [ %call77, %do.end82 ]
  tail call fastcc void @mtu3_hw_exit(ptr noundef nonnull %call.i)
  %140 = ptrtoint ptr %u3d to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr null, ptr %u3d, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.27) #11
  br label %cleanup

cleanup:                                          ; preds = %irq_err, %if.then98, %if.end83, %do.end57, %do.end26, %if.end10.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %do.end26 ], [ %retval.0.i174.ph, %do.end57 ], [ %ret.0, %irq_err ], [ -12, %entry.cleanup_crit_edge ], [ -517, %if.then5.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ 0, %if.then98 ], [ 0, %if.end83 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_maximum_speed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtu3_irq(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %data) #8
  %mac_base = getelementptr inbounds %struct.mtu3, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  %3 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mac_base, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  %6 = and i32 %5, %2
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %and8 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mtu3_link_isr(ptr noundef %data)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and10 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end.if.end14_crit_edge, label %if.then12

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mtu3_u2_common_isr(ptr noundef %data)
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end.if.end14_crit_edge
  %and15 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end19_crit_edge, label %if.then17

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mtu3_u3_ltssm_isr(ptr noundef %data)
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end14.if.end19_crit_edge
  %and20 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.if.end24_crit_edge, label %if.then22

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %call23 = tail call i32 @mtu3_ep0_isr(ptr noundef %data) #8
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end19.if.end24_crit_edge
  %and25 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end29_crit_edge, label %if.then27

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %call28 = tail call i32 @mtu3_qmu_isr(ptr noundef %data) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end24.if.end29_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %data, i32 noundef %call2) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtu3_gadget_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ssusb_dev_debugfs_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtu3_hw_exit(ptr noundef %mtu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ippc_base.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 4
  %0 = ptrtoint ptr %ippc_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ippc_base.i, align 8
  %is_u3_ip.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 23
  %2 = ptrtoint ptr %is_u3_ip.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %is_u3_ip.i, align 4
  %3 = and i16 %bf.load.i, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i = icmp eq i16 %3, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 48
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  tail call void @arm_heavy_mb() #8
  %5 = or i32 %4, 50331648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %5) #8, !srcloc !195
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %add.ptr.i18.i = getelementptr i8, ptr %1, i32 80
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  tail call void @arm_heavy_mb() #8
  %7 = or i32 %6, 50331648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 %7) #8, !srcloc !195
  %ssusb.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 1
  %8 = ptrtoint ptr %ssusb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ssusb.i, align 4
  %dr_mode.i = getelementptr inbounds %struct.ssusb_mtk, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %dr_mode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dr_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp.i = icmp eq i32 %11, 3
  br i1 %cmp.i, label %if.then1.i, label %if.end.i.mtu3_device_disable.exit_crit_edge

if.end.i.mtu3_device_disable.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtu3_device_disable.exit

if.then1.i:                                       ; preds = %if.end.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %13 = and i32 %12, 2147483647
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 %13) #8, !srcloc !195
  %14 = ptrtoint ptr %is_u3_ip.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load3.i = load i16, ptr %is_u3_ip.i, align 4
  %15 = and i16 %bf.load3.i, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool7.not.i = icmp eq i16 %15, 0
  br i1 %tobool7.not.i, label %if.then1.i.mtu3_device_disable.exit_crit_edge, label %if.then8.i

if.then1.i.mtu3_device_disable.exit_crit_edge:    ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtu3_device_disable.exit

if.then8.i:                                       ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i21.i = getelementptr i8, ptr %1, i32 48
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21.i) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %17 = and i32 %16, 2147483647
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 %17) #8, !srcloc !195
  br label %mtu3_device_disable.exit

mtu3_device_disable.exit:                         ; preds = %if.then8.i, %if.then1.i.mtu3_device_disable.exit_crit_edge, %if.end.i.mtu3_device_disable.exit_crit_edge
  %add.ptr.i23.i = getelementptr i8, ptr %1, i32 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23.i) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  tail call void @arm_heavy_mb() #8
  %19 = or i32 %18, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 %19) #8, !srcloc !195
  tail call void @mtu3_qmu_exit(ptr noundef %mtu) #8
  %ep_array.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 8
  %20 = ptrtoint ptr %ep_array.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ep_array.i, align 8
  tail call void @kfree(ptr noundef %21) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ssusb_gadget_exit(ptr nocapture noundef readonly %ssusb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %u3d = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 1
  %0 = ptrtoint ptr %u3d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u3d, align 4
  tail call void @mtu3_gadget_cleanup(ptr noundef %1) #8
  %2 = ptrtoint ptr %ssusb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ssusb, align 4
  %call = tail call i32 @device_init_wakeup(ptr noundef %3, i1 noundef zeroext false) #8
  tail call fastcc void @mtu3_hw_exit(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtu3_gadget_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ssusb_gadget_ip_sleep_check(ptr nocapture noundef readonly %ssusb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %u3d = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 1
  %0 = ptrtoint ptr %u3d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u3d, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %is_active = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %is_active to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %is_active, align 4
  %3 = and i16 %bf.load, -30720
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %3)
  %.not = icmp eq i16 %3, -30720
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %entry.cleanup_crit_edge ], [ %.not, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssusb_gadget_suspend(ptr nocapture noundef readonly %ssusb, [1 x i32] %msg.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %u3d = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 1
  %0 = ptrtoint ptr %u3d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u3d, align 4
  %gadget_driver = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gadget_driver, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %connected = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %connected to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %connected, align 4
  %5 = and i16 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool1.not = icmp eq i16 %5, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not.i = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not.i, label %if.end3.mtu3_dev_suspend.exit_crit_edge, label %if.end.i

if.end3.mtu3_dev_suspend.exit_crit_edge:          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtu3_dev_suspend.exit

if.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mtu3_intr_disable(ptr noundef %1) #8
  tail call fastcc void @mtu3_dev_power_down(ptr noundef %1) #8
  br label %mtu3_dev_suspend.exit

mtu3_dev_suspend.exit:                            ; preds = %if.end.i, %if.end3.mtu3_dev_suspend.exit_crit_edge
  %irq = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  tail call void @synchronize_irq(i32 noundef %7) #8
  br label %cleanup

cleanup:                                          ; preds = %mtu3_dev_suspend.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mtu3_dev_suspend.exit ], [ 0, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssusb_gadget_resume(ptr nocapture noundef readonly %ssusb, [1 x i32] %msg.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %u3d = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 1
  %0 = ptrtoint ptr %u3d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u3d, align 4
  %gadget_driver = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gadget_driver, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_active.i = getelementptr inbounds %struct.mtu3, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %is_active.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %is_active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mtu3_dev_power_on(ptr noundef %1) #8
  tail call fastcc void @mtu3_intr_enable(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_next_zero_area_off(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssusb_check_clocks(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @get_ep_fifo_config(ptr nocapture noundef %mtu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %is_u3_ip = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 23
  %0 = ptrtoint ptr %is_u3_ip to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %is_u3_ip, align 4
  %1 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  %mac_base10 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 3
  %2 = ptrtoint ptr %mac_base10 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac_base10, align 4
  %add.ptr.i71 = getelementptr i8, ptr %3, i32 3080
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i71) #8
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  %tx_fifo12 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 6
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %tx_fifo12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %tx_fifo12, align 4
  %div68 = lshr i32 %5, 9
  %limit = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %limit to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div68, ptr %limit, align 4
  %bitmap = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 6, i32 2
  %8 = call ptr @memset(ptr %bitmap, i32 0, i32 16)
  %9 = ptrtoint ptr %mac_base10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mac_base10, align 4
  %add.ptr.i70 = getelementptr i8, ptr %10, i32 3084
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i70) #8, !srcloc !192
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  %rx_fifo4 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 7
  %13 = ptrtoint ptr %rx_fifo4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %rx_fifo4, align 4
  %div669 = lshr i32 %12, 9
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %tx_fifo12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 64, ptr %tx_fifo12, align 4
  %div1467 = lshr i32 %5, 10
  %limit15 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %limit15 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div1467, ptr %limit15, align 4
  %bitmap16 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 6, i32 2
  %16 = call ptr @memset(ptr %bitmap16, i32 0, i32 16)
  %rx_fifo18 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 7
  %mul = shl nuw nsw i32 %div1467, 9
  %add = or i32 %mul, 64
  %17 = ptrtoint ptr %rx_fifo18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add, ptr %rx_fifo18, align 4
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then
  %div669.sink = phi i32 [ %div1467, %if.else ], [ %div669, %if.then ]
  %.sink = phi i32 [ 1, %if.else ], [ 2, %if.then ]
  %rx_fifo.0 = phi ptr [ %rx_fifo18, %if.else ], [ %rx_fifo4, %if.then ]
  %bitmap8 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 7, i32 2
  %18 = call ptr @memset(ptr %bitmap8, i32 0, i32 16)
  %19 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 7, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div669.sink, ptr %19, align 4
  %21 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 13
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink, ptr %21, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_ep_fifo_config.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@get_ep_fifo_config, %do.end)) #8
          to label %if.then32 [label %do.end], !srcloc !200

if.then32:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 8
  %25 = ptrtoint ptr %tx_fifo12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_fifo12, align 4
  %limit34 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 6, i32 1
  %27 = ptrtoint ptr %limit34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %limit34, align 4
  %29 = ptrtoint ptr %rx_fifo.0 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_fifo.0, align 4
  %31 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %19, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_ep_fifo_config.__UNIQUE_ID_ddebug343, ptr noundef %24, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.75, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %32) #8
  br label %do.end

do.end:                                           ; preds = %if.then32, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtu3_qmu_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtu3_link_isr(ptr noundef %mtu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_base = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 3
  %0 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_base, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2132
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  %add.ptr.i4 = getelementptr i8, ptr %1, i32 2128
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  %4 = and i32 %3, %2
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #8, !srcloc !195
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_link_isr.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_link_isr, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !200

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_link_isr.__UNIQUE_ID_ddebug347, ptr noundef %7, ptr noundef nonnull @.str.82, i32 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and6 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %do.end.cleanup_crit_edge, label %if.end9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %add.ptr.i6 = getelementptr i8, ptr %1, i32 2048
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #8, !srcloc !192
  %9 = lshr i32 %8, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  %and11 = and i32 %9, 7
  %10 = zext i32 %and11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %and11, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb12
    i32 4, label %if.end9.do.body15_crit_edge
    i32 5, label %sw.bb14
  ]

if.end9.do.body15_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body15

sw.bb:                                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  %add.ptr.i7 = getelementptr i8, ptr %1, i32 9284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 -257687552) #8, !srcloc !195
  %add.ptr.i8 = getelementptr i8, ptr %1, i32 9220
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  tail call void @arm_heavy_mb() #8
  %12 = or i32 %11, 6291456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %12) #8, !srcloc !195
  br label %do.body15

sw.bb12:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  %add.ptr.i9 = getelementptr i8, ptr %1, i32 9284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 -257687552) #8, !srcloc !195
  %add.ptr.i10 = getelementptr i8, ptr %1, i32 9220
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  tail call void @arm_heavy_mb() #8
  %14 = or i32 %13, 6291456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %14) #8, !srcloc !195
  br label %do.body15

sw.bb14:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body15

sw.default:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body15

do.body15:                                        ; preds = %sw.default, %sw.bb14, %sw.bb12, %sw.bb, %if.end9.do.body15_crit_edge
  %maxpkt.0 = phi i32 [ 64, %sw.default ], [ 512, %sw.bb14 ], [ 64, %sw.bb12 ], [ 64, %sw.bb ], [ 512, %if.end9.do.body15_crit_edge ]
  %cmp = phi i16 [ 0, %sw.default ], [ 32, %sw.bb14 ], [ 32, %sw.bb12 ], [ 32, %sw.bb ], [ 32, %if.end9.do.body15_crit_edge ]
  %cmp49 = phi i1 [ true, %sw.default ], [ false, %sw.bb14 ], [ false, %sw.bb12 ], [ false, %sw.bb ], [ false, %if.end9.do.body15_crit_edge ]
  %udev_speed.0 = phi i32 [ 0, %sw.default ], [ 6, %sw.bb14 ], [ 3, %sw.bb12 ], [ 2, %sw.bb ], [ 5, %if.end9.do.body15_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_link_isr.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_link_isr, %do.end34)) #8
          to label %if.then29 [label %do.end34], !srcloc !200

if.then29:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  %dev30 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %15 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev30, align 8
  %call31 = tail call ptr @usb_speed_string(i32 noundef %udev_speed.0) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_link_isr.__UNIQUE_ID_ddebug348, ptr noundef %16, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.81, ptr noundef %call31) #8
  br label %do.end34

do.end34:                                         ; preds = %if.then29, %do.body15
  %dev35 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %17 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev35, align 8
  %call36 = tail call ptr @usb_speed_string(i32 noundef %udev_speed.0) #8
  tail call void (ptr, ptr, ...) @mtu3_dbg_trace(ptr noundef %18, ptr noundef nonnull @.str.83, ptr noundef %call36) #8
  %speed37 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 17, i32 5
  %19 = ptrtoint ptr %speed37 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %udev_speed.0, ptr %speed37, align 8
  %ep0 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 17, i32 3
  %20 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ep0, align 4
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %21, i32 0, i32 7
  %22 = zext i32 %maxpkt.0 to i56
  %23 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %23, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.shl = shl nuw nsw i56 %22, 40
  %bf.clear = and i56 %bf.load, 1099511627775
  %bf.set = or i56 %bf.clear, %bf.shl
  store i56 %bf.set, ptr %maxpacket, align 2
  %ep0_state = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 16
  %24 = ptrtoint ptr %ep0_state to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %ep0_state, align 8
  %connected = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 23
  %25 = ptrtoint ptr %connected to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load43 = load i16, ptr %connected, align 4
  %bf.clear46 = and i16 %bf.load43, -33
  %bf.set47 = or i16 %bf.clear46, %cmp
  store i16 %bf.set47, ptr %connected, align 4
  br i1 %cmp49, label %if.then50, label %if.else

if.then50:                                        ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mtu3_gadget_disconnect(ptr noundef %mtu) #8
  %26 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev35, align 8
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %27, i32 noundef 5) #8
  br label %cleanup

if.else:                                          ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev35, align 8
  %call.i12 = tail call i32 @__pm_runtime_resume(ptr noundef %29, i32 noundef 5) #8
  tail call fastcc void @mtu3_ep0_setup(ptr noundef %mtu)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then50, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtu3_u2_common_isr(ptr noundef %mtu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_base = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 3
  %0 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_base, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 9244
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  %add.ptr.i1 = getelementptr i8, ptr %1, i32 9240
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  %4 = and i32 %3, %2
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #8, !srcloc !195
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_u2_common_isr.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_u2_common_isr, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !200

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_u2_common_isr.__UNIQUE_ID_ddebug350, ptr noundef %7, ptr noundef nonnull @.str.87, i32 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @trace_mtu3_u2_common_isr(i32 noundef %5)
  %and6 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %do.end.if.end9_crit_edge, label %if.then8

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mtu3_gadget_suspend(ptr noundef %mtu) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %do.end.if.end9_crit_edge
  %and10 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end13_crit_edge, label %if.then12

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mtu3_gadget_resume(ptr noundef %mtu) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end9.if.end13_crit_edge
  %and14 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end17_crit_edge, label %if.then16

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mtu3_gadget_reset(ptr noundef %mtu) #8
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end13.if.end17_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtu3_u3_ltssm_isr(ptr noundef %mtu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_base = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 3
  %0 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_base, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 5440
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  %add.ptr.i1 = getelementptr i8, ptr %1, i32 5436
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  %4 = and i32 %3, %2
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #8, !srcloc !195
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_u3_ltssm_isr.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_u3_ltssm_isr, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !200

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_u3_ltssm_isr.__UNIQUE_ID_ddebug349, ptr noundef %7, ptr noundef nonnull @.str.92, i32 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @trace_mtu3_u3_ltssm_isr(i32 noundef %5)
  %and6 = and i32 %5, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %do.end.if.end9_crit_edge, label %if.then8

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mtu3_gadget_reset(ptr noundef %mtu) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %do.end.if.end9_crit_edge
  %and10 = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end13_crit_edge, label %if.then12

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then12:                                        ; preds = %if.end9
  %8 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mac_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 5148
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %11 = and i32 %10, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %11) #8, !srcloc !195
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_ss_func_set.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_u3_ltssm_isr, %mtu3_ss_func_set.exit)) #8
          to label %if.then7.i [label %mtu3_ss_func_set.exit], !srcloc !200

if.then7.i:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_ss_func_set.__UNIQUE_ID_ddebug331, ptr noundef %13, ptr noundef nonnull @.str.51, i32 noundef 0) #8
  br label %mtu3_ss_func_set.exit

mtu3_ss_func_set.exit:                            ; preds = %if.then7.i, %if.then12
  tail call void @mtu3_gadget_reset(ptr noundef %mtu) #8
  br label %if.end13

if.end13:                                         ; preds = %mtu3_ss_func_set.exit, %if.end9.if.end13_crit_edge
  %and14 = and i32 %5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end17_crit_edge, label %if.then16

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mac_base, align 4
  %add.ptr.i.i4 = getelementptr i8, ptr %15, i32 5148
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %17 = or i32 %16, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i4, i32 %17) #8, !srcloc !195
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_ss_func_set.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_u3_ltssm_isr, %if.end17)) #8
          to label %if.then7.i6 [label %if.end17], !srcloc !200

if.then7.i6:                                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i5 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %18 = ptrtoint ptr %dev.i5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i5, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_ss_func_set.__UNIQUE_ID_ddebug331, ptr noundef %19, ptr noundef nonnull @.str.51, i32 noundef 1) #8
  br label %if.end17

if.end17:                                         ; preds = %if.then7.i6, %if.then16, %if.end13.if.end17_crit_edge
  %and18 = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end21_crit_edge, label %if.then20

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mtu3_gadget_resume(ptr noundef %mtu) #8
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end17.if.end21_crit_edge
  %and22 = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end21.if.end25_crit_edge, label %if.then24

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mtu3_gadget_suspend(ptr noundef %mtu) #8
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end21.if.end25_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtu3_ep0_isr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtu3_qmu_isr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtu3_dbg_trace(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtu3_gadget_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtu3_ep0_setup(ptr nocapture noundef readonly %mtu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ep0 = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 17, i32 3
  %0 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep0, align 4
  %maxpacket1 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %maxpacket1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 7)
  %bf.load = load i56, ptr %maxpacket1, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_ep0_setup.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_ep0_setup, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !200

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 2
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_ep0_setup.__UNIQUE_ID_ddebug344, ptr noundef %4, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.84, i32 noundef %bf.cast) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mac_base = getelementptr inbounds %struct.mtu3, ptr %mtu, i32 0, i32 3
  %5 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mac_base, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 256
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  %8 = and i32 %7, 16563455
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %and6 = and i32 %bf.cast, 1023
  %or = or i32 %9, %and6
  %10 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mac_base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %add.ptr.i18 = getelementptr i8, ptr %11, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %12) #8, !srcloc !195
  %13 = ptrtoint ptr %mac_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mac_base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  %add.ptr.i19 = getelementptr i8, ptr %14, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 16777472) #8, !srcloc !195
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mtu3_u2_common_isr(i32 noundef %intr) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_u2_common_isr, i32 0, i32 1), ptr blockaddress(@trace_mtu3_u2_common_isr, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !200

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !182) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !203

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.90, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !182) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !204
  %call42 = tail call i32 @__traceiter_mtu3_u2_common_isr(ptr noundef null, i32 noundef %intr) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !205
  %13 = tail call i32 @llvm.read_register.i32(metadata !182) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !182) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !203

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.90, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !182) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !206
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_u2_common_isr, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_u2_common_isr, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mtu3_u2_common_isr.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_mtu3_u2_common_isr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.88, i32 noundef 70, ptr noundef nonnull @.str.89) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !207
  %31 = tail call i32 @llvm.read_register.i32(metadata !182) #8
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
declare dso_local void @mtu3_gadget_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtu3_gadget_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtu3_gadget_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mtu3_u2_common_isr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mtu3_u3_ltssm_isr(i32 noundef %intr) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_u3_ltssm_isr, i32 0, i32 1), ptr blockaddress(@trace_mtu3_u3_ltssm_isr, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !200

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !182) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !203

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.90, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !182) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !208
  %call42 = tail call i32 @__traceiter_mtu3_u3_ltssm_isr(ptr noundef null, i32 noundef %intr) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !209
  %13 = tail call i32 @llvm.read_register.i32(metadata !182) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !182) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !203

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.90, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !182) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !206
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_u3_ltssm_isr, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mtu3_u3_ltssm_isr, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mtu3_u3_ltssm_isr.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_mtu3_u3_ltssm_isr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.88, i32 noundef 54, ptr noundef nonnull @.str.89) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !207
  %31 = tail call i32 @llvm.read_register.i32(metadata !182) #8
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
declare dso_local i32 @__traceiter_mtu3_u3_ltssm_isr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtu3_qmu_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !53, !54, !55, !56, !58, !60, !61, !62, !64, !65, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !104, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !120, !121, !122, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !148, !149, !150, !151, !153, !154, !155, !157, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !172, !174, !175, !177, !178, !179, !181}
!llvm.named.register.sp = !{!182}
!llvm.module.flags = !{!183, !184, !185, !186, !187, !188, !189, !190}
!llvm.ident = !{!191}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/mtu3/mtu3_core.c", i32 338, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mtu3_ep_stall_set.__UNIQUE_ID_ddebug334, !1, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/usb/mtu3/mtu3_core.c", i32 349, i32 2}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.9, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @mtu3_dev_on_off._entry, !9, !"_entry", i1 false, i1 false}
!14 = !{ptr @mtu3_dev_on_off._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.10, !9, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.11, !9, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/mtu3/mtu3_core.c", i32 357, i32 2}
!19 = !{ptr @.str.13, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mtu3_start.__UNIQUE_ID_ddebug335, !18, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!21 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/mtu3/mtu3_core.c", i32 374, i32 2}
!23 = !{ptr @.str.15, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mtu3_stop.__UNIQUE_ID_ddebug336, !22, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/mtu3/mtu3_core.c", i32 416, i32 3}
!27 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.18, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @mtu3_config_ep._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @mtu3_config_ep._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/mtu3/mtu3_core.c", i32 420, i32 2}
!33 = !{ptr @mtu3_config_ep.__UNIQUE_ID_ddebug337, !32, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/mtu3/mtu3_core.c", i32 455, i32 3}
!36 = !{ptr @mtu3_config_ep.__UNIQUE_ID_ddebug338, !35, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/mtu3/mtu3_core.c", i32 491, i32 3}
!39 = !{ptr @mtu3_config_ep.__UNIQUE_ID_ddebug339, !38, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/mtu3/mtu3_core.c", i32 497, i32 2}
!42 = !{ptr @mtu3_config_ep.__UNIQUE_ID_ddebug340, !41, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/mtu3/mtu3_core.c", i32 498, i32 2}
!45 = !{ptr @mtu3_config_ep.__UNIQUE_ID_ddebug341, !44, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/mtu3/mtu3_core.c", i32 526, i32 2}
!48 = !{ptr @mtu3_deconfig_ep.__UNIQUE_ID_ddebug342, !47, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/mtu3/mtu3_core.c", i32 927, i32 52}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/mtu3/mtu3_core.c", i32 937, i32 2}
!53 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @ssusb_gadget_init._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @ssusb_gadget_init._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/mtu3/mtu3_core.c", i32 939, i32 62}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/mtu3/mtu3_core.c", i32 941, i32 3}
!60 = !{ptr @ssusb_gadget_init._entry.29, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @ssusb_gadget_init._entry_ptr.31, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @ssusb_gadget_init.__key, !63, !"__key", i1 false, i1 false}
!63 = !{!"../drivers/usb/mtu3/mtu3_core.c", i32 945, i32 2}
!64 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/mtu3/mtu3_core.c", i32 953, i32 2}
!67 = !{ptr @ssusb_gadget_init.__UNIQUE_ID_ddebug351, !66, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/mtu3/mtu3_core.c", i32 958, i32 3}
!70 = !{ptr @ssusb_gadget_init._entry.34, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @ssusb_gadget_init._entry_ptr.36, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/mtu3/mtu3_core.c", i32 964, i32 3}
!74 = !{ptr @ssusb_gadget_init._entry.37, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @ssusb_gadget_init._entry_ptr.39, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/mtu3/mtu3_core.c", i32 970, i32 3}
!78 = !{ptr @ssusb_gadget_init._entry.40, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @ssusb_gadget_init._entry_ptr.42, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/mtu3/mtu3_core.c", i32 981, i32 3}
!82 = !{ptr @ssusb_gadget_init._entry.43, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @ssusb_gadget_init._entry_ptr.45, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.46, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/mtu3/mtu3_core.c", i32 987, i32 2}
!86 = !{ptr @ssusb_gadget_init.__UNIQUE_ID_ddebug352, !85, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!87 = !{ptr @.str.48, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/mtu3/mtu3_core.c", i32 998, i32 2}
!89 = !{ptr @ssusb_gadget_init._entry.47, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @ssusb_gadget_init._entry_ptr.49, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.50, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/usb/mtu3/mtu3_core.c", i32 79, i32 2}
!93 = !{ptr @.str.51, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @mtu3_ss_func_set.__UNIQUE_ID_ddebug331, !92, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!95 = !{ptr @.str.52, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/usb/mtu3/mtu3_core.c", i32 92, i32 2}
!97 = !{ptr @.str.53, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @mtu3_hs_softconn_set.__UNIQUE_ID_ddebug332, !96, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!99 = !{ptr @.str.54, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/usb/mtu3/mtu3_core.c", i32 262, i32 3}
!101 = !{ptr @.str.55, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @mtu3_set_speed._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @mtu3_set_speed._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.56, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/mtu3/mtu3_core.c", i32 268, i32 2}
!106 = !{ptr @mtu3_set_speed.__UNIQUE_ID_ddebug333, !105, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!107 = !{ptr @.str.57, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/usb/mtu3/mtu3_core.c", i32 45, i32 2}
!109 = !{ptr @.str.58, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @ep_fifo_alloc.__UNIQUE_ID_ddebug329, !108, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!111 = !{ptr @.str.59, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/usb/mtu3/mtu3_core.c", i32 66, i32 2}
!113 = !{ptr @.str.60, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @ep_fifo_free.__UNIQUE_ID_ddebug330, !112, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!115 = !{ptr @.str.61, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/usb/mtu3/mtu3_core.c", i32 862, i32 2}
!117 = !{ptr @.str.62, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @mtu3_hw_init._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @mtu3_hw_init._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.63, !116, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.64, !116, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.66, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/usb/mtu3/mtu3_core.c", i32 871, i32 3}
!124 = !{ptr @mtu3_hw_init._entry.65, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @mtu3_hw_init._entry_ptr.67, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.68, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/usb/mtu3/mtu3_core.c", i32 832, i32 3}
!128 = !{ptr @.str.69, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @mtu3_check_params._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @mtu3_check_params._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.71, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/usb/mtu3/mtu3_core.c", i32 846, i32 2}
!133 = !{ptr @mtu3_check_params._entry.70, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @mtu3_check_params._entry_ptr.72, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.73, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/usb/mtu3/mtu3_core.c", i32 610, i32 2}
!137 = !{ptr @.str.74, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @mtu3_mem_alloc._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @mtu3_mem_alloc._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.75, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/usb/mtu3/mtu3_core.c", i32 575, i32 2}
!142 = !{ptr @.str.76, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @get_ep_fifo_config.__UNIQUE_ID_ddebug343, !141, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!144 = !{ptr @.str.77, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/usb/mtu3/mtu3_core.c", i32 911, i32 2}
!146 = !{ptr @.str.78, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @mtu3_set_dma_mask._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @mtu3_set_dma_mask._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.79, !145, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.80, !145, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.81, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/usb/mtu3/mtu3_core.c", i32 680, i32 2}
!153 = !{ptr @.str.82, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @mtu3_link_isr.__UNIQUE_ID_ddebug347, !152, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!155 = !{ptr @mtu3_link_isr.__UNIQUE_ID_ddebug348, !156, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!156 = !{!"../drivers/usb/mtu3/mtu3_core.c", i32 716, i32 2}
!157 = !{ptr @.str.83, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/usb/mtu3/mtu3_core.c", i32 717, i32 27}
!159 = !{ptr @.str.84, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/usb/mtu3/mtu3_core.c", i32 585, i32 2}
!161 = !{ptr @.str.85, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @mtu3_ep0_setup.__UNIQUE_ID_ddebug344, !160, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!163 = !{ptr @.str.86, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/usb/mtu3/mtu3_core.c", i32 775, i32 2}
!165 = !{ptr @.str.87, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @mtu3_u2_common_isr.__UNIQUE_ID_ddebug350, !164, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!167 = distinct !{null, !168, !"__already_done", i1 false, i1 false}
!168 = !{!"../drivers/usb/mtu3/mtu3_trace.h", i32 56, i32 1}
!169 = !{ptr @.str.88, !168, !"<string literal>", i1 false, i1 false}
!170 = distinct !{null, !168, !"__warned", i1 false, i1 false}
!171 = !{ptr @.str.89, !168, !"<string literal>", i1 false, i1 false}
!172 = distinct !{null, !173, !"__already_done", i1 false, i1 false}
!173 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!174 = !{ptr @.str.90, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.91, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/usb/mtu3/mtu3_core.c", i32 744, i32 2}
!177 = !{ptr @.str.92, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @mtu3_u3_ltssm_isr.__UNIQUE_ID_ddebug349, !176, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!179 = distinct !{null, !180, !"__already_done", i1 false, i1 false}
!180 = !{!"../drivers/usb/mtu3/mtu3_trace.h", i32 37, i32 1}
!181 = distinct !{null, !180, !"__warned", i1 false, i1 false}
!182 = !{!"sp"}
!183 = !{i32 1, !"wchar_size", i32 2}
!184 = !{i32 1, !"min_enum_size", i32 4}
!185 = !{i32 8, !"branch-target-enforcement", i32 0}
!186 = !{i32 8, !"sign-return-address", i32 0}
!187 = !{i32 8, !"sign-return-address-all", i32 0}
!188 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!189 = !{i32 7, !"uwtable", i32 1}
!190 = !{i32 7, !"frame-pointer", i32 2}
!191 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!192 = !{i64 6242427}
!193 = !{i64 2155431532}
!194 = !{i64 2155430719}
!195 = !{i64 6242009}
!196 = !{i64 2155432135}
!197 = !{i64 2155432347}
!198 = !{i64 2155433145}
!199 = !{i64 2155433358}
!200 = !{i64 2148346944, i64 2148346949, i64 2148346962, i64 2148347006, i64 2148347040, i64 2148347061}
!201 = !{i32 0, i32 33}
!202 = !{!"branch_weights", i32 1, i32 2000}
!203 = !{!"branch_weights", i32 2000, i32 1}
!204 = !{i64 2155564068}
!205 = !{i64 2155564275}
!206 = !{i64 2149345707}
!207 = !{i64 2149346743}
!208 = !{i64 2155548018}
!209 = !{i64 2155548223}
