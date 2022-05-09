; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/udc/r8a66597-udc.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/r8a66597-udc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.r8a66597 = type { %struct.spinlock, ptr, ptr, ptr, ptr, %struct.usb_gadget, ptr, [8 x %struct.r8a66597_ep], [8 x ptr], [16 x ptr], %struct.r8a66597_dma, %struct.timer_list, ptr, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.r8a66597_ep = type { %struct.usb_ep, ptr, ptr, %struct.list_head, i8, i16, i16, i8, i8, i8, i8, i8, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.r8a66597_dma = type { i8, [3 x i8] }
%struct.r8a66597_platdata = type { ptr, i16, i8 }
%struct.r8a66597_request = type { %struct.usb_request, %struct.list_head }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>

@__initcall__kmod_r8a66597_udc__242_1975_r8a66597_driver_init6 = internal global ptr @r8a66597_driver_init, section ".initcall6.init", align 4
@r8a66597_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr @r8a66597_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @udc_name, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_r8a66597_driver_exit = internal global ptr @r8a66597_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description243 = internal constant [52 x i8] c"r8a66597_udc.description=R8A66597 USB gadget driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [54 x i8] c"r8a66597_udc.file=drivers/usb/gadget/udc/r8a66597-udc\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [25 x i8] c"r8a66597_udc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author246 = internal constant [38 x i8] c"r8a66597_udc.author=Yoshihiro Shimoda\00", section ".modinfo", align 1
@__UNIQUE_ID_alias247 = internal constant [41 x i8] c"r8a66597_udc.alias=platform:r8a66597_udc\00", section ".modinfo", align 1
@r8a66597_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1858, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"platform_get_irq error.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"r8a66597_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/usb/gadget/udc/r8a66597-udc.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@r8a66597_probe._entry_ptr = internal global ptr @r8a66597_probe._entry, section ".printk_index", align 4
@r8a66597_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&r8a66597->lock\00", [16 x i8] zeroinitializer }, align 32
@r8a66597_gadget_ops = internal constant { %struct.usb_gadget_ops, [36 x i8] } { %struct.usb_gadget_ops { ptr @r8a66597_get_frame, ptr null, ptr @r8a66597_set_selfpowered, ptr null, ptr null, ptr @r8a66597_pullup, ptr null, ptr null, ptr @r8a66597_start, ptr @r8a66597_stop, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@udc_name = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"r8a66597_udc\00", [19 x i8] zeroinitializer }, align 32
@r8a66597_probe.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&r8a66597->timer)\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"usb%d\00", [26 x i8] zeroinitializer }, align 32
@r8a66597_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 1883, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot get clock \22%s\22\0A\00", [41 x i8] zeroinitializer }, align 32
@r8a66597_probe._entry_ptr.11 = internal global ptr @r8a66597_probe._entry.9, section ".printk_index", align 4
@r8a66597_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 1900, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"request_irq error (%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@r8a66597_probe._entry_ptr.14 = internal global ptr @r8a66597_probe._entry.12, section ".printk_index", align 4
@r8a66597_ep_name = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57], [56 x i8] zeroinitializer }, align 32
@r8a66597_ep_ops = internal constant { %struct.usb_ep_ops, [52 x i8] } { %struct.usb_ep_ops { ptr @r8a66597_enable, ptr @r8a66597_disable, ptr null, ptr @r8a66597_alloc_request, ptr @r8a66597_free_request, ptr @r8a66597_queue, ptr @r8a66597_dequeue, ptr @r8a66597_set_halt, ptr @r8a66597_set_wedge, ptr null, ptr @r8a66597_fifo_flush }, [52 x i8] zeroinitializer }, align 32
@r8a66597_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 1952, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"version %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@r8a66597_probe._entry_ptr.18 = internal global ptr @r8a66597_probe._entry.15, section ".printk_index", align 4
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2011-09-26\00", [21 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@get_xtal_from_pdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.22, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013r8a66597: platdata clock is wrong.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"get_xtal_from_pdata\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/usb/gadget/udc/r8a66597-udc.h\00", [58 x i8] zeroinitializer }, align 32
@get_xtal_from_pdata._entry_ptr = internal global ptr @get_xtal_from_pdata._entry, section ".printk_index", align 4
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sudmac\00", [25 x i8] zeroinitializer }, align 32
@sudmac_finish._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 1415, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: FRDY was not set (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sudmac_finish\00", [18 x i8] zeroinitializer }, align 32
@sudmac_finish._entry_ptr = internal global ptr @sudmac_finish._entry, section ".printk_index", align 4
@r8a66597_change_curpipe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 289, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"r8a66597: register%x, loop %x is timeout\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"r8a66597_change_curpipe\00", [40 x i8] zeroinitializer }, align 32
@r8a66597_change_curpipe._entry_ptr = internal global ptr @r8a66597_change_curpipe._entry, section ".printk_index", align 4
@control_reg_set_pid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 131, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unexpect pipe num (%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"control_reg_set_pid\00", [44 x i8] zeroinitializer }, align 32
@control_reg_set_pid._entry_ptr = internal global ptr @control_reg_set_pid._entry, section ".printk_index", align 4
@control_reg_sqmon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 213, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unexpect pipe num(%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"control_reg_sqmon\00", [46 x i8] zeroinitializer }, align 32
@control_reg_sqmon._entry_ptr = internal global ptr @control_reg_sqmon._entry, section ".printk_index", align 4
@control_reg_sqset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.32, ptr @.str.2, i32 198, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"control_reg_sqset\00", [46 x i8] zeroinitializer }, align 32
@control_reg_sqset._entry_ptr = internal global ptr @control_reg_sqset._entry, section ".printk_index", align 4
@control_reg_sqclr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.33, ptr @.str.2, i32 181, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"control_reg_sqclr\00", [46 x i8] zeroinitializer }, align 32
@control_reg_sqclr._entry_ptr = internal global ptr @control_reg_sqclr._entry, section ".printk_index", align 4
@irq_packet_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 1005, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"write fifo not ready. pipnum=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"irq_packet_write\00", [47 x i8] zeroinitializer }, align 32
@irq_packet_write._entry_ptr = internal global ptr @irq_packet_write._entry, section ".printk_index", align 4
@r8a66597_update_usb_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 1331, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"USB speed unknown\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"r8a66597_update_usb_speed\00", [38 x i8] zeroinitializer }, align 32
@r8a66597_update_usb_speed._entry_ptr = internal global ptr @r8a66597_update_usb_speed._entry, section ".printk_index", align 4
@irq_packet_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 1055, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"read fifo not ready\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"irq_packet_read\00", [16 x i8] zeroinitializer }, align 32
@irq_packet_read._entry_ptr = internal global ptr @irq_packet_read._entry, section ".printk_index", align 4
@irq_ep0_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 954, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"pipe0 is busy. maybe cpu i/o bus conflict. please power off this controller.\00", [51 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"irq_ep0_write\00", [18 x i8] zeroinitializer }, align 32
@irq_ep0_write._entry_ptr = internal global ptr @irq_ep0_write._entry, section ".printk_index", align 4
@control_reg_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.42, ptr @.str.2, i32 162, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"control_reg_get\00", [16 x i8] zeroinitializer }, align 32
@control_reg_get._entry_ptr = internal global ptr @control_reg_get._entry, section ".printk_index", align 4
@irq_control_stage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 1395, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ctrl_stage: unexpect ctsq(%x)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"irq_control_stage\00", [46 x i8] zeroinitializer }, align 32
@irq_control_stage._entry_ptr = internal global ptr @irq_control_stage._entry, section ".printk_index", align 4
@control_reg_get_pid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.45, ptr @.str.2, i32 113, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"control_reg_get_pid\00", [44 x i8] zeroinitializer }, align 32
@control_reg_get_pid._entry_ptr = internal global ptr @control_reg_get_pid._entry, section ".printk_index", align 4
@start_ep0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 795, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"start_ep0: unexpect ctsq(%x)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"start_ep0\00", [22 x i8] zeroinitializer }, align 32
@start_ep0._entry_ptr = internal global ptr @start_ep0._entry, section ".printk_index", align 4
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep0\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep1\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep2\00", [28 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep3\00", [28 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep4\00", [28 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep5\00", [28 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep6\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep7\00", [28 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep8\00", [28 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep9\00", [28 x i8] zeroinitializer }, align 32
@alloc_pipe_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 469, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bulk pipe is insufficient\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"alloc_pipe_config\00", [46 x i8] zeroinitializer }, align 32
@alloc_pipe_config._entry_ptr = internal global ptr @alloc_pipe_config._entry, section ".printk_index", align 4
@alloc_pipe_config._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.2, i32 486, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"interrupt pipe is insufficient\0A\00", [32 x i8] zeroinitializer }, align 32
@alloc_pipe_config._entry_ptr.62 = internal global ptr @alloc_pipe_config._entry.60, section ".printk_index", align 4
@alloc_pipe_config._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.59, ptr @.str.2, i32 496, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"isochronous pipe is insufficient\0A\00", [62 x i8] zeroinitializer }, align 32
@alloc_pipe_config._entry_ptr.65 = internal global ptr @alloc_pipe_config._entry.63, section ".printk_index", align 4
@alloc_pipe_config._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.59, ptr @.str.2, i32 504, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unexpect xfer type\0A\00", [44 x i8] zeroinitializer }, align 32
@alloc_pipe_config._entry_ptr.68 = internal global ptr @alloc_pipe_config._entry.66, section ".printk_index", align 4
@alloc_pipe_config._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.59, ptr @.str.2, i32 520, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pipe_buffer_setting fail\0A\00", [38 x i8] zeroinitializer }, align 32
@alloc_pipe_config._entry_ptr.71 = internal global ptr @alloc_pipe_config._entry.69, section ".printk_index", align 4
@pipe_buffer_setting._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013r8a66597 pipe memory is insufficient\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pipe_buffer_setting\00", [44 x i8] zeroinitializer }, align 32
@pipe_buffer_setting._entry_ptr = internal global ptr @pipe_buffer_setting._entry, section ".printk_index", align 4
@pipe_buffer_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 387, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ep_release: unexpect pipenum (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pipe_buffer_release\00", [44 x i8] zeroinitializer }, align 32
@pipe_buffer_release._entry_ptr = internal global ptr @pipe_buffer_release._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 3, i64 2, i64 3]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 3, i64 2, i64 3]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 7, i64 32, i64 48]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 3, i64 2, i64 3]
@__sancov_gen_cov_switch_values.79 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.81 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.86 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 49152]
@___asan_gen_.87 = private unnamed_addr constant [16 x i8] c"r8a66597_driver\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1968, i32 31 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1858, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1867, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [20 x i8] c"r8a66597_gadget_ops\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1800, i32 36 }
@___asan_gen_.117 = private unnamed_addr constant [9 x i8] c"udc_name\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 27, i32 19 }
@___asan_gen_.120 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1876, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1880, i32 40 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1883, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1900, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"r8a66597_ep_name\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 28, i32 20 }
@___asan_gen_.144 = private unnamed_addr constant [16 x i8] c"r8a66597_ep_ops\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1706, i32 32 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1952, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant [41 x i8] c"../drivers/usb/gadget/udc/r8a66597-udc.h\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 250, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1831, i32 47 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1413, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 287, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 130, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 212, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 197, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 180, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1004, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1331, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1055, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 952, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 161, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1394, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 112, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 794, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 29, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 29, i32 9 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 29, i32 16 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 29, i32 23 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 29, i32 30 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 29, i32 37 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 29, i32 44 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 29, i32 51 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 30, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 30, i32 9 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 468, i32 5 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 485, i32 4 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 495, i32 4 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 504, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 519, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 357, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.366 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.367 = private constant [41 x i8] c"../drivers/usb/gadget/udc/r8a66597-udc.c\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 386, i32 3 }
@llvm.compiler.used = appending global [128 x ptr] [ptr @__UNIQUE_ID_alias247, ptr @__UNIQUE_ID_author246, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__exitcall_r8a66597_driver_exit, ptr @__initcall__kmod_r8a66597_udc__242_1975_r8a66597_driver_init6, ptr @alloc_pipe_config._entry, ptr @alloc_pipe_config._entry.60, ptr @alloc_pipe_config._entry.63, ptr @alloc_pipe_config._entry.66, ptr @alloc_pipe_config._entry.69, ptr @alloc_pipe_config._entry_ptr, ptr @alloc_pipe_config._entry_ptr.62, ptr @alloc_pipe_config._entry_ptr.65, ptr @alloc_pipe_config._entry_ptr.68, ptr @alloc_pipe_config._entry_ptr.71, ptr @control_reg_get._entry, ptr @control_reg_get._entry_ptr, ptr @control_reg_get_pid._entry, ptr @control_reg_get_pid._entry_ptr, ptr @control_reg_set_pid._entry, ptr @control_reg_set_pid._entry_ptr, ptr @control_reg_sqclr._entry, ptr @control_reg_sqclr._entry_ptr, ptr @control_reg_sqmon._entry, ptr @control_reg_sqmon._entry_ptr, ptr @control_reg_sqset._entry, ptr @control_reg_sqset._entry_ptr, ptr @get_xtal_from_pdata._entry, ptr @get_xtal_from_pdata._entry_ptr, ptr @irq_control_stage._entry, ptr @irq_control_stage._entry_ptr, ptr @irq_ep0_write._entry, ptr @irq_ep0_write._entry_ptr, ptr @irq_packet_read._entry, ptr @irq_packet_read._entry_ptr, ptr @irq_packet_write._entry, ptr @irq_packet_write._entry_ptr, ptr @pipe_buffer_release._entry, ptr @pipe_buffer_release._entry_ptr, ptr @pipe_buffer_setting._entry, ptr @pipe_buffer_setting._entry_ptr, ptr @r8a66597_change_curpipe._entry, ptr @r8a66597_change_curpipe._entry_ptr, ptr @r8a66597_driver_exit, ptr @r8a66597_probe._entry, ptr @r8a66597_probe._entry.12, ptr @r8a66597_probe._entry.15, ptr @r8a66597_probe._entry.9, ptr @r8a66597_probe._entry_ptr, ptr @r8a66597_probe._entry_ptr.11, ptr @r8a66597_probe._entry_ptr.14, ptr @r8a66597_probe._entry_ptr.18, ptr @r8a66597_update_usb_speed._entry, ptr @r8a66597_update_usb_speed._entry_ptr, ptr @start_ep0._entry, ptr @start_ep0._entry_ptr, ptr @sudmac_finish._entry, ptr @sudmac_finish._entry_ptr, ptr @r8a66597_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @r8a66597_probe.__key, ptr @.str.5, ptr @r8a66597_gadget_ops, ptr @udc_name, ptr @r8a66597_probe.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @r8a66597_ep_name, ptr @r8a66597_ep_ops, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75], section "llvm.metadata"
@0 = internal global [94 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a66597_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a66597_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a66597_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a66597_gadget_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_name to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a66597_probe.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a66597_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a66597_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a66597_ep_name to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a66597_ep_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a66597_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_xtal_from_pdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sudmac_finish._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a66597_change_curpipe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_reg_set_pid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_reg_sqmon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_reg_sqset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_reg_sqclr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_packet_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a66597_update_usb_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_packet_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_ep0_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_reg_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_control_stage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_reg_get_pid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_ep0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_pipe_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_pipe_config._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_pipe_config._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_pipe_config._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_pipe_config._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pipe_buffer_setting._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pipe_buffer_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @r8a66597_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @r8a66597_driver, ptr noundef nonnull @r8a66597_probe, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @r8a66597_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @r8a66597_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8a66597_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %clk_name = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %clk_name) #11
  %0 = ptrtoint ptr %clk_name to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %clk_name, align 8
  %call = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #11
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call4, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %call4, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str) #14
  br label %cleanup

if.end8:                                          ; preds = %if.end6
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1864, i32 noundef 3520) #11
  %cmp10 = icmp eq ptr %call.i, null
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %do.body13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body13:                                        ; preds = %if.end8
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @r8a66597_probe.__key, i16 noundef signext 3) #11
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %7 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %platform_data.i, align 8
  %pdata = getelementptr inbounds %struct.r8a66597, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %pdata, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and)
  %cmp18 = icmp eq i32 %and, 8
  %irq_sense_low = getelementptr inbounds %struct.r8a66597, ptr %call.i, i32 0, i32 22
  %10 = ptrtoint ptr %irq_sense_low to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %irq_sense_low, align 2
  %bf.shl = select i1 %cmp18, i8 -128, i8 0
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %irq_sense_low, align 2
  %gadget = getelementptr inbounds %struct.r8a66597, ptr %call.i, i32 0, i32 5
  %ops = getelementptr inbounds %struct.r8a66597, ptr %call.i, i32 0, i32 5, i32 2
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @r8a66597_gadget_ops, ptr %ops, align 8
  %max_speed = getelementptr inbounds %struct.r8a66597, ptr %call.i, i32 0, i32 5, i32 6
  %12 = ptrtoint ptr %max_speed to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %max_speed, align 4
  %name = getelementptr inbounds %struct.r8a66597, ptr %call.i, i32 0, i32 5, i32 10
  %13 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @udc_name, ptr %name, align 4
  %timer = getelementptr inbounds %struct.r8a66597, ptr %call.i, i32 0, i32 11
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @r8a66597_timer, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @r8a66597_probe.__key.6) #11
  %reg24 = getelementptr inbounds %struct.r8a66597, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %reg24 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %reg24, align 4
  %15 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdata, align 8
  %on_chip = getelementptr inbounds %struct.r8a66597_platdata, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %on_chip to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load26 = load i8, ptr %on_chip, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load26)
  %tobool27.not = icmp sgt i8 %bf.load26, -1
  br i1 %tobool27.not, label %do.body13.if.end44_crit_edge, label %if.then28

do.body13.if.end44_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then28:                                        ; preds = %do.body13
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 4
  %call29 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name, i32 noundef 8, ptr noundef nonnull @.str.8, i32 noundef %19)
  %call31 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull %clk_name) #11
  %clk = getelementptr inbounds %struct.r8a66597, ptr %call.i, i32 0, i32 3
  %20 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call31, ptr %clk, align 4
  %cmp.i286 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i286, label %do.end37, label %if.end41

do.end37:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, ptr noundef nonnull %clk_name) #14
  %21 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk, align 4
  %23 = ptrtoint ptr %22 to i32
  br label %cleanup

if.end41:                                         ; preds = %if.then28
  %call.i287 = call i32 @clk_prepare(ptr noundef %call31) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i287)
  %tobool.not.i = icmp eq i32 %call.i287, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end41.if.end44_crit_edge

if.end41.if.end44_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.end.i:                                         ; preds = %if.end41
  %call1.i = call i32 @clk_enable(ptr noundef %call31) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end44_crit_edge, label %if.then3.i

if.end.i.if.end44_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @clk_unprepare(ptr noundef %call31) #11
  br label %if.end44

if.end44:                                         ; preds = %if.then3.i, %if.end.i.if.end44_crit_edge, %if.end41.if.end44_crit_edge, %do.body13.if.end44_crit_edge
  %24 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdata, align 8
  %sudmac = getelementptr inbounds %struct.r8a66597_platdata, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %sudmac to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load46 = load i8, ptr %sudmac, align 2
  %27 = and i8 %bf.load46, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool50.not = icmp eq i8 %27, 0
  br i1 %tobool50.not, label %if.end44.if.end57_crit_edge, label %if.then51

if.end44.if.end57_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then51:                                        ; preds = %if.end44
  %call.i288 = call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.23) #11
  %sudmac_reg.i = getelementptr inbounds %struct.r8a66597, ptr %call.i, i32 0, i32 2
  %28 = ptrtoint ptr %sudmac_reg.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i288, ptr %sudmac_reg.i, align 8
  %cmp.i.i.i = icmp ugt ptr %call.i288, inttoptr (i32 -4096 to ptr)
  %29 = ptrtoint ptr %call.i288 to i32
  %cmp53297 = icmp slt ptr %call.i288, null
  %cmp53 = and i1 %cmp.i.i.i, %cmp53297
  br i1 %cmp53, label %if.then51.clean_up2_crit_edge, label %if.then51.if.end57_crit_edge

if.then51.if.end57_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then51.clean_up2_crit_edge:                    ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  br label %clean_up2

if.end57:                                         ; preds = %if.then51.if.end57_crit_edge, %if.end44.if.end57_crit_edge
  call fastcc void @disable_controller(ptr noundef nonnull %call.i)
  %call.i289 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %3, ptr noundef nonnull @r8a66597_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @udc_name, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i289)
  %cmp59 = icmp slt i32 %call.i289, 0
  br i1 %cmp59, label %do.end64, label %for.body.peel.next

do.end64:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %call.i289) #14
  br label %clean_up2

for.body.peel.next:                               ; preds = %if.end57
  %ep_list = getelementptr inbounds %struct.r8a66597, ptr %call.i, i32 0, i32 5, i32 4
  %30 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %ep_list, ptr %ep_list, align 4
  %prev.i = getelementptr inbounds %struct.r8a66597, ptr %call.i, i32 0, i32 5, i32 4, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %ep_list, ptr %prev.i, align 4
  %ep = getelementptr %struct.r8a66597, ptr %call.i, i32 0, i32 7
  %ep0 = getelementptr inbounds %struct.r8a66597, ptr %call.i, i32 0, i32 5, i32 3
  %32 = ptrtoint ptr %ep0 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %ep, ptr %ep0, align 4
  %ep_list71 = getelementptr inbounds %struct.r8a66597, ptr %call.i, i32 0, i32 7, i32 0, i32 0, i32 3
  %33 = ptrtoint ptr %ep_list71 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %ep_list71, ptr %ep_list71, align 4
  %prev.i290 = getelementptr inbounds %struct.r8a66597, ptr %call.i, i32 0, i32 7, i32 0, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %prev.i290 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %ep_list71, ptr %prev.i290, align 4
  %r8a6659791.peel = getelementptr %struct.r8a66597, ptr %call.i, i32 0, i32 7, i32 0, i32 1
  %35 = ptrtoint ptr %r8a6659791.peel to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i, ptr %r8a6659791.peel, align 4
  %queue.peel = getelementptr %struct.r8a66597, ptr %call.i, i32 0, i32 7, i32 0, i32 3
  %36 = ptrtoint ptr %queue.peel to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %queue.peel, ptr %queue.peel, align 4
  %prev.i293.peel = getelementptr %struct.r8a66597, ptr %call.i, i32 0, i32 7, i32 0, i32 3, i32 1
  %37 = ptrtoint ptr %prev.i293.peel to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %queue.peel, ptr %prev.i293.peel, align 4
  %name94.peel = getelementptr %struct.r8a66597, ptr %call.i, i32 0, i32 7, i32 0, i32 0, i32 1
  %38 = ptrtoint ptr %name94.peel to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.48, ptr %name94.peel, align 4
  %ops96.peel = getelementptr %struct.r8a66597, ptr %call.i, i32 0, i32 7, i32 0, i32 0, i32 2
  %39 = ptrtoint ptr %ops96.peel to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @r8a66597_ep_ops, ptr %ops96.peel, align 4
  call void @usb_ep_set_maxpacket_limit(ptr noundef %ep, i32 noundef 512) #11
  %caps.peel = getelementptr %struct.r8a66597, ptr %call.i, i32 0, i32 7, i32 0, i32 0, i32 4
  %40 = ptrtoint ptr %caps.peel to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load102.peel = load i8, ptr %caps.peel, align 4
  %caps122.peel = getelementptr %struct.r8a66597, ptr %call.i, i32 0, i32 7, i32 0, i32 0, i32 4
  %bf.set130.peel = or i8 %bf.load102.peel, -116
  %41 = ptrtoint ptr %caps122.peel to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %bf.set130.peel, ptr %caps122.peel, align 4
  br label %if.then79

if.then79:                                        ; preds = %if.end120.if.then79_crit_edge, %for.body.peel.next
  %i.0298 = phi i32 [ 1, %for.body.peel.next ], [ %inc, %if.end120.if.then79_crit_edge ]
  %arrayidx76 = getelementptr %struct.r8a66597, ptr %call.i, i32 0, i32 7, i32 %i.0298
  %ep_list83 = getelementptr inbounds %struct.usb_ep, ptr %arrayidx76, i32 0, i32 3
  %42 = ptrtoint ptr %ep_list83 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %ep_list83, ptr %ep_list83, align 4
  %prev.i291 = getelementptr inbounds %struct.usb_ep, ptr %arrayidx76, i32 0, i32 3, i32 1
  %43 = ptrtoint ptr %prev.i291 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %ep_list83, ptr %prev.i291, align 4
  %44 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %ep_list83, ptr noundef %45, ptr noundef %ep_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then79.if.end120_crit_edge

if.then79.if.end120_crit_edge:                    ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end120

if.end.i.i:                                       ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %ep_list83, ptr %prev.i, align 4
  %47 = ptrtoint ptr %ep_list83 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %ep_list, ptr %ep_list83, align 4
  %48 = ptrtoint ptr %prev.i291 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev.i291, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %ep_list83, ptr %45, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.end.i.i, %if.then79.if.end120_crit_edge
  %r8a6659791 = getelementptr %struct.r8a66597, ptr %call.i, i32 0, i32 7, i32 %i.0298, i32 1
  %50 = ptrtoint ptr %r8a6659791 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.i, ptr %r8a6659791, align 4
  %queue = getelementptr %struct.r8a66597, ptr %call.i, i32 0, i32 7, i32 %i.0298, i32 3
  %51 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i293 = getelementptr %struct.r8a66597, ptr %call.i, i32 0, i32 7, i32 %i.0298, i32 3, i32 1
  %52 = ptrtoint ptr %prev.i293 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %queue, ptr %prev.i293, align 4
  %arrayidx92 = getelementptr [10 x ptr], ptr @r8a66597_ep_name, i32 0, i32 %i.0298
  %53 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx92, align 4
  %name94 = getelementptr inbounds %struct.usb_ep, ptr %arrayidx76, i32 0, i32 1
  %55 = ptrtoint ptr %name94 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %name94, align 4
  %ops96 = getelementptr inbounds %struct.usb_ep, ptr %arrayidx76, i32 0, i32 2
  %56 = ptrtoint ptr %ops96 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @r8a66597_ep_ops, ptr %ops96, align 4
  call void @usb_ep_set_maxpacket_limit(ptr noundef %arrayidx76, i32 noundef 512) #11
  %caps106 = getelementptr inbounds %struct.usb_ep, ptr %arrayidx76, i32 0, i32 4
  %57 = ptrtoint ptr %caps106 to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load107 = load i8, ptr %caps106, align 4
  %caps122 = getelementptr inbounds %struct.usb_ep, ptr %arrayidx76, i32 0, i32 4
  %bf.set130 = or i8 %bf.load107, 124
  %58 = ptrtoint ptr %caps122 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %bf.set130, ptr %caps122, align 4
  %inc = add nuw nsw i32 %i.0298, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %if.end120.if.then79_crit_edge, !llvm.loop !186

if.end120.if.then79_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then79

for.end:                                          ; preds = %if.end120
  call void @usb_ep_set_maxpacket_limit(ptr noundef %ep, i32 noundef 64) #11
  %pipenum = getelementptr inbounds %struct.r8a66597, ptr %call.i, i32 0, i32 7, i32 0, i32 5
  %59 = ptrtoint ptr %pipenum to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 0, ptr %pipenum, align 2
  %fifoaddr = getelementptr inbounds %struct.r8a66597, ptr %call.i, i32 0, i32 7, i32 0, i32 7
  %60 = ptrtoint ptr %fifoaddr to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 20, ptr %fifoaddr, align 2
  %fifosel = getelementptr inbounds %struct.r8a66597, ptr %call.i, i32 0, i32 7, i32 0, i32 8
  %61 = ptrtoint ptr %fifosel to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 32, ptr %fifosel, align 1
  %fifoctr = getelementptr inbounds %struct.r8a66597, ptr %call.i, i32 0, i32 7, i32 0, i32 9
  %62 = ptrtoint ptr %fifoctr to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 34, ptr %fifoctr, align 4
  %pipectr = getelementptr inbounds %struct.r8a66597, ptr %call.i, i32 0, i32 7, i32 0, i32 10
  %63 = ptrtoint ptr %pipectr to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 110, ptr %pipectr, align 1
  %pipenum2ep = getelementptr inbounds %struct.r8a66597, ptr %call.i, i32 0, i32 8
  %64 = ptrtoint ptr %pipenum2ep to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %ep, ptr %pipenum2ep, align 4
  %epaddr2ep = getelementptr inbounds %struct.r8a66597, ptr %call.i, i32 0, i32 9
  %65 = ptrtoint ptr %epaddr2ep to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %ep, ptr %epaddr2ep, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %66 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %66, i32 noundef 3520, i32 noundef 64) #15
  %tobool.not.i294 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i294, label %r8a66597_alloc_request.exit.thread, label %if.end158

r8a66597_alloc_request.exit.thread:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %ep0_req296 = getelementptr inbounds %struct.r8a66597, ptr %call.i, i32 0, i32 12
  %67 = ptrtoint ptr %ep0_req296 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %ep0_req296, align 8
  br label %clean_up2

if.end158:                                        ; preds = %for.end
  %queue.i = getelementptr inbounds %struct.r8a66597_request, ptr %call7.i.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %queue.i, ptr %queue.i, align 8
  %prev.i.i = getelementptr inbounds %struct.r8a66597_request, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %69 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %queue.i, ptr %prev.i.i, align 4
  %ep0_req = getelementptr inbounds %struct.r8a66597, ptr %call.i, i32 0, i32 12
  %70 = ptrtoint ptr %ep0_req to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call7.i.i.i, ptr %ep0_req, align 8
  %complete = getelementptr inbounds %struct.usb_request, ptr %call7.i.i.i, i32 0, i32 7
  %71 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @nop_completion, ptr %complete, align 4
  %call161 = call i32 @usb_add_gadget_udc(ptr noundef %dev1, ptr noundef %gadget) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %do.end167, label %err_add_udc

do.end167:                                        ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.19) #14
  br label %cleanup

err_add_udc:                                      ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #13
  %72 = ptrtoint ptr %ep0_req to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ep0_req, align 8
  call void @kfree(ptr noundef %73) #11
  br label %clean_up2

clean_up2:                                        ; preds = %err_add_udc, %r8a66597_alloc_request.exit.thread, %do.end64, %if.then51.clean_up2_crit_edge
  %ret.0 = phi i32 [ %29, %if.then51.clean_up2_crit_edge ], [ %call.i289, %do.end64 ], [ %call161, %err_add_udc ], [ -12, %r8a66597_alloc_request.exit.thread ]
  %74 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pdata, align 8
  %on_chip173 = getelementptr inbounds %struct.r8a66597_platdata, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %on_chip173 to i32
  call void @__asan_load1_noabort(i32 %76)
  %bf.load174 = load i8, ptr %on_chip173, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load174)
  %tobool177.not = icmp sgt i8 %bf.load174, -1
  br i1 %tobool177.not, label %clean_up2.if.end180_crit_edge, label %if.then178

clean_up2.if.end180_crit_edge:                    ; preds = %clean_up2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end180

if.then178:                                       ; preds = %clean_up2
  call void @__sanitizer_cov_trace_pc() #13
  %clk179 = getelementptr inbounds %struct.r8a66597, ptr %call.i, i32 0, i32 3
  %77 = ptrtoint ptr %clk179 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %clk179, align 4
  call void @clk_disable(ptr noundef %78) #11
  call void @clk_unprepare(ptr noundef %78) #11
  br label %if.end180

if.end180:                                        ; preds = %if.then178, %clean_up2.if.end180_crit_edge
  %ep0_req181 = getelementptr inbounds %struct.r8a66597, ptr %call.i, i32 0, i32 12
  %79 = ptrtoint ptr %ep0_req181 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ep0_req181, align 8
  %tobool182.not = icmp eq ptr %80, null
  br i1 %tobool182.not, label %if.end180.cleanup_crit_edge, label %if.then183

if.end180.cleanup_crit_edge:                      ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then183:                                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %80) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then183, %if.end180.cleanup_crit_edge, %do.end167, %do.end37, %if.end8.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ -19, %do.end ], [ %23, %do.end37 ], [ 0, %do.end167 ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ], [ %ret.0, %if.then183 ], [ %ret.0, %if.end180.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %clk_name) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @r8a66597_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1792
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #11
  %reg.i = getelementptr i8, ptr %t, i32 -1748
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg.i, align 4
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %scount = getelementptr i8, ptr %t, i32 56
  %3 = ptrtoint ptr %scount to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %scount, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp9.not = icmp eq i16 %4, 0
  br i1 %cmp9.not, label %entry.if.end41_crit_edge, label %if.then

entry.if.end41_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 64
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #11, !srcloc !188
  %8 = lshr i16 %7, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %9 = and i16 %8, 128
  %old_vbus = getelementptr i8, ptr %t, i32 54
  %10 = ptrtoint ptr %old_vbus to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %old_vbus, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %11)
  %cmp16 = icmp eq i16 %9, %11
  br i1 %cmp16, label %if.then18, label %if.else33

if.then18:                                        ; preds = %if.then
  %12 = ptrtoint ptr %scount to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %scount, align 8
  %dec = add i16 %13, -1
  store i16 %dec, ptr %scount, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec)
  %cmp22 = icmp eq i16 %dec, 0
  br i1 %cmp22, label %if.then24, label %if.else29

if.then24:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp26.not = icmp eq i16 %9, 0
  %14 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i60 = getelementptr i8, ptr %15, i32 48
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i60) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  br i1 %cmp26.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  %17 = or i16 %16, 8
  %18 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %19, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i, i16 %17) #11, !srcloc !191
  %20 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i4.i = getelementptr i8, ptr %21, i32 48
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i4.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %23 = or i16 %22, 5
  %24 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i6.i = getelementptr i8, ptr %25, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i6.i, i16 %23) #11, !srcloc !191
  %26 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg.i, align 4
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %27) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %29 = or i16 %28, 4096
  %30 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %31, i16 %29) #11, !srcloc !191
  br label %if.end41

if.else:                                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  %32 = and i16 %16, -9
  %33 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i61 = getelementptr i8, ptr %34, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i61, i16 %32) #11, !srcloc !191
  %35 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i15.i = getelementptr i8, ptr %36, i32 48
  %37 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i15.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %38 = and i16 %37, -6
  %39 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i17.i = getelementptr i8, ptr %40, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i17.i, i16 %38) #11, !srcloc !191
  %41 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg.i, align 4
  %43 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %42) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %44 = and i16 %43, -4097
  %45 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %46, i16 %44) #11, !srcloc !191
  %gadget.i = getelementptr i8, ptr %t, i32 -1728
  %speed.i = getelementptr i8, ptr %t, i32 -1664
  %47 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %speed.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr) #11
  %driver.i = getelementptr i8, ptr %t, i32 -680
  %48 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %driver.i, align 8
  %disconnect.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %disconnect.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %disconnect.i, align 4
  tail call void %51(ptr noundef %gadget.i) #11
  tail call void @_raw_spin_lock(ptr noundef %add.ptr) #11
  tail call fastcc void @disable_controller(ptr noundef %add.ptr) #11
  tail call fastcc void @init_controller(ptr noundef %add.ptr) #11
  %52 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i21.i = getelementptr i8, ptr %53, i32 48
  %54 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i21.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %55 = or i16 %54, 128
  %56 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i22.i = getelementptr i8, ptr %57, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i22.i, i16 %55) #11, !srcloc !191
  %queue.i = getelementptr i8, ptr %t, i32 -624
  %58 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %queue.i, ptr %queue.i, align 4
  %prev.i.i = getelementptr i8, ptr %t, i32 -620
  %59 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %queue.i, ptr %prev.i.i, align 4
  br label %if.end41

if.else29:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %60 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %60, 5
  %call31 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #11
  br label %if.end41

if.else33:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %scount to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 10, ptr %scount, align 8
  %62 = ptrtoint ptr %old_vbus to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %9, ptr %old_vbus, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %63 = load volatile i32, ptr @jiffies, align 128
  %add38 = add i32 %63, 5
  %call39 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add38) #11
  br label %if.end41

if.end41:                                         ; preds = %if.else33, %if.else29, %if.else, %if.then28, %entry.if.end41_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call4) #11
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @disable_controller(ptr nocapture noundef readonly %r8a66597) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 4
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 8
  %on_chip = getelementptr inbounds %struct.r8a66597_platdata, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %on_chip to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %on_chip, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %reg.i.i36 = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 1
  %3 = ptrtoint ptr %reg.i.i36 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg.i.i36, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %4) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %6 = or i16 %5, 4
  %7 = ptrtoint ptr %reg.i.i36 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg.i.i36, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %8, i16 %6) #11, !srcloc !191
  %9 = ptrtoint ptr %reg.i.i36 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg.i.i36, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 12
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %12 = and i16 %11, -3841
  %13 = ptrtoint ptr %reg.i.i36 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg.i.i36, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %14, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i, i16 %12) #11, !srcloc !191
  %15 = ptrtoint ptr %reg.i.i36 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg.i.i36, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 0) #11, !srcloc !191
  %17 = ptrtoint ptr %reg.i.i36 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg.i.i36, align 4
  %add.ptr.i19 = getelementptr i8, ptr %18, i32 50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i19, i16 0) #11, !srcloc !191
  %19 = ptrtoint ptr %reg.i.i36 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg.i.i36, align 4
  %add.ptr.i21 = getelementptr i8, ptr %20, i32 54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i21, i16 0) #11, !srcloc !191
  %21 = ptrtoint ptr %reg.i.i36 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg.i.i36, align 4
  %add.ptr.i23 = getelementptr i8, ptr %22, i32 58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i23, i16 0) #11, !srcloc !191
  %23 = ptrtoint ptr %reg.i.i36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg.i.i36, align 4
  %add.ptr.i25 = getelementptr i8, ptr %24, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i25, i16 0) #11, !srcloc !191
  %25 = ptrtoint ptr %reg.i.i36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg.i.i36, align 4
  %add.ptr.i27 = getelementptr i8, ptr %26, i32 70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i27, i16 0) #11, !srcloc !191
  %27 = ptrtoint ptr %reg.i.i36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg.i.i36, align 4
  %add.ptr.i29 = getelementptr i8, ptr %28, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i29, i16 0) #11, !srcloc !191
  %29 = ptrtoint ptr %reg.i.i36 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg.i.i36, align 4
  %add.ptr.i31 = getelementptr i8, ptr %30, i32 74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i31, i16 0) #11, !srcloc !191
  %31 = ptrtoint ptr %reg.i.i36 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg.i.i36, align 4
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %32) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %34 = and i16 %33, -257
  %35 = ptrtoint ptr %reg.i.i36 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg.i.i36, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %36, i16 %34) #11, !srcloc !191
  %37 = ptrtoint ptr %reg.i.i36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg.i.i36, align 4
  %39 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %38) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %40 = and i16 %39, -5
  %41 = ptrtoint ptr %reg.i.i36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg.i.i36, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %42, i16 %40) #11, !srcloc !191
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i37 = getelementptr i8, ptr %4, i32 12
  %43 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i37) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %44 = and i16 %43, -3841
  %45 = ptrtoint ptr %reg.i.i36 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg.i.i36, align 4
  %add.ptr.i12.i39 = getelementptr i8, ptr %46, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i39, i16 %44) #11, !srcloc !191
  %47 = ptrtoint ptr %reg.i.i36 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg.i.i36, align 4
  %49 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %48) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %50 = and i16 %49, -5
  %51 = ptrtoint ptr %reg.i.i36 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg.i.i36, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %52, i16 %50) #11, !srcloc !191
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748) #11
  %54 = ptrtoint ptr %reg.i.i36 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %reg.i.i36, align 4
  %56 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %55) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %57 = and i16 %56, -9
  %58 = ptrtoint ptr %reg.i.i36 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %reg.i.i36, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %59, i16 %57) #11, !srcloc !191
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748) #11
  %62 = ptrtoint ptr %reg.i.i36 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %reg.i.i36, align 4
  %64 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %63) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %65 = and i16 %64, -33
  %66 = ptrtoint ptr %reg.i.i36 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg.i.i36, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %67, i16 %65) #11, !srcloc !191
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8a66597_irq(i32 noundef %irq, ptr noundef %_r8a66597) #2 align 64 {
entry:
  %ctrl.i = alloca %struct.usb_ctrlrequest, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %_r8a66597) #11
  %pdata = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 4
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 8
  %sudmac = getelementptr inbounds %struct.r8a66597_platdata, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %sudmac to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %sudmac, align 2
  %3 = and i8 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %sudmac_reg.i.i = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 2
  %4 = ptrtoint ptr %sudmac_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sudmac_reg.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 68
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !193
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i:                                        ; preds = %if.then
  %8 = ptrtoint ptr %sudmac_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sudmac_reg.i.i, align 8
  %add.ptr.i9.i = getelementptr i8, ptr %9, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !194
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 16777216) #11, !srcloc !195
  %reg.i.i = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 1
  %10 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %11, i32 40
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i10.i) #11, !srcloc !188
  %13 = lshr i16 %12, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %14 = and i16 %13, 15
  %idxprom.i = zext i16 %14 to i32
  %arrayidx.i = getelementptr %struct.r8a66597, ptr %_r8a66597, i32 0, i32 8, i32 %idxprom.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %pipenum1.i.i = getelementptr inbounds %struct.r8a66597_ep, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %pipenum1.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %pipenum1.i.i, align 2
  tail call fastcc void @pipe_change(ptr noundef %_r8a66597, i16 noundef zeroext %18) #11
  %fifoctr.i.i = getelementptr inbounds %struct.r8a66597_ep, ptr %16, i32 0, i32 9
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.then.i
  %i.0.i.i = phi i32 [ 0, %if.then.i ], [ %inc.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  %19 = ptrtoint ptr %fifoctr.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %fifoctr.i.i, align 4
  %conv.i.i = zext i8 %20 to i32
  %21 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %22, i32 %conv.i.i
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %24 = and i16 %23, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool.not.i.i = icmp eq i16 %24, 0
  br i1 %tobool.not.i.i, label %while.body.i.i, label %while.end.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748) #11
  %inc.i.i = add nuw nsw i32 %i.0.i.i, 1
  %exitcond.i.i = icmp eq i32 %inc.i.i, 10001
  br i1 %exitcond.i.i, label %do.end.i.i, label %while.body.i.i.while.cond.i.i_crit_edge, !prof !196

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i

do.end.i.i:                                       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %parent.i.i = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 5, i32 11, i32 1
  %26 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent.i.i, align 8
  %conv7.i.i = zext i16 %18 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %conv7.i.i) #14
  br label %if.end

while.end.i.i:                                    ; preds = %while.cond.i.i
  %28 = ptrtoint ptr %fifoctr.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %fifoctr.i.i, align 4
  %conv9.i.i = zext i8 %29 to i32
  %30 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %31, i32 %conv9.i.i
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %33 = or i16 %32, 64
  %34 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i.i.i = getelementptr i8, ptr %35, i32 %conv9.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i, i16 %33) #11, !srcloc !191
  %queue.i.i.i = getelementptr inbounds %struct.r8a66597_ep, ptr %16, i32 0, i32 3
  %36 = ptrtoint ptr %queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %queue.i.i.i, align 4
  %add.ptr.i61.i.i = getelementptr i8, ptr %37, i32 -56
  %38 = ptrtoint ptr %sudmac_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sudmac_reg.i.i, align 8
  %add.ptr.i62.i.i = getelementptr i8, ptr %39, i32 40
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i62.i.i) #11, !srcloc !192
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !193
  %actual.i.i = getelementptr i8, ptr %37, i32 -4
  %42 = ptrtoint ptr %actual.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %actual.i.i, align 4
  %add.i.i = add i32 %43, %41
  store i32 %add.i.i, ptr %actual.i.i, align 4
  %44 = ptrtoint ptr %sudmac_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sudmac_reg.i.i, align 8
  %add.ptr.i64.i.i = getelementptr i8, ptr %45, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !194
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64.i.i, i32 16777216) #11, !srcloc !195
  %zero.i.i = getelementptr i8, ptr %37, i32 -32
  %46 = ptrtoint ptr %zero.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %bf.load.i.i = load i32, ptr %zero.i.i, align 4
  %47 = and i32 %bf.load.i.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool14.not.i.i = icmp eq i32 %47, 0
  br i1 %tobool14.not.i.i, label %land.lhs.true.i.i, label %while.end.i.i.lor.lhs.false.i.i_crit_edge

while.end.i.i.lor.lhs.false.i.i_crit_edge:        ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i.i

land.lhs.true.i.i:                                ; preds = %while.end.i.i
  %48 = ptrtoint ptr %actual.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %actual.i.i, align 4
  %length.i.i = getelementptr i8, ptr %37, i32 -52
  %50 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %length.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp18.i.i = icmp eq i32 %49, %51
  br i1 %cmp18.i.i, label %land.lhs.true.i.i.if.then24.i.i_crit_edge, label %land.lhs.true.i.i.lor.lhs.false.i.i_crit_edge

land.lhs.true.i.i.lor.lhs.false.i.i_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i.i

land.lhs.true.i.i.if.then24.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24.i.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i.i.lor.lhs.false.i.i_crit_edge, %while.end.i.i.lor.lhs.false.i.i_crit_edge
  %maxpacket.i.i = getelementptr inbounds %struct.usb_ep, ptr %16, i32 0, i32 7
  %52 = ptrtoint ptr %maxpacket.i.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 7)
  %bf.load21.i.i = load i56, ptr %maxpacket.i.i, align 2
  %bf.lshr22.i.i = lshr i56 %bf.load21.i.i, 40
  %bf.cast.i.i = trunc i56 %bf.lshr22.i.i to i32
  %rem.i.i = urem i32 %41, %bf.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool23.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool23.not.i.i, label %lor.lhs.false.i.i.if.end_crit_edge, label %lor.lhs.false.i.i.if.then24.i.i_crit_edge

lor.lhs.false.i.i.if.then24.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24.i.i

lor.lhs.false.i.i.if.end_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then24.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then24.i.i_crit_edge, %land.lhs.true.i.i.if.then24.i.i_crit_edge
  %dma.i.i = getelementptr inbounds %struct.r8a66597_ep, ptr %16, i32 0, i32 2
  %53 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dma.i.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load25.i.i = load i8, ptr %54, align 4
  %56 = and i8 %bf.load25.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool29.not.i.i = icmp eq i8 %56, 0
  br i1 %tobool29.not.i.i, label %if.else.i.i, label %if.then30.i.i

if.then30.i.i:                                    ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i66.i.i = getelementptr i8, ptr %58, i32 48
  %59 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i66.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %60 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %61, i32 48
  %62 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %63 = and i16 %62, -8
  %64 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i.i.i.i = getelementptr i8, ptr %65, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i.i, i16 %63) #11, !srcloc !191
  %conv.i.i.i = zext i16 %18 to i32
  %shl.i.i.i = shl nuw i32 1, %conv.i.i.i
  %conv1.i.i.i = trunc i32 %shl.i.i.i to i16
  %66 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i6.i.i.i = getelementptr i8, ptr %67, i32 54
  %68 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i.i.i) #11, !srcloc !188
  %69 = tail call i16 @llvm.bswap.i16(i16 %68) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %neg.i.i.i.i = xor i16 %conv1.i.i.i, -1
  %and.i7.i.i.i = and i16 %69, %neg.i.i.i.i
  %70 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i8.i.i.i = getelementptr i8, ptr %71, i32 54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %72 = tail call i16 @llvm.bswap.i16(i16 %and.i7.i.i.i) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i8.i.i.i, i16 %72) #11, !srcloc !191
  %73 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i10.i.i.i = getelementptr i8, ptr %74, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i10.i.i.i, i16 %59) #11, !srcloc !191
  %75 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i68.i.i = getelementptr i8, ptr %76, i32 48
  %77 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i68.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %78 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i.i69.i.i = getelementptr i8, ptr %79, i32 48
  %80 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i69.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %81 = and i16 %80, -8
  %82 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i.i70.i.i = getelementptr i8, ptr %83, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i70.i.i, i16 %81) #11, !srcloc !191
  %84 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i6.i74.i.i = getelementptr i8, ptr %85, i32 58
  %86 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i74.i.i) #11, !srcloc !188
  %87 = tail call i16 @llvm.bswap.i16(i16 %86) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %or10.i.i.i.i = or i16 %87, %conv1.i.i.i
  %88 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i7.i.i.i = getelementptr i8, ptr %89, i32 58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %90 = tail call i16 @llvm.bswap.i16(i16 %or10.i.i.i.i) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i7.i.i.i, i16 %90) #11, !srcloc !191
  %91 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i9.i.i.i = getelementptr i8, ptr %92, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i9.i.i.i, i16 %77) #11, !srcloc !191
  br label %if.end

if.else.i.i:                                      ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv31.i.i = zext i16 %18 to i32
  %shl.i.i = shl nuw i32 1, %conv31.i.i
  %93 = trunc i32 %shl.i.i to i16
  %conv32.i.i = xor i16 %93, -1
  %94 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i76.i.i = getelementptr i8, ptr %95, i32 70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %96 = tail call i16 @llvm.bswap.i16(i16 %conv32.i.i) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i76.i.i, i16 %96) #11, !srcloc !191
  tail call fastcc void @transfer_complete(ptr noundef %16, ptr noundef %add.ptr.i61.i.i, i32 noundef 0) #11
  br label %if.end

if.end:                                           ; preds = %if.else.i.i, %if.then30.i.i, %lor.lhs.false.i.i.if.end_crit_edge, %do.end.i.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %reg.i = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 1
  %97 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %98, i32 64
  %99 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #11, !srcloc !188
  %100 = tail call i16 @llvm.bswap.i16(i16 %99) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %101 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %reg.i, align 4
  %add.ptr.i100 = getelementptr i8, ptr %102, i32 48
  %103 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i100) #11, !srcloc !188
  %104 = tail call i16 @llvm.bswap.i16(i16 %103) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %105 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %reg.i, align 4
  %add.ptr.i102 = getelementptr i8, ptr %106, i32 32
  %107 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i102) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %conv = zext i16 %100 to i32
  %conv3 = zext i16 %104 to i32
  %and93 = and i16 %104, %100
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and93)
  %tobool5.not = icmp eq i16 %and93, 0
  br i1 %tobool5.not, label %if.end.if.end59_crit_edge, label %if.then6

if.end.if.end59_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.then6:                                         ; preds = %if.end
  %108 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %reg.i, align 4
  %add.ptr.i104 = getelementptr i8, ptr %109, i32 70
  %110 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i104) #11, !srcloc !188
  %111 = tail call i16 @llvm.bswap.i16(i16 %110) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %112 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %reg.i, align 4
  %add.ptr.i106 = getelementptr i8, ptr %113, i32 74
  %114 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i106) #11, !srcloc !188
  %115 = tail call i16 @llvm.bswap.i16(i16 %114) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %116 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %reg.i, align 4
  %add.ptr.i108 = getelementptr i8, ptr %117, i32 54
  %118 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i108) #11, !srcloc !188
  %119 = tail call i16 @llvm.bswap.i16(i16 %118) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %120 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %reg.i, align 4
  %add.ptr.i110 = getelementptr i8, ptr %121, i32 58
  %122 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i110) #11, !srcloc !188
  %123 = tail call i16 @llvm.bswap.i16(i16 %122) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and93)
  %tobool13.not = icmp sgt i16 %and93, -1
  br i1 %tobool13.not, label %if.then6.if.end21_crit_edge, label %if.then14

if.then6.if.end21_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then14:                                        ; preds = %if.then6
  %124 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %reg.i, align 4
  %add.ptr.i112 = getelementptr i8, ptr %125, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i112, i16 -129) #11, !srcloc !191
  %126 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %pdata, align 8
  %on_chip.i = getelementptr inbounds %struct.r8a66597_platdata, ptr %127, i32 0, i32 2
  %128 = ptrtoint ptr %on_chip.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %bf.load.i = load i8, ptr %on_chip.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i113 = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i113, label %if.then.i115, label %if.then14.r8a66597_start_xclock.exit_crit_edge

if.then14.r8a66597_start_xclock.exit_crit_edge:   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %r8a66597_start_xclock.exit

if.then.i115:                                     ; preds = %if.then14
  %129 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %reg.i, align 4
  %131 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %130) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %132 = and i16 %131, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %132)
  %tobool1.not.i = icmp eq i16 %132, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.then.i115.r8a66597_start_xclock.exit_crit_edge

if.then.i115.r8a66597_start_xclock.exit_crit_edge: ; preds = %if.then.i115
  call void @__sanitizer_cov_trace_pc() #13
  br label %r8a66597_start_xclock.exit

if.then2.i:                                       ; preds = %if.then.i115
  call void @__sanitizer_cov_trace_pc() #13
  %133 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %reg.i, align 4
  %135 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %134) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %136 = or i16 %135, 32
  %137 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %138, i16 %136) #11, !srcloc !191
  br label %r8a66597_start_xclock.exit

r8a66597_start_xclock.exit:                       ; preds = %if.then2.i, %if.then.i115.r8a66597_start_xclock.exit_crit_edge, %if.then14.r8a66597_start_xclock.exit_crit_edge
  %139 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %reg.i, align 4
  %add.ptr.i117 = getelementptr i8, ptr %140, i32 64
  %141 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i117) #11, !srcloc !188
  %142 = lshr i16 %141, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %143 = and i16 %142, 128
  %old_vbus = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 14
  %144 = ptrtoint ptr %old_vbus to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %143, ptr %old_vbus, align 2
  %scount = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 15
  %145 = ptrtoint ptr %scount to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 10, ptr %scount, align 8
  %timer = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %146 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %146, 5
  %call20 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #11
  br label %if.end21

if.end21:                                         ; preds = %r8a66597_start_xclock.exit, %if.then6.if.end21_crit_edge
  %and23 = and i32 %conv, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end21.if.end26_crit_edge, label %if.then25

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then25:                                        ; preds = %if.end21
  %147 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i119 = getelementptr i8, ptr %148, i32 64
  %149 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i119) #11, !srcloc !188
  %150 = lshr i16 %149, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %151 = and i16 %150, 112
  %152 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %reg.i, align 4
  %add.ptr.i42.i = getelementptr i8, ptr %153, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i42.i, i16 -17) #11, !srcloc !191
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %151)
  %cmp.i = icmp eq i16 %151, 16
  br i1 %cmp.i, label %if.then.i121, label %if.then25.if.end.i_crit_edge

if.then25.if.end.i_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i121:                                     ; preds = %if.then25
  tail call void @_raw_spin_unlock(ptr noundef %_r8a66597) #11
  %gadget.i = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 5
  %driver.i = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 6
  %154 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %driver.i, align 8
  tail call void @usb_gadget_udc_reset(ptr noundef %gadget.i, ptr noundef %155) #11
  tail call void @_raw_spin_lock(ptr noundef %_r8a66597) #11
  %156 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i120 = getelementptr i8, ptr %157, i32 8
  %158 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i120) #11, !srcloc !188
  %159 = lshr i16 %158, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %trunc.i.i = trunc i16 %159 to i3
  %160 = zext i3 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %160, ptr @__sancov_gen_cov_switch_values)
  switch i3 %trunc.i.i, label %sw.default.i.i [
    i3 3, label %sw.bb.i.i
    i3 2, label %sw.bb2.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.then.i121
  call void @__sanitizer_cov_trace_pc() #13
  %speed1.i.i = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 5, i32 5
  %161 = ptrtoint ptr %speed1.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 3, ptr %speed1.i.i, align 8
  br label %if.end.i

sw.bb2.i.i:                                       ; preds = %if.then.i121
  call void @__sanitizer_cov_trace_pc() #13
  %speed4.i.i = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 5, i32 5
  %162 = ptrtoint ptr %speed4.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 2, ptr %speed4.i.i, align 8
  br label %if.end.i

sw.default.i.i:                                   ; preds = %if.then.i121
  call void @__sanitizer_cov_trace_pc() #13
  %speed6.i.i = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 5, i32 5
  %163 = ptrtoint ptr %speed6.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 0, ptr %speed6.i.i, align 8
  %parent.i.i122 = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 5, i32 11, i32 1
  %164 = ptrtoint ptr %parent.i.i122 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %parent.i.i122, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %165, ptr noundef nonnull @.str.36) #14
  br label %if.end.i

if.end.i:                                         ; preds = %sw.default.i.i, %sw.bb2.i.i, %sw.bb.i.i, %if.then25.if.end.i_crit_edge
  %old_dvsq.i = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 16
  %166 = ptrtoint ptr %old_dvsq.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %old_dvsq.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 48, i16 %167)
  %cmp6.i = icmp ne i16 %167, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 48, i16 %151)
  %cmp9.not.i = icmp eq i16 %151, 48
  %or.cond.i = select i1 %cmp6.i, i1 true, i1 %cmp9.not.i
  br i1 %or.cond.i, label %if.end.i.if.end12.i_crit_edge, label %if.then11.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

if.then11.i:                                      ; preds = %if.end.i
  %168 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i44.i = getelementptr i8, ptr %169, i32 8
  %170 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i44.i) #11, !srcloc !188
  %171 = lshr i16 %170, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %trunc.i45.i = trunc i16 %171 to i3
  %172 = zext i3 %trunc.i45.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %172, ptr @__sancov_gen_cov_switch_values.76)
  switch i3 %trunc.i45.i, label %sw.default.i52.i [
    i3 3, label %sw.bb.i47.i
    i3 2, label %sw.bb2.i49.i
  ]

sw.bb.i47.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  %speed1.i46.i = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 5, i32 5
  %173 = ptrtoint ptr %speed1.i46.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 3, ptr %speed1.i46.i, align 8
  br label %if.end12.i

sw.bb2.i49.i:                                     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  %speed4.i48.i = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 5, i32 5
  %174 = ptrtoint ptr %speed4.i48.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 2, ptr %speed4.i48.i, align 8
  br label %if.end12.i

sw.default.i52.i:                                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  %speed6.i50.i = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 5, i32 5
  %175 = ptrtoint ptr %speed6.i50.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 0, ptr %speed6.i50.i, align 8
  %parent.i51.i = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 5, i32 11, i32 1
  %176 = ptrtoint ptr %parent.i51.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %parent.i51.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %177, ptr noundef nonnull @.str.36) #14
  br label %if.end12.i

if.end12.i:                                       ; preds = %sw.default.i52.i, %sw.bb2.i49.i, %sw.bb.i47.i, %if.end.i.if.end12.i_crit_edge
  %trunc.i = trunc i16 %151 to i7
  %178 = zext i7 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %178, ptr @__sancov_gen_cov_switch_values.77)
  switch i7 %trunc.i, label %if.end12.i.irq_device_state.exit_crit_edge [
    i7 48, label %if.end12.i.land.lhs.true19.i_crit_edge
    i7 32, label %if.end12.i.land.lhs.true19.i_crit_edge174
  ]

if.end12.i.land.lhs.true19.i_crit_edge174:        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true19.i

if.end12.i.land.lhs.true19.i_crit_edge:           ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true19.i

if.end12.i.irq_device_state.exit_crit_edge:       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %irq_device_state.exit

land.lhs.true19.i:                                ; preds = %if.end12.i.land.lhs.true19.i_crit_edge, %if.end12.i.land.lhs.true19.i_crit_edge174
  %speed.i = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 5, i32 5
  %179 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %cmp21.i = icmp eq i32 %180, 0
  br i1 %cmp21.i, label %if.then23.i, label %land.lhs.true19.i.irq_device_state.exit_crit_edge

land.lhs.true19.i.irq_device_state.exit_crit_edge: ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %irq_device_state.exit

if.then23.i:                                      ; preds = %land.lhs.true19.i
  %181 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i55.i = getelementptr i8, ptr %182, i32 8
  %183 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i55.i) #11, !srcloc !188
  %184 = lshr i16 %183, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %trunc.i56.i = trunc i16 %184 to i3
  %185 = zext i3 %trunc.i56.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %185, ptr @__sancov_gen_cov_switch_values.78)
  switch i3 %trunc.i56.i, label %sw.default.i63.i [
    i3 3, label %sw.bb.i58.i
    i3 2, label %sw.bb2.i60.i
  ]

sw.bb.i58.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  %186 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 3, ptr %speed.i, align 8
  br label %irq_device_state.exit

sw.bb2.i60.i:                                     ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  %187 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 2, ptr %speed.i, align 8
  br label %irq_device_state.exit

sw.default.i63.i:                                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  %188 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 0, ptr %speed.i, align 8
  %parent.i62.i = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 5, i32 11, i32 1
  %189 = ptrtoint ptr %parent.i62.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %parent.i62.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %190, ptr noundef nonnull @.str.36) #14
  br label %irq_device_state.exit

irq_device_state.exit:                            ; preds = %sw.default.i63.i, %sw.bb2.i60.i, %sw.bb.i58.i, %land.lhs.true19.i.irq_device_state.exit_crit_edge, %if.end12.i.irq_device_state.exit_crit_edge
  %191 = ptrtoint ptr %old_dvsq.i to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 %151, ptr %old_dvsq.i, align 2
  br label %if.end26

if.end26:                                         ; preds = %irq_device_state.exit, %if.end21.if.end26_crit_edge
  %and28 = and i32 %conv, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %and31 = and i32 %conv3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %or.cond = select i1 %tobool29.not, i1 true, i1 %tobool32.not
  %and3695 = and i16 %119, %111
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and3695)
  %tobool37.not = icmp eq i16 %and3695, 0
  %or.cond96 = select i1 %or.cond, i1 true, i1 %tobool37.not
  br i1 %or.cond96, label %if.end26.if.end39_crit_edge, label %if.then38

if.end26.if.end39_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then38:                                        ; preds = %if.end26
  %conv.i = zext i16 %111 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i123 = icmp eq i32 %and.i, 0
  %192 = and i16 %119, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %192)
  %tobool3.not.i = icmp eq i16 %192, 0
  %or.cond.i124 = or i1 %tobool.not.i123, %tobool3.not.i
  br i1 %or.cond.i124, label %for.cond.preheader.i, label %if.then.i128

for.cond.preheader.i:                             ; preds = %if.then38
  %conv14.i = zext i16 %119 to i32
  br label %for.body.i

if.then.i128:                                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  %193 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i126 = getelementptr i8, ptr %194, i32 70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i126, i16 -257) #11, !srcloc !191
  %195 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i127 = getelementptr i8, ptr %196, i32 32
  %197 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i127) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %198 = and i16 %197, -3841
  %199 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %200, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i, i16 %198) #11, !srcloc !191
  %ep4.i = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 7
  %queue.i.i = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 7, i32 0, i32 3
  %201 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %queue.i.i, align 4
  %add.ptr.i49.i = getelementptr i8, ptr %202, i32 -56
  tail call fastcc void @irq_packet_read(ptr noundef %ep4.i, ptr noundef %add.ptr.i49.i) #11
  br label %if.end39

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %indvars.iv.i = phi i32 [ 1, %for.cond.preheader.i ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %indvars.iv.i
  %and11.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  %and16.i = and i32 %shl.i, %conv14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  %or.cond56.i = or i1 %tobool12.not.i, %tobool17.not.i
  br i1 %or.cond56.i, label %for.body.i.for.inc.i_crit_edge, label %if.then18.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then18.i:                                      ; preds = %for.body.i
  %203 = trunc i32 %shl.i to i16
  %conv20.i = xor i16 %203, -1
  %204 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %reg.i, align 4
  %add.ptr.i51.i = getelementptr i8, ptr %205, i32 70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %206 = tail call i16 @llvm.bswap.i16(i16 %conv20.i) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i51.i, i16 %206) #11, !srcloc !191
  %arrayidx21.i = getelementptr %struct.r8a66597, ptr %_r8a66597, i32 0, i32 8, i32 %indvars.iv.i
  %207 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %arrayidx21.i, align 4
  %queue.i52.i = getelementptr inbounds %struct.r8a66597_ep, ptr %208, i32 0, i32 3
  %209 = ptrtoint ptr %queue.i52.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %queue.i52.i, align 4
  %add.ptr.i53.i = getelementptr i8, ptr %210, i32 -56
  %desc.i = getelementptr inbounds %struct.usb_ep, ptr %208, i32 0, i32 9
  %211 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %desc.i, align 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %212, i32 0, i32 2
  %213 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %bEndpointAddress.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %214)
  %tobool26.not.i = icmp sgt i8 %214, -1
  br i1 %tobool26.not.i, label %if.else28.i, label %if.then27.i

if.then27.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @irq_packet_write(ptr noundef %208, ptr noundef %add.ptr.i53.i) #11
  br label %for.inc.i

if.else28.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @irq_packet_read(ptr noundef %208, ptr noundef %add.ptr.i53.i) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else28.i, %if.then27.i, %for.body.i.for.inc.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 8
  br i1 %exitcond.not.i, label %for.inc.i.if.end39_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.if.end39_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.end39:                                         ; preds = %for.inc.i.if.end39_crit_edge, %if.then.i128, %if.end26.if.end39_crit_edge
  %and41 = and i32 %conv, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  %and45 = and i32 %conv3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  %or.cond97 = select i1 %tobool42.not, i1 true, i1 %tobool46.not
  %and5094 = and i16 %123, %115
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and5094)
  %tobool51.not = icmp eq i16 %and5094, 0
  %or.cond98 = select i1 %or.cond97, i1 true, i1 %tobool51.not
  br i1 %or.cond98, label %if.end39.if.end53_crit_edge, label %if.then52

if.end39.if.end53_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.then52:                                        ; preds = %if.end39
  %conv.i129 = zext i16 %115 to i32
  %and.i130 = and i32 %conv.i129, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i130)
  %tobool.not.i131 = icmp eq i32 %and.i130, 0
  %215 = and i16 %123, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %215)
  %tobool3.not.i132 = icmp eq i16 %215, 0
  %or.cond.i133 = or i1 %tobool.not.i131, %tobool3.not.i132
  br i1 %or.cond.i133, label %for.cond.preheader.i135, label %if.then.i140

for.cond.preheader.i135:                          ; preds = %if.then52
  %conv14.i134 = zext i16 %123 to i32
  br label %for.body.i147

if.then.i140:                                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  %216 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i137 = getelementptr i8, ptr %217, i32 74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i137, i16 -257) #11, !srcloc !191
  %ep4.i138 = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 7
  %queue.i.i139 = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 7, i32 0, i32 3
  %218 = ptrtoint ptr %queue.i.i139 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %queue.i.i139, align 4
  %add.ptr.i58.i = getelementptr i8, ptr %219, i32 -56
  tail call fastcc void @irq_ep0_write(ptr noundef %ep4.i138, ptr noundef %add.ptr.i58.i) #11
  br label %if.end53

for.body.i147:                                    ; preds = %for.inc.i155.for.body.i147_crit_edge, %for.cond.preheader.i135
  %indvars.iv.i141 = phi i32 [ 1, %for.cond.preheader.i135 ], [ %indvars.iv.next.i153, %for.inc.i155.for.body.i147_crit_edge ]
  %shl.i142 = shl nuw i32 1, %indvars.iv.i141
  %and11.i143 = and i32 %shl.i142, %conv.i129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i143)
  %tobool12.not.i144 = icmp eq i32 %and11.i143, 0
  %and16.i145 = and i32 %shl.i142, %conv14.i134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i145)
  %tobool17.not.i146 = icmp eq i32 %and16.i145, 0
  %or.cond70.i = or i1 %tobool12.not.i144, %tobool17.not.i146
  br i1 %or.cond70.i, label %for.body.i147.for.inc.i155_crit_edge, label %if.then18.i150

for.body.i147.for.inc.i155_crit_edge:             ; preds = %for.body.i147
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i155

if.then18.i150:                                   ; preds = %for.body.i147
  %220 = trunc i32 %shl.i142 to i16
  %conv20.i148 = xor i16 %220, -1
  %221 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %reg.i, align 4
  %add.ptr.i60.i = getelementptr i8, ptr %222, i32 74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %223 = tail call i16 @llvm.bswap.i16(i16 %conv20.i148) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i60.i, i16 %223) #11, !srcloc !191
  %sub.i.i = shl nuw nsw i32 %indvars.iv.i141, 1
  %add.i.i149 = add nuw nsw i32 %sub.i.i, 110
  %224 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %reg.i, align 4
  %add.ptr.i17.i.i = getelementptr i8, ptr %225, i32 %add.i.i149
  %226 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i17.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %227 = and i16 %226, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %227)
  %cmp24.i = icmp eq i16 %227, 0
  br i1 %cmp24.i, label %if.then26.i, label %if.then18.i150.for.inc.i155_crit_edge

if.then18.i150.for.inc.i155_crit_edge:            ; preds = %if.then18.i150
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i155

if.then26.i:                                      ; preds = %if.then18.i150
  %228 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i62.i = getelementptr i8, ptr %229, i32 48
  %230 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i62.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %231 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i151 = getelementptr i8, ptr %232, i32 48
  %233 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i151) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %234 = and i16 %233, -8
  %235 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i152 = getelementptr i8, ptr %236, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i152, i16 %234) #11, !srcloc !191
  %237 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i6.i.i = getelementptr i8, ptr %238, i32 58
  %239 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i.i) #11, !srcloc !188
  %240 = tail call i16 @llvm.bswap.i16(i16 %239) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %and.i7.i.i = and i16 %240, %conv20.i148
  %241 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i8.i.i = getelementptr i8, ptr %242, i32 58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %243 = tail call i16 @llvm.bswap.i16(i16 %and.i7.i.i) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i8.i.i, i16 %243) #11, !srcloc !191
  %244 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %reg.i, align 4
  %add.ptr.i10.i.i = getelementptr i8, ptr %245, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i10.i.i, i16 %230) #11, !srcloc !191
  %246 = trunc i32 %indvars.iv.i141 to i16
  tail call fastcc void @pipe_irq_disable(ptr noundef %_r8a66597, i16 noundef zeroext %246) #11
  %247 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i17.i.i.i = getelementptr i8, ptr %248, i32 %add.i.i149
  %249 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i17.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %250 = and i16 %249, -769
  %251 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i20.i.i.i = getelementptr i8, ptr %252, i32 %add.i.i149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i20.i.i.i, i16 %250) #11, !srcloc !191
  %arrayidx27.i = getelementptr %struct.r8a66597, ptr %_r8a66597, i32 0, i32 8, i32 %indvars.iv.i141
  %253 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %arrayidx27.i, align 4
  %queue.i64.i = getelementptr inbounds %struct.r8a66597_ep, ptr %254, i32 0, i32 3
  %255 = ptrtoint ptr %queue.i64.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %queue.i64.i, align 4
  %257 = load volatile ptr, ptr %queue.i64.i, align 4
  %cmp.i66.not.i = icmp eq ptr %257, %queue.i64.i
  br i1 %cmp.i66.not.i, label %if.then26.i.for.inc.i155_crit_edge, label %if.then31.i

if.then26.i.for.inc.i155_crit_edge:               ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i155

if.then31.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i65.i = getelementptr i8, ptr %256, i32 -56
  tail call fastcc void @transfer_complete(ptr noundef %254, ptr noundef %add.ptr.i65.i, i32 noundef 0) #11
  br label %for.inc.i155

for.inc.i155:                                     ; preds = %if.then31.i, %if.then26.i.for.inc.i155_crit_edge, %if.then18.i150.for.inc.i155_crit_edge, %for.body.i147.for.inc.i155_crit_edge
  %indvars.iv.next.i153 = add nuw nsw i32 %indvars.iv.i141, 1
  %exitcond.not.i154 = icmp eq i32 %indvars.iv.next.i153, 8
  br i1 %exitcond.not.i154, label %for.inc.i155.if.end53_crit_edge, label %for.inc.i155.for.body.i147_crit_edge

for.inc.i155.for.body.i147_crit_edge:             ; preds = %for.inc.i155
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i147

for.inc.i155.if.end53_crit_edge:                  ; preds = %for.inc.i155
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.end53:                                         ; preds = %for.inc.i155.if.end53_crit_edge, %if.then.i140, %if.end39.if.end53_crit_edge
  %and55 = and i32 %conv, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end53.if.end59_crit_edge, label %if.then57

if.end53.if.end59_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.then57:                                        ; preds = %if.end53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ctrl.i) #11
  %258 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl.i, i32 0, i32 1
  %259 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl.i, i32 0, i32 2
  %260 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl.i, i32 0, i32 3
  %261 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i157 = getelementptr i8, ptr %262, i32 64
  %263 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i157) #11, !srcloc !188
  %264 = lshr i16 %263, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %265 = and i16 %264, 7
  %266 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %reg.i, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %267, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i28.i, i16 -9) #11, !srcloc !191
  %conv2.i = zext i16 %265 to i32
  %268 = zext i32 %conv2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %268, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %conv2.i, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %if.then57.sw.bb5.i_crit_edge
    i32 3, label %if.then57.sw.bb5.i_crit_edge175
    i32 5, label %if.then57.sw.bb5.i_crit_edge176
    i32 2, label %if.then57.sw.bb12.i_crit_edge
    i32 4, label %if.then57.sw.bb12.i_crit_edge177
  ]

if.then57.sw.bb12.i_crit_edge177:                 ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb12.i

if.then57.sw.bb12.i_crit_edge:                    ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb12.i

if.then57.sw.bb5.i_crit_edge176:                  ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5.i

if.then57.sw.bb5.i_crit_edge175:                  ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5.i

if.then57.sw.bb5.i_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5.i

sw.bb.i:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #13
  %ep3.i = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 7
  %queue.i.i158 = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 7, i32 0, i32 3
  %269 = ptrtoint ptr %queue.i.i158 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %queue.i.i158, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %270, i32 -56
  tail call fastcc void @transfer_complete(ptr noundef %ep3.i, ptr noundef %add.ptr.i29.i, i32 noundef 0) #11
  br label %irq_control_stage.exit

sw.bb5.i:                                         ; preds = %if.then57.sw.bb5.i_crit_edge, %if.then57.sw.bb5.i_crit_edge175, %if.then57.sw.bb5.i_crit_edge176
  %271 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl.i, i32 0, i32 4
  %272 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i159 = getelementptr i8, ptr %273, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i159, i16 -2049) #11, !srcloc !191
  %274 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %reg.i, align 4
  %add.ptr.i19.i.i = getelementptr i8, ptr %275, i32 84
  %276 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i19.i.i) #11, !srcloc !188
  %277 = tail call i16 @llvm.bswap.i16(i16 %276) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %278 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store2_noabort(i32 %278)
  store i16 %277, ptr %ctrl.i, align 2
  %279 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %reg.i, align 4
  %add.ptr.i19.1.i.i = getelementptr i8, ptr %280, i32 86
  %281 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i19.1.i.i) #11, !srcloc !188
  %282 = tail call i16 @llvm.bswap.i16(i16 %281) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %283 = ptrtoint ptr %259 to i32
  call void @__asan_store2_noabort(i32 %283)
  store i16 %282, ptr %259, align 2
  %284 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %reg.i, align 4
  %add.ptr.i19.2.i.i = getelementptr i8, ptr %285, i32 88
  %286 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i19.2.i.i) #11, !srcloc !188
  %287 = tail call i16 @llvm.bswap.i16(i16 %286) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %288 = ptrtoint ptr %260 to i32
  call void @__asan_store2_noabort(i32 %288)
  store i16 %287, ptr %260, align 2
  %289 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %reg.i, align 4
  %add.ptr.i19.3.i.i = getelementptr i8, ptr %290, i32 90
  %291 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i19.3.i.i) #11, !srcloc !188
  %292 = tail call i16 @llvm.bswap.i16(i16 %291) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %293 = ptrtoint ptr %271 to i32
  call void @__asan_store2_noabort(i32 %293)
  store i16 %292, ptr %271, align 2
  %294 = lshr i16 %277, 8
  %295 = trunc i16 %294 to i8
  %296 = and i8 %295, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %296)
  %cmp1.i.i = icmp eq i8 %296, 0
  br i1 %cmp1.i.i, label %if.then.i.i, label %sw.bb5.i.if.then.i168_crit_edge

sw.bb5.i.if.then.i168_crit_edge:                  ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i168

if.then.i.i:                                      ; preds = %sw.bb5.i
  %297 = ptrtoint ptr %258 to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %258, align 1
  %299 = zext i8 %298 to i64
  call void @__sanitizer_cov_trace_switch(i64 %299, ptr @__sancov_gen_cov_switch_values.80)
  switch i8 %298, label %if.then.i.i.if.then.i168_crit_edge [
    i8 0, label %sw.bb.i.i160
    i8 1, label %sw.bb4.i.i
    i8 3, label %sw.bb5.i.i
  ]

if.then.i.i.if.then.i168_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i168

sw.bb.i.i160:                                     ; preds = %if.then.i.i
  %300 = and i8 %295, 31
  %and.i.i.i = zext i8 %300 to i32
  %301 = zext i32 %and.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %301, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %and.i.i.i, label %sw.default.i.i.i [
    i32 0, label %sw.bb.i.i.i
    i32 1, label %sw.bb.i.i160.sw.epilog.i.i.i_crit_edge
    i32 2, label %sw.bb2.i.i.i
  ]

sw.bb.i.i160.sw.epilog.i.i.i_crit_edge:           ; preds = %sw.bb.i.i160
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i.i

sw.bb.i.i.i:                                      ; preds = %sw.bb.i.i160
  call void @__sanitizer_cov_trace_pc() #13
  %device_status.i.i.i = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 17
  %302 = ptrtoint ptr %device_status.i.i.i to i32
  call void @__asan_load2_noabort(i32 %302)
  %303 = load i16, ptr %device_status.i.i.i, align 4
  br label %sw.epilog.i.i.i

sw.bb2.i.i.i:                                     ; preds = %sw.bb.i.i160
  %304 = ptrtoint ptr %260 to i32
  call void @__asan_load2_noabort(i32 %304)
  %305 = load i16, ptr %260, align 2
  %306 = lshr i16 %305, 8
  %307 = and i16 %306, 15
  %and4.i.i.i = zext i16 %307 to i32
  %arrayidx.i.i.i = getelementptr %struct.r8a66597, ptr %_r8a66597, i32 0, i32 9, i32 %and4.i.i.i
  %308 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %arrayidx.i.i.i, align 4
  %pipenum.i.i.i = getelementptr inbounds %struct.r8a66597_ep, ptr %309, i32 0, i32 5
  %310 = ptrtoint ptr %pipenum.i.i.i to i32
  call void @__asan_load2_noabort(i32 %310)
  %311 = load i16, ptr %pipenum.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %311 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %311)
  %cmp.i.i.i.i = icmp eq i16 %311, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %if.else.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %sw.bb2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %312 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i.i161 = getelementptr i8, ptr %313, i32 96
  %314 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i.i161) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  br label %control_reg_get_pid.exit.i.i.i

if.else.i.i.i.i:                                  ; preds = %sw.bb2.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %311)
  %cmp5.i.i.i.i = icmp ult i16 %311, 8
  br i1 %cmp5.i.i.i.i, label %if.then7.i.i.i.i, label %control_reg_get_pid.exit.thread.i.i.i

if.then7.i.i.i.i:                                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i.i = shl nuw nsw i32 %conv.i.i.i.i, 1
  %add.i.i.i.i = add nuw nsw i32 %sub.i.i.i.i, 110
  %315 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %reg.i, align 4
  %add.ptr.i22.i.i.i.i = getelementptr i8, ptr %316, i32 %add.i.i.i.i
  %317 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i22.i.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  br label %control_reg_get_pid.exit.i.i.i

control_reg_get_pid.exit.thread.i.i.i:            ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %parent.i.i.i.i = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 5, i32 11, i32 1
  %318 = ptrtoint ptr %parent.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %parent.i.i.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %319, ptr noundef nonnull @.str.28, i32 noundef %conv.i.i.i.i) #14
  br label %sw.epilog.i.i.i

control_reg_get_pid.exit.i.i.i:                   ; preds = %if.then7.i.i.i.i, %if.then.i.i.i.i
  %pid.0.i.in.in.i.i.i = phi i16 [ %314, %if.then.i.i.i.i ], [ %317, %if.then7.i.i.i.i ]
  %320 = and i16 %pid.0.i.in.in.i.i.i, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %320)
  %cmp.i.i.i = icmp eq i16 %320, 512
  %spec.select.i.i.i = zext i1 %cmp.i.i.i to i16
  br label %sw.epilog.i.i.i

sw.default.i.i.i:                                 ; preds = %sw.bb.i.i160
  call void @__sanitizer_cov_trace_pc() #13
  %321 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i.i.i.i = getelementptr i8, ptr %322, i32 96
  %323 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %324 = and i16 %323, -769
  %325 = or i16 %324, 512
  %326 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i.i.i.i = getelementptr i8, ptr %327, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i.i.i.i, i16 %325) #11, !srcloc !191
  br label %irq_control_stage.exit

sw.epilog.i.i.i:                                  ; preds = %control_reg_get_pid.exit.i.i.i, %control_reg_get_pid.exit.thread.i.i.i, %sw.bb.i.i.i, %sw.bb.i.i160.sw.epilog.i.i.i_crit_edge
  %status.0.i.i.i = phi i16 [ %303, %sw.bb.i.i.i ], [ 0, %sw.bb.i.i160.sw.epilog.i.i.i_crit_edge ], [ 0, %control_reg_get_pid.exit.thread.i.i.i ], [ %spec.select.i.i.i, %control_reg_get_pid.exit.i.i.i ]
  %328 = tail call i16 @llvm.bswap.i16(i16 %status.0.i.i.i) #11
  %ep0_data.i.i.i = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 13
  %329 = ptrtoint ptr %ep0_data.i.i.i to i32
  call void @__asan_store2_noabort(i32 %329)
  store i16 %328, ptr %ep0_data.i.i.i, align 4
  %ep0_req.i.i.i = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 12
  %330 = ptrtoint ptr %ep0_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %ep0_req.i.i.i, align 8
  %332 = ptrtoint ptr %331 to i32
  call void @__asan_store4_noabort(i32 %332)
  store ptr %ep0_data.i.i.i, ptr %331, align 4
  %333 = load ptr, ptr %ep0_req.i.i.i, align 8
  %length.i.i.i = getelementptr inbounds %struct.usb_request, ptr %333, i32 0, i32 1
  %334 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 2, ptr %length.i.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_r8a66597) #11
  %ep0.i.i.i = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 5, i32 3
  %335 = ptrtoint ptr %ep0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %ep0.i.i.i, align 4
  %337 = ptrtoint ptr %ep0_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %ep0_req.i.i.i, align 8
  %call10.i.i.i = tail call i32 @r8a66597_queue(ptr noundef %336, ptr noundef %338, i32 noundef 2592) #11
  tail call void @_raw_spin_lock(ptr noundef %_r8a66597) #11
  br label %irq_control_stage.exit

sw.bb4.i.i:                                       ; preds = %if.then.i.i
  %339 = and i8 %295, 31
  %and.i20.i.i = zext i8 %339 to i32
  %340 = zext i32 %and.i20.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %340, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %and.i20.i.i, label %sw.default.i32.i.i [
    i32 0, label %sw.bb.i21.i.i
    i32 1, label %sw.bb1.i.i.i
    i32 2, label %sw.bb2.i25.i.i
  ]

sw.bb.i21.i.i:                                    ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %internal_ccpl.i.i.i.i = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 7, i32 0, i32 4
  %341 = ptrtoint ptr %internal_ccpl.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %341)
  %bf.load.i.i.i.i = load i8, ptr %internal_ccpl.i.i.i.i, align 4
  %bf.set.i.i.i.i = or i8 %bf.load.i.i.i.i, 32
  store i8 %bf.set.i.i.i.i, ptr %internal_ccpl.i.i.i.i, align 4
  %342 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i.i.i.i.i = getelementptr i8, ptr %343, i32 96
  %344 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i.i.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %345 = and i16 %344, -769
  %346 = or i16 %345, 256
  %347 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i.i.i.i.i = getelementptr i8, ptr %348, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i.i.i.i.i, i16 %346) #11, !srcloc !191
  %349 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %350, i32 96
  %351 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %352 = or i16 %351, 1024
  %353 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i.i.i = getelementptr i8, ptr %354, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i.i.i, i16 %352) #11, !srcloc !191
  br label %irq_control_stage.exit

sw.bb1.i.i.i:                                     ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %internal_ccpl.i50.i.i.i = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 7, i32 0, i32 4
  %355 = ptrtoint ptr %internal_ccpl.i50.i.i.i to i32
  call void @__asan_load1_noabort(i32 %355)
  %bf.load.i51.i.i.i = load i8, ptr %internal_ccpl.i50.i.i.i, align 4
  %bf.set.i53.i.i.i = or i8 %bf.load.i51.i.i.i, 32
  store i8 %bf.set.i53.i.i.i, ptr %internal_ccpl.i50.i.i.i, align 4
  %356 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i.i55.i.i.i = getelementptr i8, ptr %357, i32 96
  %358 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i.i55.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %359 = and i16 %358, -769
  %360 = or i16 %359, 256
  %361 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i.i56.i.i.i = getelementptr i8, ptr %362, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i.i56.i.i.i, i16 %360) #11, !srcloc !191
  %363 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i57.i.i.i = getelementptr i8, ptr %364, i32 96
  %365 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i57.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %366 = or i16 %365, 1024
  %367 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i58.i.i.i = getelementptr i8, ptr %368, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i58.i.i.i, i16 %366) #11, !srcloc !191
  br label %irq_control_stage.exit

sw.bb2.i25.i.i:                                   ; preds = %sw.bb4.i.i
  %369 = ptrtoint ptr %260 to i32
  call void @__asan_load2_noabort(i32 %369)
  %370 = load i16, ptr %260, align 2
  %371 = lshr i16 %370, 8
  %372 = and i16 %371, 15
  %and4.i23.i.i = zext i16 %372 to i32
  %arrayidx.i24.i.i = getelementptr %struct.r8a66597, ptr %_r8a66597, i32 0, i32 9, i32 %and4.i23.i.i
  %373 = ptrtoint ptr %arrayidx.i24.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %arrayidx.i24.i.i, align 4
  %wedge.i.i.i = getelementptr inbounds %struct.r8a66597_ep, ptr %374, i32 0, i32 4
  %375 = ptrtoint ptr %wedge.i.i.i to i32
  call void @__asan_load1_noabort(i32 %375)
  %bf.load.i.i.i = load i8, ptr %wedge.i.i.i, align 4
  %376 = and i8 %bf.load.i.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %376)
  %tobool.not.i.i.i = icmp eq i8 %376, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %sw.bb2.i25.i.i.if.end.i.i.i_crit_edge

sw.bb2.i25.i.i.if.end.i.i.i_crit_edge:            ; preds = %sw.bb2.i25.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %sw.bb2.i25.i.i
  %pipenum.i26.i.i = getelementptr inbounds %struct.r8a66597_ep, ptr %374, i32 0, i32 5
  %377 = ptrtoint ptr %pipenum.i26.i.i to i32
  call void @__asan_load2_noabort(i32 %377)
  %378 = load i16, ptr %pipenum.i26.i.i, align 2
  %conv.i.i.i.i.i = zext i16 %378 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %378)
  %cmp.i.i.i.i.i = icmp eq i16 %378, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.else.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %379 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i.i28.i.i = getelementptr i8, ptr %380, i32 96
  %381 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i.i28.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %382 = and i16 %381, -769
  %383 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i.i29.i.i = getelementptr i8, ptr %384, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i.i29.i.i, i16 %382) #11, !srcloc !191
  br label %pipe_stop.exit.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %378)
  %cmp3.i.i.i.i.i = icmp ult i16 %378, 8
  br i1 %cmp3.i.i.i.i.i, label %if.then5.i.i.i.i.i, label %do.end.i.i.i.i.i

if.then5.i.i.i.i.i:                               ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i.i.i = shl nuw nsw i32 %conv.i.i.i.i.i, 1
  %add.i.i.i.i.i = add nuw nsw i32 %sub.i.i.i.i.i, 110
  %385 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i17.i.i.i.i.i = getelementptr i8, ptr %386, i32 %add.i.i.i.i.i
  %387 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i17.i.i.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %388 = and i16 %387, -769
  %389 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i20.i.i.i.i.i = getelementptr i8, ptr %390, i32 %add.i.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i20.i.i.i.i.i, i16 %388) #11, !srcloc !191
  br label %pipe_stop.exit.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %parent.i.i.i.i.i = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 5, i32 11, i32 1
  %391 = ptrtoint ptr %parent.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %parent.i.i.i.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %392, ptr noundef nonnull @.str.28, i32 noundef %conv.i.i.i.i.i) #14
  br label %pipe_stop.exit.i.i.i

pipe_stop.exit.i.i.i:                             ; preds = %do.end.i.i.i.i.i, %if.then5.i.i.i.i.i, %if.then.i.i.i.i.i
  %393 = ptrtoint ptr %pipenum.i26.i.i to i32
  call void @__asan_load2_noabort(i32 %393)
  %394 = load i16, ptr %pipenum.i26.i.i, align 2
  tail call fastcc void @control_reg_sqclr(ptr noundef %_r8a66597, i16 noundef zeroext %394) #11
  tail call void @_raw_spin_unlock(ptr noundef %_r8a66597) #11
  %call.i.i.i = tail call i32 @usb_ep_clear_halt(ptr noundef %374) #11
  tail call void @_raw_spin_lock(ptr noundef %_r8a66597) #11
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %pipe_stop.exit.i.i.i, %sw.bb2.i25.i.i.if.end.i.i.i_crit_edge
  %internal_ccpl.i59.i.i.i = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 7, i32 0, i32 4
  %395 = ptrtoint ptr %internal_ccpl.i59.i.i.i to i32
  call void @__asan_load1_noabort(i32 %395)
  %bf.load.i60.i.i.i = load i8, ptr %internal_ccpl.i59.i.i.i, align 4
  %bf.set.i62.i.i.i = or i8 %bf.load.i60.i.i.i, 32
  store i8 %bf.set.i62.i.i.i, ptr %internal_ccpl.i59.i.i.i, align 4
  %396 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i.i64.i.i.i = getelementptr i8, ptr %397, i32 96
  %398 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i.i64.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %399 = and i16 %398, -769
  %400 = or i16 %399, 256
  %401 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i.i65.i.i.i = getelementptr i8, ptr %402, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i.i65.i.i.i, i16 %400) #11, !srcloc !191
  %403 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i66.i.i.i = getelementptr i8, ptr %404, i32 96
  %405 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i66.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %406 = or i16 %405, 1024
  %407 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i67.i.i.i = getelementptr i8, ptr %408, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i67.i.i.i, i16 %406) #11, !srcloc !191
  %queue.i.i.i.i = getelementptr inbounds %struct.r8a66597_ep, ptr %374, i32 0, i32 3
  %409 = ptrtoint ptr %queue.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %queue.i.i.i.i, align 4
  %add.ptr.i.i.i.i162 = getelementptr i8, ptr %410, i32 -56
  %411 = ptrtoint ptr %wedge.i.i.i to i32
  call void @__asan_load1_noabort(i32 %411)
  %bf.load9.i.i.i = load i8, ptr %wedge.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load9.i.i.i)
  %tobool12.not.i.i.i = icmp sgt i8 %bf.load9.i.i.i, -1
  br i1 %tobool12.not.i.i.i, label %if.else.i.i.i, label %if.then13.i.i.i

if.then13.i.i.i:                                  ; preds = %if.end.i.i.i
  %bf.clear16.i.i.i = and i8 %bf.load9.i.i.i, 127
  %412 = ptrtoint ptr %wedge.i.i.i to i32
  call void @__asan_store1_noabort(i32 %412)
  store i8 %bf.clear16.i.i.i, ptr %wedge.i.i.i, align 4
  %413 = ptrtoint ptr %queue.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load volatile ptr, ptr %queue.i.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %414, %queue.i.i.i.i
  br i1 %cmp.i.not.i.i.i, label %if.then13.i.i.i.irq_control_stage.exit_crit_edge, label %if.end20.i.i.i

if.then13.i.i.i.irq_control_stage.exit_crit_edge: ; preds = %if.then13.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %irq_control_stage.exit

if.end20.i.i.i:                                   ; preds = %if.then13.i.i.i
  %desc.i.i.i.i = getelementptr inbounds %struct.usb_ep, ptr %374, i32 0, i32 9
  %415 = ptrtoint ptr %desc.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %desc.i.i.i.i, align 4
  %bEndpointAddress.i.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %416, i32 0, i32 2
  %417 = ptrtoint ptr %bEndpointAddress.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %417)
  %418 = load i8, ptr %bEndpointAddress.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %418)
  %tobool.not.i.i.i.i = icmp sgt i8 %418, -1
  br i1 %tobool.not.i.i.i.i, label %if.else.i.i31.i.i, label %if.then.i.i30.i.i

if.then.i.i30.i.i:                                ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @start_packet_write(ptr noundef %374, ptr noundef %add.ptr.i.i.i.i162) #11
  br label %irq_control_stage.exit

if.else.i.i31.i.i:                                ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @start_packet_read(ptr noundef %374, ptr noundef %add.ptr.i.i.i.i162) #11
  br label %irq_control_stage.exit

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  %419 = ptrtoint ptr %queue.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load volatile ptr, ptr %queue.i.i.i.i, align 4
  %cmp.i68.not.i.i.i = icmp eq ptr %420, %queue.i.i.i.i
  br i1 %cmp.i68.not.i.i.i, label %if.else.i.i.i.irq_control_stage.exit_crit_edge, label %if.then24.i.i.i

if.else.i.i.i.irq_control_stage.exit_crit_edge:   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %irq_control_stage.exit

if.then24.i.i.i:                                  ; preds = %if.else.i.i.i
  %pipenum25.i.i.i = getelementptr inbounds %struct.r8a66597_ep, ptr %374, i32 0, i32 5
  %421 = ptrtoint ptr %pipenum25.i.i.i to i32
  call void @__asan_load2_noabort(i32 %421)
  %422 = load i16, ptr %pipenum25.i.i.i, align 2
  %conv.i.i70.i.i.i = zext i16 %422 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %422)
  %cmp.i.i71.i.i.i = icmp eq i16 %422, 0
  br i1 %cmp.i.i71.i.i.i, label %if.then.i.i75.i.i.i, label %if.else.i.i77.i.i.i

if.then.i.i75.i.i.i:                              ; preds = %if.then24.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %423 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i73.i.i.i = getelementptr i8, ptr %424, i32 96
  %425 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i73.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %426 = and i16 %425, -769
  %427 = or i16 %426, 256
  %428 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i74.i.i.i = getelementptr i8, ptr %429, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i74.i.i.i, i16 %427) #11, !srcloc !191
  br label %irq_control_stage.exit

if.else.i.i77.i.i.i:                              ; preds = %if.then24.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %422)
  %cmp3.i.i76.i.i.i = icmp ult i16 %422, 8
  br i1 %cmp3.i.i76.i.i.i, label %if.then5.i.i83.i.i.i, label %do.end.i.i85.i.i.i

if.then5.i.i83.i.i.i:                             ; preds = %if.else.i.i77.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i78.i.i.i = shl nuw nsw i32 %conv.i.i70.i.i.i, 1
  %add.i.i79.i.i.i = add nuw nsw i32 %sub.i.i78.i.i.i, 110
  %430 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i17.i.i81.i.i.i = getelementptr i8, ptr %431, i32 %add.i.i79.i.i.i
  %432 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i17.i.i81.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %433 = and i16 %432, -769
  %434 = or i16 %433, 256
  %435 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i20.i.i82.i.i.i = getelementptr i8, ptr %436, i32 %add.i.i79.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i20.i.i82.i.i.i, i16 %434) #11, !srcloc !191
  br label %irq_control_stage.exit

do.end.i.i85.i.i.i:                               ; preds = %if.else.i.i77.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %parent.i.i84.i.i.i = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 5, i32 11, i32 1
  %437 = ptrtoint ptr %parent.i.i84.i.i.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %parent.i.i84.i.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %438, ptr noundef nonnull @.str.28, i32 noundef %conv.i.i70.i.i.i) #14
  br label %irq_control_stage.exit

sw.default.i32.i.i:                               ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %439 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i87.i.i.i = getelementptr i8, ptr %440, i32 96
  %441 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i87.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %442 = and i16 %441, -769
  %443 = or i16 %442, 512
  %444 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i88.i.i.i = getelementptr i8, ptr %445, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i88.i.i.i, i16 %443) #11, !srcloc !191
  br label %irq_control_stage.exit

sw.bb5.i.i:                                       ; preds = %if.then.i.i
  %446 = and i8 %295, 31
  %and.i34.i.i = zext i8 %446 to i32
  %447 = zext i32 %and.i34.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %447, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %and.i34.i.i, label %sw.default20.i.i.i [
    i32 0, label %sw.bb.i35.i.i
    i32 1, label %sw.bb15.i.i.i
    i32 2, label %sw.bb16.i.i.i
  ]

sw.bb.i35.i.i:                                    ; preds = %sw.bb5.i.i
  %448 = ptrtoint ptr %259 to i32
  call void @__asan_load2_noabort(i32 %448)
  %449 = load i16, ptr %259, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %449)
  %cond.i.i.i = icmp eq i16 %449, 512
  br i1 %cond.i.i.i, label %sw.bb2.i44.i.i, label %sw.default.i52.i.i

sw.bb2.i44.i.i:                                   ; preds = %sw.bb.i35.i.i
  %internal_ccpl.i.i36.i.i = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 7, i32 0, i32 4
  %450 = ptrtoint ptr %internal_ccpl.i.i36.i.i to i32
  call void @__asan_load1_noabort(i32 %450)
  %bf.load.i.i37.i.i = load i8, ptr %internal_ccpl.i.i36.i.i, align 4
  %bf.set.i.i38.i.i = or i8 %bf.load.i.i37.i.i, 32
  store i8 %bf.set.i.i38.i.i, ptr %internal_ccpl.i.i36.i.i, align 4
  %451 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i.i.i40.i.i = getelementptr i8, ptr %452, i32 96
  %453 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i.i.i40.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %454 = and i16 %453, -769
  %455 = or i16 %454, 256
  %456 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i.i.i41.i.i = getelementptr i8, ptr %457, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i.i.i41.i.i, i16 %455) #11, !srcloc !191
  %458 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i42.i.i = getelementptr i8, ptr %459, i32 96
  %460 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i42.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %461 = or i16 %460, 1024
  %462 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i43.i.i = getelementptr i8, ptr %463, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i43.i.i, i16 %461) #11, !srcloc !191
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %sw.bb2.i44.i.i
  %timeout.0.i.i.i = phi i32 [ 3000, %sw.bb2.i44.i.i ], [ %dec.i.i.i, %do.body.i.i.i.do.body.i.i.i_crit_edge ]
  %464 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i45.i.i = getelementptr i8, ptr %465, i32 64
  %466 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i45.i.i) #11, !srcloc !188
  %467 = lshr i16 %466, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %468 = and i16 %467, 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %469 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %469(i32 noundef 214748) #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %468)
  %cmp.not.i.i.i = icmp ne i16 %468, 0
  %dec.i.i.i = add nsw i32 %timeout.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i.i.i)
  %cmp8.i.i.i = icmp ne i32 %timeout.0.i.i.i, 0
  %or.cond.i.i.i = select i1 %cmp.not.i.i.i, i1 %cmp8.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge, label %do.end.i.i.i

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i

do.end.i.i.i:                                     ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %468)
  %cmp11.i.i.i = icmp eq i16 %468, 0
  br i1 %cmp11.i.i.i, label %if.then.i48.i.i, label %do.end.i.i.i.irq_control_stage.exit_crit_edge

do.end.i.i.i.irq_control_stage.exit_crit_edge:    ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %irq_control_stage.exit

if.then.i48.i.i:                                  ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %470 = ptrtoint ptr %260 to i32
  call void @__asan_load2_noabort(i32 %470)
  %471 = load i16, ptr %260, align 2
  %472 = and i16 %471, -256
  %473 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i47.i.i = getelementptr i8, ptr %474, i32 12
  %475 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i47.i.i) #11, !srcloc !188
  %476 = tail call i16 @llvm.bswap.i16(i16 %475) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %or10.i.i.i.i163 = or i16 %476, %472
  %477 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i.i164 = getelementptr i8, ptr %478, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %479 = tail call i16 @llvm.bswap.i16(i16 %or10.i.i.i.i163) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i.i164, i16 %479) #11, !srcloc !191
  br label %irq_control_stage.exit

sw.default.i52.i.i:                               ; preds = %sw.bb.i35.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %480 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i.i50.i.i = getelementptr i8, ptr %481, i32 96
  %482 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i.i50.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %483 = and i16 %482, -769
  %484 = or i16 %483, 512
  %485 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i.i51.i.i = getelementptr i8, ptr %486, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i.i51.i.i, i16 %484) #11, !srcloc !191
  br label %irq_control_stage.exit

sw.bb15.i.i.i:                                    ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %internal_ccpl.i34.i.i.i = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 7, i32 0, i32 4
  %487 = ptrtoint ptr %internal_ccpl.i34.i.i.i to i32
  call void @__asan_load1_noabort(i32 %487)
  %bf.load.i35.i.i.i = load i8, ptr %internal_ccpl.i34.i.i.i, align 4
  %bf.set.i37.i.i.i = or i8 %bf.load.i35.i.i.i, 32
  store i8 %bf.set.i37.i.i.i, ptr %internal_ccpl.i34.i.i.i, align 4
  %488 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i.i39.i.i.i = getelementptr i8, ptr %489, i32 96
  %490 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i.i39.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %491 = and i16 %490, -769
  %492 = or i16 %491, 256
  %493 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i.i40.i.i.i = getelementptr i8, ptr %494, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i.i40.i.i.i, i16 %492) #11, !srcloc !191
  %495 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i41.i.i.i = getelementptr i8, ptr %496, i32 96
  %497 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i41.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %498 = or i16 %497, 1024
  %499 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i42.i.i.i = getelementptr i8, ptr %500, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i42.i.i.i, i16 %498) #11, !srcloc !191
  br label %irq_control_stage.exit

sw.bb16.i.i.i:                                    ; preds = %sw.bb5.i.i
  %501 = ptrtoint ptr %260 to i32
  call void @__asan_load2_noabort(i32 %501)
  %502 = load i16, ptr %260, align 2
  %503 = lshr i16 %502, 8
  %504 = and i16 %503, 15
  %and19.i.i.i = zext i16 %504 to i32
  %arrayidx.i53.i.i = getelementptr %struct.r8a66597, ptr %_r8a66597, i32 0, i32 9, i32 %and19.i.i.i
  %505 = ptrtoint ptr %arrayidx.i53.i.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %arrayidx.i53.i.i, align 4
  %pipenum.i54.i.i = getelementptr inbounds %struct.r8a66597_ep, ptr %506, i32 0, i32 5
  %507 = ptrtoint ptr %pipenum.i54.i.i to i32
  call void @__asan_load2_noabort(i32 %507)
  %508 = load i16, ptr %pipenum.i54.i.i, align 2
  %conv.i.i.i55.i.i = zext i16 %508 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %508)
  %cmp.i.i.i56.i.i = icmp eq i16 %508, 0
  br i1 %cmp.i.i.i56.i.i, label %if.then.i.i.i57.i.i, label %if.else.i.i.i59.i.i

if.then.i.i.i57.i.i:                              ; preds = %sw.bb16.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %509 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i44.i.i.i = getelementptr i8, ptr %510, i32 96
  %511 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i44.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %512 = and i16 %511, -769
  %513 = or i16 %512, 512
  %514 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i45.i.i.i = getelementptr i8, ptr %515, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i45.i.i.i, i16 %513) #11, !srcloc !191
  br label %pipe_stall.exit.i.i.i

if.else.i.i.i59.i.i:                              ; preds = %sw.bb16.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %508)
  %cmp3.i.i.i58.i.i = icmp ult i16 %508, 8
  br i1 %cmp3.i.i.i58.i.i, label %if.then5.i.i.i65.i.i, label %do.end.i.i.i67.i.i

if.then5.i.i.i65.i.i:                             ; preds = %if.else.i.i.i59.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i60.i.i = shl nuw nsw i32 %conv.i.i.i55.i.i, 1
  %add.i.i.i61.i.i = add nuw nsw i32 %sub.i.i.i60.i.i, 110
  %516 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i17.i.i.i63.i.i = getelementptr i8, ptr %517, i32 %add.i.i.i61.i.i
  %518 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i17.i.i.i63.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %519 = and i16 %518, -769
  %520 = or i16 %519, 512
  %521 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i20.i.i.i64.i.i = getelementptr i8, ptr %522, i32 %add.i.i.i61.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i20.i.i.i64.i.i, i16 %520) #11, !srcloc !191
  br label %pipe_stall.exit.i.i.i

do.end.i.i.i67.i.i:                               ; preds = %if.else.i.i.i59.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %parent.i.i.i66.i.i = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 5, i32 11, i32 1
  %523 = ptrtoint ptr %parent.i.i.i66.i.i to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %parent.i.i.i66.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %524, ptr noundef nonnull @.str.28, i32 noundef %conv.i.i.i55.i.i) #14
  br label %pipe_stall.exit.i.i.i

pipe_stall.exit.i.i.i:                            ; preds = %do.end.i.i.i67.i.i, %if.then5.i.i.i65.i.i, %if.then.i.i.i57.i.i
  %internal_ccpl.i46.i.i.i = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 7, i32 0, i32 4
  %525 = ptrtoint ptr %internal_ccpl.i46.i.i.i to i32
  call void @__asan_load1_noabort(i32 %525)
  %bf.load.i47.i.i.i = load i8, ptr %internal_ccpl.i46.i.i.i, align 4
  %bf.set.i49.i.i.i = or i8 %bf.load.i47.i.i.i, 32
  store i8 %bf.set.i49.i.i.i, ptr %internal_ccpl.i46.i.i.i, align 4
  %526 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i.i51.i.i.i = getelementptr i8, ptr %527, i32 96
  %528 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i.i51.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %529 = and i16 %528, -769
  %530 = or i16 %529, 256
  %531 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i.i52.i.i.i = getelementptr i8, ptr %532, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i.i52.i.i.i, i16 %530) #11, !srcloc !191
  %533 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i53.i.i.i = getelementptr i8, ptr %534, i32 96
  %535 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i53.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %536 = or i16 %535, 1024
  %537 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i54.i.i.i = getelementptr i8, ptr %538, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i54.i.i.i, i16 %536) #11, !srcloc !191
  br label %irq_control_stage.exit

sw.default20.i.i.i:                               ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %539 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i56.i.i.i = getelementptr i8, ptr %540, i32 96
  %541 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i56.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %542 = and i16 %541, -769
  %543 = or i16 %542, 512
  %544 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i57.i.i.i = getelementptr i8, ptr %545, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i57.i.i.i, i16 %543) #11, !srcloc !191
  br label %irq_control_stage.exit

if.then.i168:                                     ; preds = %if.then.i.i.if.then.i168_crit_edge, %sw.bb5.i.if.then.i168_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %_r8a66597) #11
  %driver.i165 = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 6
  %546 = ptrtoint ptr %driver.i165 to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %driver.i165, align 8
  %setup.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %547, i32 0, i32 4
  %548 = ptrtoint ptr %setup.i to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %setup.i, align 4
  %gadget.i166 = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 5
  %call7.i = call i32 %549(ptr noundef %gadget.i166, ptr noundef nonnull %ctrl.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i167 = icmp slt i32 %call7.i, 0
  br i1 %cmp.i167, label %if.then9.i, label %if.then.i168.if.end.i169_crit_edge

if.then.i168.if.end.i169_crit_edge:               ; preds = %if.then.i168
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i169

if.then9.i:                                       ; preds = %if.then.i168
  call void @__sanitizer_cov_trace_pc() #13
  %550 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i30.i = getelementptr i8, ptr %551, i32 96
  %552 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i30.i) #11, !srcloc !188
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %553 = and i16 %552, -769
  %554 = or i16 %553, 512
  %555 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i31.i = getelementptr i8, ptr %556, i32 96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  call void @arm_heavy_mb() #11
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i31.i, i16 %554) #11, !srcloc !191
  br label %if.end.i169

if.end.i169:                                      ; preds = %if.then9.i, %if.then.i168.if.end.i169_crit_edge
  call void @_raw_spin_lock(ptr noundef %_r8a66597) #11
  br label %irq_control_stage.exit

sw.bb12.i:                                        ; preds = %if.then57.sw.bb12.i_crit_edge, %if.then57.sw.bb12.i_crit_edge177
  %internal_ccpl.i.i = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 7, i32 0, i32 4
  %557 = ptrtoint ptr %internal_ccpl.i.i to i32
  call void @__asan_load1_noabort(i32 %557)
  %bf.load.i.i170 = load i8, ptr %internal_ccpl.i.i, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i170, -33
  store i8 %bf.clear.i.i, ptr %internal_ccpl.i.i, align 4
  %558 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i.i33.i = getelementptr i8, ptr %559, i32 96
  %560 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i.i33.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %561 = and i16 %560, -769
  %562 = or i16 %561, 256
  %563 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i.i34.i = getelementptr i8, ptr %564, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i.i34.i, i16 %562) #11, !srcloc !191
  %565 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i35.i = getelementptr i8, ptr %566, i32 96
  %567 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i35.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %568 = or i16 %567, 1024
  %569 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i171 = getelementptr i8, ptr %570, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i171, i16 %568) #11, !srcloc !191
  br label %irq_control_stage.exit

do.end.i:                                         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #13
  %parent.i = getelementptr inbounds %struct.r8a66597, ptr %_r8a66597, i32 0, i32 5, i32 11, i32 1
  %571 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %parent.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %572, ptr noundef nonnull @.str.43, i32 noundef %conv2.i) #14
  br label %irq_control_stage.exit

irq_control_stage.exit:                           ; preds = %do.end.i, %sw.bb12.i, %if.end.i169, %sw.default20.i.i.i, %pipe_stall.exit.i.i.i, %sw.bb15.i.i.i, %sw.default.i52.i.i, %if.then.i48.i.i, %do.end.i.i.i.irq_control_stage.exit_crit_edge, %sw.default.i32.i.i, %do.end.i.i85.i.i.i, %if.then5.i.i83.i.i.i, %if.then.i.i75.i.i.i, %if.else.i.i.i.irq_control_stage.exit_crit_edge, %if.else.i.i31.i.i, %if.then.i.i30.i.i, %if.then13.i.i.i.irq_control_stage.exit_crit_edge, %sw.bb1.i.i.i, %sw.bb.i21.i.i, %sw.epilog.i.i.i, %sw.default.i.i.i, %sw.bb.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ctrl.i) #11
  br label %if.end59

if.end59:                                         ; preds = %irq_control_stage.exit, %if.end53.if.end59_crit_edge, %if.end.if.end59_crit_edge
  %573 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load ptr, ptr %reg.i, align 4
  %add.ptr.i173 = getelementptr i8, ptr %574, i32 32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  call void @arm_heavy_mb() #11
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i173, i16 %107) #11, !srcloc !191
  call void @_raw_spin_unlock(ptr noundef %_r8a66597) #11
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_set_maxpacket_limit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @r8a66597_alloc_request(ptr nocapture noundef readnone %_ep, i32 noundef %gfp_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i.i = and i32 %gfp_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !197

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %entry
  %and2.i.i.i = and i32 %gfp_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
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
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 64) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  %queue = getelementptr inbounds %struct.r8a66597_request, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %queue, ptr %queue, align 8
  %prev.i = getelementptr inbounds %struct.r8a66597_request, ptr %call7.i.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %queue, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %kzalloc.exit.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @nop_completion(ptr nocapture noundef %ep, ptr nocapture noundef %r) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_gadget_udc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @r8a66597_free_request(ptr nocapture noundef readnone %_ep, ptr noundef %_req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %_req) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8a66597_get_frame(ptr nocapture noundef readonly %_gadget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.i = getelementptr i8, ptr %_gadget, i32 -20
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 76
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %3 = and i16 %2, -253
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %and = zext i16 %4 to i32
  ret i32 %and
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @r8a66597_set_selfpowered(ptr nocapture noundef %gadget, i32 noundef %is_self) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_self)
  %cmp.not = icmp eq i32 %is_self, 0
  %is_selfpowered = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 17
  %0 = ptrtoint ptr %is_selfpowered to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %is_selfpowered, align 4
  %bf.shl = select i1 %cmp.not, i32 0, i32 262144
  %bf.clear = and i32 %bf.load, -262145
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %is_selfpowered, align 4
  %device_status3 = getelementptr i8, ptr %gadget, i32 1788
  %1 = ptrtoint ptr %device_status3 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %device_status3, align 4
  %3 = and i16 %2, -2
  %not.cmp.not = xor i1 %cmp.not, true
  %masksel = zext i1 %not.cmp.not to i16
  %.sink = or i16 %3, %masksel
  store i16 %.sink, ptr %device_status3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8a66597_pullup(ptr noundef %gadget, i32 noundef %is_on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %gadget, i32 -64
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %tobool.not = icmp eq i32 %is_on, 0
  %reg.i.i10 = getelementptr i8, ptr %gadget, i32 -20
  %0 = ptrtoint ptr %reg.i.i10 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg.i.i10, align 4
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = or i16 %2, 4096
  %4 = ptrtoint ptr %reg.i.i10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg.i.i10, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %5, i16 %3) #11, !srcloc !191
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = and i16 %2, -4097
  %7 = ptrtoint ptr %reg.i.i10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg.i.i10, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %8, i16 %6) #11, !srcloc !191
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call3) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8a66597_start(ptr noundef %gadget, ptr noundef %driver) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %gadget, i32 -64
  %tobool.not = icmp eq ptr %driver, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %max_speed = getelementptr inbounds %struct.usb_gadget_driver, ptr %driver, i32 0, i32 1
  %0 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ult i32 %1, 3
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false1

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %setup = getelementptr inbounds %struct.usb_gadget_driver, ptr %driver, i32 0, i32 4
  %2 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %setup, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false1.cleanup_crit_edge, label %if.end

lor.lhs.false1.cleanup_crit_edge:                 ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false1
  %tobool3.not = icmp eq ptr %add.ptr, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %driver6 = getelementptr i8, ptr %gadget, i32 1048
  %4 = ptrtoint ptr %driver6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %driver, ptr %driver6, align 8
  tail call fastcc void @init_controller(ptr noundef nonnull %add.ptr)
  %reg.i.i = getelementptr i8, ptr %gadget, i32 -20
  %5 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 48
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %8 = or i16 %7, 128
  %9 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %10, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i, i16 %8) #11, !srcloc !191
  %11 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 64
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %13)
  %tobool7.not = icmp sgt i16 %13, -1
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.then8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  %pdata.i = getelementptr i8, ptr %gadget, i32 -8
  %14 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdata.i, align 8
  %on_chip.i = getelementptr inbounds %struct.r8a66597_platdata, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %on_chip.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i = load i8, ptr %on_chip.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.then.i, label %if.then8.r8a66597_start_xclock.exit_crit_edge

if.then8.r8a66597_start_xclock.exit_crit_edge:    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %r8a66597_start_xclock.exit

if.then.i:                                        ; preds = %if.then8
  %17 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg.i.i, align 4
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %18) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %20 = and i16 %19, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool1.not.i = icmp eq i16 %20, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.then.i.r8a66597_start_xclock.exit_crit_edge

if.then.i.r8a66597_start_xclock.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %r8a66597_start_xclock.exit

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg.i.i, align 4
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %22) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %24 = or i16 %23, 32
  %25 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %26, i16 %24) #11, !srcloc !191
  br label %r8a66597_start_xclock.exit

r8a66597_start_xclock.exit:                       ; preds = %if.then2.i, %if.then.i.r8a66597_start_xclock.exit_crit_edge, %if.then8.r8a66597_start_xclock.exit_crit_edge
  %27 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %28, i32 64
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i30) #11, !srcloc !188
  %30 = lshr i16 %29, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %31 = and i16 %30, 128
  %old_vbus = getelementptr i8, ptr %gadget, i32 1782
  %32 = ptrtoint ptr %old_vbus to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %old_vbus, align 2
  %scount = getelementptr i8, ptr %gadget, i32 1784
  %33 = ptrtoint ptr %scount to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 10, ptr %scount, align 8
  %timer = getelementptr i8, ptr %gadget, i32 1728
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %34, 5
  %call14 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #11
  br label %cleanup

cleanup:                                          ; preds = %r8a66597_start_xclock.exit, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false1.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false1.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ 0, %r8a66597_start_xclock.exit ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8a66597_stop(ptr noundef %gadget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %gadget, i32 -64
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #11
  %reg.i.i = getelementptr i8, ptr %gadget, i32 -20
  %0 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 48
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %3 = and i16 %2, -129
  %4 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %5, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i, i16 %3) #11, !srcloc !191
  tail call fastcc void @disable_controller(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call3) #11
  %driver = getelementptr i8, ptr %gadget, i32 1048
  %6 = ptrtoint ptr %driver to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %driver, align 8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_controller(ptr noundef readonly %r8a66597) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 4
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 8
  %vif1 = getelementptr inbounds %struct.r8a66597_platdata, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %vif1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %vif1, align 2
  %irq_sense_low = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 22
  %3 = ptrtoint ptr %irq_sense_low to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load2 = load i8, ptr %irq_sense_low, align 2
  %4 = lshr i8 %bf.load2, 2
  %5 = and i8 %4, 32
  %conv7 = zext i8 %5 to i16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool21.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool21.not, label %if.else27, label %if.then

if.then:                                          ; preds = %entry
  %buswait = getelementptr inbounds %struct.r8a66597_platdata, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %buswait to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %buswait, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool23.not = icmp eq i16 %7, 0
  %reg.i61 = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 1
  %8 = ptrtoint ptr %reg.i61 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg.i61, align 4
  %add.ptr.i62 = getelementptr i8, ptr %9, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %10 = tail call i16 @llvm.bswap.i16(i16 %7) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i62, i16 %10) #11, !srcloc !191
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i62, i16 3840) #11, !srcloc !191
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then24
  %reg.i.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 1
  %11 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg.i.i, align 4
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %12) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %14 = or i16 %13, -32768
  %15 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %16, i16 %14) #11, !srcloc !191
  %17 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg.i.i, align 4
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %18) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %20 = and i16 %19, -257
  %21 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %22, i16 %20) #11, !srcloc !191
  %23 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg.i.i, align 4
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %24) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %26 = and i16 %25, -4097
  %27 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %28, i16 %26) #11, !srcloc !191
  %29 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg.i.i, align 4
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %30) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %32 = or i16 %31, 256
  %33 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %34, i16 %32) #11, !srcloc !191
  %35 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg.i.i, align 4
  %37 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %36) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %38 = or i16 %37, 4
  %39 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %40, i16 %38) #11, !srcloc !191
  %41 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %42, i32 50
  %43 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #11, !srcloc !188
  %44 = tail call i16 @llvm.bswap.i16(i16 %43) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %or10.i71 = or i16 %44, %conv7
  %45 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %46, i32 50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %47 = tail call i16 @llvm.bswap.i16(i16 %or10.i71) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i, i16 %47) #11, !srcloc !191
  %48 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i73 = getelementptr i8, ptr %49, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i73, i16 32) #11, !srcloc !191
  br label %if.end33

if.else27:                                        ; preds = %entry
  %50 = and i8 %bf.load, 8
  %51 = zext i8 %50 to i16
  %52 = shl nuw nsw i16 %51, 5
  %53 = and i8 %bf.load, 16
  %54 = zext i8 %53 to i16
  %55 = shl nuw i16 %54, 11
  %or = or i16 %55, %52
  %reg.i.i74 = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 1
  %56 = ptrtoint ptr %reg.i.i74 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reg.i.i74, align 4
  %add.ptr.i.i75 = getelementptr i8, ptr %57, i32 14
  %58 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i75) #11, !srcloc !188
  %59 = tail call i16 @llvm.bswap.i16(i16 %58) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %or10.i76 = or i16 %59, %or
  %60 = ptrtoint ptr %reg.i.i74 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %reg.i.i74, align 4
  %add.ptr.i12.i77 = getelementptr i8, ptr %61, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %62 = tail call i16 @llvm.bswap.i16(i16 %or10.i76) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i77, i16 %62) #11, !srcloc !191
  %63 = ptrtoint ptr %reg.i.i74 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %reg.i.i74, align 4
  %65 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %64) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %66 = or i16 %65, -32768
  %67 = ptrtoint ptr %reg.i.i74 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %reg.i.i74, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %68, i16 %66) #11, !srcloc !191
  %69 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pdata, align 8
  %xtal.i = getelementptr inbounds %struct.r8a66597_platdata, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %xtal.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %bf.load.i = load i8, ptr %xtal.i, align 2
  %bf.lshr.i = lshr i8 %bf.load.i, 5
  %bf.clear.i = and i8 %bf.lshr.i, 3
  %bf.cast.i = zext i8 %bf.clear.i to i32
  %switch.tableidx = add nsw i32 %bf.cast.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %72 = icmp ult i32 %switch.tableidx, 3
  br i1 %72, label %switch.lookup, label %do.end.i

do.end.i:                                         ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #14
  br label %get_xtal_from_pdata.exit

switch.lookup:                                    ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #13
  %switch.idx.cast = trunc i32 %switch.tableidx to i16
  %switch.idx.mult = shl i16 %switch.idx.cast, 14
  br label %get_xtal_from_pdata.exit

get_xtal_from_pdata.exit:                         ; preds = %switch.lookup, %do.end.i
  %clock.0.i = phi i16 [ 0, %do.end.i ], [ %switch.idx.mult, %switch.lookup ]
  %73 = ptrtoint ptr %reg.i.i74 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %reg.i.i74, align 4
  %75 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %74) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %76 = and i16 %75, -193
  %77 = tail call i16 @llvm.bswap.i16(i16 %76)
  %or10.i82 = or i16 %77, %clock.0.i
  %78 = ptrtoint ptr %reg.i.i74 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %reg.i.i74, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %80 = tail call i16 @llvm.bswap.i16(i16 %or10.i82) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %79, i16 %80) #11, !srcloc !191
  %81 = ptrtoint ptr %reg.i.i74 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %reg.i.i74, align 4
  %83 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %82) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %84 = and i16 %83, -257
  %85 = ptrtoint ptr %reg.i.i74 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %reg.i.i74, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %86, i16 %84) #11, !srcloc !191
  %87 = ptrtoint ptr %reg.i.i74 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %reg.i.i74, align 4
  %89 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %88) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %90 = and i16 %89, -4097
  %91 = ptrtoint ptr %reg.i.i74 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %reg.i.i74, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %92, i16 %90) #11, !srcloc !191
  %93 = ptrtoint ptr %reg.i.i74 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %reg.i.i74, align 4
  %95 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %94) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %96 = or i16 %95, 256
  %97 = ptrtoint ptr %reg.i.i74 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %reg.i.i74, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %98, i16 %96) #11, !srcloc !191
  %99 = ptrtoint ptr %reg.i.i74 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %reg.i.i74, align 4
  %101 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %100) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %102 = or i16 %101, 32
  %103 = ptrtoint ptr %reg.i.i74 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %reg.i.i74, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %104, i16 %102) #11, !srcloc !191
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %105(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %106 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %106(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %107(i32 noundef 214748000) #11
  %108 = ptrtoint ptr %reg.i.i74 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %reg.i.i74, align 4
  %110 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %109) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %111 = or i16 %110, 8
  %112 = ptrtoint ptr %reg.i.i74 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %reg.i.i74, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %113, i16 %111) #11, !srcloc !191
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %114 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %114(i32 noundef 214748000) #11
  %115 = ptrtoint ptr %reg.i.i74 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %reg.i.i74, align 4
  %117 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %116) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %118 = or i16 %117, 4
  %119 = ptrtoint ptr %reg.i.i74 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %reg.i.i74, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %120, i16 %118) #11, !srcloc !191
  %121 = ptrtoint ptr %reg.i.i74 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %reg.i.i74, align 4
  %add.ptr.i.i96 = getelementptr i8, ptr %122, i32 50
  %123 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i96) #11, !srcloc !188
  %124 = tail call i16 @llvm.bswap.i16(i16 %123) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %or10.i97 = or i16 %124, %conv7
  %125 = ptrtoint ptr %reg.i.i74 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %reg.i.i74, align 4
  %add.ptr.i12.i98 = getelementptr i8, ptr %126, i32 50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %127 = tail call i16 @llvm.bswap.i16(i16 %or10.i97) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i98, i16 %127) #11, !srcloc !191
  %128 = ptrtoint ptr %reg.i.i74 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %reg.i.i74, align 4
  %add.ptr.i100 = getelementptr i8, ptr %129, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i100, i16 32) #11, !srcloc !191
  br label %if.end33

if.end33:                                         ; preds = %get_xtal_from_pdata.exit, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pipe_change(ptr nocapture noundef readonly %r8a66597, i16 noundef zeroext %pipenum) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i16 %pipenum to i32
  %arrayidx = getelementptr %struct.r8a66597, ptr %r8a66597, i32 0, i32 8, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %use_dma = getelementptr inbounds %struct.r8a66597_ep, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %use_dma to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %use_dma, align 4
  %3 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %fifosel = getelementptr inbounds %struct.r8a66597_ep, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %fifosel to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fifosel, align 1
  %conv = zext i8 %5 to i32
  %reg.i.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 1
  %6 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %conv
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %9 = and i16 %8, -17
  %10 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %11, i32 %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i, i16 %9) #11, !srcloc !191
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %fifosel1 = getelementptr inbounds %struct.r8a66597_ep, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %fifosel1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fifosel1, align 1
  %conv2 = zext i8 %13 to i32
  %reg.i.i47 = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 1
  %14 = ptrtoint ptr %reg.i.i47 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg.i.i47, align 4
  %add.ptr.i.i48 = getelementptr i8, ptr %15, i32 %conv2
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i48) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %17 = and i16 %16, -3841
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %or10.i = or i16 %18, %pipenum
  %19 = ptrtoint ptr %reg.i.i47 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg.i.i47, align 4
  %add.ptr.i12.i50 = getelementptr i8, ptr %20, i32 %conv2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %21 = tail call i16 @llvm.bswap.i16(i16 %or10.i) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i50, i16 %21) #11, !srcloc !191
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748) #11
  %pdata = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 4
  %23 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdata, align 8
  %sudmac = getelementptr inbounds %struct.r8a66597_platdata, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %sudmac to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load3 = load i8, ptr %sudmac, align 2
  %26 = and i8 %bf.load3, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool7.not = icmp eq i8 %26, 0
  br i1 %tobool7.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %27 = ptrtoint ptr %use_dma to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load9 = load i8, ptr %use_dma, align 4
  %28 = and i8 %bf.load9, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool13.not = icmp eq i8 %28, 0
  br i1 %tobool13.not, label %land.lhs.true.if.else_crit_edge, label %if.then14

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load3)
  %tobool.not.i = icmp sgt i8 %bf.load3, -1
  %29 = ptrtoint ptr %fifosel1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %fifosel1, align 1
  %conv16 = zext i8 %30 to i32
  %31 = ptrtoint ptr %reg.i.i47 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg.i.i47, align 4
  %add.ptr.i.i52 = getelementptr i8, ptr %32, i32 %conv16
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i52) #11, !srcloc !188
  %34 = tail call i16 @llvm.bswap.i16(i16 %33) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %neg.i = select i1 %tobool.not.i, i16 -1025, i16 -2049
  %and.i53 = and i16 %34, %neg.i
  %35 = ptrtoint ptr %reg.i.i47 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg.i.i47, align 4
  %add.ptr.i12.i54 = getelementptr i8, ptr %36, i32 %conv16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %37 = tail call i16 @llvm.bswap.i16(i16 %and.i53) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i54, i16 %37) #11, !srcloc !191
  br label %if.end20

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load3)
  %tobool.not.i58 = icmp sgt i8 %bf.load3, -1
  %..i59 = select i1 %tobool.not.i58, i16 1024, i16 2048
  %38 = ptrtoint ptr %fifosel1 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %fifosel1, align 1
  %conv19 = zext i8 %39 to i32
  %40 = ptrtoint ptr %reg.i.i47 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg.i.i47, align 4
  %add.ptr.i.i61 = getelementptr i8, ptr %41, i32 %conv19
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i61) #11, !srcloc !188
  %43 = tail call i16 @llvm.bswap.i16(i16 %42) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %or10.i62 = or i16 %43, %..i59
  %44 = ptrtoint ptr %reg.i.i47 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg.i.i47, align 4
  %add.ptr.i12.i63 = getelementptr i8, ptr %45, i32 %conv19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %46 = tail call i16 @llvm.bswap.i16(i16 %or10.i62) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i63, i16 %46) #11, !srcloc !191
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then14
  %47 = ptrtoint ptr %use_dma to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load22 = load i8, ptr %use_dma, align 4
  %48 = and i8 %bf.load22, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool26.not = icmp eq i8 %48, 0
  br i1 %tobool26.not, label %if.end20.if.end30_crit_edge, label %if.then27

if.end20.if.end30_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then27:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %fifosel1 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %fifosel1, align 1
  %conv29 = zext i8 %50 to i32
  %51 = ptrtoint ptr %reg.i.i47 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg.i.i47, align 4
  %add.ptr.i.i65 = getelementptr i8, ptr %52, i32 %conv29
  %53 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i65) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %54 = or i16 %53, 16
  %55 = ptrtoint ptr %reg.i.i47 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %reg.i.i47, align 4
  %add.ptr.i12.i67 = getelementptr i8, ptr %56, i32 %conv29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i67, i16 %54) #11, !srcloc !191
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end20.if.end30_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @transfer_complete(ptr noundef %ep, ptr noundef %req, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pipenum = getelementptr inbounds %struct.r8a66597_ep, ptr %ep, i32 0, i32 5
  %0 = ptrtoint ptr %pipenum to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pipenum, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge, !prof !196

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then:                                          ; preds = %entry
  %internal_ccpl = getelementptr inbounds %struct.r8a66597_ep, ptr %ep, i32 0, i32 4
  %2 = ptrtoint ptr %internal_ccpl to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %internal_ccpl, align 4
  %3 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %if.then.if.end8_crit_edge, label %if.then4

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %bf.clear7 = and i8 %bf.load, -33
  %4 = ptrtoint ptr %internal_ccpl to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %bf.clear7, ptr %internal_ccpl, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %queue = getelementptr inbounds %struct.r8a66597_request, ptr %req, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end8.list_del_init.exit_crit_edge

if.end8.list_del_init.exit_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.r8a66597_request, ptr %req, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %queue, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end8.list_del_init.exit_crit_edge
  %11 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i3.i = getelementptr inbounds %struct.r8a66597_request, ptr %req, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %queue, ptr %prev.i3.i, align 4
  %r8a66597 = getelementptr inbounds %struct.r8a66597_ep, ptr %ep, i32 0, i32 1
  %13 = ptrtoint ptr %r8a66597 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %r8a66597, align 4
  %speed = getelementptr inbounds %struct.r8a66597, ptr %14, i32 0, i32 5, i32 5
  %15 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp9 = icmp eq i32 %16, 0
  %spec.select = select i1 %cmp9, i32 -108, i32 %status
  %17 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %spec.select, ptr %17, align 4
  %queue17 = getelementptr inbounds %struct.r8a66597_ep, ptr %ep, i32 0, i32 3
  %19 = ptrtoint ptr %queue17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %queue17, align 4
  %cmp.i.not = icmp eq ptr %20, %queue17
  %use_dma = getelementptr inbounds %struct.r8a66597_ep, ptr %ep, i32 0, i32 4
  %21 = ptrtoint ptr %use_dma to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load21 = load i8, ptr %use_dma, align 4
  %22 = and i8 %bf.load21, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool25.not = icmp eq i8 %22, 0
  br i1 %tobool25.not, label %list_del_init.exit.if.end28_crit_edge, label %if.then26

list_del_init.exit.if.end28_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then26:                                        ; preds = %list_del_init.exit
  %23 = ptrtoint ptr %r8a66597 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %r8a66597, align 4
  %pdata.i = getelementptr inbounds %struct.r8a66597, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdata.i, align 8
  %sudmac.i = getelementptr inbounds %struct.r8a66597_platdata, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %sudmac.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i = load i8, ptr %sudmac.i, align 2
  %28 = and i8 %bf.load.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i, label %if.then26.if.end28_crit_edge, label %if.end.i

if.then26.if.end28_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.end.i:                                         ; preds = %if.then26
  %gadget.i = getelementptr inbounds %struct.r8a66597, ptr %24, i32 0, i32 5
  %dma.i = getelementptr inbounds %struct.r8a66597_ep, ptr %ep, i32 0, i32 2
  %29 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dma.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load2.i = load i8, ptr %30, align 4
  %bf.lshr3.i = lshr i8 %bf.load2.i, 6
  %bf.clear4.i = and i8 %bf.lshr3.i, 1
  %bf.cast5.i = zext i8 %bf.clear4.i to i32
  tail call void @usb_gadget_unmap_request(ptr noundef %gadget.i, ptr noundef %req, i32 noundef %bf.cast5.i) #11
  %fifosel.i = getelementptr inbounds %struct.r8a66597_ep, ptr %ep, i32 0, i32 8
  %32 = ptrtoint ptr %fifosel.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %fifosel.i, align 1
  %conv.i60 = zext i8 %33 to i32
  %reg.i.i.i = getelementptr inbounds %struct.r8a66597, ptr %24, i32 0, i32 1
  %34 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %35, i32 %conv.i60
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %37 = and i16 %36, -17
  %38 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %39, i32 %conv.i60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i, i16 %37) #11, !srcloc !191
  %40 = ptrtoint ptr %fifosel.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %fifosel.i, align 1
  %conv.i.i = zext i8 %41 to i32
  %42 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %43, i32 %conv.i.i
  %44 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %45 = and i16 %44, -12033
  %46 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i12.i.i.i = getelementptr i8, ptr %47, i32 %conv.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i, i16 %45) #11, !srcloc !191
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end7.i.i.do.body.i.i_crit_edge, %if.end.i
  %i.0.i.i = phi i32 [ 0, %if.end.i ], [ %inc.i.i, %if.end7.i.i.do.body.i.i_crit_edge ]
  %48 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i25.i = getelementptr i8, ptr %49, i32 %conv.i.i
  %50 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i25.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000001, i32 %i.0.i.i)
  %exitcond.i.i = icmp eq i32 %i.0.i.i, 1000001
  br i1 %exitcond.i.i, label %do.end.i.i, label %if.end7.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %parent.i.i = getelementptr inbounds %struct.r8a66597, ptr %24, i32 0, i32 5, i32 11, i32 1
  %51 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %parent.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.26, i32 noundef %conv.i.i, i32 noundef 0) #14
  br label %r8a66597_change_curpipe.exit.i

if.end7.i.i:                                      ; preds = %do.body.i.i
  %inc.i.i = add nuw nsw i32 %i.0.i.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748) #11
  %54 = and i16 %50, 12032
  %cmp12.not.i.i = icmp eq i16 %54, 0
  br i1 %cmp12.not.i.i, label %if.end7.i.i.r8a66597_change_curpipe.exit.i_crit_edge, label %if.end7.i.i.do.body.i.i_crit_edge

if.end7.i.i.do.body.i.i_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i

if.end7.i.i.r8a66597_change_curpipe.exit.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %r8a66597_change_curpipe.exit.i

r8a66597_change_curpipe.exit.i:                   ; preds = %if.end7.i.i.r8a66597_change_curpipe.exit.i_crit_edge, %do.end.i.i
  %55 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dma.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load9.i = load i8, ptr %56, align 4
  %bf.clear10.i = and i8 %bf.load9.i, 127
  store i8 %bf.clear10.i, ptr %56, align 4
  %58 = ptrtoint ptr %use_dma to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load11.i = load i8, ptr %use_dma, align 4
  %bf.clear12.i = and i8 %bf.load11.i, -17
  store i8 %bf.clear12.i, ptr %use_dma, align 4
  %fifoaddr.i = getelementptr inbounds %struct.r8a66597_ep, ptr %ep, i32 0, i32 7
  %59 = ptrtoint ptr %fifoaddr.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 20, ptr %fifoaddr.i, align 2
  %60 = ptrtoint ptr %fifosel.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 32, ptr %fifosel.i, align 1
  %fifoctr.i = getelementptr inbounds %struct.r8a66597_ep, ptr %ep, i32 0, i32 9
  %61 = ptrtoint ptr %fifoctr.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 34, ptr %fifoctr.i, align 4
  br label %if.end28

if.end28:                                         ; preds = %r8a66597_change_curpipe.exit.i, %if.then26.if.end28_crit_edge, %list_del_init.exit.if.end28_crit_edge
  %62 = ptrtoint ptr %r8a66597 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %r8a66597, align 4
  tail call void @_raw_spin_unlock(ptr noundef %63) #11
  tail call void @usb_gadget_giveback_request(ptr noundef %ep, ptr noundef %req) #11
  %64 = ptrtoint ptr %r8a66597 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %r8a66597, align 4
  tail call void @_raw_spin_lock(ptr noundef %65) #11
  br i1 %cmp.i.not, label %if.end28.cleanup_crit_edge, label %if.then35

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then35:                                        ; preds = %if.end28
  %66 = ptrtoint ptr %queue17 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %queue17, align 4
  %add.ptr.i = getelementptr i8, ptr %67, i32 -56
  %desc = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 9
  %68 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %desc, align 4
  %tobool38.not = icmp eq ptr %69, null
  br i1 %tobool38.not, label %if.then35.cleanup_crit_edge, label %if.then39

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then39:                                        ; preds = %if.then35
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %bEndpointAddress.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %71)
  %tobool.not.i61 = icmp sgt i8 %71, -1
  br i1 %tobool.not.i61, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @start_packet_write(ptr noundef %ep, ptr noundef %add.ptr.i) #11
  br label %cleanup

if.else.i:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @start_packet_read(ptr noundef %ep, ptr noundef %add.ptr.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i, %if.then35.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.then4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_giveback_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_unmap_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @start_packet_write(ptr noundef %ep, ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %r8a665971 = getelementptr inbounds %struct.r8a66597_ep, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %r8a665971 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %r8a665971, align 4
  %pipenum = getelementptr inbounds %struct.r8a66597_ep, ptr %ep, i32 0, i32 5
  %2 = ptrtoint ptr %pipenum to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pipenum, align 2
  tail call fastcc void @pipe_change(ptr noundef %1, i16 noundef zeroext %3)
  %4 = ptrtoint ptr %pipenum to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pipenum, align 2
  %reg.i.i = getelementptr inbounds %struct.r8a66597, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 48
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %9 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 48
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %12 = and i16 %11, -8
  %13 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %14, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i, i16 %12) #11, !srcloc !191
  %conv.i = zext i16 %5 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %conv1.i = trunc i32 %shl.i to i16
  %15 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i6.i = getelementptr i8, ptr %16, i32 58
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i) #11, !srcloc !188
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %neg.i.i = xor i16 %conv1.i, -1
  %and.i7.i = and i16 %18, %neg.i.i
  %19 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i8.i = getelementptr i8, ptr %20, i32 58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %21 = tail call i16 @llvm.bswap.i16(i16 %and.i7.i) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i8.i, i16 %21) #11, !srcloc !191
  %22 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %23, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i10.i, i16 %8) #11, !srcloc !191
  %24 = ptrtoint ptr %pipenum to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %pipenum, align 2
  %conv.i.i = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp.i.i = icmp eq i16 %25, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %27, i32 96
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %29 = and i16 %28, -769
  %30 = or i16 %29, 256
  %31 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i.i.i = getelementptr i8, ptr %32, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i, i16 %30) #11, !srcloc !191
  br label %pipe_start.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %25)
  %cmp3.i.i = icmp ult i16 %25, 8
  br i1 %cmp3.i.i, label %if.then5.i.i, label %do.end.i.i

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = shl nuw nsw i32 %conv.i.i, 1
  %add.i.i = add nuw nsw i32 %sub.i.i, 110
  %33 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i17.i.i = getelementptr i8, ptr %34, i32 %add.i.i
  %35 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i17.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %36 = and i16 %35, -769
  %37 = or i16 %36, 256
  %38 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i20.i.i = getelementptr i8, ptr %39, i32 %add.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i20.i.i, i16 %37) #11, !srcloc !191
  br label %pipe_start.exit

do.end.i.i:                                       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %parent.i.i = getelementptr inbounds %struct.r8a66597, ptr %1, i32 0, i32 5, i32 11, i32 1
  %40 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %parent.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.28, i32 noundef %conv.i.i) #14
  br label %pipe_start.exit

pipe_start.exit:                                  ; preds = %do.end.i.i, %if.then5.i.i, %if.then.i.i
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %42 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp = icmp eq i32 %43, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %pipe_start.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @transfer_complete(ptr noundef %ep, ptr noundef %req, i32 noundef 0)
  br label %if.end28

if.else:                                          ; preds = %pipe_start.exit
  %44 = ptrtoint ptr %pipenum to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %pipenum, align 2
  %conv = zext i16 %45 to i32
  %shl = shl nuw i32 1, %conv
  %46 = trunc i32 %shl to i16
  %conv6 = xor i16 %46, -1
  %47 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %48, i32 70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %49 = tail call i16 @llvm.bswap.i16(i16 %conv6) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %49) #11, !srcloc !191
  %pdata.i = getelementptr inbounds %struct.r8a66597, ptr %1, i32 0, i32 4
  %50 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pdata.i, align 8
  %sudmac.i = getelementptr inbounds %struct.r8a66597_platdata, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %sudmac.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load.i = load i8, ptr %sudmac.i, align 2
  %53 = and i8 %bf.load.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i = icmp eq i8 %53, 0
  br i1 %tobool.not.i, label %if.else.if.then9_crit_edge, label %if.end.i

if.else.if.then9_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

if.end.i:                                         ; preds = %if.else
  %54 = ptrtoint ptr %pipenum to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %pipenum, align 2
  %56 = add i16 %55, -3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %56)
  %57 = icmp ult i16 %56, 3
  br i1 %57, label %if.end7.i, label %if.end.i.if.then9_crit_edge

if.end.i.if.then9_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

if.end7.i:                                        ; preds = %if.end.i
  %dma8.i = getelementptr inbounds %struct.r8a66597, ptr %1, i32 0, i32 10
  %58 = ptrtoint ptr %dma8.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load9.i = load i8, ptr %dma8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load9.i)
  %tobool12.not.i = icmp sgt i8 %bf.load9.i, -1
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end7.i.if.then9_crit_edge

if.end7.i.if.then9_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

if.end14.i:                                       ; preds = %if.end7.i
  %bf.set.i = or i8 %bf.load9.i, -128
  %59 = ptrtoint ptr %dma8.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %bf.set.i, ptr %dma8.i, align 4
  %desc.i = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 9
  %60 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %desc.i, align 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %bEndpointAddress.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %63)
  %tobool20.not.i = icmp sgt i8 %63, -1
  br i1 %tobool20.not.i, label %if.else.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set24.i = or i8 %bf.load9.i, -64
  %64 = ptrtoint ptr %dma8.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %bf.set24.i, ptr %dma8.i, align 4
  br label %sudmac_alloc_channel.exit

if.else.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  %bf.clear26.i = and i8 %bf.set.i, -65
  %65 = ptrtoint ptr %dma8.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %bf.clear26.i, ptr %dma8.i, align 4
  %66 = ptrtoint ptr %pipenum to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %pipenum, align 2
  tail call fastcc void @change_bfre_mode(ptr noundef %1, i16 noundef zeroext %67, i32 noundef 1) #11
  br label %sudmac_alloc_channel.exit

sudmac_alloc_channel.exit:                        ; preds = %if.else.i, %if.then21.i
  %use_dma.i = getelementptr inbounds %struct.r8a66597_ep, ptr %ep, i32 0, i32 4
  %68 = ptrtoint ptr %use_dma.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load30.i = load i8, ptr %use_dma.i, align 4
  %bf.set32.i = or i8 %bf.load30.i, 16
  store i8 %bf.set32.i, ptr %use_dma.i, align 4
  %dma33.i = getelementptr inbounds %struct.r8a66597_ep, ptr %ep, i32 0, i32 2
  %69 = ptrtoint ptr %dma33.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %dma8.i, ptr %dma33.i, align 4
  %fifoaddr.i = getelementptr inbounds %struct.r8a66597_ep, ptr %ep, i32 0, i32 7
  %70 = ptrtoint ptr %fifoaddr.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 24, ptr %fifoaddr.i, align 2
  %fifosel.i = getelementptr inbounds %struct.r8a66597_ep, ptr %ep, i32 0, i32 8
  %71 = ptrtoint ptr %fifosel.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 40, ptr %fifosel.i, align 1
  %fifoctr.i = getelementptr inbounds %struct.r8a66597_ep, ptr %ep, i32 0, i32 9
  %72 = ptrtoint ptr %fifoctr.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 42, ptr %fifoctr.i, align 4
  %gadget.i = getelementptr inbounds %struct.r8a66597, ptr %1, i32 0, i32 5
  %73 = ptrtoint ptr %dma8.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load35.i = load i8, ptr %dma8.i, align 4
  %bf.lshr36.i = lshr i8 %bf.load35.i, 6
  %bf.clear37.i = and i8 %bf.lshr36.i, 1
  %bf.cast38.i = zext i8 %bf.clear37.i to i32
  %call.i = tail call i32 @usb_gadget_map_request(ptr noundef %gadget.i, ptr noundef %req, i32 noundef %bf.cast38.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7 = icmp slt i32 %call.i, 0
  br i1 %cmp7, label %sudmac_alloc_channel.exit.if.then9_crit_edge, label %if.else22

sudmac_alloc_channel.exit.if.then9_crit_edge:     ; preds = %sudmac_alloc_channel.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

if.then9:                                         ; preds = %sudmac_alloc_channel.exit.if.then9_crit_edge, %if.end7.i.if.then9_crit_edge, %if.end.i.if.then9_crit_edge, %if.else.if.then9_crit_edge
  %74 = ptrtoint ptr %pipenum to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %pipenum, align 2
  tail call fastcc void @pipe_change(ptr noundef %1, i16 noundef zeroext %75)
  %76 = ptrtoint ptr %pipenum to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %pipenum, align 2
  %78 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i65 = getelementptr i8, ptr %79, i32 48
  %80 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i65) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %81 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i.i66 = getelementptr i8, ptr %82, i32 48
  %83 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i66) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %84 = and i16 %83, -8
  %85 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i.i67 = getelementptr i8, ptr %86, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i67, i16 %84) #11, !srcloc !191
  %conv.i68 = zext i16 %77 to i32
  %shl.i69 = shl nuw i32 1, %conv.i68
  %conv1.i70 = trunc i32 %shl.i69 to i16
  %87 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i6.i71 = getelementptr i8, ptr %88, i32 58
  %89 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i71) #11, !srcloc !188
  %90 = tail call i16 @llvm.bswap.i16(i16 %89) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %neg.i.i72 = xor i16 %conv1.i70, -1
  %and.i7.i73 = and i16 %90, %neg.i.i72
  %91 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i8.i74 = getelementptr i8, ptr %92, i32 58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %93 = tail call i16 @llvm.bswap.i16(i16 %and.i7.i73) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i8.i74, i16 %93) #11, !srcloc !191
  %94 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i10.i75 = getelementptr i8, ptr %95, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i10.i75, i16 %80) #11, !srcloc !191
  %96 = ptrtoint ptr %pipenum to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %pipenum, align 2
  %conv.i.i76 = zext i16 %97 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %97)
  %cmp.i.i77 = icmp eq i16 %97, 0
  br i1 %cmp.i.i77, label %if.then.i.i81, label %if.else.i.i83

if.then.i.i81:                                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  %98 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i.i.i79 = getelementptr i8, ptr %99, i32 96
  %100 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i79) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %101 = and i16 %100, -769
  %102 = or i16 %101, 256
  %103 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i.i.i80 = getelementptr i8, ptr %104, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i80, i16 %102) #11, !srcloc !191
  br label %pipe_start.exit92

if.else.i.i83:                                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %97)
  %cmp3.i.i82 = icmp ult i16 %97, 8
  br i1 %cmp3.i.i82, label %if.then5.i.i89, label %do.end.i.i91

if.then5.i.i89:                                   ; preds = %if.else.i.i83
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i84 = shl nuw nsw i32 %conv.i.i76, 1
  %add.i.i85 = add nuw nsw i32 %sub.i.i84, 110
  %105 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i17.i.i87 = getelementptr i8, ptr %106, i32 %add.i.i85
  %107 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i17.i.i87) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %108 = and i16 %107, -769
  %109 = or i16 %108, 256
  %110 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i20.i.i88 = getelementptr i8, ptr %111, i32 %add.i.i85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i20.i.i88, i16 %109) #11, !srcloc !191
  br label %pipe_start.exit92

do.end.i.i91:                                     ; preds = %if.else.i.i83
  call void @__sanitizer_cov_trace_pc() #13
  %parent.i.i90 = getelementptr inbounds %struct.r8a66597, ptr %1, i32 0, i32 5, i32 11, i32 1
  %112 = ptrtoint ptr %parent.i.i90 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %parent.i.i90, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.28, i32 noundef %conv.i.i76) #14
  br label %pipe_start.exit92

pipe_start.exit92:                                ; preds = %do.end.i.i91, %if.then5.i.i89, %if.then.i.i81
  %fifoctr = getelementptr inbounds %struct.r8a66597_ep, ptr %ep, i32 0, i32 9
  %114 = ptrtoint ptr %fifoctr to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %fifoctr, align 4
  %conv13 = zext i8 %115 to i32
  %116 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i94 = getelementptr i8, ptr %117, i32 %conv13
  %118 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i94) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %119 = and i16 %118, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %119)
  %cmp16 = icmp eq i16 %119, 0
  br i1 %cmp16, label %if.then19, label %if.else21, !prof !196

if.then19:                                        ; preds = %pipe_start.exit92
  call void @__sanitizer_cov_trace_pc() #13
  %120 = ptrtoint ptr %pipenum to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %pipenum, align 2
  tail call fastcc void @pipe_irq_enable(ptr noundef %1, i16 noundef zeroext %121)
  br label %if.end28

if.else21:                                        ; preds = %pipe_start.exit92
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @irq_packet_write(ptr noundef %ep, ptr noundef %req)
  br label %if.end28

if.else22:                                        ; preds = %sudmac_alloc_channel.exit
  %122 = ptrtoint ptr %pipenum to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %pipenum, align 2
  tail call fastcc void @pipe_change(ptr noundef %1, i16 noundef zeroext %123)
  %124 = ptrtoint ptr %pipenum to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %pipenum, align 2
  %126 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i96 = getelementptr i8, ptr %127, i32 48
  %128 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i96) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %129 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i.i97 = getelementptr i8, ptr %130, i32 48
  %131 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i97) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %132 = and i16 %131, -8
  %133 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i.i98 = getelementptr i8, ptr %134, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i98, i16 %132) #11, !srcloc !191
  %conv.i99 = zext i16 %125 to i32
  %shl.i100 = shl nuw i32 1, %conv.i99
  %conv1.i101 = trunc i32 %shl.i100 to i16
  %135 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i6.i102 = getelementptr i8, ptr %136, i32 56
  %137 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i102) #11, !srcloc !188
  %138 = tail call i16 @llvm.bswap.i16(i16 %137) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %neg.i.i103 = xor i16 %conv1.i101, -1
  %and.i7.i104 = and i16 %138, %neg.i.i103
  %139 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i8.i105 = getelementptr i8, ptr %140, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %141 = tail call i16 @llvm.bswap.i16(i16 %and.i7.i104) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i8.i105, i16 %141) #11, !srcloc !191
  %142 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i10.i106 = getelementptr i8, ptr %143, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i10.i106, i16 %128) #11, !srcloc !191
  %144 = ptrtoint ptr %pipenum to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %pipenum, align 2
  %conv.i.i107 = zext i16 %145 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %145)
  %cmp.i.i108 = icmp eq i16 %145, 0
  br i1 %cmp.i.i108, label %if.then.i.i112, label %if.else.i.i114

if.then.i.i112:                                   ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #13
  %146 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i.i.i110 = getelementptr i8, ptr %147, i32 96
  %148 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i110) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %149 = and i16 %148, -769
  %150 = or i16 %149, 256
  %151 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i.i.i111 = getelementptr i8, ptr %152, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i111, i16 %150) #11, !srcloc !191
  br label %pipe_start.exit123

if.else.i.i114:                                   ; preds = %if.else22
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %145)
  %cmp3.i.i113 = icmp ult i16 %145, 8
  br i1 %cmp3.i.i113, label %if.then5.i.i120, label %do.end.i.i122

if.then5.i.i120:                                  ; preds = %if.else.i.i114
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i115 = shl nuw nsw i32 %conv.i.i107, 1
  %add.i.i116 = add nuw nsw i32 %sub.i.i115, 110
  %153 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i17.i.i118 = getelementptr i8, ptr %154, i32 %add.i.i116
  %155 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i17.i.i118) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %156 = and i16 %155, -769
  %157 = or i16 %156, 256
  %158 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i20.i.i119 = getelementptr i8, ptr %159, i32 %add.i.i116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i20.i.i119, i16 %157) #11, !srcloc !191
  br label %pipe_start.exit123

do.end.i.i122:                                    ; preds = %if.else.i.i114
  call void @__sanitizer_cov_trace_pc() #13
  %parent.i.i121 = getelementptr inbounds %struct.r8a66597, ptr %1, i32 0, i32 5, i32 11, i32 1
  %160 = ptrtoint ptr %parent.i.i121 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %parent.i.i121, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %161, ptr noundef nonnull @.str.28, i32 noundef %conv.i.i107) #14
  br label %pipe_start.exit123

pipe_start.exit123:                               ; preds = %do.end.i.i122, %if.then5.i.i120, %if.then.i.i112
  %162 = ptrtoint ptr %pipenum to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %pipenum, align 2
  %164 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i125 = getelementptr i8, ptr %165, i32 48
  %166 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i125) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %167 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i.i126 = getelementptr i8, ptr %168, i32 48
  %169 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i126) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %170 = and i16 %169, -8
  %171 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i.i127 = getelementptr i8, ptr %172, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i127, i16 %170) #11, !srcloc !191
  %conv.i128 = zext i16 %163 to i32
  %shl.i129 = shl nuw i32 1, %conv.i128
  %conv1.i130 = trunc i32 %shl.i129 to i16
  %173 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i6.i131 = getelementptr i8, ptr %174, i32 56
  %175 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i131) #11, !srcloc !188
  %176 = tail call i16 @llvm.bswap.i16(i16 %175) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %or10.i.i = or i16 %176, %conv1.i130
  %177 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i7.i = getelementptr i8, ptr %178, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %179 = tail call i16 @llvm.bswap.i16(i16 %or10.i.i) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i7.i, i16 %179) #11, !srcloc !191
  %180 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %181, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i9.i, i16 %166) #11, !srcloc !191
  tail call fastcc void @sudmac_start(ptr noundef %1, ptr noundef %req)
  br label %if.end28

if.end28:                                         ; preds = %pipe_start.exit123, %if.else21, %if.then19, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @start_packet_read(ptr nocapture noundef %ep, ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %r8a665971 = getelementptr inbounds %struct.r8a66597_ep, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %r8a665971 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %r8a665971, align 4
  %pipenum2 = getelementptr inbounds %struct.r8a66597_ep, ptr %ep, i32 0, i32 5
  %2 = ptrtoint ptr %pipenum2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pipenum2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp = icmp eq i16 %3, 0
  br i1 %cmp, label %pipe_start.exit, label %if.else.i.i70

pipe_start.exit:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %reg.i.i = getelementptr inbounds %struct.r8a66597, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 32
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %7 = and i16 %6, -12033
  %8 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %9, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i, i16 %7) #11, !srcloc !191
  %fifoctr = getelementptr inbounds %struct.r8a66597_ep, ptr %ep, i32 0, i32 9
  %10 = ptrtoint ptr %fifoctr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fifoctr, align 4
  %conv5 = zext i8 %11 to i32
  %12 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %conv5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 64) #11, !srcloc !191
  %14 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %15, i32 96
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %17 = and i16 %16, -769
  %18 = or i16 %17, 256
  %19 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i.i.i = getelementptr i8, ptr %20, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i, i16 %18) #11, !srcloc !191
  tail call fastcc void @pipe_irq_enable(ptr noundef %1, i16 noundef zeroext 0)
  br label %if.end26

if.else.i.i70:                                    ; preds = %entry
  %conv.i.i63 = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %3)
  %cmp3.i.i69 = icmp ult i16 %3, 8
  br i1 %cmp3.i.i69, label %if.then5.i.i76, label %do.end.i.i78

if.then5.i.i76:                                   ; preds = %if.else.i.i70
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i71 = shl nuw nsw i32 %conv.i.i63, 1
  %add.i.i72 = add nuw nsw i32 %sub.i.i71, 110
  %reg.i.i16.i.i73 = getelementptr inbounds %struct.r8a66597, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %reg.i.i16.i.i73 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg.i.i16.i.i73, align 4
  %add.ptr.i.i17.i.i74 = getelementptr i8, ptr %22, i32 %add.i.i72
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i17.i.i74) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %24 = and i16 %23, -769
  %25 = ptrtoint ptr %reg.i.i16.i.i73 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg.i.i16.i.i73, align 4
  %add.ptr.i12.i20.i.i75 = getelementptr i8, ptr %26, i32 %add.i.i72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i20.i.i75, i16 %24) #11, !srcloc !191
  br label %pipe_stop.exit

do.end.i.i78:                                     ; preds = %if.else.i.i70
  call void @__sanitizer_cov_trace_pc() #13
  %parent.i.i77 = getelementptr inbounds %struct.r8a66597, ptr %1, i32 0, i32 5, i32 11, i32 1
  %27 = ptrtoint ptr %parent.i.i77 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parent.i.i77, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.28, i32 noundef %conv.i.i63) #14
  br label %pipe_stop.exit

pipe_stop.exit:                                   ; preds = %do.end.i.i78, %if.then5.i.i76
  %pipetre = getelementptr inbounds %struct.r8a66597_ep, ptr %ep, i32 0, i32 11
  %29 = ptrtoint ptr %pipetre to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %pipetre, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not = icmp eq i8 %30, 0
  br i1 %tobool.not, label %pipe_stop.exit.if.end_crit_edge, label %if.then6

pipe_stop.exit.if.end_crit_edge:                  ; preds = %pipe_stop.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then6:                                         ; preds = %pipe_stop.exit
  call void @__sanitizer_cov_trace_pc() #13
  %reg.i.i79 = getelementptr inbounds %struct.r8a66597, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %reg.i.i79 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg.i.i79, align 4
  %add.ptr.i.i80 = getelementptr i8, ptr %32, i32 48
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i80) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %34 = ptrtoint ptr %reg.i.i79 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg.i.i79, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %35, i32 48
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %37 = and i16 %36, -8
  %38 = ptrtoint ptr %reg.i.i79 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg.i.i79, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %39, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i, i16 %37) #11, !srcloc !191
  %shl.i = shl nuw i32 1, %conv.i.i63
  %conv1.i = trunc i32 %shl.i to i16
  %40 = ptrtoint ptr %reg.i.i79 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg.i.i79, align 4
  %add.ptr.i.i6.i = getelementptr i8, ptr %41, i32 56
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i) #11, !srcloc !188
  %43 = tail call i16 @llvm.bswap.i16(i16 %42) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %or10.i.i = or i16 %43, %conv1.i
  %44 = ptrtoint ptr %reg.i.i79 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg.i.i79, align 4
  %add.ptr.i12.i7.i = getelementptr i8, ptr %45, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %46 = tail call i16 @llvm.bswap.i16(i16 %or10.i.i) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i7.i, i16 %46) #11, !srcloc !191
  %47 = ptrtoint ptr %reg.i.i79 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg.i.i79, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %48, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i9.i, i16 %33) #11, !srcloc !191
  %49 = ptrtoint ptr %pipetre to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %pipetre, align 2
  %conv8 = zext i8 %50 to i32
  %51 = ptrtoint ptr %reg.i.i79 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg.i.i79, align 4
  %add.ptr.i82 = getelementptr i8, ptr %52, i32 %conv8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i82, i16 1) #11, !srcloc !191
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %53 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %length, align 4
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %55 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %55, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  %add = add i32 %54, -1
  %sub = add i32 %add, %bf.cast
  %div = udiv i32 %sub, %bf.cast
  %conv16 = trunc i32 %div to i16
  %pipetrn = getelementptr inbounds %struct.r8a66597_ep, ptr %ep, i32 0, i32 12
  %56 = ptrtoint ptr %pipetrn to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %pipetrn, align 1
  %conv17 = zext i8 %57 to i32
  %58 = ptrtoint ptr %reg.i.i79 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %reg.i.i79, align 4
  %add.ptr.i84 = getelementptr i8, ptr %59, i32 %conv17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %60 = tail call i16 @llvm.bswap.i16(i16 %conv16) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i84, i16 %60) #11, !srcloc !191
  %61 = ptrtoint ptr %pipetre to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %pipetre, align 2
  %conv19 = zext i8 %62 to i32
  %63 = ptrtoint ptr %reg.i.i79 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %reg.i.i79, align 4
  %add.ptr.i.i86 = getelementptr i8, ptr %64, i32 %conv19
  %65 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i86) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %66 = or i16 %65, 2
  %67 = ptrtoint ptr %reg.i.i79 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %reg.i.i79, align 4
  %add.ptr.i12.i87 = getelementptr i8, ptr %68, i32 %conv19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i87, i16 %66) #11, !srcloc !191
  br label %if.end

if.end:                                           ; preds = %if.then6, %pipe_stop.exit.if.end_crit_edge
  %pdata.i = getelementptr inbounds %struct.r8a66597, ptr %1, i32 0, i32 4
  %69 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pdata.i, align 8
  %sudmac.i = getelementptr inbounds %struct.r8a66597_platdata, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %sudmac.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %bf.load.i = load i8, ptr %sudmac.i, align 2
  %72 = and i8 %bf.load.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool.not.i = icmp eq i8 %72, 0
  br i1 %tobool.not.i, label %if.end.if.else.i.i95_crit_edge, label %if.end.i

if.end.if.else.i.i95_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i95

if.end.i:                                         ; preds = %if.end
  %73 = ptrtoint ptr %pipenum2 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %pipenum2, align 2
  %75 = add i16 %74, -3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %75)
  %76 = icmp ult i16 %75, 3
  br i1 %76, label %if.end7.i, label %if.end.i.if.else.i.i95_crit_edge

if.end.i.if.else.i.i95_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i95

if.end7.i:                                        ; preds = %if.end.i
  %dma8.i = getelementptr inbounds %struct.r8a66597, ptr %1, i32 0, i32 10
  %77 = ptrtoint ptr %dma8.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load9.i = load i8, ptr %dma8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load9.i)
  %tobool12.not.i = icmp sgt i8 %bf.load9.i, -1
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end7.i.if.else.i.i95_crit_edge

if.end7.i.if.else.i.i95_crit_edge:                ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i95

if.end14.i:                                       ; preds = %if.end7.i
  %bf.set.i = or i8 %bf.load9.i, -128
  %78 = ptrtoint ptr %dma8.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %bf.set.i, ptr %dma8.i, align 4
  %desc.i = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 9
  %79 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %desc.i, align 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %bEndpointAddress.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %82)
  %tobool20.not.i = icmp sgt i8 %82, -1
  br i1 %tobool20.not.i, label %if.else.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set24.i = or i8 %bf.load9.i, -64
  %83 = ptrtoint ptr %dma8.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %bf.set24.i, ptr %dma8.i, align 4
  br label %sudmac_alloc_channel.exit

if.else.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  %bf.clear26.i = and i8 %bf.set.i, -65
  %84 = ptrtoint ptr %dma8.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %bf.clear26.i, ptr %dma8.i, align 4
  %85 = ptrtoint ptr %pipenum2 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %pipenum2, align 2
  tail call fastcc void @change_bfre_mode(ptr noundef %1, i16 noundef zeroext %86, i32 noundef 1) #11
  br label %sudmac_alloc_channel.exit

sudmac_alloc_channel.exit:                        ; preds = %if.else.i, %if.then21.i
  %use_dma.i = getelementptr inbounds %struct.r8a66597_ep, ptr %ep, i32 0, i32 4
  %87 = ptrtoint ptr %use_dma.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %bf.load30.i = load i8, ptr %use_dma.i, align 4
  %bf.set32.i = or i8 %bf.load30.i, 16
  store i8 %bf.set32.i, ptr %use_dma.i, align 4
  %dma33.i = getelementptr inbounds %struct.r8a66597_ep, ptr %ep, i32 0, i32 2
  %88 = ptrtoint ptr %dma33.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %dma8.i, ptr %dma33.i, align 4
  %fifoaddr.i = getelementptr inbounds %struct.r8a66597_ep, ptr %ep, i32 0, i32 7
  %89 = ptrtoint ptr %fifoaddr.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 24, ptr %fifoaddr.i, align 2
  %fifosel.i = getelementptr inbounds %struct.r8a66597_ep, ptr %ep, i32 0, i32 8
  %90 = ptrtoint ptr %fifosel.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 40, ptr %fifosel.i, align 1
  %fifoctr.i = getelementptr inbounds %struct.r8a66597_ep, ptr %ep, i32 0, i32 9
  %91 = ptrtoint ptr %fifoctr.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 42, ptr %fifoctr.i, align 4
  %gadget.i = getelementptr inbounds %struct.r8a66597, ptr %1, i32 0, i32 5
  %92 = ptrtoint ptr %dma8.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %bf.load35.i = load i8, ptr %dma8.i, align 4
  %bf.lshr36.i = lshr i8 %bf.load35.i, 6
  %bf.clear37.i = and i8 %bf.lshr36.i, 1
  %bf.cast38.i = zext i8 %bf.clear37.i to i32
  %call.i = tail call i32 @usb_gadget_map_request(ptr noundef %gadget.i, ptr noundef %req, i32 noundef %bf.cast38.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp20 = icmp slt i32 %call.i, 0
  br i1 %cmp20, label %sudmac_alloc_channel.exit.if.else.i.i95_crit_edge, label %if.else.i.i112

sudmac_alloc_channel.exit.if.else.i.i95_crit_edge: ; preds = %sudmac_alloc_channel.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i95

if.else.i.i95:                                    ; preds = %sudmac_alloc_channel.exit.if.else.i.i95_crit_edge, %if.end7.i.if.else.i.i95_crit_edge, %if.end.i.if.else.i.i95_crit_edge, %if.end.if.else.i.i95_crit_edge
  %93 = ptrtoint ptr %pipenum2 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %pipenum2, align 2
  tail call fastcc void @change_bfre_mode(ptr noundef %1, i16 noundef zeroext %94, i32 noundef 0)
  br i1 %cmp3.i.i69, label %if.then5.i.i101, label %do.end.i.i103

if.then5.i.i101:                                  ; preds = %if.else.i.i95
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i96 = shl nuw nsw i32 %conv.i.i63, 1
  %add.i.i97 = add nuw nsw i32 %sub.i.i96, 110
  %reg.i.i16.i.i98 = getelementptr inbounds %struct.r8a66597, ptr %1, i32 0, i32 1
  %95 = ptrtoint ptr %reg.i.i16.i.i98 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %reg.i.i16.i.i98, align 4
  %add.ptr.i.i17.i.i99 = getelementptr i8, ptr %96, i32 %add.i.i97
  %97 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i17.i.i99) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %98 = and i16 %97, -769
  %99 = or i16 %98, 256
  %100 = ptrtoint ptr %reg.i.i16.i.i98 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %reg.i.i16.i.i98, align 4
  %add.ptr.i12.i20.i.i100 = getelementptr i8, ptr %101, i32 %add.i.i97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i20.i.i100, i16 %99) #11, !srcloc !191
  br label %pipe_start.exit104

do.end.i.i103:                                    ; preds = %if.else.i.i95
  call void @__sanitizer_cov_trace_pc() #13
  %parent.i.i102 = getelementptr inbounds %struct.r8a66597, ptr %1, i32 0, i32 5, i32 11, i32 1
  %102 = ptrtoint ptr %parent.i.i102 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %parent.i.i102, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.28, i32 noundef %conv.i.i63) #14
  br label %pipe_start.exit104

pipe_start.exit104:                               ; preds = %do.end.i.i103, %if.then5.i.i101
  tail call fastcc void @pipe_irq_enable(ptr noundef %1, i16 noundef zeroext %3)
  br label %if.end26

if.else.i.i112:                                   ; preds = %sudmac_alloc_channel.exit
  tail call fastcc void @pipe_change(ptr noundef %1, i16 noundef zeroext %3)
  tail call fastcc void @sudmac_start(ptr noundef %1, ptr noundef %req)
  br i1 %cmp3.i.i69, label %if.then5.i.i118, label %do.end.i.i120

if.then5.i.i118:                                  ; preds = %if.else.i.i112
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i113 = shl nuw nsw i32 %conv.i.i63, 1
  %add.i.i114 = add nuw nsw i32 %sub.i.i113, 110
  %reg.i.i16.i.i115 = getelementptr inbounds %struct.r8a66597, ptr %1, i32 0, i32 1
  %104 = ptrtoint ptr %reg.i.i16.i.i115 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %reg.i.i16.i.i115, align 4
  %add.ptr.i.i17.i.i116 = getelementptr i8, ptr %105, i32 %add.i.i114
  %106 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i17.i.i116) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %107 = and i16 %106, -769
  %108 = or i16 %107, 256
  %109 = ptrtoint ptr %reg.i.i16.i.i115 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %reg.i.i16.i.i115, align 4
  %add.ptr.i12.i20.i.i117 = getelementptr i8, ptr %110, i32 %add.i.i114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i20.i.i117, i16 %108) #11, !srcloc !191
  br label %if.end26

do.end.i.i120:                                    ; preds = %if.else.i.i112
  call void @__sanitizer_cov_trace_pc() #13
  %parent.i.i119 = getelementptr inbounds %struct.r8a66597, ptr %1, i32 0, i32 5, i32 11, i32 1
  %111 = ptrtoint ptr %parent.i.i119 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %parent.i.i119, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %112, ptr noundef nonnull @.str.28, i32 noundef %conv.i.i63) #14
  br label %if.end26

if.end26:                                         ; preds = %do.end.i.i120, %if.then5.i.i118, %pipe_start.exit104, %pipe_start.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pipe_irq_enable(ptr nocapture noundef readonly %r8a66597, i16 noundef zeroext %pipenum) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.i.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 1
  %0 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 48
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %3 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 48
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %6 = and i16 %5, -8
  %7 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %8, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i, i16 %6) #11, !srcloc !191
  %conv.i = zext i16 %pipenum to i32
  %shl.i = shl nuw i32 1, %conv.i
  %conv1.i = trunc i32 %shl.i to i16
  %9 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i6.i = getelementptr i8, ptr %10, i32 54
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i) #11, !srcloc !188
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %or10.i.i = or i16 %12, %conv1.i
  %13 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i7.i = getelementptr i8, ptr %14, i32 54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %15 = tail call i16 @llvm.bswap.i16(i16 %or10.i.i) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i7.i, i16 %15) #11, !srcloc !191
  %16 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %17, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i9.i, i16 %2) #11, !srcloc !191
  %18 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i4 = getelementptr i8, ptr %19, i32 48
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i4) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %21 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i.i5 = getelementptr i8, ptr %22, i32 48
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i5) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %24 = and i16 %23, -8
  %25 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i.i6 = getelementptr i8, ptr %26, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i6, i16 %24) #11, !srcloc !191
  %27 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i6.i10 = getelementptr i8, ptr %28, i32 56
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i10) #11, !srcloc !188
  %30 = tail call i16 @llvm.bswap.i16(i16 %29) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %or10.i.i11 = or i16 %30, %conv1.i
  %31 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i7.i12 = getelementptr i8, ptr %32, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %33 = tail call i16 @llvm.bswap.i16(i16 %or10.i.i11) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i7.i12, i16 %33) #11, !srcloc !191
  %34 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i9.i13 = getelementptr i8, ptr %35, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i9.i13, i16 %20) #11, !srcloc !191
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irq_packet_write(ptr nocapture noundef readonly %ep, ptr nocapture noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pipenum1 = getelementptr inbounds %struct.r8a66597_ep, ptr %ep, i32 0, i32 5
  %0 = ptrtoint ptr %pipenum1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pipenum1, align 2
  %r8a665972 = getelementptr inbounds %struct.r8a66597_ep, ptr %ep, i32 0, i32 1
  %2 = ptrtoint ptr %r8a665972 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %r8a665972, align 4
  tail call fastcc void @pipe_change(ptr noundef %3, i16 noundef zeroext %1)
  %fifoctr = getelementptr inbounds %struct.r8a66597_ep, ptr %ep, i32 0, i32 9
  %4 = ptrtoint ptr %fifoctr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fifoctr, align 4
  %conv = zext i8 %5 to i32
  %reg.i = getelementptr inbounds %struct.r8a66597, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %conv
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %9 = and i16 %8, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp = icmp eq i16 %9, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !196

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @pipe_stop(ptr noundef %3, i16 noundef zeroext %1)
  tail call fastcc void @pipe_irq_disable(ptr noundef %3, i16 noundef zeroext %1)
  %parent = getelementptr inbounds %struct.r8a66597, ptr %3, i32 0, i32 5, i32 11, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %conv6 = zext i16 %1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.34, i32 noundef %conv6) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.i = icmp eq i16 %1, 0
  %12 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg.i, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else9.i

if.then.i:                                        ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 92
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %15 = and i16 %14, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp3.not.i = icmp eq i16 %15, 0
  br i1 %cmp3.not.i, label %if.else.i, label %if.then.i.get_buffer_size.exit_crit_edge

if.then.i.get_buffer_size.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_buffer_size.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg.i, align 4
  %add.ptr.i35.i = getelementptr i8, ptr %17, i32 94
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i35.i) #11, !srcloc !188
  %19 = lshr i16 %18, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %20 = and i16 %19, 127
  br label %get_buffer_size.exit

if.else9.i:                                       ; preds = %if.end
  %add.ptr.i37.i = getelementptr i8, ptr %13, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %21 = tail call i16 @llvm.bswap.i16(i16 %1) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i37.i, i16 %21) #11, !srcloc !191
  %22 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg.i, align 4
  %add.ptr.i39.i = getelementptr i8, ptr %23, i32 104
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i39.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %25 = and i16 %24, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp13.not.i = icmp eq i16 %25, 0
  %26 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg.i, align 4
  br i1 %cmp13.not.i, label %if.else18.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i41.i = getelementptr i8, ptr %27, i32 106
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i41.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %29 = shl i16 %28, 4
  %narrow.i = and i16 %29, 4032
  %30 = add nuw nsw i16 %narrow.i, 64
  br label %get_buffer_size.exit

if.else18.i:                                      ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i43.i = getelementptr i8, ptr %27, i32 108
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i43.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %32 = and i16 %31, -249
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #11
  br label %get_buffer_size.exit

get_buffer_size.exit:                             ; preds = %if.else18.i, %if.then15.i, %if.else.i, %if.then.i.get_buffer_size.exit_crit_edge
  %size.0.shrunk.i = phi i16 [ %20, %if.else.i ], [ %30, %if.then15.i ], [ %33, %if.else18.i ], [ 256, %if.then.i.get_buffer_size.exit_crit_edge ]
  %size.0.i = zext i16 %size.0.shrunk.i to i32
  %34 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %req, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %36 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %actual, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %38 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %length, align 4
  %sub = sub i32 %39, %37
  %40 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %size.0.i)
  %tobool19.not = icmp eq ptr %35, null
  br i1 %tobool19.not, label %get_buffer_size.exit.if.end40_crit_edge, label %if.then20

get_buffer_size.exit.if.end40_crit_edge:          ; preds = %get_buffer_size.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then20:                                        ; preds = %get_buffer_size.exit
  %add.ptr = getelementptr i8, ptr %35, i32 %37
  tail call fastcc void @r8a66597_write_fifo(ptr noundef %3, ptr noundef %ep, ptr noundef %add.ptr, i32 noundef %40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp21 = icmp eq i32 %40, 0
  br i1 %cmp21, label %if.then20.if.then36_crit_edge, label %lor.lhs.false

if.then20.if.then36_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then36

lor.lhs.false:                                    ; preds = %if.then20
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %41 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %41, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %rem.lhs.trunc = trunc i32 %40 to i16
  %rem.rhs.trunc = trunc i56 %bf.lshr to i16
  %rem142 = urem i16 %rem.lhs.trunc, %rem.rhs.trunc
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem142)
  %cmp24.not = icmp eq i16 %rem142, 0
  br i1 %cmp24.not, label %lor.lhs.false26, label %lor.lhs.false.if.then36_crit_edge

lor.lhs.false.if.then36_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then36

lor.lhs.false26:                                  ; preds = %lor.lhs.false
  %bf.cast = trunc i56 %bf.lshr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %size.0.i, i32 %bf.cast)
  %cmp32.not = icmp ne i32 %size.0.i, %bf.cast
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %size.0.i)
  %cmp34 = icmp ult i32 %sub, %size.0.i
  %or.cond = select i1 %cmp32.not, i1 %cmp34, i1 false
  br i1 %or.cond, label %lor.lhs.false26.if.then36_crit_edge, label %lor.lhs.false26.if.end40_crit_edge

lor.lhs.false26.if.end40_crit_edge:               ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

lor.lhs.false26.if.then36_crit_edge:              ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then36

if.then36:                                        ; preds = %lor.lhs.false26.if.then36_crit_edge, %lor.lhs.false.if.then36_crit_edge, %if.then20.if.then36_crit_edge
  %42 = ptrtoint ptr %fifoctr to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %fifoctr, align 4
  %conv38 = zext i8 %43 to i32
  %44 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i118 = getelementptr i8, ptr %45, i32 %conv38
  %46 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i118) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %47 = or i16 %46, 128
  %48 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %49, i32 %conv38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i, i16 %47) #11, !srcloc !191
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %lor.lhs.false26.if.end40_crit_edge, %get_buffer_size.exit.if.end40_crit_edge
  %50 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %actual, align 4
  %add = add i32 %51, %40
  store i32 %add, ptr %actual, align 4
  %zero = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 6
  %52 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %52)
  %bf.load44 = load i32, ptr %zero, align 4
  %53 = and i32 %bf.load44, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool46.not = icmp eq i32 %53, 0
  br i1 %tobool46.not, label %land.lhs.true47, label %if.end40.lor.lhs.false54_crit_edge

if.end40.lor.lhs.false54_crit_edge:               ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false54

land.lhs.true47:                                  ; preds = %if.end40
  %54 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %55)
  %cmp52 = icmp eq i32 %add, %55
  br i1 %cmp52, label %land.lhs.true47.if.then65_crit_edge, label %land.lhs.true47.lor.lhs.false54_crit_edge

land.lhs.true47.lor.lhs.false54_crit_edge:        ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false54

land.lhs.true47.if.then65_crit_edge:              ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then65

lor.lhs.false54:                                  ; preds = %land.lhs.true47.lor.lhs.false54_crit_edge, %if.end40.lor.lhs.false54_crit_edge
  %maxpacket56 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %56 = ptrtoint ptr %maxpacket56 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 7)
  %bf.load57 = load i56, ptr %maxpacket56, align 2
  %bf.lshr58 = lshr i56 %bf.load57, 40
  %rem60.lhs.trunc = trunc i32 %40 to i16
  %rem60.rhs.trunc = trunc i56 %bf.lshr58 to i16
  %rem60141 = urem i16 %rem60.lhs.trunc, %rem60.rhs.trunc
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem60141)
  %tobool61.not = icmp ne i16 %rem60141, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp63 = icmp eq i32 %40, 0
  %or.cond116 = or i1 %cmp63, %tobool61.not
  br i1 %or.cond116, label %lor.lhs.false54.if.then65_crit_edge, label %if.else

lor.lhs.false54.if.then65_crit_edge:              ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then65

if.then65:                                        ; preds = %lor.lhs.false54.if.then65_crit_edge, %land.lhs.true47.if.then65_crit_edge
  %57 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i120 = getelementptr i8, ptr %58, i32 48
  %59 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i120) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %60 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %61, i32 48
  %62 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %63 = and i16 %62, -8
  %64 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %65, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i, i16 %63) #11, !srcloc !191
  %conv.i = zext i16 %1 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %conv1.i = trunc i32 %shl.i to i16
  %66 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i6.i = getelementptr i8, ptr %67, i32 54
  %68 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i) #11, !srcloc !188
  %69 = tail call i16 @llvm.bswap.i16(i16 %68) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %neg.i.i = xor i16 %conv1.i, -1
  %and.i7.i = and i16 %69, %neg.i.i
  %70 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i8.i = getelementptr i8, ptr %71, i32 54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %72 = tail call i16 @llvm.bswap.i16(i16 %and.i7.i) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i8.i, i16 %72) #11, !srcloc !191
  %73 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %reg.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %74, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i10.i, i16 %59) #11, !srcloc !191
  %75 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i122 = getelementptr i8, ptr %76, i32 48
  %77 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i122) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %78 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i123 = getelementptr i8, ptr %79, i32 48
  %80 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i123) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %81 = and i16 %80, -8
  %82 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i124 = getelementptr i8, ptr %83, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i124, i16 %81) #11, !srcloc !191
  %84 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i6.i128 = getelementptr i8, ptr %85, i32 58
  %86 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i128) #11, !srcloc !188
  %87 = tail call i16 @llvm.bswap.i16(i16 %86) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %or10.i.i = or i16 %87, %conv1.i
  %88 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i7.i = getelementptr i8, ptr %89, i32 58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %90 = tail call i16 @llvm.bswap.i16(i16 %or10.i.i) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i7.i, i16 %90) #11, !srcloc !191
  %91 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %reg.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %92, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i9.i, i16 %77) #11, !srcloc !191
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #13
  %93 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i130 = getelementptr i8, ptr %94, i32 48
  %95 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i130) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %96 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i131 = getelementptr i8, ptr %97, i32 48
  %98 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i131) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %99 = and i16 %98, -8
  %100 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i132 = getelementptr i8, ptr %101, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i132, i16 %99) #11, !srcloc !191
  %conv.i133 = zext i16 %1 to i32
  %shl.i134 = shl nuw i32 1, %conv.i133
  %conv1.i135 = trunc i32 %shl.i134 to i16
  %102 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i6.i136 = getelementptr i8, ptr %103, i32 58
  %104 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i136) #11, !srcloc !188
  %105 = tail call i16 @llvm.bswap.i16(i16 %104) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %neg.i.i137 = xor i16 %conv1.i135, -1
  %and.i7.i138 = and i16 %105, %neg.i.i137
  %106 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i8.i139 = getelementptr i8, ptr %107, i32 58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %108 = tail call i16 @llvm.bswap.i16(i16 %and.i7.i138) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i8.i139, i16 %108) #11, !srcloc !191
  %109 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %reg.i, align 4
  %add.ptr.i10.i140 = getelementptr i8, ptr %110, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i10.i140, i16 %95) #11, !srcloc !191
  tail call fastcc void @pipe_irq_enable(ptr noundef %3, i16 noundef zeroext %1)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then65, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sudmac_start(ptr nocapture noundef readonly %r8a66597, ptr nocapture noundef readonly %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %do.body3, label %do.end6, !prof !196

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/udc/r8a66597-udc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 688, 0\0A.popsection", ""() #11, !srcloc !198
  unreachable

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sudmac_reg.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 2
  %2 = ptrtoint ptr %sudmac_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sudmac_reg.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !194
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 805306368) #11, !srcloc !195
  %dma = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 2
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma, align 4
  %6 = ptrtoint ptr %sudmac_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sudmac_reg.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !194
  tail call void @arm_heavy_mb() #11
  %8 = tail call i32 @llvm.bswap.i32(i32 %5) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #11, !srcloc !195
  %9 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length, align 4
  %11 = ptrtoint ptr %sudmac_reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sudmac_reg.i, align 8
  %add.ptr.i3 = getelementptr i8, ptr %12, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !194
  tail call void @arm_heavy_mb() #11
  %13 = tail call i32 @llvm.bswap.i32(i32 %10) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 %13) #11, !srcloc !195
  %14 = ptrtoint ptr %sudmac_reg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sudmac_reg.i, align 8
  %add.ptr.i5 = getelementptr i8, ptr %15, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !194
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 16777216) #11, !srcloc !195
  %16 = ptrtoint ptr %sudmac_reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sudmac_reg.i, align 8
  %add.ptr.i7 = getelementptr i8, ptr %17, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !194
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 16777216) #11, !srcloc !195
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @change_bfre_mode(ptr noundef readonly %r8a66597, i16 noundef zeroext %pipenum, i32 noundef %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i16 %pipenum to i32
  %arrayidx = getelementptr %struct.r8a66597, ptr %r8a66597, i32 0, i32 8, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %reg.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 1
  %2 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %4 = tail call i16 @llvm.bswap.i16(i16 %pipenum) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %4) #11, !srcloc !191
  %5 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %6, i32 104
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i44) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %8 = and i16 %7, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool3.not = icmp eq i16 %8, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  %or.cond.not = xor i1 %or.cond, true
  %or.cond41 = select i1 %tobool.not, i1 %tobool3.not, i1 false
  %or.cond42 = select i1 %or.cond.not, i1 true, i1 %or.cond41
  br i1 %or.cond42, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %pipenum)
  %cmp.i.i = icmp eq i16 %pipenum, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %10, i32 96
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %12 = and i16 %11, -769
  %13 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i = getelementptr i8, ptr %14, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i, i16 %12) #11, !srcloc !191
  br label %pipe_stop.exit

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %pipenum)
  %cmp3.i.i = icmp ult i16 %pipenum, 8
  br i1 %cmp3.i.i, label %if.then5.i.i, label %do.end.i.i

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = shl nuw nsw i32 %idxprom, 1
  %add.i.i = add nuw nsw i32 %sub.i.i, 110
  %15 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i17.i.i = getelementptr i8, ptr %16, i32 %add.i.i
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i17.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %18 = and i16 %17, -769
  %19 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i20.i.i = getelementptr i8, ptr %20, i32 %add.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i20.i.i, i16 %18) #11, !srcloc !191
  br label %pipe_stop.exit

do.end.i.i:                                       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %parent.i.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 5, i32 11, i32 1
  %21 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.28, i32 noundef %idxprom) #14
  br label %pipe_stop.exit

pipe_stop.exit:                                   ; preds = %do.end.i.i, %if.then5.i.i, %if.then.i.i
  %23 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 32
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #11, !srcloc !188
  %26 = lshr i16 %25, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %27 = and i16 %26, 15
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %pipenum)
  %cmp.i = icmp eq i16 %27, %pipenum
  br i1 %cmp.i, label %if.then.i, label %pipe_stop.exit.disable_fifosel.exit_crit_edge

pipe_stop.exit.disable_fifosel.exit_crit_edge:    ; preds = %pipe_stop.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %disable_fifosel.exit

if.then.i:                                        ; preds = %pipe_stop.exit
  %28 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i45 = getelementptr i8, ptr %29, i32 32
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i45) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %31 = and i16 %30, -12033
  %32 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i46 = getelementptr i8, ptr %33, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i46, i16 %31) #11, !srcloc !191
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end7.i.i.do.body.i.i_crit_edge, %if.then.i
  %i.0.i.i = phi i32 [ 0, %if.then.i ], [ %inc.i.i, %if.end7.i.i.do.body.i.i_crit_edge ]
  %34 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %35, i32 32
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000001, i32 %i.0.i.i)
  %exitcond.i.i = icmp eq i32 %i.0.i.i, 1000001
  br i1 %exitcond.i.i, label %do.end.i.i48, label %if.end7.i.i

do.end.i.i48:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %parent.i.i47 = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 5, i32 11, i32 1
  %37 = ptrtoint ptr %parent.i.i47 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %parent.i.i47, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.26, i32 noundef 32, i32 noundef 0) #14
  br label %disable_fifosel.exit

if.end7.i.i:                                      ; preds = %do.body.i.i
  %inc.i.i = add nuw nsw i32 %i.0.i.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748) #11
  %40 = and i16 %36, 12032
  %cmp12.not.i.i = icmp eq i16 %40, 0
  br i1 %cmp12.not.i.i, label %if.end7.i.i.disable_fifosel.exit_crit_edge, label %if.end7.i.i.do.body.i.i_crit_edge

if.end7.i.i.do.body.i.i_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i

if.end7.i.i.disable_fifosel.exit_crit_edge:       ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %disable_fifosel.exit

disable_fifosel.exit:                             ; preds = %if.end7.i.i.disable_fifosel.exit_crit_edge, %do.end.i.i48, %pipe_stop.exit.disable_fifosel.exit_crit_edge
  %41 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i50 = getelementptr i8, ptr %42, i32 40
  %43 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i50) #11, !srcloc !188
  %44 = lshr i16 %43, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %45 = and i16 %44, 15
  call void @__sanitizer_cov_trace_cmp2(i16 %45, i16 %pipenum)
  %cmp.i51 = icmp eq i16 %45, %pipenum
  br i1 %cmp.i51, label %if.then.i54, label %disable_fifosel.exit.disable_fifosel.exit64_crit_edge

disable_fifosel.exit.disable_fifosel.exit64_crit_edge: ; preds = %disable_fifosel.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %disable_fifosel.exit64

if.then.i54:                                      ; preds = %disable_fifosel.exit
  %46 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i52 = getelementptr i8, ptr %47, i32 40
  %48 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i52) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %49 = and i16 %48, -12033
  %50 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i53 = getelementptr i8, ptr %51, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i53, i16 %49) #11, !srcloc !191
  br label %do.body.i.i58

do.body.i.i58:                                    ; preds = %if.end7.i.i63.do.body.i.i58_crit_edge, %if.then.i54
  %i.0.i.i55 = phi i32 [ 0, %if.then.i54 ], [ %inc.i.i61, %if.end7.i.i63.do.body.i.i58_crit_edge ]
  %52 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i56 = getelementptr i8, ptr %53, i32 40
  %54 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i56) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000001, i32 %i.0.i.i55)
  %exitcond.i.i57 = icmp eq i32 %i.0.i.i55, 1000001
  br i1 %exitcond.i.i57, label %do.end.i.i60, label %if.end7.i.i63

do.end.i.i60:                                     ; preds = %do.body.i.i58
  call void @__sanitizer_cov_trace_pc() #13
  %parent.i.i59 = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 5, i32 11, i32 1
  %55 = ptrtoint ptr %parent.i.i59 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %parent.i.i59, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.26, i32 noundef 40, i32 noundef 0) #14
  br label %disable_fifosel.exit64

if.end7.i.i63:                                    ; preds = %do.body.i.i58
  %inc.i.i61 = add nuw nsw i32 %i.0.i.i55, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748) #11
  %58 = and i16 %54, 12032
  %cmp12.not.i.i62 = icmp eq i16 %58, 0
  br i1 %cmp12.not.i.i62, label %if.end7.i.i63.disable_fifosel.exit64_crit_edge, label %if.end7.i.i63.do.body.i.i58_crit_edge

if.end7.i.i63.do.body.i.i58_crit_edge:            ; preds = %if.end7.i.i63
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i58

if.end7.i.i63.disable_fifosel.exit64_crit_edge:   ; preds = %if.end7.i.i63
  call void @__sanitizer_cov_trace_pc() #13
  br label %disable_fifosel.exit64

disable_fifosel.exit64:                           ; preds = %if.end7.i.i63.disable_fifosel.exit64_crit_edge, %do.end.i.i60, %disable_fifosel.exit.disable_fifosel.exit64_crit_edge
  %59 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i66 = getelementptr i8, ptr %60, i32 44
  %61 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i66) #11, !srcloc !188
  %62 = lshr i16 %61, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %63 = and i16 %62, 15
  call void @__sanitizer_cov_trace_cmp2(i16 %63, i16 %pipenum)
  %cmp.i67 = icmp eq i16 %63, %pipenum
  br i1 %cmp.i67, label %if.then.i70, label %disable_fifosel.exit64.disable_fifosel.exit80_crit_edge

disable_fifosel.exit64.disable_fifosel.exit80_crit_edge: ; preds = %disable_fifosel.exit64
  call void @__sanitizer_cov_trace_pc() #13
  br label %disable_fifosel.exit80

if.then.i70:                                      ; preds = %disable_fifosel.exit64
  %64 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i68 = getelementptr i8, ptr %65, i32 44
  %66 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i68) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %67 = and i16 %66, -12033
  %68 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i69 = getelementptr i8, ptr %69, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i69, i16 %67) #11, !srcloc !191
  br label %do.body.i.i74

do.body.i.i74:                                    ; preds = %if.end7.i.i79.do.body.i.i74_crit_edge, %if.then.i70
  %i.0.i.i71 = phi i32 [ 0, %if.then.i70 ], [ %inc.i.i77, %if.end7.i.i79.do.body.i.i74_crit_edge ]
  %70 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i72 = getelementptr i8, ptr %71, i32 44
  %72 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i72) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000001, i32 %i.0.i.i71)
  %exitcond.i.i73 = icmp eq i32 %i.0.i.i71, 1000001
  br i1 %exitcond.i.i73, label %do.end.i.i76, label %if.end7.i.i79

do.end.i.i76:                                     ; preds = %do.body.i.i74
  call void @__sanitizer_cov_trace_pc() #13
  %parent.i.i75 = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 5, i32 11, i32 1
  %73 = ptrtoint ptr %parent.i.i75 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %parent.i.i75, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.26, i32 noundef 44, i32 noundef 0) #14
  br label %disable_fifosel.exit80

if.end7.i.i79:                                    ; preds = %do.body.i.i74
  %inc.i.i77 = add nuw nsw i32 %i.0.i.i71, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 214748) #11
  %76 = and i16 %72, 12032
  %cmp12.not.i.i78 = icmp eq i16 %76, 0
  br i1 %cmp12.not.i.i78, label %if.end7.i.i79.disable_fifosel.exit80_crit_edge, label %if.end7.i.i79.do.body.i.i74_crit_edge

if.end7.i.i79.do.body.i.i74_crit_edge:            ; preds = %if.end7.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i74

if.end7.i.i79.disable_fifosel.exit80_crit_edge:   ; preds = %if.end7.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %disable_fifosel.exit80

disable_fifosel.exit80:                           ; preds = %if.end7.i.i79.disable_fifosel.exit80_crit_edge, %do.end.i.i76, %disable_fifosel.exit64.disable_fifosel.exit80_crit_edge
  br i1 %cmp.i.i, label %if.then.i.i84, label %if.else.i.i85

if.then.i.i84:                                    ; preds = %disable_fifosel.exit80
  call void @__sanitizer_cov_trace_pc() #13
  %77 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i83 = getelementptr i8, ptr %78, i32 96
  %79 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i83) #11, !srcloc !188
  %80 = lshr i16 %79, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %81 = and i16 %80, 64
  br label %save_usb_toggle.exit

if.else.i.i85:                                    ; preds = %disable_fifosel.exit80
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %pipenum)
  %cmp5.i.i = icmp ult i16 %pipenum, 8
  br i1 %cmp5.i.i, label %if.then7.i.i, label %do.end.i.i89

if.then7.i.i:                                     ; preds = %if.else.i.i85
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i86 = shl nuw nsw i32 %idxprom, 1
  %add.i.i87 = add nuw nsw i32 %sub.i.i86, 110
  %82 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %reg.i, align 4
  %add.ptr.i22.i.i = getelementptr i8, ptr %83, i32 %add.i.i87
  %84 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i22.i.i) #11, !srcloc !188
  %85 = lshr i16 %84, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %86 = and i16 %85, 64
  br label %save_usb_toggle.exit

do.end.i.i89:                                     ; preds = %if.else.i.i85
  call void @__sanitizer_cov_trace_pc() #13
  %parent.i.i88 = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 5, i32 11, i32 1
  %87 = ptrtoint ptr %parent.i.i88 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %parent.i.i88, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.30, i32 noundef %idxprom) #14
  br label %save_usb_toggle.exit

save_usb_toggle.exit:                             ; preds = %do.end.i.i89, %if.then7.i.i, %if.then.i.i84
  %retval.0.i.i = phi i16 [ %81, %if.then.i.i84 ], [ %86, %if.then7.i.i ], [ 0, %do.end.i.i89 ]
  %89 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %reg.i, align 4
  %add.ptr.i91 = getelementptr i8, ptr %90, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i91, i16 %4) #11, !srcloc !191
  %91 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i95 = getelementptr i8, ptr %92, i32 104
  %93 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i95) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  br i1 %tobool.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %save_usb_toggle.exit
  call void @__sanitizer_cov_trace_pc() #13
  %94 = or i16 %93, 4
  %95 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %96, i32 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i, i16 %94) #11, !srcloc !191
  br label %if.end10

if.else:                                          ; preds = %save_usb_toggle.exit
  call void @__sanitizer_cov_trace_pc() #13
  %97 = and i16 %93, -5
  %98 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i96 = getelementptr i8, ptr %99, i32 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i96, i16 %97) #11, !srcloc !191
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then9
  %pipectr = getelementptr inbounds %struct.r8a66597_ep, ptr %1, i32 0, i32 10
  %100 = ptrtoint ptr %pipectr to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %pipectr, align 1
  %conv11 = zext i8 %101 to i32
  %102 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i98 = getelementptr i8, ptr %103, i32 %conv11
  %104 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i98) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %105 = or i16 %104, 2
  %106 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i100 = getelementptr i8, ptr %107, i32 %conv11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i100, i16 %105) #11, !srcloc !191
  %108 = ptrtoint ptr %pipectr to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %pipectr, align 1
  %conv13 = zext i8 %109 to i32
  %110 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i102 = getelementptr i8, ptr %111, i32 %conv13
  %112 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i102) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %113 = and i16 %112, -3
  %114 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i104 = getelementptr i8, ptr %115, i32 %conv13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i104, i16 %113) #11, !srcloc !191
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %retval.0.i.i)
  %tobool.not.i = icmp eq i16 %retval.0.i.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i105

if.then.i105:                                     ; preds = %if.end10
  br i1 %cmp.i.i, label %if.then.i.i108, label %if.else.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i105
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %pipenum)
  %cmp3.i.i.i.i = icmp ult i16 %pipenum, 8
  br i1 %cmp3.i.i.i.i, label %if.then5.i.i110, label %do.end.i.i111

if.then.i.i108:                                   ; preds = %if.then.i105
  call void @__sanitizer_cov_trace_pc() #13
  %116 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %117, i32 96
  %118 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %119 = and i16 %118, -769
  %120 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i.i.i = getelementptr i8, ptr %121, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i.i.i, i16 %119) #11, !srcloc !191
  %122 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i106 = getelementptr i8, ptr %123, i32 96
  %124 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i106) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %125 = or i16 %124, -32768
  %126 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i107 = getelementptr i8, ptr %127, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i107, i16 %125) #11, !srcloc !191
  br label %cleanup

if.then5.i.i110:                                  ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i.i = shl nuw nsw i32 %idxprom, 1
  %add.i.i.i.i = add nuw nsw i32 %sub.i.i.i.i, 110
  %128 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i17.i.i.i.i = getelementptr i8, ptr %129, i32 %add.i.i.i.i
  %130 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i17.i.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %131 = and i16 %130, -769
  %132 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i20.i.i.i.i = getelementptr i8, ptr %133, i32 %add.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i20.i.i.i.i, i16 %131) #11, !srcloc !191
  %134 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i18.i.i = getelementptr i8, ptr %135, i32 %add.i.i.i.i
  %136 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i18.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %137 = or i16 %136, -32768
  %138 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i20.i.i109 = getelementptr i8, ptr %139, i32 %add.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i20.i.i109, i16 %137) #11, !srcloc !191
  br label %cleanup

do.end.i.i111:                                    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %parent.i.i.i.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 5, i32 11, i32 1
  %140 = ptrtoint ptr %parent.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %parent.i.i.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %141, ptr noundef nonnull @.str.28, i32 noundef %idxprom) #14
  %142 = ptrtoint ptr %parent.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %parent.i.i.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %143, ptr noundef nonnull @.str.30, i32 noundef %idxprom) #14
  br label %cleanup

if.else.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @control_reg_sqclr(ptr noundef %r8a66597, i16 noundef zeroext %pipenum) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %do.end.i.i111, %if.then5.i.i110, %if.then.i.i108, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_map_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pipe_stop(ptr nocapture noundef readonly %r8a66597, i16 noundef zeroext %pipenum) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i16 %pipenum to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %pipenum)
  %cmp.i = icmp eq i16 %pipenum, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %reg.i.i.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 1
  %0 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 96
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %3 = and i16 %2, -769
  %4 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %5, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i, i16 %3) #11, !srcloc !191
  br label %control_reg_set_pid.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %pipenum)
  %cmp3.i = icmp ult i16 %pipenum, 8
  br i1 %cmp3.i, label %if.then5.i, label %do.end.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = shl nuw nsw i32 %conv.i, 1
  %add.i = add nuw nsw i32 %sub.i, 110
  %reg.i.i16.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 1
  %6 = ptrtoint ptr %reg.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg.i.i16.i, align 4
  %add.ptr.i.i17.i = getelementptr i8, ptr %7, i32 %add.i
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i17.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %9 = and i16 %8, -769
  %10 = ptrtoint ptr %reg.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg.i.i16.i, align 4
  %add.ptr.i12.i20.i = getelementptr i8, ptr %11, i32 %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i20.i, i16 %9) #11, !srcloc !191
  br label %control_reg_set_pid.exit

do.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %parent.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 5, i32 11, i32 1
  %12 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.28, i32 noundef %conv.i) #14
  br label %control_reg_set_pid.exit

control_reg_set_pid.exit:                         ; preds = %do.end.i, %if.then5.i, %if.then.i
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @control_reg_sqclr(ptr nocapture noundef readonly %r8a66597, i16 noundef zeroext %pipenum) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i = zext i16 %pipenum to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %pipenum)
  %cmp.i.i = icmp eq i16 %pipenum, 0
  br i1 %cmp.i.i, label %if.then, label %if.else.i.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %pipenum)
  %cmp3.i.i = icmp ult i16 %pipenum, 8
  br i1 %cmp3.i.i, label %if.then5, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %reg.i.i.i.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 1
  %0 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %1, i32 96
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %3 = and i16 %2, -769
  %4 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i12.i.i.i = getelementptr i8, ptr %5, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i, i16 %3) #11, !srcloc !191
  %6 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 96
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %9 = or i16 %8, 1
  %10 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %11, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i, i16 %9) #11, !srcloc !191
  br label %if.end9

if.then5:                                         ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = shl nuw nsw i32 %conv.i.i, 1
  %add.i.i = add nuw nsw i32 %sub.i.i, 110
  %reg.i.i16.i.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 1
  %12 = ptrtoint ptr %reg.i.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg.i.i16.i.i, align 4
  %add.ptr.i.i17.i.i = getelementptr i8, ptr %13, i32 %add.i.i
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i17.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %15 = and i16 %14, -769
  %16 = ptrtoint ptr %reg.i.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg.i.i16.i.i, align 4
  %add.ptr.i12.i20.i.i = getelementptr i8, ptr %17, i32 %add.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i20.i.i, i16 %15) #11, !srcloc !191
  %18 = ptrtoint ptr %reg.i.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg.i.i16.i.i, align 4
  %add.ptr.i.i18 = getelementptr i8, ptr %19, i32 %add.i.i
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i18) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %21 = or i16 %20, 1
  %22 = ptrtoint ptr %reg.i.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg.i.i16.i.i, align 4
  %add.ptr.i12.i20 = getelementptr i8, ptr %23, i32 %add.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i20, i16 %21) #11, !srcloc !191
  br label %if.end9

do.end:                                           ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %parent.i.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 5, i32 11, i32 1
  %24 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.28, i32 noundef %conv.i.i) #14
  %26 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.28, i32 noundef %conv.i.i) #14
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.then5, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pipe_irq_disable(ptr nocapture noundef readonly %r8a66597, i16 noundef zeroext %pipenum) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.i.i = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 1
  %0 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 48
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %3 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 48
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %6 = and i16 %5, -8
  %7 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %8, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i, i16 %6) #11, !srcloc !191
  %conv.i = zext i16 %pipenum to i32
  %shl.i = shl nuw i32 1, %conv.i
  %conv1.i = trunc i32 %shl.i to i16
  %9 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i6.i = getelementptr i8, ptr %10, i32 54
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i) #11, !srcloc !188
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %neg.i.i = xor i16 %conv1.i, -1
  %and.i7.i = and i16 %12, %neg.i.i
  %13 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i8.i = getelementptr i8, ptr %14, i32 54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %15 = tail call i16 @llvm.bswap.i16(i16 %and.i7.i) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i8.i, i16 %15) #11, !srcloc !191
  %16 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %17, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i10.i, i16 %2) #11, !srcloc !191
  %18 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i4 = getelementptr i8, ptr %19, i32 48
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i4) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %21 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i.i5 = getelementptr i8, ptr %22, i32 48
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i5) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %24 = and i16 %23, -8
  %25 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i.i6 = getelementptr i8, ptr %26, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i6, i16 %24) #11, !srcloc !191
  %27 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i6.i10 = getelementptr i8, ptr %28, i32 56
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i10) #11, !srcloc !188
  %30 = tail call i16 @llvm.bswap.i16(i16 %29) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %and.i7.i12 = and i16 %30, %neg.i.i
  %31 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i8.i13 = getelementptr i8, ptr %32, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %33 = tail call i16 @llvm.bswap.i16(i16 %and.i7.i12) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i8.i13, i16 %33) #11, !srcloc !191
  %34 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i10.i14 = getelementptr i8, ptr %35, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i10.i14, i16 %20) #11, !srcloc !191
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r8a66597_write_fifo(ptr nocapture noundef readonly %r8a66597, ptr nocapture noundef readonly %ep, ptr noundef %buf, i32 noundef %len) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %reg = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %fifoaddr1 = getelementptr inbounds %struct.r8a66597_ep, ptr %ep, i32 0, i32 7
  %2 = ptrtoint ptr %fifoaddr1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fifoaddr1, align 2
  %conv = zext i8 %3 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %pdata = getelementptr inbounds %struct.r8a66597, ptr %r8a66597, i32 0, i32 4
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 8
  %on_chip = getelementptr inbounds %struct.r8a66597_platdata, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %on_chip to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %on_chip, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len)
  %cmp = icmp sgt i32 %len, 3
  %7 = ptrtoint ptr %buf to i32
  %and = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %or.cond = and i1 %cmp, %tobool3.not
  br i1 %or.cond, label %if.then4, label %if.then.if.end19_crit_edge

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %div9394 = lshr i32 %len, 2
  tail call void @__raw_writesl(ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %div9394) #11
  %and5 = and i32 %len, -4
  %add.ptr6 = getelementptr i8, ptr %buf, i32 %and5
  %and7 = and i32 %len, 3
  br label %if.end19

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp8 = icmp sgt i32 %len, 1
  %8 = ptrtoint ptr %buf to i32
  %and11 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %or.cond87 = and i1 %cmp8, %tobool12.not
  br i1 %or.cond87, label %if.then13, label %if.else.if.end19_crit_edge

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %div149295 = lshr i32 %len, 1
  tail call void @__raw_writesw(ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %div149295) #11
  %and15 = and i32 %len, -2
  %add.ptr16 = getelementptr i8, ptr %buf, i32 %and15
  %and17 = and i32 %len, 1
  br label %if.end19

if.end19:                                         ; preds = %if.then13, %if.else.if.end19_crit_edge, %if.then4, %if.then.if.end19_crit_edge
  %buf.addr.0 = phi ptr [ %add.ptr6, %if.then4 ], [ %buf, %if.then.if.end19_crit_edge ], [ %add.ptr16, %if.then13 ], [ %buf, %if.else.if.end19_crit_edge ]
  %len.addr.0 = phi i32 [ %and7, %if.then4 ], [ %len, %if.then.if.end19_crit_edge ], [ %and17, %if.then13 ], [ %len, %if.else.if.end19_crit_edge ]
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 32
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %12 = and i16 %11, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool22.not = icmp eq i16 %12, 0
  br i1 %tobool22.not, label %if.then23, label %if.end19.if.end33_crit_edge

if.end19.if.end33_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdata, align 8
  %on_chip25 = getelementptr inbounds %struct.r8a66597_platdata, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %on_chip25 to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load26 = load i8, ptr %on_chip25, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load26)
  %tobool29.not = icmp sgt i8 %bf.load26, -1
  %. = select i1 %tobool29.not, i32 1, i32 3
  br label %if.end33

if.end33:                                         ; preds = %if.then23, %if.end19.if.end33_crit_edge
  %adj.0 = phi i32 [ 0, %if.end19.if.end33_crit_edge ], [ %., %if.then23 ]
  %16 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdata, align 8
  %wr0_shorted_to_wr1 = getelementptr inbounds %struct.r8a66597_platdata, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %wr0_shorted_to_wr1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load35 = load i8, ptr %wr0_shorted_to_wr1, align 2
  %19 = and i8 %bf.load35, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool38.not = icmp eq i8 %19, 0
  br i1 %tobool38.not, label %if.end33.if.end41_crit_edge, label %if.then39

if.end33.if.end41_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then39:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %fifosel = getelementptr inbounds %struct.r8a66597_ep, ptr %ep, i32 0, i32 8
  %20 = ptrtoint ptr %fifosel to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %fifosel, align 1
  %conv40 = zext i8 %21 to i32
  %22 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 %conv40
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %25 = and i16 %24, -5
  %26 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %27, i32 %conv40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i, i16 %25) #11, !srcloc !191
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end33.if.end41_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0)
  %cmp4296 = icmp sgt i32 %len.addr.0, 0
  br i1 %cmp4296, label %for.body.lr.ph, label %if.end41.for.end_crit_edge

if.end41.for.end_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end41
  %add.ptr44 = getelementptr i8, ptr %add.ptr, i32 %adj.0
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.097 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %buf.addr.0, i32 %i.097
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx, align 1
  %and45 = and i32 %i.097, %adj.0
  %idx.neg = sub nsw i32 0, %and45
  %add.ptr46 = getelementptr i8, ptr %add.ptr44, i32 %idx.neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !199
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr46, i8 %29) #11, !srcloc !200
  %inc = add nuw nsw i32 %i.097, 1
  %exitcond.not = icmp eq i32 %inc, %len.addr.0
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end41.for.end_crit_edge
  %30 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdata, align 8
  %wr0_shorted_to_wr148 = getelementptr inbounds %struct.r8a66597_platdata, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %wr0_shorted_to_wr148 to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load49 = load i8, ptr %wr0_shorted_to_wr148, align 2
  %33 = and i8 %bf.load49, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool53.not = icmp eq i8 %33, 0
  br i1 %tobool53.not, label %for.end.if.end57_crit_edge, label %if.then54

for.end.if.end57_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then54:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %fifosel55 = getelementptr inbounds %struct.r8a66597_ep, ptr %ep, i32 0, i32 8
  %34 = ptrtoint ptr %fifosel55 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %fifosel55, align 1
  %conv56 = zext i8 %35 to i32
  %36 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg, align 4
  %add.ptr.i.i89 = getelementptr i8, ptr %37, i32 %conv56
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i89) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %39 = and i16 %38, -5
  %40 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg, align 4
  %add.ptr.i12.i91 = getelementptr i8, ptr %41, i32 %conv56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i91, i16 %39) #11, !srcloc !191
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %for.end.if.end57_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_udc_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irq_packet_read(ptr noundef %ep, ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pipenum1 = getelementptr inbounds %struct.r8a66597_ep, ptr %ep, i32 0, i32 5
  %0 = ptrtoint ptr %pipenum1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pipenum1, align 2
  %r8a665972 = getelementptr inbounds %struct.r8a66597_ep, ptr %ep, i32 0, i32 1
  %2 = ptrtoint ptr %r8a665972 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %r8a665972, align 4
  tail call fastcc void @pipe_change(ptr noundef %3, i16 noundef zeroext %1)
  %fifoctr = getelementptr inbounds %struct.r8a66597_ep, ptr %ep, i32 0, i32 9
  %4 = ptrtoint ptr %fifoctr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fifoctr, align 4
  %conv = zext i8 %5 to i32
  %reg.i = getelementptr inbounds %struct.r8a66597, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %conv
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #11, !srcloc !188
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %conv3 = zext i16 %9 to i32
  %and = and i32 %conv3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !196

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %10 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -32, ptr %status, align 4
  tail call fastcc void @pipe_stop(ptr noundef %3, i16 noundef zeroext %1)
  tail call fastcc void @pipe_irq_disable(ptr noundef %3, i16 noundef zeroext %1)
  %parent = getelementptr inbounds %struct.r8a66597, ptr %3, i32 0, i32 5, i32 11, i32 1
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.38) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %and8 = and i32 %conv3, 4095
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.i = icmp eq i16 %1, 0
  %13 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg.i, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else9.i

if.then.i:                                        ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 92
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %16 = and i16 %15, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp3.not.i = icmp eq i16 %16, 0
  br i1 %cmp3.not.i, label %if.else.i, label %if.then.i.get_buffer_size.exit_crit_edge

if.then.i.get_buffer_size.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_buffer_size.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg.i, align 4
  %add.ptr.i35.i = getelementptr i8, ptr %18, i32 94
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i35.i) #11, !srcloc !188
  %20 = lshr i16 %19, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %21 = and i16 %20, 127
  br label %get_buffer_size.exit

if.else9.i:                                       ; preds = %if.end
  %add.ptr.i37.i = getelementptr i8, ptr %14, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %22 = tail call i16 @llvm.bswap.i16(i16 %1) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i37.i, i16 %22) #11, !srcloc !191
  %23 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg.i, align 4
  %add.ptr.i39.i = getelementptr i8, ptr %24, i32 104
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i39.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %26 = and i16 %25, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp13.not.i = icmp eq i16 %26, 0
  %27 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg.i, align 4
  br i1 %cmp13.not.i, label %if.else18.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i41.i = getelementptr i8, ptr %28, i32 106
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i41.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %30 = shl i16 %29, 4
  %narrow.i = and i16 %30, 4032
  %31 = add nuw nsw i16 %narrow.i, 64
  br label %get_buffer_size.exit

if.else18.i:                                      ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i43.i = getelementptr i8, ptr %28, i32 108
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i43.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %33 = and i16 %32, -249
  %34 = tail call i16 @llvm.bswap.i16(i16 %33) #11
  br label %get_buffer_size.exit

get_buffer_size.exit:                             ; preds = %if.else18.i, %if.then15.i, %if.else.i, %if.then.i.get_buffer_size.exit_crit_edge
  %size.0.shrunk.i = phi i16 [ %21, %if.else.i ], [ %31, %if.then15.i ], [ %34, %if.else18.i ], [ 256, %if.then.i.get_buffer_size.exit_crit_edge ]
  %size.0.i = zext i16 %size.0.shrunk.i to i32
  %35 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %req, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %37 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %actual, align 4
  %add.ptr = getelementptr i8, ptr %36, i32 %38
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %39 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %length, align 4
  %sub = sub i32 %40, %38
  %41 = tail call i32 @llvm.umin.i32(i32 %and8, i32 %size.0.i)
  %size.0 = tail call i32 @llvm.smin.i32(i32 %41, i32 %sub)
  %add = add i32 %size.0, %38
  %42 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add, ptr %actual, align 4
  %zero = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 6
  %43 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %43)
  %bf.load = load i32, ptr %zero, align 4
  %44 = and i32 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool33.not = icmp eq i32 %44, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %40)
  %cmp38 = icmp eq i32 %add, %40
  %or.cond128 = select i1 %tobool33.not, i1 %cmp38, i1 false
  br i1 %or.cond128, label %get_buffer_size.exit.if.then47_crit_edge, label %lor.lhs.false

get_buffer_size.exit.if.then47_crit_edge:         ; preds = %get_buffer_size.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then47

lor.lhs.false:                                    ; preds = %get_buffer_size.exit
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %45 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %45, i32 7)
  %bf.load41 = load i56, ptr %maxpacket, align 2
  %bf.lshr42 = lshr i56 %bf.load41, 40
  %bf.cast = trunc i56 %bf.lshr42 to i32
  %rem = srem i32 %size.0, %bf.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool43.not = icmp ne i32 %rem, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.0)
  %cmp45 = icmp eq i32 %size.0, 0
  %or.cond = or i1 %cmp45, %tobool43.not
  br i1 %or.cond, label %lor.lhs.false.if.then47_crit_edge, label %lor.lhs.false.if.end48_crit_edge

lor.lhs.false.if.end48_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

lor.lhs.false.if.then47_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then47

if.then47:                                        ; preds = %lor.lhs.false.if.then47_crit_edge, %get_buffer_size.exit.if.then47_crit_edge
  %conv.i.i = zext i16 %1 to i32
  br i1 %cmp.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %47, i32 96
  %48 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %49 = and i16 %48, -769
  %50 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i = getelementptr i8, ptr %51, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i, i16 %49) #11, !srcloc !191
  br label %pipe_stop.exit

if.else.i.i:                                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %1)
  %cmp3.i.i = icmp ult i16 %1, 8
  br i1 %cmp3.i.i, label %if.then5.i.i, label %do.end.i.i

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = shl nuw nsw i32 %conv.i.i, 1
  %add.i.i = add nuw nsw i32 %sub.i.i, 110
  %52 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i17.i.i = getelementptr i8, ptr %53, i32 %add.i.i
  %54 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i17.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %55 = and i16 %54, -769
  %56 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i20.i.i = getelementptr i8, ptr %57, i32 %add.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i20.i.i, i16 %55) #11, !srcloc !191
  br label %pipe_stop.exit

do.end.i.i:                                       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %parent.i.i = getelementptr inbounds %struct.r8a66597, ptr %3, i32 0, i32 5, i32 11, i32 1
  %58 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %parent.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.28, i32 noundef %conv.i.i) #14
  br label %pipe_stop.exit

pipe_stop.exit:                                   ; preds = %do.end.i.i, %if.then5.i.i, %if.then.i.i
  tail call fastcc void @pipe_irq_disable(ptr noundef %3, i16 noundef zeroext %1)
  br label %if.end48

if.end48:                                         ; preds = %pipe_stop.exit, %lor.lhs.false.if.end48_crit_edge
  %tobool67.not = phi i1 [ false, %pipe_stop.exit ], [ true, %lor.lhs.false.if.end48_crit_edge ]
  %60 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %req, align 4
  %tobool51.not = icmp eq ptr %61, null
  br i1 %tobool51.not, label %if.end48.if.end61_crit_edge, label %if.then52

if.end48.if.end61_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.0)
  %cmp53 = icmp eq i32 %size.0, 0
  br i1 %cmp53, label %if.then55, label %if.else58

if.then55:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  %62 = ptrtoint ptr %fifoctr to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %fifoctr, align 4
  %conv57 = zext i8 %63 to i32
  %64 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reg.i, align 4
  %add.ptr.i122 = getelementptr i8, ptr %65, i32 %conv57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i122, i16 64) #11, !srcloc !191
  br label %if.end61

if.else58:                                        ; preds = %if.then52
  %fifoaddr = getelementptr inbounds %struct.r8a66597_ep, ptr %ep, i32 0, i32 7
  %66 = ptrtoint ptr %fifoaddr to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %fifoaddr, align 2
  %conv59 = zext i8 %67 to i32
  %68 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %reg.i, align 4
  %add.ptr.i124 = getelementptr i8, ptr %69, i32 %conv59
  %pdata.i = getelementptr inbounds %struct.r8a66597, ptr %3, i32 0, i32 4
  %70 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pdata.i, align 8
  %on_chip.i = getelementptr inbounds %struct.r8a66597_platdata, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %on_chip.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load.i = load i8, ptr %on_chip.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.else.i127, label %if.then.i126

if.then.i126:                                     ; preds = %if.else58
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %size.0)
  %cmp.i125 = icmp sgt i32 %size.0, 3
  %73 = ptrtoint ptr %add.ptr to i32
  %and.i = and i32 %73, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = and i1 %cmp.i125, %tobool1.not.i
  br i1 %or.cond.i, label %if.then2.i, label %if.then.i126.if.end.i_crit_edge

if.then.i126.if.end.i_crit_edge:                  ; preds = %if.then.i126
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i126
  call void @__sanitizer_cov_trace_pc() #13
  %div7677.i = lshr i32 %size.0, 2
  tail call void @__raw_readsl(ptr noundef %add.ptr.i124, ptr noundef %add.ptr, i32 noundef %div7677.i) #11
  %and3.i = and i32 %size.0, -4
  %add.ptr4.i = getelementptr i8, ptr %add.ptr, i32 %and3.i
  %and5.i = and i32 %size.0, 3
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i126.if.end.i_crit_edge
  %buf.addr.0.i = phi ptr [ %add.ptr4.i, %if.then2.i ], [ %add.ptr, %if.then.i126.if.end.i_crit_edge ]
  %len.addr.0.i = phi i32 [ %and5.i, %if.then2.i ], [ %size.0, %if.then.i126.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.i)
  %cmp680.i = icmp sgt i32 %len.addr.0.i, 0
  br i1 %cmp680.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.if.end61_crit_edge

if.end.i.if.end61_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %if.end10.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.082.i = phi i32 [ %inc.i, %if.end10.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %data.081.i = phi i32 [ %data.1.i, %if.end10.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %and7.i = and i32 %i.082.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %for.body.i.if.end10.i_crit_edge

for.body.i.if.end10.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

if.then9.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i124) #11, !srcloc !192
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !193
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %for.body.i.if.end10.i_crit_edge
  %data.1.i = phi i32 [ %data.081.i, %for.body.i.if.end10.i_crit_edge ], [ %75, %if.then9.i ]
  %mul.i = shl nuw nsw i32 %and7.i, 3
  %shr.i = lshr i32 %data.1.i, %mul.i
  %conv.i = trunc i32 %shr.i to i8
  %arrayidx.i = getelementptr i8, ptr %buf.addr.0.i, i32 %i.082.i
  %76 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %i.082.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %len.addr.0.i
  br i1 %exitcond.not.i, label %if.end10.i.if.end61_crit_edge, label %if.end10.i.for.body.i_crit_edge

if.end10.i.for.body.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end10.i.if.end61_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.else.i127:                                     ; preds = %if.else58
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %size.0)
  %cmp13.i = icmp sgt i32 %size.0, 1
  %77 = ptrtoint ptr %add.ptr to i32
  %and16.i = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  %or.cond74.i = and i1 %cmp13.i, %tobool17.not.i
  br i1 %or.cond74.i, label %if.then18.i, label %if.else.i127.if.end23.i_crit_edge

if.else.i127.if.end23.i_crit_edge:                ; preds = %if.else.i127
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i

if.then18.i:                                      ; preds = %if.else.i127
  call void @__sanitizer_cov_trace_pc() #13
  %div197578.i = lshr i32 %size.0, 1
  tail call void @__raw_readsw(ptr noundef %add.ptr.i124, ptr noundef %add.ptr, i32 noundef %div197578.i) #11
  %and20.i = and i32 %size.0, -2
  %add.ptr21.i = getelementptr i8, ptr %add.ptr, i32 %and20.i
  %and22.i = and i32 %size.0, 1
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then18.i, %if.else.i127.if.end23.i_crit_edge
  %buf.addr.1.i = phi ptr [ %add.ptr21.i, %if.then18.i ], [ %add.ptr, %if.else.i127.if.end23.i_crit_edge ]
  %len.addr.1.i = phi i32 [ %and22.i, %if.then18.i ], [ %size.0, %if.else.i127.if.end23.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.1.i)
  %cmp2583.i = icmp sgt i32 %len.addr.1.i, 0
  br i1 %cmp2583.i, label %if.end23.i.for.body27.i_crit_edge, label %if.end23.i.if.end61_crit_edge

if.end23.i.if.end61_crit_edge:                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.end23.i.for.body27.i_crit_edge:                ; preds = %if.end23.i
  br label %for.body27.i

for.body27.i:                                     ; preds = %if.end33.i.for.body27.i_crit_edge, %if.end23.i.for.body27.i_crit_edge
  %i.185.i = phi i32 [ %inc41.i, %if.end33.i.for.body27.i_crit_edge ], [ 0, %if.end23.i.for.body27.i_crit_edge ]
  %data.284.i = phi i32 [ %data.3.i, %if.end33.i.for.body27.i_crit_edge ], [ 0, %if.end23.i.for.body27.i_crit_edge ]
  %and28.i = and i32 %i.185.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %if.then30.i, label %for.body27.i.if.end33.i_crit_edge

for.body27.i.if.end33.i_crit_edge:                ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i

if.then30.i:                                      ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #13
  %78 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i124) #11, !srcloc !188
  %79 = tail call i16 @llvm.bswap.i16(i16 %78) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %conv32.i = zext i16 %79 to i32
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then30.i, %for.body27.i.if.end33.i_crit_edge
  %data.3.i = phi i32 [ %data.284.i, %for.body27.i.if.end33.i_crit_edge ], [ %conv32.i, %if.then30.i ]
  %mul35.i = shl nuw nsw i32 %and28.i, 3
  %shr36.i = lshr i32 %data.3.i, %mul35.i
  %conv38.i = trunc i32 %shr36.i to i8
  %arrayidx39.i = getelementptr i8, ptr %buf.addr.1.i, i32 %i.185.i
  %80 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv38.i, ptr %arrayidx39.i, align 1
  %inc41.i = add nuw nsw i32 %i.185.i, 1
  %exitcond87.not.i = icmp eq i32 %inc41.i, %len.addr.1.i
  br i1 %exitcond87.not.i, label %if.end33.i.if.end61_crit_edge, label %if.end33.i.for.body27.i_crit_edge

if.end33.i.for.body27.i_crit_edge:                ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body27.i

if.end33.i.if.end61_crit_edge:                    ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.end61:                                         ; preds = %if.end33.i.if.end61_crit_edge, %if.end23.i.if.end61_crit_edge, %if.end10.i.if.end61_crit_edge, %if.end.i.if.end61_crit_edge, %if.then55, %if.end48.if.end61_crit_edge
  %81 = ptrtoint ptr %pipenum1 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %pipenum1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %cmp64.not = icmp eq i16 %82, 0
  %brmerge = or i1 %tobool67.not, %cmp64.not
  br i1 %brmerge, label %if.end61.cleanup_crit_edge, label %if.then68

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then68:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @transfer_complete(ptr noundef %ep, ptr noundef %req, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.then68, %if.end61.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irq_ep0_write(ptr nocapture noundef readonly %ep, ptr nocapture noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pipenum1 = getelementptr inbounds %struct.r8a66597_ep, ptr %ep, i32 0, i32 5
  %0 = ptrtoint ptr %pipenum1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pipenum1, align 2
  %r8a665972 = getelementptr inbounds %struct.r8a66597_ep, ptr %ep, i32 0, i32 1
  %2 = ptrtoint ptr %r8a665972 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %r8a665972, align 4
  tail call fastcc void @pipe_change(ptr noundef %3, i16 noundef zeroext %1)
  %fifosel = getelementptr inbounds %struct.r8a66597_ep, ptr %ep, i32 0, i32 8
  %4 = ptrtoint ptr %fifosel to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fifosel, align 1
  %conv = zext i8 %5 to i32
  %reg.i.i = getelementptr inbounds %struct.r8a66597, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %conv
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %9 = or i16 %8, 8192
  %10 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %11, i32 %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i, i16 %9) #11, !srcloc !191
  %fifoctr = getelementptr inbounds %struct.r8a66597_ep, ptr %ep, i32 0, i32 9
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %if.end.do.body_crit_edge ]
  %12 = ptrtoint ptr %fifoctr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fifoctr, align 4
  %conv3 = zext i8 %13 to i32
  %14 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %conv3
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  call void @__sanitizer_cov_trace_const_cmp4(i32 100001, i32 %i.0)
  %exitcond = icmp eq i32 %i.0, 100001
  br i1 %exitcond, label %do.end, label %if.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %parent = getelementptr inbounds %struct.r8a66597, ptr %3, i32 0, i32 5, i32 11, i32 1
  %17 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.40) #14
  br label %cleanup

if.end:                                           ; preds = %do.body
  %inc = add nuw nsw i32 %i.0, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #11
  %20 = and i16 %16, 32
  %cmp8 = icmp eq i16 %20, 0
  br i1 %cmp8, label %if.end.do.body_crit_edge, label %do.end10

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.i = icmp eq i16 %1, 0
  %21 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg.i.i, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else9.i

if.then.i:                                        ; preds = %do.end10
  %add.ptr.i.i110 = getelementptr i8, ptr %22, i32 92
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i110) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %24 = and i16 %23, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp3.not.i = icmp eq i16 %24, 0
  br i1 %cmp3.not.i, label %if.else.i, label %if.then.i.get_buffer_size.exit_crit_edge

if.then.i.get_buffer_size.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_buffer_size.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i35.i = getelementptr i8, ptr %26, i32 94
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i35.i) #11, !srcloc !188
  %28 = lshr i16 %27, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %29 = and i16 %28, 127
  br label %get_buffer_size.exit

if.else9.i:                                       ; preds = %do.end10
  %add.ptr.i37.i = getelementptr i8, ptr %22, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %30 = tail call i16 @llvm.bswap.i16(i16 %1) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i37.i, i16 %30) #11, !srcloc !191
  %31 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i39.i = getelementptr i8, ptr %32, i32 104
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i39.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %34 = and i16 %33, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp13.not.i = icmp eq i16 %34, 0
  %35 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg.i.i, align 4
  br i1 %cmp13.not.i, label %if.else18.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i41.i = getelementptr i8, ptr %36, i32 106
  %37 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i41.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %38 = shl i16 %37, 4
  %narrow.i = and i16 %38, 4032
  %39 = add nuw nsw i16 %narrow.i, 64
  br label %get_buffer_size.exit

if.else18.i:                                      ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i43.i = getelementptr i8, ptr %36, i32 108
  %40 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i43.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %41 = and i16 %40, -249
  %42 = tail call i16 @llvm.bswap.i16(i16 %41) #11
  br label %get_buffer_size.exit

get_buffer_size.exit:                             ; preds = %if.else18.i, %if.then15.i, %if.else.i, %if.then.i.get_buffer_size.exit_crit_edge
  %size.0.shrunk.i = phi i16 [ %29, %if.else.i ], [ %39, %if.then15.i ], [ %42, %if.else18.i ], [ 256, %if.then.i.get_buffer_size.exit_crit_edge ]
  %size.0.i = zext i16 %size.0.shrunk.i to i32
  %43 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %req, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %45 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %actual, align 4
  %add.ptr = getelementptr i8, ptr %44, i32 %46
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %47 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %length, align 4
  %sub = sub i32 %48, %46
  %49 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %size.0.i)
  %tobool.not = icmp eq ptr %44, null
  br i1 %tobool.not, label %get_buffer_size.exit.if.end37_crit_edge, label %if.then23

get_buffer_size.exit.if.end37_crit_edge:          ; preds = %get_buffer_size.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then23:                                        ; preds = %get_buffer_size.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cond = icmp eq i32 %49, 0
  br i1 %cond, label %if.then23.if.then33_crit_edge, label %if.then26

if.then23.if.then33_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33

if.then26:                                        ; preds = %if.then23
  tail call fastcc void @r8a66597_write_fifo(ptr noundef %3, ptr noundef %ep, ptr noundef %add.ptr, i32 noundef %49)
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %50 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %50, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %rem.lhs.trunc = trunc i32 %49 to i16
  %rem.rhs.trunc = trunc i56 %bf.lshr to i16
  %rem150 = urem i16 %rem.lhs.trunc, %rem.rhs.trunc
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem150)
  %cmp31.not = icmp eq i16 %rem150, 0
  br i1 %cmp31.not, label %if.then26.if.end37_crit_edge, label %if.then26.if.then33_crit_edge

if.then26.if.then33_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33

if.then26.if.end37_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then33:                                        ; preds = %if.then26.if.then33_crit_edge, %if.then23.if.then33_crit_edge
  %51 = ptrtoint ptr %fifoctr to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %fifoctr, align 4
  %conv35 = zext i8 %52 to i32
  %53 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i112 = getelementptr i8, ptr %54, i32 %conv35
  %55 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i112) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %56 = or i16 %55, 128
  %57 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i114 = getelementptr i8, ptr %58, i32 %conv35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i114, i16 %56) #11, !srcloc !191
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %if.then26.if.end37_crit_edge, %get_buffer_size.exit.if.end37_crit_edge
  %59 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %actual, align 4
  %add = add i32 %60, %49
  store i32 %add, ptr %actual, align 4
  %zero = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 6
  %61 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %61)
  %bf.load41 = load i32, ptr %zero, align 4
  %62 = and i32 %bf.load41, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool43.not = icmp eq i32 %62, 0
  br i1 %tobool43.not, label %land.lhs.true, label %if.end37.lor.lhs.false50_crit_edge

if.end37.lor.lhs.false50_crit_edge:               ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false50

land.lhs.true:                                    ; preds = %if.end37
  %63 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %64)
  %cmp48 = icmp eq i32 %add, %64
  br i1 %cmp48, label %land.lhs.true.if.then61_crit_edge, label %land.lhs.true.lor.lhs.false50_crit_edge

land.lhs.true.lor.lhs.false50_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false50

land.lhs.true.if.then61_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then61

lor.lhs.false50:                                  ; preds = %land.lhs.true.lor.lhs.false50_crit_edge, %if.end37.lor.lhs.false50_crit_edge
  %maxpacket52 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %65 = ptrtoint ptr %maxpacket52 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 7)
  %bf.load53 = load i56, ptr %maxpacket52, align 2
  %bf.lshr54 = lshr i56 %bf.load53, 40
  %rem56.lhs.trunc = trunc i32 %49 to i16
  %rem56.rhs.trunc = trunc i56 %bf.lshr54 to i16
  %rem56149 = urem i16 %rem56.lhs.trunc, %rem56.rhs.trunc
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem56149)
  %tobool57.not = icmp ne i16 %rem56149, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp59 = icmp eq i32 %49, 0
  %or.cond = or i1 %cmp59, %tobool57.not
  br i1 %or.cond, label %lor.lhs.false50.if.then61_crit_edge, label %if.else

lor.lhs.false50.if.then61_crit_edge:              ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then61

if.then61:                                        ; preds = %lor.lhs.false50.if.then61_crit_edge, %land.lhs.true.if.then61_crit_edge
  %66 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i116 = getelementptr i8, ptr %67, i32 48
  %68 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i116) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %69 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %70, i32 48
  %71 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %72 = and i16 %71, -8
  %73 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %74, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i, i16 %72) #11, !srcloc !191
  %conv.i = zext i16 %1 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %conv1.i = trunc i32 %shl.i to i16
  %75 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i6.i = getelementptr i8, ptr %76, i32 54
  %77 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i) #11, !srcloc !188
  %78 = tail call i16 @llvm.bswap.i16(i16 %77) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %neg.i.i = xor i16 %conv1.i, -1
  %and.i7.i = and i16 %78, %neg.i.i
  %79 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i8.i = getelementptr i8, ptr %80, i32 54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %81 = tail call i16 @llvm.bswap.i16(i16 %and.i7.i) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i8.i, i16 %81) #11, !srcloc !191
  %82 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %83, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i10.i, i16 %68) #11, !srcloc !191
  %84 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i118 = getelementptr i8, ptr %85, i32 48
  %86 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i118) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %87 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i.i119 = getelementptr i8, ptr %88, i32 48
  %89 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i119) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %90 = and i16 %89, -8
  %91 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i.i120 = getelementptr i8, ptr %92, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i120, i16 %90) #11, !srcloc !191
  %93 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i6.i124 = getelementptr i8, ptr %94, i32 58
  %95 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i124) #11, !srcloc !188
  %96 = tail call i16 @llvm.bswap.i16(i16 %95) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %and.i7.i126 = and i16 %96, %neg.i.i
  %97 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i8.i127 = getelementptr i8, ptr %98, i32 58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %99 = tail call i16 @llvm.bswap.i16(i16 %and.i7.i126) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i8.i127, i16 %99) #11, !srcloc !191
  %100 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i10.i128 = getelementptr i8, ptr %101, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i10.i128, i16 %86) #11, !srcloc !191
  br label %if.end62

if.else:                                          ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #13
  %102 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i130 = getelementptr i8, ptr %103, i32 48
  %104 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i130) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %105 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i.i131 = getelementptr i8, ptr %106, i32 48
  %107 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i131) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %108 = and i16 %107, -8
  %109 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i.i132 = getelementptr i8, ptr %110, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i132, i16 %108) #11, !srcloc !191
  %conv.i133 = zext i16 %1 to i32
  %shl.i134 = shl nuw i32 1, %conv.i133
  %conv1.i135 = trunc i32 %shl.i134 to i16
  %111 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i6.i136 = getelementptr i8, ptr %112, i32 54
  %113 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i136) #11, !srcloc !188
  %114 = tail call i16 @llvm.bswap.i16(i16 %113) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %neg.i.i137 = xor i16 %conv1.i135, -1
  %and.i7.i138 = and i16 %114, %neg.i.i137
  %115 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i8.i139 = getelementptr i8, ptr %116, i32 54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %117 = tail call i16 @llvm.bswap.i16(i16 %and.i7.i138) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i8.i139, i16 %117) #11, !srcloc !191
  %118 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i10.i140 = getelementptr i8, ptr %119, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i10.i140, i16 %104) #11, !srcloc !191
  %120 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i142 = getelementptr i8, ptr %121, i32 48
  %122 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i142) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %123 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i.i143 = getelementptr i8, ptr %124, i32 48
  %125 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i143) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %126 = and i16 %125, -8
  %127 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i.i144 = getelementptr i8, ptr %128, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i144, i16 %126) #11, !srcloc !191
  %129 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i6.i148 = getelementptr i8, ptr %130, i32 58
  %131 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i148) #11, !srcloc !188
  %132 = tail call i16 @llvm.bswap.i16(i16 %131) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %or10.i.i = or i16 %132, %conv1.i135
  %133 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i7.i = getelementptr i8, ptr %134, i32 58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %135 = tail call i16 @llvm.bswap.i16(i16 %or10.i.i) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i7.i, i16 %135) #11, !srcloc !191
  %136 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %137, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i9.i, i16 %122) #11, !srcloc !191
  br label %if.end62

if.end62:                                         ; preds = %if.else, %if.then61
  %conv.i.i.pre-phi = phi i32 [ %conv.i133, %if.else ], [ %conv.i, %if.then61 ]
  br i1 %cmp.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  %138 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %139, i32 96
  %140 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %141 = and i16 %140, -769
  %142 = or i16 %141, 256
  %143 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i.i.i = getelementptr i8, ptr %144, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i, i16 %142) #11, !srcloc !191
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %1)
  %cmp3.i.i = icmp ult i16 %1, 8
  br i1 %cmp3.i.i, label %if.then5.i.i, label %do.end.i.i

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = shl nuw nsw i32 %conv.i.i.pre-phi, 1
  %add.i.i = add nuw nsw i32 %sub.i.i, 110
  %145 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i17.i.i = getelementptr i8, ptr %146, i32 %add.i.i
  %147 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i17.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %148 = and i16 %147, -769
  %149 = or i16 %148, 256
  %150 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i20.i.i = getelementptr i8, ptr %151, i32 %add.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i20.i.i, i16 %149) #11, !srcloc !191
  br label %cleanup

do.end.i.i:                                       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %parent.i.i = getelementptr inbounds %struct.r8a66597, ptr %3, i32 0, i32 5, i32 11, i32 1
  %152 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %parent.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %153, ptr noundef nonnull @.str.28, i32 noundef %conv.i.i.pre-phi) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end.i.i, %if.then5.i.i, %if.then.i.i, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8a66597_queue(ptr noundef %_ep, ptr noundef %_req, i32 noundef %gfp_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %r8a66597 = getelementptr inbounds %struct.r8a66597_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %r8a66597 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %r8a66597, align 4
  %speed = getelementptr inbounds %struct.r8a66597, ptr %1, i32 0, i32 5, i32 5
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body4:                                         ; preds = %entry
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #11
  %queue = getelementptr inbounds %struct.r8a66597_ep, ptr %_ep, i32 0, i32 3
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %5, %queue
  %queue14 = getelementptr inbounds %struct.r8a66597_request, ptr %_req, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.r8a66597_ep, ptr %_ep, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue14, ptr noundef %7, ptr noundef %queue) #11
  br i1 %call.i.i, label %if.end.i.i, label %do.body4.list_add_tail.exit_crit_edge

do.body4.list_add_tail.exit_crit_edge:            ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %queue14, ptr %prev.i, align 4
  %9 = ptrtoint ptr %queue14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %queue, ptr %queue14, align 4
  %prev3.i.i = getelementptr inbounds %struct.r8a66597_request, ptr %_req, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %queue14, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body4.list_add_tail.exit_crit_edge
  %actual = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 12
  %12 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %actual, align 4
  %status = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 11
  %13 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -115, ptr %status, align 4
  %desc = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 9
  %14 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc, align 4
  %cmp19 = icmp eq ptr %15, null
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %list_add_tail.exit
  %16 = ptrtoint ptr %r8a66597 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %r8a66597, align 4
  %reg.i.i = getelementptr inbounds %struct.r8a66597, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 64
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #11, !srcloc !188
  %21 = lshr i16 %20, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %22 = and i16 %21, 7
  %conv2.i = zext i16 %22 to i32
  %23 = zext i32 %conv2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %conv2.i, label %do.end.i [
    i32 1, label %sw.bb.i
    i32 3, label %sw.bb3.i
    i32 5, label %sw.bb4.i
  ]

sw.bb.i:                                          ; preds = %if.then21
  %24 = ptrtoint ptr %r8a66597 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %r8a66597, align 4
  %pipenum.i.i = getelementptr inbounds %struct.r8a66597_ep, ptr %_ep, i32 0, i32 5
  %26 = ptrtoint ptr %pipenum.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %pipenum.i.i, align 2
  tail call fastcc void @pipe_change(ptr noundef %25, i16 noundef zeroext %27) #11
  %reg.i.i.i.i = getelementptr inbounds %struct.r8a66597, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %29, i32 32
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %31 = and i16 %30, -12033
  %32 = or i16 %31, 8192
  %33 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i12.i.i.i = getelementptr i8, ptr %34, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i, i16 %32) #11, !srcloc !191
  %fifoctr.i.i = getelementptr inbounds %struct.r8a66597_ep, ptr %_ep, i32 0, i32 9
  %35 = ptrtoint ptr %fifoctr.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %fifoctr.i.i, align 4
  %conv.i.i = zext i8 %36 to i32
  %37 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %38, i32 %conv.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 64) #11, !srcloc !191
  %length.i.i = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 1
  %39 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i.i = icmp eq i32 %40, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %fifoctr.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %fifoctr.i.i, align 4
  %conv5.i.i = zext i8 %42 to i32
  %43 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i.i19.i.i = getelementptr i8, ptr %44, i32 %conv5.i.i
  %45 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i19.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %46 = or i16 %45, 128
  %47 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i12.i21.i.i = getelementptr i8, ptr %48, i32 %conv5.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i21.i.i, i16 %46) #11, !srcloc !191
  %49 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %50, i32 96
  %51 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %52 = and i16 %51, -769
  %53 = or i16 %52, 256
  %54 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i12.i.i.i.i.i = getelementptr i8, ptr %55, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i.i.i, i16 %53) #11, !srcloc !191
  tail call fastcc void @transfer_complete(ptr noundef %_ep, ptr noundef %_req, i32 noundef 0) #11
  br label %if.end26

if.else.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i23.i.i = getelementptr i8, ptr %57, i32 74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i23.i.i, i16 -257) #11, !srcloc !191
  tail call fastcc void @irq_ep0_write(ptr noundef %_ep, ptr noundef %_req) #11
  br label %if.end26

sw.bb3.i:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @start_packet_read(ptr noundef %_ep, ptr noundef %_req) #11
  br label %if.end26

sw.bb4.i:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %r8a66597 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %r8a66597, align 4
  %internal_ccpl.i.i = getelementptr inbounds %struct.r8a66597, ptr %59, i32 0, i32 7, i32 0, i32 4
  %60 = ptrtoint ptr %internal_ccpl.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load.i.i = load i8, ptr %internal_ccpl.i.i, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, -33
  store i8 %bf.clear.i.i, ptr %internal_ccpl.i.i, align 4
  %reg.i.i.i.i.i.i = getelementptr inbounds %struct.r8a66597, ptr %59, i32 0, i32 1
  %61 = ptrtoint ptr %reg.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %reg.i.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i14.i = getelementptr i8, ptr %62, i32 96
  %63 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i.i14.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %64 = and i16 %63, -769
  %65 = or i16 %64, 256
  %66 = ptrtoint ptr %reg.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg.i.i.i.i.i.i, align 4
  %add.ptr.i12.i.i.i.i15.i = getelementptr i8, ptr %67, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i.i15.i, i16 %65) #11, !srcloc !191
  %68 = ptrtoint ptr %reg.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %reg.i.i.i.i.i.i, align 4
  %add.ptr.i.i.i16.i = getelementptr i8, ptr %69, i32 96
  %70 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i16.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %71 = or i16 %70, 1024
  %72 = ptrtoint ptr %reg.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %reg.i.i.i.i.i.i, align 4
  %add.ptr.i12.i.i17.i = getelementptr i8, ptr %73, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i17.i, i16 %71) #11, !srcloc !191
  br label %if.end26

do.end.i:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  %74 = ptrtoint ptr %r8a66597 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %r8a66597, align 4
  %parent.i = getelementptr inbounds %struct.r8a66597, ptr %75, i32 0, i32 5, i32 11, i32 1
  %76 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %parent.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.46, i32 noundef %conv2.i) #14
  br label %if.end26

if.else:                                          ; preds = %list_add_tail.exit
  br i1 %cmp.i.not, label %land.lhs.true, label %if.else.if.end26_crit_edge

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

land.lhs.true:                                    ; preds = %if.else
  %busy = getelementptr inbounds %struct.r8a66597_ep, ptr %_ep, i32 0, i32 4
  %78 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load = load i8, ptr %busy, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool23.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool23.not, label %if.then24, label %land.lhs.true.if.end26_crit_edge

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then24:                                        ; preds = %land.lhs.true
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %15, i32 0, i32 2
  %79 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %bEndpointAddress.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %80)
  %tobool.not.i = icmp sgt i8 %80, -1
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @start_packet_write(ptr noundef %_ep, ptr noundef %_req) #11
  br label %if.end26

if.else.i:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @start_packet_read(ptr noundef %_ep, ptr noundef %_req) #11
  br label %if.end26

if.end26:                                         ; preds = %if.else.i, %if.then.i, %land.lhs.true.if.end26_crit_edge, %if.else.if.end26_crit_edge, %do.end.i, %sw.bb4.i, %sw.bb3.i, %if.else.i.i, %if.then.i.i
  %81 = ptrtoint ptr %r8a66597 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %r8a66597, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %82, i32 noundef %call8) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end26 ], [ -108, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_clear_halt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8a66597_enable(ptr noundef %_ep, ptr noundef %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %r8a665971.i = getelementptr inbounds %struct.r8a66597_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %r8a665971.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %r8a665971.i, align 4
  %desc3.i = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 9
  %2 = ptrtoint ptr %desc3.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %desc, ptr %desc3.i, align 4
  %pipenum.i = getelementptr inbounds %struct.r8a66597_ep, ptr %_ep, i32 0, i32 5
  %3 = ptrtoint ptr %pipenum.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %pipenum.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not.i = icmp eq i16 %4, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.alloc_pipe_config.exit_crit_edge

entry.alloc_pipe_config.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %alloc_pipe_config.exit

if.end.i:                                         ; preds = %entry
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 3
  %5 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bmAttributes.i.i, align 1
  %7 = and i8 %6, 3
  %and.i.i = zext i8 %7 to i32
  %8 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %and.i.i, label %do.end64.i [
    i32 2, label %sw.bb.i
    i32 3, label %sw.bb23.i
    i32 1, label %sw.bb42.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  %bulk.i = getelementptr inbounds %struct.r8a66597, ptr %1, i32 0, i32 18
  %9 = ptrtoint ptr %bulk.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bulk.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp.i = icmp ugt i8 %10, 2
  br i1 %cmp.i, label %if.then5.i, label %sw.bb.i.if.end.i.i_crit_edge

sw.bb.i.if.end.i.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then5.i:                                       ; preds = %sw.bb.i
  %isochronous.i = getelementptr inbounds %struct.r8a66597, ptr %1, i32 0, i32 20
  %11 = ptrtoint ptr %isochronous.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %isochronous.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp7.i = icmp ugt i8 %12, 1
  br i1 %cmp7.i, label %do.end.i, label %if.then5.i.if.end.i.i_crit_edge

if.then5.i.if.end.i.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

do.end.i:                                         ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  %parent.i = getelementptr inbounds %struct.r8a66597, ptr %1, i32 0, i32 5, i32 11, i32 1
  %13 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.58) #14
  br label %alloc_pipe_config.exit

sw.bb23.i:                                        ; preds = %if.end.i
  %interrupt.i = getelementptr inbounds %struct.r8a66597, ptr %1, i32 0, i32 19
  %15 = ptrtoint ptr %interrupt.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %interrupt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp25.i = icmp ugt i8 %16, 1
  br i1 %cmp25.i, label %do.end30.i, label %sw.bb23.i.if.end.i.i_crit_edge

sw.bb23.i.if.end.i.i_crit_edge:                   ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

do.end30.i:                                       ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #13
  %parent33.i = getelementptr inbounds %struct.r8a66597, ptr %1, i32 0, i32 5, i32 11, i32 1
  %17 = ptrtoint ptr %parent33.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent33.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.61) #14
  br label %alloc_pipe_config.exit

sw.bb42.i:                                        ; preds = %if.end.i
  %isochronous43.i = getelementptr inbounds %struct.r8a66597, ptr %1, i32 0, i32 20
  %19 = ptrtoint ptr %isochronous43.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %isochronous43.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp45.i = icmp ugt i8 %20, 1
  br i1 %cmp45.i, label %do.end50.i, label %sw.bb42.i.if.end.i.i_crit_edge

sw.bb42.i.if.end.i.i_crit_edge:                   ; preds = %sw.bb42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

do.end50.i:                                       ; preds = %sw.bb42.i
  call void @__sanitizer_cov_trace_pc() #13
  %parent53.i = getelementptr inbounds %struct.r8a66597, ptr %1, i32 0, i32 5, i32 11, i32 1
  %21 = ptrtoint ptr %parent53.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent53.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.64) #14
  br label %alloc_pipe_config.exit

do.end64.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %parent67.i = getelementptr inbounds %struct.r8a66597, ptr %1, i32 0, i32 5, i32 11, i32 1
  %23 = ptrtoint ptr %parent67.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent67.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.67) #14
  br label %alloc_pipe_config.exit

if.end.i.i:                                       ; preds = %sw.bb42.i.if.end.i.i_crit_edge, %sw.bb23.i.if.end.i.i_crit_edge, %if.then5.i.if.end.i.i_crit_edge, %sw.bb.i.if.end.i.i_crit_edge
  %.sink163.i = phi i8 [ %12, %if.then5.i.if.end.i.i_crit_edge ], [ %10, %sw.bb.i.if.end.i.i_crit_edge ], [ %16, %sw.bb23.i.if.end.i.i_crit_edge ], [ %20, %sw.bb42.i.if.end.i.i_crit_edge ]
  %.sink.i = phi i16 [ 1, %if.then5.i.if.end.i.i_crit_edge ], [ 3, %sw.bb.i.if.end.i.i_crit_edge ], [ 6, %sw.bb23.i.if.end.i.i_crit_edge ], [ 1, %sw.bb42.i.if.end.i.i_crit_edge ]
  %cmp97.i = phi i1 [ true, %if.then5.i.if.end.i.i_crit_edge ], [ true, %sw.bb.i.if.end.i.i_crit_edge ], [ false, %sw.bb23.i.if.end.i.i_crit_edge ], [ false, %sw.bb42.i.if.end.i.i_crit_edge ]
  %info.sroa.17.0.i = phi i16 [ 16384, %if.then5.i.if.end.i.i_crit_edge ], [ 16384, %sw.bb.i.if.end.i.i_crit_edge ], [ -32768, %sw.bb23.i.if.end.i.i_crit_edge ], [ -16384, %sw.bb42.i.if.end.i.i_crit_edge ]
  %counter.1.i = phi ptr [ %isochronous.i, %if.then5.i.if.end.i.i_crit_edge ], [ %bulk.i, %sw.bb.i.if.end.i.i_crit_edge ], [ %interrupt.i, %sw.bb23.i.if.end.i.i_crit_edge ], [ %isochronous43.i, %sw.bb42.i.if.end.i.i_crit_edge ]
  %conv24.i = zext i8 %.sink163.i to i16
  %add37.i = add nuw nsw i16 %.sink.i, %conv24.i
  %type69.i = getelementptr inbounds %struct.r8a66597_ep, ptr %_ep, i32 0, i32 6
  %25 = ptrtoint ptr %type69.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %info.sroa.17.0.i, ptr %type69.i, align 4
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 2
  %26 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bEndpointAddress.i.i, align 1
  %28 = and i8 %27, 15
  %conv71.i = zext i8 %28 to i16
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 4
  %29 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %31 = and i16 %30, -249
  %bInterval.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 5
  %32 = ptrtoint ptr %bInterval.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bInterval.i, align 1
  %conv74.i = zext i8 %33 to i16
  %reg.i.i.i = getelementptr inbounds %struct.r8a66597, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %35, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %36 = tail call i16 @llvm.bswap.i16(i16 %add37.i) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 %36) #11, !srcloc !191
  %37 = lshr i8 %27, 3
  %38 = and i8 %37, 16
  %39 = zext i8 %38 to i16
  %or9.i.i = or i16 %info.sroa.17.0.i, %conv71.i
  %or13101.i.i = or i16 %or9.i.i, %39
  %40 = zext i16 %info.sroa.17.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.86)
  switch i16 %info.sroa.17.0.i, label %if.end.i.i.if.end62.i.i_crit_edge [
    i16 -32768, label %sw.bb.i.i
    i16 16384, label %sw.bb20.i.i
    i16 -16384, label %sw.bb48.i.i
  ]

if.end.i.i.if.end62.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62.i.i

sw.bb.i.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.i.i = add nsw i16 %add37.i, -2
  br label %if.end62.i.i

sw.bb20.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %27)
  %tobool76.not.i = icmp sgt i8 %27, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %add37.i)
  %cmp23.i.i = icmp ugt i16 %add37.i, 2
  %bufnum.0.v.i.i = select i1 %cmp23.i.i, i16 4093, i16 4095
  %bufnum.0.i.i = add nuw nsw i16 %bufnum.0.v.i.i, %add37.i
  %mul.i.i = shl i16 %bufnum.0.i.i, 4
  %add36.i.i = or i16 %mul.i.i, 6
  %spec.select102.v.i.i = select i1 %tobool76.not.i, i16 640, i16 512
  %spec.select102.i.i = or i16 %or13101.i.i, %spec.select102.v.i.i
  br label %sw.epilog.i.i

sw.bb48.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub51.i.i = shl nuw nsw i16 %add37.i, 4
  %add53.i.i = add nsw i16 %sub51.i.i, -10
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb48.i.i, %sw.bb20.i.i
  %bufnum.1.i.i = phi i16 [ %add53.i.i, %sw.bb48.i.i ], [ %add36.i.i, %sw.bb20.i.i ]
  %pipecfg.1.i.i = phi i16 [ %or13101.i.i, %sw.bb48.i.i ], [ %spec.select102.i.i, %sw.bb20.i.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 62, i16 %bufnum.1.i.i)
  %cmp59.i.i = icmp ugt i16 %bufnum.1.i.i, 62
  br i1 %cmp59.i.i, label %do.end87.i, label %sw.epilog.i.i.if.end62.i.i_crit_edge

sw.epilog.i.i.if.end62.i.i_crit_edge:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62.i.i

if.end62.i.i:                                     ; preds = %sw.epilog.i.i.if.end62.i.i_crit_edge, %sw.bb.i.i, %if.end.i.i.if.end62.i.i_crit_edge
  %pipecfg.1120.i.i = phi i16 [ %pipecfg.1.i.i, %sw.epilog.i.i.if.end62.i.i_crit_edge ], [ %or13101.i.i, %if.end.i.i.if.end62.i.i_crit_edge ], [ %or13101.i.i, %sw.bb.i.i ]
  %buf_bsize.0119.i.i = phi i16 [ 7168, %sw.epilog.i.i.if.end62.i.i_crit_edge ], [ 0, %if.end.i.i.if.end62.i.i_crit_edge ], [ 0, %sw.bb.i.i ]
  %bufnum.1118.i.i = phi i16 [ %bufnum.1.i.i, %sw.epilog.i.i.if.end62.i.i_crit_edge ], [ 0, %if.end.i.i.if.end62.i.i_crit_edge ], [ %add.i.i, %sw.bb.i.i ]
  %41 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i104.i.i = getelementptr i8, ptr %42, i32 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %43 = tail call i16 @llvm.bswap.i16(i16 %pipecfg.1120.i.i) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i104.i.i, i16 %43) #11, !srcloc !191
  %or65.i.i = or i16 %bufnum.1118.i.i, %buf_bsize.0119.i.i
  %44 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i106.i.i = getelementptr i8, ptr %45, i32 106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %46 = tail call i16 @llvm.bswap.i16(i16 %or65.i.i) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i106.i.i, i16 %46) #11, !srcloc !191
  %47 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i108.i.i = getelementptr i8, ptr %48, i32 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i108.i.i, i16 %31) #11, !srcloc !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool67.not.i.i = icmp eq i8 %33, 0
  %dec.i.i = add nsw i16 %conv74.i, -1
  %spec.select.i = select i1 %tobool67.not.i.i, i16 0, i16 %dec.i.i
  %49 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i110.i.i = getelementptr i8, ptr %50, i32 110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %51 = tail call i16 @llvm.bswap.i16(i16 %spec.select.i) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i110.i.i, i16 %51) #11, !srcloc !191
  %52 = ptrtoint ptr %counter.1.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %counter.1.i, align 1
  %inc.i = add i8 %53, 1
  store i8 %inc.i, ptr %counter.1.i, align 1
  %isochronous92.i = getelementptr inbounds %struct.r8a66597, ptr %1, i32 0, i32 20
  %cmp93.i = icmp eq ptr %counter.1.i, %isochronous92.i
  %or.cond.i = and i1 %cmp97.i, %cmp93.i
  br i1 %or.cond.i, label %if.then99.i, label %if.end62.i.i.if.end102.i_crit_edge

if.end62.i.i.if.end102.i_crit_edge:               ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102.i

do.end87.i:                                       ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #14
  %parent90.i = getelementptr inbounds %struct.r8a66597, ptr %1, i32 0, i32 5, i32 11, i32 1
  %54 = ptrtoint ptr %parent90.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %parent90.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.70) #14
  br label %alloc_pipe_config.exit

if.then99.i:                                      ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %bulk100.i = getelementptr inbounds %struct.r8a66597, ptr %1, i32 0, i32 18
  %56 = ptrtoint ptr %bulk100.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %bulk100.i, align 2
  %inc101.i = add i8 %57, 1
  store i8 %inc101.i, ptr %bulk100.i, align 2
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.then99.i, %if.end62.i.i.if.end102.i_crit_edge
  %use_dma.i.i = getelementptr inbounds %struct.r8a66597_ep, ptr %_ep, i32 0, i32 4
  %58 = ptrtoint ptr %use_dma.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load.i.i = load i8, ptr %use_dma.i.i, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, -17
  store i8 %bf.clear.i.i, ptr %use_dma.i.i, align 4
  %fifoaddr.i.i = getelementptr inbounds %struct.r8a66597_ep, ptr %_ep, i32 0, i32 7
  %59 = ptrtoint ptr %fifoaddr.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 20, ptr %fifoaddr.i.i, align 2
  %fifosel.i.i = getelementptr inbounds %struct.r8a66597_ep, ptr %_ep, i32 0, i32 8
  %60 = ptrtoint ptr %fifosel.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 32, ptr %fifosel.i.i, align 1
  %fifoctr.i.i = getelementptr inbounds %struct.r8a66597_ep, ptr %_ep, i32 0, i32 9
  %61 = ptrtoint ptr %fifoctr.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 34, ptr %fifoctr.i.i, align 4
  %62 = trunc i16 %add37.i to i8
  %sub.tr.i.i = add nsw i8 %62, -1
  %63 = shl nuw nsw i8 %sub.tr.i.i, 1
  %conv1.i.i = add nuw nsw i8 %63, 112
  %pipectr.i.i = getelementptr inbounds %struct.r8a66597_ep, ptr %_ep, i32 0, i32 10
  %64 = ptrtoint ptr %pipectr.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv1.i.i, ptr %pipectr.i.i, align 1
  %pipenum.off.i.i = add nsw i16 %add37.i, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %pipenum.off.i.i)
  %switch.i.i = icmp ult i16 %pipenum.off.i.i, 5
  %65 = shl nuw nsw i8 %sub.tr.i.i, 2
  %conv18.i.i = add nuw nsw i8 %65, -112
  %conv23.i.i = add nuw nsw i8 %65, -110
  %.sink5.i.i = select i1 %switch.i.i, i8 %conv18.i.i, i8 0
  %.sink.i.i = select i1 %switch.i.i, i8 %conv23.i.i, i8 0
  %conv.i.i = zext i16 %add37.i to i32
  %66 = getelementptr inbounds %struct.r8a66597_ep, ptr %_ep, i32 0, i32 11
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %.sink5.i.i, ptr %66, align 2
  %68 = getelementptr inbounds %struct.r8a66597_ep, ptr %_ep, i32 0, i32 12
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %.sink.i.i, ptr %68, align 1
  %70 = ptrtoint ptr %pipenum.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %add37.i, ptr %pipenum.i, align 2
  %71 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 2)
  %72 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %73 = and i16 %72, -249
  %74 = tail call i16 @llvm.bswap.i16(i16 %73) #11
  %maxpacket.i144.i = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 7
  %75 = ptrtoint ptr %maxpacket.i144.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 7)
  %bf.load28.i.i = load i56, ptr %maxpacket.i144.i, align 2
  %bf.value.i.i = zext i16 %74 to i56
  %bf.shl.i.i = shl nuw nsw i56 %bf.value.i.i, 40
  %bf.clear29.i.i = and i56 %bf.load28.i.i, 1099511627775
  %bf.set30.i.i = or i56 %bf.shl.i.i, %bf.clear29.i.i
  store i56 %bf.set30.i.i, ptr %maxpacket.i144.i, align 2
  %arrayidx.i.i = getelementptr %struct.r8a66597, ptr %1, i32 0, i32 8, i32 %conv.i.i
  %76 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %_ep, ptr %arrayidx.i.i, align 4
  %77 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %bEndpointAddress.i.i, align 1
  %79 = and i8 %78, 15
  %and.i2.i.i = zext i8 %79 to i32
  %arrayidx32.i.i = getelementptr %struct.r8a66597, ptr %1, i32 0, i32 9, i32 %and.i2.i.i
  %80 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %_ep, ptr %arrayidx32.i.i, align 4
  %queue.i.i = getelementptr inbounds %struct.r8a66597_ep, ptr %_ep, i32 0, i32 3
  %81 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %queue.i.i, ptr %queue.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.r8a66597_ep, ptr %_ep, i32 0, i32 3, i32 1
  %82 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %queue.i.i, ptr %prev.i.i.i, align 4
  %83 = ptrtoint ptr %r8a665971.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %r8a665971.i, align 4
  %85 = ptrtoint ptr %fifosel.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %fifosel.i.i, align 1
  %conv.i146.i = zext i8 %86 to i32
  %reg.i.i.i.i = getelementptr inbounds %struct.r8a66597, ptr %84, i32 0, i32 1
  %87 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %88, i32 %conv.i146.i
  %89 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %90 = and i16 %89, -3841
  %91 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i12.i.i.i = getelementptr i8, ptr %92, i32 %conv.i146.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i, i16 %90) #11, !srcloc !191
  %93 = ptrtoint ptr %pipectr.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %pipectr.i.i, align 1
  %conv2.i.i = zext i8 %94 to i32
  %95 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i.i148.i = getelementptr i8, ptr %96, i32 %conv2.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i148.i, i16 2) #11, !srcloc !191
  %97 = ptrtoint ptr %pipectr.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %pipectr.i.i, align 1
  %conv4.i.i = zext i8 %98 to i32
  %99 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i26.i.i = getelementptr i8, ptr %100, i32 %conv4.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i26.i.i, i16 0) #11, !srcloc !191
  %101 = ptrtoint ptr %pipectr.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %pipectr.i.i, align 1
  %conv6.i.i = zext i8 %102 to i32
  %103 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i28.i.i = getelementptr i8, ptr %104, i32 %conv6.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i28.i.i, i16 1) #11, !srcloc !191
  %105 = ptrtoint ptr %use_dma.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %bf.load.i150.i = load i8, ptr %use_dma.i.i, align 4
  %106 = and i8 %bf.load.i150.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool.not.i151.i = icmp eq i8 %106, 0
  br i1 %tobool.not.i151.i, label %if.end102.i.alloc_pipe_config.exit_crit_edge, label %if.then.i.i

if.end102.i.alloc_pipe_config.exit_crit_edge:     ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %alloc_pipe_config.exit

if.then.i.i:                                      ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #13
  %107 = ptrtoint ptr %pipenum.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %pipenum.i, align 2
  %109 = ptrtoint ptr %fifosel.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %fifosel.i.i, align 1
  %conv8.i.i = zext i8 %110 to i32
  %111 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i.i30.i.i = getelementptr i8, ptr %112, i32 %conv8.i.i
  %113 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i30.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %114 = and i16 %113, -3841
  %115 = tail call i16 @llvm.bswap.i16(i16 %114) #11
  %or10.i.i.i = or i16 %115, %108
  %116 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i12.i32.i.i = getelementptr i8, ptr %117, i32 %conv8.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %118 = tail call i16 @llvm.bswap.i16(i16 %or10.i.i.i) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i32.i.i, i16 %118) #11, !srcloc !191
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %119(i32 noundef 214748) #11
  %pdata.i.i.i = getelementptr inbounds %struct.r8a66597, ptr %84, i32 0, i32 4
  %120 = ptrtoint ptr %pdata.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pdata.i.i.i, align 8
  %on_chip.i.i.i = getelementptr inbounds %struct.r8a66597_platdata, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %on_chip.i.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %bf.load.i.i.i = load i8, ptr %on_chip.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  %..i.i.i = select i1 %tobool.not.i.i.i, i16 1024, i16 2048
  %123 = ptrtoint ptr %fifosel.i.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %fifosel.i.i, align 1
  %conv10.i.i = zext i8 %124 to i32
  %125 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i.i34.i.i = getelementptr i8, ptr %126, i32 %conv10.i.i
  %127 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i34.i.i) #11, !srcloc !188
  %128 = tail call i16 @llvm.bswap.i16(i16 %127) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %or10.i35.i.i = or i16 %128, %..i.i.i
  %129 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i12.i36.i.i = getelementptr i8, ptr %130, i32 %conv10.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %131 = tail call i16 @llvm.bswap.i16(i16 %or10.i35.i.i) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i36.i.i, i16 %131) #11, !srcloc !191
  br label %alloc_pipe_config.exit

alloc_pipe_config.exit:                           ; preds = %if.then.i.i, %if.end102.i.alloc_pipe_config.exit_crit_edge, %do.end87.i, %do.end64.i, %do.end50.i, %do.end30.i, %do.end.i, %entry.alloc_pipe_config.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %do.end64.i ], [ -19, %do.end50.i ], [ -12, %do.end87.i ], [ -19, %do.end30.i ], [ -19, %do.end.i ], [ 0, %entry.alloc_pipe_config.exit_crit_edge ], [ 0, %if.end102.i.alloc_pipe_config.exit_crit_edge ], [ 0, %if.then.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8a66597_disable(ptr noundef %_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %do.body4, label %while.cond.preheader, !prof !196

while.cond.preheader:                             ; preds = %entry
  %queue = getelementptr inbounds %struct.r8a66597_ep, ptr %_ep, i32 0, i32 3
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not35 = icmp eq ptr %1, %queue
  br i1 %cmp.i.not35, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %r8a66597 = getelementptr inbounds %struct.r8a66597_ep, ptr %_ep, i32 0, i32 1
  br label %while.body

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/udc/r8a66597-udc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1565, 0\0A.popsection", ""() #11, !srcloc !201
  unreachable

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %2 = phi ptr [ %1, %while.body.lr.ph ], [ %8, %while.body.while.body_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %2, i32 -56
  %3 = ptrtoint ptr %r8a66597 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %r8a66597, align 4
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #11
  tail call fastcc void @transfer_complete(ptr noundef nonnull %_ep, ptr noundef %add.ptr.i, i32 noundef -104)
  %5 = ptrtoint ptr %r8a66597 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %r8a66597, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %call18) #11
  %7 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %8, %queue
  br i1 %cmp.i.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %r8a6659725 = getelementptr inbounds %struct.r8a66597_ep, ptr %_ep, i32 0, i32 1
  %9 = ptrtoint ptr %r8a6659725 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %r8a6659725, align 4
  %pipenum = getelementptr inbounds %struct.r8a66597_ep, ptr %_ep, i32 0, i32 5
  %11 = ptrtoint ptr %pipenum to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %pipenum, align 2
  tail call fastcc void @pipe_irq_disable(ptr noundef %10, i16 noundef zeroext %12)
  %13 = ptrtoint ptr %r8a6659725 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %r8a6659725, align 4
  %15 = ptrtoint ptr %pipenum to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %pipenum, align 2
  %type.i = getelementptr inbounds %struct.r8a66597_ep, ptr %_ep, i32 0, i32 6
  %17 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp.i.i = icmp eq i16 %16, 0
  br i1 %cmp.i.i, label %while.end.free_pipe_config.exit_crit_edge, label %if.end.i.i

while.end.free_pipe_config.exit_crit_edge:        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_pipe_config.exit

if.end.i.i:                                       ; preds = %while.end
  %19 = add i16 %16, -3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %19)
  %20 = icmp ult i16 %19, 3
  br i1 %20, label %if.then10.i.i, label %if.else.i.i

if.then10.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %bulk.i.i = getelementptr inbounds %struct.r8a66597, ptr %14, i32 0, i32 18
  %21 = ptrtoint ptr %bulk.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bulk.i.i, align 2
  %dec.i.i = add i8 %22, -1
  store i8 %dec.i.i, ptr %bulk.i.i, align 2
  br label %pipe_buffer_release.exit.i

if.else.i.i:                                      ; preds = %if.end.i.i
  %23 = and i16 %16, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %23)
  %24 = icmp eq i16 %23, 6
  br i1 %24, label %if.then20.i.i, label %if.else22.i.i

if.then20.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %interrupt.i.i = getelementptr inbounds %struct.r8a66597, ptr %14, i32 0, i32 19
  %25 = ptrtoint ptr %interrupt.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %interrupt.i.i, align 1
  %dec21.i.i = add i8 %26, -1
  store i8 %dec21.i.i, ptr %interrupt.i.i, align 1
  br label %pipe_buffer_release.exit.i

if.else22.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %16)
  %cmp30.i.i = icmp ult i16 %16, 3
  br i1 %cmp30.i.i, label %if.then32.i.i, label %do.end.i.i

if.then32.i.i:                                    ; preds = %if.else22.i.i
  %isochronous.i.i = getelementptr inbounds %struct.r8a66597, ptr %14, i32 0, i32 20
  %27 = ptrtoint ptr %isochronous.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %isochronous.i.i, align 8
  %dec33.i.i = add i8 %28, -1
  store i8 %dec33.i.i, ptr %isochronous.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %18)
  %cmp35.i.i = icmp eq i16 %18, 16384
  br i1 %cmp35.i.i, label %if.then37.i.i, label %if.then32.i.i.pipe_buffer_release.exit.i_crit_edge

if.then32.i.i.pipe_buffer_release.exit.i_crit_edge: ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pipe_buffer_release.exit.i

if.then37.i.i:                                    ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %bulk38.i.i = getelementptr inbounds %struct.r8a66597, ptr %14, i32 0, i32 18
  %29 = ptrtoint ptr %bulk38.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bulk38.i.i, align 2
  %dec39.i.i = add i8 %30, -1
  store i8 %dec39.i.i, ptr %bulk38.i.i, align 2
  br label %pipe_buffer_release.exit.i

do.end.i.i:                                       ; preds = %if.else22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %parent.i.i = getelementptr inbounds %struct.r8a66597, ptr %14, i32 0, i32 5, i32 11, i32 1
  %31 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parent.i.i, align 8
  %conv43.i.i = zext i16 %16 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.74, i32 noundef %conv43.i.i) #14
  br label %pipe_buffer_release.exit.i

pipe_buffer_release.exit.i:                       ; preds = %do.end.i.i, %if.then37.i.i, %if.then32.i.i.pipe_buffer_release.exit.i_crit_edge, %if.then20.i.i, %if.then10.i.i
  %33 = ptrtoint ptr %pipenum to i32
  call void @__asan_load2_noabort(i32 %33)
  %.pr.i = load i16, ptr %pipenum, align 2
  %34 = ptrtoint ptr %r8a6659725 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %r8a6659725, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr.i)
  %cmp.i1.i = icmp eq i16 %.pr.i, 0
  br i1 %cmp.i1.i, label %pipe_buffer_release.exit.i.free_pipe_config.exit_crit_edge, label %if.end.i2.i

pipe_buffer_release.exit.i.free_pipe_config.exit_crit_edge: ; preds = %pipe_buffer_release.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_pipe_config.exit

if.end.i2.i:                                      ; preds = %pipe_buffer_release.exit.i
  %use_dma.i.i = getelementptr inbounds %struct.r8a66597_ep, ptr %_ep, i32 0, i32 4
  %36 = ptrtoint ptr %use_dma.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load.i.i = load i8, ptr %use_dma.i.i, align 4
  %37 = and i8 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i.i = icmp eq i8 %37, 0
  br i1 %tobool.not.i.i, label %if.end.i2.i.if.end5.i.i_crit_edge, label %if.then4.i.i

if.end.i2.i.if.end5.i.i_crit_edge:                ; preds = %if.end.i2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i.i

if.then4.i.i:                                     ; preds = %if.end.i2.i
  call void @__sanitizer_cov_trace_pc() #13
  %num_dma.i.i = getelementptr inbounds %struct.r8a66597, ptr %35, i32 0, i32 21
  %38 = ptrtoint ptr %num_dma.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %num_dma.i.i, align 1
  %dec.i3.i = add i8 %39, -1
  store i8 %dec.i3.i, ptr %num_dma.i.i, align 1
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then4.i.i, %if.end.i2.i.if.end5.i.i_crit_edge
  %40 = ptrtoint ptr %pipenum to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %pipenum, align 2
  %41 = ptrtoint ptr %use_dma.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load7.i.i = load i8, ptr %use_dma.i.i, align 4
  %bf.clear11.i.i = and i8 %bf.load7.i.i, 111
  store i8 %bf.clear11.i.i, ptr %use_dma.i.i, align 4
  br label %free_pipe_config.exit

free_pipe_config.exit:                            ; preds = %if.end5.i.i, %pipe_buffer_release.exit.i.free_pipe_config.exit_crit_edge, %while.end.free_pipe_config.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8a66597_dequeue(ptr noundef %_ep, ptr noundef %_req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %r8a66597 = getelementptr inbounds %struct.r8a66597_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %r8a66597 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %r8a66597, align 4
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #11
  %queue = getelementptr inbounds %struct.r8a66597_ep, ptr %_ep, i32 0, i32 3
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %3, %queue
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @transfer_complete(ptr noundef %_ep, ptr noundef %_req, i32 noundef -104)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %r8a66597 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %r8a66597, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %call6) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8a66597_set_halt(ptr noundef %_ep, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %r8a66597 = getelementptr inbounds %struct.r8a66597_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %r8a66597 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %r8a66597, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #11
  %queue = getelementptr inbounds %struct.r8a66597_ep, ptr %_ep, i32 0, i32 3
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %3, %queue
  br i1 %cmp.i.not, label %if.else, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool7.not = icmp eq i32 %value, 0
  %busy11 = getelementptr inbounds %struct.r8a66597_ep, ptr %_ep, i32 0, i32 4
  %4 = ptrtoint ptr %busy11 to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load12 = load i8, ptr %busy11, align 4
  br i1 %tobool7.not, label %if.else10, label %if.then8

if.then8:                                         ; preds = %if.else
  %bf.set = or i8 %bf.load12, -128
  %5 = ptrtoint ptr %busy11 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %bf.set, ptr %busy11, align 4
  %6 = ptrtoint ptr %r8a66597 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %r8a66597, align 4
  %pipenum = getelementptr inbounds %struct.r8a66597_ep, ptr %_ep, i32 0, i32 5
  %8 = ptrtoint ptr %pipenum to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %pipenum, align 2
  %conv.i.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp.i.i = icmp eq i16 %9, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %reg.i.i.i.i = getelementptr inbounds %struct.r8a66597, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %11, i32 96
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %13 = and i16 %12, -769
  %14 = or i16 %13, 512
  %15 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i12.i.i.i = getelementptr i8, ptr %16, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i, i16 %14) #11, !srcloc !191
  br label %if.end20

if.else.i.i:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %9)
  %cmp3.i.i = icmp ult i16 %9, 8
  br i1 %cmp3.i.i, label %if.then5.i.i, label %do.end.i.i

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = shl nuw nsw i32 %conv.i.i, 1
  %add.i.i = add nuw nsw i32 %sub.i.i, 110
  %reg.i.i16.i.i = getelementptr inbounds %struct.r8a66597, ptr %7, i32 0, i32 1
  %17 = ptrtoint ptr %reg.i.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg.i.i16.i.i, align 4
  %add.ptr.i.i17.i.i = getelementptr i8, ptr %18, i32 %add.i.i
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i17.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %20 = and i16 %19, -769
  %21 = or i16 %20, 512
  %22 = ptrtoint ptr %reg.i.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg.i.i16.i.i, align 4
  %add.ptr.i12.i20.i.i = getelementptr i8, ptr %23, i32 %add.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i20.i.i, i16 %21) #11, !srcloc !191
  br label %if.end20

do.end.i.i:                                       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %parent.i.i = getelementptr inbounds %struct.r8a66597, ptr %7, i32 0, i32 5, i32 11, i32 1
  %24 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.28, i32 noundef %conv.i.i) #14
  br label %if.end20

if.else10:                                        ; preds = %if.else
  %bf.clear16 = and i8 %bf.load12, 63
  %26 = ptrtoint ptr %busy11 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %bf.clear16, ptr %busy11, align 4
  %27 = ptrtoint ptr %r8a66597 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %r8a66597, align 4
  %pipenum19 = getelementptr inbounds %struct.r8a66597_ep, ptr %_ep, i32 0, i32 5
  %29 = ptrtoint ptr %pipenum19 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %pipenum19, align 2
  %conv.i.i32 = zext i16 %30 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp.i.i33 = icmp eq i16 %30, 0
  br i1 %cmp.i.i33, label %if.then.i.i37, label %if.else.i.i39

if.then.i.i37:                                    ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #13
  %reg.i.i.i.i34 = getelementptr inbounds %struct.r8a66597, ptr %28, i32 0, i32 1
  %31 = ptrtoint ptr %reg.i.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg.i.i.i.i34, align 4
  %add.ptr.i.i.i.i35 = getelementptr i8, ptr %32, i32 96
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i35) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %34 = and i16 %33, -769
  %35 = ptrtoint ptr %reg.i.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg.i.i.i.i34, align 4
  %add.ptr.i12.i.i.i36 = getelementptr i8, ptr %36, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i36, i16 %34) #11, !srcloc !191
  br label %if.end20

if.else.i.i39:                                    ; preds = %if.else10
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %30)
  %cmp3.i.i38 = icmp ult i16 %30, 8
  br i1 %cmp3.i.i38, label %if.then5.i.i45, label %do.end.i.i47

if.then5.i.i45:                                   ; preds = %if.else.i.i39
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i40 = shl nuw nsw i32 %conv.i.i32, 1
  %add.i.i41 = add nuw nsw i32 %sub.i.i40, 110
  %reg.i.i16.i.i42 = getelementptr inbounds %struct.r8a66597, ptr %28, i32 0, i32 1
  %37 = ptrtoint ptr %reg.i.i16.i.i42 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg.i.i16.i.i42, align 4
  %add.ptr.i.i17.i.i43 = getelementptr i8, ptr %38, i32 %add.i.i41
  %39 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i17.i.i43) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %40 = and i16 %39, -769
  %41 = ptrtoint ptr %reg.i.i16.i.i42 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg.i.i16.i.i42, align 4
  %add.ptr.i12.i20.i.i44 = getelementptr i8, ptr %42, i32 %add.i.i41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i20.i.i44, i16 %40) #11, !srcloc !191
  br label %if.end20

do.end.i.i47:                                     ; preds = %if.else.i.i39
  call void @__sanitizer_cov_trace_pc() #13
  %parent.i.i46 = getelementptr inbounds %struct.r8a66597, ptr %28, i32 0, i32 5, i32 11, i32 1
  %43 = ptrtoint ptr %parent.i.i46 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %parent.i.i46, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.28, i32 noundef %conv.i.i32) #14
  br label %if.end20

if.end20:                                         ; preds = %do.end.i.i47, %if.then5.i.i45, %if.then.i.i37, %do.end.i.i, %if.then5.i.i, %if.then.i.i, %entry.if.end20_crit_edge
  %ret.0 = phi i32 [ -11, %entry.if.end20_crit_edge ], [ 0, %if.then.i.i ], [ 0, %if.then5.i.i ], [ 0, %do.end.i.i ], [ 0, %if.then.i.i37 ], [ 0, %if.then5.i.i45 ], [ 0, %do.end.i.i47 ]
  %45 = ptrtoint ptr %r8a66597 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %r8a66597, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %46, i32 noundef %call3) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8a66597_set_wedge(ptr noundef %_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %desc = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 9
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %do.body3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body3:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %r8a66597 = getelementptr inbounds %struct.r8a66597_ep, ptr %_ep, i32 0, i32 1
  %2 = ptrtoint ptr %r8a66597 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %r8a66597, align 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #11
  %wedge = getelementptr inbounds %struct.r8a66597_ep, ptr %_ep, i32 0, i32 4
  %4 = ptrtoint ptr %wedge to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %wedge, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %wedge, align 4
  %5 = ptrtoint ptr %r8a66597 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %r8a66597, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %call5) #11
  %call10 = tail call i32 @usb_ep_set_halt(ptr noundef nonnull %_ep) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body3, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %do.body3 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @r8a66597_fifo_flush(ptr noundef %_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %r8a66597 = getelementptr inbounds %struct.r8a66597_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %r8a66597 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %r8a66597, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #11
  %queue = getelementptr inbounds %struct.r8a66597_ep, ptr %_ep, i32 0, i32 3
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %3, %queue
  br i1 %cmp.i.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %busy = getelementptr inbounds %struct.r8a66597_ep, ptr %_ep, i32 0, i32 4
  %4 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %busy, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool7.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool7.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = ptrtoint ptr %r8a66597 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %r8a66597, align 4
  %pipenum = getelementptr inbounds %struct.r8a66597_ep, ptr %_ep, i32 0, i32 5
  %7 = ptrtoint ptr %pipenum to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %pipenum, align 2
  %conv.i.i = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp.i.i = icmp eq i16 %8, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %reg.i.i.i.i = getelementptr inbounds %struct.r8a66597, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %10, i32 96
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %12 = and i16 %11, -769
  %13 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i12.i.i.i = getelementptr i8, ptr %14, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i, i16 %12) #11, !srcloc !191
  br label %pipe_stop.exit

if.else.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %8)
  %cmp3.i.i = icmp ult i16 %8, 8
  br i1 %cmp3.i.i, label %if.then5.i.i, label %do.end.i.i

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = shl nuw nsw i32 %conv.i.i, 1
  %add.i.i = add nuw nsw i32 %sub.i.i, 110
  %reg.i.i16.i.i = getelementptr inbounds %struct.r8a66597, ptr %6, i32 0, i32 1
  %15 = ptrtoint ptr %reg.i.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg.i.i16.i.i, align 4
  %add.ptr.i.i17.i.i = getelementptr i8, ptr %16, i32 %add.i.i
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i17.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %18 = and i16 %17, -769
  %19 = ptrtoint ptr %reg.i.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg.i.i16.i.i, align 4
  %add.ptr.i12.i20.i.i = getelementptr i8, ptr %20, i32 %add.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i20.i.i, i16 %18) #11, !srcloc !191
  br label %pipe_stop.exit

do.end.i.i:                                       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %parent.i.i = getelementptr inbounds %struct.r8a66597, ptr %6, i32 0, i32 5, i32 11, i32 1
  %21 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.28, i32 noundef %conv.i.i) #14
  br label %pipe_stop.exit

pipe_stop.exit:                                   ; preds = %do.end.i.i, %if.then5.i.i, %if.then.i.i
  %23 = ptrtoint ptr %r8a66597 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %r8a66597, align 4
  %fifoctr = getelementptr inbounds %struct.r8a66597_ep, ptr %_ep, i32 0, i32 9
  %25 = ptrtoint ptr %fifoctr to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %fifoctr, align 4
  %conv10 = zext i8 %26 to i32
  %reg.i.i = getelementptr inbounds %struct.r8a66597, ptr %24, i32 0, i32 1
  %27 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 %conv10
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #11, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %30 = and i16 %29, -65
  %31 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %32, i32 %conv10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i, i16 %30) #11, !srcloc !191
  %33 = ptrtoint ptr %r8a66597 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %r8a66597, align 4
  %pipectr = getelementptr inbounds %struct.r8a66597_ep, ptr %_ep, i32 0, i32 10
  %35 = ptrtoint ptr %pipectr to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %pipectr, align 1
  %conv12 = zext i8 %36 to i32
  %reg.i = getelementptr inbounds %struct.r8a66597, ptr %34, i32 0, i32 1
  %37 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %38, i32 %conv12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 2) #11, !srcloc !191
  %39 = ptrtoint ptr %r8a66597 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %r8a66597, align 4
  %41 = ptrtoint ptr %pipectr to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %pipectr, align 1
  %conv15 = zext i8 %42 to i32
  %reg.i29 = getelementptr inbounds %struct.r8a66597, ptr %40, i32 0, i32 1
  %43 = ptrtoint ptr %reg.i29 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg.i29, align 4
  %add.ptr.i30 = getelementptr i8, ptr %44, i32 %conv15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i30, i16 0) #11, !srcloc !191
  br label %if.end

if.end:                                           ; preds = %pipe_stop.exit, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %45 = ptrtoint ptr %r8a66597 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %r8a66597, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %46, i32 noundef %call3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_set_halt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8a66597_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %gadget = getelementptr inbounds %struct.r8a66597, ptr %1, i32 0, i32 5
  tail call void @usb_del_gadget_udc(ptr noundef %gadget) #11
  %timer = getelementptr inbounds %struct.r8a66597, ptr %1, i32 0, i32 11
  %call1 = tail call i32 @del_timer_sync(ptr noundef %timer) #11
  %ep0_req = getelementptr inbounds %struct.r8a66597, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ep0_req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep0_req, align 8
  tail call void @kfree(ptr noundef %3) #11
  %pdata = getelementptr inbounds %struct.r8a66597, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 8
  %on_chip = getelementptr inbounds %struct.r8a66597_platdata, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %on_chip to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %on_chip, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %clk = getelementptr inbounds %struct.r8a66597, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %8) #11
  tail call void @clk_unprepare(ptr noundef %8) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_del_gadget_udc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !25, !26, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !42, !44, !46, !47, !48, !49, !50, !52, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !119, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !170, !172, !173, !174, !175}
!llvm.module.flags = !{!177, !178, !179, !180, !181, !182, !183, !184}
!llvm.ident = !{!185}

!0 = !{ptr @__initcall__kmod_r8a66597_udc__242_1975_r8a66597_driver_init6, !1, !"__initcall__kmod_r8a66597_udc__242_1975_r8a66597_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 1975, i32 1}
!2 = !{ptr @__exitcall_r8a66597_driver_exit, !1, !"__exitcall_r8a66597_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description243, !4, !"__UNIQUE_ID_description243", i1 false, i1 false}
!4 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 1977, i32 1}
!5 = !{ptr @__UNIQUE_ID_file244, !6, !"__UNIQUE_ID_file244", i1 false, i1 false}
!6 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 1978, i32 1}
!7 = !{ptr @__UNIQUE_ID_license245, !6, !"__UNIQUE_ID_license245", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author246, !9, !"__UNIQUE_ID_author246", i1 false, i1 false}
!9 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 1979, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias247, !11, !"__UNIQUE_ID_alias247", i1 false, i1 false}
!11 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 1980, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 1858, i32 3}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @r8a66597_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @r8a66597_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @r8a66597_probe.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 1867, i32 2}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @r8a66597_probe.__key.6, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 1876, i32 2}
!25 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 1880, i32 40}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 1883, i32 4}
!30 = !{ptr @r8a66597_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @r8a66597_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 1900, i32 3}
!34 = !{ptr @r8a66597_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @r8a66597_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 1952, i32 2}
!38 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @r8a66597_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @r8a66597_probe._entry_ptr.18, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @r8a66597_gadget_ops, !43, !"r8a66597_gadget_ops", i1 false, i1 false}
!43 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 1800, i32 36}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.h", i32 250, i32 3}
!46 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @get_xtal_from_pdata._entry, !45, !"_entry", i1 false, i1 false}
!49 = !{ptr @get_xtal_from_pdata._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @udc_name, !51, !"udc_name", i1 false, i1 false}
!51 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 27, i32 19}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 1831, i32 47}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 1413, i32 4}
!56 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @sudmac_finish._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @sudmac_finish._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 287, i32 4}
!61 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @r8a66597_change_curpipe._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @r8a66597_change_curpipe._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 130, i32 3}
!66 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @control_reg_set_pid._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @control_reg_set_pid._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 212, i32 3}
!71 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @control_reg_sqmon._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @control_reg_sqmon._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 197, i32 3}
!76 = !{ptr @control_reg_sqset._entry, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @control_reg_sqset._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 180, i32 3}
!80 = !{ptr @control_reg_sqclr._entry, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @control_reg_sqclr._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 1004, i32 3}
!84 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @irq_packet_write._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @irq_packet_write._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 1331, i32 3}
!89 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @r8a66597_update_usb_speed._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @r8a66597_update_usb_speed._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 1055, i32 3}
!94 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @irq_packet_read._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @irq_packet_read._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 952, i32 4}
!99 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @irq_ep0_write._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @irq_ep0_write._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 161, i32 3}
!104 = !{ptr @control_reg_get._entry, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @control_reg_get._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 1394, i32 3}
!108 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @irq_control_stage._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @irq_control_stage._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.45, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 112, i32 3}
!113 = !{ptr @control_reg_get_pid._entry, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @control_reg_get_pid._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.46, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 794, i32 3}
!117 = !{ptr @.str.47, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @start_ep0._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @start_ep0._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.48, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 29, i32 2}
!122 = !{ptr @.str.49, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 29, i32 9}
!124 = !{ptr @.str.50, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 29, i32 16}
!126 = !{ptr @.str.51, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 29, i32 23}
!128 = !{ptr @.str.52, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 29, i32 30}
!130 = !{ptr @.str.53, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 29, i32 37}
!132 = !{ptr @.str.54, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 29, i32 44}
!134 = !{ptr @.str.55, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 29, i32 51}
!136 = !{ptr @.str.56, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 30, i32 2}
!138 = !{ptr @.str.57, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 30, i32 9}
!140 = !{ptr @r8a66597_ep_name, !141, !"r8a66597_ep_name", i1 false, i1 false}
!141 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 28, i32 20}
!142 = !{ptr @r8a66597_ep_ops, !143, !"r8a66597_ep_ops", i1 false, i1 false}
!143 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 1706, i32 32}
!144 = !{ptr @.str.58, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 468, i32 5}
!146 = !{ptr @.str.59, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @alloc_pipe_config._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @alloc_pipe_config._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.61, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 485, i32 4}
!151 = !{ptr @alloc_pipe_config._entry.60, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @alloc_pipe_config._entry_ptr.62, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.64, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 495, i32 4}
!155 = !{ptr @alloc_pipe_config._entry.63, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @alloc_pipe_config._entry_ptr.65, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.67, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 504, i32 3}
!159 = !{ptr @alloc_pipe_config._entry.66, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @alloc_pipe_config._entry_ptr.68, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.70, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 519, i32 3}
!163 = !{ptr @alloc_pipe_config._entry.69, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @alloc_pipe_config._entry_ptr.71, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.72, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 357, i32 3}
!167 = !{ptr @.str.73, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @pipe_buffer_setting._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @pipe_buffer_setting._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.74, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 386, i32 3}
!172 = !{ptr @.str.75, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @pipe_buffer_release._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @pipe_buffer_release._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @r8a66597_driver, !176, !"r8a66597_driver", i1 false, i1 false}
!176 = !{!"../drivers/usb/gadget/udc/r8a66597-udc.c", i32 1968, i32 31}
!177 = !{i32 1, !"wchar_size", i32 2}
!178 = !{i32 1, !"min_enum_size", i32 4}
!179 = !{i32 8, !"branch-target-enforcement", i32 0}
!180 = !{i32 8, !"sign-return-address", i32 0}
!181 = !{i32 8, !"sign-return-address-all", i32 0}
!182 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!183 = !{i32 7, !"uwtable", i32 1}
!184 = !{i32 7, !"frame-pointer", i32 2}
!185 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!186 = distinct !{!186, !187}
!187 = !{!"llvm.loop.peeled.count", i32 1}
!188 = !{i64 4663000}
!189 = !{i64 2152203575}
!190 = !{i64 2152204992}
!191 = !{i64 4662800}
!192 = !{i64 4663838}
!193 = !{i64 2152204187}
!194 = !{i64 2152205542}
!195 = !{i64 4663420}
!196 = !{!"branch_weights", i32 1, i32 2000}
!197 = !{!"branch_weights", i32 2000, i32 1}
!198 = !{i64 2154324966, i64 2154325468, i64 2154325003, i64 2154325059, i64 2154325093, i64 2154325117, i64 2154325158, i64 2154325179, i64 2154325207, i64 2154325241}
!199 = !{i64 2152204568}
!200 = !{i64 4663223}
!201 = !{i64 2154361313, i64 2154361816, i64 2154361350, i64 2154361406, i64 2154361440, i64 2154361464, i64 2154361505, i64 2154361526, i64 2154361554, i64 2154361588}
