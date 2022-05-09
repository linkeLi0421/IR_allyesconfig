; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/udc/m66592-udc.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/m66592-udc.c"
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
%struct.m66592 = type { %struct.spinlock, ptr, ptr, ptr, i32, %struct.usb_gadget, ptr, [8 x %struct.m66592_ep], [8 x ptr], [16 x ptr], ptr, i16, i16, %struct.timer_list, i32, i32, i32, i32, i32, i32 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.m66592_ep = type { %struct.usb_ep, ptr, %struct.list_head, i8, i16, i16, i32, i32, i32, i32, i32 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.m66592_request = type { %struct.usb_request, %struct.list_head }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>

@__UNIQUE_ID_description232 = internal constant [48 x i8] c"m66592_udc.description=M66592 USB gadget driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [50 x i8] c"m66592_udc.file=drivers/usb/gadget/udc/m66592-udc\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [23 x i8] c"m66592_udc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author235 = internal constant [36 x i8] c"m66592_udc.author=Yoshihiro Shimoda\00", section ".modinfo", align 1
@__UNIQUE_ID_alias236 = internal constant [37 x i8] c"m66592_udc.alias=platform:m66592_udc\00", section ".modinfo", align 1
@__initcall__kmod_m66592_udc__245_1698_m66592_driver_init6 = internal global ptr @m66592_driver_init, section ".initcall6.init", align 4
@m66592_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr @m66592_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @udc_name, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_m66592_driver_exit = internal global ptr @m66592_driver_exit, section ".exitcall.exit", align 4
@m66592_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013platform_get_resource error.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"m66592_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/usb/gadget/udc/m66592-udc.c\00", [60 x i8] zeroinitializer }, align 32
@m66592_probe._entry_ptr = internal global ptr @m66592_probe._entry, section ".printk_index", align 4
@m66592_probe._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1558, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"platform_get_resource IORESOURCE_IRQ error.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@m66592_probe._entry_ptr.7 = internal global ptr @m66592_probe._entry.3, section ".printk_index", align 4
@m66592_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 1565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\013ioremap error.\0A\00", [46 x i8] zeroinitializer }, align 32
@m66592_probe._entry_ptr.10 = internal global ptr @m66592_probe._entry.8, section ".printk_index", align 4
@m66592_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 1570, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no platform data\0A\00", [46 x i8] zeroinitializer }, align 32
@m66592_probe._entry_ptr.13 = internal global ptr @m66592_probe._entry.11, section ".printk_index", align 4
@m66592_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&m66592->lock\00", [18 x i8] zeroinitializer }, align 32
@m66592_gadget_ops = internal constant { %struct.usb_gadget_ops, [36 x i8] } { %struct.usb_gadget_ops { ptr @m66592_get_frame, ptr null, ptr null, ptr null, ptr null, ptr @m66592_pullup, ptr null, ptr null, ptr @m66592_udc_start, ptr @m66592_udc_stop, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@udc_name = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"m66592_udc\00", [21 x i8] zeroinitializer }, align 32
@m66592_probe.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"(&m66592->timer)\00", [47 x i8] zeroinitializer }, align 32
@m66592_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 1598, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013request_irq error (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@m66592_probe._entry_ptr.19 = internal global ptr @m66592_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usbf%d\00", [25 x i8] zeroinitializer }, align 32
@m66592_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 1607, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot get clock \22%s\22\0A\00", [41 x i8] zeroinitializer }, align 32
@m66592_probe._entry_ptr.23 = internal global ptr @m66592_probe._entry.21, section ".printk_index", align 4
@m66592_ep_name = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], [32 x i8] zeroinitializer }, align 32
@m66592_ep_ops = internal constant { %struct.usb_ep_ops, [52 x i8] } { %struct.usb_ep_ops { ptr @m66592_enable, ptr @m66592_disable, ptr null, ptr @m66592_alloc_request, ptr @m66592_free_request, ptr @m66592_queue, ptr @m66592_dequeue, ptr @m66592_set_halt, ptr null, ptr null, ptr @m66592_fifo_flush }, [52 x i8] zeroinitializer }, align 32
@m66592_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 1665, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"version %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@m66592_probe._entry_ptr.27 = internal global ptr @m66592_probe._entry.24, section ".printk_index", align 4
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"21 July 2009\00", [19 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@m66592_update_usb_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 1130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013USB speed unknown\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"m66592_update_usb_speed\00", [40 x i8] zeroinitializer }, align 32
@m66592_update_usb_speed._entry_ptr = internal global ptr @m66592_update_usb_speed._entry, section ".printk_index", align 4
@irq_packet_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 855, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013read fifo not ready\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"irq_packet_read\00", [16 x i8] zeroinitializer }, align 32
@irq_packet_read._entry_ptr = internal global ptr @irq_packet_read._entry, section ".printk_index", align 4
@control_reg_set_pid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013unexpect pipe num (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"control_reg_set_pid\00", [44 x i8] zeroinitializer }, align 32
@control_reg_set_pid._entry_ptr = internal global ptr @control_reg_set_pid._entry, section ".printk_index", align 4
@irq_packet_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 806, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013write fifo not ready. pipnum=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"irq_packet_write\00", [47 x i8] zeroinitializer }, align 32
@irq_packet_write._entry_ptr = internal global ptr @irq_packet_write._entry, section ".printk_index", align 4
@irq_ep0_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 757, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\013pipe0 is busy. maybe cpu i/o bus conflict. please power off this controller.\00", [49 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"irq_ep0_write\00", [18 x i8] zeroinitializer }, align 32
@irq_ep0_write._entry_ptr = internal global ptr @irq_ep0_write._entry, section ".printk_index", align 4
@control_reg_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.39, ptr @.str.2, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"control_reg_get\00", [16 x i8] zeroinitializer }, align 32
@control_reg_get._entry_ptr = internal global ptr @control_reg_get._entry, section ".printk_index", align 4
@irq_control_stage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 1189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013ctrl_stage: unexpect ctsq(%x)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"irq_control_stage\00", [46 x i8] zeroinitializer }, align 32
@irq_control_stage._entry_ptr = internal global ptr @irq_control_stage._entry, section ".printk_index", align 4
@control_reg_get_pid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.42, ptr @.str.2, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"control_reg_get_pid\00", [44 x i8] zeroinitializer }, align 32
@control_reg_get_pid._entry_ptr = internal global ptr @control_reg_get_pid._entry, section ".printk_index", align 4
@start_ep0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 582, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013start_ep0: unexpect ctsq(%x)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"start_ep0\00", [22 x i8] zeroinitializer }, align 32
@start_ep0._entry_ptr = internal global ptr @start_ep0._entry, section ".printk_index", align 4
@control_reg_sqclr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013unexpect pipe num(%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"control_reg_sqclr\00", [46 x i8] zeroinitializer }, align 32
@control_reg_sqclr._entry_ptr = internal global ptr @control_reg_sqclr._entry, section ".printk_index", align 4
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep0\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep1\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep2\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep3\00", [28 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep4\00", [28 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep5\00", [28 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep6\00", [28 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep7\00", [28 x i8] zeroinitializer }, align 32
@alloc_pipe_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013bulk pipe is insufficient\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"alloc_pipe_config\00", [46 x i8] zeroinitializer }, align 32
@alloc_pipe_config._entry_ptr = internal global ptr @alloc_pipe_config._entry, section ".printk_index", align 4
@alloc_pipe_config._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.2, i32 414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013interrupt pipe is insufficient\0A\00", [62 x i8] zeroinitializer }, align 32
@alloc_pipe_config._entry_ptr.59 = internal global ptr @alloc_pipe_config._entry.57, section ".printk_index", align 4
@alloc_pipe_config._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str.2, i32 423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013isochronous pipe is insufficient\0A\00", [60 x i8] zeroinitializer }, align 32
@alloc_pipe_config._entry_ptr.62 = internal global ptr @alloc_pipe_config._entry.60, section ".printk_index", align 4
@alloc_pipe_config._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.56, ptr @.str.2, i32 431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013unexpect xfer type\0A\00", [42 x i8] zeroinitializer }, align 32
@alloc_pipe_config._entry_ptr.65 = internal global ptr @alloc_pipe_config._entry.63, section ".printk_index", align 4
@alloc_pipe_config._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.56, ptr @.str.2, i32 446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013pipe_buffer_setting fail\0A\00", [36 x i8] zeroinitializer }, align 32
@alloc_pipe_config._entry_ptr.68 = internal global ptr @alloc_pipe_config._entry.66, section ".printk_index", align 4
@pipe_buffer_setting._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013m66592 pipe memory is insufficient\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pipe_buffer_setting\00", [44 x i8] zeroinitializer }, align 32
@pipe_buffer_setting._entry_ptr = internal global ptr @pipe_buffer_setting._entry, section ".printk_index", align 4
@pipe_buffer_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013ep_release: unexpect pipenum (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pipe_buffer_release\00", [44 x i8] zeroinitializer }, align 32
@pipe_buffer_release._entry_ptr = internal global ptr @pipe_buffer_release._entry, section ".printk_index", align 4
@init_controller._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 637, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014m66592-udc: xtal configuration error\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"init_controller\00", [16 x i8] zeroinitializer }, align 32
@init_controller._entry_ptr = internal global ptr @init_controller._entry, section ".printk_index", align 4
@init_controller._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.2, i32 649, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014m66592-udc: irq trigger config error\0A\00", [56 x i8] zeroinitializer }, align 32
@init_controller._entry_ptr.77 = internal global ptr @init_controller._entry.75, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 2, i64 2, i64 3]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 2, i64 2, i64 3]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 7, i64 32, i64 48]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 2, i64 2, i64 3]
@__sancov_gen_cov_switch_values.81 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.87 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.88 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.89 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 49152]
@___asan_gen_.90 = private unnamed_addr constant [14 x i8] c"m66592_driver\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1691, i32 31 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1550, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1557, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1565, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1570, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1585, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [18 x i8] c"m66592_gadget_ops\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1509, i32 36 }
@___asan_gen_.138 = private unnamed_addr constant [9 x i8] c"udc_name\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 29, i32 19 }
@___asan_gen_.141 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1592, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1598, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1603, i32 40 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1606, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant [15 x i8] c"m66592_ep_name\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 30, i32 20 }
@___asan_gen_.165 = private unnamed_addr constant [14 x i8] c"m66592_ep_ops\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1436, i32 32 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1665, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1130, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 855, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 129, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 806, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 756, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 158, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1189, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 113, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 582, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 175, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 31, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 31, i32 9 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 31, i32 16 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 31, i32 23 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 31, i32 30 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 31, i32 37 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 31, i32 44 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 31, i32 51 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 398, i32 5 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 414, i32 4 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 423, i32 4 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 431, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 446, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 267, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 296, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 637, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.351 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.352 = private constant [39 x i8] c"../drivers/usb/gadget/udc/m66592-udc.c\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 649, i32 4 }
@llvm.compiler.used = appending global [122 x ptr] [ptr @__UNIQUE_ID_alias236, ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_m66592_driver_exit, ptr @__initcall__kmod_m66592_udc__245_1698_m66592_driver_init6, ptr @alloc_pipe_config._entry, ptr @alloc_pipe_config._entry.57, ptr @alloc_pipe_config._entry.60, ptr @alloc_pipe_config._entry.63, ptr @alloc_pipe_config._entry.66, ptr @alloc_pipe_config._entry_ptr, ptr @alloc_pipe_config._entry_ptr.59, ptr @alloc_pipe_config._entry_ptr.62, ptr @alloc_pipe_config._entry_ptr.65, ptr @alloc_pipe_config._entry_ptr.68, ptr @control_reg_get._entry, ptr @control_reg_get._entry_ptr, ptr @control_reg_get_pid._entry, ptr @control_reg_get_pid._entry_ptr, ptr @control_reg_set_pid._entry, ptr @control_reg_set_pid._entry_ptr, ptr @control_reg_sqclr._entry, ptr @control_reg_sqclr._entry_ptr, ptr @init_controller._entry, ptr @init_controller._entry.75, ptr @init_controller._entry_ptr, ptr @init_controller._entry_ptr.77, ptr @irq_control_stage._entry, ptr @irq_control_stage._entry_ptr, ptr @irq_ep0_write._entry, ptr @irq_ep0_write._entry_ptr, ptr @irq_packet_read._entry, ptr @irq_packet_read._entry_ptr, ptr @irq_packet_write._entry, ptr @irq_packet_write._entry_ptr, ptr @m66592_driver_exit, ptr @m66592_probe._entry, ptr @m66592_probe._entry.11, ptr @m66592_probe._entry.17, ptr @m66592_probe._entry.21, ptr @m66592_probe._entry.24, ptr @m66592_probe._entry.3, ptr @m66592_probe._entry.8, ptr @m66592_probe._entry_ptr, ptr @m66592_probe._entry_ptr.10, ptr @m66592_probe._entry_ptr.13, ptr @m66592_probe._entry_ptr.19, ptr @m66592_probe._entry_ptr.23, ptr @m66592_probe._entry_ptr.27, ptr @m66592_probe._entry_ptr.7, ptr @m66592_update_usb_speed._entry, ptr @m66592_update_usb_speed._entry_ptr, ptr @pipe_buffer_release._entry, ptr @pipe_buffer_release._entry_ptr, ptr @pipe_buffer_setting._entry, ptr @pipe_buffer_setting._entry_ptr, ptr @start_ep0._entry, ptr @start_ep0._entry_ptr, ptr @m66592_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @m66592_probe.__key, ptr @.str.14, ptr @m66592_gadget_ops, ptr @udc_name, ptr @m66592_probe.__key.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @m66592_ep_name, ptr @m66592_ep_ops, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76], section "llvm.metadata"
@0 = internal global [88 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m66592_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m66592_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m66592_probe._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m66592_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m66592_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m66592_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m66592_gadget_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_name to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m66592_probe.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m66592_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m66592_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m66592_ep_name to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m66592_ep_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m66592_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m66592_update_usb_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_packet_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_reg_set_pid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_packet_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_ep0_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_reg_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_control_stage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_reg_get_pid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_ep0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_reg_sqclr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_pipe_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_pipe_config._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_pipe_config._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_pipe_config._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_pipe_config._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pipe_buffer_setting._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pipe_buffer_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_controller._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_controller._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @m66592_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @m66592_driver, ptr noundef nonnull @m66592_probe, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @m66592_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @m66592_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m66592_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %clk_name = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %clk_name) #10
  %0 = ptrtoint ptr %clk_name to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %clk_name, align 8
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #10
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %2
  %add.i = add i32 %sub.i, %4
  %call10 = tail call ptr @ioremap(i32 noundef %2, i32 noundef %add.i) #10
  %cmp = icmp eq ptr %call10, null
  br i1 %cmp, label %if.then11, label %if.end17

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #13
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  %dev18 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %5 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %platform_data.i, align 8
  %cmp20 = icmp eq ptr %6, null
  br i1 %cmp20, label %do.end24, label %if.end26

do.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.12) #13
  br label %if.then202

if.end26:                                         ; preds = %if.end17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 1968) #14
  %cmp28 = icmp eq ptr %call7.i.i, null
  br i1 %cmp28, label %if.end26.if.then202_crit_edge, label %if.end30

if.end26.if.then202_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then202

if.end30:                                         ; preds = %if.end26
  %8 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_data.i, align 8
  %pdata = getelementptr inbounds %struct.m66592, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %pdata, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %call2, i32 0, i32 3
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and = and i32 %12, 15
  %irq_trigger = getelementptr inbounds %struct.m66592, ptr %call7.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %irq_trigger to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and, ptr %irq_trigger, align 8
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @m66592_probe.__key, i16 noundef signext 3) #10
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %gadget = getelementptr inbounds %struct.m66592, ptr %call7.i.i, i32 0, i32 5
  %ops = getelementptr inbounds %struct.m66592, ptr %call7.i.i, i32 0, i32 5, i32 2
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @m66592_gadget_ops, ptr %ops, align 8
  %max_speed = getelementptr inbounds %struct.m66592, ptr %call7.i.i, i32 0, i32 5, i32 6
  %16 = ptrtoint ptr %max_speed to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %max_speed, align 4
  %name = getelementptr inbounds %struct.m66592, ptr %call7.i.i, i32 0, i32 5, i32 10
  %17 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @udc_name, ptr %name, align 4
  %timer = getelementptr inbounds %struct.m66592, ptr %call7.i.i, i32 0, i32 13
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @m66592_timer, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @m66592_probe.__key.15) #10
  %reg42 = getelementptr inbounds %struct.m66592, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %reg42 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call10, ptr %reg42, align 4
  %19 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %call2, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %20, ptr noundef nonnull @m66592_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @udc_name, ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp45 = icmp slt i32 %call.i, 0
  br i1 %cmp45, label %clean_up.thread314, label %if.end52

clean_up.thread314:                               ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %call.i) #13
  br label %if.then191

if.end52:                                         ; preds = %if.end30
  %21 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdata, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load = load i8, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool54.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool54.not, label %if.end52.for.body.peel.next_crit_edge, label %if.then55

if.end52.for.body.peel.next_crit_edge:            ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.peel.next

if.then55:                                        ; preds = %if.end52
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %24 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id, align 4
  %call56 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name, i32 noundef 8, ptr noundef nonnull @.str.20, i32 noundef %25)
  %call59 = call ptr @clk_get(ptr noundef %dev18, ptr noundef nonnull %clk_name) #10
  %clk = getelementptr inbounds %struct.m66592, ptr %call7.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call59, ptr %clk, align 8
  %cmp.i = icmp ugt ptr %call59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %clean_up.thread322, label %if.end70

clean_up.thread322:                               ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.22, ptr noundef nonnull %clk_name) #13
  %27 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk, align 8
  %29 = ptrtoint ptr %28 to i32
  %30 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %call2, align 4
  %call189324 = call ptr @free_irq(i32 noundef %31, ptr noundef nonnull %call7.i.i) #10
  br label %if.then191

if.end70:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  %call72 = call i32 @clk_enable(ptr noundef %call59) #10
  br label %for.body.peel.next

for.body.peel.next:                               ; preds = %if.end70, %if.end52.for.body.peel.next_crit_edge
  %ep_list = getelementptr inbounds %struct.m66592, ptr %call7.i.i, i32 0, i32 5, i32 4
  %32 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %ep_list, ptr %ep_list, align 8
  %prev.i = getelementptr inbounds %struct.m66592, ptr %call7.i.i, i32 0, i32 5, i32 4, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %ep_list, ptr %prev.i, align 4
  %ep = getelementptr %struct.m66592, ptr %call7.i.i, i32 0, i32 7
  %ep0 = getelementptr inbounds %struct.m66592, ptr %call7.i.i, i32 0, i32 5, i32 3
  %34 = ptrtoint ptr %ep0 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %ep, ptr %ep0, align 4
  %ep_list79 = getelementptr inbounds %struct.m66592, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 0, i32 3
  %35 = ptrtoint ptr %ep_list79 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %ep_list79, ptr %ep_list79, align 8
  %prev.i303 = getelementptr inbounds %struct.m66592, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 0, i32 3, i32 1
  %36 = ptrtoint ptr %prev.i303 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %ep_list79, ptr %prev.i303, align 4
  %m6659297.peel = getelementptr %struct.m66592, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 1
  %37 = ptrtoint ptr %m6659297.peel to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call7.i.i, ptr %m6659297.peel, align 8
  %queue.peel = getelementptr %struct.m66592, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 2
  %38 = ptrtoint ptr %queue.peel to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %queue.peel, ptr %queue.peel, align 4
  %prev.i306.peel = getelementptr %struct.m66592, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %prev.i306.peel to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %queue.peel, ptr %prev.i306.peel, align 8
  %name100.peel = getelementptr %struct.m66592, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 0, i32 1
  %40 = ptrtoint ptr %name100.peel to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.47, ptr %name100.peel, align 8
  %ops102.peel = getelementptr %struct.m66592, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 0, i32 2
  %41 = ptrtoint ptr %ops102.peel to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @m66592_ep_ops, ptr %ops102.peel, align 4
  call void @usb_ep_set_maxpacket_limit(ptr noundef %ep, i32 noundef 512) #10
  %caps.peel = getelementptr %struct.m66592, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 0, i32 4
  %42 = ptrtoint ptr %caps.peel to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load107.peel = load i8, ptr %caps.peel, align 8
  %caps125.peel = getelementptr %struct.m66592, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 0, i32 4
  %bf.set133.peel = or i8 %bf.load107.peel, -116
  %43 = ptrtoint ptr %caps125.peel to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %bf.set133.peel, ptr %caps125.peel, align 8
  br label %if.then85

if.then85:                                        ; preds = %if.end123.if.then85_crit_edge, %for.body.peel.next
  %i.0337 = phi i32 [ 1, %for.body.peel.next ], [ %inc, %if.end123.if.then85_crit_edge ]
  %arrayidx83 = getelementptr %struct.m66592, ptr %call7.i.i, i32 0, i32 7, i32 %i.0337
  %ep_list89 = getelementptr inbounds %struct.usb_ep, ptr %arrayidx83, i32 0, i32 3
  %44 = ptrtoint ptr %ep_list89 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %ep_list89, ptr %ep_list89, align 4
  %prev.i304 = getelementptr inbounds %struct.usb_ep, ptr %arrayidx83, i32 0, i32 3, i32 1
  %45 = ptrtoint ptr %prev.i304 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %ep_list89, ptr %prev.i304, align 4
  %46 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %ep_list89, ptr noundef %47, ptr noundef %ep_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then85.if.end123_crit_edge

if.then85.if.end123_crit_edge:                    ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end123

if.end.i.i:                                       ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %ep_list89, ptr %prev.i, align 4
  %49 = ptrtoint ptr %ep_list89 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %ep_list, ptr %ep_list89, align 4
  %50 = ptrtoint ptr %prev.i304 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev.i304, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %ep_list89, ptr %47, align 4
  br label %if.end123

if.end123:                                        ; preds = %if.end.i.i, %if.then85.if.end123_crit_edge
  %m6659297 = getelementptr %struct.m66592, ptr %call7.i.i, i32 0, i32 7, i32 %i.0337, i32 1
  %52 = ptrtoint ptr %m6659297 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call7.i.i, ptr %m6659297, align 4
  %queue = getelementptr %struct.m66592, ptr %call7.i.i, i32 0, i32 7, i32 %i.0337, i32 2
  %53 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i306 = getelementptr %struct.m66592, ptr %call7.i.i, i32 0, i32 7, i32 %i.0337, i32 2, i32 1
  %54 = ptrtoint ptr %prev.i306 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %queue, ptr %prev.i306, align 4
  %arrayidx98 = getelementptr [8 x ptr], ptr @m66592_ep_name, i32 0, i32 %i.0337
  %55 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx98, align 4
  %name100 = getelementptr inbounds %struct.usb_ep, ptr %arrayidx83, i32 0, i32 1
  %57 = ptrtoint ptr %name100 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %name100, align 4
  %ops102 = getelementptr inbounds %struct.usb_ep, ptr %arrayidx83, i32 0, i32 2
  %58 = ptrtoint ptr %ops102 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @m66592_ep_ops, ptr %ops102, align 4
  call void @usb_ep_set_maxpacket_limit(ptr noundef %arrayidx83, i32 noundef 512) #10
  %caps109 = getelementptr inbounds %struct.usb_ep, ptr %arrayidx83, i32 0, i32 4
  %59 = ptrtoint ptr %caps109 to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load110 = load i8, ptr %caps109, align 4
  %caps125 = getelementptr inbounds %struct.usb_ep, ptr %arrayidx83, i32 0, i32 4
  %bf.set133 = or i8 %bf.load110, 124
  %60 = ptrtoint ptr %caps125 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %bf.set133, ptr %caps125, align 4
  %inc = add nuw nsw i32 %i.0337, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %if.end123.if.then85_crit_edge, !llvm.loop !177

if.end123.if.then85_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then85

for.end:                                          ; preds = %if.end123
  call void @usb_ep_set_maxpacket_limit(ptr noundef %ep, i32 noundef 64) #10
  %pipenum = getelementptr inbounds %struct.m66592, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 4
  %61 = ptrtoint ptr %pipenum to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 0, ptr %pipenum, align 2
  %fifoaddr = getelementptr inbounds %struct.m66592, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 6
  %62 = ptrtoint ptr %fifoaddr to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 16, ptr %fifoaddr, align 4
  %fifosel = getelementptr inbounds %struct.m66592, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 7
  %63 = ptrtoint ptr %fifosel to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 30, ptr %fifosel, align 8
  %fifoctr = getelementptr inbounds %struct.m66592, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 8
  %64 = ptrtoint ptr %fifoctr to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 32, ptr %fifoctr, align 4
  %fifotrn = getelementptr inbounds %struct.m66592, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 9
  %65 = ptrtoint ptr %fifotrn to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %fifotrn, align 8
  %pipectr = getelementptr inbounds %struct.m66592, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 10
  %66 = ptrtoint ptr %pipectr to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 110, ptr %pipectr, align 4
  %pipenum2ep = getelementptr inbounds %struct.m66592, ptr %call7.i.i, i32 0, i32 8
  %67 = ptrtoint ptr %pipenum2ep to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %ep, ptr %pipenum2ep, align 4
  %epaddr2ep = getelementptr inbounds %struct.m66592, ptr %call7.i.i, i32 0, i32 9
  %68 = ptrtoint ptr %epaddr2ep to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %ep, ptr %epaddr2ep, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %69 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %69, i32 noundef 3520, i32 noundef 64) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %m66592_alloc_request.exit.thread, label %if.end162

m66592_alloc_request.exit.thread:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %ep0_req307 = getelementptr inbounds %struct.m66592, ptr %call7.i.i, i32 0, i32 10
  br label %clean_up3

if.end162:                                        ; preds = %for.end
  %queue.i = getelementptr inbounds %struct.m66592_request, ptr %call7.i.i.i, i32 0, i32 1
  %70 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %queue.i, ptr %queue.i, align 8
  %prev.i.i = getelementptr inbounds %struct.m66592_request, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %71 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %queue.i, ptr %prev.i.i, align 4
  %ep0_req = getelementptr inbounds %struct.m66592, ptr %call7.i.i, i32 0, i32 10
  %72 = ptrtoint ptr %ep0_req to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call7.i.i.i, ptr %ep0_req, align 4
  %complete = getelementptr inbounds %struct.usb_request, ptr %call7.i.i.i, i32 0, i32 7
  %73 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @nop_completion, ptr %complete, align 4
  call fastcc void @init_controller(ptr noundef nonnull %call7.i.i)
  %call166 = call i32 @usb_add_gadget_udc(ptr noundef %dev18, ptr noundef %gadget) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166)
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %do.end172, label %err_add_udc

do.end172:                                        ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev18, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.28) #13
  br label %cleanup

err_add_udc:                                      ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %ep0_req to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ep0_req, align 4
  call void @kfree(ptr noundef %75) #10
  br label %clean_up3

clean_up3:                                        ; preds = %err_add_udc, %m66592_alloc_request.exit.thread
  %ep0_req307.sink = phi ptr [ %ep0_req307, %m66592_alloc_request.exit.thread ], [ %ep0_req, %err_add_udc ]
  %ret.0 = phi i32 [ -12, %m66592_alloc_request.exit.thread ], [ %call166, %err_add_udc ]
  %76 = ptrtoint ptr %ep0_req307.sink to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %ep0_req307.sink, align 4
  %77 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pdata, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %79)
  %bf.load180 = load i8, ptr %78, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load180)
  %tobool183.not = icmp sgt i8 %bf.load180, -1
  br i1 %tobool183.not, label %clean_up3.clean_up_crit_edge, label %if.then184

clean_up3.clean_up_crit_edge:                     ; preds = %clean_up3
  call void @__sanitizer_cov_trace_pc() #12
  br label %clean_up

if.then184:                                       ; preds = %clean_up3
  call void @__sanitizer_cov_trace_pc() #12
  %clk185 = getelementptr inbounds %struct.m66592, ptr %call7.i.i, i32 0, i32 2
  %80 = ptrtoint ptr %clk185 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %clk185, align 8
  call void @clk_disable(ptr noundef %81) #10
  %82 = ptrtoint ptr %clk185 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %clk185, align 8
  call void @clk_put(ptr noundef %83) #10
  br label %clean_up

clean_up:                                         ; preds = %if.then184, %clean_up3.clean_up_crit_edge
  %84 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %call2, align 4
  %call189 = call ptr @free_irq(i32 noundef %85, ptr noundef nonnull %call7.i.i) #10
  br label %if.then191

if.then191:                                       ; preds = %clean_up, %clean_up.thread322, %clean_up.thread314
  %ret.2321 = phi i32 [ %call.i, %clean_up.thread314 ], [ %ret.0, %clean_up ], [ %29, %clean_up.thread322 ]
  %ep0_req192 = getelementptr inbounds %struct.m66592, ptr %call7.i.i, i32 0, i32 10
  %86 = ptrtoint ptr %ep0_req192 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ep0_req192, align 4
  %tobool193.not = icmp eq ptr %87, null
  br i1 %tobool193.not, label %if.then191.if.end199_crit_edge, label %if.then194

if.then191.if.end199_crit_edge:                   ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end199

if.then194:                                       ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %87) #10
  br label %if.end199

if.end199:                                        ; preds = %if.then194, %if.then191.if.end199_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %if.then202

if.then202:                                       ; preds = %if.end199, %if.end26.if.then202_crit_edge, %do.end24
  %ret.2313335 = phi i32 [ %ret.2321, %if.end199 ], [ -19, %do.end24 ], [ -12, %if.end26.if.then202_crit_edge ]
  call void @iounmap(ptr noundef nonnull %call10) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then202, %do.end172, %if.then11, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %do.end172 ], [ %ret.2313335, %if.then202 ], [ -12, %if.then11 ], [ -19, %if.then4 ], [ -19, %if.then ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %clk_name) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @m66592_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1892
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #10
  %reg.i = getelementptr i8, ptr %t, i32 -1848
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg.i, align 4
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %3 = and i16 %2, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg.i, align 4
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %5) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %7 = or i16 %6, 24
  %8 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %9, i16 %7) #10, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #10
  %11 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg.i, align 4
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %12) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %14 = or i16 %13, 4
  %15 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %16, i16 %14) #10, !srcloc !182
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %scount = getelementptr i8, ptr %t, i32 48
  %17 = ptrtoint ptr %scount to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %scount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp9 = icmp sgt i32 %18, 0
  br i1 %cmp9, label %if.then11, label %if.end.if.end43_crit_edge

if.end.if.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then11:                                        ; preds = %if.end
  %19 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 64
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #10, !srcloc !179
  %22 = lshr i16 %21, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %23 = and i16 %22, 128
  %old_vbus = getelementptr i8, ptr %t, i32 -2
  %24 = ptrtoint ptr %old_vbus to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %old_vbus, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %25)
  %cmp18 = icmp eq i16 %23, %25
  br i1 %cmp18, label %if.then20, label %if.else35

if.then20:                                        ; preds = %if.then11
  %26 = ptrtoint ptr %scount to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %scount, align 4
  %dec = add i32 %27, -1
  store i32 %dec, ptr %scount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp23 = icmp eq i32 %dec, 0
  br i1 %cmp23, label %if.then25, label %if.else31

if.then25:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp27.not = icmp eq i16 %23, 0
  %28 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i67 = getelementptr i8, ptr %29, i32 48
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i67) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  br i1 %cmp27.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  %31 = or i16 %30, 8
  %32 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %33, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i, i16 %31) #10, !srcloc !182
  %34 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i5.i = getelementptr i8, ptr %35, i32 48
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i5.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %37 = or i16 %36, 3584
  %38 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i7.i = getelementptr i8, ptr %39, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i7.i, i16 %37) #10, !srcloc !182
  %40 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i9.i = getelementptr i8, ptr %41, i32 48
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i9.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %43 = or i16 %42, 5
  %44 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i11.i = getelementptr i8, ptr %45, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i11.i, i16 %43) #10, !srcloc !182
  %46 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg.i, align 4
  %48 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %47) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %49 = or i16 %48, 4096
  %50 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %51, i16 %49) #10, !srcloc !182
  br label %if.end43

if.else:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  %52 = and i16 %30, -9
  %53 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i68 = getelementptr i8, ptr %54, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i68, i16 %52) #10, !srcloc !182
  %55 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i14.i = getelementptr i8, ptr %56, i32 48
  %57 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i14.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %58 = and i16 %57, -3585
  %59 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i16.i = getelementptr i8, ptr %60, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i16.i, i16 %58) #10, !srcloc !182
  %61 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i18.i = getelementptr i8, ptr %62, i32 48
  %63 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i18.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %64 = and i16 %63, -6
  %65 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i20.i = getelementptr i8, ptr %66, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i20.i, i16 %64) #10, !srcloc !182
  %67 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %reg.i, align 4
  %69 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %68) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %70 = and i16 %69, -4097
  %71 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %72, i16 %70) #10, !srcloc !182
  %gadget.i = getelementptr i8, ptr %t, i32 -1828
  %speed.i = getelementptr i8, ptr %t, i32 -1764
  %73 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %speed.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr) #10
  %driver.i = getelementptr i8, ptr %t, i32 -780
  %74 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %driver.i, align 8
  %disconnect.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %75, i32 0, i32 5
  %76 = ptrtoint ptr %disconnect.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %disconnect.i, align 4
  tail call void %77(ptr noundef %gadget.i) #10
  tail call void @_raw_spin_lock(ptr noundef %add.ptr) #10
  tail call fastcc void @disable_controller(ptr noundef %add.ptr) #10
  %queue.i = getelementptr i8, ptr %t, i32 -728
  %78 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %queue.i, ptr %queue.i, align 4
  %prev.i.i = getelementptr i8, ptr %t, i32 -724
  %79 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %queue.i, ptr %prev.i.i, align 4
  br label %if.end43

if.else31:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %80 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %80, 5
  %call33 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #10
  br label %if.end43

if.else35:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %81 = ptrtoint ptr %scount to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 10, ptr %scount, align 4
  %82 = ptrtoint ptr %old_vbus to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %23, ptr %old_vbus, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %83 = load volatile i32, ptr @jiffies, align 128
  %add40 = add i32 %83, 5
  %call41 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add40) #10
  br label %if.end43

if.end43:                                         ; preds = %if.else35, %if.else31, %if.else, %if.then29, %if.end.if.end43_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m66592_irq(i32 noundef %irq, ptr noundef %_m66592) #2 align 64 {
entry:
  %ctrl.i = alloca %struct.usb_ctrlrequest, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %_m66592) #10
  %reg.i = getelementptr inbounds %struct.m66592, ptr %_m66592, i32 0, i32 1
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 64
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #10, !srcloc !179
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %4 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg.i, align 4
  %add.ptr.i111 = getelementptr i8, ptr %5, i32 48
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i111) #10, !srcloc !179
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %pdata = getelementptr inbounds %struct.m66592, ptr %_m66592, i32 0, i32 3
  %8 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdata, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool.not = icmp slt i8 %bf.load, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool2.not = icmp eq i16 %2, 0
  %or.cond = select i1 %tobool.not, i1 %tobool2.not, i1 false
  br i1 %or.cond, label %land.lhs.true3, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true3:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool4.not = icmp eq i16 %6, 0
  br i1 %tobool4.not, label %m66592_start_xclock.exit, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

m66592_start_xclock.exit:                         ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg.i, align 4
  %add.ptr.i113 = getelementptr i8, ptr %12, i32 64
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i113) #10, !srcloc !179
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %15 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg.i, align 4
  %add.ptr.i115 = getelementptr i8, ptr %16, i32 48
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i115) #10, !srcloc !179
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  br label %if.end

if.end:                                           ; preds = %m66592_start_xclock.exit, %land.lhs.true3.if.end_crit_edge, %entry.if.end_crit_edge
  %intsts0.0 = phi i16 [ 0, %land.lhs.true3.if.end_crit_edge ], [ %14, %m66592_start_xclock.exit ], [ %3, %entry.if.end_crit_edge ]
  %intenb0.0 = phi i16 [ %7, %land.lhs.true3.if.end_crit_edge ], [ %18, %m66592_start_xclock.exit ], [ %7, %entry.if.end_crit_edge ]
  %19 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg.i, align 4
  %add.ptr.i117 = getelementptr i8, ptr %20, i32 30
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i117) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %conv = zext i16 %intsts0.0 to i32
  %conv8 = zext i16 %intenb0.0 to i32
  %and103 = and i16 %intenb0.0, %intsts0.0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and103)
  %tobool10.not = icmp eq i16 %and103, 0
  br i1 %tobool10.not, label %if.end.if.end65_crit_edge, label %if.then11

if.end.if.end65_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then11:                                        ; preds = %if.end
  %22 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg.i, align 4
  %add.ptr.i119 = getelementptr i8, ptr %23, i32 70
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i119) #10, !srcloc !179
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %26 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg.i, align 4
  %add.ptr.i121 = getelementptr i8, ptr %27, i32 74
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i121) #10, !srcloc !179
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %30 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg.i, align 4
  %add.ptr.i123 = getelementptr i8, ptr %31, i32 54
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i123) #10, !srcloc !179
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %34 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg.i, align 4
  %add.ptr.i125 = getelementptr i8, ptr %35, i32 58
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i125) #10, !srcloc !179
  %37 = tail call i16 @llvm.bswap.i16(i16 %36) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and103)
  %tobool18.not = icmp sgt i16 %and103, -1
  br i1 %tobool18.not, label %if.then11.if.end26_crit_edge, label %if.then19

if.then11.if.end26_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then19:                                        ; preds = %if.then11
  %38 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg.i, align 4
  %add.ptr.i127 = getelementptr i8, ptr %39, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i127, i16 -129) #10, !srcloc !182
  %40 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdata, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load.i129 = load i8, ptr %41, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i129)
  %tobool.not.i130 = icmp sgt i8 %bf.load.i129, -1
  br i1 %tobool.not.i130, label %if.then.i133, label %if.then19.m66592_start_xclock.exit135_crit_edge

if.then19.m66592_start_xclock.exit135_crit_edge:  ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %m66592_start_xclock.exit135

if.then.i133:                                     ; preds = %if.then19
  %43 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg.i, align 4
  %45 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %44) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %46 = and i16 %45, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool1.not.i132 = icmp eq i16 %46, 0
  br i1 %tobool1.not.i132, label %if.then2.i134, label %if.then.i133.m66592_start_xclock.exit135_crit_edge

if.then.i133.m66592_start_xclock.exit135_crit_edge: ; preds = %if.then.i133
  call void @__sanitizer_cov_trace_pc() #12
  br label %m66592_start_xclock.exit135

if.then2.i134:                                    ; preds = %if.then.i133
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg.i, align 4
  %49 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %48) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %50 = or i16 %49, 32
  %51 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %52, i16 %50) #10, !srcloc !182
  br label %m66592_start_xclock.exit135

m66592_start_xclock.exit135:                      ; preds = %if.then2.i134, %if.then.i133.m66592_start_xclock.exit135_crit_edge, %if.then19.m66592_start_xclock.exit135_crit_edge
  %53 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg.i, align 4
  %add.ptr.i137 = getelementptr i8, ptr %54, i32 64
  %55 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i137) #10, !srcloc !179
  %56 = lshr i16 %55, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %57 = and i16 %56, 128
  %old_vbus = getelementptr inbounds %struct.m66592, ptr %_m66592, i32 0, i32 12
  %58 = ptrtoint ptr %old_vbus to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %old_vbus, align 2
  %scount = getelementptr inbounds %struct.m66592, ptr %_m66592, i32 0, i32 14
  %59 = ptrtoint ptr %scount to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 10, ptr %scount, align 4
  %timer = getelementptr inbounds %struct.m66592, ptr %_m66592, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %60 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %60, 5
  %call25 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #10
  br label %if.end26

if.end26:                                         ; preds = %m66592_start_xclock.exit135, %if.then11.if.end26_crit_edge
  %and28 = and i32 %conv, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end26.if.end31_crit_edge, label %if.then30

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then30:                                        ; preds = %if.end26
  %61 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %62, i32 64
  %63 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #10, !srcloc !179
  %64 = lshr i16 %63, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %65 = and i16 %64, 112
  %66 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg.i, align 4
  %add.ptr.i39.i = getelementptr i8, ptr %67, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i39.i, i16 -17) #10, !srcloc !182
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %65)
  %cmp.i = icmp eq i16 %65, 16
  br i1 %cmp.i, label %if.then.i139, label %if.then30.if.end.i_crit_edge

if.then30.if.end.i_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i139:                                     ; preds = %if.then30
  %gadget.i = getelementptr inbounds %struct.m66592, ptr %_m66592, i32 0, i32 5
  %driver.i = getelementptr inbounds %struct.m66592, ptr %_m66592, i32 0, i32 6
  %68 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %driver.i, align 8
  tail call void @usb_gadget_udc_reset(ptr noundef %gadget.i, ptr noundef %69) #10
  %70 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %71, i32 4
  %72 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i) #10, !srcloc !179
  %73 = lshr i16 %72, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %trunc.i.i = trunc i16 %73 to i2
  %74 = zext i2 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values)
  switch i2 %trunc.i.i, label %sw.default.i.i [
    i2 -1, label %sw.bb.i.i
    i2 -2, label %sw.bb2.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.then.i139
  call void @__sanitizer_cov_trace_pc() #12
  %speed1.i.i = getelementptr inbounds %struct.m66592, ptr %_m66592, i32 0, i32 5, i32 5
  %75 = ptrtoint ptr %speed1.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 3, ptr %speed1.i.i, align 8
  br label %if.end.i

sw.bb2.i.i:                                       ; preds = %if.then.i139
  call void @__sanitizer_cov_trace_pc() #12
  %speed4.i.i = getelementptr inbounds %struct.m66592, ptr %_m66592, i32 0, i32 5, i32 5
  %76 = ptrtoint ptr %speed4.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 2, ptr %speed4.i.i, align 8
  br label %if.end.i

sw.default.i.i:                                   ; preds = %if.then.i139
  call void @__sanitizer_cov_trace_pc() #12
  %speed6.i.i = getelementptr inbounds %struct.m66592, ptr %_m66592, i32 0, i32 5, i32 5
  %77 = ptrtoint ptr %speed6.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %speed6.i.i, align 8
  %call7.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #13
  br label %if.end.i

if.end.i:                                         ; preds = %sw.default.i.i, %sw.bb2.i.i, %sw.bb.i.i, %if.then30.if.end.i_crit_edge
  %old_dvsq.i = getelementptr inbounds %struct.m66592, ptr %_m66592, i32 0, i32 15
  %78 = ptrtoint ptr %old_dvsq.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %old_dvsq.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %79)
  %cmp4.i = icmp ne i32 %79, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 48, i16 %65)
  %cmp7.not.i = icmp eq i16 %65, 48
  %or.cond.i = select i1 %cmp4.i, i1 true, i1 %cmp7.not.i
  br i1 %or.cond.i, label %if.end.i.if.end10.i_crit_edge, label %if.then9.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.then9.i:                                       ; preds = %if.end.i
  %80 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i41.i = getelementptr i8, ptr %81, i32 4
  %82 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i41.i) #10, !srcloc !179
  %83 = lshr i16 %82, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %trunc.i42.i = trunc i16 %83 to i2
  %84 = zext i2 %trunc.i42.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.78)
  switch i2 %trunc.i42.i, label %sw.default.i49.i [
    i2 -1, label %sw.bb.i44.i
    i2 -2, label %sw.bb2.i46.i
  ]

sw.bb.i44.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  %speed1.i43.i = getelementptr inbounds %struct.m66592, ptr %_m66592, i32 0, i32 5, i32 5
  %85 = ptrtoint ptr %speed1.i43.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 3, ptr %speed1.i43.i, align 8
  br label %if.end10.i

sw.bb2.i46.i:                                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  %speed4.i45.i = getelementptr inbounds %struct.m66592, ptr %_m66592, i32 0, i32 5, i32 5
  %86 = ptrtoint ptr %speed4.i45.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 2, ptr %speed4.i45.i, align 8
  br label %if.end10.i

sw.default.i49.i:                                 ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  %speed6.i47.i = getelementptr inbounds %struct.m66592, ptr %_m66592, i32 0, i32 5, i32 5
  %87 = ptrtoint ptr %speed6.i47.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %speed6.i47.i, align 8
  %call7.i48.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #13
  br label %if.end10.i

if.end10.i:                                       ; preds = %sw.default.i49.i, %sw.bb2.i46.i, %sw.bb.i44.i, %if.end.i.if.end10.i_crit_edge
  %trunc.i = trunc i16 %65 to i7
  %88 = zext i7 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.79)
  switch i7 %trunc.i, label %if.end10.i.irq_device_state.exit_crit_edge [
    i7 48, label %if.end10.i.land.lhs.true17.i_crit_edge
    i7 32, label %if.end10.i.land.lhs.true17.i_crit_edge181
  ]

if.end10.i.land.lhs.true17.i_crit_edge181:        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true17.i

if.end10.i.land.lhs.true17.i_crit_edge:           ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true17.i

if.end10.i.irq_device_state.exit_crit_edge:       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %irq_device_state.exit

land.lhs.true17.i:                                ; preds = %if.end10.i.land.lhs.true17.i_crit_edge, %if.end10.i.land.lhs.true17.i_crit_edge181
  %speed.i = getelementptr inbounds %struct.m66592, ptr %_m66592, i32 0, i32 5, i32 5
  %89 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp19.i = icmp eq i32 %90, 0
  br i1 %cmp19.i, label %if.then21.i, label %land.lhs.true17.i.irq_device_state.exit_crit_edge

land.lhs.true17.i.irq_device_state.exit_crit_edge: ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %irq_device_state.exit

if.then21.i:                                      ; preds = %land.lhs.true17.i
  %91 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i52.i = getelementptr i8, ptr %92, i32 4
  %93 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i52.i) #10, !srcloc !179
  %94 = lshr i16 %93, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %trunc.i53.i = trunc i16 %94 to i2
  %95 = zext i2 %trunc.i53.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.80)
  switch i2 %trunc.i53.i, label %sw.default.i60.i [
    i2 -1, label %sw.bb.i55.i
    i2 -2, label %sw.bb2.i57.i
  ]

sw.bb.i55.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  %96 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 3, ptr %speed.i, align 8
  br label %irq_device_state.exit

sw.bb2.i57.i:                                     ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  %97 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 2, ptr %speed.i, align 8
  br label %irq_device_state.exit

sw.default.i60.i:                                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  %98 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %speed.i, align 8
  %call7.i59.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #13
  br label %irq_device_state.exit

irq_device_state.exit:                            ; preds = %sw.default.i60.i, %sw.bb2.i57.i, %sw.bb.i55.i, %land.lhs.true17.i.irq_device_state.exit_crit_edge, %if.end10.i.irq_device_state.exit_crit_edge
  %conv2.i = zext i16 %65 to i32
  %99 = ptrtoint ptr %old_dvsq.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %conv2.i, ptr %old_dvsq.i, align 8
  br label %if.end31

if.end31:                                         ; preds = %irq_device_state.exit, %if.end26.if.end31_crit_edge
  %and33 = and i32 %conv, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  %and37 = and i32 %conv8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %or.cond106 = select i1 %tobool34.not, i1 true, i1 %tobool38.not
  %and42105 = and i16 %33, %25
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and42105)
  %tobool43.not = icmp eq i16 %and42105, 0
  %or.cond107 = select i1 %or.cond106, i1 true, i1 %tobool43.not
  br i1 %or.cond107, label %if.end31.if.end45_crit_edge, label %if.then44

if.end31.if.end45_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then44:                                        ; preds = %if.end31
  %conv.i = zext i16 %25 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i140 = icmp eq i32 %and.i, 0
  %100 = and i16 %33, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %tobool3.not.i = icmp eq i16 %100, 0
  %or.cond.i141 = or i1 %tobool.not.i140, %tobool3.not.i
  br i1 %or.cond.i141, label %for.cond.preheader.i, label %if.then.i145

for.cond.preheader.i:                             ; preds = %if.then44
  %conv14.i = zext i16 %33 to i32
  br label %for.body.i

if.then.i145:                                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  %101 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i143 = getelementptr i8, ptr %102, i32 70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i143, i16 -257) #10, !srcloc !182
  %103 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %104, i32 30
  %105 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %106 = and i16 %105, -1793
  %107 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %108, i32 30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i, i16 %106) #10, !srcloc !182
  %ep4.i = getelementptr inbounds %struct.m66592, ptr %_m66592, i32 0, i32 7
  %queue.i = getelementptr inbounds %struct.m66592, ptr %_m66592, i32 0, i32 7, i32 0, i32 2
  %109 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %queue.i, align 4
  %add.ptr.i144 = getelementptr i8, ptr %110, i32 -56
  tail call fastcc void @irq_packet_read(ptr noundef %ep4.i, ptr noundef %add.ptr.i144) #10
  br label %if.end45

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %indvars.iv.i = phi i32 [ 1, %for.cond.preheader.i ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %indvars.iv.i
  %and11.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  %and16.i = and i32 %shl.i, %conv14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  %or.cond57.i = or i1 %tobool12.not.i, %tobool17.not.i
  br i1 %or.cond57.i, label %for.body.i.for.inc.i_crit_edge, label %if.then18.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then18.i:                                      ; preds = %for.body.i
  %111 = trunc i32 %shl.i to i16
  %conv20.i = xor i16 %111, -1
  %112 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %reg.i, align 4
  %add.ptr.i54.i = getelementptr i8, ptr %113, i32 70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %114 = tail call i16 @llvm.bswap.i16(i16 %conv20.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i54.i, i16 %114) #10, !srcloc !182
  %arrayidx21.i = getelementptr %struct.m66592, ptr %_m66592, i32 0, i32 8, i32 %indvars.iv.i
  %115 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx21.i, align 4
  %queue23.i = getelementptr inbounds %struct.m66592_ep, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %queue23.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %queue23.i, align 4
  %add.ptr26.i = getelementptr i8, ptr %118, i32 -56
  %desc.i = getelementptr inbounds %struct.usb_ep, ptr %116, i32 0, i32 9
  %119 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %desc.i, align 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %120, i32 0, i32 2
  %121 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %bEndpointAddress.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %122)
  %tobool30.not.i = icmp sgt i8 %122, -1
  br i1 %tobool30.not.i, label %if.else32.i, label %if.then31.i

if.then31.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @irq_packet_write(ptr noundef %116, ptr noundef %add.ptr26.i) #10
  br label %for.inc.i

if.else32.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @irq_packet_read(ptr noundef %116, ptr noundef %add.ptr26.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else32.i, %if.then31.i, %for.body.i.for.inc.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 8
  br i1 %exitcond.not.i, label %for.inc.i.if.end45_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.end45_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.end45:                                         ; preds = %for.inc.i.if.end45_crit_edge, %if.then.i145, %if.end31.if.end45_crit_edge
  %and47 = and i32 %conv, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  %and51 = and i32 %conv8, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  %or.cond108 = select i1 %tobool48.not, i1 true, i1 %tobool52.not
  %and56104 = and i16 %37, %29
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and56104)
  %tobool57.not = icmp eq i16 %and56104, 0
  %or.cond109 = select i1 %or.cond108, i1 true, i1 %tobool57.not
  br i1 %or.cond109, label %if.end45.if.end59_crit_edge, label %if.then58

if.end45.if.end59_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then58:                                        ; preds = %if.end45
  %conv.i146 = zext i16 %29 to i32
  %and.i147 = and i32 %conv.i146, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i147)
  %tobool.not.i148 = icmp eq i32 %and.i147, 0
  %123 = and i16 %37, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %123)
  %tobool3.not.i149 = icmp eq i16 %123, 0
  %or.cond.i150 = or i1 %tobool.not.i148, %tobool3.not.i149
  br i1 %or.cond.i150, label %for.cond.preheader.i151, label %if.then.i157

for.cond.preheader.i151:                          ; preds = %if.then58
  %conv15.i = zext i16 %37 to i32
  br label %for.body.i160

if.then.i157:                                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  %124 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i153 = getelementptr i8, ptr %125, i32 74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i153, i16 -257) #10, !srcloc !182
  %ep4.i154 = getelementptr inbounds %struct.m66592, ptr %_m66592, i32 0, i32 7
  %queue.i155 = getelementptr inbounds %struct.m66592, ptr %_m66592, i32 0, i32 7, i32 0, i32 2
  %126 = ptrtoint ptr %queue.i155 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %queue.i155, align 4
  %add.ptr.i156 = getelementptr i8, ptr %127, i32 -56
  tail call fastcc void @irq_ep0_write(ptr noundef %ep4.i154, ptr noundef %add.ptr.i156) #10
  br label %if.end59

for.body.i160:                                    ; preds = %for.inc.i164.for.body.i160_crit_edge, %for.cond.preheader.i151
  %indvars.iv.i158 = phi i32 [ 1, %for.cond.preheader.i151 ], [ %indvars.iv.next.i162, %for.inc.i164.for.body.i160_crit_edge ]
  %shl.i159 = shl nuw i32 1, %indvars.iv.i158
  %and12.i = and i32 %shl.i159, %conv.i146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  %and17.i = and i32 %shl.i159, %conv15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  %or.cond72.i = or i1 %tobool13.not.i, %tobool18.not.i
  br i1 %or.cond72.i, label %for.body.i160.for.inc.i164_crit_edge, label %if.then19.i

for.body.i160.for.inc.i164_crit_edge:             ; preds = %for.body.i160
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i164

if.then19.i:                                      ; preds = %for.body.i160
  %128 = trunc i32 %shl.i159 to i16
  %conv21.i = xor i16 %128, -1
  %129 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %reg.i, align 4
  %add.ptr.i64.i = getelementptr i8, ptr %130, i32 74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %131 = tail call i16 @llvm.bswap.i16(i16 %conv21.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i64.i, i16 %131) #10, !srcloc !182
  %sub.i.i = shl nuw nsw i32 %indvars.iv.i158, 1
  %add.i.i = add nuw nsw i32 %sub.i.i, 110
  %132 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %reg.i, align 4
  %add.ptr.i17.i.i = getelementptr i8, ptr %133, i32 %add.i.i
  %134 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i17.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %135 = and i16 %134, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %135)
  %cmp24.i = icmp eq i16 %135, 0
  br i1 %cmp24.i, label %if.then26.i, label %if.then19.i.for.inc.i164_crit_edge

if.then19.i.for.inc.i164_crit_edge:               ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i164

if.then26.i:                                      ; preds = %if.then19.i
  %136 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i66.i = getelementptr i8, ptr %137, i32 48
  %138 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i66.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %139 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i161 = getelementptr i8, ptr %140, i32 48
  %141 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i161) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %142 = and i16 %141, -8
  %143 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i = getelementptr i8, ptr %144, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i, i16 %142) #10, !srcloc !182
  %145 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i6.i.i = getelementptr i8, ptr %146, i32 58
  %147 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i.i) #10, !srcloc !179
  %148 = tail call i16 @llvm.bswap.i16(i16 %147) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %and.i7.i.i = and i16 %148, %conv21.i
  %149 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i8.i.i = getelementptr i8, ptr %150, i32 58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %151 = tail call i16 @llvm.bswap.i16(i16 %and.i7.i.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i8.i.i, i16 %151) #10, !srcloc !182
  %152 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %reg.i, align 4
  %add.ptr.i10.i.i = getelementptr i8, ptr %153, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i10.i.i, i16 %138) #10, !srcloc !182
  %154 = trunc i32 %indvars.iv.i158 to i16
  tail call fastcc void @pipe_irq_disable(ptr noundef %_m66592, i16 noundef zeroext %154) #10
  %155 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i16.i.i.i = getelementptr i8, ptr %156, i32 %add.i.i
  %157 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i16.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %158 = and i16 %157, -769
  %159 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i19.i.i.i = getelementptr i8, ptr %160, i32 %add.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i19.i.i.i, i16 %158) #10, !srcloc !182
  %arrayidx27.i = getelementptr %struct.m66592, ptr %_m66592, i32 0, i32 8, i32 %indvars.iv.i158
  %161 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %arrayidx27.i, align 4
  %queue29.i = getelementptr inbounds %struct.m66592_ep, ptr %162, i32 0, i32 2
  %163 = ptrtoint ptr %queue29.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %queue29.i, align 4
  %165 = load volatile ptr, ptr %queue29.i, align 4
  %cmp.i68.not.i = icmp eq ptr %165, %queue29.i
  br i1 %cmp.i68.not.i, label %if.then26.i.for.inc.i164_crit_edge, label %if.then36.i

if.then26.i.for.inc.i164_crit_edge:               ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i164

if.then36.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr32.i = getelementptr i8, ptr %164, i32 -56
  tail call fastcc void @transfer_complete(ptr noundef %162, ptr noundef %add.ptr32.i, i32 noundef 0) #10
  br label %for.inc.i164

for.inc.i164:                                     ; preds = %if.then36.i, %if.then26.i.for.inc.i164_crit_edge, %if.then19.i.for.inc.i164_crit_edge, %for.body.i160.for.inc.i164_crit_edge
  %indvars.iv.next.i162 = add nuw nsw i32 %indvars.iv.i158, 1
  %exitcond.not.i163 = icmp eq i32 %indvars.iv.next.i162, 8
  br i1 %exitcond.not.i163, label %for.inc.i164.if.end59_crit_edge, label %for.inc.i164.for.body.i160_crit_edge

for.inc.i164.for.body.i160_crit_edge:             ; preds = %for.inc.i164
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i160

for.inc.i164.if.end59_crit_edge:                  ; preds = %for.inc.i164
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.end59:                                         ; preds = %for.inc.i164.if.end59_crit_edge, %if.then.i157, %if.end45.if.end59_crit_edge
  %and61 = and i32 %conv, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end59.if.end65_crit_edge, label %if.then63

if.end59.if.end65_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then63:                                        ; preds = %if.end59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ctrl.i) #10
  %166 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl.i, i32 0, i32 1
  %167 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl.i, i32 0, i32 2
  %168 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl.i, i32 0, i32 3
  %169 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i166 = getelementptr i8, ptr %170, i32 64
  %171 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i166) #10, !srcloc !179
  %172 = lshr i16 %171, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %173 = and i16 %172, 7
  %174 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %reg.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %175, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i27.i, i16 -9) #10, !srcloc !182
  %conv2.i167 = zext i16 %173 to i32
  %176 = zext i32 %conv2.i167 to i64
  call void @__sanitizer_cov_trace_switch(i64 %176, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %conv2.i167, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %if.then63.sw.bb4.i_crit_edge
    i32 3, label %if.then63.sw.bb4.i_crit_edge182
    i32 5, label %if.then63.sw.bb4.i_crit_edge183
    i32 2, label %if.then63.sw.bb11.i_crit_edge
    i32 4, label %if.then63.sw.bb11.i_crit_edge184
  ]

if.then63.sw.bb11.i_crit_edge184:                 ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb11.i

if.then63.sw.bb11.i_crit_edge:                    ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb11.i

if.then63.sw.bb4.i_crit_edge183:                  ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

if.then63.sw.bb4.i_crit_edge182:                  ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

if.then63.sw.bb4.i_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

sw.bb.i:                                          ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  %ep3.i = getelementptr inbounds %struct.m66592, ptr %_m66592, i32 0, i32 7
  %queue.i168 = getelementptr inbounds %struct.m66592, ptr %_m66592, i32 0, i32 7, i32 0, i32 2
  %177 = ptrtoint ptr %queue.i168 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %queue.i168, align 4
  %add.ptr.i169 = getelementptr i8, ptr %178, i32 -56
  tail call fastcc void @transfer_complete(ptr noundef %ep3.i, ptr noundef %add.ptr.i169, i32 noundef 0) #10
  br label %irq_control_stage.exit

sw.bb4.i:                                         ; preds = %if.then63.sw.bb4.i_crit_edge, %if.then63.sw.bb4.i_crit_edge182, %if.then63.sw.bb4.i_crit_edge183
  %179 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl.i, i32 0, i32 4
  %180 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i170 = getelementptr i8, ptr %181, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i170, i16 -2049) #10, !srcloc !182
  %182 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %reg.i, align 4
  %add.ptr.i19.i.i = getelementptr i8, ptr %183, i32 84
  %184 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i19.i.i) #10, !srcloc !179
  %185 = tail call i16 @llvm.bswap.i16(i16 %184) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %186 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 %185, ptr %ctrl.i, align 2
  %187 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %reg.i, align 4
  %add.ptr.i19.1.i.i = getelementptr i8, ptr %188, i32 86
  %189 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i19.1.i.i) #10, !srcloc !179
  %190 = tail call i16 @llvm.bswap.i16(i16 %189) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %191 = ptrtoint ptr %167 to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 %190, ptr %167, align 2
  %192 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %reg.i, align 4
  %add.ptr.i19.2.i.i = getelementptr i8, ptr %193, i32 88
  %194 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i19.2.i.i) #10, !srcloc !179
  %195 = tail call i16 @llvm.bswap.i16(i16 %194) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %196 = ptrtoint ptr %168 to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 %195, ptr %168, align 2
  %197 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %reg.i, align 4
  %add.ptr.i19.3.i.i = getelementptr i8, ptr %198, i32 90
  %199 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i19.3.i.i) #10, !srcloc !179
  %200 = tail call i16 @llvm.bswap.i16(i16 %199) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %201 = ptrtoint ptr %179 to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 %200, ptr %179, align 2
  %202 = lshr i16 %185, 8
  %203 = trunc i16 %202 to i8
  %204 = and i8 %203, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %204)
  %cmp1.i.i = icmp eq i8 %204, 0
  br i1 %cmp1.i.i, label %if.then.i.i, label %sw.bb4.i.if.then.i176_crit_edge

sw.bb4.i.if.then.i176_crit_edge:                  ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i176

if.then.i.i:                                      ; preds = %sw.bb4.i
  %205 = ptrtoint ptr %166 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %166, align 1
  %207 = zext i8 %206 to i64
  call void @__sanitizer_cov_trace_switch(i64 %207, ptr @__sancov_gen_cov_switch_values.82)
  switch i8 %206, label %if.then.i.i.if.then.i176_crit_edge [
    i8 0, label %sw.bb.i.i171
    i8 1, label %sw.bb4.i.i
    i8 3, label %sw.bb5.i.i
  ]

if.then.i.i.if.then.i176_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i176

sw.bb.i.i171:                                     ; preds = %if.then.i.i
  %208 = and i8 %203, 31
  %and.i.i.i = zext i8 %208 to i32
  %209 = zext i32 %and.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %209, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %and.i.i.i, label %sw.default.i.i.i [
    i32 0, label %sw.bb.i.i171.sw.epilog.i.i.i_crit_edge
    i32 1, label %sw.bb1.i.i.i
    i32 2, label %sw.bb2.i.i.i
  ]

sw.bb.i.i171.sw.epilog.i.i.i_crit_edge:           ; preds = %sw.bb.i.i171
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i.i

sw.bb1.i.i.i:                                     ; preds = %sw.bb.i.i171
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i.i

sw.bb2.i.i.i:                                     ; preds = %sw.bb.i.i171
  %210 = ptrtoint ptr %168 to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %168, align 2
  %212 = lshr i16 %211, 8
  %213 = and i16 %212, 15
  %and4.i.i.i = zext i16 %213 to i32
  %arrayidx.i.i.i = getelementptr %struct.m66592, ptr %_m66592, i32 0, i32 9, i32 %and4.i.i.i
  %214 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %arrayidx.i.i.i, align 4
  %pipenum.i.i.i = getelementptr inbounds %struct.m66592_ep, ptr %215, i32 0, i32 4
  %216 = ptrtoint ptr %pipenum.i.i.i to i32
  call void @__asan_load2_noabort(i32 %216)
  %217 = load i16, ptr %pipenum.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %217 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %217)
  %cmp.i.i.i.i = icmp eq i16 %217, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %if.else.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %sw.bb2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %218 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %219, i32 96
  %220 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  br label %control_reg_get_pid.exit.i.i.i

if.else.i.i.i.i:                                  ; preds = %sw.bb2.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %217)
  %cmp5.i.i.i.i = icmp ult i16 %217, 8
  br i1 %cmp5.i.i.i.i, label %if.then7.i.i.i.i, label %control_reg_get_pid.exit.thread.i.i.i

if.then7.i.i.i.i:                                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i.i = shl nuw nsw i32 %conv.i.i.i.i, 1
  %add.i.i.i.i = add nuw nsw i32 %sub.i.i.i.i, 110
  %221 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %reg.i, align 4
  %add.ptr.i22.i.i.i.i = getelementptr i8, ptr %222, i32 %add.i.i.i.i
  %223 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i22.i.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  br label %control_reg_get_pid.exit.i.i.i

control_reg_get_pid.exit.thread.i.i.i:            ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call15.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv.i.i.i.i) #13
  br label %sw.epilog.i.i.i

control_reg_get_pid.exit.i.i.i:                   ; preds = %if.then7.i.i.i.i, %if.then.i.i.i.i
  %pid.0.i.in.in.i.i.i = phi i16 [ %220, %if.then.i.i.i.i ], [ %223, %if.then7.i.i.i.i ]
  %224 = and i16 %pid.0.i.in.in.i.i.i, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %224)
  %cmp.i.i.i = icmp eq i16 %224, 512
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i16 256, i16 0
  br label %sw.epilog.i.i.i

sw.default.i.i.i:                                 ; preds = %sw.bb.i.i171
  call void @__sanitizer_cov_trace_pc() #12
  %225 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i.i.i.i = getelementptr i8, ptr %226, i32 96
  %227 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %228 = and i16 %227, -769
  %229 = or i16 %228, 512
  %230 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i.i.i.i = getelementptr i8, ptr %231, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i.i.i.i, i16 %229) #10, !srcloc !182
  br label %irq_control_stage.exit

sw.epilog.i.i.i:                                  ; preds = %control_reg_get_pid.exit.i.i.i, %control_reg_get_pid.exit.thread.i.i.i, %sw.bb1.i.i.i, %sw.bb.i.i171.sw.epilog.i.i.i_crit_edge
  %status.0.i.i.i = phi i16 [ 0, %sw.bb1.i.i.i ], [ 256, %sw.bb.i.i171.sw.epilog.i.i.i_crit_edge ], [ 0, %control_reg_get_pid.exit.thread.i.i.i ], [ %spec.select.i.i.i, %control_reg_get_pid.exit.i.i.i ]
  %ep0_data.i.i.i = getelementptr inbounds %struct.m66592, ptr %_m66592, i32 0, i32 11
  %232 = ptrtoint ptr %ep0_data.i.i.i to i32
  call void @__asan_store2_noabort(i32 %232)
  store i16 %status.0.i.i.i, ptr %ep0_data.i.i.i, align 8
  %ep0_req.i.i.i = getelementptr inbounds %struct.m66592, ptr %_m66592, i32 0, i32 10
  %233 = ptrtoint ptr %ep0_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %ep0_req.i.i.i, align 4
  %235 = ptrtoint ptr %234 to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr %ep0_data.i.i.i, ptr %234, align 4
  %236 = load ptr, ptr %ep0_req.i.i.i, align 4
  %length.i.i.i = getelementptr inbounds %struct.usb_request, ptr %236, i32 0, i32 1
  %237 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 2, ptr %length.i.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_m66592) #10
  %ep0.i.i.i = getelementptr inbounds %struct.m66592, ptr %_m66592, i32 0, i32 5, i32 3
  %238 = ptrtoint ptr %ep0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %ep0.i.i.i, align 4
  %240 = ptrtoint ptr %ep0_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %ep0_req.i.i.i, align 4
  %call10.i.i.i = tail call i32 @m66592_queue(ptr noundef %239, ptr noundef %241, i32 noundef 3264) #10
  tail call void @_raw_spin_lock(ptr noundef %_m66592) #10
  br label %irq_control_stage.exit

sw.bb4.i.i:                                       ; preds = %if.then.i.i
  %242 = and i8 %203, 31
  %and.i20.i.i = zext i8 %242 to i32
  %243 = zext i32 %and.i20.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %243, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %and.i20.i.i, label %sw.default.i32.i.i [
    i32 0, label %sw.bb.i.i.i
    i32 1, label %sw.bb1.i21.i.i
    i32 2, label %sw.bb2.i26.i.i
  ]

sw.bb.i.i.i:                                      ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %internal_ccpl.i.i.i.i = getelementptr inbounds %struct.m66592, ptr %_m66592, i32 0, i32 7, i32 0, i32 3
  %244 = ptrtoint ptr %internal_ccpl.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %bf.load.i.i.i.i = load i8, ptr %internal_ccpl.i.i.i.i, align 4
  %bf.set.i.i.i.i = or i8 %bf.load.i.i.i.i, 64
  store i8 %bf.set.i.i.i.i, ptr %internal_ccpl.i.i.i.i, align 4
  %245 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i.i.i.i.i = getelementptr i8, ptr %246, i32 96
  %247 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i.i.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %248 = and i16 %247, -769
  %249 = or i16 %248, 256
  %250 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i.i.i.i.i = getelementptr i8, ptr %251, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i.i.i.i.i, i16 %249) #10, !srcloc !182
  %252 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %253, i32 96
  %254 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %255 = or i16 %254, 1024
  %256 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i.i.i = getelementptr i8, ptr %257, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i.i.i, i16 %255) #10, !srcloc !182
  br label %irq_control_stage.exit

sw.bb1.i21.i.i:                                   ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %internal_ccpl.i36.i.i.i = getelementptr inbounds %struct.m66592, ptr %_m66592, i32 0, i32 7, i32 0, i32 3
  %258 = ptrtoint ptr %internal_ccpl.i36.i.i.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %bf.load.i37.i.i.i = load i8, ptr %internal_ccpl.i36.i.i.i, align 4
  %bf.set.i39.i.i.i = or i8 %bf.load.i37.i.i.i, 64
  store i8 %bf.set.i39.i.i.i, ptr %internal_ccpl.i36.i.i.i, align 4
  %259 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i.i41.i.i.i = getelementptr i8, ptr %260, i32 96
  %261 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i.i41.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %262 = and i16 %261, -769
  %263 = or i16 %262, 256
  %264 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i.i42.i.i.i = getelementptr i8, ptr %265, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i.i42.i.i.i, i16 %263) #10, !srcloc !182
  %266 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i43.i.i.i = getelementptr i8, ptr %267, i32 96
  %268 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i43.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %269 = or i16 %268, 1024
  %270 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i44.i.i.i = getelementptr i8, ptr %271, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i44.i.i.i, i16 %269) #10, !srcloc !182
  br label %irq_control_stage.exit

sw.bb2.i26.i.i:                                   ; preds = %sw.bb4.i.i
  %272 = ptrtoint ptr %168 to i32
  call void @__asan_load2_noabort(i32 %272)
  %273 = load i16, ptr %168, align 2
  %274 = lshr i16 %273, 8
  %275 = and i16 %274, 15
  %and4.i23.i.i = zext i16 %275 to i32
  %arrayidx.i24.i.i = getelementptr %struct.m66592, ptr %_m66592, i32 0, i32 9, i32 %and4.i23.i.i
  %276 = ptrtoint ptr %arrayidx.i24.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %arrayidx.i24.i.i, align 4
  %pipenum.i25.i.i = getelementptr inbounds %struct.m66592_ep, ptr %277, i32 0, i32 4
  %278 = ptrtoint ptr %pipenum.i25.i.i to i32
  call void @__asan_load2_noabort(i32 %278)
  %279 = load i16, ptr %pipenum.i25.i.i, align 2
  %conv.i.i.i.i.i = zext i16 %279 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %279)
  %cmp.i.i.i.i.i = icmp eq i16 %279, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.else.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %sw.bb2.i26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %280 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i.i28.i.i = getelementptr i8, ptr %281, i32 96
  %282 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i.i28.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %283 = and i16 %282, -769
  %284 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i.i29.i.i = getelementptr i8, ptr %285, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i.i29.i.i, i16 %283) #10, !srcloc !182
  br label %pipe_stop.exit.i.i.i

if.else.i.i.i.i.i:                                ; preds = %sw.bb2.i26.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %279)
  %cmp3.i.i.i.i.i = icmp ult i16 %279, 8
  br i1 %cmp3.i.i.i.i.i, label %if.then5.i.i.i.i.i, label %do.end.i.i.i.i.i

if.then5.i.i.i.i.i:                               ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i.i.i = shl nuw nsw i32 %conv.i.i.i.i.i, 1
  %add.i.i.i.i.i = add nuw nsw i32 %sub.i.i.i.i.i, 110
  %286 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i16.i.i.i.i.i = getelementptr i8, ptr %287, i32 %add.i.i.i.i.i
  %288 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i16.i.i.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %289 = and i16 %288, -769
  %290 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i19.i.i.i.i.i = getelementptr i8, ptr %291, i32 %add.i.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i19.i.i.i.i.i, i16 %289) #10, !srcloc !182
  br label %pipe_stop.exit.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv.i.i.i.i.i) #13
  br label %pipe_stop.exit.i.i.i

pipe_stop.exit.i.i.i:                             ; preds = %do.end.i.i.i.i.i, %if.then5.i.i.i.i.i, %if.then.i.i.i.i.i
  %292 = ptrtoint ptr %pipenum.i25.i.i to i32
  call void @__asan_load2_noabort(i32 %292)
  %293 = load i16, ptr %pipenum.i25.i.i, align 2
  %conv.i.i.i.i.i.i = zext i16 %293 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %293)
  %cmp.i.i.i.i.i.i = icmp eq i16 %293, 0
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i30.i.i, label %if.else.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %pipe_stop.exit.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %293)
  %cmp3.i.i.i.i.i.i = icmp ult i16 %293, 8
  br i1 %cmp3.i.i.i.i.i.i, label %if.then5.i.i.i.i, label %do.end.i.i.i.i

if.then.i.i30.i.i:                                ; preds = %pipe_stop.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %294 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i.i46.i.i.i = getelementptr i8, ptr %295, i32 96
  %296 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i.i46.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %297 = and i16 %296, -769
  %298 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i.i47.i.i.i = getelementptr i8, ptr %299, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i.i47.i.i.i, i16 %297) #10, !srcloc !182
  %300 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i48.i.i.i = getelementptr i8, ptr %301, i32 96
  %302 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i48.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %303 = or i16 %302, 1
  %304 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i49.i.i.i = getelementptr i8, ptr %305, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i49.i.i.i, i16 %303) #10, !srcloc !182
  br label %control_reg_sqclr.exit.i.i.i

if.then5.i.i.i.i:                                 ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i.i.i.i = shl nuw nsw i32 %conv.i.i.i.i.i.i, 1
  %add.i.i.i.i.i.i = add nuw nsw i32 %sub.i.i.i.i.i.i, 110
  %306 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i16.i.i.i.i.i.i = getelementptr i8, ptr %307, i32 %add.i.i.i.i.i.i
  %308 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i16.i.i.i.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %309 = and i16 %308, -769
  %310 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i19.i.i.i.i.i.i = getelementptr i8, ptr %311, i32 %add.i.i.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i19.i.i.i.i.i.i, i16 %309) #10, !srcloc !182
  %312 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i17.i.i.i.i = getelementptr i8, ptr %313, i32 %add.i.i.i.i.i.i
  %314 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i17.i.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %315 = or i16 %314, 1
  %316 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i19.i.i.i.i = getelementptr i8, ptr %317, i32 %add.i.i.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i19.i.i.i.i, i16 %315) #10, !srcloc !182
  br label %control_reg_sqclr.exit.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv.i.i.i.i.i.i) #13
  %call.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %conv.i.i.i.i.i.i) #13
  br label %control_reg_sqclr.exit.i.i.i

control_reg_sqclr.exit.i.i.i:                     ; preds = %do.end.i.i.i.i, %if.then5.i.i.i.i, %if.then.i.i30.i.i
  %internal_ccpl.i50.i.i.i = getelementptr inbounds %struct.m66592, ptr %_m66592, i32 0, i32 7, i32 0, i32 3
  %318 = ptrtoint ptr %internal_ccpl.i50.i.i.i to i32
  call void @__asan_load1_noabort(i32 %318)
  %bf.load.i51.i.i.i = load i8, ptr %internal_ccpl.i50.i.i.i, align 4
  %bf.set.i53.i.i.i = or i8 %bf.load.i51.i.i.i, 64
  store i8 %bf.set.i53.i.i.i, ptr %internal_ccpl.i50.i.i.i, align 4
  %319 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i.i55.i.i.i = getelementptr i8, ptr %320, i32 96
  %321 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i.i55.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %322 = and i16 %321, -769
  %323 = or i16 %322, 256
  %324 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i.i56.i.i.i = getelementptr i8, ptr %325, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i.i56.i.i.i, i16 %323) #10, !srcloc !182
  %326 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i57.i.i.i = getelementptr i8, ptr %327, i32 96
  %328 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i57.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %329 = or i16 %328, 1024
  %330 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i58.i.i.i = getelementptr i8, ptr %331, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i58.i.i.i, i16 %329) #10, !srcloc !182
  %queue.i.i.i = getelementptr inbounds %struct.m66592_ep, ptr %277, i32 0, i32 2
  %332 = ptrtoint ptr %queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %queue.i.i.i, align 4
  %add.ptr.i31.i.i = getelementptr i8, ptr %333, i32 -56
  %busy.i.i.i = getelementptr inbounds %struct.m66592_ep, ptr %277, i32 0, i32 3
  %334 = ptrtoint ptr %busy.i.i.i to i32
  call void @__asan_load1_noabort(i32 %334)
  %bf.load.i.i.i = load i8, ptr %busy.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %control_reg_sqclr.exit.i.i.i
  %bf.clear.i.i.i = and i8 %bf.load.i.i.i, 127
  %335 = ptrtoint ptr %busy.i.i.i to i32
  call void @__asan_store1_noabort(i32 %335)
  store i8 %bf.clear.i.i.i, ptr %busy.i.i.i, align 4
  %336 = ptrtoint ptr %queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load volatile ptr, ptr %queue.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %337, %queue.i.i.i
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i.irq_control_stage.exit_crit_edge, label %if.end.i.i.i

if.then.i.i.i.irq_control_stage.exit_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %irq_control_stage.exit

if.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @start_packet(ptr noundef %277, ptr noundef %add.ptr.i31.i.i) #10
  br label %irq_control_stage.exit

if.else.i.i.i:                                    ; preds = %control_reg_sqclr.exit.i.i.i
  %338 = ptrtoint ptr %queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load volatile ptr, ptr %queue.i.i.i, align 4
  %cmp.i59.not.i.i.i = icmp eq ptr %339, %queue.i.i.i
  br i1 %cmp.i59.not.i.i.i, label %if.else.i.i.i.irq_control_stage.exit_crit_edge, label %if.then14.i.i.i

if.else.i.i.i.irq_control_stage.exit_crit_edge:   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %irq_control_stage.exit

if.then14.i.i.i:                                  ; preds = %if.else.i.i.i
  %340 = ptrtoint ptr %pipenum.i25.i.i to i32
  call void @__asan_load2_noabort(i32 %340)
  %341 = load i16, ptr %pipenum.i25.i.i, align 2
  %conv.i.i61.i.i.i = zext i16 %341 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %341)
  %cmp.i.i62.i.i.i = icmp eq i16 %341, 0
  br i1 %cmp.i.i62.i.i.i, label %if.then.i.i66.i.i.i, label %if.else.i.i68.i.i.i

if.then.i.i66.i.i.i:                              ; preds = %if.then14.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %342 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i64.i.i.i = getelementptr i8, ptr %343, i32 96
  %344 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i64.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %345 = and i16 %344, -769
  %346 = or i16 %345, 256
  %347 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i65.i.i.i = getelementptr i8, ptr %348, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i65.i.i.i, i16 %346) #10, !srcloc !182
  br label %irq_control_stage.exit

if.else.i.i68.i.i.i:                              ; preds = %if.then14.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %341)
  %cmp3.i.i67.i.i.i = icmp ult i16 %341, 8
  br i1 %cmp3.i.i67.i.i.i, label %if.then5.i.i74.i.i.i, label %do.end.i.i76.i.i.i

if.then5.i.i74.i.i.i:                             ; preds = %if.else.i.i68.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i69.i.i.i = shl nuw nsw i32 %conv.i.i61.i.i.i, 1
  %add.i.i70.i.i.i = add nuw nsw i32 %sub.i.i69.i.i.i, 110
  %349 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i16.i.i72.i.i.i = getelementptr i8, ptr %350, i32 %add.i.i70.i.i.i
  %351 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i16.i.i72.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %352 = and i16 %351, -769
  %353 = or i16 %352, 256
  %354 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i19.i.i73.i.i.i = getelementptr i8, ptr %355, i32 %add.i.i70.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i19.i.i73.i.i.i, i16 %353) #10, !srcloc !182
  br label %irq_control_stage.exit

do.end.i.i76.i.i.i:                               ; preds = %if.else.i.i68.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i75.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv.i.i61.i.i.i) #13
  br label %irq_control_stage.exit

sw.default.i32.i.i:                               ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %356 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i78.i.i.i = getelementptr i8, ptr %357, i32 96
  %358 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i78.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %359 = and i16 %358, -769
  %360 = or i16 %359, 512
  %361 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i79.i.i.i = getelementptr i8, ptr %362, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i79.i.i.i, i16 %360) #10, !srcloc !182
  br label %irq_control_stage.exit

sw.bb5.i.i:                                       ; preds = %if.then.i.i
  %363 = and i8 %203, 31
  %and.i34.i.i = zext i8 %363 to i32
  %364 = zext i32 %and.i34.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %364, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %and.i34.i.i, label %sw.default20.i.i.i [
    i32 0, label %sw.bb.i35.i.i
    i32 1, label %sw.bb15.i.i.i
    i32 2, label %sw.bb16.i.i.i
  ]

sw.bb.i35.i.i:                                    ; preds = %sw.bb5.i.i
  %365 = ptrtoint ptr %167 to i32
  call void @__asan_load2_noabort(i32 %365)
  %366 = load i16, ptr %167, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %366)
  %cond.i.i.i = icmp eq i16 %366, 512
  br i1 %cond.i.i.i, label %sw.bb2.i44.i.i, label %sw.default.i51.i.i

sw.bb2.i44.i.i:                                   ; preds = %sw.bb.i35.i.i
  %internal_ccpl.i.i36.i.i = getelementptr inbounds %struct.m66592, ptr %_m66592, i32 0, i32 7, i32 0, i32 3
  %367 = ptrtoint ptr %internal_ccpl.i.i36.i.i to i32
  call void @__asan_load1_noabort(i32 %367)
  %bf.load.i.i37.i.i = load i8, ptr %internal_ccpl.i.i36.i.i, align 4
  %bf.set.i.i38.i.i = or i8 %bf.load.i.i37.i.i, 64
  store i8 %bf.set.i.i38.i.i, ptr %internal_ccpl.i.i36.i.i, align 4
  %368 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i.i.i40.i.i = getelementptr i8, ptr %369, i32 96
  %370 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i.i.i40.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %371 = and i16 %370, -769
  %372 = or i16 %371, 256
  %373 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i.i.i41.i.i = getelementptr i8, ptr %374, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i.i.i41.i.i, i16 %372) #10, !srcloc !182
  %375 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i42.i.i = getelementptr i8, ptr %376, i32 96
  %377 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i42.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %378 = or i16 %377, 1024
  %379 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i43.i.i = getelementptr i8, ptr %380, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i43.i.i, i16 %378) #10, !srcloc !182
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %sw.bb2.i44.i.i
  %timeout.0.i.i.i = phi i32 [ 3000, %sw.bb2.i44.i.i ], [ %dec.i.i.i, %do.body.i.i.i.do.body.i.i.i_crit_edge ]
  %381 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i172 = getelementptr i8, ptr %382, i32 64
  %383 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i172) #10, !srcloc !179
  %384 = lshr i16 %383, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %385 = and i16 %384, 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %386 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %386(i32 noundef 214748) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %385)
  %cmp.not.i.i.i = icmp ne i16 %385, 0
  %dec.i.i.i = add nsw i32 %timeout.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i.i.i)
  %cmp8.i.i.i = icmp ne i32 %timeout.0.i.i.i, 0
  %or.cond.i.i.i = select i1 %cmp.not.i.i.i, i1 %cmp8.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge, label %do.end.i.i.i

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i

do.end.i.i.i:                                     ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %385)
  %cmp11.i.i.i = icmp eq i16 %385, 0
  br i1 %cmp11.i.i.i, label %if.then.i47.i.i, label %do.end.i.i.i.irq_control_stage.exit_crit_edge

do.end.i.i.i.irq_control_stage.exit_crit_edge:    ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %irq_control_stage.exit

if.then.i47.i.i:                                  ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %387 = ptrtoint ptr %168 to i32
  call void @__asan_load2_noabort(i32 %387)
  %388 = load i16, ptr %168, align 2
  %389 = and i16 %388, -256
  %390 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i46.i.i = getelementptr i8, ptr %391, i32 6
  %392 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i46.i.i) #10, !srcloc !179
  %393 = tail call i16 @llvm.bswap.i16(i16 %392) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %or10.i.i.i.i = or i16 %393, %389
  %394 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i.i = getelementptr i8, ptr %395, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %396 = tail call i16 @llvm.bswap.i16(i16 %or10.i.i.i.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i.i, i16 %396) #10, !srcloc !182
  br label %irq_control_stage.exit

sw.default.i51.i.i:                               ; preds = %sw.bb.i35.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %397 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i.i49.i.i = getelementptr i8, ptr %398, i32 96
  %399 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i.i49.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %400 = and i16 %399, -769
  %401 = or i16 %400, 512
  %402 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i.i50.i.i = getelementptr i8, ptr %403, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i.i50.i.i, i16 %401) #10, !srcloc !182
  br label %irq_control_stage.exit

sw.bb15.i.i.i:                                    ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %internal_ccpl.i34.i.i.i = getelementptr inbounds %struct.m66592, ptr %_m66592, i32 0, i32 7, i32 0, i32 3
  %404 = ptrtoint ptr %internal_ccpl.i34.i.i.i to i32
  call void @__asan_load1_noabort(i32 %404)
  %bf.load.i35.i.i.i = load i8, ptr %internal_ccpl.i34.i.i.i, align 4
  %bf.set.i37.i.i.i = or i8 %bf.load.i35.i.i.i, 64
  store i8 %bf.set.i37.i.i.i, ptr %internal_ccpl.i34.i.i.i, align 4
  %405 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i.i39.i.i.i = getelementptr i8, ptr %406, i32 96
  %407 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i.i39.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %408 = and i16 %407, -769
  %409 = or i16 %408, 256
  %410 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i.i40.i.i.i = getelementptr i8, ptr %411, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i.i40.i.i.i, i16 %409) #10, !srcloc !182
  %412 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i41.i.i.i = getelementptr i8, ptr %413, i32 96
  %414 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i41.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %415 = or i16 %414, 1024
  %416 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i42.i.i.i = getelementptr i8, ptr %417, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i42.i.i.i, i16 %415) #10, !srcloc !182
  br label %irq_control_stage.exit

sw.bb16.i.i.i:                                    ; preds = %sw.bb5.i.i
  %418 = ptrtoint ptr %168 to i32
  call void @__asan_load2_noabort(i32 %418)
  %419 = load i16, ptr %168, align 2
  %420 = lshr i16 %419, 8
  %421 = and i16 %420, 15
  %and19.i.i.i = zext i16 %421 to i32
  %arrayidx.i52.i.i = getelementptr %struct.m66592, ptr %_m66592, i32 0, i32 9, i32 %and19.i.i.i
  %422 = ptrtoint ptr %arrayidx.i52.i.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %arrayidx.i52.i.i, align 4
  %pipenum.i53.i.i = getelementptr inbounds %struct.m66592_ep, ptr %423, i32 0, i32 4
  %424 = ptrtoint ptr %pipenum.i53.i.i to i32
  call void @__asan_load2_noabort(i32 %424)
  %425 = load i16, ptr %pipenum.i53.i.i, align 2
  %conv.i.i.i54.i.i = zext i16 %425 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %425)
  %cmp.i.i.i55.i.i = icmp eq i16 %425, 0
  br i1 %cmp.i.i.i55.i.i, label %if.then.i.i.i56.i.i, label %if.else.i.i.i58.i.i

if.then.i.i.i56.i.i:                              ; preds = %sw.bb16.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %426 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i44.i.i.i = getelementptr i8, ptr %427, i32 96
  %428 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i44.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %429 = and i16 %428, -769
  %430 = or i16 %429, 512
  %431 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i45.i.i.i = getelementptr i8, ptr %432, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i45.i.i.i, i16 %430) #10, !srcloc !182
  br label %pipe_stall.exit.i.i.i

if.else.i.i.i58.i.i:                              ; preds = %sw.bb16.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %425)
  %cmp3.i.i.i57.i.i = icmp ult i16 %425, 8
  br i1 %cmp3.i.i.i57.i.i, label %if.then5.i.i.i64.i.i, label %do.end.i.i.i66.i.i

if.then5.i.i.i64.i.i:                             ; preds = %if.else.i.i.i58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i59.i.i = shl nuw nsw i32 %conv.i.i.i54.i.i, 1
  %add.i.i.i60.i.i = add nuw nsw i32 %sub.i.i.i59.i.i, 110
  %433 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i16.i.i.i62.i.i = getelementptr i8, ptr %434, i32 %add.i.i.i60.i.i
  %435 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i16.i.i.i62.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %436 = and i16 %435, -769
  %437 = or i16 %436, 512
  %438 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i19.i.i.i63.i.i = getelementptr i8, ptr %439, i32 %add.i.i.i60.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i19.i.i.i63.i.i, i16 %437) #10, !srcloc !182
  br label %pipe_stall.exit.i.i.i

do.end.i.i.i66.i.i:                               ; preds = %if.else.i.i.i58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i65.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv.i.i.i54.i.i) #13
  br label %pipe_stall.exit.i.i.i

pipe_stall.exit.i.i.i:                            ; preds = %do.end.i.i.i66.i.i, %if.then5.i.i.i64.i.i, %if.then.i.i.i56.i.i
  %internal_ccpl.i46.i.i.i = getelementptr inbounds %struct.m66592, ptr %_m66592, i32 0, i32 7, i32 0, i32 3
  %440 = ptrtoint ptr %internal_ccpl.i46.i.i.i to i32
  call void @__asan_load1_noabort(i32 %440)
  %bf.load.i47.i.i.i = load i8, ptr %internal_ccpl.i46.i.i.i, align 4
  %bf.set.i49.i.i.i = or i8 %bf.load.i47.i.i.i, 64
  store i8 %bf.set.i49.i.i.i, ptr %internal_ccpl.i46.i.i.i, align 4
  %441 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i.i51.i.i.i = getelementptr i8, ptr %442, i32 96
  %443 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i.i51.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %444 = and i16 %443, -769
  %445 = or i16 %444, 256
  %446 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i.i52.i.i.i = getelementptr i8, ptr %447, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i.i52.i.i.i, i16 %445) #10, !srcloc !182
  %448 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i53.i.i.i = getelementptr i8, ptr %449, i32 96
  %450 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i53.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %451 = or i16 %450, 1024
  %452 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i54.i.i.i = getelementptr i8, ptr %453, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i54.i.i.i, i16 %451) #10, !srcloc !182
  br label %irq_control_stage.exit

sw.default20.i.i.i:                               ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %454 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i56.i.i.i = getelementptr i8, ptr %455, i32 96
  %456 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i56.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %457 = and i16 %456, -769
  %458 = or i16 %457, 512
  %459 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i57.i.i.i = getelementptr i8, ptr %460, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i57.i.i.i, i16 %458) #10, !srcloc !182
  br label %irq_control_stage.exit

if.then.i176:                                     ; preds = %if.then.i.i.if.then.i176_crit_edge, %sw.bb4.i.if.then.i176_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %_m66592) #10
  %driver.i173 = getelementptr inbounds %struct.m66592, ptr %_m66592, i32 0, i32 6
  %461 = ptrtoint ptr %driver.i173 to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %driver.i173, align 8
  %setup.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %462, i32 0, i32 4
  %463 = ptrtoint ptr %setup.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %setup.i, align 4
  %gadget.i174 = getelementptr inbounds %struct.m66592, ptr %_m66592, i32 0, i32 5
  %call6.i = call i32 %464(ptr noundef %gadget.i174, ptr noundef nonnull %ctrl.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i175 = icmp slt i32 %call6.i, 0
  br i1 %cmp.i175, label %if.then8.i, label %if.then.i176.if.end.i177_crit_edge

if.then.i176.if.end.i177_crit_edge:               ; preds = %if.then.i176
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i177

if.then8.i:                                       ; preds = %if.then.i176
  call void @__sanitizer_cov_trace_pc() #12
  %465 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i28.i = getelementptr i8, ptr %466, i32 96
  %467 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i28.i) #10, !srcloc !179
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %468 = and i16 %467, -769
  %469 = or i16 %468, 512
  %470 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i29.i = getelementptr i8, ptr %471, i32 96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i29.i, i16 %469) #10, !srcloc !182
  br label %if.end.i177

if.end.i177:                                      ; preds = %if.then8.i, %if.then.i176.if.end.i177_crit_edge
  call void @_raw_spin_lock(ptr noundef %_m66592) #10
  br label %irq_control_stage.exit

sw.bb11.i:                                        ; preds = %if.then63.sw.bb11.i_crit_edge, %if.then63.sw.bb11.i_crit_edge184
  %internal_ccpl.i.i = getelementptr inbounds %struct.m66592, ptr %_m66592, i32 0, i32 7, i32 0, i32 3
  %472 = ptrtoint ptr %internal_ccpl.i.i to i32
  call void @__asan_load1_noabort(i32 %472)
  %bf.load.i.i = load i8, ptr %internal_ccpl.i.i, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, -65
  store i8 %bf.clear.i.i, ptr %internal_ccpl.i.i, align 4
  %473 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i.i31.i = getelementptr i8, ptr %474, i32 96
  %475 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i.i31.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %476 = and i16 %475, -769
  %477 = or i16 %476, 256
  %478 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i.i32.i = getelementptr i8, ptr %479, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i.i32.i, i16 %477) #10, !srcloc !182
  %480 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i33.i = getelementptr i8, ptr %481, i32 96
  %482 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i33.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %483 = or i16 %482, 1024
  %484 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i178 = getelementptr i8, ptr %485, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i178, i16 %483) #10, !srcloc !182
  br label %irq_control_stage.exit

do.end.i:                                         ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv2.i167) #13
  br label %irq_control_stage.exit

irq_control_stage.exit:                           ; preds = %do.end.i, %sw.bb11.i, %if.end.i177, %sw.default20.i.i.i, %pipe_stall.exit.i.i.i, %sw.bb15.i.i.i, %sw.default.i51.i.i, %if.then.i47.i.i, %do.end.i.i.i.irq_control_stage.exit_crit_edge, %sw.default.i32.i.i, %do.end.i.i76.i.i.i, %if.then5.i.i74.i.i.i, %if.then.i.i66.i.i.i, %if.else.i.i.i.irq_control_stage.exit_crit_edge, %if.end.i.i.i, %if.then.i.i.i.irq_control_stage.exit_crit_edge, %sw.bb1.i21.i.i, %sw.bb.i.i.i, %sw.epilog.i.i.i, %sw.default.i.i.i, %sw.bb.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ctrl.i) #10
  br label %if.end65

if.end65:                                         ; preds = %irq_control_stage.exit, %if.end59.if.end65_crit_edge, %if.end.if.end65_crit_edge
  %486 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %reg.i, align 4
  %add.ptr.i180 = getelementptr i8, ptr %487, i32 30
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i180, i16 %21) #10, !srcloc !182
  call void @_raw_spin_unlock(ptr noundef %_m66592) #10
  ret i32 1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_set_maxpacket_limit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @m66592_alloc_request(ptr nocapture noundef readnone %_ep, i32 noundef %gfp_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %or.i = or i32 %gfp_flags, 256
  %and.i.i.i = and i32 %gfp_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !183

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %entry
  %and2.i.i.i = and i32 %gfp_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and6.i.i.i = and i32 %gfp_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i20.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i20.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 64) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %queue = getelementptr inbounds %struct.m66592_request, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %queue, ptr %queue, align 8
  %prev.i = getelementptr inbounds %struct.m66592_request, ptr %call7.i.i, i32 0, i32 1, i32 1
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
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_controller(ptr noundef readonly %m66592) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.m66592, ptr %m66592, i32 0, i32 3
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %3 = and i8 %bf.load, 64
  %4 = zext i8 %3 to i16
  %5 = shl nuw nsw i16 %4, 2
  br i1 %tobool.not, label %if.else8, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = xor i16 %5, 256
  %reg.i.i = getelementptr inbounds %struct.m66592, ptr %m66592, i32 0, i32 1
  %7 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg.i.i, align 4
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %8) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %10 = or i16 %9, -32768
  %11 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %12, i16 %10) #10, !srcloc !182
  %13 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg.i.i, align 4
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %14) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %16 = and i16 %15, -257
  %17 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %18, i16 %16) #10, !srcloc !182
  %19 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg.i.i, align 4
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %20) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %22 = and i16 %21, -4097
  %23 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %24, i16 %22) #10, !srcloc !182
  %25 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg.i.i, align 4
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %26) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %28 = or i16 %27, 256
  %29 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %30, i16 %28) #10, !srcloc !182
  %31 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 4
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %34 = or i16 %33, 128
  %35 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %36, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i, i16 %34) #10, !srcloc !182
  %37 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i89 = getelementptr i8, ptr %38, i32 6
  %39 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i89) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %40 = or i16 %39, 16
  %41 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i91 = getelementptr i8, ptr %42, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i91, i16 %40) #10, !srcloc !182
  %43 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i93 = getelementptr i8, ptr %44, i32 4
  %45 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i93) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %46 = and i16 %45, -129
  %47 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i95 = getelementptr i8, ptr %48, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i95, i16 %46) #10, !srcloc !182
  %49 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i97 = getelementptr i8, ptr %50, i32 50
  %51 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i97) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %52 = or i16 %51, 512
  %53 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i99 = getelementptr i8, ptr %54, i32 50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i99, i16 %52) #10, !srcloc !182
  %55 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %56, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 0) #10, !srcloc !182
  %57 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i101 = getelementptr i8, ptr %58, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i101, i16 0) #10, !srcloc !182
  %59 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i103 = getelementptr i8, ptr %60, i32 10
  %61 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i103) #10, !srcloc !179
  %62 = tail call i16 @llvm.bswap.i16(i16 %61) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %or10.i104 = or i16 %62, %6
  %63 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i105 = getelementptr i8, ptr %64, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %65 = tail call i16 @llvm.bswap.i16(i16 %or10.i104) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i105, i16 %65) #10, !srcloc !182
  %66 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i107 = getelementptr i8, ptr %67, i32 12
  %68 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i107) #10, !srcloc !179
  %69 = tail call i16 @llvm.bswap.i16(i16 %68) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %or10.i108 = or i16 %69, %6
  %70 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i109 = getelementptr i8, ptr %71, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %72 = tail call i16 @llvm.bswap.i16(i16 %or10.i108) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i109, i16 %72) #10, !srcloc !182
  br label %if.end49

if.else8:                                         ; preds = %entry
  %73 = and i8 %bf.load, 8
  %74 = zext i8 %73 to i16
  %75 = shl nuw i16 %74, 12
  %bf.lshr29 = lshr i8 %bf.load, 4
  %bf.clear30 = and i8 %bf.lshr29, 3
  %bf.cast31 = zext i8 %bf.clear30 to i32
  %switch.tableidx = add nsw i32 %bf.cast31, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %76 = icmp ult i32 %switch.tableidx, 3
  br i1 %76, label %switch.lookup, label %do.end

do.end:                                           ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73) #13
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #12
  %switch.idx.cast = trunc i32 %switch.tableidx to i16
  %switch.idx.mult = shl i16 %switch.idx.cast, 14
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %do.end
  %clock.0 = phi i16 [ 0, %do.end ], [ %switch.idx.mult, %switch.lookup ]
  %irq_trigger = getelementptr inbounds %struct.m66592, ptr %m66592, i32 0, i32 4
  %77 = ptrtoint ptr %irq_trigger to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %irq_trigger, align 8
  %79 = zext i32 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %78, label %do.end39 [
    i32 8, label %sw.epilog.sw.epilog42_crit_edge
    i32 2, label %sw.bb35
  ]

sw.epilog.sw.epilog42_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog42

sw.bb35:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog42

do.end39:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76) #13
  br label %sw.epilog42

sw.epilog42:                                      ; preds = %do.end39, %sw.bb35, %sw.epilog.sw.epilog42_crit_edge
  %irq_sense.0 = phi i16 [ 0, %do.end39 ], [ 0, %sw.bb35 ], [ 2, %sw.epilog.sw.epilog42_crit_edge ]
  %or = or i16 %75, %5
  %reg.i.i110 = getelementptr inbounds %struct.m66592, ptr %m66592, i32 0, i32 1
  %80 = ptrtoint ptr %reg.i.i110 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %reg.i.i110, align 4
  %add.ptr.i.i111 = getelementptr i8, ptr %81, i32 10
  %82 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i111) #10, !srcloc !179
  %83 = tail call i16 @llvm.bswap.i16(i16 %82) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %or10.i112 = or i16 %83, %or
  %84 = ptrtoint ptr %reg.i.i110 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %reg.i.i110, align 4
  %add.ptr.i12.i113 = getelementptr i8, ptr %85, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %86 = tail call i16 @llvm.bswap.i16(i16 %or10.i112) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i113, i16 %86) #10, !srcloc !182
  %87 = ptrtoint ptr %reg.i.i110 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %reg.i.i110, align 4
  %89 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %88) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %90 = or i16 %89, -32768
  %91 = ptrtoint ptr %reg.i.i110 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %reg.i.i110, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %92, i16 %90) #10, !srcloc !182
  %93 = ptrtoint ptr %reg.i.i110 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %reg.i.i110, align 4
  %95 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %94) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %96 = and i16 %95, -193
  %97 = tail call i16 @llvm.bswap.i16(i16 %96)
  %or10.i118 = or i16 %97, %clock.0
  %98 = ptrtoint ptr %reg.i.i110 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %reg.i.i110, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %100 = tail call i16 @llvm.bswap.i16(i16 %or10.i118) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %99, i16 %100) #10, !srcloc !182
  %101 = ptrtoint ptr %reg.i.i110 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %reg.i.i110, align 4
  %103 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %102) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %104 = and i16 %103, -257
  %105 = ptrtoint ptr %reg.i.i110 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %reg.i.i110, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %106, i16 %104) #10, !srcloc !182
  %107 = ptrtoint ptr %reg.i.i110 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %reg.i.i110, align 4
  %109 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %108) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %110 = and i16 %109, -4097
  %111 = ptrtoint ptr %reg.i.i110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %reg.i.i110, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %112, i16 %110) #10, !srcloc !182
  %113 = ptrtoint ptr %reg.i.i110 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %reg.i.i110, align 4
  %115 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %114) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %116 = or i16 %115, 256
  %117 = ptrtoint ptr %reg.i.i110 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %reg.i.i110, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %118, i16 %116) #10, !srcloc !182
  %119 = ptrtoint ptr %reg.i.i110 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %reg.i.i110, align 4
  %121 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %120) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %122 = or i16 %121, 32
  %123 = ptrtoint ptr %reg.i.i110 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %reg.i.i110, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %124, i16 %122) #10, !srcloc !182
  tail call void @msleep(i32 noundef 3) #10
  %125 = ptrtoint ptr %reg.i.i110 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %reg.i.i110, align 4
  %127 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %126) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %128 = or i16 %127, 24
  %129 = ptrtoint ptr %reg.i.i110 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %reg.i.i110, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %130, i16 %128) #10, !srcloc !182
  tail call void @msleep(i32 noundef 1) #10
  %131 = ptrtoint ptr %reg.i.i110 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %reg.i.i110, align 4
  %133 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %132) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %134 = or i16 %133, 4
  %135 = ptrtoint ptr %reg.i.i110 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %reg.i.i110, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %136, i16 %134) #10, !srcloc !182
  %137 = ptrtoint ptr %reg.i.i110 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %reg.i.i110, align 4
  %add.ptr.i.i132 = getelementptr i8, ptr %138, i32 50
  %139 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i132) #10, !srcloc !179
  %140 = tail call i16 @llvm.bswap.i16(i16 %139) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %or10.i133 = or i16 %140, %irq_sense.0
  %141 = ptrtoint ptr %reg.i.i110 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %reg.i.i110, align 4
  %add.ptr.i12.i134 = getelementptr i8, ptr %142, i32 50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %143 = tail call i16 @llvm.bswap.i16(i16 %or10.i133) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i134, i16 %143) #10, !srcloc !182
  %144 = ptrtoint ptr %reg.i.i110 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %reg.i.i110, align 4
  %add.ptr.i136 = getelementptr i8, ptr %145, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i136, i16 32) #10, !srcloc !182
  br label %if.end49

if.end49:                                         ; preds = %sw.epilog42, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_gadget_udc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @m66592_free_request(ptr nocapture noundef readnone %_ep, ptr noundef %_req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %_req) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m66592_get_frame(ptr nocapture noundef readonly %_gadget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.i = getelementptr i8, ptr %_gadget, i32 -20
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 76
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %3 = and i16 %2, -253
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %and = zext i16 %4 to i32
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m66592_pullup(ptr noundef %gadget, i32 noundef %is_on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %gadget, i32 -64
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %tobool.not = icmp eq i32 %is_on, 0
  %reg.i.i10 = getelementptr i8, ptr %gadget, i32 -20
  %0 = ptrtoint ptr %reg.i.i10 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg.i.i10, align 4
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = or i16 %2, 4096
  %4 = ptrtoint ptr %reg.i.i10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg.i.i10, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %5, i16 %3) #10, !srcloc !182
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = and i16 %2, -4097
  %7 = ptrtoint ptr %reg.i.i10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg.i.i10, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %8, i16 %6) #10, !srcloc !182
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m66592_udc_start(ptr noundef %g, ptr noundef %driver) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.usb_gadget_driver, ptr %driver, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %bus, align 4
  %driver2 = getelementptr i8, ptr %g, i32 1048
  %1 = ptrtoint ptr %driver2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %driver, ptr %driver2, align 8
  %reg.i.i = getelementptr i8, ptr %g, i32 -20
  %2 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 48
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %5 = or i16 %4, -32640
  %6 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %7, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i, i16 %5) #10, !srcloc !182
  %8 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 64
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %10)
  %tobool.not = icmp sgt i16 %10, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %pdata.i = getelementptr i8, ptr %g, i32 -12
  %11 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdata.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i = load i8, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.then.i, label %if.then.m66592_start_xclock.exit_crit_edge

if.then.m66592_start_xclock.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %m66592_start_xclock.exit

if.then.i:                                        ; preds = %if.then
  %14 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg.i.i, align 4
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %15) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %17 = and i16 %16, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool1.not.i = icmp eq i16 %17, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.then.i.m66592_start_xclock.exit_crit_edge

if.then.i.m66592_start_xclock.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %m66592_start_xclock.exit

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg.i.i, align 4
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %19) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %21 = or i16 %20, 32
  %22 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %23, i16 %21) #10, !srcloc !182
  br label %m66592_start_xclock.exit

m66592_start_xclock.exit:                         ; preds = %if.then2.i, %if.then.i.m66592_start_xclock.exit_crit_edge, %if.then.m66592_start_xclock.exit_crit_edge
  %24 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %25, i32 64
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i19) #10, !srcloc !179
  %27 = lshr i16 %26, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %28 = and i16 %27, 128
  %old_vbus = getelementptr i8, ptr %g, i32 1826
  %29 = ptrtoint ptr %old_vbus to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %old_vbus, align 2
  %scount = getelementptr i8, ptr %g, i32 1876
  %30 = ptrtoint ptr %scount to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 10, ptr %scount, align 4
  %timer = getelementptr i8, ptr %g, i32 1828
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %31, 5
  %call8 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #10
  br label %if.end

if.end:                                           ; preds = %m66592_start_xclock.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m66592_udc_stop(ptr noundef %g) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %g, i32 -64
  %reg.i.i = getelementptr i8, ptr %g, i32 -20
  %0 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 48
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %3 = and i16 %2, 32639
  %4 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %5, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i, i16 %3) #10, !srcloc !182
  tail call fastcc void @init_controller(ptr noundef %add.ptr)
  tail call fastcc void @disable_controller(ptr noundef %add.ptr)
  %driver = getelementptr i8, ptr %g, i32 1048
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @disable_controller(ptr nocapture noundef readonly %m66592) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.i.i = getelementptr inbounds %struct.m66592, ptr %m66592, i32 0, i32 1
  %0 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 6
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %3 = and i16 %2, -3841
  %4 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %5, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i, i16 %3) #10, !srcloc !182
  %pdata = getelementptr inbounds %struct.m66592, ptr %m66592, i32 0, i32 3
  %6 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg.i.i, align 4
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %10) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %12 = and i16 %11, -5
  %13 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %14, i16 %12) #10, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #10
  %16 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg.i.i, align 4
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %17) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %19 = and i16 %18, -9
  %20 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %21, i16 %19) #10, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748) #10
  %23 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg.i.i, align 4
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %24) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %26 = and i16 %25, -17
  %27 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %28, i16 %26) #10, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #10
  %30 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg.i.i, align 4
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %31) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %33 = and i16 %32, -33
  %34 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %35, i16 %33) #10, !srcloc !182
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_udc_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irq_packet_read(ptr noundef %ep, ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pipenum1 = getelementptr inbounds %struct.m66592_ep, ptr %ep, i32 0, i32 4
  %0 = ptrtoint ptr %pipenum1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pipenum1, align 2
  %m665922 = getelementptr inbounds %struct.m66592_ep, ptr %ep, i32 0, i32 1
  %2 = ptrtoint ptr %m665922 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m665922, align 4
  %idxprom.i = zext i16 %1 to i32
  %arrayidx.i = getelementptr %struct.m66592, ptr %3, i32 0, i32 8, i32 %idxprom.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %use_dma.i = getelementptr inbounds %struct.m66592_ep, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %use_dma.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %use_dma.i, align 4
  %7 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.pipe_change.exit_crit_edge

entry.pipe_change.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %pipe_change.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fifosel.i = getelementptr inbounds %struct.m66592_ep, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %fifosel.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fifosel.i, align 4
  %reg.i.i.i = getelementptr inbounds %struct.m66592, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 %9
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %13 = and i16 %12, -1793
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #10
  %or10.i.i = or i16 %14, %1
  %15 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %16, i32 %9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %17 = tail call i16 @llvm.bswap.i16(i16 %or10.i.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i, i16 %17) #10, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #10
  %pdata.i = getelementptr inbounds %struct.m66592, ptr %3, i32 0, i32 3
  %19 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdata.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load1.i = load i8, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load1.i)
  %tobool4.not.i = icmp sgt i8 %bf.load1.i, -1
  %..i = select i1 %tobool4.not.i, i16 1024, i16 2048
  %22 = ptrtoint ptr %fifosel.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fifosel.i, align 4
  %24 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i16.i = getelementptr i8, ptr %25, i32 %23
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i16.i) #10, !srcloc !179
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %or10.i17.i = or i16 %27, %..i
  %28 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i12.i18.i = getelementptr i8, ptr %29, i32 %23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %30 = tail call i16 @llvm.bswap.i16(i16 %or10.i17.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i18.i, i16 %30) #10, !srcloc !182
  br label %pipe_change.exit

pipe_change.exit:                                 ; preds = %if.end.i, %entry.pipe_change.exit_crit_edge
  %fifoctr = getelementptr inbounds %struct.m66592_ep, ptr %ep, i32 0, i32 8
  %31 = ptrtoint ptr %fifoctr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fifoctr, align 4
  %reg.i = getelementptr inbounds %struct.m66592, ptr %3, i32 0, i32 1
  %33 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %34, i32 %32
  %35 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #10, !srcloc !179
  %36 = tail call i16 @llvm.bswap.i16(i16 %35) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %conv = zext i16 %36 to i32
  %and = and i32 %conv, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !184

if.then:                                          ; preds = %pipe_change.exit
  call void @__sanitizer_cov_trace_pc() #12
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %37 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -32, ptr %status, align 4
  tail call fastcc void @pipe_stop(ptr noundef %3, i16 noundef zeroext %1)
  tail call fastcc void @pipe_irq_disable(ptr noundef %3, i16 noundef zeroext %1)
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #13
  br label %cleanup

if.end:                                           ; preds = %pipe_change.exit
  %and9 = and i32 %conv, 4095
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.i = icmp eq i16 %1, 0
  %38 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg.i, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else9.i

if.then.i:                                        ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 92
  %40 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %41 = and i16 %40, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %cmp3.not.i = icmp eq i16 %41, 0
  br i1 %cmp3.not.i, label %if.else.i, label %if.then.i.get_buffer_size.exit_crit_edge

if.then.i.get_buffer_size.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_buffer_size.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg.i, align 4
  %add.ptr.i35.i = getelementptr i8, ptr %43, i32 94
  %44 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i35.i) #10, !srcloc !179
  %45 = lshr i16 %44, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %46 = and i16 %45, 127
  br label %get_buffer_size.exit

if.else9.i:                                       ; preds = %if.end
  %add.ptr.i37.i = getelementptr i8, ptr %39, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %47 = tail call i16 @llvm.bswap.i16(i16 %1) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i37.i, i16 %47) #10, !srcloc !182
  %48 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg.i, align 4
  %add.ptr.i39.i = getelementptr i8, ptr %49, i32 102
  %50 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i39.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %51 = and i16 %50, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %cmp13.not.i = icmp eq i16 %51, 0
  %52 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg.i, align 4
  br i1 %cmp13.not.i, label %if.else18.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i41.i = getelementptr i8, ptr %53, i32 104
  %54 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i41.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %55 = shl i16 %54, 4
  %narrow.i = and i16 %55, 4032
  %56 = add nuw nsw i16 %narrow.i, 64
  br label %get_buffer_size.exit

if.else18.i:                                      ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i43.i = getelementptr i8, ptr %53, i32 106
  %57 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i43.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %58 = and i16 %57, -249
  %59 = tail call i16 @llvm.bswap.i16(i16 %58) #10
  br label %get_buffer_size.exit

get_buffer_size.exit:                             ; preds = %if.else18.i, %if.then15.i, %if.else.i, %if.then.i.get_buffer_size.exit_crit_edge
  %size.0.shrunk.i = phi i16 [ %46, %if.else.i ], [ %56, %if.then15.i ], [ %59, %if.else18.i ], [ 256, %if.then.i.get_buffer_size.exit_crit_edge ]
  %size.0.i = zext i16 %size.0.shrunk.i to i32
  %60 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %req, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %62 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %actual, align 4
  %add.ptr = getelementptr i8, ptr %61, i32 %63
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %64 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %length, align 4
  %sub = sub i32 %65, %63
  %66 = tail call i32 @llvm.umin.i32(i32 %and9, i32 %size.0.i)
  %size.0 = tail call i32 @llvm.smin.i32(i32 %66, i32 %sub)
  %add = add i32 %size.0, %63
  %67 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %add, ptr %actual, align 4
  %zero = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 6
  %68 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %68)
  %bf.load = load i32, ptr %zero, align 4
  %69 = and i32 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool34.not = icmp eq i32 %69, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %65)
  %cmp39 = icmp eq i32 %add, %65
  %or.cond129 = select i1 %tobool34.not, i1 %cmp39, i1 false
  br i1 %or.cond129, label %get_buffer_size.exit.if.then48_crit_edge, label %lor.lhs.false

get_buffer_size.exit.if.then48_crit_edge:         ; preds = %get_buffer_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then48

lor.lhs.false:                                    ; preds = %get_buffer_size.exit
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %70 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %70, i32 7)
  %bf.load42 = load i56, ptr %maxpacket, align 2
  %bf.lshr43 = lshr i56 %bf.load42, 40
  %bf.cast = trunc i56 %bf.lshr43 to i32
  %rem = srem i32 %size.0, %bf.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool44.not = icmp ne i32 %rem, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.0)
  %cmp46 = icmp eq i32 %size.0, 0
  %or.cond = or i1 %cmp46, %tobool44.not
  br i1 %or.cond, label %lor.lhs.false.if.then48_crit_edge, label %lor.lhs.false.if.end49_crit_edge

lor.lhs.false.if.end49_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

lor.lhs.false.if.then48_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then48

if.then48:                                        ; preds = %lor.lhs.false.if.then48_crit_edge, %get_buffer_size.exit.if.then48_crit_edge
  br i1 %cmp.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %72, i32 96
  %73 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %74 = and i16 %73, -769
  %75 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i.i = getelementptr i8, ptr %76, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i, i16 %74) #10, !srcloc !182
  br label %pipe_stop.exit

if.else.i.i:                                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %1)
  %cmp3.i.i = icmp ult i16 %1, 8
  br i1 %cmp3.i.i, label %if.then5.i.i, label %do.end.i.i

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = shl nuw nsw i32 %idxprom.i, 1
  %add.i.i = add nuw nsw i32 %sub.i.i, 110
  %77 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i16.i.i = getelementptr i8, ptr %78, i32 %add.i.i
  %79 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i16.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %80 = and i16 %79, -769
  %81 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i19.i.i = getelementptr i8, ptr %82, i32 %add.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i19.i.i, i16 %80) #10, !srcloc !182
  br label %pipe_stop.exit

do.end.i.i:                                       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %idxprom.i) #13
  br label %pipe_stop.exit

pipe_stop.exit:                                   ; preds = %do.end.i.i, %if.then5.i.i, %if.then.i.i
  tail call fastcc void @pipe_irq_disable(ptr noundef %3, i16 noundef zeroext %1)
  br label %if.end49

if.end49:                                         ; preds = %pipe_stop.exit, %lor.lhs.false.if.end49_crit_edge
  %tobool66.not = phi i1 [ false, %pipe_stop.exit ], [ true, %lor.lhs.false.if.end49_crit_edge ]
  %83 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %req, align 4
  %tobool52.not = icmp eq ptr %84, null
  br i1 %tobool52.not, label %if.end49.if.end60_crit_edge, label %if.then53

if.end49.if.end60_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then53:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.0)
  %cmp54 = icmp eq i32 %size.0, 0
  br i1 %cmp54, label %if.then56, label %if.else58

if.then56:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  %85 = ptrtoint ptr %fifoctr to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %fifoctr, align 4
  %87 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %reg.i, align 4
  %add.ptr.i120 = getelementptr i8, ptr %88, i32 %86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i120, i16 64) #10, !srcloc !182
  br label %if.end60

if.else58:                                        ; preds = %if.then53
  %fifoaddr = getelementptr inbounds %struct.m66592_ep, ptr %ep, i32 0, i32 6
  %89 = ptrtoint ptr %fifoaddr to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %fifoaddr, align 4
  %91 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %reg.i, align 4
  %add.ptr.i122 = getelementptr i8, ptr %92, i32 %90
  %pdata.i123 = getelementptr inbounds %struct.m66592, ptr %3, i32 0, i32 3
  %93 = ptrtoint ptr %pdata.i123 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pdata.i123, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load1_noabort(i32 %95)
  %bf.load.i124 = load i8, ptr %94, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i124)
  %tobool.not.i125 = icmp sgt i8 %bf.load.i124, -1
  br i1 %tobool.not.i125, label %if.else.i127, label %if.then.i126

if.then.i126:                                     ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = add nsw i32 %size.0, 3
  %div10.i = lshr i32 %add.i, 2
  tail call void @__raw_readsl(ptr noundef %add.ptr.i122, ptr noundef %add.ptr, i32 noundef %div10.i) #10
  br label %if.end60

if.else.i127:                                     ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #12
  %add1.i = add nsw i32 %size.0, 1
  %div29.i = lshr i32 %add1.i, 1
  tail call void @__raw_readsw(ptr noundef %add.ptr.i122, ptr noundef %add.ptr, i32 noundef %div29.i) #10
  br label %if.end60

if.end60:                                         ; preds = %if.else.i127, %if.then.i126, %if.then56, %if.end49.if.end60_crit_edge
  %96 = ptrtoint ptr %pipenum1 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %pipenum1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %97)
  %cmp63.not = icmp eq i16 %97, 0
  %brmerge = or i1 %tobool66.not, %cmp63.not
  br i1 %brmerge, label %if.end60.cleanup_crit_edge, label %if.then67

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then67:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @transfer_complete(ptr noundef %ep, ptr noundef %req, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.then67, %if.end60.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irq_packet_write(ptr nocapture noundef readonly %ep, ptr nocapture noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pipenum1 = getelementptr inbounds %struct.m66592_ep, ptr %ep, i32 0, i32 4
  %0 = ptrtoint ptr %pipenum1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pipenum1, align 2
  %m665922 = getelementptr inbounds %struct.m66592_ep, ptr %ep, i32 0, i32 1
  %2 = ptrtoint ptr %m665922 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m665922, align 4
  %idxprom.i = zext i16 %1 to i32
  %arrayidx.i = getelementptr %struct.m66592, ptr %3, i32 0, i32 8, i32 %idxprom.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %use_dma.i = getelementptr inbounds %struct.m66592_ep, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %use_dma.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %use_dma.i, align 4
  %7 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.pipe_change.exit_crit_edge

entry.pipe_change.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %pipe_change.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fifosel.i = getelementptr inbounds %struct.m66592_ep, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %fifosel.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fifosel.i, align 4
  %reg.i.i.i = getelementptr inbounds %struct.m66592, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 %9
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %13 = and i16 %12, -1793
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #10
  %or10.i.i = or i16 %14, %1
  %15 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %16, i32 %9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %17 = tail call i16 @llvm.bswap.i16(i16 %or10.i.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i, i16 %17) #10, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #10
  %pdata.i = getelementptr inbounds %struct.m66592, ptr %3, i32 0, i32 3
  %19 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdata.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load1.i = load i8, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load1.i)
  %tobool4.not.i = icmp sgt i8 %bf.load1.i, -1
  %..i = select i1 %tobool4.not.i, i16 1024, i16 2048
  %22 = ptrtoint ptr %fifosel.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fifosel.i, align 4
  %24 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i16.i = getelementptr i8, ptr %25, i32 %23
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i16.i) #10, !srcloc !179
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %or10.i17.i = or i16 %27, %..i
  %28 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i12.i18.i = getelementptr i8, ptr %29, i32 %23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %30 = tail call i16 @llvm.bswap.i16(i16 %or10.i17.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i18.i, i16 %30) #10, !srcloc !182
  br label %pipe_change.exit

pipe_change.exit:                                 ; preds = %if.end.i, %entry.pipe_change.exit_crit_edge
  %fifoctr = getelementptr inbounds %struct.m66592_ep, ptr %ep, i32 0, i32 8
  %31 = ptrtoint ptr %fifoctr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fifoctr, align 4
  %reg.i = getelementptr inbounds %struct.m66592, ptr %3, i32 0, i32 1
  %33 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %34, i32 %32
  %35 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %36 = and i16 %35, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %cmp = icmp eq i16 %36, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !184

if.then:                                          ; preds = %pipe_change.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @pipe_stop(ptr noundef %3, i16 noundef zeroext %1)
  tail call fastcc void @pipe_irq_disable(ptr noundef %3, i16 noundef zeroext %1)
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %idxprom.i) #13
  br label %cleanup

if.end:                                           ; preds = %pipe_change.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.i = icmp eq i16 %1, 0
  %37 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg.i, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else9.i

if.then.i:                                        ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %38, i32 92
  %39 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %40 = and i16 %39, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %cmp3.not.i = icmp eq i16 %40, 0
  br i1 %cmp3.not.i, label %if.else.i, label %if.then.i.get_buffer_size.exit_crit_edge

if.then.i.get_buffer_size.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_buffer_size.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg.i, align 4
  %add.ptr.i35.i = getelementptr i8, ptr %42, i32 94
  %43 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i35.i) #10, !srcloc !179
  %44 = lshr i16 %43, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %45 = and i16 %44, 127
  br label %get_buffer_size.exit

if.else9.i:                                       ; preds = %if.end
  %add.ptr.i37.i = getelementptr i8, ptr %38, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %46 = tail call i16 @llvm.bswap.i16(i16 %1) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i37.i, i16 %46) #10, !srcloc !182
  %47 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg.i, align 4
  %add.ptr.i39.i = getelementptr i8, ptr %48, i32 102
  %49 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i39.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %50 = and i16 %49, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %cmp13.not.i = icmp eq i16 %50, 0
  %51 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg.i, align 4
  br i1 %cmp13.not.i, label %if.else18.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i41.i = getelementptr i8, ptr %52, i32 104
  %53 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i41.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %54 = shl i16 %53, 4
  %narrow.i = and i16 %54, 4032
  %55 = add nuw nsw i16 %narrow.i, 64
  br label %get_buffer_size.exit

if.else18.i:                                      ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i43.i = getelementptr i8, ptr %52, i32 106
  %56 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i43.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %57 = and i16 %56, -249
  %58 = tail call i16 @llvm.bswap.i16(i16 %57) #10
  br label %get_buffer_size.exit

get_buffer_size.exit:                             ; preds = %if.else18.i, %if.then15.i, %if.else.i, %if.then.i.get_buffer_size.exit_crit_edge
  %size.0.shrunk.i = phi i16 [ %45, %if.else.i ], [ %55, %if.then15.i ], [ %58, %if.else18.i ], [ 256, %if.then.i.get_buffer_size.exit_crit_edge ]
  %size.0.i = zext i16 %size.0.shrunk.i to i32
  %59 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %req, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %61 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %actual, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %63 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %length, align 4
  %sub = sub i32 %64, %62
  %65 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %size.0.i)
  %tobool20.not = icmp eq ptr %60, null
  br i1 %tobool20.not, label %get_buffer_size.exit.if.end40_crit_edge, label %if.then21

get_buffer_size.exit.if.end40_crit_edge:          ; preds = %get_buffer_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then21:                                        ; preds = %get_buffer_size.exit
  %add.ptr = getelementptr i8, ptr %60, i32 %62
  tail call fastcc void @m66592_write_fifo(ptr noundef %3, ptr noundef %ep, ptr noundef %add.ptr, i32 noundef %65)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp22 = icmp eq i32 %65, 0
  br i1 %cmp22, label %if.then21.if.then37_crit_edge, label %lor.lhs.false

if.then21.if.then37_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37

lor.lhs.false:                                    ; preds = %if.then21
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %66 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %66, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %rem.lhs.trunc = trunc i32 %65 to i16
  %rem.rhs.trunc = trunc i56 %bf.lshr to i16
  %rem144 = urem i16 %rem.lhs.trunc, %rem.rhs.trunc
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem144)
  %cmp25.not = icmp eq i16 %rem144, 0
  br i1 %cmp25.not, label %lor.lhs.false27, label %lor.lhs.false.if.then37_crit_edge

lor.lhs.false.if.then37_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37

lor.lhs.false27:                                  ; preds = %lor.lhs.false
  %bf.cast = trunc i56 %bf.lshr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %size.0.i, i32 %bf.cast)
  %cmp33.not = icmp ne i32 %size.0.i, %bf.cast
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %size.0.i)
  %cmp35 = icmp ult i32 %sub, %size.0.i
  %or.cond = select i1 %cmp33.not, i1 %cmp35, i1 false
  br i1 %or.cond, label %lor.lhs.false27.if.then37_crit_edge, label %lor.lhs.false27.if.end40_crit_edge

lor.lhs.false27.if.end40_crit_edge:               ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

lor.lhs.false27.if.then37_crit_edge:              ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37

if.then37:                                        ; preds = %lor.lhs.false27.if.then37_crit_edge, %lor.lhs.false.if.then37_crit_edge, %if.then21.if.then37_crit_edge
  %67 = ptrtoint ptr %fifoctr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %fifoctr, align 4
  %69 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i117 = getelementptr i8, ptr %70, i32 %68
  %71 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i117) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %72 = or i16 %71, 128
  %73 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %74, i32 %68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i, i16 %72) #10, !srcloc !182
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %lor.lhs.false27.if.end40_crit_edge, %get_buffer_size.exit.if.end40_crit_edge
  %75 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %actual, align 4
  %add = add i32 %76, %65
  store i32 %add, ptr %actual, align 4
  %zero = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 6
  %77 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %77)
  %bf.load44 = load i32, ptr %zero, align 4
  %78 = and i32 %bf.load44, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool46.not = icmp eq i32 %78, 0
  br i1 %tobool46.not, label %land.lhs.true47, label %if.end40.lor.lhs.false54_crit_edge

if.end40.lor.lhs.false54_crit_edge:               ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false54

land.lhs.true47:                                  ; preds = %if.end40
  %79 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %80)
  %cmp52 = icmp eq i32 %add, %80
  br i1 %cmp52, label %land.lhs.true47.if.then65_crit_edge, label %land.lhs.true47.lor.lhs.false54_crit_edge

land.lhs.true47.lor.lhs.false54_crit_edge:        ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false54

land.lhs.true47.if.then65_crit_edge:              ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then65

lor.lhs.false54:                                  ; preds = %land.lhs.true47.lor.lhs.false54_crit_edge, %if.end40.lor.lhs.false54_crit_edge
  %maxpacket56 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %81 = ptrtoint ptr %maxpacket56 to i32
  call void @__asan_loadN_noabort(i32 %81, i32 7)
  %bf.load57 = load i56, ptr %maxpacket56, align 2
  %bf.lshr58 = lshr i56 %bf.load57, 40
  %rem60.lhs.trunc = trunc i32 %65 to i16
  %rem60.rhs.trunc = trunc i56 %bf.lshr58 to i16
  %rem60143 = urem i16 %rem60.lhs.trunc, %rem60.rhs.trunc
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem60143)
  %tobool61.not = icmp ne i16 %rem60143, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp63 = icmp eq i32 %65, 0
  %or.cond115 = or i1 %cmp63, %tobool61.not
  br i1 %or.cond115, label %lor.lhs.false54.if.then65_crit_edge, label %if.else

lor.lhs.false54.if.then65_crit_edge:              ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then65

if.then65:                                        ; preds = %lor.lhs.false54.if.then65_crit_edge, %land.lhs.true47.if.then65_crit_edge
  %82 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i119 = getelementptr i8, ptr %83, i32 48
  %84 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i119) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %85 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i120 = getelementptr i8, ptr %86, i32 48
  %87 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i120) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %88 = and i16 %87, -8
  %89 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i121 = getelementptr i8, ptr %90, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i121, i16 %88) #10, !srcloc !182
  %shl.i = shl nuw i32 1, %idxprom.i
  %conv1.i = trunc i32 %shl.i to i16
  %91 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i6.i = getelementptr i8, ptr %92, i32 54
  %93 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i) #10, !srcloc !179
  %94 = tail call i16 @llvm.bswap.i16(i16 %93) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %neg.i.i = xor i16 %conv1.i, -1
  %and.i7.i = and i16 %94, %neg.i.i
  %95 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i8.i = getelementptr i8, ptr %96, i32 54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %97 = tail call i16 @llvm.bswap.i16(i16 %and.i7.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i8.i, i16 %97) #10, !srcloc !182
  %98 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %reg.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %99, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i10.i, i16 %84) #10, !srcloc !182
  %100 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i123 = getelementptr i8, ptr %101, i32 48
  %102 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i123) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %103 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i124 = getelementptr i8, ptr %104, i32 48
  %105 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i124) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %106 = and i16 %105, -8
  %107 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i125 = getelementptr i8, ptr %108, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i125, i16 %106) #10, !srcloc !182
  %109 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i6.i129 = getelementptr i8, ptr %110, i32 58
  %111 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i129) #10, !srcloc !179
  %112 = tail call i16 @llvm.bswap.i16(i16 %111) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %or10.i.i130 = or i16 %112, %conv1.i
  %113 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i7.i = getelementptr i8, ptr %114, i32 58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %115 = tail call i16 @llvm.bswap.i16(i16 %or10.i.i130) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i7.i, i16 %115) #10, !srcloc !182
  %116 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %reg.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %117, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i9.i, i16 %102) #10, !srcloc !182
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #12
  %118 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i132 = getelementptr i8, ptr %119, i32 48
  %120 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i132) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %121 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i.i133 = getelementptr i8, ptr %122, i32 48
  %123 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i133) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %124 = and i16 %123, -8
  %125 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i.i134 = getelementptr i8, ptr %126, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i134, i16 %124) #10, !srcloc !182
  %shl.i136 = shl nuw i32 1, %idxprom.i
  %conv1.i137 = trunc i32 %shl.i136 to i16
  %127 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i6.i138 = getelementptr i8, ptr %128, i32 58
  %129 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i138) #10, !srcloc !179
  %130 = tail call i16 @llvm.bswap.i16(i16 %129) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %neg.i.i139 = xor i16 %conv1.i137, -1
  %and.i7.i140 = and i16 %130, %neg.i.i139
  %131 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %reg.i, align 4
  %add.ptr.i12.i8.i141 = getelementptr i8, ptr %132, i32 58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %133 = tail call i16 @llvm.bswap.i16(i16 %and.i7.i140) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i8.i141, i16 %133) #10, !srcloc !182
  %134 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %reg.i, align 4
  %add.ptr.i10.i142 = getelementptr i8, ptr %135, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i10.i142, i16 %120) #10, !srcloc !182
  tail call fastcc void @pipe_irq_enable(ptr noundef %3, i16 noundef zeroext %1)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then65, %if.then
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pipe_stop(ptr nocapture noundef readonly %m66592, i16 noundef zeroext %pipenum) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i16 %pipenum to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %pipenum)
  %cmp.i = icmp eq i16 %pipenum, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %reg.i.i.i = getelementptr inbounds %struct.m66592, ptr %m66592, i32 0, i32 1
  %0 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 96
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %3 = and i16 %2, -769
  %4 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %5, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i, i16 %3) #10, !srcloc !182
  br label %control_reg_set_pid.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %pipenum)
  %cmp3.i = icmp ult i16 %pipenum, 8
  br i1 %cmp3.i, label %if.then5.i, label %do.end.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = shl nuw nsw i32 %conv.i, 1
  %add.i = add nuw nsw i32 %sub.i, 110
  %reg.i.i15.i = getelementptr inbounds %struct.m66592, ptr %m66592, i32 0, i32 1
  %6 = ptrtoint ptr %reg.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg.i.i15.i, align 4
  %add.ptr.i.i16.i = getelementptr i8, ptr %7, i32 %add.i
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i16.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %9 = and i16 %8, -769
  %10 = ptrtoint ptr %reg.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg.i.i15.i, align 4
  %add.ptr.i12.i19.i = getelementptr i8, ptr %11, i32 %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i19.i, i16 %9) #10, !srcloc !182
  br label %control_reg_set_pid.exit

do.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv.i) #13
  br label %control_reg_set_pid.exit

control_reg_set_pid.exit:                         ; preds = %do.end.i, %if.then5.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pipe_irq_disable(ptr nocapture noundef readonly %m66592, i16 noundef zeroext %pipenum) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.i.i = getelementptr inbounds %struct.m66592, ptr %m66592, i32 0, i32 1
  %0 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 48
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %3 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 48
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %6 = and i16 %5, -8
  %7 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %8, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i, i16 %6) #10, !srcloc !182
  %conv.i = zext i16 %pipenum to i32
  %shl.i = shl nuw i32 1, %conv.i
  %conv1.i = trunc i32 %shl.i to i16
  %9 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i6.i = getelementptr i8, ptr %10, i32 54
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i) #10, !srcloc !179
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %neg.i.i = xor i16 %conv1.i, -1
  %and.i7.i = and i16 %12, %neg.i.i
  %13 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i8.i = getelementptr i8, ptr %14, i32 54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %15 = tail call i16 @llvm.bswap.i16(i16 %and.i7.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i8.i, i16 %15) #10, !srcloc !182
  %16 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %17, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i10.i, i16 %2) #10, !srcloc !182
  %18 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i4 = getelementptr i8, ptr %19, i32 48
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i4) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %21 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i.i5 = getelementptr i8, ptr %22, i32 48
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i5) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %24 = and i16 %23, -8
  %25 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i.i6 = getelementptr i8, ptr %26, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i6, i16 %24) #10, !srcloc !182
  %27 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i6.i10 = getelementptr i8, ptr %28, i32 56
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i10) #10, !srcloc !179
  %30 = tail call i16 @llvm.bswap.i16(i16 %29) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %and.i7.i12 = and i16 %30, %neg.i.i
  %31 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i8.i13 = getelementptr i8, ptr %32, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %33 = tail call i16 @llvm.bswap.i16(i16 %and.i7.i12) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i8.i13, i16 %33) #10, !srcloc !182
  %34 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i10.i14 = getelementptr i8, ptr %35, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i10.i14, i16 %20) #10, !srcloc !182
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @transfer_complete(ptr noundef %ep, ptr noundef %req, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pipenum = getelementptr inbounds %struct.m66592_ep, ptr %ep, i32 0, i32 4
  %0 = ptrtoint ptr %pipenum to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pipenum, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge, !prof !184

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then:                                          ; preds = %entry
  %internal_ccpl = getelementptr inbounds %struct.m66592_ep, ptr %ep, i32 0, i32 3
  %2 = ptrtoint ptr %internal_ccpl to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %internal_ccpl, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %if.then.if.end8_crit_edge, label %if.then4

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear7 = and i8 %bf.load, -65
  %4 = ptrtoint ptr %internal_ccpl to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %bf.clear7, ptr %internal_ccpl, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %queue = getelementptr inbounds %struct.m66592_request, ptr %req, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end8.list_del_init.exit_crit_edge

if.end8.list_del_init.exit_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.m66592_request, ptr %req, i32 0, i32 1, i32 1
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
  %prev.i3.i = getelementptr inbounds %struct.m66592_request, ptr %req, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %queue, ptr %prev.i3.i, align 4
  %m66592 = getelementptr inbounds %struct.m66592_ep, ptr %ep, i32 0, i32 1
  %13 = ptrtoint ptr %m66592 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %m66592, align 4
  %speed = getelementptr inbounds %struct.m66592, ptr %14, i32 0, i32 5, i32 5
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
  %queue17 = getelementptr inbounds %struct.m66592_ep, ptr %ep, i32 0, i32 2
  %19 = ptrtoint ptr %queue17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %queue17, align 4
  %cmp.i.not = icmp eq ptr %20, %queue17
  %21 = ptrtoint ptr %m66592 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %m66592, align 4
  tail call void @_raw_spin_unlock(ptr noundef %22) #10
  tail call void @usb_gadget_giveback_request(ptr noundef %ep, ptr noundef %req) #10
  %23 = ptrtoint ptr %m66592 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %m66592, align 4
  tail call void @_raw_spin_lock(ptr noundef %24) #10
  br i1 %cmp.i.not, label %list_del_init.exit.cleanup_crit_edge, label %if.then27

list_del_init.exit.cleanup_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then27:                                        ; preds = %list_del_init.exit
  %desc = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 9
  %25 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %desc, align 4
  %tobool30.not = icmp eq ptr %26, null
  br i1 %tobool30.not, label %if.then27.cleanup_crit_edge, label %if.then31

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then31:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %queue17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %queue17, align 4
  %add.ptr = getelementptr i8, ptr %28, i32 -56
  tail call fastcc void @start_packet(ptr noundef %ep, ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.then27.cleanup_crit_edge, %list_del_init.exit.cleanup_crit_edge, %if.then4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_giveback_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @start_packet(ptr nocapture noundef readonly %ep, ptr nocapture noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 9
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bEndpointAddress, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %tobool.not = icmp sgt i8 %3, -1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %m665921.i = getelementptr inbounds %struct.m66592_ep, ptr %ep, i32 0, i32 1
  %4 = ptrtoint ptr %m665921.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m665921.i, align 4
  %pipenum.i = getelementptr inbounds %struct.m66592_ep, ptr %ep, i32 0, i32 4
  %6 = ptrtoint ptr %pipenum.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %pipenum.i, align 2
  %idxprom.i.i = zext i16 %7 to i32
  %arrayidx.i.i = getelementptr %struct.m66592, ptr %5, i32 0, i32 8, i32 %idxprom.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  %use_dma.i.i = getelementptr inbounds %struct.m66592_ep, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %use_dma.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i.i = load i8, ptr %use_dma.i.i, align 4
  %11 = and i8 %bf.load.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.pipe_change.exit.i_crit_edge

if.then.pipe_change.exit.i_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %pipe_change.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %fifosel.i.i = getelementptr inbounds %struct.m66592_ep, ptr %9, i32 0, i32 7
  %12 = ptrtoint ptr %fifosel.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fifosel.i.i, align 4
  %reg.i.i.i.i = getelementptr inbounds %struct.m66592, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %15, i32 %13
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %17 = and i16 %16, -1793
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #10
  %or10.i.i.i = or i16 %18, %7
  %19 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i12.i.i.i = getelementptr i8, ptr %20, i32 %13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %21 = tail call i16 @llvm.bswap.i16(i16 %or10.i.i.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i, i16 %21) #10, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748) #10
  %pdata.i.i = getelementptr inbounds %struct.m66592, ptr %5, i32 0, i32 3
  %23 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdata.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load1.i.i = load i8, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load1.i.i)
  %tobool4.not.i.i = icmp sgt i8 %bf.load1.i.i, -1
  %..i.i = select i1 %tobool4.not.i.i, i16 1024, i16 2048
  %26 = ptrtoint ptr %fifosel.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fifosel.i.i, align 4
  %28 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i.i16.i.i = getelementptr i8, ptr %29, i32 %27
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i16.i.i) #10, !srcloc !179
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %or10.i17.i.i = or i16 %31, %..i.i
  %32 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i12.i18.i.i = getelementptr i8, ptr %33, i32 %27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %34 = tail call i16 @llvm.bswap.i16(i16 %or10.i17.i.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i18.i.i, i16 %34) #10, !srcloc !182
  br label %pipe_change.exit.i

pipe_change.exit.i:                               ; preds = %if.end.i.i, %if.then.pipe_change.exit.i_crit_edge
  %35 = ptrtoint ptr %pipenum.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %pipenum.i, align 2
  %reg.i.i.i = getelementptr inbounds %struct.m66592, ptr %5, i32 0, i32 1
  %37 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %38, i32 48
  %39 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %40 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i.i17.i = getelementptr i8, ptr %41, i32 48
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i17.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %43 = and i16 %42, -8
  %44 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i12.i.i18.i = getelementptr i8, ptr %45, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i18.i, i16 %43) #10, !srcloc !182
  %conv.i.i = zext i16 %36 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %conv1.i.i = trunc i32 %shl.i.i to i16
  %46 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i6.i.i = getelementptr i8, ptr %47, i32 58
  %48 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i.i) #10, !srcloc !179
  %49 = tail call i16 @llvm.bswap.i16(i16 %48) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %neg.i.i.i = xor i16 %conv1.i.i, -1
  %and.i7.i.i = and i16 %49, %neg.i.i.i
  %50 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i12.i8.i.i = getelementptr i8, ptr %51, i32 58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %52 = tail call i16 @llvm.bswap.i16(i16 %and.i7.i.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i8.i.i, i16 %52) #10, !srcloc !182
  %53 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i10.i.i = getelementptr i8, ptr %54, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i10.i.i, i16 %39) #10, !srcloc !182
  %55 = ptrtoint ptr %pipenum.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %pipenum.i, align 2
  %conv.i.i.i = zext i16 %56 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %cmp.i.i.i = icmp eq i16 %56, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %pipe_change.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %58, i32 96
  %59 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %60 = and i16 %59, -769
  %61 = or i16 %60, 256
  %62 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i12.i.i.i.i = getelementptr i8, ptr %63, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i.i, i16 %61) #10, !srcloc !182
  br label %pipe_start.exit.i

if.else.i.i.i:                                    ; preds = %pipe_change.exit.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %56)
  %cmp3.i.i.i = icmp ult i16 %56, 8
  br i1 %cmp3.i.i.i, label %if.then5.i.i.i, label %do.end.i.i.i

if.then5.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i = shl nuw nsw i32 %conv.i.i.i, 1
  %add.i.i.i = add nuw nsw i32 %sub.i.i.i, 110
  %64 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i16.i.i.i = getelementptr i8, ptr %65, i32 %add.i.i.i
  %66 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i16.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %67 = and i16 %66, -769
  %68 = or i16 %67, 256
  %69 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i12.i19.i.i.i = getelementptr i8, ptr %70, i32 %add.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i19.i.i.i, i16 %68) #10, !srcloc !182
  br label %pipe_start.exit.i

do.end.i.i.i:                                     ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv.i.i.i) #13
  br label %pipe_start.exit.i

pipe_start.exit.i:                                ; preds = %do.end.i.i.i, %if.then5.i.i.i, %if.then.i.i.i
  %fifoctr.i = getelementptr inbounds %struct.m66592_ep, ptr %ep, i32 0, i32 8
  %71 = ptrtoint ptr %fifoctr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %fifoctr.i, align 4
  %73 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %74, i32 %72
  %75 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %76 = and i16 %75, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %cmp.i = icmp eq i16 %76, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !prof !184

if.then.i:                                        ; preds = %pipe_start.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %pipenum.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %pipenum.i, align 2
  tail call fastcc void @pipe_irq_enable(ptr noundef %5, i16 noundef zeroext %78) #10
  br label %if.end

if.else.i:                                        ; preds = %pipe_start.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @irq_packet_write(ptr noundef %ep, ptr noundef %req) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @start_packet_read(ptr noundef %ep, ptr noundef %req)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.else.i, %if.then.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @start_packet_read(ptr nocapture noundef readonly %ep, ptr nocapture noundef readonly %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %m665921 = getelementptr inbounds %struct.m66592_ep, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %m665921 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m665921, align 4
  %pipenum2 = getelementptr inbounds %struct.m66592_ep, ptr %ep, i32 0, i32 4
  %2 = ptrtoint ptr %pipenum2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pipenum2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp = icmp eq i16 %3, 0
  br i1 %cmp, label %pipe_start.exit, label %if.else

pipe_start.exit:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %reg.i.i = getelementptr inbounds %struct.m66592, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 30
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %7 = and i16 %6, -9985
  %8 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %9, i32 30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i, i16 %7) #10, !srcloc !182
  %fifoctr = getelementptr inbounds %struct.m66592_ep, ptr %ep, i32 0, i32 8
  %10 = ptrtoint ptr %fifoctr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fifoctr, align 4
  %12 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 64) #10, !srcloc !182
  %14 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %15, i32 96
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %17 = and i16 %16, -769
  %18 = or i16 %17, 256
  %19 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i.i.i = getelementptr i8, ptr %20, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i, i16 %18) #10, !srcloc !182
  br label %if.end18

if.else:                                          ; preds = %entry
  %use_dma = getelementptr inbounds %struct.m66592_ep, ptr %ep, i32 0, i32 3
  %21 = ptrtoint ptr %use_dma to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %use_dma, align 4
  %22 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  br i1 %tobool.not, label %if.else.if.else.i.i57_crit_edge, label %if.then5

if.else.if.else.i.i57_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = zext i16 %3 to i32
  br label %if.else.i.i57

if.then5:                                         ; preds = %if.else
  %fifosel = getelementptr inbounds %struct.m66592_ep, ptr %ep, i32 0, i32 7
  %23 = ptrtoint ptr %fifosel to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fifosel, align 4
  %reg.i.i41 = getelementptr inbounds %struct.m66592, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %reg.i.i41 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg.i.i41, align 4
  %add.ptr.i.i42 = getelementptr i8, ptr %26, i32 %24
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i42) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %28 = or i16 %27, 1
  %29 = ptrtoint ptr %reg.i.i41 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg.i.i41, align 4
  %add.ptr.i12.i43 = getelementptr i8, ptr %30, i32 %24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i43, i16 %28) #10, !srcloc !182
  %idxprom.i = zext i16 %3 to i32
  %arrayidx.i = getelementptr %struct.m66592, ptr %1, i32 0, i32 8, i32 %idxprom.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 4
  %use_dma.i = getelementptr inbounds %struct.m66592_ep, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %use_dma.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.i = load i8, ptr %use_dma.i, align 4
  %34 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then5.pipe_change.exit_crit_edge

if.then5.pipe_change.exit_crit_edge:              ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %pipe_change.exit

if.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %fifosel.i = getelementptr inbounds %struct.m66592_ep, ptr %32, i32 0, i32 7
  %35 = ptrtoint ptr %fifosel.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fifosel.i, align 4
  %37 = ptrtoint ptr %reg.i.i41 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg.i.i41, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %38, i32 %36
  %39 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %40 = and i16 %39, -1793
  %41 = tail call i16 @llvm.bswap.i16(i16 %40) #10
  %or10.i.i = or i16 %41, %3
  %42 = ptrtoint ptr %reg.i.i41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg.i.i41, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %43, i32 %36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %44 = tail call i16 @llvm.bswap.i16(i16 %or10.i.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i, i16 %44) #10, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748) #10
  %pdata.i = getelementptr inbounds %struct.m66592, ptr %1, i32 0, i32 3
  %46 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdata.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load1.i = load i8, ptr %47, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load1.i)
  %tobool4.not.i = icmp sgt i8 %bf.load1.i, -1
  %..i = select i1 %tobool4.not.i, i16 1024, i16 2048
  %49 = ptrtoint ptr %fifosel.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %fifosel.i, align 4
  %51 = ptrtoint ptr %reg.i.i41 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg.i.i41, align 4
  %add.ptr.i.i16.i = getelementptr i8, ptr %52, i32 %50
  %53 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i16.i) #10, !srcloc !179
  %54 = tail call i16 @llvm.bswap.i16(i16 %53) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %or10.i17.i = or i16 %54, %..i
  %55 = ptrtoint ptr %reg.i.i41 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %reg.i.i41, align 4
  %add.ptr.i12.i18.i = getelementptr i8, ptr %56, i32 %50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %57 = tail call i16 @llvm.bswap.i16(i16 %or10.i17.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i18.i, i16 %57) #10, !srcloc !182
  br label %pipe_change.exit

pipe_change.exit:                                 ; preds = %if.end.i, %if.then5.pipe_change.exit_crit_edge
  %58 = ptrtoint ptr %fifosel to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %fifosel, align 4
  %60 = ptrtoint ptr %reg.i.i41 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %reg.i.i41, align 4
  %add.ptr.i.i45 = getelementptr i8, ptr %61, i32 %59
  %62 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i45) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %63 = or i16 %62, 2
  %64 = ptrtoint ptr %reg.i.i41 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reg.i.i41, align 4
  %add.ptr.i12.i47 = getelementptr i8, ptr %65, i32 %59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i47, i16 %63) #10, !srcloc !182
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %66 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %length, align 4
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %68 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %68, i32 7)
  %bf.load9 = load i56, ptr %maxpacket, align 2
  %bf.lshr10 = lshr i56 %bf.load9, 40
  %bf.cast11 = trunc i56 %bf.lshr10 to i32
  %add = add i32 %67, -1
  %sub = add i32 %add, %bf.cast11
  %div = udiv i32 %sub, %bf.cast11
  %conv17 = trunc i32 %div to i16
  %fifotrn = getelementptr inbounds %struct.m66592_ep, ptr %ep, i32 0, i32 9
  %69 = ptrtoint ptr %fifotrn to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %fifotrn, align 4
  %71 = ptrtoint ptr %reg.i.i41 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %reg.i.i41, align 4
  %add.ptr.i49 = getelementptr i8, ptr %72, i32 %70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %73 = tail call i16 @llvm.bswap.i16(i16 %conv17) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i49, i16 %73) #10, !srcloc !182
  br label %if.else.i.i57

if.else.i.i57:                                    ; preds = %pipe_change.exit, %if.else.if.else.i.i57_crit_edge
  %conv.i.i50.pre-phi = phi i32 [ %.pre, %if.else.if.else.i.i57_crit_edge ], [ %idxprom.i, %pipe_change.exit ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %3)
  %cmp3.i.i56 = icmp ult i16 %3, 8
  br i1 %cmp3.i.i56, label %if.then5.i.i63, label %do.end.i.i65

if.then5.i.i63:                                   ; preds = %if.else.i.i57
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i58 = shl nuw nsw i32 %conv.i.i50.pre-phi, 1
  %add.i.i59 = add nuw nsw i32 %sub.i.i58, 110
  %reg.i.i15.i.i60 = getelementptr inbounds %struct.m66592, ptr %1, i32 0, i32 1
  %74 = ptrtoint ptr %reg.i.i15.i.i60 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %reg.i.i15.i.i60, align 4
  %add.ptr.i.i16.i.i61 = getelementptr i8, ptr %75, i32 %add.i.i59
  %76 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i16.i.i61) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %77 = and i16 %76, -769
  %78 = or i16 %77, 256
  %79 = ptrtoint ptr %reg.i.i15.i.i60 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %reg.i.i15.i.i60, align 4
  %add.ptr.i12.i19.i.i62 = getelementptr i8, ptr %80, i32 %add.i.i59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i19.i.i62, i16 %78) #10, !srcloc !182
  br label %if.end18

do.end.i.i65:                                     ; preds = %if.else.i.i57
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv.i.i50.pre-phi) #13
  br label %if.end18

if.end18:                                         ; preds = %do.end.i.i65, %if.then5.i.i63, %pipe_start.exit
  %.sink = phi i16 [ 0, %pipe_start.exit ], [ %3, %if.then5.i.i63 ], [ %3, %do.end.i.i65 ]
  tail call fastcc void @pipe_irq_enable(ptr noundef %1, i16 noundef zeroext %.sink)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pipe_irq_enable(ptr nocapture noundef readonly %m66592, i16 noundef zeroext %pipenum) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.i.i = getelementptr inbounds %struct.m66592, ptr %m66592, i32 0, i32 1
  %0 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 48
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %3 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 48
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %6 = and i16 %5, -8
  %7 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %8, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i, i16 %6) #10, !srcloc !182
  %conv.i = zext i16 %pipenum to i32
  %shl.i = shl nuw i32 1, %conv.i
  %conv1.i = trunc i32 %shl.i to i16
  %9 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i6.i = getelementptr i8, ptr %10, i32 54
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i) #10, !srcloc !179
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %or10.i.i = or i16 %12, %conv1.i
  %13 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i7.i = getelementptr i8, ptr %14, i32 54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %15 = tail call i16 @llvm.bswap.i16(i16 %or10.i.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i7.i, i16 %15) #10, !srcloc !182
  %16 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %17, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i9.i, i16 %2) #10, !srcloc !182
  %18 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i4 = getelementptr i8, ptr %19, i32 48
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i4) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %21 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i.i5 = getelementptr i8, ptr %22, i32 48
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i5) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %24 = and i16 %23, -8
  %25 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i.i6 = getelementptr i8, ptr %26, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i6, i16 %24) #10, !srcloc !182
  %27 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i6.i10 = getelementptr i8, ptr %28, i32 56
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i10) #10, !srcloc !179
  %30 = tail call i16 @llvm.bswap.i16(i16 %29) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %or10.i.i11 = or i16 %30, %conv1.i
  %31 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i7.i12 = getelementptr i8, ptr %32, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %33 = tail call i16 @llvm.bswap.i16(i16 %or10.i.i11) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i7.i12, i16 %33) #10, !srcloc !182
  %34 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i9.i13 = getelementptr i8, ptr %35, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i9.i13, i16 %20) #10, !srcloc !182
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @m66592_write_fifo(ptr nocapture noundef readonly %m66592, ptr nocapture noundef readonly %ep, ptr noundef %buf, i32 noundef %len) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %reg = getelementptr inbounds %struct.m66592, ptr %m66592, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %fifoaddr1 = getelementptr inbounds %struct.m66592_ep, ptr %ep, i32 0, i32 6
  %2 = ptrtoint ptr %fifoaddr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fifoaddr1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  %pdata = getelementptr inbounds %struct.m66592, ptr %m66592, i32 0, i32 3
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.else12, label %if.then

if.then:                                          ; preds = %entry
  %div66 = lshr i32 %len, 2
  tail call void @__raw_writesl(ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %div66) #10
  %and = and i32 %len, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then.if.end36_crit_edge, label %for.body.preheader

if.then.if.end36_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

for.body.preheader:                               ; preds = %if.then
  %mul = and i32 %len, -4
  %add.ptr4 = getelementptr i8, ptr %buf, i32 %mul
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 10
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool6.not = icmp eq i16 %9, 0
  %10 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr4, align 1
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr8 = getelementptr i8, ptr %add.ptr, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8, i8 %11) #10, !srcloc !186
  br label %for.inc

if.else:                                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %11) #10, !srcloc !186
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %exitcond.not = icmp eq i32 %and, 1
  br i1 %exitcond.not, label %for.inc.if.end36_crit_edge, label %for.body.1

for.inc.if.end36_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

for.body.1:                                       ; preds = %for.inc
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %13, i32 10
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.1) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool6.not.1 = icmp eq i16 %14, 0
  %arrayidx9.1 = getelementptr i8, ptr %add.ptr4, i32 1
  %15 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx9.1, align 1
  br i1 %tobool6.not.1, label %if.else.1, label %if.then7.1

if.then7.1:                                       ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr8.1 = getelementptr i8, ptr %add.ptr, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.1, i8 %16) #10, !srcloc !186
  br label %for.inc.1

if.else.1:                                        ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr10.1 = getelementptr i8, ptr %add.ptr, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10.1, i8 %16) #10, !srcloc !186
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.else.1, %if.then7.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %exitcond.not.1 = icmp eq i32 %and, 2
  br i1 %exitcond.not.1, label %for.inc.1.if.end36_crit_edge, label %for.body.2

for.inc.1.if.end36_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

for.body.2:                                       ; preds = %for.inc.1
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %18, i32 10
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.2) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool6.not.2 = icmp eq i16 %19, 0
  %arrayidx9.2 = getelementptr i8, ptr %add.ptr4, i32 2
  %20 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx9.2, align 1
  br i1 %tobool6.not.2, label %if.else.2, label %if.then7.2

if.then7.2:                                       ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr8.2 = getelementptr i8, ptr %add.ptr, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.2, i8 %21) #10, !srcloc !186
  br label %if.end36

if.else.2:                                        ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr10.2 = getelementptr i8, ptr %add.ptr, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10.2, i8 %21) #10, !srcloc !186
  br label %if.end36

if.else12:                                        ; preds = %entry
  %and13 = and i32 %len, 1
  %div1465 = lshr i32 %len, 1
  tail call void @__raw_writesw(ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %div1465) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool15.not = icmp eq i32 %and13, 0
  br i1 %tobool15.not, label %if.else12.if.end36_crit_edge, label %if.then16

if.else12.if.end36_crit_edge:                     ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then16:                                        ; preds = %if.else12
  %mul17 = and i32 %len, -2
  %add.ptr18 = getelementptr i8, ptr %buf, i32 %mul17
  %22 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdata, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load20 = load i8, ptr %23, align 4
  %25 = and i8 %bf.load20, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool23.not = icmp eq i8 %25, 0
  br i1 %tobool23.not, label %if.then16.if.end25_crit_edge, label %if.then24

if.then16.if.end25_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then24:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %fifosel = getelementptr inbounds %struct.m66592_ep, ptr %ep, i32 0, i32 7
  %26 = ptrtoint ptr %fifosel to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fifosel, align 4
  %28 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg, align 4
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 %27
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %31 = and i16 %30, -5
  %32 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %33, i32 %27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i, i16 %31) #10, !srcloc !182
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.then16.if.end25_crit_edge
  %34 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %add.ptr18, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %35) #10, !srcloc !186
  %36 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdata, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load27 = load i8, ptr %37, align 4
  %39 = and i8 %bf.load27, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool31.not = icmp eq i8 %39, 0
  br i1 %tobool31.not, label %if.end25.if.end36_crit_edge, label %if.then32

if.end25.if.end36_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then32:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %fifosel33 = getelementptr inbounds %struct.m66592_ep, ptr %ep, i32 0, i32 7
  %40 = ptrtoint ptr %fifosel33 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fifosel33, align 4
  %42 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg, align 4
  %add.ptr.i.i68 = getelementptr i8, ptr %43, i32 %41
  %44 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i68) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %45 = or i16 %44, 4
  %46 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg, align 4
  %add.ptr.i12.i69 = getelementptr i8, ptr %47, i32 %41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i69, i16 %45) #10, !srcloc !182
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.end25.if.end36_crit_edge, %if.else12.if.end36_crit_edge, %if.else.2, %if.then7.2, %for.inc.1.if.end36_crit_edge, %for.inc.if.end36_crit_edge, %if.then.if.end36_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irq_ep0_write(ptr nocapture noundef readonly %ep, ptr nocapture noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pipenum1 = getelementptr inbounds %struct.m66592_ep, ptr %ep, i32 0, i32 4
  %0 = ptrtoint ptr %pipenum1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pipenum1, align 2
  %m665922 = getelementptr inbounds %struct.m66592_ep, ptr %ep, i32 0, i32 1
  %2 = ptrtoint ptr %m665922 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m665922, align 4
  %idxprom.i = zext i16 %1 to i32
  %arrayidx.i = getelementptr %struct.m66592, ptr %3, i32 0, i32 8, i32 %idxprom.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %use_dma.i = getelementptr inbounds %struct.m66592_ep, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %use_dma.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %use_dma.i, align 4
  %7 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.pipe_change.exit_crit_edge

entry.pipe_change.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %pipe_change.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fifosel.i = getelementptr inbounds %struct.m66592_ep, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %fifosel.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fifosel.i, align 4
  %reg.i.i.i = getelementptr inbounds %struct.m66592, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 %9
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %13 = and i16 %12, -1793
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #10
  %or10.i.i = or i16 %14, %1
  %15 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %16, i32 %9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %17 = tail call i16 @llvm.bswap.i16(i16 %or10.i.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i, i16 %17) #10, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #10
  %pdata.i = getelementptr inbounds %struct.m66592, ptr %3, i32 0, i32 3
  %19 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdata.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load1.i = load i8, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load1.i)
  %tobool4.not.i = icmp sgt i8 %bf.load1.i, -1
  %..i = select i1 %tobool4.not.i, i16 1024, i16 2048
  %22 = ptrtoint ptr %fifosel.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fifosel.i, align 4
  %24 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i16.i = getelementptr i8, ptr %25, i32 %23
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i16.i) #10, !srcloc !179
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %or10.i17.i = or i16 %27, %..i
  %28 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i12.i18.i = getelementptr i8, ptr %29, i32 %23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %30 = tail call i16 @llvm.bswap.i16(i16 %or10.i17.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i18.i, i16 %30) #10, !srcloc !182
  br label %pipe_change.exit

pipe_change.exit:                                 ; preds = %if.end.i, %entry.pipe_change.exit_crit_edge
  %fifosel = getelementptr inbounds %struct.m66592_ep, ptr %ep, i32 0, i32 7
  %31 = ptrtoint ptr %fifosel to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fifosel, align 4
  %reg.i.i = getelementptr inbounds %struct.m66592, ptr %3, i32 0, i32 1
  %33 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 %32
  %35 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %36 = or i16 %35, 8192
  %37 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %38, i32 %32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i, i16 %36) #10, !srcloc !182
  %fifoctr = getelementptr inbounds %struct.m66592_ep, ptr %ep, i32 0, i32 8
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %pipe_change.exit
  %i.0 = phi i32 [ 0, %pipe_change.exit ], [ %inc, %if.end.do.body_crit_edge ]
  %39 = ptrtoint ptr %fifoctr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fifoctr, align 4
  %41 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %42, i32 %40
  %43 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  call void @__sanitizer_cov_trace_const_cmp4(i32 100001, i32 %i.0)
  %exitcond = icmp eq i32 %i.0, 100001
  br i1 %exitcond, label %do.end, label %if.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #13
  br label %cleanup

if.end:                                           ; preds = %do.body
  %inc = add nuw nsw i32 %i.0, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748) #10
  %45 = and i16 %43, 32
  %cmp7 = icmp eq i16 %45, 0
  br i1 %cmp7, label %if.end.do.body_crit_edge, label %do.end9

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.i = icmp eq i16 %1, 0
  %46 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg.i.i, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else9.i

if.then.i:                                        ; preds = %do.end9
  %add.ptr.i.i107 = getelementptr i8, ptr %47, i32 92
  %48 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i107) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %49 = and i16 %48, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %cmp3.not.i = icmp eq i16 %49, 0
  br i1 %cmp3.not.i, label %if.else.i, label %if.then.i.get_buffer_size.exit_crit_edge

if.then.i.get_buffer_size.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_buffer_size.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i35.i = getelementptr i8, ptr %51, i32 94
  %52 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i35.i) #10, !srcloc !179
  %53 = lshr i16 %52, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %54 = and i16 %53, 127
  br label %get_buffer_size.exit

if.else9.i:                                       ; preds = %do.end9
  %add.ptr.i37.i = getelementptr i8, ptr %47, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %55 = tail call i16 @llvm.bswap.i16(i16 %1) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i37.i, i16 %55) #10, !srcloc !182
  %56 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i39.i = getelementptr i8, ptr %57, i32 102
  %58 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i39.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %59 = and i16 %58, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %cmp13.not.i = icmp eq i16 %59, 0
  %60 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %reg.i.i, align 4
  br i1 %cmp13.not.i, label %if.else18.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i41.i = getelementptr i8, ptr %61, i32 104
  %62 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i41.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %63 = shl i16 %62, 4
  %narrow.i = and i16 %63, 4032
  %64 = add nuw nsw i16 %narrow.i, 64
  br label %get_buffer_size.exit

if.else18.i:                                      ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i43.i = getelementptr i8, ptr %61, i32 106
  %65 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i43.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %66 = and i16 %65, -249
  %67 = tail call i16 @llvm.bswap.i16(i16 %66) #10
  br label %get_buffer_size.exit

get_buffer_size.exit:                             ; preds = %if.else18.i, %if.then15.i, %if.else.i, %if.then.i.get_buffer_size.exit_crit_edge
  %size.0.shrunk.i = phi i16 [ %54, %if.else.i ], [ %64, %if.then15.i ], [ %67, %if.else18.i ], [ 256, %if.then.i.get_buffer_size.exit_crit_edge ]
  %size.0.i = zext i16 %size.0.shrunk.i to i32
  %68 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %req, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %70 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %actual, align 4
  %add.ptr = getelementptr i8, ptr %69, i32 %71
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %72 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %length, align 4
  %sub = sub i32 %73, %71
  %74 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %size.0.i)
  %tobool.not = icmp eq ptr %69, null
  br i1 %tobool.not, label %get_buffer_size.exit.if.end35_crit_edge, label %if.then22

get_buffer_size.exit.if.end35_crit_edge:          ; preds = %get_buffer_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then22:                                        ; preds = %get_buffer_size.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cond = icmp eq i32 %74, 0
  br i1 %cond, label %if.then22.if.then32_crit_edge, label %if.then25

if.then22.if.then32_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32

if.then25:                                        ; preds = %if.then22
  tail call fastcc void @m66592_write_fifo(ptr noundef %3, ptr noundef %ep, ptr noundef %add.ptr, i32 noundef %74)
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %75 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %75, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %rem.lhs.trunc = trunc i32 %74 to i16
  %rem.rhs.trunc = trunc i56 %bf.lshr to i16
  %rem150 = urem i16 %rem.lhs.trunc, %rem.rhs.trunc
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem150)
  %cmp30.not = icmp eq i16 %rem150, 0
  br i1 %cmp30.not, label %if.then25.if.end35_crit_edge, label %if.then25.if.then32_crit_edge

if.then25.if.then32_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32

if.then25.if.end35_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then32:                                        ; preds = %if.then25.if.then32_crit_edge, %if.then22.if.then32_crit_edge
  %76 = ptrtoint ptr %fifoctr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %fifoctr, align 4
  %78 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i109 = getelementptr i8, ptr %79, i32 %77
  %80 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i109) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %81 = or i16 %80, 128
  %82 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i111 = getelementptr i8, ptr %83, i32 %77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i111, i16 %81) #10, !srcloc !182
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.then25.if.end35_crit_edge, %get_buffer_size.exit.if.end35_crit_edge
  %84 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %actual, align 4
  %add = add i32 %85, %74
  store i32 %add, ptr %actual, align 4
  %zero = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 6
  %86 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %86)
  %bf.load39 = load i32, ptr %zero, align 4
  %87 = and i32 %bf.load39, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool41.not = icmp eq i32 %87, 0
  br i1 %tobool41.not, label %land.lhs.true, label %if.end35.lor.lhs.false48_crit_edge

if.end35.lor.lhs.false48_crit_edge:               ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false48

land.lhs.true:                                    ; preds = %if.end35
  %88 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %89)
  %cmp46 = icmp eq i32 %add, %89
  br i1 %cmp46, label %land.lhs.true.if.then59_crit_edge, label %land.lhs.true.lor.lhs.false48_crit_edge

land.lhs.true.lor.lhs.false48_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false48

land.lhs.true.if.then59_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then59

lor.lhs.false48:                                  ; preds = %land.lhs.true.lor.lhs.false48_crit_edge, %if.end35.lor.lhs.false48_crit_edge
  %maxpacket50 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %90 = ptrtoint ptr %maxpacket50 to i32
  call void @__asan_loadN_noabort(i32 %90, i32 7)
  %bf.load51 = load i56, ptr %maxpacket50, align 2
  %bf.lshr52 = lshr i56 %bf.load51, 40
  %rem54.lhs.trunc = trunc i32 %74 to i16
  %rem54.rhs.trunc = trunc i56 %bf.lshr52 to i16
  %rem54149 = urem i16 %rem54.lhs.trunc, %rem54.rhs.trunc
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem54149)
  %tobool55.not = icmp ne i16 %rem54149, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp57 = icmp eq i32 %74, 0
  %or.cond = or i1 %cmp57, %tobool55.not
  br i1 %or.cond, label %lor.lhs.false48.if.then59_crit_edge, label %if.else

lor.lhs.false48.if.then59_crit_edge:              ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then59

if.then59:                                        ; preds = %lor.lhs.false48.if.then59_crit_edge, %land.lhs.true.if.then59_crit_edge
  %91 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i113 = getelementptr i8, ptr %92, i32 48
  %93 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i113) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %94 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i.i114 = getelementptr i8, ptr %95, i32 48
  %96 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i114) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %97 = and i16 %96, -8
  %98 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i.i115 = getelementptr i8, ptr %99, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i115, i16 %97) #10, !srcloc !182
  %shl.i = shl nuw i32 1, %idxprom.i
  %conv1.i = trunc i32 %shl.i to i16
  %100 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i6.i = getelementptr i8, ptr %101, i32 54
  %102 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i) #10, !srcloc !179
  %103 = tail call i16 @llvm.bswap.i16(i16 %102) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %neg.i.i = xor i16 %conv1.i, -1
  %and.i7.i = and i16 %103, %neg.i.i
  %104 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i8.i = getelementptr i8, ptr %105, i32 54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %106 = tail call i16 @llvm.bswap.i16(i16 %and.i7.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i8.i, i16 %106) #10, !srcloc !182
  %107 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %108, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i10.i, i16 %93) #10, !srcloc !182
  %109 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i117 = getelementptr i8, ptr %110, i32 48
  %111 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i117) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %112 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i.i118 = getelementptr i8, ptr %113, i32 48
  %114 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i118) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %115 = and i16 %114, -8
  %116 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i.i119 = getelementptr i8, ptr %117, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i119, i16 %115) #10, !srcloc !182
  %118 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i6.i123 = getelementptr i8, ptr %119, i32 58
  %120 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i123) #10, !srcloc !179
  %121 = tail call i16 @llvm.bswap.i16(i16 %120) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %and.i7.i125 = and i16 %121, %neg.i.i
  %122 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i8.i126 = getelementptr i8, ptr %123, i32 58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %124 = tail call i16 @llvm.bswap.i16(i16 %and.i7.i125) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i8.i126, i16 %124) #10, !srcloc !182
  %125 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i10.i127 = getelementptr i8, ptr %126, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i10.i127, i16 %111) #10, !srcloc !182
  br label %if.end60

if.else:                                          ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #12
  %127 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i129 = getelementptr i8, ptr %128, i32 48
  %129 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i129) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %130 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i.i130 = getelementptr i8, ptr %131, i32 48
  %132 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i130) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %133 = and i16 %132, -8
  %134 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i.i131 = getelementptr i8, ptr %135, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i131, i16 %133) #10, !srcloc !182
  %shl.i133 = shl nuw i32 1, %idxprom.i
  %conv1.i134 = trunc i32 %shl.i133 to i16
  %136 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i6.i135 = getelementptr i8, ptr %137, i32 54
  %138 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i135) #10, !srcloc !179
  %139 = tail call i16 @llvm.bswap.i16(i16 %138) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %neg.i.i136 = xor i16 %conv1.i134, -1
  %and.i7.i137 = and i16 %139, %neg.i.i136
  %140 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i8.i138 = getelementptr i8, ptr %141, i32 54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %142 = tail call i16 @llvm.bswap.i16(i16 %and.i7.i137) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i8.i138, i16 %142) #10, !srcloc !182
  %143 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i10.i139 = getelementptr i8, ptr %144, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i10.i139, i16 %129) #10, !srcloc !182
  %145 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i141 = getelementptr i8, ptr %146, i32 48
  %147 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i141) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %148 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i.i142 = getelementptr i8, ptr %149, i32 48
  %150 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i142) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %151 = and i16 %150, -8
  %152 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i.i143 = getelementptr i8, ptr %153, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i143, i16 %151) #10, !srcloc !182
  %154 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i6.i147 = getelementptr i8, ptr %155, i32 58
  %156 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i6.i147) #10, !srcloc !179
  %157 = tail call i16 @llvm.bswap.i16(i16 %156) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %or10.i.i148 = or i16 %157, %conv1.i134
  %158 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i7.i = getelementptr i8, ptr %159, i32 58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %160 = tail call i16 @llvm.bswap.i16(i16 %or10.i.i148) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i7.i, i16 %160) #10, !srcloc !182
  %161 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %162, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i9.i, i16 %147) #10, !srcloc !182
  br label %if.end60

if.end60:                                         ; preds = %if.else, %if.then59
  br i1 %cmp.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  %163 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %164, i32 96
  %165 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %166 = and i16 %165, -769
  %167 = or i16 %166, 256
  %168 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i.i.i = getelementptr i8, ptr %169, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i, i16 %167) #10, !srcloc !182
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %1)
  %cmp3.i.i = icmp ult i16 %1, 8
  br i1 %cmp3.i.i, label %if.then5.i.i, label %do.end.i.i

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = shl nuw nsw i32 %idxprom.i, 1
  %add.i.i = add nuw nsw i32 %sub.i.i, 110
  %170 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i16.i.i = getelementptr i8, ptr %171, i32 %add.i.i
  %172 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i16.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %173 = and i16 %172, -769
  %174 = or i16 %173, 256
  %175 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i19.i.i = getelementptr i8, ptr %176, i32 %add.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i19.i.i, i16 %174) #10, !srcloc !182
  br label %cleanup

do.end.i.i:                                       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %idxprom.i) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end.i.i, %if.then5.i.i, %if.then.i.i, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m66592_queue(ptr noundef %_ep, ptr noundef %_req, i32 noundef %gfp_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %m66592 = getelementptr inbounds %struct.m66592_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %m66592 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m66592, align 4
  %speed = getelementptr inbounds %struct.m66592, ptr %1, i32 0, i32 5, i32 5
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body4:                                         ; preds = %entry
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %queue = getelementptr inbounds %struct.m66592_ep, ptr %_ep, i32 0, i32 2
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %5, %queue
  %queue14 = getelementptr inbounds %struct.m66592_request, ptr %_req, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.m66592_ep, ptr %_ep, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue14, ptr noundef %7, ptr noundef %queue) #10
  br i1 %call.i.i, label %if.end.i.i, label %do.body4.list_add_tail.exit_crit_edge

do.body4.list_add_tail.exit_crit_edge:            ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %queue14, ptr %prev.i, align 4
  %9 = ptrtoint ptr %queue14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %queue, ptr %queue14, align 4
  %prev3.i.i = getelementptr inbounds %struct.m66592_request, ptr %_req, i32 0, i32 1, i32 1
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
  %16 = ptrtoint ptr %m66592 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %m66592, align 4
  %reg.i.i = getelementptr inbounds %struct.m66592, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 64
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #10, !srcloc !179
  %21 = lshr i16 %20, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %22 = and i16 %21, 7
  %conv2.i = zext i16 %22 to i32
  %23 = zext i32 %conv2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %conv2.i, label %do.end.i [
    i32 1, label %sw.bb.i
    i32 3, label %sw.bb3.i
    i32 5, label %sw.bb4.i
  ]

sw.bb.i:                                          ; preds = %if.then21
  %24 = ptrtoint ptr %m66592 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %m66592, align 4
  %pipenum.i.i = getelementptr inbounds %struct.m66592_ep, ptr %_ep, i32 0, i32 4
  %26 = ptrtoint ptr %pipenum.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %pipenum.i.i, align 2
  %idxprom.i.i.i = zext i16 %27 to i32
  %arrayidx.i.i.i = getelementptr %struct.m66592, ptr %25, i32 0, i32 8, i32 %idxprom.i.i.i
  %28 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i.i.i, align 4
  %use_dma.i.i.i = getelementptr inbounds %struct.m66592_ep, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %use_dma.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load.i.i.i = load i8, ptr %use_dma.i.i.i, align 4
  %31 = and i8 %bf.load.i.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i.i.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %sw.bb.i.pipe_change.exit.i.i_crit_edge

sw.bb.i.pipe_change.exit.i.i_crit_edge:           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pipe_change.exit.i.i

if.end.i.i.i:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %fifosel.i.i.i = getelementptr inbounds %struct.m66592_ep, ptr %29, i32 0, i32 7
  %32 = ptrtoint ptr %fifosel.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fifosel.i.i.i, align 4
  %reg.i.i.i.i.i = getelementptr inbounds %struct.m66592, ptr %25, i32 0, i32 1
  %34 = ptrtoint ptr %reg.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %35, i32 %33
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %37 = and i16 %36, -1793
  %38 = tail call i16 @llvm.bswap.i16(i16 %37) #10
  %or10.i.i.i.i = or i16 %38, %27
  %39 = ptrtoint ptr %reg.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg.i.i.i.i.i, align 4
  %add.ptr.i12.i.i.i.i = getelementptr i8, ptr %40, i32 %33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %41 = tail call i16 @llvm.bswap.i16(i16 %or10.i.i.i.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i.i, i16 %41) #10, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748) #10
  %pdata.i.i.i = getelementptr inbounds %struct.m66592, ptr %25, i32 0, i32 3
  %43 = ptrtoint ptr %pdata.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdata.i.i.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load1.i.i.i = load i8, ptr %44, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load1.i.i.i)
  %tobool4.not.i.i.i = icmp sgt i8 %bf.load1.i.i.i, -1
  %..i.i.i = select i1 %tobool4.not.i.i.i, i16 1024, i16 2048
  %46 = ptrtoint ptr %fifosel.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fifosel.i.i.i, align 4
  %48 = ptrtoint ptr %reg.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg.i.i.i.i.i, align 4
  %add.ptr.i.i16.i.i.i = getelementptr i8, ptr %49, i32 %47
  %50 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i16.i.i.i) #10, !srcloc !179
  %51 = tail call i16 @llvm.bswap.i16(i16 %50) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %or10.i17.i.i.i = or i16 %51, %..i.i.i
  %52 = ptrtoint ptr %reg.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg.i.i.i.i.i, align 4
  %add.ptr.i12.i18.i.i.i = getelementptr i8, ptr %53, i32 %47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %54 = tail call i16 @llvm.bswap.i16(i16 %or10.i17.i.i.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i18.i.i.i, i16 %54) #10, !srcloc !182
  br label %pipe_change.exit.i.i

pipe_change.exit.i.i:                             ; preds = %if.end.i.i.i, %sw.bb.i.pipe_change.exit.i.i_crit_edge
  %reg.i.i.i.i = getelementptr inbounds %struct.m66592, ptr %25, i32 0, i32 1
  %55 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %56, i32 30
  %57 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %58 = and i16 %57, -9985
  %59 = or i16 %58, 8192
  %60 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i12.i.i.i = getelementptr i8, ptr %61, i32 30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i, i16 %59) #10, !srcloc !182
  %fifoctr.i.i = getelementptr inbounds %struct.m66592_ep, ptr %_ep, i32 0, i32 8
  %62 = ptrtoint ptr %fifoctr.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %fifoctr.i.i, align 4
  %64 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %65, i32 %63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 64) #10, !srcloc !182
  %length.i.i = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 1
  %66 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp.i.i = icmp eq i32 %67, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %pipe_change.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %fifoctr.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %fifoctr.i.i, align 4
  %70 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i.i17.i.i = getelementptr i8, ptr %71, i32 %69
  %72 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i17.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %73 = or i16 %72, 128
  %74 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i12.i19.i.i = getelementptr i8, ptr %75, i32 %69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i19.i.i, i16 %73) #10, !srcloc !182
  %76 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %77, i32 96
  %78 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %79 = and i16 %78, -769
  %80 = or i16 %79, 256
  %81 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i12.i.i.i.i.i = getelementptr i8, ptr %82, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i.i.i, i16 %80) #10, !srcloc !182
  tail call fastcc void @transfer_complete(ptr noundef %_ep, ptr noundef %_req, i32 noundef 0) #10
  br label %if.end26

if.else.i.i:                                      ; preds = %pipe_change.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i21.i.i = getelementptr i8, ptr %84, i32 74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i21.i.i, i16 -257) #10, !srcloc !182
  tail call fastcc void @irq_ep0_write(ptr noundef %_ep, ptr noundef %_req) #10
  br label %if.end26

sw.bb3.i:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @start_packet_read(ptr noundef %_ep, ptr noundef %_req) #10
  br label %if.end26

sw.bb4.i:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  %85 = ptrtoint ptr %m66592 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %m66592, align 4
  %internal_ccpl.i.i = getelementptr inbounds %struct.m66592, ptr %86, i32 0, i32 7, i32 0, i32 3
  %87 = ptrtoint ptr %internal_ccpl.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %bf.load.i.i = load i8, ptr %internal_ccpl.i.i, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, -65
  store i8 %bf.clear.i.i, ptr %internal_ccpl.i.i, align 4
  %reg.i.i.i.i.i.i = getelementptr inbounds %struct.m66592, ptr %86, i32 0, i32 1
  %88 = ptrtoint ptr %reg.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %reg.i.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i13.i = getelementptr i8, ptr %89, i32 96
  %90 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i.i13.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %91 = and i16 %90, -769
  %92 = or i16 %91, 256
  %93 = ptrtoint ptr %reg.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %reg.i.i.i.i.i.i, align 4
  %add.ptr.i12.i.i.i.i14.i = getelementptr i8, ptr %94, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i.i14.i, i16 %92) #10, !srcloc !182
  %95 = ptrtoint ptr %reg.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %reg.i.i.i.i.i.i, align 4
  %add.ptr.i.i.i15.i = getelementptr i8, ptr %96, i32 96
  %97 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i15.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %98 = or i16 %97, 1024
  %99 = ptrtoint ptr %reg.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %reg.i.i.i.i.i.i, align 4
  %add.ptr.i12.i.i16.i = getelementptr i8, ptr %100, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i16.i, i16 %98) #10, !srcloc !182
  br label %if.end26

do.end.i:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %conv2.i) #13
  br label %if.end26

if.else:                                          ; preds = %list_add_tail.exit
  br i1 %cmp.i.not, label %land.lhs.true, label %if.else.if.end26_crit_edge

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

land.lhs.true:                                    ; preds = %if.else
  %busy = getelementptr inbounds %struct.m66592_ep, ptr %_ep, i32 0, i32 3
  %101 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %101)
  %bf.load = load i8, ptr %busy, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool23.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool23.not, label %if.then24, label %land.lhs.true.if.end26_crit_edge

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @start_packet(ptr noundef %_ep, ptr noundef %_req)
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %land.lhs.true.if.end26_crit_edge, %if.else.if.end26_crit_edge, %do.end.i, %sw.bb4.i, %sw.bb3.i, %if.else.i.i, %if.then.i.i
  %102 = ptrtoint ptr %m66592 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %m66592, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %103, i32 noundef %call8) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end26 ], [ -108, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m66592_enable(ptr noundef %_ep, ptr noundef %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %m665921.i = getelementptr inbounds %struct.m66592_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %m665921.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m665921.i, align 4
  %desc3.i = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 9
  %2 = ptrtoint ptr %desc3.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %desc, ptr %desc3.i, align 4
  %pipenum.i = getelementptr inbounds %struct.m66592_ep, ptr %_ep, i32 0, i32 4
  %3 = ptrtoint ptr %pipenum.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %pipenum.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not.i = icmp eq i16 %4, 0
  br i1 %tobool.not.i, label %do.end11.i, label %do.body6.i, !prof !183

do.body6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/udc/m66592-udc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 392, 0\0A.popsection", ""() #10, !srcloc !187
  unreachable

do.end11.i:                                       ; preds = %entry
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 3
  %5 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bmAttributes.i, align 1
  %7 = and i8 %6, 3
  %and.i = zext i8 %7 to i32
  %8 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %and.i, label %do.end66.i [
    i32 2, label %sw.bb.i
    i32 3, label %sw.bb31.i
    i32 1, label %sw.bb47.i
  ]

sw.bb.i:                                          ; preds = %do.end11.i
  %bulk.i = getelementptr inbounds %struct.m66592, ptr %1, i32 0, i32 16
  %9 = ptrtoint ptr %bulk.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bulk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp.i = icmp sgt i32 %10, 2
  br i1 %cmp.i, label %if.then13.i, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.then13.i:                                      ; preds = %sw.bb.i
  %isochronous.i = getelementptr inbounds %struct.m66592, ptr %1, i32 0, i32 18
  %11 = ptrtoint ptr %isochronous.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %isochronous.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp14.i = icmp sgt i32 %12, 1
  br i1 %cmp14.i, label %do.end19.i, label %if.then13.i.sw.epilog.i_crit_edge

if.then13.i.sw.epilog.i_crit_edge:                ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

do.end19.i:                                       ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #13
  br label %alloc_pipe_config.exit

sw.bb31.i:                                        ; preds = %do.end11.i
  %interrupt.i = getelementptr inbounds %struct.m66592, ptr %1, i32 0, i32 17
  %13 = ptrtoint ptr %interrupt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %interrupt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp32.i = icmp sgt i32 %14, 1
  br i1 %cmp32.i, label %do.end37.i, label %sw.bb31.i.sw.epilog.i_crit_edge

sw.bb31.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

do.end37.i:                                       ; preds = %sw.bb31.i
  call void @__sanitizer_cov_trace_pc() #12
  %call39.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #13
  br label %alloc_pipe_config.exit

sw.bb47.i:                                        ; preds = %do.end11.i
  %isochronous48.i = getelementptr inbounds %struct.m66592, ptr %1, i32 0, i32 18
  %15 = ptrtoint ptr %isochronous48.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %isochronous48.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp49.i = icmp sgt i32 %16, 1
  br i1 %cmp49.i, label %do.end54.i, label %sw.bb47.i.sw.epilog.i_crit_edge

sw.bb47.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

do.end54.i:                                       ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #12
  %call56.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #13
  br label %alloc_pipe_config.exit

do.end66.i:                                       ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %call68.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #13
  br label %alloc_pipe_config.exit

sw.epilog.i:                                      ; preds = %sw.bb47.i.sw.epilog.i_crit_edge, %sw.bb31.i.sw.epilog.i_crit_edge, %if.then13.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge
  %.sink166.i = phi i32 [ %12, %if.then13.i.sw.epilog.i_crit_edge ], [ %10, %sw.bb.i.sw.epilog.i_crit_edge ], [ %14, %sw.bb31.i.sw.epilog.i_crit_edge ], [ %16, %sw.bb47.i.sw.epilog.i_crit_edge ]
  %.sink165.i = phi i16 [ 1, %if.then13.i.sw.epilog.i_crit_edge ], [ 3, %sw.bb.i.sw.epilog.i_crit_edge ], [ 6, %sw.bb31.i.sw.epilog.i_crit_edge ], [ 1, %sw.bb47.i.sw.epilog.i_crit_edge ]
  %cmp100.i = phi i1 [ true, %if.then13.i.sw.epilog.i_crit_edge ], [ true, %sw.bb.i.sw.epilog.i_crit_edge ], [ false, %sw.bb31.i.sw.epilog.i_crit_edge ], [ false, %sw.bb47.i.sw.epilog.i_crit_edge ]
  %info.sroa.17.0.i = phi i16 [ 16384, %if.then13.i.sw.epilog.i_crit_edge ], [ 16384, %sw.bb.i.sw.epilog.i_crit_edge ], [ -32768, %sw.bb31.i.sw.epilog.i_crit_edge ], [ -16384, %sw.bb47.i.sw.epilog.i_crit_edge ]
  %counter.1.i = phi ptr [ %isochronous.i, %if.then13.i.sw.epilog.i_crit_edge ], [ %bulk.i, %sw.bb.i.sw.epilog.i_crit_edge ], [ %interrupt.i, %sw.bb31.i.sw.epilog.i_crit_edge ], [ %isochronous48.i, %sw.bb47.i.sw.epilog.i_crit_edge ]
  %tobool.not.i143.i = phi i1 [ false, %if.then13.i.sw.epilog.i_crit_edge ], [ false, %sw.bb.i.sw.epilog.i_crit_edge ], [ true, %sw.bb31.i.sw.epilog.i_crit_edge ], [ true, %sw.bb47.i.sw.epilog.i_crit_edge ]
  %17 = trunc i32 %.sink166.i to i16
  %conv21.i = add i16 %.sink165.i, %17
  %type70.i = getelementptr inbounds %struct.m66592_ep, ptr %_ep, i32 0, i32 5
  %18 = ptrtoint ptr %type70.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %info.sroa.17.0.i, ptr %type70.i, align 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 2
  %19 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bEndpointAddress.i, align 1
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 4
  %21 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %23 = and i16 %22, -249
  %bInterval.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 5
  %24 = ptrtoint ptr %bInterval.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bInterval.i, align 1
  %conv76.i = zext i8 %25 to i16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %tobool80.not.i = icmp sgt i8 %20, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv21.i)
  %cmp.i.i = icmp eq i16 %conv21.i, 0
  br i1 %cmp.i.i, label %sw.epilog.i.do.end91.i_crit_edge, label %if.end.i.i

sw.epilog.i.do.end91.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end91.i

if.end.i.i:                                       ; preds = %sw.epilog.i
  %26 = and i8 %20, 15
  %conv73.i = zext i8 %26 to i16
  %reg.i.i.i = getelementptr inbounds %struct.m66592, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %28, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %29 = tail call i16 @llvm.bswap.i16(i16 %conv21.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 %29) #10, !srcloc !182
  %30 = lshr i8 %20, 3
  %31 = and i8 %30, 16
  %32 = zext i8 %31 to i16
  %or9.i.i = or i16 %info.sroa.17.0.i, %conv73.i
  %or13101.i.i = or i16 %or9.i.i, %32
  %33 = zext i16 %info.sroa.17.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.89)
  switch i16 %info.sroa.17.0.i, label %if.end.i.i.if.end62.i.i_crit_edge [
    i16 -32768, label %sw.bb.i.i
    i16 16384, label %sw.bb20.i.i
    i16 -16384, label %sw.bb48.i.i
  ]

if.end.i.i.if.end62.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62.i.i

sw.bb.i.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i.i = add i16 %conv21.i, -2
  br label %if.end62.i.i

sw.bb20.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %conv21.i)
  %cmp23.i.i = icmp ugt i16 %conv21.i, 2
  %bufnum.0.v.i.i = select i1 %cmp23.i.i, i16 4093, i16 4095
  %bufnum.0.i.i = add i16 %bufnum.0.v.i.i, %conv21.i
  %mul.i.i = shl i16 %bufnum.0.i.i, 4
  %add36.i.i = or i16 %mul.i.i, 6
  %spec.select102.v.i.i = select i1 %tobool80.not.i, i16 640, i16 512
  %spec.select102.i.i = or i16 %or13101.i.i, %spec.select102.v.i.i
  br label %sw.epilog.i.i

sw.bb48.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub51.i.i = shl i16 %conv21.i, 4
  %add53.i.i = add i16 %sub51.i.i, -10
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb48.i.i, %sw.bb20.i.i
  %bufnum.1.i.i = phi i16 [ %add53.i.i, %sw.bb48.i.i ], [ %add36.i.i, %sw.bb20.i.i ]
  %pipecfg.1.i.i = phi i16 [ %or13101.i.i, %sw.bb48.i.i ], [ %spec.select102.i.i, %sw.bb20.i.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 62, i16 %bufnum.1.i.i)
  %cmp59.i.i = icmp ugt i16 %bufnum.1.i.i, 62
  br i1 %cmp59.i.i, label %do.end.i.i, label %sw.epilog.i.i.if.end62.i.i_crit_edge

sw.epilog.i.i.if.end62.i.i_crit_edge:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62.i.i

do.end.i.i:                                       ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69) #13
  br label %do.end91.i

if.end62.i.i:                                     ; preds = %sw.epilog.i.i.if.end62.i.i_crit_edge, %sw.bb.i.i, %if.end.i.i.if.end62.i.i_crit_edge
  %pipecfg.1120.i.i = phi i16 [ %pipecfg.1.i.i, %sw.epilog.i.i.if.end62.i.i_crit_edge ], [ %or13101.i.i, %if.end.i.i.if.end62.i.i_crit_edge ], [ %or13101.i.i, %sw.bb.i.i ]
  %buf_bsize.0119.i.i = phi i16 [ 7168, %sw.epilog.i.i.if.end62.i.i_crit_edge ], [ 0, %if.end.i.i.if.end62.i.i_crit_edge ], [ 0, %sw.bb.i.i ]
  %bufnum.1118.i.i = phi i16 [ %bufnum.1.i.i, %sw.epilog.i.i.if.end62.i.i_crit_edge ], [ 0, %if.end.i.i.if.end62.i.i_crit_edge ], [ %add.i.i, %sw.bb.i.i ]
  %34 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i104.i.i = getelementptr i8, ptr %35, i32 102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %36 = tail call i16 @llvm.bswap.i16(i16 %pipecfg.1120.i.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i104.i.i, i16 %36) #10, !srcloc !182
  %or65.i.i = or i16 %bufnum.1118.i.i, %buf_bsize.0119.i.i
  %37 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i106.i.i = getelementptr i8, ptr %38, i32 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %39 = tail call i16 @llvm.bswap.i16(i16 %or65.i.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i106.i.i, i16 %39) #10, !srcloc !182
  %40 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i108.i.i = getelementptr i8, ptr %41, i32 106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i108.i.i, i16 %23) #10, !srcloc !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool67.not.i.i = icmp eq i8 %25, 0
  %dec.i.i = add nsw i16 %conv76.i, -1
  %spec.select.i = select i1 %tobool67.not.i.i, i16 0, i16 %dec.i.i
  %42 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg.i.i.i, align 4
  %add.ptr.i110.i.i = getelementptr i8, ptr %43, i32 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %44 = tail call i16 @llvm.bswap.i16(i16 %spec.select.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i110.i.i, i16 %44) #10, !srcloc !182
  %45 = ptrtoint ptr %counter.1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %counter.1.i, align 4
  %inc.i = add i32 %46, 1
  store i32 %inc.i, ptr %counter.1.i, align 4
  %isochronous95.i = getelementptr inbounds %struct.m66592, ptr %1, i32 0, i32 18
  %cmp96.i = icmp eq ptr %counter.1.i, %isochronous95.i
  %or.cond.i = and i1 %cmp100.i, %cmp96.i
  br i1 %or.cond.i, label %if.then102.i, label %if.end62.i.i.if.end105.i_crit_edge

if.end62.i.i.if.end105.i_crit_edge:               ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105.i

do.end91.i:                                       ; preds = %do.end.i.i, %sw.epilog.i.do.end91.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -22, %sw.epilog.i.do.end91.i_crit_edge ], [ -12, %do.end.i.i ]
  %call93.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #13
  br label %alloc_pipe_config.exit

if.then102.i:                                     ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %bulk103.i = getelementptr inbounds %struct.m66592, ptr %1, i32 0, i32 16
  %47 = ptrtoint ptr %bulk103.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bulk103.i, align 4
  %inc104.i = add i32 %48, 1
  store i32 %inc104.i, ptr %bulk103.i, align 4
  br label %if.end105.i

if.end105.i:                                      ; preds = %if.then102.i, %if.end62.i.i.if.end105.i_crit_edge
  br i1 %tobool.not.i143.i, label %if.else33.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end105.i
  %num_dma.i.i = getelementptr inbounds %struct.m66592, ptr %1, i32 0, i32 19
  %49 = ptrtoint ptr %num_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_dma.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp2.i.i = icmp eq i32 %50, 0
  br i1 %cmp2.i.i, label %if.then4.i.i, label %if.else.i.i

if.then4.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %num_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %num_dma.i.i, align 8
  %use_dma.i.i = getelementptr inbounds %struct.m66592_ep, ptr %_ep, i32 0, i32 3
  %52 = ptrtoint ptr %use_dma.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load.i.i = load i8, ptr %use_dma.i.i, align 4
  %bf.set.i.i = or i8 %bf.load.i.i, 32
  store i8 %bf.set.i.i, ptr %use_dma.i.i, align 4
  br label %m66592_ep_setting.exit.i

if.else.i.i:                                      ; preds = %if.then.i.i
  %pdata.i.i = getelementptr inbounds %struct.m66592, ptr %1, i32 0, i32 3
  %53 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pdata.i.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load6.i.i = load i8, ptr %54, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load6.i.i)
  %tobool7.not.i.i = icmp sgt i8 %bf.load6.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp10.i.i = icmp eq i32 %50, 1
  %or.cond86.i.i = select i1 %tobool7.not.i.i, i1 %cmp10.i.i, i1 false
  br i1 %or.cond86.i.i, label %if.then12.i.i, label %if.else23.i.i

if.then12.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %num_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 2, ptr %num_dma.i.i, align 8
  %use_dma15.i.i = getelementptr inbounds %struct.m66592_ep, ptr %_ep, i32 0, i32 3
  %57 = ptrtoint ptr %use_dma15.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load16.i.i = load i8, ptr %use_dma15.i.i, align 4
  %bf.set18.i.i = or i8 %bf.load16.i.i, 32
  store i8 %bf.set18.i.i, ptr %use_dma15.i.i, align 4
  br label %m66592_ep_setting.exit.i

if.else23.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %use_dma24.i.i = getelementptr inbounds %struct.m66592_ep, ptr %_ep, i32 0, i32 3
  %58 = ptrtoint ptr %use_dma24.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load25.i.i = load i8, ptr %use_dma24.i.i, align 4
  %bf.clear26.i.i = and i8 %bf.load25.i.i, -33
  store i8 %bf.clear26.i.i, ptr %use_dma24.i.i, align 4
  br label %m66592_ep_setting.exit.i

if.else33.i.i:                                    ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #12
  %use_dma34.i.i = getelementptr inbounds %struct.m66592_ep, ptr %_ep, i32 0, i32 3
  %59 = ptrtoint ptr %use_dma34.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load35.i.i = load i8, ptr %use_dma34.i.i, align 4
  %bf.clear36.i.i = and i8 %bf.load35.i.i, -33
  store i8 %bf.clear36.i.i, ptr %use_dma34.i.i, align 4
  br label %m66592_ep_setting.exit.i

m66592_ep_setting.exit.i:                         ; preds = %if.else33.i.i, %if.else23.i.i, %if.then12.i.i, %if.then4.i.i
  %.sink89.i.i = phi i32 [ 20, %if.then4.i.i ], [ 16, %if.else23.i.i ], [ 24, %if.then12.i.i ], [ 16, %if.else33.i.i ]
  %.sink88.i.i = phi i32 [ 36, %if.then4.i.i ], [ 30, %if.else23.i.i ], [ 42, %if.then12.i.i ], [ 30, %if.else33.i.i ]
  %.sink87.i.i = phi i32 [ 38, %if.then4.i.i ], [ 32, %if.else23.i.i ], [ 44, %if.then12.i.i ], [ 32, %if.else33.i.i ]
  %.sink.i.i = phi i32 [ 40, %if.then4.i.i ], [ 0, %if.else23.i.i ], [ 46, %if.then12.i.i ], [ 0, %if.else33.i.i ]
  %fifoaddr.i.i = getelementptr inbounds %struct.m66592_ep, ptr %_ep, i32 0, i32 6
  %60 = ptrtoint ptr %fifoaddr.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %.sink89.i.i, ptr %fifoaddr.i.i, align 4
  %fifosel.i.i = getelementptr inbounds %struct.m66592_ep, ptr %_ep, i32 0, i32 7
  %61 = ptrtoint ptr %fifosel.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %.sink88.i.i, ptr %fifosel.i.i, align 4
  %fifoctr.i.i = getelementptr inbounds %struct.m66592_ep, ptr %_ep, i32 0, i32 8
  %62 = ptrtoint ptr %fifoctr.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %.sink87.i.i, ptr %fifoctr.i.i, align 4
  %fifotrn.i.i = getelementptr inbounds %struct.m66592_ep, ptr %_ep, i32 0, i32 9
  %63 = ptrtoint ptr %fifotrn.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %.sink.i.i, ptr %fifotrn.i.i, align 4
  %conv.i.i = zext i16 %conv21.i to i32
  %sub.i.i = shl nuw nsw i32 %conv.i.i, 1
  %add.i144.i = add nuw nsw i32 %sub.i.i, 110
  %pipectr.i.i = getelementptr inbounds %struct.m66592_ep, ptr %_ep, i32 0, i32 10
  %64 = ptrtoint ptr %pipectr.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %add.i144.i, ptr %pipectr.i.i, align 4
  %65 = ptrtoint ptr %pipenum.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv21.i, ptr %pipenum.i, align 2
  %66 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 2)
  %67 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %68 = and i16 %67, -249
  %69 = tail call i16 @llvm.bswap.i16(i16 %68) #10
  %maxpacket.i145.i = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 7
  %70 = ptrtoint ptr %maxpacket.i145.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 7)
  %bf.load46.i.i = load i56, ptr %maxpacket.i145.i, align 2
  %bf.value.i.i = zext i16 %69 to i56
  %bf.shl.i.i = shl nuw nsw i56 %bf.value.i.i, 40
  %bf.clear47.i.i = and i56 %bf.load46.i.i, 1099511627775
  %bf.set48.i.i = or i56 %bf.shl.i.i, %bf.clear47.i.i
  store i56 %bf.set48.i.i, ptr %maxpacket.i145.i, align 2
  %arrayidx.i.i = getelementptr %struct.m66592, ptr %1, i32 0, i32 8, i32 %conv.i.i
  %71 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %_ep, ptr %arrayidx.i.i, align 4
  %72 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %bEndpointAddress.i, align 1
  %74 = and i8 %73, 15
  %and.i146.i = zext i8 %74 to i32
  %arrayidx50.i.i = getelementptr %struct.m66592, ptr %1, i32 0, i32 9, i32 %and.i146.i
  %75 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %_ep, ptr %arrayidx50.i.i, align 4
  %queue.i.i = getelementptr inbounds %struct.m66592_ep, ptr %_ep, i32 0, i32 2
  %76 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %queue.i.i, ptr %queue.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.m66592_ep, ptr %_ep, i32 0, i32 2, i32 1
  %77 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %queue.i.i, ptr %prev.i.i.i, align 4
  %78 = ptrtoint ptr %m665921.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %m665921.i, align 4
  %80 = ptrtoint ptr %fifosel.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %fifosel.i.i, align 4
  %reg.i.i.i.i = getelementptr inbounds %struct.m66592, ptr %79, i32 0, i32 1
  %82 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %83, i32 %81
  %84 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %85 = and i16 %84, -1793
  %86 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i12.i.i.i = getelementptr i8, ptr %87, i32 %81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i, i16 %85) #10, !srcloc !182
  %88 = ptrtoint ptr %pipectr.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pipectr.i.i, align 4
  %90 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i.i149.i = getelementptr i8, ptr %91, i32 %89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i149.i, i16 2) #10, !srcloc !182
  %92 = ptrtoint ptr %pipectr.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %pipectr.i.i, align 4
  %94 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %95, i32 %93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i27.i.i, i16 0) #10, !srcloc !182
  %96 = ptrtoint ptr %pipectr.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %pipectr.i.i, align 4
  %98 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %99, i32 %97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i29.i.i, i16 1) #10, !srcloc !182
  %use_dma.i150.i = getelementptr inbounds %struct.m66592_ep, ptr %_ep, i32 0, i32 3
  %100 = ptrtoint ptr %use_dma.i150.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %bf.load.i151.i = load i8, ptr %use_dma.i150.i, align 4
  %101 = and i8 %bf.load.i151.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool.not.i152.i = icmp eq i8 %101, 0
  br i1 %tobool.not.i152.i, label %m66592_ep_setting.exit.i.alloc_pipe_config.exit_crit_edge, label %if.then.i154.i

m66592_ep_setting.exit.i.alloc_pipe_config.exit_crit_edge: ; preds = %m66592_ep_setting.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %alloc_pipe_config.exit

if.then.i154.i:                                   ; preds = %m66592_ep_setting.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %102 = ptrtoint ptr %pipenum.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %pipenum.i, align 2
  %104 = ptrtoint ptr %fifosel.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %fifosel.i.i, align 4
  %106 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i.i31.i.i = getelementptr i8, ptr %107, i32 %105
  %108 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i31.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %109 = and i16 %108, -1793
  %110 = tail call i16 @llvm.bswap.i16(i16 %109) #10
  %or10.i.i.i = or i16 %110, %103
  %111 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i12.i33.i.i = getelementptr i8, ptr %112, i32 %105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %113 = tail call i16 @llvm.bswap.i16(i16 %or10.i.i.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i33.i.i, i16 %113) #10, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %114 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %114(i32 noundef 214748) #10
  %pdata.i153.i = getelementptr inbounds %struct.m66592, ptr %79, i32 0, i32 3
  %115 = ptrtoint ptr %pdata.i153.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %pdata.i153.i, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load1_noabort(i32 %117)
  %bf.load5.i.i = load i8, ptr %116, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load5.i.i)
  %tobool8.not.i.i = icmp sgt i8 %bf.load5.i.i, -1
  %..i.i = select i1 %tobool8.not.i.i, i16 1024, i16 2048
  %118 = ptrtoint ptr %fifosel.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %fifosel.i.i, align 4
  %120 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i.i35.i.i = getelementptr i8, ptr %121, i32 %119
  %122 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i35.i.i) #10, !srcloc !179
  %123 = tail call i16 @llvm.bswap.i16(i16 %122) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %or10.i36.i.i = or i16 %123, %..i.i
  %124 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i12.i37.i.i = getelementptr i8, ptr %125, i32 %119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %126 = tail call i16 @llvm.bswap.i16(i16 %or10.i36.i.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i37.i.i, i16 %126) #10, !srcloc !182
  br label %alloc_pipe_config.exit

alloc_pipe_config.exit:                           ; preds = %if.then.i154.i, %m66592_ep_setting.exit.i.alloc_pipe_config.exit_crit_edge, %do.end91.i, %do.end66.i, %do.end54.i, %do.end37.i, %do.end19.i
  %retval.0.i = phi i32 [ -22, %do.end66.i ], [ -19, %do.end54.i ], [ %retval.0.i.ph.i, %do.end91.i ], [ -19, %do.end37.i ], [ -19, %do.end19.i ], [ 0, %m66592_ep_setting.exit.i.alloc_pipe_config.exit_crit_edge ], [ 0, %if.then.i154.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m66592_disable(ptr noundef %_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %do.body4, label %while.cond.preheader, !prof !184

while.cond.preheader:                             ; preds = %entry
  %queue = getelementptr inbounds %struct.m66592_ep, ptr %_ep, i32 0, i32 2
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not38 = icmp eq ptr %1, %queue
  br i1 %cmp.i.not38, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %m66592 = getelementptr inbounds %struct.m66592_ep, ptr %_ep, i32 0, i32 1
  br label %while.body

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/udc/m66592-udc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1315, 0\0A.popsection", ""() #10, !srcloc !188
  unreachable

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %2 = phi ptr [ %1, %while.body.lr.ph ], [ %8, %while.body.while.body_crit_edge ]
  %add.ptr16 = getelementptr i8, ptr %2, i32 -56
  %3 = ptrtoint ptr %m66592 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %m66592, align 4
  %call21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #10
  tail call fastcc void @transfer_complete(ptr noundef nonnull %_ep, ptr noundef %add.ptr16, i32 noundef -104)
  %5 = ptrtoint ptr %m66592 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m66592, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %call21) #10
  %7 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %8, %queue
  br i1 %cmp.i.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %m6659228 = getelementptr inbounds %struct.m66592_ep, ptr %_ep, i32 0, i32 1
  %9 = ptrtoint ptr %m6659228 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %m6659228, align 4
  %pipenum = getelementptr inbounds %struct.m66592_ep, ptr %_ep, i32 0, i32 4
  %11 = ptrtoint ptr %pipenum to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %pipenum, align 2
  tail call fastcc void @pipe_irq_disable(ptr noundef %10, i16 noundef zeroext %12)
  %13 = ptrtoint ptr %m6659228 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %m6659228, align 4
  %15 = ptrtoint ptr %pipenum to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %pipenum, align 2
  %type.i = getelementptr inbounds %struct.m66592_ep, ptr %_ep, i32 0, i32 5
  %17 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp.i.i = icmp eq i16 %16, 0
  br i1 %cmp.i.i, label %while.end.free_pipe_config.exit_crit_edge, label %if.end.i.i

while.end.free_pipe_config.exit_crit_edge:        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_pipe_config.exit

if.end.i.i:                                       ; preds = %while.end
  %19 = add i16 %16, -3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %19)
  %20 = icmp ult i16 %19, 3
  br i1 %20, label %if.then10.i.i, label %if.else.i.i

if.then10.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %bulk.i.i = getelementptr inbounds %struct.m66592, ptr %14, i32 0, i32 16
  %21 = ptrtoint ptr %bulk.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bulk.i.i, align 4
  %dec.i.i = add i32 %22, -1
  store i32 %dec.i.i, ptr %bulk.i.i, align 4
  br label %pipe_buffer_release.exit.i

if.else.i.i:                                      ; preds = %if.end.i.i
  %23 = and i16 %16, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %23)
  %24 = icmp eq i16 %23, 6
  br i1 %24, label %if.then20.i.i, label %if.else22.i.i

if.then20.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %interrupt.i.i = getelementptr inbounds %struct.m66592, ptr %14, i32 0, i32 17
  %25 = ptrtoint ptr %interrupt.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %interrupt.i.i, align 8
  %dec21.i.i = add i32 %26, -1
  store i32 %dec21.i.i, ptr %interrupt.i.i, align 8
  br label %pipe_buffer_release.exit.i

if.else22.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %16)
  %cmp30.i.i = icmp ult i16 %16, 3
  br i1 %cmp30.i.i, label %if.then32.i.i, label %do.end.i.i

if.then32.i.i:                                    ; preds = %if.else22.i.i
  %isochronous.i.i = getelementptr inbounds %struct.m66592, ptr %14, i32 0, i32 18
  %27 = ptrtoint ptr %isochronous.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %isochronous.i.i, align 4
  %dec33.i.i = add i32 %28, -1
  store i32 %dec33.i.i, ptr %isochronous.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %18)
  %cmp35.i.i = icmp eq i16 %18, 16384
  br i1 %cmp35.i.i, label %if.then37.i.i, label %if.then32.i.i.pipe_buffer_release.exit.i_crit_edge

if.then32.i.i.pipe_buffer_release.exit.i_crit_edge: ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pipe_buffer_release.exit.i

if.then37.i.i:                                    ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %bulk38.i.i = getelementptr inbounds %struct.m66592, ptr %14, i32 0, i32 16
  %29 = ptrtoint ptr %bulk38.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bulk38.i.i, align 4
  %dec39.i.i = add i32 %30, -1
  store i32 %dec39.i.i, ptr %bulk38.i.i, align 4
  br label %pipe_buffer_release.exit.i

do.end.i.i:                                       ; preds = %if.else22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv43.i.i = zext i16 %16 to i32
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef %conv43.i.i) #13
  br label %pipe_buffer_release.exit.i

pipe_buffer_release.exit.i:                       ; preds = %do.end.i.i, %if.then37.i.i, %if.then32.i.i.pipe_buffer_release.exit.i_crit_edge, %if.then20.i.i, %if.then10.i.i
  %31 = ptrtoint ptr %pipenum to i32
  call void @__asan_load2_noabort(i32 %31)
  %.pr.i = load i16, ptr %pipenum, align 2
  %32 = ptrtoint ptr %m6659228 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %m6659228, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr.i)
  %cmp.i1.i = icmp eq i16 %.pr.i, 0
  br i1 %cmp.i1.i, label %pipe_buffer_release.exit.i.free_pipe_config.exit_crit_edge, label %if.end.i2.i

pipe_buffer_release.exit.i.free_pipe_config.exit_crit_edge: ; preds = %pipe_buffer_release.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_pipe_config.exit

if.end.i2.i:                                      ; preds = %pipe_buffer_release.exit.i
  %use_dma.i.i = getelementptr inbounds %struct.m66592_ep, ptr %_ep, i32 0, i32 3
  %34 = ptrtoint ptr %use_dma.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load.i.i = load i8, ptr %use_dma.i.i, align 4
  %35 = and i8 %bf.load.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i.i = icmp eq i8 %35, 0
  br i1 %tobool.not.i.i, label %if.end.i2.i.if.end5.i.i_crit_edge, label %if.then4.i.i

if.end.i2.i.if.end5.i.i_crit_edge:                ; preds = %if.end.i2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i.i

if.then4.i.i:                                     ; preds = %if.end.i2.i
  call void @__sanitizer_cov_trace_pc() #12
  %num_dma.i.i = getelementptr inbounds %struct.m66592, ptr %33, i32 0, i32 19
  %36 = ptrtoint ptr %num_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_dma.i.i, align 8
  %dec.i3.i = add i32 %37, -1
  store i32 %dec.i3.i, ptr %num_dma.i.i, align 8
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then4.i.i, %if.end.i2.i.if.end5.i.i_crit_edge
  %38 = ptrtoint ptr %pipenum to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %pipenum, align 2
  %39 = ptrtoint ptr %use_dma.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load7.i.i = load i8, ptr %use_dma.i.i, align 4
  %bf.clear11.i.i = and i8 %bf.load7.i.i, 95
  store i8 %bf.clear11.i.i, ptr %use_dma.i.i, align 4
  br label %free_pipe_config.exit

free_pipe_config.exit:                            ; preds = %if.end5.i.i, %pipe_buffer_release.exit.i.free_pipe_config.exit_crit_edge, %while.end.free_pipe_config.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m66592_dequeue(ptr noundef %_ep, ptr noundef %_req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %m66592 = getelementptr inbounds %struct.m66592_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %m66592 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m66592, align 4
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %queue = getelementptr inbounds %struct.m66592_ep, ptr %_ep, i32 0, i32 2
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %3, %queue
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @transfer_complete(ptr noundef %_ep, ptr noundef %_req, i32 noundef -104)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %m66592 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m66592, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %call6) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m66592_set_halt(ptr noundef %_ep, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %m66592 = getelementptr inbounds %struct.m66592_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %m66592 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m66592, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %queue = getelementptr inbounds %struct.m66592_ep, ptr %_ep, i32 0, i32 2
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %3, %queue
  br i1 %cmp.i.not, label %if.else, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool7.not = icmp eq i32 %value, 0
  %busy11 = getelementptr inbounds %struct.m66592_ep, ptr %_ep, i32 0, i32 3
  %4 = ptrtoint ptr %busy11 to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load12 = load i8, ptr %busy11, align 4
  br i1 %tobool7.not, label %if.else10, label %if.then8

if.then8:                                         ; preds = %if.else
  %bf.set = or i8 %bf.load12, -128
  %5 = ptrtoint ptr %busy11 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %bf.set, ptr %busy11, align 4
  %6 = ptrtoint ptr %m66592 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m66592, align 4
  %pipenum = getelementptr inbounds %struct.m66592_ep, ptr %_ep, i32 0, i32 4
  %8 = ptrtoint ptr %pipenum to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %pipenum, align 2
  %conv.i.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp.i.i = icmp eq i16 %9, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %reg.i.i.i.i = getelementptr inbounds %struct.m66592, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %11, i32 96
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %13 = and i16 %12, -769
  %14 = or i16 %13, 512
  %15 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i12.i.i.i = getelementptr i8, ptr %16, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i, i16 %14) #10, !srcloc !182
  br label %if.end17

if.else.i.i:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %9)
  %cmp3.i.i = icmp ult i16 %9, 8
  br i1 %cmp3.i.i, label %if.then5.i.i, label %do.end.i.i

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = shl nuw nsw i32 %conv.i.i, 1
  %add.i.i = add nuw nsw i32 %sub.i.i, 110
  %reg.i.i15.i.i = getelementptr inbounds %struct.m66592, ptr %7, i32 0, i32 1
  %17 = ptrtoint ptr %reg.i.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg.i.i15.i.i, align 4
  %add.ptr.i.i16.i.i = getelementptr i8, ptr %18, i32 %add.i.i
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i16.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %20 = and i16 %19, -769
  %21 = or i16 %20, 512
  %22 = ptrtoint ptr %reg.i.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg.i.i15.i.i, align 4
  %add.ptr.i12.i19.i.i = getelementptr i8, ptr %23, i32 %add.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i19.i.i, i16 %21) #10, !srcloc !182
  br label %if.end17

do.end.i.i:                                       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv.i.i) #13
  br label %if.end17

if.else10:                                        ; preds = %if.else
  %bf.clear13 = and i8 %bf.load12, 127
  %24 = ptrtoint ptr %busy11 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %bf.clear13, ptr %busy11, align 4
  %25 = ptrtoint ptr %m66592 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %m66592, align 4
  %pipenum16 = getelementptr inbounds %struct.m66592_ep, ptr %_ep, i32 0, i32 4
  %27 = ptrtoint ptr %pipenum16 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %pipenum16, align 2
  %conv.i.i28 = zext i16 %28 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cmp.i.i29 = icmp eq i16 %28, 0
  br i1 %cmp.i.i29, label %if.then.i.i33, label %if.else.i.i35

if.then.i.i33:                                    ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #12
  %reg.i.i.i.i30 = getelementptr inbounds %struct.m66592, ptr %26, i32 0, i32 1
  %29 = ptrtoint ptr %reg.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg.i.i.i.i30, align 4
  %add.ptr.i.i.i.i31 = getelementptr i8, ptr %30, i32 96
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i31) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %32 = and i16 %31, -769
  %33 = ptrtoint ptr %reg.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg.i.i.i.i30, align 4
  %add.ptr.i12.i.i.i32 = getelementptr i8, ptr %34, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i32, i16 %32) #10, !srcloc !182
  br label %if.end17

if.else.i.i35:                                    ; preds = %if.else10
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %28)
  %cmp3.i.i34 = icmp ult i16 %28, 8
  br i1 %cmp3.i.i34, label %if.then5.i.i41, label %do.end.i.i43

if.then5.i.i41:                                   ; preds = %if.else.i.i35
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i36 = shl nuw nsw i32 %conv.i.i28, 1
  %add.i.i37 = add nuw nsw i32 %sub.i.i36, 110
  %reg.i.i15.i.i38 = getelementptr inbounds %struct.m66592, ptr %26, i32 0, i32 1
  %35 = ptrtoint ptr %reg.i.i15.i.i38 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg.i.i15.i.i38, align 4
  %add.ptr.i.i16.i.i39 = getelementptr i8, ptr %36, i32 %add.i.i37
  %37 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i16.i.i39) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %38 = and i16 %37, -769
  %39 = ptrtoint ptr %reg.i.i15.i.i38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg.i.i15.i.i38, align 4
  %add.ptr.i12.i19.i.i40 = getelementptr i8, ptr %40, i32 %add.i.i37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i19.i.i40, i16 %38) #10, !srcloc !182
  br label %if.end17

do.end.i.i43:                                     ; preds = %if.else.i.i35
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv.i.i28) #13
  br label %if.end17

if.end17:                                         ; preds = %do.end.i.i43, %if.then5.i.i41, %if.then.i.i33, %do.end.i.i, %if.then5.i.i, %if.then.i.i, %entry.if.end17_crit_edge
  %ret.0 = phi i32 [ -11, %entry.if.end17_crit_edge ], [ 0, %if.then.i.i ], [ 0, %if.then5.i.i ], [ 0, %do.end.i.i ], [ 0, %if.then.i.i33 ], [ 0, %if.then5.i.i41 ], [ 0, %do.end.i.i43 ]
  %41 = ptrtoint ptr %m66592 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %m66592, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %42, i32 noundef %call3) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @m66592_fifo_flush(ptr noundef %_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %m66592 = getelementptr inbounds %struct.m66592_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %m66592 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m66592, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %queue = getelementptr inbounds %struct.m66592_ep, ptr %_ep, i32 0, i32 2
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %3, %queue
  br i1 %cmp.i.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %busy = getelementptr inbounds %struct.m66592_ep, ptr %_ep, i32 0, i32 3
  %4 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %busy, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool7.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool7.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = ptrtoint ptr %m66592 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m66592, align 4
  %pipenum = getelementptr inbounds %struct.m66592_ep, ptr %_ep, i32 0, i32 4
  %7 = ptrtoint ptr %pipenum to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %pipenum, align 2
  %conv.i.i = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp.i.i = icmp eq i16 %8, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %reg.i.i.i.i = getelementptr inbounds %struct.m66592, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %10, i32 96
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %12 = and i16 %11, -769
  %13 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg.i.i.i.i, align 4
  %add.ptr.i12.i.i.i = getelementptr i8, ptr %14, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i.i.i, i16 %12) #10, !srcloc !182
  br label %pipe_stop.exit

if.else.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %8)
  %cmp3.i.i = icmp ult i16 %8, 8
  br i1 %cmp3.i.i, label %if.then5.i.i, label %do.end.i.i

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = shl nuw nsw i32 %conv.i.i, 1
  %add.i.i = add nuw nsw i32 %sub.i.i, 110
  %reg.i.i15.i.i = getelementptr inbounds %struct.m66592, ptr %6, i32 0, i32 1
  %15 = ptrtoint ptr %reg.i.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg.i.i15.i.i, align 4
  %add.ptr.i.i16.i.i = getelementptr i8, ptr %16, i32 %add.i.i
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i16.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %18 = and i16 %17, -769
  %19 = ptrtoint ptr %reg.i.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg.i.i15.i.i, align 4
  %add.ptr.i12.i19.i.i = getelementptr i8, ptr %20, i32 %add.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i19.i.i, i16 %18) #10, !srcloc !182
  br label %pipe_stop.exit

do.end.i.i:                                       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv.i.i) #13
  br label %pipe_stop.exit

pipe_stop.exit:                                   ; preds = %do.end.i.i, %if.then5.i.i, %if.then.i.i
  %21 = ptrtoint ptr %m66592 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %m66592, align 4
  %fifoctr = getelementptr inbounds %struct.m66592_ep, ptr %_ep, i32 0, i32 8
  %23 = ptrtoint ptr %fifoctr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fifoctr, align 4
  %reg.i.i = getelementptr inbounds %struct.m66592, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 %24
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #10, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %28 = and i16 %27, -65
  %29 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %30, i32 %24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i, i16 %28) #10, !srcloc !182
  br label %if.end

if.end:                                           ; preds = %pipe_stop.exit, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %31 = ptrtoint ptr %m66592 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %m66592, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %32, i32 noundef %call3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m66592_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %gadget = getelementptr inbounds %struct.m66592, ptr %1, i32 0, i32 5
  tail call void @usb_del_gadget_udc(ptr noundef %gadget) #10
  %timer = getelementptr inbounds %struct.m66592, ptr %1, i32 0, i32 13
  %call1 = tail call i32 @del_timer_sync(ptr noundef %timer) #10
  %reg = getelementptr inbounds %struct.m66592, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  tail call void @iounmap(ptr noundef %3) #10
  %call2 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  %call3 = tail call ptr @free_irq(i32 noundef %call2, ptr noundef %1) #10
  %ep0_req = getelementptr inbounds %struct.m66592, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %ep0_req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ep0_req, align 4
  tail call void @kfree(ptr noundef %5) #10
  %pdata = getelementptr inbounds %struct.m66592, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %clk = getelementptr inbounds %struct.m66592, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %10) #10
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 8
  tail call void @clk_put(ptr noundef %12) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_del_gadget_udc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !15, !16, !17, !18, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !37, !38, !40, !41, !42, !44, !46, !47, !48, !50, !51, !52, !53, !54, !56, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !152, !154, !155, !156, !157, !159, !160, !161, !162, !164, !165, !166}
!llvm.module.flags = !{!168, !169, !170, !171, !172, !173, !174, !175}
!llvm.ident = !{!176}

!0 = !{ptr @__UNIQUE_ID_description232, !1, !"__UNIQUE_ID_description232", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_file233, !3, !"__UNIQUE_ID_file233", i1 false, i1 false}
!3 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 23, i32 1}
!4 = !{ptr @__UNIQUE_ID_license234, !3, !"__UNIQUE_ID_license234", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_author235, !6, !"__UNIQUE_ID_author235", i1 false, i1 false}
!6 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 24, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias236, !8, !"__UNIQUE_ID_alias236", i1 false, i1 false}
!8 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 25, i32 1}
!9 = !{ptr @__initcall__kmod_m66592_udc__245_1698_m66592_driver_init6, !10, !"__initcall__kmod_m66592_udc__245_1698_m66592_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 1698, i32 1}
!11 = !{ptr @__exitcall_m66592_driver_exit, !10, !"__exitcall_m66592_driver_exit", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 1550, i32 3}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @m66592_probe._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @m66592_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 1557, i32 3}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @m66592_probe._entry.3, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @m66592_probe._entry_ptr.7, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 1565, i32 3}
!26 = !{ptr @m66592_probe._entry.8, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @m66592_probe._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 1570, i32 3}
!30 = !{ptr @m66592_probe._entry.11, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @m66592_probe._entry_ptr.13, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @m66592_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 1585, i32 2}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @m66592_probe.__key.15, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 1592, i32 2}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 1598, i32 3}
!40 = !{ptr @m66592_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @m66592_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 1603, i32 40}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 1606, i32 4}
!46 = !{ptr @m66592_probe._entry.21, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @m66592_probe._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 1665, i32 2}
!50 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @m66592_probe._entry.24, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @m66592_probe._entry_ptr.27, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @m66592_gadget_ops, !55, !"m66592_gadget_ops", i1 false, i1 false}
!55 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 1509, i32 36}
!56 = !{ptr @udc_name, !57, !"udc_name", i1 false, i1 false}
!57 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 29, i32 19}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 1130, i32 3}
!60 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @m66592_update_usb_speed._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @m66592_update_usb_speed._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 855, i32 3}
!65 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @irq_packet_read._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @irq_packet_read._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 129, i32 3}
!70 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @control_reg_set_pid._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @control_reg_set_pid._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 806, i32 3}
!75 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @irq_packet_write._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @irq_packet_write._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 756, i32 4}
!80 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @irq_ep0_write._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @irq_ep0_write._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 158, i32 3}
!85 = !{ptr @control_reg_get._entry, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @control_reg_get._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 1189, i32 3}
!89 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @irq_control_stage._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @irq_control_stage._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 113, i32 3}
!94 = !{ptr @control_reg_get_pid._entry, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @control_reg_get_pid._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 582, i32 3}
!98 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @start_ep0._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @start_ep0._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 175, i32 3}
!103 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @control_reg_sqclr._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @control_reg_sqclr._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 31, i32 2}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 31, i32 9}
!110 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 31, i32 16}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 31, i32 23}
!114 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 31, i32 30}
!116 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 31, i32 37}
!118 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 31, i32 44}
!120 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 31, i32 51}
!122 = !{ptr @m66592_ep_name, !123, !"m66592_ep_name", i1 false, i1 false}
!123 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 30, i32 20}
!124 = !{ptr @m66592_ep_ops, !125, !"m66592_ep_ops", i1 false, i1 false}
!125 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 1436, i32 32}
!126 = !{ptr @.str.55, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 398, i32 5}
!128 = !{ptr @.str.56, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @alloc_pipe_config._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @alloc_pipe_config._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.58, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 414, i32 4}
!133 = !{ptr @alloc_pipe_config._entry.57, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @alloc_pipe_config._entry_ptr.59, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.61, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 423, i32 4}
!137 = !{ptr @alloc_pipe_config._entry.60, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @alloc_pipe_config._entry_ptr.62, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.64, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 431, i32 3}
!141 = !{ptr @alloc_pipe_config._entry.63, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @alloc_pipe_config._entry_ptr.65, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.67, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 446, i32 3}
!145 = !{ptr @alloc_pipe_config._entry.66, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @alloc_pipe_config._entry_ptr.68, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.69, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 267, i32 3}
!149 = !{ptr @.str.70, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @pipe_buffer_setting._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @pipe_buffer_setting._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.71, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 296, i32 3}
!154 = !{ptr @.str.72, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @pipe_buffer_release._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @pipe_buffer_release._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.73, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 637, i32 4}
!159 = !{ptr @.str.74, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @init_controller._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @init_controller._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.76, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 649, i32 4}
!164 = !{ptr @init_controller._entry.75, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @init_controller._entry_ptr.77, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @m66592_driver, !167, !"m66592_driver", i1 false, i1 false}
!167 = !{!"../drivers/usb/gadget/udc/m66592-udc.c", i32 1691, i32 31}
!168 = !{i32 1, !"wchar_size", i32 2}
!169 = !{i32 1, !"min_enum_size", i32 4}
!170 = !{i32 8, !"branch-target-enforcement", i32 0}
!171 = !{i32 8, !"sign-return-address", i32 0}
!172 = !{i32 8, !"sign-return-address-all", i32 0}
!173 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!174 = !{i32 7, !"uwtable", i32 1}
!175 = !{i32 7, !"frame-pointer", i32 2}
!176 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!177 = distinct !{!177, !178}
!178 = !{!"llvm.loop.peeled.count", i32 1}
!179 = !{i64 4655821}
!180 = !{i64 2152196396}
!181 = !{i64 2152197813}
!182 = !{i64 4655621}
!183 = !{!"branch_weights", i32 2000, i32 1}
!184 = !{!"branch_weights", i32 1, i32 2000}
!185 = !{i64 2152197389}
!186 = !{i64 4656044}
!187 = !{i64 2154269733, i64 2154270233, i64 2154269770, i64 2154269826, i64 2154269860, i64 2154269884, i64 2154269925, i64 2154269946, i64 2154269974, i64 2154270008}
!188 = !{i64 2154319979, i64 2154320480, i64 2154320016, i64 2154320072, i64 2154320106, i64 2154320130, i64 2154320171, i64 2154320192, i64 2154320220, i64 2154320254}
