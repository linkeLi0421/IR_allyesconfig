; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/usbdux.c_pt.bc'
source_filename = "../drivers/comedi/drivers/usbdux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.comedi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usbdux_private = type { i32, i32, ptr, ptr, ptr, i32, i8, i32, ptr, ptr, i8, i32, i32, i32, i32, i32, ptr, %struct.mutex }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.comedi_async = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, ptr }

@__initcall__kmod_usbdux__240_1723_usbdux_driver_init6 = internal global ptr @usbdux_driver_init, section ".initcall6.init", align 4
@usbdux_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr null, ptr @usbdux_detach, ptr @usbdux_auto_attach, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@usbdux_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @usbdux_usb_probe, ptr @comedi_usb_auto_unconfig, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usbdux_usb_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_usbdux_driver_exit = internal global ptr @usbdux_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author241 = internal constant [44 x i8] c"usbdux.author=Bernd Porr, BerndPorr@f2s.com\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [62 x i8] c"usbdux.description=Stirling/ITL USB-DUX -- Bernd.Porr@f2s.com\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [42 x i8] c"usbdux.file=drivers/comedi/drivers/usbdux\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [19 x i8] c"usbdux.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware245 = internal constant [36 x i8] c"usbdux.firmware=usbdux_firmware.bin\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usbdux\00", [25 x i8] zeroinitializer }, align 32
@usbdux_auto_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&devpriv->mut\00", [18 x i8] zeroinitializer }, align 32
@usbdux_auto_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1591, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"could not set alternate setting 3 in high speed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"usbdux_auto_attach\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/comedi/drivers/usbdux.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usbdux_auto_attach._entry_ptr = internal global ptr @usbdux_auto_attach._entry, section ".printk_index", align 4
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"usbdux_firmware.bin\00", [44 x i8] zeroinitializer }, align 32
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@usbduxsub_ai_isoc_irq.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.4, ptr @.str.9, i8 0, i8 77, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usbduxsub_ai_isoc_irq\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CRC error in ISO IN stream\0A\00", [36 x i8] zeroinitializer }, align 32
@usbduxsub_ai_isoc_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.4, i32 327, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Non-zero urb status received in ai intr context: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@usbduxsub_ai_isoc_irq._entry_ptr = internal global ptr @usbduxsub_ai_isoc_irq._entry, section ".printk_index", align 4
@usbduxsub_ai_handle_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 278, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"urb resubmit failed in int-context! err=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"usbduxsub_ai_handle_urb\00", [40 x i8] zeroinitializer }, align 32
@usbduxsub_ai_handle_urb._entry_ptr = internal global ptr @usbduxsub_ai_handle_urb._entry, section ".printk_index", align 4
@usbduxsub_ai_handle_urb._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.4, i32 281, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"buggy USB host controller or bug in IRQ handler!\0A\00", [46 x i8] zeroinitializer }, align 32
@usbduxsub_ai_handle_urb._entry_ptr.15 = internal global ptr @usbduxsub_ai_handle_urb._entry.13, section ".printk_index", align 4
@usbduxsub_ao_isoc_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 462, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Non-zero urb status received in ao intr context: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usbduxsub_ao_isoc_irq\00", [42 x i8] zeroinitializer }, align 32
@usbduxsub_ao_isoc_irq._entry_ptr = internal global ptr @usbduxsub_ao_isoc_irq._entry, section ".printk_index", align 4
@usbduxsub_ao_handle_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 395, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"buffer underflow\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"usbduxsub_ao_handle_urb\00", [40 x i8] zeroinitializer }, align 32
@usbduxsub_ao_handle_urb._entry_ptr = internal global ptr @usbduxsub_ao_handle_urb._entry, section ".printk_index", align 4
@usbduxsub_ao_handle_urb._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.4, i32 425, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ao urb resubm failed in int-cont. ret=%d\00", [55 x i8] zeroinitializer }, align 32
@usbduxsub_ao_handle_urb._entry_ptr.22 = internal global ptr @usbduxsub_ao_handle_urb._entry.20, section ".printk_index", align 4
@usbduxsub_ao_handle_urb._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.4, i32 428, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"buggy USB host controller or bug in IRQ handling!\0A\00", [45 x i8] zeroinitializer }, align 32
@usbduxsub_ao_handle_urb._entry_ptr.25 = internal global ptr @usbduxsub_ao_handle_urb._entry.23, section ".printk_index", align 4
@usbdux_firmware_upload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 1378, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"usbdux firmware binary it too large for FX2.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"usbdux_firmware_upload\00", [41 x i8] zeroinitializer }, align 32
@usbdux_firmware_upload._entry_ptr = internal global ptr @usbdux_firmware_upload._entry, section ".printk_index", align 4
@usbdux_firmware_upload._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.4, i32 1403, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"can not stop firmware\0A\00", [41 x i8] zeroinitializer }, align 32
@usbdux_firmware_upload._entry_ptr.30 = internal global ptr @usbdux_firmware_upload._entry.28, section ".printk_index", align 4
@usbdux_firmware_upload._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.4, i32 1415, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"firmware upload failed\0A\00", [40 x i8] zeroinitializer }, align 32
@usbdux_firmware_upload._entry_ptr.33 = internal global ptr @usbdux_firmware_upload._entry.31, section ".printk_index", align 4
@usbdux_firmware_upload._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.27, ptr @.str.4, i32 1428, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"can not start firmware\0A\00", [40 x i8] zeroinitializer }, align 32
@usbdux_firmware_upload._entry_ptr.36 = internal global ptr @usbdux_firmware_upload._entry.34, section ".printk_index", align 4
@range_usbdux_ai_range = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 -4096000, i32 4096000, i32 0 }, %struct.comedi_krange { i32 -2048000, i32 2048000, i32 0 }, %struct.comedi_krange { i32 0, i32 4096000, i32 0 }, %struct.comedi_krange { i32 0, i32 2048000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@range_usbdux_ao_range = internal constant { { i32, [2 x %struct.comedi_krange] }, [36 x i8] } { { i32, [2 x %struct.comedi_krange] } { i32 2, [2 x %struct.comedi_krange] [%struct.comedi_krange { i32 -4096000, i32 4096000, i32 0 }, %struct.comedi_krange { i32 0, i32 4096000, i32 0 }] }, [36 x i8] zeroinitializer }, align 32
@usbduxsub_pwm_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 1178, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Non-zero urb status received in pwm intr context: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"usbduxsub_pwm_irq\00", [46 x i8] zeroinitializer }, align 32
@usbduxsub_pwm_irq._entry_ptr = internal global ptr @usbduxsub_pwm_irq._entry, section ".printk_index", align 4
@usbduxsub_pwm_irq._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.4, i32 1196, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"pwm urb resubm failed in int-cont. ret=%d\00", [54 x i8] zeroinitializer }, align 32
@usbduxsub_pwm_irq._entry_ptr.43 = internal global ptr @usbduxsub_pwm_irq._entry.41, section ".printk_index", align 4
@usbduxsub_pwm_irq._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.40, ptr @.str.4, i32 1199, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@usbduxsub_pwm_irq._entry_ptr.45 = internal global ptr @usbduxsub_pwm_irq._entry.44, section ".printk_index", align 4
@usbdux_usb_table = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 5080, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5080, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 31, i64 32, i64 5000, i64 5001, i64 5002, i64 5003]
@__sancov_gen_cov_switch_values.46 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967193, i64 4294967212, i64 4294967294]
@__sancov_gen_cov_switch_values.47 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967193, i64 4294967294]
@__sancov_gen_cov_switch_values.48 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967193, i64 4294967294]
@___asan_gen_.49 = private unnamed_addr constant [14 x i8] c"usbdux_driver\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1697, i32 29 }
@___asan_gen_.52 = private unnamed_addr constant [18 x i8] c"usbdux_usb_driver\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1717, i32 26 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1698, i32 17 }
@___asan_gen_.58 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1568, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1590, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1595, i32 45 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 311, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 325, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 276, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 280, i32 5 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 460, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 395, i32 5 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 423, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 427, i32 5 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1377, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1403, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1415, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1428, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant [22 x i8] c"range_usbdux_ai_range\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 151, i32 35 }
@___asan_gen_.172 = private unnamed_addr constant [22 x i8] c"range_usbdux_ao_range\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 160, i32 35 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1176, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1194, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1198, i32 5 }
@___asan_gen_.193 = private unnamed_addr constant [17 x i8] c"usbdux_usb_table\00", align 1
@___asan_gen_.194 = private constant [35 x i8] c"../drivers/comedi/drivers/usbdux.c\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1710, i32 35 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_firmware245, ptr @__UNIQUE_ID_license244, ptr @__exitcall_usbdux_driver_exit, ptr @__initcall__kmod_usbdux__240_1723_usbdux_driver_init6, ptr @usbdux_auto_attach._entry, ptr @usbdux_auto_attach._entry_ptr, ptr @usbdux_driver_exit, ptr @usbdux_firmware_upload._entry, ptr @usbdux_firmware_upload._entry.28, ptr @usbdux_firmware_upload._entry.31, ptr @usbdux_firmware_upload._entry.34, ptr @usbdux_firmware_upload._entry_ptr, ptr @usbdux_firmware_upload._entry_ptr.30, ptr @usbdux_firmware_upload._entry_ptr.33, ptr @usbdux_firmware_upload._entry_ptr.36, ptr @usbduxsub_ai_handle_urb._entry, ptr @usbduxsub_ai_handle_urb._entry.13, ptr @usbduxsub_ai_handle_urb._entry_ptr, ptr @usbduxsub_ai_handle_urb._entry_ptr.15, ptr @usbduxsub_ai_isoc_irq._entry, ptr @usbduxsub_ai_isoc_irq._entry_ptr, ptr @usbduxsub_ao_handle_urb._entry, ptr @usbduxsub_ao_handle_urb._entry.20, ptr @usbduxsub_ao_handle_urb._entry.23, ptr @usbduxsub_ao_handle_urb._entry_ptr, ptr @usbduxsub_ao_handle_urb._entry_ptr.22, ptr @usbduxsub_ao_handle_urb._entry_ptr.25, ptr @usbduxsub_ao_isoc_irq._entry, ptr @usbduxsub_ao_isoc_irq._entry_ptr, ptr @usbduxsub_pwm_irq._entry, ptr @usbduxsub_pwm_irq._entry.41, ptr @usbduxsub_pwm_irq._entry.44, ptr @usbduxsub_pwm_irq._entry_ptr, ptr @usbduxsub_pwm_irq._entry_ptr.43, ptr @usbduxsub_pwm_irq._entry_ptr.45, ptr @usbdux_driver, ptr @usbdux_usb_driver, ptr @.str, ptr @usbdux_auto_attach.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @range_usbdux_ai_range, ptr @range_usbdux_ao_range, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @usbdux_usb_table], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbdux_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbdux_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbdux_auto_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbdux_auto_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxsub_ai_isoc_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxsub_ai_handle_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxsub_ai_handle_urb._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxsub_ao_isoc_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxsub_ao_handle_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxsub_ao_handle_urb._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxsub_ao_handle_urb._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbdux_firmware_upload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbdux_firmware_upload._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbdux_firmware_upload._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbdux_firmware_upload._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_usbdux_ai_range to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_usbdux_ao_range to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxsub_pwm_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxsub_pwm_irq._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbduxsub_pwm_irq._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbdux_usb_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usbdux_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_usb_driver_register(ptr noundef nonnull @usbdux_driver, ptr noundef nonnull @usbdux_usb_driver) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usbdux_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @comedi_usb_driver_unregister(ptr noundef nonnull @usbdux_driver, ptr noundef nonnull @usbdux_usb_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_usb_driver_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_usb_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbdux_detach(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_usb_interface(ptr noundef %dev) #12
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %call, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %mut = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %mut, i32 noundef 0) #12
  %3 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private, align 4
  %pwm_urb.i.i = getelementptr inbounds %struct.usbdux_private, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %pwm_urb.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pwm_urb.i.i, align 4
  tail call void @usb_kill_urb(ptr noundef %6) #12
  %pwm_cmd_running.i = getelementptr inbounds %struct.usbdux_private, ptr %4, i32 0, i32 10
  %7 = ptrtoint ptr %pwm_cmd_running.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %pwm_cmd_running.i, align 4
  %bf.clear.i = and i8 %bf.load.i, -17
  store i8 %bf.clear.i, ptr %pwm_cmd_running.i, align 4
  %8 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private, align 4
  %ao_urbs.i = getelementptr inbounds %struct.usbdux_private, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %ao_urbs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ao_urbs.i, align 4
  %tobool1.not.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i, label %if.end.usbdux_ao_stop.exit_crit_edge, label %if.then.i

if.end.usbdux_ao_stop.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %usbdux_ao_stop.exit

if.then.i:                                        ; preds = %if.end
  %n_ao_urbs.i = getelementptr inbounds %struct.usbdux_private, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %n_ao_urbs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_ao_urbs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp3.i.i = icmp sgt i32 %13, 0
  br i1 %cmp3.i.i, label %if.then.i.for.body.i.i_crit_edge, label %if.then.i.usbdux_ao_stop.exit_crit_edge

if.then.i.usbdux_ao_stop.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usbdux_ao_stop.exit

if.then.i.for.body.i.i_crit_edge:                 ; preds = %if.then.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then.i.for.body.i.i_crit_edge
  %i.04.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr ptr, ptr %11, i32 %i.04.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @usb_kill_urb(ptr noundef %15) #12
  %inc.i.i = add nuw nsw i32 %i.04.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %13
  br i1 %exitcond.not.i.i, label %for.body.i.i.usbdux_ao_stop.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.body.i.i.usbdux_ao_stop.exit_crit_edge:       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usbdux_ao_stop.exit

usbdux_ao_stop.exit:                              ; preds = %for.body.i.i.usbdux_ao_stop.exit_crit_edge, %if.then.i.usbdux_ao_stop.exit_crit_edge, %if.end.usbdux_ao_stop.exit_crit_edge
  %ao_cmd_running.i = getelementptr inbounds %struct.usbdux_private, ptr %9, i32 0, i32 10
  %16 = ptrtoint ptr %ao_cmd_running.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i13 = load i8, ptr %ao_cmd_running.i, align 4
  %bf.clear.i14 = and i8 %bf.load.i13, -33
  store i8 %bf.clear.i14, ptr %ao_cmd_running.i, align 4
  %17 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private, align 4
  %ai_urbs.i = getelementptr inbounds %struct.usbdux_private, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %ai_urbs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ai_urbs.i, align 4
  %tobool1.not.i16 = icmp eq ptr %20, null
  br i1 %tobool1.not.i16, label %usbdux_ao_stop.exit.usbdux_ai_stop.exit_crit_edge, label %if.then.i18

usbdux_ao_stop.exit.usbdux_ai_stop.exit_crit_edge: ; preds = %usbdux_ao_stop.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %usbdux_ai_stop.exit

if.then.i18:                                      ; preds = %usbdux_ao_stop.exit
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp3.i.i17 = icmp sgt i32 %22, 0
  br i1 %cmp3.i.i17, label %if.then.i18.for.body.i.i23_crit_edge, label %if.then.i18.usbdux_ai_stop.exit_crit_edge

if.then.i18.usbdux_ai_stop.exit_crit_edge:        ; preds = %if.then.i18
  call void @__sanitizer_cov_trace_pc() #14
  br label %usbdux_ai_stop.exit

if.then.i18.for.body.i.i23_crit_edge:             ; preds = %if.then.i18
  br label %for.body.i.i23

for.body.i.i23:                                   ; preds = %for.body.i.i23.for.body.i.i23_crit_edge, %if.then.i18.for.body.i.i23_crit_edge
  %i.04.i.i19 = phi i32 [ %inc.i.i21, %for.body.i.i23.for.body.i.i23_crit_edge ], [ 0, %if.then.i18.for.body.i.i23_crit_edge ]
  %arrayidx.i.i20 = getelementptr ptr, ptr %20, i32 %i.04.i.i19
  %23 = ptrtoint ptr %arrayidx.i.i20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i20, align 4
  tail call void @usb_kill_urb(ptr noundef %24) #12
  %inc.i.i21 = add nuw nsw i32 %i.04.i.i19, 1
  %exitcond.not.i.i22 = icmp eq i32 %inc.i.i21, %22
  br i1 %exitcond.not.i.i22, label %for.body.i.i23.usbdux_ai_stop.exit_crit_edge, label %for.body.i.i23.for.body.i.i23_crit_edge

for.body.i.i23.for.body.i.i23_crit_edge:          ; preds = %for.body.i.i23
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i23

for.body.i.i23.usbdux_ai_stop.exit_crit_edge:     ; preds = %for.body.i.i23
  call void @__sanitizer_cov_trace_pc() #14
  br label %usbdux_ai_stop.exit

usbdux_ai_stop.exit:                              ; preds = %for.body.i.i23.usbdux_ai_stop.exit_crit_edge, %if.then.i18.usbdux_ai_stop.exit_crit_edge, %usbdux_ao_stop.exit.usbdux_ai_stop.exit_crit_edge
  %ai_cmd_running.i = getelementptr inbounds %struct.usbdux_private, ptr %18, i32 0, i32 10
  %25 = ptrtoint ptr %ai_cmd_running.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load.i24 = load i8, ptr %ai_cmd_running.i, align 4
  %bf.clear.i25 = and i8 %bf.load.i24, -65
  store i8 %bf.clear.i25, ptr %ai_cmd_running.i, align 4
  %26 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %private, align 4
  %pwm_urb.i = getelementptr inbounds %struct.usbdux_private, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %pwm_urb.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pwm_urb.i, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %usbdux_ai_stop.exit.if.end.i_crit_edge, label %if.then.i27

usbdux_ai_stop.exit.if.end.i_crit_edge:           ; preds = %usbdux_ai_stop.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i27:                                      ; preds = %usbdux_ai_stop.exit
  call void @__sanitizer_cov_trace_pc() #14
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 14
  %30 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %transfer_buffer.i, align 4
  tail call void @kfree(ptr noundef %31) #12
  tail call void @usb_free_urb(ptr noundef nonnull %29) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i27, %usbdux_ai_stop.exit.if.end.i_crit_edge
  %ao_urbs.i28 = getelementptr inbounds %struct.usbdux_private, ptr %27, i32 0, i32 3
  %32 = ptrtoint ptr %ao_urbs.i28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ao_urbs.i28, align 4
  %tobool1.not.i29 = icmp eq ptr %33, null
  br i1 %tobool1.not.i29, label %if.end.i.if.end9.i_crit_edge, label %for.cond.preheader.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

for.cond.preheader.i:                             ; preds = %if.end.i
  %n_ao_urbs.i30 = getelementptr inbounds %struct.usbdux_private, ptr %27, i32 0, i32 1
  %34 = ptrtoint ptr %n_ao_urbs.i30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %n_ao_urbs.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp52.i = icmp sgt i32 %35, 0
  br i1 %cmp52.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.053.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %36 = ptrtoint ptr %ao_urbs.i28 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ao_urbs.i28, align 4
  %arrayidx.i = getelementptr ptr, ptr %37, i32 %i.053.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i, align 4
  %tobool4.not.i = icmp eq ptr %39, null
  br i1 %tobool4.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then5.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then5.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %transfer_buffer6.i = getelementptr inbounds %struct.urb, ptr %39, i32 0, i32 14
  %40 = ptrtoint ptr %transfer_buffer6.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %transfer_buffer6.i, align 4
  tail call void @kfree(ptr noundef %41) #12
  tail call void @usb_free_urb(ptr noundef nonnull %39) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then5.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.053.i, 1
  %42 = ptrtoint ptr %n_ao_urbs.i30 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %n_ao_urbs.i30, align 4
  %cmp.i = icmp slt i32 %inc.i, %43
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %44 = ptrtoint ptr %ao_urbs.i28 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ao_urbs.i28, align 4
  tail call void @kfree(ptr noundef %45) #12
  br label %if.end9.i

if.end9.i:                                        ; preds = %for.end.i, %if.end.i.if.end9.i_crit_edge
  %ai_urbs.i31 = getelementptr inbounds %struct.usbdux_private, ptr %27, i32 0, i32 2
  %46 = ptrtoint ptr %ai_urbs.i31 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ai_urbs.i31, align 4
  %tobool10.not.i = icmp eq ptr %47, null
  br i1 %tobool10.not.i, label %if.end9.i.usbdux_free_usb_buffers.exit_crit_edge, label %for.cond12.preheader.i

if.end9.i.usbdux_free_usb_buffers.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usbdux_free_usb_buffers.exit

for.cond12.preheader.i:                           ; preds = %if.end9.i
  %48 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp1354.i = icmp sgt i32 %49, 0
  br i1 %cmp1354.i, label %for.cond12.preheader.i.for.body14.i_crit_edge, label %for.cond12.preheader.i.for.end23.i_crit_edge

for.cond12.preheader.i.for.end23.i_crit_edge:     ; preds = %for.cond12.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end23.i

for.cond12.preheader.i.for.body14.i_crit_edge:    ; preds = %for.cond12.preheader.i
  br label %for.body14.i

for.body14.i:                                     ; preds = %for.inc21.i.for.body14.i_crit_edge, %for.cond12.preheader.i.for.body14.i_crit_edge
  %i.155.i = phi i32 [ %inc22.i, %for.inc21.i.for.body14.i_crit_edge ], [ 0, %for.cond12.preheader.i.for.body14.i_crit_edge ]
  %50 = ptrtoint ptr %ai_urbs.i31 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ai_urbs.i31, align 4
  %arrayidx16.i = getelementptr ptr, ptr %51, i32 %i.155.i
  %52 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx16.i, align 4
  %tobool17.not.i = icmp eq ptr %53, null
  br i1 %tobool17.not.i, label %for.body14.i.for.inc21.i_crit_edge, label %if.then18.i

for.body14.i.for.inc21.i_crit_edge:               ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc21.i

if.then18.i:                                      ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #14
  %transfer_buffer19.i = getelementptr inbounds %struct.urb, ptr %53, i32 0, i32 14
  %54 = ptrtoint ptr %transfer_buffer19.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %transfer_buffer19.i, align 4
  tail call void @kfree(ptr noundef %55) #12
  tail call void @usb_free_urb(ptr noundef nonnull %53) #12
  br label %for.inc21.i

for.inc21.i:                                      ; preds = %if.then18.i, %for.body14.i.for.inc21.i_crit_edge
  %inc22.i = add nuw nsw i32 %i.155.i, 1
  %56 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %27, align 4
  %cmp13.i = icmp slt i32 %inc22.i, %57
  br i1 %cmp13.i, label %for.inc21.i.for.body14.i_crit_edge, label %for.inc21.i.for.end23.i_crit_edge

for.inc21.i.for.end23.i_crit_edge:                ; preds = %for.inc21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end23.i

for.inc21.i.for.body14.i_crit_edge:               ; preds = %for.inc21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body14.i

for.end23.i:                                      ; preds = %for.inc21.i.for.end23.i_crit_edge, %for.cond12.preheader.i.for.end23.i_crit_edge
  %58 = ptrtoint ptr %ai_urbs.i31 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ai_urbs.i31, align 4
  tail call void @kfree(ptr noundef %59) #12
  br label %usbdux_free_usb_buffers.exit

usbdux_free_usb_buffers.exit:                     ; preds = %for.end23.i, %if.end9.i.usbdux_free_usb_buffers.exit_crit_edge
  %insn_buf.i = getelementptr inbounds %struct.usbdux_private, ptr %27, i32 0, i32 9
  %60 = ptrtoint ptr %insn_buf.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %insn_buf.i, align 4
  tail call void @kfree(ptr noundef %61) #12
  %in_buf.i = getelementptr inbounds %struct.usbdux_private, ptr %27, i32 0, i32 8
  %62 = ptrtoint ptr %in_buf.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %in_buf.i, align 4
  tail call void @kfree(ptr noundef %63) #12
  %dux_commands.i = getelementptr inbounds %struct.usbdux_private, ptr %27, i32 0, i32 16
  %64 = ptrtoint ptr %dux_commands.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dux_commands.i, align 4
  tail call void @kfree(ptr noundef %65) #12
  tail call void @mutex_unlock(ptr noundef %mut) #12
  tail call void @mutex_destroy(ptr noundef %mut) #12
  br label %cleanup

cleanup:                                          ; preds = %usbdux_free_usb_buffers.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbdux_auto_attach(ptr noundef %dev, i32 noundef %context_unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_usb_interface(ptr noundef %dev) #12
  %call1 = tail call ptr @comedi_to_usb_dev(ptr noundef %dev) #12
  %call2 = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 160) #12
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  %mut = getelementptr inbounds %struct.usbdux_private, ptr %call2, i32 0, i32 17
  tail call void @__mutex_init(ptr noundef %mut, ptr noundef nonnull @.str.1, ptr noundef nonnull @usbdux_auto_attach.__key) #12
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %call, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %driver_data.i.i, align 4
  %speed = getelementptr inbounds %struct.usb_device, ptr %call1, i32 0, i32 4
  %1 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp = icmp eq i32 %2, 3
  %high_speed = getelementptr inbounds %struct.usbdux_private, ptr %call2, i32 0, i32 10
  %3 = ptrtoint ptr %high_speed to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %high_speed, align 4
  %bf.shl = select i1 %cmp, i8 -128, i8 0
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %high_speed, align 4
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 10, ptr %call2, align 4
  %pwm_buf_sz = getelementptr inbounds %struct.usbdux_private, ptr %call2, i32 0, i32 7
  %5 = ptrtoint ptr %pwm_buf_sz to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 512, ptr %pwm_buf_sz, align 4
  br label %if.end9

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 5, ptr %call2, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  %.sink = phi i32 [ 10, %if.then6 ], [ 5, %if.else ]
  %7 = getelementptr inbounds %struct.usbdux_private, ptr %call2, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %7, align 4
  %call.i = tail call ptr @comedi_to_usb_dev(ptr noundef %dev) #12
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %9 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 26) #15
  %dux_commands.i = getelementptr inbounds %struct.usbdux_private, ptr %10, i32 0, i32 16
  %12 = ptrtoint ptr %dux_commands.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i.i, ptr %dux_commands.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i151.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 16) #15
  %in_buf.i = getelementptr inbounds %struct.usbdux_private, ptr %10, i32 0, i32 8
  %14 = ptrtoint ptr %in_buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i151.i, ptr %in_buf.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i152.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 16) #15
  %insn_buf.i = getelementptr inbounds %struct.usbdux_private, ptr %10, i32 0, i32 9
  %16 = ptrtoint ptr %insn_buf.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i152.i, ptr %insn_buf.i, align 4
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %10, align 4
  %19 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %18, i32 4) #12
  %20 = extractvalue { i32, i1 } %19, 1
  br i1 %20, label %if.end9.kcalloc.exit.i_crit_edge, label %if.end7.i.i.i, !prof !110

if.end9.kcalloc.exit.i_crit_edge:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %kcalloc.exit.i

if.end7.i.i.i:                                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %21 = extractvalue { i32, i1 } %19, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %21, i32 noundef 3520) #16
  br label %kcalloc.exit.i

kcalloc.exit.i:                                   ; preds = %if.end7.i.i.i, %if.end9.kcalloc.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %call8.i.i.i, %if.end7.i.i.i ], [ null, %if.end9.kcalloc.exit.i_crit_edge ]
  %ai_urbs.i = getelementptr inbounds %struct.usbdux_private, ptr %10, i32 0, i32 2
  %22 = ptrtoint ptr %ai_urbs.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %retval.0.i.i.i, ptr %ai_urbs.i, align 4
  %n_ao_urbs.i = getelementptr inbounds %struct.usbdux_private, ptr %10, i32 0, i32 1
  %23 = ptrtoint ptr %n_ao_urbs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n_ao_urbs.i, align 4
  %25 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %24, i32 4) #12
  %26 = extractvalue { i32, i1 } %25, 1
  br i1 %26, label %kcalloc.exit.i.kcalloc.exit185.i_crit_edge, label %if.end7.i.i183.i, !prof !110

kcalloc.exit.i.kcalloc.exit185.i_crit_edge:       ; preds = %kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kcalloc.exit185.i

if.end7.i.i183.i:                                 ; preds = %kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %27 = extractvalue { i32, i1 } %25, 0
  %call8.i.i182.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %27, i32 noundef 3520) #16
  br label %kcalloc.exit185.i

kcalloc.exit185.i:                                ; preds = %if.end7.i.i183.i, %kcalloc.exit.i.kcalloc.exit185.i_crit_edge
  %retval.0.i.i184.i = phi ptr [ %call8.i.i182.i, %if.end7.i.i183.i ], [ null, %kcalloc.exit.i.kcalloc.exit185.i_crit_edge ]
  %ao_urbs.i = getelementptr inbounds %struct.usbdux_private, ptr %10, i32 0, i32 3
  %28 = ptrtoint ptr %ao_urbs.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %retval.0.i.i184.i, ptr %ao_urbs.i, align 4
  %29 = ptrtoint ptr %dux_commands.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dux_commands.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %kcalloc.exit185.i.cleanup_crit_edge, label %lor.lhs.false.i

kcalloc.exit185.i.cleanup_crit_edge:              ; preds = %kcalloc.exit185.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %kcalloc.exit185.i
  %31 = ptrtoint ptr %in_buf.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %in_buf.i, align 4
  %tobool8.not.i = icmp eq ptr %32, null
  br i1 %tobool8.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false9.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false.i
  %33 = ptrtoint ptr %insn_buf.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %insn_buf.i, align 4
  %tobool11.not.i = icmp eq ptr %34, null
  br i1 %tobool11.not.i, label %lor.lhs.false9.i.cleanup_crit_edge, label %lor.lhs.false12.i

lor.lhs.false9.i.cleanup_crit_edge:               ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false12.i:                                ; preds = %lor.lhs.false9.i
  %35 = ptrtoint ptr %ai_urbs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ai_urbs.i, align 4
  %tobool14.not.i = icmp eq ptr %36, null
  %tobool17.not.i = icmp eq ptr %retval.0.i.i184.i, null
  %or.cond.i = select i1 %tobool14.not.i, i1 true, i1 %tobool17.not.i
  br i1 %or.cond.i, label %lor.lhs.false12.i.cleanup_crit_edge, label %for.cond.preheader.i

lor.lhs.false12.i.cleanup_crit_edge:              ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader.i:                             ; preds = %lor.lhs.false12.i
  %37 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp203.i = icmp sgt i32 %38, 0
  br i1 %cmp203.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.cond35.preheader.i_crit_edge

for.cond.preheader.i.for.cond35.preheader.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond35.preheader.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond35.preheader.i:                           ; preds = %if.end31.i.for.cond35.preheader.i_crit_edge, %for.cond.preheader.i.for.cond35.preheader.i_crit_edge
  %39 = ptrtoint ptr %n_ao_urbs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %n_ao_urbs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp37205.i = icmp sgt i32 %40, 0
  br i1 %cmp37205.i, label %for.body38.lr.ph.i, label %for.cond35.preheader.i.for.end72.i_crit_edge

for.cond35.preheader.i.for.end72.i_crit_edge:     ; preds = %for.cond35.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end72.i

for.body38.lr.ph.i:                               ; preds = %for.cond35.preheader.i
  %high_speed.i = getelementptr inbounds %struct.usbdux_private, ptr %10, i32 0, i32 10
  br label %for.body38.i

for.body.i:                                       ; preds = %if.end31.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0204.i = phi i32 [ %inc.i, %if.end31.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %call19.i = tail call ptr @usb_alloc_urb(i32 noundef 1, i32 noundef 3264) #12
  %tobool20.not.i = icmp eq ptr %call19.i, null
  br i1 %tobool20.not.i, label %for.body.i.cleanup_crit_edge, label %if.end22.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end22.i:                                       ; preds = %for.body.i
  %41 = ptrtoint ptr %ai_urbs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ai_urbs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %42, i32 %i.0204.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call19.i, ptr %arrayidx.i, align 4
  %dev24.i = getelementptr inbounds %struct.urb, ptr %call19.i, i32 0, i32 8
  %44 = ptrtoint ptr %dev24.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i, ptr %dev24.i, align 4
  %context.i = getelementptr inbounds %struct.urb, ptr %call19.i, i32 0, i32 27
  %45 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %dev, ptr %context.i, align 4
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %call.i, align 8
  %shl.i.i = shl i32 %47, 8
  %or26.i = or i32 %shl.i.i, 196736
  %pipe.i = getelementptr inbounds %struct.urb, ptr %call19.i, i32 0, i32 10
  %48 = ptrtoint ptr %pipe.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or26.i, ptr %pipe.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %call19.i, i32 0, i32 13
  %49 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 2, ptr %transfer_flags.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %50 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i188.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %50, i32 noundef 3520, i32 noundef 16) #15
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %call19.i, i32 0, i32 14
  %51 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call7.i.i188.i, ptr %transfer_buffer.i, align 4
  %tobool29.not.i = icmp eq ptr %call7.i.i188.i, null
  br i1 %tobool29.not.i, label %if.end22.i.cleanup_crit_edge, label %if.end31.i

if.end22.i.cleanup_crit_edge:                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end31.i:                                       ; preds = %if.end22.i
  %complete.i = getelementptr inbounds %struct.urb, ptr %call19.i, i32 0, i32 28
  %52 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @usbduxsub_ai_isoc_irq, ptr %complete.i, align 4
  %number_of_packets.i = getelementptr inbounds %struct.urb, ptr %call19.i, i32 0, i32 24
  %53 = ptrtoint ptr %number_of_packets.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %number_of_packets.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call19.i, i32 0, i32 19
  %54 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 16, ptr %transfer_buffer_length.i, align 4
  %iso_frame_desc.i = getelementptr inbounds %struct.urb, ptr %call19.i, i32 0, i32 29
  %55 = ptrtoint ptr %iso_frame_desc.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %iso_frame_desc.i, align 4
  %length.i = getelementptr inbounds %struct.urb, ptr %call19.i, i32 1, i32 1
  %56 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 16, ptr %length.i, align 4
  %inc.i = add nuw nsw i32 %i.0204.i, 1
  %57 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %10, align 4
  %cmp.i = icmp slt i32 %inc.i, %58
  br i1 %cmp.i, label %if.end31.i.for.body.i_crit_edge, label %if.end31.i.for.cond35.preheader.i_crit_edge

if.end31.i.for.cond35.preheader.i_crit_edge:      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond35.preheader.i

if.end31.i.for.body.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body38.i:                                     ; preds = %if.end56.i.for.body38.i_crit_edge, %for.body38.lr.ph.i
  %i.1206.i = phi i32 [ 0, %for.body38.lr.ph.i ], [ %inc71.i, %if.end56.i.for.body38.i_crit_edge ]
  %call39.i = tail call ptr @usb_alloc_urb(i32 noundef 1, i32 noundef 3264) #12
  %tobool40.not.i = icmp eq ptr %call39.i, null
  br i1 %tobool40.not.i, label %for.body38.i.cleanup_crit_edge, label %if.end42.i

for.body38.i.cleanup_crit_edge:                   ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end42.i:                                       ; preds = %for.body38.i
  %59 = ptrtoint ptr %ao_urbs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ao_urbs.i, align 4
  %arrayidx44.i = getelementptr ptr, ptr %60, i32 %i.1206.i
  %61 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call39.i, ptr %arrayidx44.i, align 4
  %dev45.i = getelementptr inbounds %struct.urb, ptr %call39.i, i32 0, i32 8
  %62 = ptrtoint ptr %dev45.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i, ptr %dev45.i, align 4
  %context46.i = getelementptr inbounds %struct.urb, ptr %call39.i, i32 0, i32 27
  %63 = ptrtoint ptr %context46.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %dev, ptr %context46.i, align 4
  %64 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %call.i, align 8
  %shl.i189.i = shl i32 %65, 8
  %or.i190.i = or i32 %shl.i189.i, 65536
  %pipe49.i = getelementptr inbounds %struct.urb, ptr %call39.i, i32 0, i32 10
  %66 = ptrtoint ptr %pipe49.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %or.i190.i, ptr %pipe49.i, align 4
  %transfer_flags50.i = getelementptr inbounds %struct.urb, ptr %call39.i, i32 0, i32 13
  %67 = ptrtoint ptr %transfer_flags50.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 2, ptr %transfer_flags50.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %68 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i193.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %68, i32 noundef 3520, i32 noundef 24) #15
  %transfer_buffer52.i = getelementptr inbounds %struct.urb, ptr %call39.i, i32 0, i32 14
  %69 = ptrtoint ptr %transfer_buffer52.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call7.i.i193.i, ptr %transfer_buffer52.i, align 4
  %tobool54.not.i = icmp eq ptr %call7.i.i193.i, null
  br i1 %tobool54.not.i, label %if.end42.i.cleanup_crit_edge, label %if.end56.i

if.end42.i.cleanup_crit_edge:                     ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end56.i:                                       ; preds = %if.end42.i
  %complete57.i = getelementptr inbounds %struct.urb, ptr %call39.i, i32 0, i32 28
  %70 = ptrtoint ptr %complete57.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @usbduxsub_ao_isoc_irq, ptr %complete57.i, align 4
  %number_of_packets58.i = getelementptr inbounds %struct.urb, ptr %call39.i, i32 0, i32 24
  %71 = ptrtoint ptr %number_of_packets58.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %number_of_packets58.i, align 4
  %transfer_buffer_length59.i = getelementptr inbounds %struct.urb, ptr %call39.i, i32 0, i32 19
  %72 = ptrtoint ptr %transfer_buffer_length59.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 24, ptr %transfer_buffer_length59.i, align 4
  %iso_frame_desc60.i = getelementptr inbounds %struct.urb, ptr %call39.i, i32 0, i32 29
  %73 = ptrtoint ptr %iso_frame_desc60.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %iso_frame_desc60.i, align 4
  %length65.i = getelementptr inbounds %struct.urb, ptr %call39.i, i32 1, i32 1
  %74 = ptrtoint ptr %length65.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 24, ptr %length65.i, align 4
  %75 = ptrtoint ptr %high_speed.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %bf.load.i = load i8, ptr %high_speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool66.not.i = icmp sgt i8 %bf.load.i, -1
  %spec.select.i = select i1 %tobool66.not.i, i32 1, i32 8
  %76 = getelementptr inbounds %struct.urb, ptr %call39.i, i32 0, i32 25
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %spec.select.i, ptr %76, align 4
  %inc71.i = add nuw nsw i32 %i.1206.i, 1
  %78 = ptrtoint ptr %n_ao_urbs.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %n_ao_urbs.i, align 4
  %cmp37.i = icmp slt i32 %inc71.i, %79
  br i1 %cmp37.i, label %if.end56.i.for.body38.i_crit_edge, label %if.end56.i.for.end72.i_crit_edge

if.end56.i.for.end72.i_crit_edge:                 ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end72.i

if.end56.i.for.body38.i_crit_edge:                ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body38.i

for.end72.i:                                      ; preds = %if.end56.i.for.end72.i_crit_edge, %for.cond35.preheader.i.for.end72.i_crit_edge
  %pwm_buf_sz.i = getelementptr inbounds %struct.usbdux_private, ptr %10, i32 0, i32 7
  %80 = ptrtoint ptr %pwm_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %pwm_buf_sz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool73.not.i = icmp eq i32 %81, 0
  br i1 %tobool73.not.i, label %for.end72.i.if.end13_crit_edge, label %if.then74.i

for.end72.i.if.end13_crit_edge:                   ; preds = %for.end72.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then74.i:                                      ; preds = %for.end72.i
  %call75.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %tobool76.not.i = icmp eq ptr %call75.i, null
  br i1 %tobool76.not.i, label %if.then74.i.cleanup_crit_edge, label %if.end78.i

if.then74.i.cleanup_crit_edge:                    ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end78.i:                                       ; preds = %if.then74.i
  %pwm_urb.i = getelementptr inbounds %struct.usbdux_private, ptr %10, i32 0, i32 4
  %82 = ptrtoint ptr %pwm_urb.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call75.i, ptr %pwm_urb.i, align 4
  %83 = ptrtoint ptr %pwm_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %pwm_buf_sz.i, align 4
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %84, i32 noundef 3520) #16
  %transfer_buffer81.i = getelementptr inbounds %struct.urb, ptr %call75.i, i32 0, i32 14
  %85 = ptrtoint ptr %transfer_buffer81.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call9.i.i.i, ptr %transfer_buffer81.i, align 4
  %tobool83.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool83.not.i, label %if.end78.i.cleanup_crit_edge, label %if.end78.i.if.end13_crit_edge

if.end78.i.if.end13_crit_edge:                    ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.end78.i.cleanup_crit_edge:                     ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %if.end78.i.if.end13_crit_edge, %for.end72.i.if.end13_crit_edge
  %86 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %call, align 8
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %bInterfaceNumber, align 2
  %conv14 = zext i8 %89 to i32
  %call15 = tail call i32 @usb_set_interface(ptr noundef %call1, i32 noundef %conv14, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %do.end21, label %if.end22

do.end21:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %90 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.2) #17
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  %dev23 = getelementptr inbounds %struct.usb_device, ptr %call1, i32 0, i32 15
  %call24 = tail call i32 @comedi_load_firmware(ptr noundef %dev, ptr noundef %dev23, ptr noundef nonnull @.str.7, ptr noundef nonnull @usbdux_firmware_upload, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.end22.cleanup_crit_edge, label %if.end28

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end28:                                         ; preds = %if.end22
  %92 = ptrtoint ptr %high_speed to i32
  call void @__asan_load1_noabort(i32 %92)
  %bf.load30 = load i8, ptr %high_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load30)
  %tobool33.not = icmp sgt i8 %bf.load30, -1
  %cond = select i1 %tobool33.not, i32 4, i32 5
  %call34 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef %cond) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end37:                                         ; preds = %if.end28
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %93 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %subdevices, align 4
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %95 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %94, ptr %read_subdev, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %94, i32 0, i32 2
  %96 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 1, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %94, i32 0, i32 4
  %97 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 1146880, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %94, i32 0, i32 3
  %98 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 8, ptr %n_chan, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %94, i32 0, i32 13
  %99 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 4095, ptr %maxdata, align 4
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, ptr %94, i32 0, i32 5
  %100 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 8, ptr %len_chanlist, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %94, i32 0, i32 15
  %101 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @range_usbdux_ai_range, ptr %range_table, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %94, i32 0, i32 18
  %102 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @usbdux_ai_insn_read, ptr %insn_read, align 4
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, ptr %94, i32 0, i32 23
  %103 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @usbdux_ai_cmdtest, ptr %do_cmdtest, align 4
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, ptr %94, i32 0, i32 22
  %104 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @usbdux_ai_cmd, ptr %do_cmd, align 4
  %cancel = getelementptr inbounds %struct.comedi_subdevice, ptr %94, i32 0, i32 25
  %105 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @usbdux_ai_cancel, ptr %cancel, align 4
  %106 = load ptr, ptr %subdevices, align 4
  %arrayidx39 = getelementptr %struct.comedi_subdevice, ptr %106, i32 1
  %write_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 22
  %107 = ptrtoint ptr %write_subdev to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %arrayidx39, ptr %write_subdev, align 4
  %type40 = getelementptr %struct.comedi_subdevice, ptr %106, i32 1, i32 2
  %108 = ptrtoint ptr %type40 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 2, ptr %type40, align 4
  %subdev_flags41 = getelementptr %struct.comedi_subdevice, ptr %106, i32 1, i32 4
  %109 = ptrtoint ptr %subdev_flags41 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 1196032, ptr %subdev_flags41, align 4
  %n_chan42 = getelementptr %struct.comedi_subdevice, ptr %106, i32 1, i32 3
  %110 = ptrtoint ptr %n_chan42 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 4, ptr %n_chan42, align 4
  %maxdata43 = getelementptr %struct.comedi_subdevice, ptr %106, i32 1, i32 13
  %111 = ptrtoint ptr %maxdata43 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 4095, ptr %maxdata43, align 4
  %len_chanlist45 = getelementptr %struct.comedi_subdevice, ptr %106, i32 1, i32 5
  %112 = ptrtoint ptr %len_chanlist45 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 4, ptr %len_chanlist45, align 4
  %range_table46 = getelementptr %struct.comedi_subdevice, ptr %106, i32 1, i32 15
  %113 = ptrtoint ptr %range_table46 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @range_usbdux_ao_range, ptr %range_table46, align 4
  %do_cmdtest47 = getelementptr %struct.comedi_subdevice, ptr %106, i32 1, i32 23
  %114 = ptrtoint ptr %do_cmdtest47 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @usbdux_ao_cmdtest, ptr %do_cmdtest47, align 4
  %do_cmd48 = getelementptr %struct.comedi_subdevice, ptr %106, i32 1, i32 22
  %115 = ptrtoint ptr %do_cmd48 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @usbdux_ao_cmd, ptr %do_cmd48, align 4
  %cancel49 = getelementptr %struct.comedi_subdevice, ptr %106, i32 1, i32 25
  %116 = ptrtoint ptr %cancel49 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @usbdux_ao_cancel, ptr %cancel49, align 4
  %insn_read50 = getelementptr %struct.comedi_subdevice, ptr %106, i32 1, i32 18
  %117 = ptrtoint ptr %insn_read50 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @usbdux_ao_insn_read, ptr %insn_read50, align 4
  %insn_write = getelementptr %struct.comedi_subdevice, ptr %106, i32 1, i32 19
  %118 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @usbdux_ao_insn_write, ptr %insn_write, align 4
  %call51 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx39) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end54:                                         ; preds = %if.end37
  %119 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %subdevices, align 4
  %type57 = getelementptr %struct.comedi_subdevice, ptr %120, i32 2, i32 2
  %121 = ptrtoint ptr %type57 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 5, ptr %type57, align 4
  %subdev_flags58 = getelementptr %struct.comedi_subdevice, ptr %120, i32 2, i32 4
  %122 = ptrtoint ptr %subdev_flags58 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 196608, ptr %subdev_flags58, align 4
  %n_chan59 = getelementptr %struct.comedi_subdevice, ptr %120, i32 2, i32 3
  %123 = ptrtoint ptr %n_chan59 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 8, ptr %n_chan59, align 4
  %maxdata60 = getelementptr %struct.comedi_subdevice, ptr %120, i32 2, i32 13
  %124 = ptrtoint ptr %maxdata60 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 1, ptr %maxdata60, align 4
  %range_table61 = getelementptr %struct.comedi_subdevice, ptr %120, i32 2, i32 15
  %125 = ptrtoint ptr %range_table61 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr @range_unipolar5, ptr %range_table61, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %120, i32 2, i32 20
  %126 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr @usbdux_dio_insn_bits, ptr %insn_bits, align 4
  %insn_config = getelementptr %struct.comedi_subdevice, ptr %120, i32 2, i32 21
  %127 = ptrtoint ptr %insn_config to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr @usbdux_dio_insn_config, ptr %insn_config, align 4
  %128 = load ptr, ptr %subdevices, align 4
  %type64 = getelementptr %struct.comedi_subdevice, ptr %128, i32 3, i32 2
  %129 = ptrtoint ptr %type64 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 6, ptr %type64, align 4
  %subdev_flags65 = getelementptr %struct.comedi_subdevice, ptr %128, i32 3, i32 4
  %130 = ptrtoint ptr %subdev_flags65 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 196608, ptr %subdev_flags65, align 4
  %n_chan66 = getelementptr %struct.comedi_subdevice, ptr %128, i32 3, i32 3
  %131 = ptrtoint ptr %n_chan66 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 4, ptr %n_chan66, align 4
  %maxdata67 = getelementptr %struct.comedi_subdevice, ptr %128, i32 3, i32 13
  %132 = ptrtoint ptr %maxdata67 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 65535, ptr %maxdata67, align 4
  %insn_read68 = getelementptr %struct.comedi_subdevice, ptr %128, i32 3, i32 18
  %133 = ptrtoint ptr %insn_read68 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr @usbdux_counter_read, ptr %insn_read68, align 4
  %insn_write69 = getelementptr %struct.comedi_subdevice, ptr %128, i32 3, i32 19
  %134 = ptrtoint ptr %insn_write69 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr @usbdux_counter_write, ptr %insn_write69, align 4
  %insn_config70 = getelementptr %struct.comedi_subdevice, ptr %128, i32 3, i32 21
  %135 = ptrtoint ptr %insn_config70 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr @usbdux_counter_config, ptr %insn_config70, align 4
  %136 = ptrtoint ptr %high_speed to i32
  call void @__asan_load1_noabort(i32 %136)
  %bf.load72 = load i8, ptr %high_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load72)
  %tobool75.not = icmp sgt i8 %bf.load72, -1
  br i1 %tobool75.not, label %if.end54.cleanup_crit_edge, label %if.then76

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then76:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  %137 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %subdevices, align 4
  %type79 = getelementptr %struct.comedi_subdevice, ptr %138, i32 4, i32 2
  %139 = ptrtoint ptr %type79 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 12, ptr %type79, align 4
  %subdev_flags80 = getelementptr %struct.comedi_subdevice, ptr %138, i32 4, i32 4
  %140 = ptrtoint ptr %subdev_flags80 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 131328, ptr %subdev_flags80, align 4
  %n_chan81 = getelementptr %struct.comedi_subdevice, ptr %138, i32 4, i32 3
  %141 = ptrtoint ptr %n_chan81 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 8, ptr %n_chan81, align 4
  %pwm_buf_sz82 = getelementptr inbounds %struct.usbdux_private, ptr %call2, i32 0, i32 7
  %142 = ptrtoint ptr %pwm_buf_sz82 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %pwm_buf_sz82, align 4
  %maxdata83 = getelementptr %struct.comedi_subdevice, ptr %138, i32 4, i32 13
  %144 = ptrtoint ptr %maxdata83 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %maxdata83, align 4
  %insn_write84 = getelementptr %struct.comedi_subdevice, ptr %138, i32 4, i32 19
  %145 = ptrtoint ptr %insn_write84 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr @usbdux_pwm_write, ptr %insn_write84, align 4
  %insn_config85 = getelementptr %struct.comedi_subdevice, ptr %138, i32 4, i32 21
  %146 = ptrtoint ptr %insn_config85 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr @usbdux_pwm_config, ptr %insn_config85, align 4
  %147 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %private.i, align 4
  %pwm_delay.i = getelementptr inbounds %struct.usbdux_private, ptr %148, i32 0, i32 6
  %149 = ptrtoint ptr %pwm_delay.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 101, ptr %pwm_delay.i, align 4
  %pwm_period.i = getelementptr inbounds %struct.usbdux_private, ptr %148, i32 0, i32 5
  %150 = ptrtoint ptr %pwm_period.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 10000000, ptr %pwm_period.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then76, %if.end54.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %do.end21, %if.end78.i.cleanup_crit_edge, %if.then74.i.cleanup_crit_edge, %if.end42.i.cleanup_crit_edge, %for.body38.i.cleanup_crit_edge, %if.end22.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %lor.lhs.false12.i.cleanup_crit_edge, %lor.lhs.false9.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %kcalloc.exit185.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %do.end21 ], [ -12, %entry.cleanup_crit_edge ], [ %call24, %if.end22.cleanup_crit_edge ], [ %call34, %if.end28.cleanup_crit_edge ], [ %call51, %if.end37.cleanup_crit_edge ], [ 0, %if.then76 ], [ 0, %if.end54.cleanup_crit_edge ], [ -12, %lor.lhs.false12.i.cleanup_crit_edge ], [ -12, %lor.lhs.false9.i.cleanup_crit_edge ], [ -12, %lor.lhs.false.i.cleanup_crit_edge ], [ -12, %kcalloc.exit185.i.cleanup_crit_edge ], [ -12, %if.then74.i.cleanup_crit_edge ], [ -12, %if.end78.i.cleanup_crit_edge ], [ -12, %for.body38.i.cleanup_crit_edge ], [ -12, %if.end42.i.cleanup_crit_edge ], [ -12, %for.body.i.cleanup_crit_edge ], [ -12, %if.end22.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_to_usb_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_to_usb_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_load_firmware(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbdux_firmware_upload(ptr noundef %dev, ptr noundef %data, i32 noundef %size, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_usb_dev(ptr noundef %dev) #12
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %size)
  %cmp = icmp ugt i32 %size, 8192
  br i1 %cmp, label %do.end, label %if.end2

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.26) #17
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call3 = tail call ptr @kmemdup(ptr noundef nonnull %data, i32 noundef %size, i32 noundef 3264) #12
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end2.cleanup_crit_edge, label %if.end6

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 1) #15
  %tobool8.not = icmp eq ptr %call7.i, null
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call3) #12
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %3 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %call7.i, align 8
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call, align 8
  %shl.i = shl i32 %5, 8
  %or = or i32 %shl.i, -2147483648
  %call12 = tail call i32 @usb_control_msg(ptr noundef %call, i32 noundef %or, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext -6656, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 1, i32 noundef 1000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end10.done.sink.split_crit_edge, label %if.end19

if.end10.done.sink.split_crit_edge:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %done.sink.split

if.end19:                                         ; preds = %if.end10
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call, align 8
  %shl.i68 = shl i32 %7, 8
  %or21 = or i32 %shl.i68, -2147483648
  %conv = trunc i32 %size to i16
  %call22 = tail call i32 @usb_control_msg(ptr noundef %call, i32 noundef %or21, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call3, i16 noundef zeroext %conv, i32 noundef 1000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end19.done.sink.split_crit_edge, label %if.end30

if.end19.done.sink.split_crit_edge:               ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %done.sink.split

if.end30:                                         ; preds = %if.end19
  %8 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %call7.i, align 8
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call, align 8
  %shl.i69 = shl i32 %10, 8
  %or32 = or i32 %shl.i69, -2147483648
  %call33 = tail call i32 @usb_control_msg(ptr noundef %call, i32 noundef %or32, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext -6656, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 1, i32 noundef 1000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.end30.done.sink.split_crit_edge, label %if.end30.done_crit_edge

if.end30.done_crit_edge:                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.end30.done.sink.split_crit_edge:               ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %done.sink.split

done.sink.split:                                  ; preds = %if.end30.done.sink.split_crit_edge, %if.end19.done.sink.split_crit_edge, %if.end10.done.sink.split_crit_edge
  %.str.35.sink = phi ptr [ @.str.29, %if.end10.done.sink.split_crit_edge ], [ @.str.32, %if.end19.done.sink.split_crit_edge ], [ @.str.35, %if.end30.done.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call12, %if.end10.done.sink.split_crit_edge ], [ %call22, %if.end19.done.sink.split_crit_edge ], [ %call33, %if.end30.done.sink.split_crit_edge ]
  %class_dev40 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %11 = ptrtoint ptr %class_dev40 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %class_dev40, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull %.str.35.sink) #17
  br label %done

done:                                             ; preds = %done.sink.split, %if.end30.done_crit_edge
  %ret.0 = phi i32 [ %call33, %if.end30.done_crit_edge ], [ %ret.0.ph, %done.sink.split ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  tail call void @kfree(ptr noundef nonnull %call3) #12
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then9, %if.end2.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ %ret.0, %done ], [ -12, %if.then9 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbdux_ai_insn_read(ptr noundef %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  %nrec.i = alloca i32, align 4
  %nsent.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %shr = lshr i32 %3, 16
  %and2 = and i32 %shr, 255
  %mut = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %mut, i32 noundef 0) #12
  %ai_cmd_running = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %ai_cmd_running to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %ai_cmd_running, align 4
  %5 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.ai_read_exit.thread_crit_edge

entry.ai_read_exit.thread_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ai_read_exit.thread

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and2)
  %cmp.i = icmp ult i32 %and2, 2
  %and = shl i32 %3, 4
  %shl8.i = select i1 %cmp.i, i32 4, i32 0
  %or.i = or i32 %shl8.i, %and
  %6 = shl nuw nsw i32 %shr, 3
  %7 = and i32 %6, 8
  %8 = or i32 %or.i, %7
  %9 = trunc i32 %8 to i8
  %conv14.i = xor i8 %9, 8
  %dux_commands = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 16
  %10 = ptrtoint ptr %dux_commands to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dux_commands, align 4
  %arrayidx = getelementptr i8, ptr %11, i32 1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv14.i, ptr %arrayidx, align 1
  %call.i = tail call ptr @comedi_to_usb_dev(ptr noundef %dev) #12
  %13 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nsent.i) #12
  %15 = ptrtoint ptr %nsent.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %nsent.i, align 4, !annotation !111
  %dux_commands.i = getelementptr inbounds %struct.usbdux_private, ptr %14, i32 0, i32 16
  %16 = ptrtoint ptr %dux_commands.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dux_commands.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 4, ptr %17, align 1
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %call.i, align 8
  %shl.i.i = shl i32 %20, 8
  %or.i37 = or i32 %shl.i.i, -1073709056
  %21 = load ptr, ptr %dux_commands.i, align 4
  %call3.i = call i32 @usb_bulk_msg(ptr noundef %call.i, i32 noundef %or.i37, ptr noundef %21, i32 noundef 26, ptr noundef nonnull %nsent.i, i32 noundef 1000) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nsent.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp = icmp slt i32 %call3.i, 0
  br i1 %cmp, label %if.end.ai_read_exit.thread_crit_edge, label %for.cond.preheader

if.end.ai_read_exit.thread_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %ai_read_exit.thread

for.cond.preheader:                               ; preds = %if.end
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %22 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp649.not = icmp eq i32 %23, 0
  br i1 %cmp649.not, label %for.cond.preheader.ai_read_exit_crit_edge, label %for.body.lr.ph

for.cond.preheader.ai_read_exit_crit_edge:        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %ai_read_exit

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %insn_buf = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 9
  %range_table.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 15
  %maxdata.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %if.end15.for.body_crit_edge, %for.body.lr.ph
  %i.050 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end15.for.body_crit_edge ]
  %call.i38 = call ptr @comedi_to_usb_dev(ptr noundef %dev) #12
  %24 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nrec.i) #12
  %26 = ptrtoint ptr %nrec.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %nrec.i, align 4, !annotation !111
  %insn_buf.i = getelementptr inbounds %struct.usbdux_private, ptr %25, i32 0, i32 9
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end.i
  %inc.i = add nuw nsw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %for.cond.i.receive_dux_commands.exit.thread_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.cond.i.receive_dux_commands.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %receive_dux_commands.exit.thread

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body
  %i.020.i = phi i32 [ 0, %for.body ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %27 = ptrtoint ptr %call.i38 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %call.i38, align 8
  %shl.i.i40 = shl i32 %28, 8
  %or2.i = or i32 %shl.i.i40, -1073479552
  %29 = ptrtoint ptr %insn_buf.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %insn_buf.i, align 4
  %call3.i41 = call i32 @usb_bulk_msg(ptr noundef %call.i38, i32 noundef %or2.i, ptr noundef %30, i32 noundef 16, ptr noundef nonnull %nrec.i, i32 noundef 1000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i41)
  %cmp4.i = icmp slt i32 %call3.i41, 0
  br i1 %cmp4.i, label %for.body.i.receive_dux_commands.exit.thread_crit_edge, label %if.end.i

for.body.i.receive_dux_commands.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %receive_dux_commands.exit.thread

if.end.i:                                         ; preds = %for.body.i
  %31 = ptrtoint ptr %insn_buf.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %insn_buf.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %32, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %34)
  %cmp6.i = icmp eq i16 %34, 1024
  br i1 %cmp6.i, label %if.end10, label %for.cond.i

receive_dux_commands.exit.thread:                 ; preds = %for.body.i.receive_dux_commands.exit.thread_crit_edge, %for.cond.i.receive_dux_commands.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -14, %for.cond.i.receive_dux_commands.exit.thread_crit_edge ], [ %call3.i41, %for.body.i.receive_dux_commands.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nrec.i) #12
  br label %ai_read_exit.thread

if.end10:                                         ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nrec.i) #12
  %35 = ptrtoint ptr %insn_buf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %insn_buf, align 4
  %arrayidx11 = getelementptr i16, ptr %36, i32 1
  %37 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx11, align 2
  %39 = call i16 @llvm.bswap.i16(i16 %38)
  %conv = zext i16 %39 to i32
  %40 = ptrtoint ptr %range_table.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %range_table.i, align 4
  %arrayidx.i = getelementptr %struct.comedi_lrange, ptr %41, i32 0, i32 1, i32 %and2
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp.i42 = icmp slt i32 %43, 0
  br i1 %cmp.i42, label %if.then13, label %if.end10.if.end15_crit_edge

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %maxdata.i, align 4
  %xor.i = xor i32 %45, %conv
  %shr.i = lshr i32 %45, 1
  %xor2.i = xor i32 %xor.i, %shr.i
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end10.if.end15_crit_edge
  %val.0 = phi i32 [ %xor2.i, %if.then13 ], [ %conv, %if.end10.if.end15_crit_edge ]
  %arrayidx16 = getelementptr i32, ptr %data, i32 %i.050
  %46 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %val.0, ptr %arrayidx16, align 4
  %inc = add nuw i32 %i.050, 1
  %47 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %n, align 4
  %cmp6 = icmp ult i32 %inc, %48
  br i1 %cmp6, label %if.end15.for.body_crit_edge, label %if.end15.ai_read_exit_crit_edge

if.end15.ai_read_exit_crit_edge:                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %ai_read_exit

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

ai_read_exit.thread:                              ; preds = %receive_dux_commands.exit.thread, %if.end.ai_read_exit.thread_crit_edge, %entry.ai_read_exit.thread_crit_edge
  %ret.1.ph = phi i32 [ %retval.0.i.ph, %receive_dux_commands.exit.thread ], [ %call3.i, %if.end.ai_read_exit.thread_crit_edge ], [ -16, %entry.ai_read_exit.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %mut) #12
  br label %cond.end

ai_read_exit:                                     ; preds = %if.end15.ai_read_exit_crit_edge, %for.cond.preheader.ai_read_exit_crit_edge
  %ret.0.lcssa = phi i32 [ %call3.i, %for.cond.preheader.ai_read_exit_crit_edge ], [ %call3.i41, %if.end15.ai_read_exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %mut) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.lcssa)
  %tobool18.not = icmp eq i32 %ret.0.lcssa, 0
  br i1 %tobool18.not, label %cond.false, label %ai_read_exit.cond.end_crit_edge

ai_read_exit.cond.end_crit_edge:                  ; preds = %ai_read_exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %ai_read_exit
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %n, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %ai_read_exit.cond.end_crit_edge, %ai_read_exit.thread
  %cond = phi i32 [ %50, %cond.false ], [ %ret.0.lcssa, %ai_read_exit.cond.end_crit_edge ], [ %ret.1.ph, %ai_read_exit.thread ]
  ret i32 %cond
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbdux_ai_cmdtest(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef %cmd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %start_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 2
  %2 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start_src, align 4
  %and.i = and i32 %3, 130
  store i32 %and.i, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %3)
  %cmp1.not.i = icmp eq i32 %and.i, %3
  %or.cond.i = and i1 %cmp.i, %cmp1.not.i
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 4
  %4 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %scan_begin_src, align 4
  %and.i101 = and i32 %5, 16
  store i32 %and.i101, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i101)
  %cmp.i102 = icmp ne i32 %and.i101, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i101, i32 %5)
  %cmp1.not.i103 = icmp eq i32 %and.i101, %5
  %or.cond.i104 = and i1 %cmp.i102, %cmp1.not.i103
  %6 = select i1 %or.cond.i, i1 %or.cond.i104, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %7 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %convert_src, align 4
  %and.i106 = and i32 %8, 2
  store i32 %and.i106, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106)
  %cmp.i107 = icmp ne i32 %and.i106, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i106, i32 %8)
  %cmp1.not.i108 = icmp eq i32 %and.i106, %8
  %or.cond.i109 = and i1 %cmp.i107, %cmp1.not.i108
  %9 = select i1 %6, i1 %or.cond.i109, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %10 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %scan_end_src, align 4
  %and.i111 = and i32 %11, 32
  store i32 %and.i111, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i111)
  %cmp.i112 = icmp ne i32 %and.i111, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i111, i32 %11)
  %cmp1.not.i113 = icmp eq i32 %and.i111, %11
  %or.cond.i114 = and i1 %cmp.i112, %cmp1.not.i113
  %12 = select i1 %9, i1 %or.cond.i114, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %13 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stop_src, align 4
  %and.i116 = and i32 %14, 33
  store i32 %and.i116, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i116)
  %cmp.i117 = icmp ne i32 %and.i116, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i116, i32 %14)
  %cmp1.not.i118 = icmp eq i32 %and.i116, %14
  %or.cond.i119 = and i1 %cmp.i117, %cmp1.not.i118
  %15 = select i1 %12, i1 %or.cond.i119, i1 false
  br i1 %15, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = tail call i32 @llvm.ctpop.i32(i32 %3) #12, !range !112
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp.not.i = icmp ult i32 %16, 2
  %17 = tail call i32 @llvm.ctpop.i32(i32 %14) #12, !range !112
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.not.i121 = icmp ult i32 %17, 2
  %18 = select i1 %cmp.not.i, i1 %cmp.not.i121, i1 false
  br i1 %18, label %if.end17, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %19 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.not.i123 = icmp eq i32 %20, 0
  br i1 %cmp.not.i123, label %if.end17.if.then27_crit_edge, label %if.then.i

if.end17.if.then27_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then27

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %start_arg, align 4
  br label %if.then27

if.then27:                                        ; preds = %if.then.i, %if.end17.if.then27_crit_edge
  %retval.0.i124 = phi i32 [ -22, %if.then.i ], [ 0, %if.end17.if.then27_crit_edge ]
  %high_speed = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 10
  %22 = ptrtoint ptr %high_speed to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load = load i8, ptr %high_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool28.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool28.not, label %if.then27.if.end32_crit_edge, label %while.cond.preheader

if.then27.if.end32_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

while.cond.preheader:                             ; preds = %if.then27
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %23 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %chanlist_len, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %while.cond.preheader
  %i.0 = phi i32 [ %mul, %while.cond.while.cond_crit_edge ], [ 1, %while.cond.preheader ]
  %cmp30 = icmp ult i32 %i.0, %24
  %mul = shl i32 %i.0, 1
  br i1 %cmp30, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  %mul31 = mul i32 %i.0, 125000
  br label %if.end32

if.end32:                                         ; preds = %while.end, %if.then27.if.end32_crit_edge
  %arg.0 = phi i32 [ 125000, %while.end ], [ 1000000, %if.then27.if.end32_crit_edge ]
  %min_arg.0 = phi i32 [ %mul31, %while.end ], [ 1000000, %if.then27.if.end32_crit_edge ]
  %scan_begin_arg33 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %25 = ptrtoint ptr %scan_begin_arg33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %scan_begin_arg33, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %min_arg.0)
  %cmp.i129 = icmp ult i32 %26, %min_arg.0
  br i1 %cmp.i129, label %if.then.i130, label %if.end32.comedi_check_trigger_arg_min.exit_crit_edge

if.end32.comedi_check_trigger_arg_min.exit_crit_edge: ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %comedi_check_trigger_arg_min.exit

if.then.i130:                                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %scan_begin_arg33 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %min_arg.0, ptr %scan_begin_arg33, align 4
  br label %comedi_check_trigger_arg_min.exit

comedi_check_trigger_arg_min.exit:                ; preds = %if.then.i130, %if.end32.comedi_check_trigger_arg_min.exit_crit_edge
  %retval.0.i131 = phi i32 [ -22, %if.then.i130 ], [ 0, %if.end32.comedi_check_trigger_arg_min.exit_crit_edge ]
  %or35 = or i32 %retval.0.i131, %retval.0.i124
  %28 = ptrtoint ptr %scan_begin_arg33 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %scan_begin_arg33, align 4
  %30 = urem i32 %29, %arg.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.not.i132 = icmp eq i32 %30, 0
  br i1 %cmp.not.i132, label %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit135_crit_edge, label %if.then.i133

comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit135_crit_edge: ; preds = %comedi_check_trigger_arg_min.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %comedi_check_trigger_arg_is.exit135

if.then.i133:                                     ; preds = %comedi_check_trigger_arg_min.exit
  call void @__sanitizer_cov_trace_pc() #14
  %mul38 = sub i32 %29, %30
  %31 = ptrtoint ptr %scan_begin_arg33 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul38, ptr %scan_begin_arg33, align 4
  br label %comedi_check_trigger_arg_is.exit135

comedi_check_trigger_arg_is.exit135:              ; preds = %if.then.i133, %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit135_crit_edge
  %retval.0.i134 = phi i32 [ -22, %if.then.i133 ], [ 0, %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit135_crit_edge ]
  %or41 = or i32 %or35, %retval.0.i134
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %chanlist_len43 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %32 = ptrtoint ptr %chanlist_len43 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %chanlist_len43, align 4
  %34 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %33)
  %cmp.not.i136 = icmp eq i32 %35, %33
  br i1 %cmp.not.i136, label %comedi_check_trigger_arg_is.exit135.comedi_check_trigger_arg_is.exit139_crit_edge, label %if.then.i137

comedi_check_trigger_arg_is.exit135.comedi_check_trigger_arg_is.exit139_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit135
  call void @__sanitizer_cov_trace_pc() #14
  br label %comedi_check_trigger_arg_is.exit139

if.then.i137:                                     ; preds = %comedi_check_trigger_arg_is.exit135
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %33, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit139

comedi_check_trigger_arg_is.exit139:              ; preds = %if.then.i137, %comedi_check_trigger_arg_is.exit135.comedi_check_trigger_arg_is.exit139_crit_edge
  %retval.0.i138 = phi i32 [ -22, %if.then.i137 ], [ 0, %comedi_check_trigger_arg_is.exit135.comedi_check_trigger_arg_is.exit139_crit_edge ]
  %or45 = or i32 %or41, %retval.0.i138
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %14)
  %cmp47 = icmp eq i32 %14, 32
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %37 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i140 = icmp eq i32 %38, 0
  br i1 %cmp47, label %if.then48, label %if.else

if.then48:                                        ; preds = %comedi_check_trigger_arg_is.exit139
  br i1 %cmp.i140, label %if.then48.if.end54.sink.split_crit_edge, label %if.then48.if.end54_crit_edge

if.then48.if.end54_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.then48.if.end54.sink.split_crit_edge:          ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54.sink.split

if.else:                                          ; preds = %comedi_check_trigger_arg_is.exit139
  br i1 %cmp.i140, label %if.else.if.end54_crit_edge, label %if.else.if.end54.sink.split_crit_edge

if.else.if.end54.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54.sink.split

if.else.if.end54_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.end54.sink.split:                              ; preds = %if.else.if.end54.sink.split_crit_edge, %if.then48.if.end54.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then48.if.end54.sink.split_crit_edge ], [ 0, %if.else.if.end54.sink.split_crit_edge ]
  %39 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %.sink, ptr %stop_arg, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.end54.sink.split, %if.else.if.end54_crit_edge, %if.then48.if.end54_crit_edge
  %call49.pn = phi i32 [ 0, %if.then48.if.end54_crit_edge ], [ 0, %if.else.if.end54_crit_edge ], [ -22, %if.end54.sink.split ]
  %err.2 = or i32 %or45, %call49.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %tobool55.not = icmp eq i32 %err.2, 0
  %. = select i1 %tobool55.not, i32 0, i32 3
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ %., %if.end54 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbdux_ai_cmd(ptr noundef %dev, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  %nsent.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %2 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %async, align 4
  %chanlist_len = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 13
  %4 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chanlist_len, align 4
  %mut = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %mut, i32 noundef 0) #12
  %ai_cmd_running = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %ai_cmd_running to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %ai_cmd_running, align 4
  %7 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.ai_cmd_exit_crit_edge

entry.ai_cmd_exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ai_cmd_exit

if.end:                                           ; preds = %entry
  %conv = trunc i32 %5 to i8
  %dux_commands = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %dux_commands to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dux_commands, align 4
  %arrayidx = getelementptr i8, ptr %9, i32 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp102 = icmp sgt i32 %5, 0
  br i1 %cmp102, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %chanlist = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 12
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0103 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %11 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chanlist, align 4
  %arrayidx3 = getelementptr i32, ptr %12, i32 %i.0103
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx3, align 4
  %15 = and i32 %14, 16646144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i = icmp eq i32 %15, 0
  %and = shl i32 %14, 4
  %shl8.i = select i1 %cmp.i, i32 4, i32 0
  %or.i = or i32 %shl8.i, %and
  %16 = lshr i32 %14, 13
  %17 = and i32 %16, 8
  %18 = or i32 %or.i, %17
  %19 = trunc i32 %18 to i8
  %conv14.i = xor i8 %19, 8
  %20 = ptrtoint ptr %dux_commands to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dux_commands, align 4
  %add = add nuw i32 %i.0103, 2
  %arrayidx8 = getelementptr i8, ptr %21, i32 %add
  %22 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv14.i, ptr %arrayidx8, align 1
  %inc = add nuw nsw i32 %i.0103, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %call.i = tail call ptr @comedi_to_usb_dev(ptr noundef %dev) #12
  %23 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nsent.i) #12
  %25 = ptrtoint ptr %nsent.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %nsent.i, align 4, !annotation !111
  %dux_commands.i = getelementptr inbounds %struct.usbdux_private, ptr %24, i32 0, i32 16
  %26 = ptrtoint ptr %dux_commands.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dux_commands.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %27, align 1
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call.i, align 8
  %shl.i.i = shl i32 %30, 8
  %or.i95 = or i32 %shl.i.i, -1073709056
  %31 = load ptr, ptr %dux_commands.i, align 4
  %call3.i = call i32 @usb_bulk_msg(ptr noundef %call.i, i32 noundef %or.i95, ptr noundef %31, i32 noundef 26, ptr noundef nonnull %nsent.i, i32 noundef 1000) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nsent.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp10 = icmp slt i32 %call3.i, 0
  br i1 %cmp10, label %for.end.ai_cmd_exit_crit_edge, label %if.end13

for.end.ai_cmd_exit_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %ai_cmd_exit

if.end13:                                         ; preds = %for.end
  %32 = ptrtoint ptr %ai_cmd_running to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load14 = load i8, ptr %ai_cmd_running, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load14)
  %tobool17.not = icmp sgt i8 %bf.load14, -1
  br i1 %tobool17.not, label %if.else, label %if.end13.while.cond_crit_edge

if.end13.while.cond_crit_edge:                    ; preds = %if.end13
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end13.while.cond_crit_edge
  %storemerge = phi i32 [ %mul, %while.cond.while.cond_crit_edge ], [ 1, %if.end13.while.cond_crit_edge ]
  %cmp20 = icmp ult i32 %storemerge, %5
  %mul = shl i32 %storemerge, 1
  br i1 %cmp20, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  %ai_interval = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 15
  %33 = ptrtoint ptr %ai_interval to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %storemerge, ptr %ai_interval, align 4
  %scan_begin_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 5
  %34 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %scan_begin_arg, align 4
  %mul24 = mul i32 %storemerge, 125000
  %div = udiv i32 %35, %mul24
  br label %if.end29

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %ai_interval25 = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 15
  %36 = ptrtoint ptr %ai_interval25 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %ai_interval25, align 4
  %scan_begin_arg26 = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 5
  %37 = ptrtoint ptr %scan_begin_arg26 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %scan_begin_arg26, align 4
  %div27 = udiv i32 %38, 1000000
  br label %if.end29

if.end29:                                         ; preds = %if.else, %while.end
  %div27.sink = phi i32 [ %div27, %if.else ], [ %div, %while.end ]
  %ai_timer28 = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 11
  %39 = ptrtoint ptr %ai_timer28 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %div27.sink, ptr %ai_timer28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div27.sink)
  %cmp31 = icmp eq i32 %div27.sink, 0
  br i1 %cmp31, label %if.end29.ai_cmd_exit_crit_edge, label %if.end34

if.end29.ai_cmd_exit_crit_edge:                   ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %ai_cmd_exit

if.end34:                                         ; preds = %if.end29
  %ai_counter = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 13
  %40 = ptrtoint ptr %ai_counter to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %div27.sink, ptr %ai_counter, align 4
  %start_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 2
  %41 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %cmp36 = icmp eq i32 %42, 2
  br i1 %cmp36, label %if.then38, label %if.else52

if.then38:                                        ; preds = %if.end34
  %bf.set = or i8 %bf.load14, 64
  %43 = ptrtoint ptr %ai_cmd_running to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %bf.set, ptr %ai_cmd_running, align 4
  %ai_urbs = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 2
  %44 = ptrtoint ptr %ai_urbs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ai_urbs, align 4
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %1, align 4
  %call.i96 = call ptr @comedi_to_usb_dev(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp20.i = icmp sgt i32 %47, 0
  br i1 %cmp20.i, label %for.body.lr.ph.i, label %if.then38.if.end50_crit_edge

if.then38.if.end50_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

for.body.lr.ph.i:                                 ; preds = %if.then38
  %48 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %private, align 4
  %ai_interval.i = getelementptr inbounds %struct.usbdux_private, ptr %49, i32 0, i32 15
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %47
  br i1 %exitcond.not.i, label %for.cond.i.if.end50_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.cond.i.if.end50_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.021.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %45, i32 %i.021.i
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i, align 4
  %52 = ptrtoint ptr %ai_interval.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ai_interval.i, align 4
  %interval.i = getelementptr inbounds %struct.urb, ptr %51, i32 0, i32 25
  %54 = ptrtoint ptr %interval.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %interval.i, align 4
  %context.i = getelementptr inbounds %struct.urb, ptr %51, i32 0, i32 27
  %55 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %dev, ptr %context.i, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %51, i32 0, i32 8
  %56 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call.i96, ptr %dev1.i, align 4
  %status.i = getelementptr inbounds %struct.urb, ptr %51, i32 0, i32 12
  %57 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %status.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %51, i32 0, i32 13
  %58 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 2, ptr %transfer_flags.i, align 4
  %call2.i = call i32 @usb_submit_urb(ptr noundef %51, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %for.cond.i, label %usbdux_submit_urbs.exit

usbdux_submit_urbs.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp43 = icmp slt i32 %call2.i, 0
  br i1 %cmp43, label %if.then45, label %usbdux_submit_urbs.exit.if.end50_crit_edge

usbdux_submit_urbs.exit.if.end50_crit_edge:       ; preds = %usbdux_submit_urbs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then45:                                        ; preds = %usbdux_submit_urbs.exit
  call void @__sanitizer_cov_trace_pc() #14
  %59 = ptrtoint ptr %ai_cmd_running to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load47 = load i8, ptr %ai_cmd_running, align 4
  %bf.clear48 = and i8 %bf.load47, -65
  store i8 %bf.clear48, ptr %ai_cmd_running, align 4
  br label %ai_cmd_exit

if.end50:                                         ; preds = %usbdux_submit_urbs.exit.if.end50_crit_edge, %for.cond.i.if.end50_crit_edge, %if.then38.if.end50_crit_edge
  %retval.0.i100 = phi i32 [ %call2.i, %usbdux_submit_urbs.exit.if.end50_crit_edge ], [ 0, %if.then38.if.end50_crit_edge ], [ 0, %for.cond.i.if.end50_crit_edge ]
  %60 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %async, align 4
  %inttrig = getelementptr inbounds %struct.comedi_async, ptr %61, i32 0, i32 20
  %62 = ptrtoint ptr %inttrig to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %inttrig, align 4
  br label %ai_cmd_exit

if.else52:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %async, align 4
  %inttrig54 = getelementptr inbounds %struct.comedi_async, ptr %64, i32 0, i32 20
  %65 = ptrtoint ptr %inttrig54 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @usbdux_ai_inttrig, ptr %inttrig54, align 4
  br label %ai_cmd_exit

ai_cmd_exit:                                      ; preds = %if.else52, %if.end50, %if.then45, %if.end29.ai_cmd_exit_crit_edge, %for.end.ai_cmd_exit_crit_edge, %entry.ai_cmd_exit_crit_edge
  %ret.0 = phi i32 [ -16, %entry.ai_cmd_exit_crit_edge ], [ %call3.i, %for.end.ai_cmd_exit_crit_edge ], [ %call2.i, %if.then45 ], [ %retval.0.i100, %if.end50 ], [ %call3.i, %if.else52 ], [ -22, %if.end29.ai_cmd_exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %mut) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbdux_ai_cancel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %mut = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %mut, i32 noundef 0) #12
  %ai_cmd_running = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %ai_cmd_running to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %ai_cmd_running, align 4
  %3 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private, align 4
  %5 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %entry.usbdux_ai_stop.exit_crit_edge, label %land.lhs.true.i

entry.usbdux_ai_stop.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %usbdux_ai_stop.exit

land.lhs.true.i:                                  ; preds = %entry
  %ai_urbs.i = getelementptr inbounds %struct.usbdux_private, ptr %4, i32 0, i32 2
  %6 = ptrtoint ptr %ai_urbs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ai_urbs.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.usbdux_ai_stop.exit_crit_edge, label %if.then.i

land.lhs.true.i.usbdux_ai_stop.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usbdux_ai_stop.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp3.i.i = icmp sgt i32 %9, 0
  br i1 %cmp3.i.i, label %if.then.i.for.body.i.i_crit_edge, label %if.then.i.usbdux_ai_stop.exit_crit_edge

if.then.i.usbdux_ai_stop.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usbdux_ai_stop.exit

if.then.i.for.body.i.i_crit_edge:                 ; preds = %if.then.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then.i.for.body.i.i_crit_edge
  %i.04.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr ptr, ptr %7, i32 %i.04.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @usb_kill_urb(ptr noundef %11) #12
  %inc.i.i = add nuw nsw i32 %i.04.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %9
  br i1 %exitcond.not.i.i, label %for.body.i.i.usbdux_ai_stop.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.body.i.i.usbdux_ai_stop.exit_crit_edge:       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usbdux_ai_stop.exit

usbdux_ai_stop.exit:                              ; preds = %for.body.i.i.usbdux_ai_stop.exit_crit_edge, %if.then.i.usbdux_ai_stop.exit_crit_edge, %land.lhs.true.i.usbdux_ai_stop.exit_crit_edge, %entry.usbdux_ai_stop.exit_crit_edge
  %ai_cmd_running.i = getelementptr inbounds %struct.usbdux_private, ptr %4, i32 0, i32 10
  %12 = ptrtoint ptr %ai_cmd_running.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %ai_cmd_running.i, align 4
  %bf.clear.i = and i8 %bf.load.i, -65
  store i8 %bf.clear.i, ptr %ai_cmd_running.i, align 4
  tail call void @mutex_unlock(ptr noundef %mut) #12
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @usbdux_ao_cmdtest(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef %cmd) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %start_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 2
  %0 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %start_src, align 4
  %and.i = and i32 %1, 130
  store i32 %and.i, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %1)
  %cmp1.not.i = icmp eq i32 %and.i, %1
  %or.cond.i = and i1 %cmp.i, %cmp1.not.i
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 4
  %2 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %scan_begin_src, align 4
  %and.i88 = and i32 %3, 16
  store i32 %and.i88, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i88)
  %cmp.i89 = icmp ne i32 %and.i88, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i88, i32 %3)
  %cmp1.not.i90 = icmp eq i32 %and.i88, %3
  %or.cond.i91 = and i1 %cmp.i89, %cmp1.not.i90
  %4 = select i1 %or.cond.i, i1 %or.cond.i91, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %5 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %convert_src, align 4
  %and.i93 = and i32 %6, 2
  store i32 %and.i93, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i93)
  %cmp.i94 = icmp ne i32 %and.i93, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i93, i32 %6)
  %cmp1.not.i95 = icmp eq i32 %and.i93, %6
  %or.cond.i96 = and i1 %cmp.i94, %cmp1.not.i95
  %7 = select i1 %4, i1 %or.cond.i96, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %8 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_end_src, align 4
  %and.i98 = and i32 %9, 32
  store i32 %and.i98, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i98)
  %cmp.i99 = icmp ne i32 %and.i98, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i98, i32 %9)
  %cmp1.not.i100 = icmp eq i32 %and.i98, %9
  %or.cond.i101 = and i1 %cmp.i99, %cmp1.not.i100
  %10 = select i1 %7, i1 %or.cond.i101, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %11 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stop_src, align 4
  %and.i103 = and i32 %12, 33
  store i32 %and.i103, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i103)
  %cmp.i104 = icmp ne i32 %and.i103, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i103, i32 %12)
  %cmp1.not.i105 = icmp eq i32 %and.i103, %12
  %or.cond.i106 = and i1 %cmp.i104, %cmp1.not.i105
  %13 = select i1 %10, i1 %or.cond.i106, i1 false
  br i1 %13, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = tail call i32 @llvm.ctpop.i32(i32 %1) #12, !range !112
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.not.i = icmp ult i32 %14, 2
  %15 = tail call i32 @llvm.ctpop.i32(i32 %12) #12, !range !112
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.not.i108 = icmp ult i32 %15, 2
  %16 = select i1 %cmp.not.i, i1 %cmp.not.i108, i1 false
  br i1 %16, label %if.end17, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %17 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not.i110 = icmp eq i32 %18, 0
  br i1 %cmp.not.i110, label %if.end17.if.then27_crit_edge, label %if.then.i

if.end17.if.then27_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then27

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %start_arg, align 4
  br label %if.then27

if.then27:                                        ; preds = %if.then.i, %if.end17.if.then27_crit_edge
  %retval.0.i111 = phi i32 [ -22, %if.then.i ], [ 0, %if.end17.if.then27_crit_edge ]
  %scan_begin_arg28 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %20 = ptrtoint ptr %scan_begin_arg28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %scan_begin_arg28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %21)
  %cmp.i116 = icmp ult i32 %21, 1000000
  br i1 %cmp.i116, label %if.then.i117, label %if.then27.comedi_check_trigger_arg_min.exit_crit_edge

if.then27.comedi_check_trigger_arg_min.exit_crit_edge: ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  br label %comedi_check_trigger_arg_min.exit

if.then.i117:                                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %scan_begin_arg28 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1000000, ptr %scan_begin_arg28, align 4
  br label %comedi_check_trigger_arg_min.exit

comedi_check_trigger_arg_min.exit:                ; preds = %if.then.i117, %if.then27.comedi_check_trigger_arg_min.exit_crit_edge
  %retval.0.i118 = phi i32 [ -22, %if.then.i117 ], [ 0, %if.then27.comedi_check_trigger_arg_min.exit_crit_edge ]
  %or30 = or i32 %retval.0.i118, %retval.0.i111
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %23 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %chanlist_len, align 4
  %25 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %24)
  %cmp.not.i123 = icmp eq i32 %26, %24
  br i1 %cmp.not.i123, label %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit126_crit_edge, label %if.then.i124

comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit126_crit_edge: ; preds = %comedi_check_trigger_arg_min.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %comedi_check_trigger_arg_is.exit126

if.then.i124:                                     ; preds = %comedi_check_trigger_arg_min.exit
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %24, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit126

comedi_check_trigger_arg_is.exit126:              ; preds = %if.then.i124, %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit126_crit_edge
  %retval.0.i125 = phi i32 [ -22, %if.then.i124 ], [ 0, %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit126_crit_edge ]
  %or39 = or i32 %or30, %retval.0.i125
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %12)
  %cmp41 = icmp eq i32 %12, 32
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %28 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i127 = icmp eq i32 %29, 0
  br i1 %cmp41, label %if.then42, label %if.else

if.then42:                                        ; preds = %comedi_check_trigger_arg_is.exit126
  br i1 %cmp.i127, label %if.then42.if.end48.sink.split_crit_edge, label %if.then42.if.end48_crit_edge

if.then42.if.end48_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

if.then42.if.end48.sink.split_crit_edge:          ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48.sink.split

if.else:                                          ; preds = %comedi_check_trigger_arg_is.exit126
  br i1 %cmp.i127, label %if.else.if.end48_crit_edge, label %if.else.if.end48.sink.split_crit_edge

if.else.if.end48.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48.sink.split

if.else.if.end48_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

if.end48.sink.split:                              ; preds = %if.else.if.end48.sink.split_crit_edge, %if.then42.if.end48.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then42.if.end48.sink.split_crit_edge ], [ 0, %if.else.if.end48.sink.split_crit_edge ]
  %30 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink, ptr %stop_arg, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %if.else.if.end48_crit_edge, %if.then42.if.end48_crit_edge
  %call43.pn = phi i32 [ 0, %if.then42.if.end48_crit_edge ], [ 0, %if.else.if.end48_crit_edge ], [ -22, %if.end48.sink.split ]
  %err.3 = or i32 %or39, %call43.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.3)
  %tobool49.not = icmp eq i32 %err.3, 0
  %. = select i1 %tobool49.not, i32 0, i32 3
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ %., %if.end48 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbdux_ao_cmd(ptr noundef %dev, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %2 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %async, align 4
  %mut = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %mut, i32 noundef 0) #12
  %ao_cmd_running = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %ao_cmd_running to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %ao_cmd_running, align 4
  %5 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.ao_cmd_exit_crit_edge

entry.ao_cmd_exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ao_cmd_exit

if.end:                                           ; preds = %entry
  %scan_begin_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 5
  %6 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %scan_begin_arg, align 4
  %div = udiv i32 %7, 1000000
  %ao_timer = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %ao_timer to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div, ptr %ao_timer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %7)
  %9 = icmp ult i32 %7, 1000000
  br i1 %9, label %if.end.ao_cmd_exit_crit_edge, label %if.end4

if.end.ao_cmd_exit_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %ao_cmd_exit

if.end4:                                          ; preds = %if.end
  %ao_counter = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %ao_counter to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div, ptr %ao_counter, align 4
  %start_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 2
  %11 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp6 = icmp eq i32 %12, 2
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end4
  %bf.set = or i8 %bf.load, 32
  %13 = ptrtoint ptr %ao_cmd_running to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %bf.set, ptr %ao_cmd_running, align 4
  %ao_urbs = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %ao_urbs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ao_urbs, align 4
  %n_ao_urbs = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %n_ao_urbs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n_ao_urbs, align 4
  %call.i = tail call ptr @comedi_to_usb_dev(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp20.i = icmp sgt i32 %17, 0
  br i1 %cmp20.i, label %if.then7.for.body.i_crit_edge, label %if.then7.if.end17_crit_edge

if.then7.if.end17_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then7.for.body.i_crit_edge:                    ; preds = %if.then7
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %17
  br i1 %exitcond.not.i, label %for.cond.i.if.end17_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.cond.i.if.end17_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.then7.for.body.i_crit_edge
  %i.021.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.then7.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %15, i32 %i.021.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %context.i = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev, ptr %context.i, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 8
  %21 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %dev1.i, align 4
  %status.i = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 12
  %22 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %status.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 13
  %23 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %transfer_flags.i, align 4
  %call2.i = tail call i32 @usb_submit_urb(ptr noundef %19, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %for.cond.i, label %usbdux_submit_urbs.exit

usbdux_submit_urbs.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp11 = icmp slt i32 %call2.i, 0
  br i1 %cmp11, label %if.then12, label %usbdux_submit_urbs.exit.if.end17_crit_edge

usbdux_submit_urbs.exit.if.end17_crit_edge:       ; preds = %usbdux_submit_urbs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then12:                                        ; preds = %usbdux_submit_urbs.exit
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %ao_cmd_running to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load14 = load i8, ptr %ao_cmd_running, align 4
  %bf.clear15 = and i8 %bf.load14, -33
  store i8 %bf.clear15, ptr %ao_cmd_running, align 4
  br label %ao_cmd_exit

if.end17:                                         ; preds = %usbdux_submit_urbs.exit.if.end17_crit_edge, %for.cond.i.if.end17_crit_edge, %if.then7.if.end17_crit_edge
  %retval.0.i40 = phi i32 [ %call2.i, %usbdux_submit_urbs.exit.if.end17_crit_edge ], [ 0, %if.then7.if.end17_crit_edge ], [ 0, %for.cond.i.if.end17_crit_edge ]
  %25 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %async, align 4
  %inttrig = getelementptr inbounds %struct.comedi_async, ptr %26, i32 0, i32 20
  %27 = ptrtoint ptr %inttrig to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %inttrig, align 4
  br label %ao_cmd_exit

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %async, align 4
  %inttrig20 = getelementptr inbounds %struct.comedi_async, ptr %29, i32 0, i32 20
  %30 = ptrtoint ptr %inttrig20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @usbdux_ao_inttrig, ptr %inttrig20, align 4
  br label %ao_cmd_exit

ao_cmd_exit:                                      ; preds = %if.else, %if.end17, %if.then12, %if.end.ao_cmd_exit_crit_edge, %entry.ao_cmd_exit_crit_edge
  %ret.0 = phi i32 [ -16, %entry.ao_cmd_exit_crit_edge ], [ %call2.i, %if.then12 ], [ %retval.0.i40, %if.end17 ], [ -16, %if.else ], [ -22, %if.end.ao_cmd_exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mut) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbdux_ao_cancel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %mut = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %mut, i32 noundef 0) #12
  %ao_cmd_running = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %ao_cmd_running to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %ao_cmd_running, align 4
  %3 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private, align 4
  %5 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %entry.usbdux_ao_stop.exit_crit_edge, label %land.lhs.true.i

entry.usbdux_ao_stop.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %usbdux_ao_stop.exit

land.lhs.true.i:                                  ; preds = %entry
  %ao_urbs.i = getelementptr inbounds %struct.usbdux_private, ptr %4, i32 0, i32 3
  %6 = ptrtoint ptr %ao_urbs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ao_urbs.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.usbdux_ao_stop.exit_crit_edge, label %if.then.i

land.lhs.true.i.usbdux_ao_stop.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usbdux_ao_stop.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %n_ao_urbs.i = getelementptr inbounds %struct.usbdux_private, ptr %4, i32 0, i32 1
  %8 = ptrtoint ptr %n_ao_urbs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_ao_urbs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp3.i.i = icmp sgt i32 %9, 0
  br i1 %cmp3.i.i, label %if.then.i.for.body.i.i_crit_edge, label %if.then.i.usbdux_ao_stop.exit_crit_edge

if.then.i.usbdux_ao_stop.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usbdux_ao_stop.exit

if.then.i.for.body.i.i_crit_edge:                 ; preds = %if.then.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then.i.for.body.i.i_crit_edge
  %i.04.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr ptr, ptr %7, i32 %i.04.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @usb_kill_urb(ptr noundef %11) #12
  %inc.i.i = add nuw nsw i32 %i.04.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %9
  br i1 %exitcond.not.i.i, label %for.body.i.i.usbdux_ao_stop.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.body.i.i.usbdux_ao_stop.exit_crit_edge:       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usbdux_ao_stop.exit

usbdux_ao_stop.exit:                              ; preds = %for.body.i.i.usbdux_ao_stop.exit_crit_edge, %if.then.i.usbdux_ao_stop.exit_crit_edge, %land.lhs.true.i.usbdux_ao_stop.exit_crit_edge, %entry.usbdux_ao_stop.exit_crit_edge
  %ao_cmd_running.i = getelementptr inbounds %struct.usbdux_private, ptr %4, i32 0, i32 10
  %12 = ptrtoint ptr %ao_cmd_running.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %ao_cmd_running.i, align 4
  %bf.clear.i = and i8 %bf.load.i, -33
  store i8 %bf.clear.i, ptr %ao_cmd_running.i, align 4
  tail call void @mutex_unlock(ptr noundef %mut) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbdux_ao_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %mut = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %mut, i32 noundef 0) #12
  %call = tail call i32 @comedi_readback_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data) #12
  tail call void @mutex_unlock(ptr noundef %mut) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbdux_ao_insn_write(ptr noundef %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %nsent.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %and = and i32 %3, 65535
  %dux_commands = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %dux_commands to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dux_commands, align 4
  %arrayidx = getelementptr i8, ptr %5, i32 2
  %mut = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %mut, i32 noundef 0) #12
  %ao_cmd_running = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %ao_cmd_running to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %ao_cmd_running, align 4
  %7 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.ao_write_exit.thread_crit_edge

entry.ao_write_exit.thread_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ao_write_exit.thread

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %dux_commands to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dux_commands, align 4
  %arrayidx2 = getelementptr i8, ptr %9, i32 1
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %arrayidx2, align 1
  %and.tr = trunc i32 %3 to i8
  %conv = shl i8 %and.tr, 6
  %11 = load ptr, ptr %dux_commands, align 4
  %arrayidx4 = getelementptr i8, ptr %11, i32 4
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %arrayidx4, align 1
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %13 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp41.not = icmp eq i32 %14, 0
  br i1 %cmp41.not, label %ao_write_exit.thread44, label %for.body.lr.ph

ao_write_exit.thread44:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @mutex_unlock(ptr noundef %mut) #12
  br label %cleanup16

for.body.lr.ph:                                   ; preds = %if.end
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.042 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx6 = getelementptr i32, ptr %data, i32 %i.042
  %15 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx6, align 4
  %conv7 = trunc i32 %16 to i16
  %17 = call i16 @llvm.bswap.i16(i16 %conv7)
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %arrayidx, align 2
  %call.i = call ptr @comedi_to_usb_dev(ptr noundef %dev) #12
  %19 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nsent.i) #12
  %21 = ptrtoint ptr %nsent.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %nsent.i, align 4, !annotation !111
  %dux_commands.i = getelementptr inbounds %struct.usbdux_private, ptr %20, i32 0, i32 16
  %22 = ptrtoint ptr %dux_commands.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dux_commands.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %23, align 1
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %call.i, align 8
  %shl.i.i = shl i32 %26, 8
  %or.i = or i32 %shl.i.i, -1073709056
  %27 = load ptr, ptr %dux_commands.i, align 4
  %call3.i = call i32 @usb_bulk_msg(ptr noundef %call.i, i32 noundef %or.i, ptr noundef %27, i32 noundef 26, ptr noundef nonnull %nsent.i, i32 noundef 1000) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nsent.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp8 = icmp slt i32 %call3.i, 0
  br i1 %cmp8, label %for.body.ao_write_exit.thread_crit_edge, label %for.inc

for.body.ao_write_exit.thread_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %ao_write_exit.thread

for.inc:                                          ; preds = %for.body
  %28 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %readback, align 4
  %arrayidx12 = getelementptr i32, ptr %29, i32 %and
  %30 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %16, ptr %arrayidx12, align 4
  %inc = add nuw i32 %i.042, 1
  %31 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %32
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %ao_write_exit

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

ao_write_exit.thread:                             ; preds = %for.body.ao_write_exit.thread_crit_edge, %entry.ao_write_exit.thread_crit_edge
  %ret.1.ph = phi i32 [ -16, %entry.ao_write_exit.thread_crit_edge ], [ %call3.i, %for.body.ao_write_exit.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %mut) #12
  br label %cleanup16

ao_write_exit:                                    ; preds = %for.inc
  call void @mutex_unlock(ptr noundef %mut) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool14.not = icmp eq i32 %call3.i, 0
  br i1 %tobool14.not, label %cond.false, label %ao_write_exit.cleanup16_crit_edge

ao_write_exit.cleanup16_crit_edge:                ; preds = %ao_write_exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup16

cond.false:                                       ; preds = %ao_write_exit
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %n, align 4
  br label %cleanup16

cleanup16:                                        ; preds = %cond.false, %ao_write_exit.cleanup16_crit_edge, %ao_write_exit.thread, %ao_write_exit.thread44
  %cond = phi i32 [ %34, %cond.false ], [ %call3.i, %ao_write_exit.cleanup16_crit_edge ], [ %ret.1.ph, %ao_write_exit.thread ], [ -16, %ao_write_exit.thread44 ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbdux_dio_insn_bits(ptr noundef %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  %nrec.i = alloca i32, align 4
  %nsent.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %mut = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %mut, i32 noundef 0) #12
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #12
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 12
  %2 = ptrtoint ptr %io_bits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io_bits, align 4
  %conv = trunc i32 %3 to i8
  %dux_commands = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %dux_commands to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dux_commands, align 4
  %arrayidx = getelementptr i8, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %arrayidx, align 1
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  %conv1 = trunc i32 %8 to i8
  %9 = load ptr, ptr %dux_commands, align 4
  %arrayidx3 = getelementptr i8, ptr %9, i32 2
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv1, ptr %arrayidx3, align 1
  %call.i = tail call ptr @comedi_to_usb_dev(ptr noundef %dev) #12
  %11 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nsent.i) #12
  %13 = ptrtoint ptr %nsent.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %nsent.i, align 4, !annotation !111
  %dux_commands.i = getelementptr inbounds %struct.usbdux_private, ptr %12, i32 0, i32 16
  %14 = ptrtoint ptr %dux_commands.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dux_commands.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 3, ptr %15, align 1
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call.i, align 8
  %shl.i.i = shl i32 %18, 8
  %or.i = or i32 %shl.i.i, -1073709056
  %19 = load ptr, ptr %dux_commands.i, align 4
  %call3.i = call i32 @usb_bulk_msg(ptr noundef %call.i, i32 noundef %or.i, ptr noundef %19, i32 noundef 26, ptr noundef nonnull %nsent.i, i32 noundef 1000) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nsent.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp = icmp slt i32 %call3.i, 0
  br i1 %cmp, label %entry.dio_exit.thread_crit_edge, label %if.end

entry.dio_exit.thread_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dio_exit.thread

if.end:                                           ; preds = %entry
  %call.i27 = call ptr @comedi_to_usb_dev(ptr noundef %dev) #12
  %20 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nrec.i) #12
  %22 = ptrtoint ptr %nrec.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %nrec.i, align 4, !annotation !111
  %insn_buf.i = getelementptr inbounds %struct.usbdux_private, ptr %21, i32 0, i32 9
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end.i
  %inc.i = add nuw nsw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %for.cond.i.receive_dux_commands.exit.thread_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.cond.i.receive_dux_commands.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %receive_dux_commands.exit.thread

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end
  %i.020.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %23 = ptrtoint ptr %call.i27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call.i27, align 8
  %shl.i.i29 = shl i32 %24, 8
  %or2.i = or i32 %shl.i.i29, -1073479552
  %25 = ptrtoint ptr %insn_buf.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %insn_buf.i, align 4
  %call3.i30 = call i32 @usb_bulk_msg(ptr noundef %call.i27, i32 noundef %or2.i, ptr noundef %26, i32 noundef 16, ptr noundef nonnull %nrec.i, i32 noundef 1000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i30)
  %cmp4.i = icmp slt i32 %call3.i30, 0
  br i1 %cmp4.i, label %for.body.i.receive_dux_commands.exit.thread_crit_edge, label %if.end.i

for.body.i.receive_dux_commands.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %receive_dux_commands.exit.thread

if.end.i:                                         ; preds = %for.body.i
  %27 = ptrtoint ptr %insn_buf.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %insn_buf.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %28, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %30)
  %cmp6.i = icmp eq i16 %30, 768
  br i1 %cmp6.i, label %dio_exit, label %for.cond.i

receive_dux_commands.exit.thread:                 ; preds = %for.body.i.receive_dux_commands.exit.thread_crit_edge, %for.cond.i.receive_dux_commands.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -14, %for.cond.i.receive_dux_commands.exit.thread_crit_edge ], [ %call3.i30, %for.body.i.receive_dux_commands.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nrec.i) #12
  br label %dio_exit.thread

dio_exit.thread:                                  ; preds = %receive_dux_commands.exit.thread, %entry.dio_exit.thread_crit_edge
  %ret.0.ph = phi i32 [ %retval.0.i.ph, %receive_dux_commands.exit.thread ], [ %call3.i, %entry.dio_exit.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %mut) #12
  br label %cond.end

dio_exit:                                         ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nrec.i) #12
  %insn_buf = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 9
  %31 = ptrtoint ptr %insn_buf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %insn_buf, align 4
  %arrayidx11 = getelementptr i16, ptr %32, i32 1
  %33 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx11, align 2
  %35 = call i16 @llvm.bswap.i16(i16 %34)
  %conv12 = zext i16 %35 to i32
  %arrayidx13 = getelementptr i32, ptr %data, i32 1
  %36 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv12, ptr %arrayidx13, align 4
  call void @mutex_unlock(ptr noundef %mut) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i30)
  %tobool.not = icmp eq i32 %call3.i30, 0
  br i1 %tobool.not, label %cond.false, label %dio_exit.cond.end_crit_edge

dio_exit.cond.end_crit_edge:                      ; preds = %dio_exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %dio_exit
  call void @__sanitizer_cov_trace_pc() #14
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %37 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %n, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %dio_exit.cond.end_crit_edge, %dio_exit.thread
  %cond = phi i32 [ %38, %cond.false ], [ %call3.i30, %dio_exit.cond.end_crit_edge ], [ %ret.0.ph, %dio_exit.thread ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbdux_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %0 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbdux_counter_read(ptr noundef %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  %nrec.i = alloca i32, align 4
  %nsent.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %mut = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %mut, i32 noundef 0) #12
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %4 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp34.not = icmp eq i32 %5, 0
  br i1 %cmp34.not, label %counter_read_exit.thread39, label %for.body.lr.ph

counter_read_exit.thread39:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @mutex_unlock(ptr noundef %mut) #12
  br label %cond.false

for.body.lr.ph:                                   ; preds = %entry
  %and = and i32 %3, 65535
  %insn_buf = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 9
  %add = add nuw nsw i32 %and, 1
  br label %for.body

for.body:                                         ; preds = %if.end5.for.body_crit_edge, %for.body.lr.ph
  %i.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end5.for.body_crit_edge ]
  %call.i = call ptr @comedi_to_usb_dev(ptr noundef %dev) #12
  %6 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nsent.i) #12
  %8 = ptrtoint ptr %nsent.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %nsent.i, align 4, !annotation !111
  %dux_commands.i = getelementptr inbounds %struct.usbdux_private, ptr %7, i32 0, i32 16
  %9 = ptrtoint ptr %dux_commands.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dux_commands.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 5, ptr %10, align 1
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call.i, align 8
  %shl.i.i = shl i32 %13, 8
  %or.i = or i32 %shl.i.i, -1073709056
  %14 = load ptr, ptr %dux_commands.i, align 4
  %call3.i = call i32 @usb_bulk_msg(ptr noundef %call.i, i32 noundef %or.i, ptr noundef %14, i32 noundef 26, ptr noundef nonnull %nsent.i, i32 noundef 1000) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nsent.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp1 = icmp slt i32 %call3.i, 0
  br i1 %cmp1, label %for.body.counter_read_exit.thread_crit_edge, label %if.end

for.body.counter_read_exit.thread_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %counter_read_exit.thread

if.end:                                           ; preds = %for.body
  %call.i20 = call ptr @comedi_to_usb_dev(ptr noundef %dev) #12
  %15 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nrec.i) #12
  %17 = ptrtoint ptr %nrec.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %nrec.i, align 4, !annotation !111
  %insn_buf.i = getelementptr inbounds %struct.usbdux_private, ptr %16, i32 0, i32 9
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end.i
  %inc.i = add nuw nsw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %for.cond.i.receive_dux_commands.exit.thread_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.cond.i.receive_dux_commands.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %receive_dux_commands.exit.thread

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end
  %i.020.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %call.i20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call.i20, align 8
  %shl.i.i22 = shl i32 %19, 8
  %or2.i = or i32 %shl.i.i22, -1073479552
  %20 = ptrtoint ptr %insn_buf.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %insn_buf.i, align 4
  %call3.i23 = call i32 @usb_bulk_msg(ptr noundef %call.i20, i32 noundef %or2.i, ptr noundef %21, i32 noundef 16, ptr noundef nonnull %nrec.i, i32 noundef 1000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i23)
  %cmp4.i = icmp slt i32 %call3.i23, 0
  br i1 %cmp4.i, label %for.body.i.receive_dux_commands.exit.thread_crit_edge, label %if.end.i

for.body.i.receive_dux_commands.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %receive_dux_commands.exit.thread

if.end.i:                                         ; preds = %for.body.i
  %22 = ptrtoint ptr %insn_buf.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %insn_buf.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %23, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1280, i16 %25)
  %cmp6.i = icmp eq i16 %25, 1280
  br i1 %cmp6.i, label %if.end5, label %for.cond.i

receive_dux_commands.exit.thread:                 ; preds = %for.body.i.receive_dux_commands.exit.thread_crit_edge, %for.cond.i.receive_dux_commands.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -14, %for.cond.i.receive_dux_commands.exit.thread_crit_edge ], [ %call3.i23, %for.body.i.receive_dux_commands.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nrec.i) #12
  br label %counter_read_exit.thread

if.end5:                                          ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nrec.i) #12
  %26 = ptrtoint ptr %insn_buf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %insn_buf, align 4
  %arrayidx = getelementptr i16, ptr %27, i32 %add
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx, align 2
  %30 = call i16 @llvm.bswap.i16(i16 %29)
  %conv = zext i16 %30 to i32
  %arrayidx6 = getelementptr i32, ptr %data, i32 %i.035
  %31 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv, ptr %arrayidx6, align 4
  %inc = add nuw i32 %i.035, 1
  %32 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %33
  br i1 %cmp, label %if.end5.for.body_crit_edge, label %counter_read_exit

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

counter_read_exit.thread:                         ; preds = %receive_dux_commands.exit.thread, %for.body.counter_read_exit.thread_crit_edge
  %ret.1.ph = phi i32 [ %retval.0.i.ph, %receive_dux_commands.exit.thread ], [ %call3.i, %for.body.counter_read_exit.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %mut) #12
  br label %cond.end

counter_read_exit:                                ; preds = %if.end5
  call void @mutex_unlock(ptr noundef %mut) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i23)
  %tobool.not = icmp eq i32 %call3.i23, 0
  br i1 %tobool.not, label %counter_read_exit.cond.false_crit_edge, label %counter_read_exit.cond.end_crit_edge

counter_read_exit.cond.end_crit_edge:             ; preds = %counter_read_exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

counter_read_exit.cond.false_crit_edge:           ; preds = %counter_read_exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

cond.false:                                       ; preds = %counter_read_exit.cond.false_crit_edge, %counter_read_exit.thread39
  %34 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %n, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %counter_read_exit.cond.end_crit_edge, %counter_read_exit.thread
  %cond = phi i32 [ %35, %cond.false ], [ %call3.i23, %counter_read_exit.cond.end_crit_edge ], [ %ret.1.ph, %counter_read_exit.thread ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbdux_counter_write(ptr noundef %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %nsent.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %dux_commands = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %dux_commands to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dux_commands, align 4
  %arrayidx = getelementptr i8, ptr %5, i32 2
  %mut = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %mut, i32 noundef 0) #12
  %conv = trunc i32 %3 to i8
  %6 = ptrtoint ptr %dux_commands to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dux_commands, align 4
  %arrayidx2 = getelementptr i8, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %arrayidx2, align 1
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %9 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp24.not = icmp eq i32 %10, 0
  br i1 %cmp24.not, label %for.end.thread27, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.end.thread27:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @mutex_unlock(ptr noundef %mut) #12
  br label %cond.false

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.025, 1
  %11 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %12
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.025 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx4 = getelementptr i32, ptr %data, i32 %i.025
  %13 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx4, align 4
  %conv5 = trunc i32 %14 to i16
  %15 = call i16 @llvm.bswap.i16(i16 %conv5)
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %arrayidx, align 2
  %call.i = call ptr @comedi_to_usb_dev(ptr noundef %dev) #12
  %17 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nsent.i) #12
  %19 = ptrtoint ptr %nsent.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %nsent.i, align 4, !annotation !111
  %dux_commands.i = getelementptr inbounds %struct.usbdux_private, ptr %18, i32 0, i32 16
  %20 = ptrtoint ptr %dux_commands.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dux_commands.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 6, ptr %21, align 1
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call.i, align 8
  %shl.i.i = shl i32 %24, 8
  %or.i = or i32 %shl.i.i, -1073709056
  %25 = load ptr, ptr %dux_commands.i, align 4
  %call3.i = call i32 @usb_bulk_msg(ptr noundef %call.i, i32 noundef %or.i, ptr noundef %25, i32 noundef 26, ptr noundef nonnull %nsent.i, i32 noundef 1000) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nsent.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp6 = icmp slt i32 %call3.i, 0
  br i1 %cmp6, label %for.end.thread, label %for.cond

for.end.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  call void @mutex_unlock(ptr noundef %mut) #12
  br label %cond.end

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(ptr noundef %mut) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not = icmp eq i32 %call3.i, 0
  br i1 %tobool.not, label %for.end.cond.false_crit_edge, label %for.end.cond.end_crit_edge

for.end.cond.end_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

for.end.cond.false_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

cond.false:                                       ; preds = %for.end.cond.false_crit_edge, %for.end.thread27
  %26 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %for.end.cond.end_crit_edge, %for.end.thread
  %cond = phi i32 [ %27, %cond.false ], [ %call3.i, %for.end.cond.end_crit_edge ], [ %call3.i, %for.end.thread ]
  ret i32 %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @usbdux_counter_config(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, ptr nocapture noundef readnone %data) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 2
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbdux_pwm_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %0 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i, align 4
  %pwm_buf_sz.i = getelementptr inbounds %struct.usbdux_private, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %pwm_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pwm_buf_sz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1.i = icmp sgt i32 %7, 0
  br i1 %cmp1.i, label %for.body.lr.ph.i, label %if.end.usbdux_pwm_pattern.exit_crit_edge

if.end.usbdux_pwm_pattern.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %usbdux_pwm_pattern.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %8 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chanspec, align 4
  %and = and i32 %9, 65535
  %pwm_urb.i = getelementptr inbounds %struct.usbdux_private, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %pwm_urb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pwm_urb.i, align 4
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %transfer_buffer.i, align 4
  %shl1.i = shl i32 16, %and
  %shl.i = shl nuw i32 1, %and
  %14 = trunc i32 %shl.i to i8
  %15 = xor i8 %14, -1
  %16 = trunc i32 %shl1.i to i8
  %17 = xor i8 %16, -1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.03.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %buf.02.i = phi ptr [ %13, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %buf.02.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %buf.02.i, align 1
  %conv6.i = and i8 %19, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %i.03.i, i32 %3)
  %cmp7.i = icmp ult i32 %i.03.i, %3
  %conv11.i = or i8 %19, %14
  %c.0.i = select i1 %cmp7.i, i8 %conv11.i, i8 %conv6.i
  %conv17.i = and i8 %c.0.i, %17
  %incdec.ptr.i = getelementptr i8, ptr %buf.02.i, i32 1
  %20 = ptrtoint ptr %buf.02.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv17.i, ptr %buf.02.i, align 1
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.body.i.usbdux_pwm_pattern.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.usbdux_pwm_pattern.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usbdux_pwm_pattern.exit

usbdux_pwm_pattern.exit:                          ; preds = %for.body.i.usbdux_pwm_pattern.exit_crit_edge, %if.end.usbdux_pwm_pattern.exit_crit_edge
  %21 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %usbdux_pwm_pattern.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %22, %usbdux_pwm_pattern.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbdux_pwm_config(ptr noundef %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef %data) #2 align 64 {
entry:
  %nsent.i.i31 = alloca i32, align 4
  %nsent.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 31, label %sw.bb
    i32 32, label %sw.bb2
    i32 5002, label %sw.bb4
    i32 5000, label %sw.bb6
    i32 5001, label %sw.bb9
    i32 5003, label %sw.bb11
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %arrayidx1 = getelementptr i32, ptr %data, i32 1
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %mut.i = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %mut.i, i32 noundef 0) #12
  %pwm_cmd_running.i = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %pwm_cmd_running.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %pwm_cmd_running.i, align 4
  %8 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.usbdux_pwm_start.exit_crit_edge

if.end.usbdux_pwm_start.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %usbdux_pwm_start.exit

if.end.i:                                         ; preds = %if.end
  %pwm_delay.i = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %pwm_delay.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pwm_delay.i, align 4
  %dux_commands.i = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 16
  %11 = ptrtoint ptr %dux_commands.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dux_commands.i, align 4
  %arrayidx.i = getelementptr i8, ptr %12, i32 1
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %10, ptr %arrayidx.i, align 1
  %call.i.i = tail call ptr @comedi_to_usb_dev(ptr noundef %dev) #12
  %14 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nsent.i.i) #12
  %16 = ptrtoint ptr %nsent.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %nsent.i.i, align 4, !annotation !111
  %dux_commands.i.i = getelementptr inbounds %struct.usbdux_private, ptr %15, i32 0, i32 16
  %17 = ptrtoint ptr %dux_commands.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dux_commands.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 7, ptr %18, align 1
  %20 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call.i.i, align 8
  %shl.i.i.i = shl i32 %21, 8
  %or.i.i = or i32 %shl.i.i.i, -1073709056
  %22 = load ptr, ptr %dux_commands.i.i, align 4
  %call3.i.i = call i32 @usb_bulk_msg(ptr noundef %call.i.i, i32 noundef %or.i.i, ptr noundef %22, i32 noundef 26, ptr noundef nonnull %nsent.i.i, i32 noundef 1000) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nsent.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp.i, label %if.end.i.usbdux_pwm_start.exit_crit_edge, label %if.end2.i

if.end.i.usbdux_pwm_start.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usbdux_pwm_start.exit

if.end2.i:                                        ; preds = %if.end.i
  %pwm_urb.i = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %pwm_urb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pwm_urb.i, align 4
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %24, i32 0, i32 14
  %25 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %transfer_buffer.i, align 4
  %pwm_buf_sz.i = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 7
  %27 = ptrtoint ptr %pwm_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pwm_buf_sz.i, align 4
  %29 = call ptr @memset(ptr %26, i32 0, i32 %28)
  %30 = ptrtoint ptr %pwm_cmd_running.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load4.i = load i8, ptr %pwm_cmd_running.i, align 4
  %bf.set.i = or i8 %bf.load4.i, 16
  store i8 %bf.set.i, ptr %pwm_cmd_running.i, align 4
  %call.i1.i = call ptr @comedi_to_usb_dev(ptr noundef %dev) #12
  %31 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %private, align 4
  %pwm_urb.i.i = getelementptr inbounds %struct.usbdux_private, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %pwm_urb.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pwm_urb.i.i, align 4
  %35 = ptrtoint ptr %call.i1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %call.i1.i, align 8
  %shl.i.i3.i = shl i32 %36, 8
  %or.i4.i = or i32 %shl.i.i3.i, -1073610752
  %pwm_buf_sz.i.i = getelementptr inbounds %struct.usbdux_private, ptr %32, i32 0, i32 7
  %37 = ptrtoint ptr %pwm_buf_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pwm_buf_sz.i.i, align 4
  %dev1.i.i.i = getelementptr inbounds %struct.urb, ptr %34, i32 0, i32 8
  %39 = ptrtoint ptr %dev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i1.i, ptr %dev1.i.i.i, align 4
  %pipe2.i.i.i = getelementptr inbounds %struct.urb, ptr %34, i32 0, i32 10
  %40 = ptrtoint ptr %pipe2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or.i4.i, ptr %pipe2.i.i.i, align 4
  %transfer_buffer_length.i.i.i = getelementptr inbounds %struct.urb, ptr %34, i32 0, i32 19
  %41 = ptrtoint ptr %transfer_buffer_length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %38, ptr %transfer_buffer_length.i.i.i, align 4
  %complete.i.i.i = getelementptr inbounds %struct.urb, ptr %34, i32 0, i32 28
  %42 = ptrtoint ptr %complete.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @usbduxsub_pwm_irq, ptr %complete.i.i.i, align 4
  %context4.i.i.i = getelementptr inbounds %struct.urb, ptr %34, i32 0, i32 27
  %43 = ptrtoint ptr %context4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %dev, ptr %context4.i.i.i, align 4
  %call2.i.i = call i32 @usb_submit_urb(ptr noundef %34, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp7.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp7.i, label %if.then8.i, label %if.end2.i.usbdux_pwm_start.exit_crit_edge

if.end2.i.usbdux_pwm_start.exit_crit_edge:        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usbdux_pwm_start.exit

if.then8.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %pwm_cmd_running.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load10.i = load i8, ptr %pwm_cmd_running.i, align 4
  %bf.clear11.i = and i8 %bf.load10.i, -17
  store i8 %bf.clear11.i, ptr %pwm_cmd_running.i, align 4
  br label %usbdux_pwm_start.exit

usbdux_pwm_start.exit:                            ; preds = %if.then8.i, %if.end2.i.usbdux_pwm_start.exit_crit_edge, %if.end.i.usbdux_pwm_start.exit_crit_edge, %if.end.usbdux_pwm_start.exit_crit_edge
  %ret.0.i = phi i32 [ 0, %if.end.usbdux_pwm_start.exit_crit_edge ], [ %call3.i.i, %if.end.i.usbdux_pwm_start.exit_crit_edge ], [ %call2.i.i, %if.then8.i ], [ %call2.i.i, %if.end2.i.usbdux_pwm_start.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %mut.i) #12
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %mut.i33 = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %mut.i33, i32 noundef 0) #12
  %pwm_cmd_running.i34 = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 10
  %45 = ptrtoint ptr %pwm_cmd_running.i34 to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load.i35 = load i8, ptr %pwm_cmd_running.i34, align 4
  %46 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %private, align 4
  %48 = and i8 %bf.load.i35, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i.i = icmp eq i8 %48, 0
  br i1 %tobool.not.i.i, label %sw.bb2.usbdux_pwm_cancel.exit_crit_edge, label %if.then.i.i

sw.bb2.usbdux_pwm_cancel.exit_crit_edge:          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  br label %usbdux_pwm_cancel.exit

if.then.i.i:                                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  %pwm_urb.i.i.i = getelementptr inbounds %struct.usbdux_private, ptr %47, i32 0, i32 4
  %49 = ptrtoint ptr %pwm_urb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pwm_urb.i.i.i, align 4
  tail call void @usb_kill_urb(ptr noundef %50) #12
  br label %usbdux_pwm_cancel.exit

usbdux_pwm_cancel.exit:                           ; preds = %if.then.i.i, %sw.bb2.usbdux_pwm_cancel.exit_crit_edge
  %pwm_cmd_running.i.i = getelementptr inbounds %struct.usbdux_private, ptr %47, i32 0, i32 10
  %51 = ptrtoint ptr %pwm_cmd_running.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load.i.i = load i8, ptr %pwm_cmd_running.i.i, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, -17
  store i8 %bf.clear.i.i, ptr %pwm_cmd_running.i.i, align 4
  %call.i.i36 = tail call ptr @comedi_to_usb_dev(ptr noundef %dev) #12
  %52 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nsent.i.i31) #12
  %54 = ptrtoint ptr %nsent.i.i31 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %nsent.i.i31, align 4, !annotation !111
  %dux_commands.i.i37 = getelementptr inbounds %struct.usbdux_private, ptr %53, i32 0, i32 16
  %55 = ptrtoint ptr %dux_commands.i.i37 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dux_commands.i.i37, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 8, ptr %56, align 1
  %58 = ptrtoint ptr %call.i.i36 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %call.i.i36, align 8
  %shl.i.i.i38 = shl i32 %59, 8
  %or.i.i39 = or i32 %shl.i.i.i38, -1073709056
  %60 = load ptr, ptr %dux_commands.i.i37, align 4
  %call3.i.i40 = call i32 @usb_bulk_msg(ptr noundef %call.i.i36, i32 noundef %or.i.i39, ptr noundef %60, i32 noundef 26, ptr noundef nonnull %nsent.i.i31, i32 noundef 1000) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nsent.i.i31) #12
  call void @mutex_unlock(ptr noundef %mut.i33) #12
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pwm_cmd_running = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 10
  %61 = ptrtoint ptr %pwm_cmd_running to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load = load i8, ptr %pwm_cmd_running, align 4
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %arrayidx5 = getelementptr i32, ptr %data, i32 1
  %62 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %bf.cast, ptr %arrayidx5, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %arrayidx7 = getelementptr i32, ptr %data, i32 1
  %63 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx7, align 4
  %65 = add i32 %64, -24389580
  call void @__sanitizer_cov_trace_const_cmp4(i32 -21056247, i32 %65)
  %66 = icmp ult i32 %65, -21056247
  br i1 %66, label %sw.bb6.cleanup_crit_edge, label %if.end3.i

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3.i:                                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  %div.i = udiv i32 %64, 93090
  %67 = trunc i32 %div.i to i8
  %conv.i = add i8 %67, -6
  %pwm_delay.i42 = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 6
  %68 = ptrtoint ptr %pwm_delay.i42 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv.i, ptr %pwm_delay.i42, align 4
  %pwm_period.i = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 5
  %69 = ptrtoint ptr %pwm_period.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %64, ptr %pwm_period.i, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pwm_period = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 5
  %70 = ptrtoint ptr %pwm_period to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pwm_period, align 4
  %arrayidx10 = getelementptr i32, ptr %data, i32 1
  %72 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %arrayidx10, align 4
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  %arrayidx12 = getelementptr i32, ptr %data, i32 1
  %73 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx12, align 4
  %pwm_buf_sz.i44 = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 7
  %75 = ptrtoint ptr %pwm_buf_sz.i44 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pwm_buf_sz.i44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp1.i = icmp sgt i32 %76, 0
  br i1 %cmp1.i, label %for.body.lr.ph.i, label %sw.bb11.cleanup_crit_edge

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %sw.bb11
  %arrayidx13 = getelementptr i32, ptr %data, i32 2
  %77 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp14.not = icmp eq i32 %78, 0
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %79 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %chanspec, align 4
  %and = and i32 %80, 65535
  %pwm_urb.i45 = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 4
  %81 = ptrtoint ptr %pwm_urb.i45 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pwm_urb.i45, align 4
  %transfer_buffer.i46 = getelementptr inbounds %struct.urb, ptr %82, i32 0, i32 14
  %83 = ptrtoint ptr %transfer_buffer.i46 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %transfer_buffer.i46, align 4
  %shl1.i = shl i32 16, %and
  %shl.i = shl nuw i32 1, %and
  %85 = trunc i32 %shl.i to i8
  %86 = xor i8 %85, -1
  %87 = trunc i32 %shl1.i to i8
  %88 = xor i8 %87, -1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.03.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %buf.02.i = phi ptr [ %84, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %89 = ptrtoint ptr %buf.02.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %buf.02.i, align 1
  %conv6.i = and i8 %90, %86
  call void @__sanitizer_cov_trace_cmp4(i32 %i.03.i, i32 %74)
  %cmp7.i48 = icmp ult i32 %i.03.i, %74
  %conv11.i = or i8 %90, %85
  %c.0.i = select i1 %cmp7.i48, i8 %conv11.i, i8 %conv6.i
  %conv21.i = or i8 %c.0.i, %87
  %conv17.i = and i8 %c.0.i, %88
  %c.1.i = select i1 %cmp14.not, i8 %conv17.i, i8 %conv21.i
  %incdec.ptr.i = getelementptr i8, ptr %buf.02.i, i32 1
  %91 = ptrtoint ptr %buf.02.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %c.1.i, ptr %buf.02.i, align 1
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %76
  br i1 %exitcond.not.i, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %sw.bb11.cleanup_crit_edge, %sw.bb9, %if.end3.i, %sw.bb6.cleanup_crit_edge, %sw.bb4, %usbdux_pwm_cancel.exit, %usbdux_pwm_start.exit, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb9 ], [ 0, %sw.bb4 ], [ %call3.i.i40, %usbdux_pwm_cancel.exit ], [ %ret.0.i, %usbdux_pwm_start.exit ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end3.i ], [ -11, %sw.bb6.cleanup_crit_edge ], [ 0, %sw.bb11.cleanup_crit_edge ], [ 0, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbduxsub_ai_isoc_irq(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_subdev, align 4
  %async1 = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %async1, align 4
  %private = getelementptr inbounds %struct.comedi_device, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private, align 4
  %ai_cmd_running = getelementptr inbounds %struct.usbdux_private, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %ai_cmd_running to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %ai_cmd_running, align 4
  %9 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %11, label %do.end12 [
    i32 0, label %sw.bb
    i32 -84, label %do.body
    i32 -104, label %if.end.sw.bb9_crit_edge
    i32 -2, label %if.end.sw.bb9_crit_edge43
    i32 -108, label %if.end.sw.bb9_crit_edge44
    i32 -103, label %if.end.sw.bb9_crit_edge45
  ]

if.end.sw.bb9_crit_edge45:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb9

if.end.sw.bb9_crit_edge44:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb9

if.end.sw.bb9_crit_edge43:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb9

if.end.sw.bb9_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb9

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %in_buf = getelementptr inbounds %struct.usbdux_private, ptr %7, i32 0, i32 8
  %13 = ptrtoint ptr %in_buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %in_buf, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %15 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %transfer_buffer, align 4
  %17 = call ptr @memcpy(ptr %14, ptr %16, i32 16)
  tail call fastcc void @usbduxsub_ai_handle_urb(ptr noundef %1, ptr noundef %3, ptr noundef %urb)
  br label %sw.epilog

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbduxsub_ai_isoc_irq.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@usbduxsub_ai_isoc_irq, %do.end)) #12
          to label %if.then7 [label %do.end], !srcloc !113

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbduxsub_ai_isoc_irq.__UNIQUE_ID_ddebug239, ptr noundef %19, ptr noundef nonnull @.str.9) #12
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  tail call fastcc void @usbduxsub_ai_handle_urb(ptr noundef %1, ptr noundef %3, ptr noundef %urb)
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end.sw.bb9_crit_edge, %if.end.sw.bb9_crit_edge43, %if.end.sw.bb9_crit_edge44, %if.end.sw.bb9_crit_edge45
  %events = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 16
  %20 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %events, align 4
  %or = or i32 %21, 16
  store i32 %or, ptr %events, align 4
  br label %sw.epilog

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev13 = getelementptr inbounds %struct.comedi_device, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %class_dev13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %class_dev13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.10, i32 noundef %11) #17
  %events15 = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 16
  %24 = ptrtoint ptr %events15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %events15, align 4
  %or16 = or i32 %25, 16
  store i32 %or16, ptr %events15, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end12, %sw.bb9, %do.end, %sw.bb
  %events17 = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 16
  %26 = ptrtoint ptr %events17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %events17, align 4
  %and = and i32 %27, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %sw.epilog.if.end20_crit_edge, label %if.then19

sw.epilog.if.end20_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then19:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %private, align 4
  %ai_cmd_running.i = getelementptr inbounds %struct.usbdux_private, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %ai_cmd_running.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load.i = load i8, ptr %ai_cmd_running.i, align 4
  %bf.clear.i = and i8 %bf.load.i, -65
  store i8 %bf.clear.i, ptr %ai_cmd_running.i, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %sw.epilog.if.end20_crit_edge
  tail call void @comedi_event(ptr noundef %1, ptr noundef %3) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbduxsub_ao_isoc_irq(ptr noundef %urb) #2 align 64 {
entry:
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %write_subdev = getelementptr inbounds %struct.comedi_device, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %write_subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_subdev, align 4
  %async1 = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %async1, align 4
  %private = getelementptr inbounds %struct.comedi_device, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private, align 4
  %ao_cmd_running = getelementptr inbounds %struct.usbdux_private, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %ao_cmd_running to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %ao_cmd_running, align 4
  %9 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %11, label %do.end [
    i32 0, label %sw.bb
    i32 -104, label %if.end.sw.bb2_crit_edge
    i32 -2, label %if.end.sw.bb2_crit_edge28
    i32 -108, label %if.end.sw.bb2_crit_edge29
    i32 -103, label %if.end.sw.bb2_crit_edge30
  ]

if.end.sw.bb2_crit_edge30:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

if.end.sw.bb2_crit_edge29:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

if.end.sw.bb2_crit_edge28:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

if.end.sw.bb2_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

sw.bb:                                            ; preds = %if.end
  %ao_counter.i = getelementptr inbounds %struct.usbdux_private, ptr %7, i32 0, i32 14
  %13 = ptrtoint ptr %ao_counter.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ao_counter.i, align 4
  %dec.i = add i32 %14, -1
  store i32 %dec.i, ptr %ao_counter.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.then.i, label %sw.bb.if.end28.i_crit_edge

sw.bb.if.end28.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i

if.then.i:                                        ; preds = %sw.bb
  %ao_timer.i = getelementptr inbounds %struct.usbdux_private, ptr %7, i32 0, i32 12
  %15 = ptrtoint ptr %ao_timer.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ao_timer.i, align 4
  %17 = ptrtoint ptr %ao_counter.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %ao_counter.i, align 4
  %stop_src.i = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 10
  %18 = ptrtoint ptr %stop_src.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stop_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %19)
  %cmp5.i = icmp eq i32 %19, 32
  br i1 %cmp5.i, label %land.lhs.true.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %scans_done.i = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 11
  %20 = ptrtoint ptr %scans_done.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %scans_done.i, align 4
  %stop_arg.i = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 11
  %22 = ptrtoint ptr %stop_arg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %stop_arg.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp6.not.i = icmp ult i32 %21, %23
  br i1 %cmp6.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then7.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %events.i = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 16
  %24 = ptrtoint ptr %events.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %events.i, align 4
  %or.i = or i32 %25, 2
  store i32 %or.i, ptr %events.i, align 4
  br label %sw.epilog

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %26 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %transfer_buffer.i, align 4
  %chanlist_len.i = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 13
  %28 = ptrtoint ptr %chanlist_len.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %chanlist_len.i, align 4
  %conv.i = trunc i32 %29 to i8
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv.i, ptr %27, align 1
  %31 = load i32, ptr %chanlist_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp9111.not.i = icmp eq i32 %31, 0
  br i1 %cmp9111.not.i, label %if.end.i.if.end28.i_crit_edge, label %for.body.lr.ph.i

if.end.i.if.end28.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %incdec.ptr.i = getelementptr i8, ptr %27, i32 1
  %chanlist.i = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 12
  %readback.i = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0113.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %datap.0112.i = phi ptr [ %incdec.ptr.i, %for.body.lr.ph.i ], [ %incdec.ptr24.i, %for.inc.i.for.body.i_crit_edge ]
  %32 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chanlist.i, align 4
  %arrayidx.i = getelementptr i32, ptr %33, i32 %i.0113.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #12
  %36 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 -1, ptr %val.i, align 2, !annotation !111
  %call.i = call i32 @comedi_buf_read_samples(ptr noundef %3, ptr noundef nonnull %val.i, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %cleanup.thread.i, label %for.inc.i

cleanup.thread.i:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %1, i32 0, i32 4
  %37 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %class_dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.18) #17
  %events12.i = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 16
  %39 = ptrtoint ptr %events12.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %events12.i, align 4
  %or13.i = or i32 %40, 32
  store i32 %or13.i, ptr %events12.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #12
  br label %sw.epilog

for.inc.i:                                        ; preds = %for.body.i
  %and.i = and i32 %35, 65535
  %41 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %val.i, align 2
  %conv17.i = trunc i16 %42 to i8
  %incdec.ptr18.i = getelementptr i8, ptr %datap.0112.i, i32 1
  %43 = ptrtoint ptr %datap.0112.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv17.i, ptr %datap.0112.i, align 1
  %44 = load i16, ptr %val.i, align 2
  %45 = lshr i16 %44, 8
  %conv21.i = trunc i16 %45 to i8
  %incdec.ptr22.i = getelementptr i8, ptr %datap.0112.i, i32 2
  %46 = ptrtoint ptr %incdec.ptr18.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv21.i, ptr %incdec.ptr18.i, align 1
  %and.tr.i = trunc i32 %35 to i8
  %conv23.i = shl i8 %and.tr.i, 6
  %incdec.ptr24.i = getelementptr i8, ptr %datap.0112.i, i32 3
  %47 = ptrtoint ptr %incdec.ptr22.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv23.i, ptr %incdec.ptr22.i, align 1
  %48 = load i16, ptr %val.i, align 2
  %conv25.i = zext i16 %48 to i32
  %49 = ptrtoint ptr %readback.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %readback.i, align 4
  %arrayidx26.i = getelementptr i32, ptr %50, i32 %and.i
  %51 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv25.i, ptr %arrayidx26.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #12
  %inc.i = add nuw i32 %i.0113.i, 1
  %52 = ptrtoint ptr %chanlist_len.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %chanlist_len.i, align 4
  %cmp9.i = icmp ult i32 %inc.i, %53
  br i1 %cmp9.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end28.i_crit_edge

for.inc.i.if.end28.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end28.i:                                       ; preds = %for.inc.i.if.end28.i_crit_edge, %if.end.i.if.end28.i_crit_edge, %sw.bb.if.end28.i_crit_edge
  %events29.i = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 16
  %54 = ptrtoint ptr %events29.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %events29.i, align 4
  %and30.i = and i32 %55, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %if.then32.i, label %if.end28.i.sw.epilog_crit_edge

if.end28.i.sw.epilog_crit_edge:                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then32.i:                                      ; preds = %if.end28.i
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %56 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 24, ptr %transfer_buffer_length.i, align 4
  %call33.i = call ptr @comedi_to_usb_dev(ptr noundef %1) #12
  %dev34.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %57 = ptrtoint ptr %dev34.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call33.i, ptr %dev34.i, align 4
  %58 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %status, align 4
  %59 = ptrtoint ptr %ao_cmd_running to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load.i = load i8, ptr %ao_cmd_running, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool35.not.i = icmp sgt i8 %bf.load.i, -1
  %spec.select.i = select i1 %tobool35.not.i, i32 1, i32 8
  %60 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 25
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %spec.select.i, ptr %60, align 4
  %number_of_packets.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %62 = ptrtoint ptr %number_of_packets.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %number_of_packets.i, align 4
  %iso_frame_desc.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 29
  %63 = ptrtoint ptr %iso_frame_desc.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %iso_frame_desc.i, align 4
  %length.i = getelementptr inbounds %struct.urb, ptr %urb, i32 1, i32 1
  %64 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 24, ptr %length.i, align 4
  %status44.i = getelementptr inbounds %struct.urb, ptr %urb, i32 1, i32 3
  %65 = ptrtoint ptr %status44.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %status44.i, align 4
  %call45.i = call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %cmp46.i = icmp slt i32 %call45.i, 0
  br i1 %cmp46.i, label %do.end51.i, label %if.then32.i.sw.epilog_crit_edge

if.then32.i.sw.epilog_crit_edge:                  ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.end51.i:                                       ; preds = %if.then32.i
  %class_dev52.i = getelementptr inbounds %struct.comedi_device, ptr %1, i32 0, i32 4
  %66 = ptrtoint ptr %class_dev52.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %class_dev52.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.21, i32 noundef %call45.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -45, i32 %call45.i)
  %cmp53.i = icmp eq i32 %call45.i, -45
  br i1 %cmp53.i, label %do.end58.i, label %do.end51.i.if.end60.i_crit_edge

do.end51.i.if.end60.i_crit_edge:                  ; preds = %do.end51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60.i

do.end58.i:                                       ; preds = %do.end51.i
  call void @__sanitizer_cov_trace_pc() #14
  %68 = ptrtoint ptr %class_dev52.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %class_dev52.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.24) #17
  br label %if.end60.i

if.end60.i:                                       ; preds = %do.end58.i, %do.end51.i.if.end60.i_crit_edge
  %70 = ptrtoint ptr %events29.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %events29.i, align 4
  %or62.i = or i32 %71, 16
  store i32 %or62.i, ptr %events29.i, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end.sw.bb2_crit_edge, %if.end.sw.bb2_crit_edge28, %if.end.sw.bb2_crit_edge29, %if.end.sw.bb2_crit_edge30
  %events = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 16
  %72 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %events, align 4
  %or = or i32 %73, 16
  store i32 %or, ptr %events, align 4
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %1, i32 0, i32 4
  %74 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.16, i32 noundef %11) #17
  %events4 = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 16
  %76 = ptrtoint ptr %events4 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %events4, align 4
  %or5 = or i32 %77, 16
  store i32 %or5, ptr %events4, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb2, %if.end60.i, %if.then32.i.sw.epilog_crit_edge, %if.end28.i.sw.epilog_crit_edge, %cleanup.thread.i, %if.then7.i
  %events6 = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 16
  %78 = ptrtoint ptr %events6 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %events6, align 4
  %and = and i32 %79, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %sw.epilog.if.end9_crit_edge, label %if.then8

sw.epilog.if.end9_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then8:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %private, align 4
  %ao_cmd_running.i = getelementptr inbounds %struct.usbdux_private, ptr %81, i32 0, i32 10
  %82 = ptrtoint ptr %ao_cmd_running.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %bf.load.i26 = load i8, ptr %ao_cmd_running.i, align 4
  %bf.clear.i = and i8 %bf.load.i26, -33
  store i8 %bf.clear.i, ptr %ao_cmd_running.i, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %sw.epilog.if.end9_crit_edge
  call void @comedi_event(ptr noundef %1, ptr noundef %3) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usbduxsub_ai_handle_urb(ptr noundef %dev, ptr noundef %s, ptr noundef %urb) unnamed_addr #2 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %async1 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %2 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %async1, align 4
  %ai_counter = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %ai_counter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ai_counter, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %ai_counter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then:                                          ; preds = %entry
  %ai_timer = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %ai_timer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ai_timer, align 4
  %8 = ptrtoint ptr %ai_counter to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %ai_counter, align 4
  %chanlist_len = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 13
  %9 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp573.not = icmp eq i32 %10, 0
  br i1 %cmp573.not, label %if.then.for.end_crit_edge, label %for.body.lr.ph

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then
  %chanlist = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 12
  %in_buf = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 8
  %range_table.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 15
  %maxdata.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  br label %for.body

for.cond:                                         ; preds = %if.end
  %inc = add nuw i32 %i.074, 1
  %11 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chanlist_len, align 4
  %cmp5 = icmp ult i32 %inc, %12
  br i1 %cmp5, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.074 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %13 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chanlist, align 4
  %arrayidx = getelementptr i32, ptr %14, i32 %i.074
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %shr = lshr i32 %16, 16
  %and = and i32 %shr, 255
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #12
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -1, ptr %val, align 2, !annotation !111
  %18 = ptrtoint ptr %in_buf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %in_buf, align 4
  %arrayidx6 = getelementptr i16, ptr %19, i32 %i.074
  %20 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx6, align 2
  %22 = call i16 @llvm.bswap.i16(i16 %21)
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %val, align 2
  %24 = ptrtoint ptr %range_table.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %range_table.i, align 4
  %arrayidx.i = getelementptr %struct.comedi_lrange, ptr %25, i32 0, i32 1, i32 %and
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i = icmp slt i32 %27, 0
  br i1 %cmp.i, label %if.then7, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i16 %22 to i32
  %28 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %maxdata.i, align 4
  %xor.i = xor i32 %29, %conv
  %shr.i = lshr i32 %29, 1
  %xor2.i = xor i32 %xor.i, %shr.i
  %conv9 = trunc i32 %xor2.i to i16
  %30 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv9, ptr %val, align 2
  br label %if.end

if.end:                                           ; preds = %if.then7, %for.body.if.end_crit_edge
  %call10 = call i32 @comedi_buf_write_samples(ptr noundef %s, ptr noundef nonnull %val, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #12
  br i1 %tobool.not, label %if.end.cleanup43_crit_edge, label %for.cond

if.end.cleanup43_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup43

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.then.for.end_crit_edge
  %stop_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 10
  %31 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %32)
  %cmp14 = icmp eq i32 %32, 32
  br i1 %cmp14, label %land.lhs.true, label %for.end.if.end20_crit_edge

for.end.if.end20_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

land.lhs.true:                                    ; preds = %for.end
  %scans_done = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 11
  %33 = ptrtoint ptr %scans_done to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %scans_done, align 4
  %stop_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 11
  %35 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp16.not = icmp ult i32 %34, %36
  br i1 %cmp16.not, label %land.lhs.true.if.end20_crit_edge, label %if.then18

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %events = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 16
  %37 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %events, align 4
  %or = or i32 %38, 2
  store i32 %or, ptr %events, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %land.lhs.true.if.end20_crit_edge, %for.end.if.end20_crit_edge, %entry.if.end20_crit_edge
  %events21 = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 16
  %39 = ptrtoint ptr %events21 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %events21, align 4
  %and22 = and i32 %40, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.then24, label %if.end20.cleanup43_crit_edge

if.end20.cleanup43_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup43

if.then24:                                        ; preds = %if.end20
  %call25 = call ptr @comedi_to_usb_dev(ptr noundef %dev) #12
  %dev26 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %41 = ptrtoint ptr %dev26 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call25, ptr %dev26, align 4
  %call27 = call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %do.end, label %if.then24.cleanup43_crit_edge

if.then24.cleanup43_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup43

do.end:                                           ; preds = %if.then24
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %42 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %class_dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.11, i32 noundef %call27) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -45, i32 %call27)
  %cmp31 = icmp eq i32 %call27, -45
  br i1 %cmp31, label %do.end36, label %do.end.if.end38_crit_edge

do.end.if.end38_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

do.end36:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %class_dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.14) #17
  br label %if.end38

if.end38:                                         ; preds = %do.end36, %do.end.if.end38_crit_edge
  %46 = ptrtoint ptr %events21 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %events21, align 4
  %or40 = or i32 %47, 16
  store i32 %or40, ptr %events21, align 4
  br label %cleanup43

cleanup43:                                        ; preds = %if.end38, %if.then24.cleanup43_crit_edge, %if.end20.cleanup43_crit_edge, %if.end.cleanup43_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_read_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbdux_ai_inttrig(ptr noundef %dev, ptr nocapture noundef readonly %s, i32 noundef %trig_num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %2 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %async, align 4
  %start_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 3
  %4 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %trig_num)
  %cmp.not = icmp eq i32 %5, %trig_num
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %mut = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %mut, i32 noundef 0) #12
  %ai_cmd_running = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %ai_cmd_running to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %ai_cmd_running, align 4
  %7 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then2, label %if.end.ai_trig_exit_crit_edge

if.end.ai_trig_exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %ai_trig_exit

if.then2:                                         ; preds = %if.end
  %bf.set = or i8 %bf.load, 64
  %8 = ptrtoint ptr %ai_cmd_running to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %bf.set, ptr %ai_cmd_running, align 4
  %ai_urbs = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %ai_urbs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ai_urbs, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  %call.i = tail call ptr @comedi_to_usb_dev(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp20.i = icmp sgt i32 %12, 0
  br i1 %cmp20.i, label %for.body.lr.ph.i, label %if.then2.if.end12_crit_edge

if.then2.if.end12_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

for.body.lr.ph.i:                                 ; preds = %if.then2
  %13 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private, align 4
  %ai_interval.i = getelementptr inbounds %struct.usbdux_private, ptr %14, i32 0, i32 15
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %12
  br i1 %exitcond.not.i, label %for.cond.i.if.end12_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.cond.i.if.end12_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.021.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %10, i32 %i.021.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %17 = ptrtoint ptr %ai_interval.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ai_interval.i, align 4
  %interval.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 25
  %19 = ptrtoint ptr %interval.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %interval.i, align 4
  %context.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 27
  %20 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev, ptr %context.i, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 8
  %21 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %dev1.i, align 4
  %status.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 12
  %22 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %status.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 13
  %23 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %transfer_flags.i, align 4
  %call2.i = tail call i32 @usb_submit_urb(ptr noundef %16, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %for.cond.i, label %usbdux_submit_urbs.exit

usbdux_submit_urbs.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp6 = icmp slt i32 %call2.i, 0
  br i1 %cmp6, label %if.then7, label %usbdux_submit_urbs.exit.if.end12_crit_edge

usbdux_submit_urbs.exit.if.end12_crit_edge:       ; preds = %usbdux_submit_urbs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then7:                                         ; preds = %usbdux_submit_urbs.exit
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %ai_cmd_running to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load9 = load i8, ptr %ai_cmd_running, align 4
  %bf.clear10 = and i8 %bf.load9, -65
  store i8 %bf.clear10, ptr %ai_cmd_running, align 4
  br label %ai_trig_exit

if.end12:                                         ; preds = %usbdux_submit_urbs.exit.if.end12_crit_edge, %for.cond.i.if.end12_crit_edge, %if.then2.if.end12_crit_edge
  %retval.0.i29 = phi i32 [ %call2.i, %usbdux_submit_urbs.exit.if.end12_crit_edge ], [ 0, %if.then2.if.end12_crit_edge ], [ 0, %for.cond.i.if.end12_crit_edge ]
  %25 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %async, align 4
  %inttrig = getelementptr inbounds %struct.comedi_async, ptr %26, i32 0, i32 20
  %27 = ptrtoint ptr %inttrig to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %inttrig, align 4
  br label %ai_trig_exit

ai_trig_exit:                                     ; preds = %if.end12, %if.then7, %if.end.ai_trig_exit_crit_edge
  %ret.0 = phi i32 [ %call2.i, %if.then7 ], [ %retval.0.i29, %if.end12 ], [ -16, %if.end.ai_trig_exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mut) #12
  br label %cleanup

cleanup:                                          ; preds = %ai_trig_exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %ai_trig_exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbdux_ao_inttrig(ptr noundef %dev, ptr nocapture noundef readonly %s, i32 noundef %trig_num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %2 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %async, align 4
  %start_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 3
  %4 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %trig_num)
  %cmp.not = icmp eq i32 %5, %trig_num
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %mut = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %mut, i32 noundef 0) #12
  %ao_cmd_running = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %ao_cmd_running to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %ao_cmd_running, align 4
  %7 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then2, label %if.end.ao_trig_exit_crit_edge

if.end.ao_trig_exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %ao_trig_exit

if.then2:                                         ; preds = %if.end
  %bf.set = or i8 %bf.load, 32
  %8 = ptrtoint ptr %ao_cmd_running to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %bf.set, ptr %ao_cmd_running, align 4
  %ao_urbs = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %ao_urbs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ao_urbs, align 4
  %n_ao_urbs = getelementptr inbounds %struct.usbdux_private, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %n_ao_urbs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n_ao_urbs, align 4
  %call.i = tail call ptr @comedi_to_usb_dev(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp20.i = icmp sgt i32 %12, 0
  br i1 %cmp20.i, label %if.then2.for.body.i_crit_edge, label %if.then2.if.end12_crit_edge

if.then2.if.end12_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then2.for.body.i_crit_edge:                    ; preds = %if.then2
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %12
  br i1 %exitcond.not.i, label %for.cond.i.if.end12_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.cond.i.if.end12_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.then2.for.body.i_crit_edge
  %i.021.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.then2.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %10, i32 %i.021.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %context.i = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev, ptr %context.i, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 8
  %16 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %dev1.i, align 4
  %status.i = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 12
  %17 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %status.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 13
  %18 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %transfer_flags.i, align 4
  %call2.i = tail call i32 @usb_submit_urb(ptr noundef %14, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %for.cond.i, label %usbdux_submit_urbs.exit

usbdux_submit_urbs.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp6 = icmp slt i32 %call2.i, 0
  br i1 %cmp6, label %if.then7, label %usbdux_submit_urbs.exit.if.end12_crit_edge

usbdux_submit_urbs.exit.if.end12_crit_edge:       ; preds = %usbdux_submit_urbs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then7:                                         ; preds = %usbdux_submit_urbs.exit
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %ao_cmd_running to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load9 = load i8, ptr %ao_cmd_running, align 4
  %bf.clear10 = and i8 %bf.load9, -33
  store i8 %bf.clear10, ptr %ao_cmd_running, align 4
  br label %ao_trig_exit

if.end12:                                         ; preds = %usbdux_submit_urbs.exit.if.end12_crit_edge, %for.cond.i.if.end12_crit_edge, %if.then2.if.end12_crit_edge
  %retval.0.i29 = phi i32 [ %call2.i, %usbdux_submit_urbs.exit.if.end12_crit_edge ], [ 0, %if.then2.if.end12_crit_edge ], [ 0, %for.cond.i.if.end12_crit_edge ]
  %20 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %async, align 4
  %inttrig = getelementptr inbounds %struct.comedi_async, ptr %21, i32 0, i32 20
  %22 = ptrtoint ptr %inttrig to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %inttrig, align 4
  br label %ao_trig_exit

ao_trig_exit:                                     ; preds = %if.end12, %if.then7, %if.end.ao_trig_exit_crit_edge
  %ret.0 = phi i32 [ %call2.i, %if.then7 ], [ %retval.0.i29, %if.end12 ], [ -16, %if.end.ao_trig_exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mut) #12
  br label %cleanup

cleanup:                                          ; preds = %ao_trig_exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %ao_trig_exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_readback_insn_read(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_insn_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbduxsub_pwm_irq(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %private = getelementptr inbounds %struct.comedi_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %5, label %sw.default [
    i32 0, label %sw.epilog
    i32 -104, label %entry.sw.bb_crit_edge
    i32 -2, label %entry.sw.bb_crit_edge71
    i32 -108, label %entry.sw.bb_crit_edge72
    i32 -103, label %entry.sw.bb_crit_edge73
  ]

entry.sw.bb_crit_edge73:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge72:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge71:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge71, %entry.sw.bb_crit_edge72, %entry.sw.bb_crit_edge73
  %pwm_cmd_running = getelementptr inbounds %struct.usbdux_private, ptr %3, i32 0, i32 10
  %7 = ptrtoint ptr %pwm_cmd_running to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %pwm_cmd_running, align 4
  %8 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %sw.bb.cleanup.sink.split_crit_edge

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.default:                                       ; preds = %entry
  %pwm_cmd_running1 = getelementptr inbounds %struct.usbdux_private, ptr %3, i32 0, i32 10
  %9 = ptrtoint ptr %pwm_cmd_running1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load2 = load i8, ptr %pwm_cmd_running1, align 4
  %10 = and i8 %bf.load2, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool6.not = icmp eq i8 %10, 0
  br i1 %tobool6.not, label %sw.default.cleanup_crit_edge, label %do.end

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.39, i32 noundef %5) #17
  br label %cleanup.sink.split.sink.split

sw.epilog:                                        ; preds = %entry
  %pwm_cmd_running10 = getelementptr inbounds %struct.usbdux_private, ptr %3, i32 0, i32 10
  %13 = ptrtoint ptr %pwm_cmd_running10 to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load11 = load i8, ptr %pwm_cmd_running10, align 4
  %14 = and i8 %bf.load11, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool15.not = icmp eq i8 %14, 0
  br i1 %tobool15.not, label %sw.epilog.cleanup_crit_edge, label %if.end17

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %sw.epilog
  %pwm_buf_sz = getelementptr inbounds %struct.usbdux_private, ptr %3, i32 0, i32 7
  %15 = ptrtoint ptr %pwm_buf_sz to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pwm_buf_sz, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %17 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %transfer_buffer_length, align 4
  %call = tail call ptr @comedi_to_usb_dev(ptr noundef %1) #12
  %dev18 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %18 = ptrtoint ptr %dev18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call, ptr %dev18, align 4
  %19 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %status, align 4
  %20 = ptrtoint ptr %pwm_cmd_running10 to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load21 = load i8, ptr %pwm_cmd_running10, align 4
  %21 = and i8 %bf.load21, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool25.not = icmp eq i8 %21, 0
  br i1 %tobool25.not, label %if.end17.cleanup_crit_edge, label %if.then26

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then26:                                        ; preds = %if.end17
  %call27 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp = icmp slt i32 %call27, 0
  br i1 %cmp, label %do.end31, label %if.then26.cleanup_crit_edge

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end31:                                         ; preds = %if.then26
  %class_dev32 = getelementptr inbounds %struct.comedi_device, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %class_dev32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %class_dev32, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.42, i32 noundef %call27) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -45, i32 %call27)
  %cmp33 = icmp eq i32 %call27, -45
  br i1 %cmp33, label %do.end37, label %do.end31.cleanup.sink.split.sink.split_crit_edge

do.end31.cleanup.sink.split.sink.split_crit_edge: ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.sink.split

do.end37:                                         ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %class_dev32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %class_dev32, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.24) #17
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %do.end37, %do.end31.cleanup.sink.split.sink.split_crit_edge, %do.end
  %26 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %private, align 4
  %pwm_cmd_running.i68 = getelementptr inbounds %struct.usbdux_private, ptr %27, i32 0, i32 10
  %28 = ptrtoint ptr %pwm_cmd_running.i68 to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load.i65 = load i8, ptr %pwm_cmd_running.i68, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %sw.bb.cleanup.sink.split_crit_edge
  %bf.load.i69.sink = phi i8 [ %bf.load, %sw.bb.cleanup.sink.split_crit_edge ], [ %bf.load.i65, %cleanup.sink.split.sink.split ]
  %pwm_cmd_running.i68.sink = phi ptr [ %pwm_cmd_running, %sw.bb.cleanup.sink.split_crit_edge ], [ %pwm_cmd_running.i68, %cleanup.sink.split.sink.split ]
  %bf.clear.i70 = and i8 %bf.load.i69.sink, -17
  %29 = ptrtoint ptr %pwm_cmd_running.i68.sink to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %bf.clear.i70, ptr %pwm_cmd_running.i68.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then26.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.default.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbdux_usb_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_usb_auto_config(ptr noundef %intf, ptr noundef nonnull @usbdux_driver, i32 noundef 0) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_usb_auto_unconfig(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_usb_auto_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !99}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !{ptr @__initcall__kmod_usbdux__240_1723_usbdux_driver_init6, !1, !"__initcall__kmod_usbdux__240_1723_usbdux_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/usbdux.c", i32 1723, i32 1}
!2 = !{ptr @__exitcall_usbdux_driver_exit, !1, !"__exitcall_usbdux_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author241, !4, !"__UNIQUE_ID_author241", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/usbdux.c", i32 1725, i32 1}
!5 = !{ptr @__UNIQUE_ID_description242, !6, !"__UNIQUE_ID_description242", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/usbdux.c", i32 1726, i32 1}
!7 = !{ptr @__UNIQUE_ID_file243, !8, !"__UNIQUE_ID_file243", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/usbdux.c", i32 1727, i32 1}
!9 = !{ptr @__UNIQUE_ID_license244, !8, !"__UNIQUE_ID_license244", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_firmware245, !11, !"__UNIQUE_ID_firmware245", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/usbdux.c", i32 1728, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/usbdux.c", i32 1698, i32 17}
!14 = !{ptr @usbdux_driver, !15, !"usbdux_driver", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/usbdux.c", i32 1697, i32 29}
!16 = !{ptr @usbdux_auto_attach.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/comedi/drivers/usbdux.c", i32 1568, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/comedi/drivers/usbdux.c", i32 1590, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @usbdux_auto_attach._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @usbdux_auto_attach._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/comedi/drivers/usbdux.c", i32 1595, i32 45}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/comedi/drivers/usbdux.c", i32 311, i32 3}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @usbduxsub_ai_isoc_irq.__UNIQUE_ID_ddebug239, !30, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/comedi/drivers/usbdux.c", i32 325, i32 3}
!35 = !{ptr @usbduxsub_ai_isoc_irq._entry, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @usbduxsub_ai_isoc_irq._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/comedi/drivers/usbdux.c", i32 276, i32 4}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @usbduxsub_ai_handle_urb._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @usbduxsub_ai_handle_urb._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/comedi/drivers/usbdux.c", i32 280, i32 5}
!44 = !{ptr @usbduxsub_ai_handle_urb._entry.13, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @usbduxsub_ai_handle_urb._entry_ptr.15, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/comedi/drivers/usbdux.c", i32 460, i32 3}
!48 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @usbduxsub_ao_isoc_irq._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @usbduxsub_ao_isoc_irq._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/comedi/drivers/usbdux.c", i32 395, i32 5}
!53 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @usbduxsub_ao_handle_urb._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @usbduxsub_ao_handle_urb._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/comedi/drivers/usbdux.c", i32 423, i32 4}
!58 = !{ptr @usbduxsub_ao_handle_urb._entry.20, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @usbduxsub_ao_handle_urb._entry_ptr.22, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/comedi/drivers/usbdux.c", i32 427, i32 5}
!62 = !{ptr @usbduxsub_ao_handle_urb._entry.23, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @usbduxsub_ao_handle_urb._entry_ptr.25, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/comedi/drivers/usbdux.c", i32 1377, i32 3}
!66 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @usbdux_firmware_upload._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @usbdux_firmware_upload._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/comedi/drivers/usbdux.c", i32 1403, i32 3}
!71 = !{ptr @usbdux_firmware_upload._entry.28, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @usbdux_firmware_upload._entry_ptr.30, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/comedi/drivers/usbdux.c", i32 1415, i32 3}
!75 = !{ptr @usbdux_firmware_upload._entry.31, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @usbdux_firmware_upload._entry_ptr.33, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/comedi/drivers/usbdux.c", i32 1428, i32 3}
!79 = !{ptr @usbdux_firmware_upload._entry.34, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @usbdux_firmware_upload._entry_ptr.36, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @range_usbdux_ai_range, !82, !"range_usbdux_ai_range", i1 false, i1 false}
!82 = !{!"../drivers/comedi/drivers/usbdux.c", i32 151, i32 35}
!83 = !{ptr @range_usbdux_ao_range, !84, !"range_usbdux_ao_range", i1 false, i1 false}
!84 = !{!"../drivers/comedi/drivers/usbdux.c", i32 160, i32 35}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/comedi/drivers/usbdux.c", i32 1176, i32 4}
!87 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @usbduxsub_pwm_irq._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @usbduxsub_pwm_irq._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/comedi/drivers/usbdux.c", i32 1194, i32 4}
!92 = !{ptr @usbduxsub_pwm_irq._entry.41, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @usbduxsub_pwm_irq._entry_ptr.43, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @usbduxsub_pwm_irq._entry.44, !95, !"_entry", i1 false, i1 false}
!95 = !{!"../drivers/comedi/drivers/usbdux.c", i32 1198, i32 5}
!96 = !{ptr @usbduxsub_pwm_irq._entry_ptr.45, !95, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @usbdux_usb_driver, !98, !"usbdux_usb_driver", i1 false, i1 false}
!98 = !{!"../drivers/comedi/drivers/usbdux.c", i32 1717, i32 26}
!99 = !{ptr @usbdux_usb_table, !100, !"usbdux_usb_table", i1 false, i1 false}
!100 = !{!"../drivers/comedi/drivers/usbdux.c", i32 1710, i32 35}
!101 = !{i32 1, !"wchar_size", i32 2}
!102 = !{i32 1, !"min_enum_size", i32 4}
!103 = !{i32 8, !"branch-target-enforcement", i32 0}
!104 = !{i32 8, !"sign-return-address", i32 0}
!105 = !{i32 8, !"sign-return-address-all", i32 0}
!106 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!110 = !{!"branch_weights", i32 1, i32 2000}
!111 = !{!"auto-init"}
!112 = !{i32 0, i32 33}
!113 = !{i64 2148733127, i64 2148733132, i64 2148733145, i64 2148733189, i64 2148733223, i64 2148733244}
